uint64_t sub_100F398E0(uint64_t a1)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2128 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlFolderUI;
  v54 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v51 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v52 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v9 = sub_10006A888();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  v53 = sub_1000053B0();
  *(inited + 64) = v53;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v12, "Filter view (%@) received snapshot update", 41, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  (*(v4 + 16))(v6, v55, v3);
  sub_100F7CC80(v6, v57);
  v13 = v57[0];
  if (v57[0])
  {
    v15 = v57[3];
    v14 = v57[4];
    v16 = v57[2];
    swift_beginAccess();

    sub_100636CB4(v17);
    swift_endAccess();
    v58 = v13;
    sub_10000CAAC(&v58, &unk_1019FB880);

    v59 = v16;
    sub_10000CAAC(&v59, &unk_101A22E80);
    v60 = v15;
    sub_10000CAAC(&v60, &qword_1019FB890);
    v61 = v14;
    sub_10000CAAC(&v61, &qword_1019FB890);
    v18 = v2;
    v19 = *(sub_100070F30() + 48);
    if (*(v19 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(5uLL), v20 = Hasher._finalize()(), v21 = -1 << *(v19 + 32), v22 = v20 & ~v21, ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
    {
      v23 = ~v21;
      v24 = v7;
      v25 = v53;
      while (1)
      {
        v26 = *(v19 + 48) + 16 * v22;
        if (*(v26 + 8) >= 3u && *v26 > 1uLL)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {

          goto LABEL_15;
        }
      }

      v34 = swift_initStackObject();
      *(v34 + 16) = v51;
      v35 = sub_10006A888();
      *(v34 + 56) = &type metadata for String;
      *(v34 + 64) = v25;
      *(v34 + 32) = v35;
      *(v34 + 40) = v36;
      v37 = static os_log_type_t.default.getter();
      sub_100005404(v7, &_mh_execute_header, v37, "Filter view (%@) ignoring snapshot update", 41, 2, v34);
      swift_setDeallocating();
      sub_100005070(v34 + 32);
      v38 = *(v18 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter);

      sub_100F5FB78(2, 3u, 0);
      v39 = *(v38 + 48);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(5uLL);
      v40 = Hasher._finalize()();
      v41 = -1 << *(v39 + 32);
      v42 = v40 & ~v41;
      if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = *(v39 + 48) + 16 * v42;
          if (*(v44 + 8) >= 3u && *v44 >= 2uLL)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v39;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100E85E84();
          v39 = v56;
        }

        v47 = *(v39 + 48) + 16 * v42;
        v48 = *v47;
        v49 = *(v47 + 8);
        sub_100F65BD4(v42);
        sub_1007A98C8(v48, v49);
        v39 = v56;
      }

      else
      {
LABEL_24:
      }

      v50 = *(v38 + 48);

      sub_100F5DE4C(v39);
      *(v38 + 48) = v39;

      sub_100F5E170(v50);
    }

    else
    {

      v24 = v7;
      v25 = v53;
LABEL_15:
      v30 = swift_initStackObject();
      *(v30 + 16) = v51;
      v31 = sub_10006A888();
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = v25;
      *(v30 + 32) = v31;
      *(v30 + 40) = v32;
      v33 = static os_log_type_t.default.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Filter view (%@) requesting refresh", 35, 2, v30);
      swift_setDeallocating();
      sub_100005070(v30 + 32);

      sub_100F5E4DC();
    }
  }

  else
  {
    v28 = static os_log_type_t.error.getter();
    return sub_100005404(v7, &_mh_execute_header, v28, "Invalid snapshot update notification.", 37, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100F39EE8(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  v15 = sub_10005AFE0();
  v16 = sub_10005BC3C();

  sub_100F89E44(a1, v16, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CAAC(v4, &unk_101A15B20);
  }

  sub_100065D50(v4, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v19 = _swiftEmptySetSingleton;
  sub_1000652DC(v14, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100E6DFC0(v11, v8);
  sub_10000BBC4(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100F3A24C(v19);

  return sub_10000BBC4(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
}

uint64_t sub_100F3A144(int64_t a1, uint64_t a2, int a3)
{
  sub_10006601C(a1, a2, a3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete) = 1;
    sub_100F373E0();
  }

  return 0;
}

uint64_t sub_100F3A1B0()
{
  v0 = sub_10005AFE0();
  v1 = sub_10005BC3C();

  v2 = sub_100E93FF4(v1);

  sub_100F3A24C(v2);
}

uint64_t sub_100F3A24C(uint64_t a1)
{
  v38 = a1;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_1005B981C(&unk_101A23860);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v30 = v1;
  v11 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  sub_10098EABC(&_mh_execute_header, "reloadItems(_:)", 15, 2, "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSFolderGridViewController.swift", 100, 2, 708);
  v29 = v8;
  v27 = v10;
  result = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
  v37 = *(result + 16);
  if (v37)
  {
    v13 = 0;
    v14 = 0;
    v32 = (v3 + 32);
    v33 = v3 + 16;
    v31 = (v3 + 8);
    v15 = _swiftEmptyArrayStorage;
    v34 = result;
    v35 = v3;
    while (v13 < *(result + 16))
    {
      v39 = v15;
      v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v17 = *(v3 + 72);
      (*(v3 + 16))(v7, result + v16 + v17 * v13++, v2);
      v18 = sub_100F363A8(v38);
      v40 = v14;
      v19 = v18 + v16;
      v20 = v18[2] + 1;
      do
      {
        if (!--v20)
        {

          (*v31)(v7, v2);
          v15 = v39;
          goto LABEL_4;
        }

        sub_10006852C(&qword_1019F37C0, &type metadata accessor for UUID);
        v19 += v17;
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);

      v21 = *v32;
      (*v32)(v36, v7, v2);
      v15 = v39;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776524(0, v15[2] + 1, 1);
        v15 = v41;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_100776524(v23 > 1, v24 + 1, 1);
        v15 = v41;
      }

      v15[2] = v24 + 1;
      v21(v15 + v16 + v24 * v17, v36, v2);
LABEL_4:
      result = v34;
      v3 = v35;
      v14 = v40;
      if (v13 == v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_15:

    v25 = v29;
    v26 = v27;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v15);

    sub_100069924(v26, 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    return (*(v28 + 8))(v26, v25);
  }

  return result;
}

void sub_100F3A670(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static Selector.== infix(_:_:)())
  {
    sub_100071220();
    if (v8)
    {
      v9 = v8;
      [v8 canUndo];
LABEL_7:

      return;
    }

    __break(1u);
    goto LABEL_30;
  }

  if (static Selector.== infix(_:_:)())
  {
    sub_100071220();
    if (v10)
    {
      v9 = v10;
      [v10 canRedo];
      goto LABEL_7;
    }

LABEL_30:
    __break(1u);
    return;
  }

  if (static Selector.== infix(_:_:)())
  {
    v11 = [v2 navigationItem];
    v12 = [v11 searchController];

    if (v12)
    {
      v13 = [v12 searchBar];

      v14 = [v13 isFirstResponder];
      if ((v14 & 1) == 0)
      {
        [v2 isEditing];
      }
    }
  }

  else if (static Selector.== infix(_:_:)())
  {
    v15 = [v2 presentedViewController];
    if (v15)
    {
    }

    else
    {
      v17 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
      v18 = sub_1005B981C(&qword_1019F3480);
      (*(*(v18 - 8) + 56))(v7, 5, 5, v18);
      sub_100068604(v2 + v17, v7);
      sub_10000BBC4(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    }
  }

  else
  {
    v16 = String._bridgeToObjectiveC()();
    NSSelectorFromString(v16);

    if (static Selector.== infix(_:_:)())
    {

      sub_100F3B330();
    }

    else if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
    {
      sub_100F378A4();
    }

    else
    {
      sub_10000BE14(a2, v28, &unk_1019F4D00);
      v19 = v29;
      if (v29)
      {
        v20 = sub_100020E58(v28, v29);
        v21 = *(v19 - 8);
        v22 = __chkstk_darwin(v20);
        v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v21 + 16))(v24, v22);
        v25 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v21 + 8))(v24, v19);
        sub_100005070(v28);
      }

      else
      {
        v25 = 0;
      }

      v26 = type metadata accessor for CRLiOSFolderGridViewController();
      v27.receiver = v2;
      v27.super_class = v26;
      objc_msgSendSuper2(&v27, "canPerformAction:withSender:", a1, v25);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100F3AB50(void *a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for CRLiOSFolderGridViewController();
  v31.receiver = v1;
  v31.super_class = v12;
  objc_msgSendSuper2(&v31, "validateCommand:", a1);
  [a1 action];
  v13 = String._bridgeToObjectiveC()();
  NSSelectorFromString(v13);

  if (static Selector.== infix(_:_:)())
  {
    result = sub_100F3B330();
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (static Selector.== infix(_:_:)())
  {
    v15 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout];
LABEL_10:
    v16 = &selRef_setState_;
    return [a1 *v16];
  }

  if (static Selector.== infix(_:_:)())
  {
    v17 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout];
LABEL_9:
    v15 = v17 ^ 1;
    goto LABEL_10;
  }

  if (static Selector.== infix(_:_:)())
  {
    v18 = &v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions];
    if (*v18)
    {
      v19 = v18[2];
    }

    else
    {
      v19 = 0;
    }

    result = [a1 setState:v19];
    if (!*v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (static Selector.== infix(_:_:)())
    {
      [a1 setState:v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions] == 1];
      sub_1000652DC(&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v20 = sub_1005B981C(&qword_1019F3480);
      v21 = (*(*(v20 - 8) + 48))(v11, 5, v20);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v22 = &off_1018773D0;
        }

        else if (v21 == 4)
        {
          v22 = &off_1018773F8;
        }

        else
        {
          v22 = &off_101877420;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v22 = &off_101877380;
        }

        else
        {
          v22 = &off_1018773A8;
        }
      }

      else
      {
        sub_10000BBC4(v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v22 = &off_101877448;
      }

      v15 = 1;
      v29 = sub_1000642E4(1u, v22);

      if (!v29)
      {
        goto LABEL_4;
      }

      return result;
    }

    if (static Selector.== infix(_:_:)())
    {
      [a1 setState:v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions] == 0];
      sub_1000652DC(&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v23 = sub_1005B981C(&qword_1019F3480);
      v24 = (*(*(v23 - 8) + 48))(v8, 5, v23);
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          v25 = &off_1018773D0;
        }

        else if (v24 == 4)
        {
          v25 = &off_1018773F8;
        }

        else
        {
          v25 = &off_101877420;
        }
      }

      else if (v24)
      {
        if (v24 == 1)
        {
          v25 = &off_101877380;
        }

        else
        {
          v25 = &off_1018773A8;
        }
      }

      else
      {
        sub_10000BBC4(v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v25 = &off_101877448;
      }

      v28 = 0;
    }

    else
    {
      if ((static Selector.== infix(_:_:)() & 1) == 0)
      {
        if (static Selector.== infix(_:_:)())
        {
          v15 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1];
          goto LABEL_10;
        }

        result = static Selector.== infix(_:_:)();
        if (result)
        {
          v17 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1];
          goto LABEL_9;
        }

        return result;
      }

      [a1 setState:v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions] == 2];
      sub_1000652DC(&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v26 = sub_1005B981C(&qword_1019F3480);
      v27 = (*(*(v26 - 8) + 48))(v5, 5, v26);
      if (v27 > 2)
      {
        if (v27 == 3)
        {
          v25 = &off_1018773D0;
          v28 = 2;
        }

        else
        {
          if (v27 == 4)
          {
            v25 = &off_1018773F8;
          }

          else
          {
            v25 = &off_101877420;
          }

          v28 = 2;
        }
      }

      else if (v27)
      {
        if (v27 == 1)
        {
          v25 = &off_101877380;
        }

        else
        {
          v25 = &off_1018773A8;
        }

        v28 = 2;
      }

      else
      {
        sub_10000BBC4(v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v25 = &off_101877448;
        v28 = 2;
      }
    }

    v30 = sub_1000642E4(v28, v25);

    if (!v30)
    {
LABEL_3:
      v15 = 1;
LABEL_4:
      v16 = &selRef_setAttributes_;
      return [a1 *v16];
    }
  }

  return result;
}

void sub_100F3B1EC()
{
  if (([v0 isEditing] & 1) == 0)
  {
    v1 = [v0 navigationItem];
    v2 = [v1 searchController];

    if (v2)
    {
      [v2 setActive:1];
    }

    v3 = [v0 navigationItem];
    v4 = [v3 searchController];

    if (v4)
    {
      v5 = [v4 searchBar];

      [v5 becomeFirstResponder];
    }
  }
}

id sub_100F3B330()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    v3 = [result contextMenuInteraction];

    if (!v3)
    {
      return 0;
    }

    v4 = [v0 collectionView];
    [v3 locationInView:v4];
    v6 = v5;
    v8 = v7;

    result = [v0 collectionView];
    if (result)
    {
      v9 = result;
      [result bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v19.origin.x = v11;
      v19.origin.y = v13;
      v19.size.width = v15;
      v19.size.height = v17;
      v18.x = v6;
      v18.y = v8;
      return CGRectContainsPoint(v19, v18);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100F3B478(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v7 = a1;
  if (!a3)
  {
    v15 = 0u;
    v16 = 0u;
    v14 = a1;
    sub_100071220();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100071220();
  if (!v9)
  {
    goto LABEL_8;
  }

LABEL_3:
  v10 = v9;
  v11 = [v9 *a4];

  if (!v11)
  {
LABEL_6:

    sub_10000CAAC(&v15, &unk_1019F4D00);
    return;
  }

  sub_100071220();
  if (v12)
  {
    v13 = v12;
    [v12 *a5];

    v7 = v13;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

void sub_100F3B548(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  swift_beginAccess();
  *(v2 + v4) = a1;

  if (*(v2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState) == 1)
  {
    v5 = [objc_opt_self() standardUserDefaults];
    sub_1012C8634();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_100009260();
    v7 = String._bridgeToObjectiveC()();

    [v5 setObject:isa forKey:v7];
  }

  sub_10006ACC8();
}

void sub_100F3B66C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&unk_101A23C00);
  __chkstk_darwin(v4 - 8);
  v6 = &v77[-v5];
  v7 = sub_1005B981C(&unk_101A23860);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v88 = &v77[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v77[-v11];
  v13 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed;
  v14 = *(a1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed);
  v15 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle;
  *(a1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle) = 1;
  *(a1 + v13) = (v14 & 1) == 0;
  sub_1005EB6D8();
  *(a1 + v15) = 0;
  v16 = a1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier;
  v17 = *(a1 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 48);
  if (v17 >= 0xFE)
  {
    v89 = objc_opt_self();
    LODWORD(v18) = [v89 _atomicIncrementAssertCount];
    v96[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v96);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_3;
  }

  v84 = v12;
  v85 = v6;
  v86 = v8;
  v87 = v7;
  v89 = v2;
  v40 = *v16;
  v41 = *(v16 + 8);
  v43 = *(v16 + 16);
  v42 = *(v16 + 24);
  v45 = *(v16 + 32);
  v44 = *(v16 + 40);
  v96[0] = *v16;
  v96[1] = v41;
  v96[2] = v43;
  v96[3] = v42;
  v96[4] = v45;
  v96[5] = v44;
  v97 = v17;
  if (*(a1 + v13) == 1)
  {
    v46 = v89;
    swift_beginAccess();
    sub_100076F8C(v40, v41, v43, v42, v45, v44, v17);
    sub_100E6CEB8(&v92, v96);
    v47 = v92;
    v48 = v93;
    v49 = v94;
    v50 = v95;
    swift_endAccess();
    sub_1000771BC(v47, *(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50);
    if (v46[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v46 = v89;
    swift_beginAccess();
    sub_100076F8C(v40, v41, v43, v42, v45, v44, v17);
    sub_100ED7154(v96, &v92);
    v51 = v92;
    v82 = v93;
    v83 = *(&v92 + 1);
    v80 = v94;
    v81 = *(&v93 + 1);
    v79 = *(&v94 + 1);
    v78 = v95;
    swift_endAccess();
    sub_1000771A8(v51, v83, v82, v81, v80, v79, v78);
    sub_1000771A8(v40, v41, v43, v42, v45, v44, v17);
    if (v46[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] == 1)
    {
LABEL_8:
      v52 = [objc_opt_self() standardUserDefaults];
      sub_1012C8634();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      sub_100009260();
      v54 = String._bridgeToObjectiveC()();

      [v52 setObject:isa forKey:v54];

      v46 = v89;
    }
  }

  sub_10006ACC8();
  v56 = v86;
  v55 = v87;
  v57 = v85;
  v58 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10000BE14(&v46[v58], v57, &unk_101A23C00);
  if ((*(v56 + 48))(v57, 1, v55) == 1)
  {
    sub_10000CAAC(v57, &unk_101A23C00);
    return;
  }

  v85 = *(v56 + 32);
  v85(v88, v57, v55);
  v59 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v60 = *(v59 + 16);
  v83 = v59;
  if (!v60)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_32:

    v75 = v87;
    v74 = v88;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v22);

    v76 = v84;
    v85(v84, v74, v75);
    sub_100069924(v76, 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    sub_10006ACC8();
    (*(v86 + 8))(v76, v75);
    return;
  }

  v24 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  v61 = v59 + 32;
  swift_beginAccess();
  v22 = _swiftEmptyArrayStorage;
  while (1)
  {
    v62 = *v61;
    v63 = *(v61 + 16);
    v64 = *(v61 + 32);
    v95 = *(v61 + 48);
    v93 = v63;
    v94 = v64;
    v92 = v62;
    v65 = *&v46[v24];
    sub_1000693DC(&v92, v90);

    v66 = sub_100069438(&v92, v65);

    if ((v66 & 1) == 0)
    {
      sub_1000698D0(&v92);
      goto LABEL_14;
    }

    v90[0] = v92;
    v90[1] = v93;
    v90[2] = v94;
    v91 = v95;
    v67 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    sub_1000698D0(&v92);
    v19 = *(v67 + 16);
    v68 = v22[2];
    v18 = &v19[v68];
    if (__OFADD__(v68, v19))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v22[3] >> 1)
    {
      if (*(v67 + 16))
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v68 <= v18)
      {
        v73 = &v19[v68];
      }

      else
      {
        v73 = v68;
      }

      v22 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v73, 1, v22);
      if (*(v67 + 16))
      {
LABEL_20:
        v18 = ((v22[3] >> 1) - v22[2]);
        type metadata accessor for UUID();
        if (v18 < v19)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v19)
        {
          v70 = v22[2];
          v71 = __OFADD__(v70, v19);
          v72 = &v19[v70];
          v46 = v89;
          if (v71)
          {
            goto LABEL_36;
          }

          v22[2] = v72;
        }

        else
        {
          v46 = v89;
        }

        goto LABEL_14;
      }
    }

    v46 = v89;
    if (v19)
    {
      goto LABEL_34;
    }

LABEL_14:
    v61 += 56;
    if (!--v60)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_3:
  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v18;
  v27 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v27;
  v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v28;
  *(inited + 72) = v19;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v22;
  *(inited + 120) = v24;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 844;
  v30 = v96[0];
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v19;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  [v89 handleFailureInFunction:v37 file:v38 lineNumber:844 isFatal:0 format:v39 args:v36];
}

void sub_100F3C0F0()
{
  v3 = v0;
  v4 = sub_100062AD0();
  if (!v4)
  {
    v5 = objc_opt_self();
    LODWORD(v6) = [v5 _atomicIncrementAssertCount];
    v39 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v39);
    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v17;

    if (qword_1019F20A0 == -1)
    {
LABEL_8:
      v18 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v20 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v20;
      v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v21;
      *(inited + 72) = v7;
      *(inited + 136) = &type metadata for String;
      v22 = sub_1000053B0();
      *(inited + 112) = v1;
      *(inited + 120) = v2;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v22;
      *(inited + 152) = 864;
      v23 = v39;
      *(inited + 216) = v20;
      *(inited + 224) = v21;
      *(inited + 192) = v23;
      v24 = v7;
      v25 = v23;
      v26 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v27 = static os_log_type_t.error.getter();
      sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v28 = swift_allocObject();
      v28[2] = 8;
      v28[3] = 0;
      v28[4] = 0;
      v28[5] = 0;
      v29 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v30 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v31 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v32 = String._bridgeToObjectiveC()();

      [v5 handleFailureInFunction:v30 file:v31 lineNumber:864 isFatal:0 format:v32 args:v29];

      return;
    }

LABEL_13:
    swift_once();
    goto LABEL_8;
  }

  v5 = v4;
  sub_1005B981C(&unk_1019F4D60);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10146CE00;
  v7 = v5;
  *(v6 + 32) = sub_100C13ED8();
  *(v6 + 40) = sub_1000801B8();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(v6 + 32);
LABEL_5:
  v9 = v8;
  [v3 loadViewIfNeeded];
  sub_1005B981C(&qword_1019FB8A0);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10146C6B0;
  v39 = sub_100009260();
  v40 = v11;
  AnyHashable.init<A>(_:)();
  v12 = sub_1012C8634();
  *(v10 + 96) = sub_1005B981C(&unk_101A07740);
  *(v10 + 72) = v12;
  sub_100078EA4(v10);
  swift_setDeallocating();
  sub_10000CAAC(v10 + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v9 addUserInfoEntriesFromDictionary:isa];

  [v9 setNeedsSave:1];
  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v14 = *(v6 + 40);
  }

  v33 = v14;
  [v3 loadViewIfNeeded];
  sub_1005B981C(&qword_1019FB8A0);
  v34 = swift_initStackObject();
  *(v34 + 16) = v38;
  v39 = sub_100009260();
  v40 = v35;
  AnyHashable.init<A>(_:)();
  v36 = sub_1012C8634();
  *(v34 + 96) = sub_1005B981C(&unk_101A07740);
  *(v34 + 72) = v36;
  sub_100078EA4(v34);
  swift_setDeallocating();
  sub_10000CAAC(v34 + 32, &unk_1019FB8B0);
  v37 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v33 addUserInfoEntriesFromDictionary:v37];

  [v33 setNeedsSave:1];
  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_100F3C7C0(void *a1)
{
  v2 = v1;
  v4 = [a1 userInfo];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    [v2 loadViewIfNeeded];
    v34 = sub_100009260();
    v35 = v7;
    AnyHashable.init<A>(_:)();
    if (*(v6 + 16) && (v8 = sub_1000640CC(v36), (v9 & 1) != 0))
    {
      sub_100064288(*(v6 + 56) + 32 * v8, v37);
      sub_100064234(v36);

      sub_1005B981C(&unk_101A07740);
      if (swift_dynamicCast())
      {
        sub_100063338(v34);
      }
    }

    else
    {

      sub_100064234(v36);
    }

    v33.receiver = v2;
    v33.super_class = type metadata accessor for CRLiOSFolderGridViewController();
    objc_msgSendSuper2(&v33, "restoreUserActivityState:", a1);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v36[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v36);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 884;
    v23 = v36[0];
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:884 isFatal:0 format:v32 args:v29];
  }
}

objc_class *sub_100F3CD2C()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone);
  }

  else
  {
    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = v0;
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0);
    v6 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone);
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_defaultTitleForToolbarItemToSelectAllOrNone + 8);

    v8.value._countAndFlagsBits = v6;
    v8.value._object = v7;
    v13.value.super.isa = 0;
    v13.is_nil = v5;
    v14.value.super.super.isa = 0;
    v9.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v13, v14, v15).super.super.isa;
    v10 = *(v0 + v1);
    *(v4 + v1) = v9;
    v3 = v9.super.super.isa;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

objc_class *sub_100F3CE70()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___editModeToolbarButtonToDuplicateSelectedItems);
  }

  else
  {
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = v0;
    v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v19.is_nil = sub_100006370(0, &qword_1019F6BF0);
    v13.value._countAndFlagsBits = v8;
    v13.value._object = v10;
    v18.value.super.isa = 0;
    v18.is_nil = v12;
    v19.value.super.super.isa = 0;
    v14.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v13, v18, v19, v20).super.super.isa;
    v15 = *(v11 + v1);
    *(v11 + v1) = v14;
    v3 = v14.super.super.isa;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void sub_100F3D044()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setEditing:objc_msgSend(Strong animated:{"isEditing") ^ 1, 1}];
    v2 = [v1 collectionView];
    if (v2)
    {
      v3 = v2;
      [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:1];
    }

    else
    {
      __break(1u);
    }
  }
}

Class sub_100F3D0F8()
{
  v1 = v0;
  result = [v0 collectionView];
  if (result)
  {
    v3 = result;
    v4 = sub_100911C48();

    v5 = *(v4 + 16);

    sub_100006370(0, &qword_1019F6190);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = v5 == 0;
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    if ([v1 isEditing])
    {
      v24.value.super.super.isa = sub_100006370(0, &qword_1019F6BF0);
      v22.value.super.super.isa = v7;
      v22.is_nil = 0;
      return UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v22, v24).super.super.isa;
    }

    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    sub_100006370(0, &qword_1019F6BF0);
    v15 = v7;
    v16.value._countAndFlagsBits = v12;
    v16.value._object = v14;
    v23.value.super.isa = 0;
    v23.is_nil = v7;
    v25.value.super.super.isa = 0;
    v17.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v16, v23, v25, v26).super.super.isa;
    result = [v1 collectionView];
    if (result)
    {
      v18 = result;
      v19 = sub_100911C48();

      v20 = *(v19 + 16);

      [(objc_class *)v17.super.super.isa setEnabled:v20 != 0];

      return v17.super.super.isa;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100F3D37C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100F3D3D0();
  }
}

void sub_100F3D3D0()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v61 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v60 = &v55 - v6;
  v7 = [v0 collectionView];
  if (!v7)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v8 = v7;
  v9 = sub_100911C48();

  if (*(v9 + 16))
  {
    v10 = [v1 collectionView];
    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = v10;
    v12 = [v10 indexPathsForSelectedItems];

    if (v12)
    {
      v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = v13[2];
    v15 = *(v9 + 16);
    if (v14 >= v15)
    {
      if (v14 == v15)
      {
        v22 = [v1 collectionView];
        if (!v22)
        {
LABEL_37:
          __break(1u);
          return;
        }

        v23 = v22;

        [v23 selectItemAtIndexPath:0 animated:0 scrollPosition:0];

LABEL_31:
        sub_10006D850();
        sub_100F3FE88();
        return;
      }

      v59 = v1;

      v61 = objc_opt_self();
      LODWORD(v34) = [v61 _atomicIncrementAssertCount];
      v62 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v62);
      StaticString.description.getter();
      isa = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v35 = String._bridgeToObjectiveC()();

      v36 = [v35 lastPathComponent];

      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (qword_1019F20A0 == -1)
      {
LABEL_30:
        v40 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v34;
        v42 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v42;
        v43 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
        *(inited + 104) = v43;
        *(inited + 72) = isa;
        *(inited + 136) = &type metadata for String;
        v44 = sub_1000053B0();
        *(inited + 112) = v37;
        *(inited + 120) = v39;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v44;
        *(inited + 152) = 2610;
        v45 = v62;
        *(inited + 216) = v42;
        *(inited + 224) = v43;
        *(inited + 192) = v45;
        v46 = isa;
        v47 = v45;
        v48 = static os_log_type_t.error.getter();
        sub_100005404(v40, &_mh_execute_header, v48, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v49 = static os_log_type_t.error.getter();
        sub_100005404(v40, &_mh_execute_header, v49, "There are more IndexPaths in the current selection than its collection view exists!", 83, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v50 = swift_allocObject();
        v50[2] = 8;
        v50[3] = 0;
        v50[4] = 0;
        v50[5] = 0;
        v51 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v52 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v53 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v54 = String._bridgeToObjectiveC()();

        [v61 handleFailureInFunction:v52 file:v53 lineNumber:2610 isFatal:0 format:v54 args:v51];

        goto LABEL_31;
      }
    }

    else
    {
      v59 = v1;

      isa = sub_100E950A0(v16);

      v19 = sub_100E950A0(v18);

      v20 = *(v19 + 16);
      v21 = isa[2];
      v56 = v9;
      v55 = v13;
      if (v20 > v21 >> 3)
      {
        v24 = sub_1012D99BC(v19, isa);
      }

      else
      {
        v62 = isa;
        isa = &v62;
        sub_1012D5A44(v19);

        v24 = v62;
      }

      v39 = v24 + 7;
      v25 = 1 << *(v24 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & v24[7];
      v37 = (v25 + 63) >> 6;
      v58 = v61 + 16;
      v57 = v61 + 32;
      v34 = (v61 + 8);

      v28 = 0;
      if (v27)
      {
        while (1)
        {
          v29 = v28;
LABEL_25:
          v30 = v61;
          v31 = v60;
          (*(v61 + 2))(v60, v24[6] + *(v61 + 9) * (__clz(__rbit64(v27)) | (v29 << 6)), v2);
          (*(v30 + 4))(v5, v31, v2);
          v32 = [v59 collectionView];
          if (!v32)
          {
            break;
          }

          v33 = v32;
          v27 &= v27 - 1;
          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v33 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

          (*v34)(v5, v2);
          v28 = v29;
          if (!v27)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

LABEL_22:
      while (1)
      {
        v29 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v29 >= v37)
        {

          goto LABEL_31;
        }

        v27 = v39[v29];
        ++v28;
        if (v27)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_30;
  }
}

void sub_100F3DBD8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 16))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100F3DC84()
{
  v0 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100F378A4()[2];

    if (v5)
    {
      v6 = sub_100F378A4();
      v7 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
      v8 = sub_1005B981C(&qword_1019F3480);
      (*(*(v8 - 8) + 56))(v2, 5, 5, v8);
      LOBYTE(v7) = sub_100068604(v4 + v7, v2);
      sub_10000BBC4(v2, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      if (v7)
      {
        sub_100F549A8(v6);
      }

      else
      {
        sub_100F558C0(v6, 0, 0);
      }

      [v4 setEditing:0 animated:1];
    }
  }
}

void sub_100F3DDF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100F378A4()[2];

    if (v6)
    {
      sub_100F378A4();
      a3();

      [v5 setEditing:0 animated:1];
    }
  }
}

uint64_t sub_100F3DE90(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_100F8A1C8(a1);
  v6 = sub_10004B3DC(v5);

  if (*(v6 + 16))
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v6;
    v10[5] = v8;

    sub_100796D54(0, 0, v4, &unk_1014B9848, v10);
  }

  else
  {
  }
}

void sub_100F3E03C(void (*a1)(unint64_t), uint64_t a2, void *a3, int a4, int a5)
{
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v10 - 8);
  v12 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    a1(_swiftEmptyArrayStorage);
    return;
  }

  v14 = Strong;
  v93 = a4;
  LODWORD(v94) = a5;
  v90 = a2;
  v91 = a1;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];
  v92 = v12;
  v20 = v19;

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v21;

  v22 = String._bridgeToObjectiveC()();
  v23 = objc_opt_self();
  v24 = [v23 systemImageNamed:v22];

  v96 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout;
  v25 = sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_beginAccess();
  v26 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v27 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v97 = v15;
  v98 = v27;
  v28 = [v15 mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = String._bridgeToObjectiveC()();
  v88[0] = v23;
  v33 = [v23 systemImageNamed:v32];

  swift_allocObject();
  swift_beginAccess();
  v88[1] = a3;
  v34 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v35 = v92;
  v96 = v25;
  v36 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37 = sub_100006370(0, &qword_1019F6C00);
  v95 = sub_1005B981C(&unk_1019F4D60);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10146CE00;
  v39 = v98;
  *(v38 + 32) = v98;
  *(v38 + 40) = v36;
  v40 = v39;
  v41 = v36;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v102.value.super.isa = 0;
  v102.is_nil = 0;
  v98 = v37;
  v43.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v42, 0, v102, 1, 0xFFFFFFFFFFFFFFFFLL, v38, v85).super.super.isa;
  sub_1000652DC(v14 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v35, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v44 = sub_1005B981C(&qword_1019F3480);
  v45 = (*(*(v44 - 8) + 48))(v35, 5, v44);
  v89 = v41;
  if (v45 > 2)
  {
    if (v45 == 3)
    {
      v46 = &off_1018773D0;
    }

    else if (v45 == 4)
    {
      v46 = &off_1018773F8;
    }

    else
    {
      v46 = &off_101877420;
    }
  }

  else if (v45)
  {
    if (v45 == 1)
    {
      v46 = &off_101877380;
    }

    else
    {
      v46 = &off_1018773A8;
    }
  }

  else
  {
    sub_10000BBC4(v35, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v46 = &off_101877448;
  }

  v47 = _swiftEmptyArrayStorage;
  v99 = _swiftEmptyArrayStorage;
  v48 = v46[2];
  if (v48)
  {
    isa = v43.super.super.isa;
    v50 = v40;
    v51 = (v46 + 4);
    do
    {
      v52 = *v51++;
      sub_100F3F680(v52);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v48;
    }

    while (v48);
    v53 = v99;
    v40 = v50;
    v43.super.super.isa = isa;
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
  }

  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v103.value.super.isa = 0;
  v103.is_nil = 0;
  v55.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v54, 0, v103, 1, 0xFFFFFFFFFFFFFFFFLL, v53, v86.super.super.isa).super.super.isa;
  v56 = 0;
  if (v93)
  {
    v57 = v43.super.super.isa;
    v56 = v43.super.super.isa;
  }

  v100[4] = v56;
  v100[5] = v55.super.super.isa;
  v99 = _swiftEmptyArrayStorage;
  v58 = v55.super.super.isa;
  for (i = 0; i != 2; ++i)
  {
    v60 = v100[i + 4];
    if (v60)
    {
      v61 = v60;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v47 = v99;
    }
  }

  sub_1005B981C(&unk_1019F6D10);
  swift_arrayDestroy();
  v101 = v47;
  v62 = "NSt3__120__shared_ptr_pointerIP24CRLWPParagraphTypesetterNS_10shared_ptrIS1_E27__shared_ptr_default_deleteIS1_S1_EENS_9allocatorIS1_EEEE" + 30;
  if (v94)
  {
    v63 = [v97 mainBundle];
    v64 = String._bridgeToObjectiveC()();
    v65 = String._bridgeToObjectiveC()();
    v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = String._bridgeToObjectiveC()();
    v68 = [v88[0] systemImageNamed:v67];

    v69 = [v14 collectionView];
    if (!v69)
    {
LABEL_40:
      __break(1u);
      return;
    }

    v70 = v69;
    sub_100911C48();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v71 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v72 = swift_allocObject();
    v62 = "P24CRLWPParagraphTypesetterNS_10shared_ptrIS1_E27__shared_ptr_default_deleteIS1_S1_EENS_9allocatorIS1_EEEE";
    *(v72 + 16) = xmmword_101465920;
    *(v72 + 32) = v71;
    v73 = v71;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v104.value.super.isa = 0;
    v104.is_nil = 0;
    v75.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v74, 0, v104, 1, 0xFFFFFFFFFFFFFFFFLL, v72, v87.super.super.isa).super.super.isa;
    if (v47 >> 62 && _CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
      goto LABEL_40;
    }

    sub_1006799C8(0, 0, v75.super.super.isa);
  }

  if (*(v14 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
  {
    v94 = v40;
    v76 = v43.super.super.isa;
    v77 = swift_allocObject();
    *(v77 + 16) = *(v62 + 146);
    v78 = [v97 mainBundle];
    v79 = String._bridgeToObjectiveC()();
    v80 = String._bridgeToObjectiveC()();
    v81 = [v78 localizedStringForKey:v79 value:v80 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_beginAccess();
    v82 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    *(v77 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v105.value.super.isa = 0;
    v105.is_nil = 0;
    v84 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v83, 0, v105, 1, 0xFFFFFFFFFFFFFFFFLL, v77, v87.super.super.isa).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v91(v101);
  }

  else
  {
    v91(v101);
  }
}

void sub_100F3ECA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100064314(*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions), *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1), (*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2) & 1) == 0);
  }
}

objc_class *sub_100F3ED14(char a1)
{
  sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_101465920;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  *(v5 + 25) = a1;
  aBlock[4] = sub_100F79508;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100646688;
  aBlock[3] = &unk_1018A9500;
  v6 = _Block_copy(aBlock);

  v7 = [v3 elementWithUncachedProvider:v6];
  _Block_release(v6);
  *(preferredElementSize + 32) = v7;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v36.value.super.isa = 0;
  v36.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v36, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v33).super.super.isa;
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  _UISolariumEnabled();
  v18 = String._bridgeToObjectiveC()();

  v19 = [objc_opt_self() systemImageNamed:v18];

  sub_100006370(0, &qword_1019F6BF0);
  v20 = isa;
  v21 = v19;
  v22.value._countAndFlagsBits = v15;
  v22.value._object = v17;
  v35.value.super.isa = v19;
  v35.is_nil = 0;
  v37.value.super.super.isa = isa;
  v23 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v22, v35, v37, v38).super.super.isa;
  v24 = [v10 mainBundle];
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  if (!v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v23 setAccessibilityLabel:v27];

  v28 = [v10 mainBundle];
  v29 = String._bridgeToObjectiveC()();
  v30 = String._bridgeToObjectiveC()();
  v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

  if (!v31)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = String._bridgeToObjectiveC()();
  }

  [(objc_class *)v23 setAccessibilityHint:v31];

  return v23;
}

id sub_100F3F19C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 systemImageNamed:v7];

  v10 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout;
  v11 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
  v12 = sub_100006370(0, &qword_1019F6190);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = [v2 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v8 systemImageNamed:v19];

  v21 = (*(v1 + v10) & 1) == 0;
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = v22;
  v23 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1005B981C(&unk_101A23C50);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10146BDE0;
  *(v24 + 32) = v14;
  *(v24 + 88) = v12;
  *(v24 + 56) = v12;
  *(v24 + 64) = v23;
  v25 = objc_allocWithZone(UISegmentedControl);
  v26 = v14;
  v27 = v23;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v25 initWithItems:{isa, 0, 0, v21, sub_100F771FC, v32}];

  swift_unknownObjectWeakAssign();
  [v29 setSelectedSegmentIndex:(*(v1 + v10) & 1) == 0];
  v30 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v29];

  return v30;
}

void sub_100F3F5A8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
    *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 1;
    if ((v2 & 1) == 0)
    {
      sub_10005C940();
    }
  }
}

void sub_100F3F614()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout);
    *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_isGridLayout) = 0;
    if (v2 == 1)
    {
      sub_10005C940();
    }
  }
}

void *sub_100F3F680(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  sub_100D267B4();
  if (v3 == a1)
  {
    v4 = String._bridgeToObjectiveC()();
    v5 = [objc_opt_self() systemImageNamed:v4];

    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v7 = 0;
    v13 = 0;
  }

  sub_100006370(0, &qword_1019F6190);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  v20 = v15;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17 = v16;
  if (v13)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v16 setAccessibilityValue:{v18, 0, 0, v3 == a1, sub_100F771D4, v20}];

  return v16;
}

void sub_100F3F9AC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100064314(a3, (*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1) ^ (*(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions) == a3)) & 1, *(Strong + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2));
  }
}

void sub_100F3FA30()
{
  v1 = v0;
  v2 = sub_100F3CD2C();
  v3 = [v0 collectionView];
  if (!v3)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = sub_100911C48();

  v6 = *(v5 + 16);

  [(objc_class *)v2 setEnabled:v6 != 0];

  v7 = [v1 navigationItem];
  v8 = [v7 searchController];

  if (v8)
  {
    v9 = [v8 searchBar];

    [v9 _setEnabled:0];
  }

  v10 = [v1 navigationItem];
  v11 = [v10 searchController];

  if (v11)
  {
    [v11 setActive:0];
  }

  if (_UISolariumEnabled())
  {
    v12 = [v1 navigationItem];
    [v12 setSearchController:0];
  }

  v13 = [v1 collectionView];
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 indexPathsForSelectedItems];

  if (v15)
  {
    type metadata accessor for IndexPath();
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v17 = *(v16 + 16);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v1 collectionView];
  if (!v18)
  {
    goto LABEL_21;
  }

  v19 = v18;
  sub_100911C48();

  v20 = [v1 traitCollection];
  v21 = [v20 horizontalSizeClass];

  if (v21 == 1)
  {
    v22 = [objc_opt_self() mainBundle];
    v30 = 0x80000001015B3490;
    v23 = 0x72616F4220756C25;
    v24 = 0xEA00000000007364;
  }

  else
  {
    v22 = [objc_opt_self() mainBundle];
    v23 = 0xD000000000000013;
    v30 = 0x80000001015B3490;
    v24 = 0x80000001015B3470;
  }

  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v26 = 0xD00000000000002FLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(*&v23, 0, v22, v25, *(&v30 - 1));

  sub_1005B981C(&qword_1019F54E0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10146C6B0;
  *(v27 + 56) = &type metadata for Int;
  *(v27 + 64) = &protocol witness table for Int;
  *(v27 + 32) = v17;
  static String.localizedStringWithFormat(_:_:)();

  v28 = String._bridgeToObjectiveC()();

  [v1 setTitle:v28];

  v29 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToSelectAllOrNone];
  v31 = String._bridgeToObjectiveC()();
  [v29 setTitle:v31];
}

void sub_100F3FE88()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v2 - 8);
  v4 = v73 - v3;
  v79 = _s5BoardVMa(0);
  v5 = *(v79 - 8);
  __chkstk_darwin(v79);
  v7 = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v76 = v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 toolbarItems];
  if (v11)
  {
    v12 = v11;
    sub_100006370(0, &qword_1019F6BF0);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = [v1 collectionView];
    if (!v14)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v15 = v14;
    v77 = v5;
    v16 = [v14 indexPathsForSelectedItems];

    if (v16)
    {
      type metadata accessor for IndexPath();
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v18 = *(v17 + 16);

      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    v40 = [v1 traitCollection];
    v41 = [v40 horizontalSizeClass];

    v42 = _UISolariumEnabled();
    v78 = v4;
    v73[1] = v1;
    v75 = v7;
    if (v42 && v41 == 1)
    {
      v43 = [v1 collectionView];
      if (!v43)
      {
LABEL_70:
        __break(1u);
        return;
      }

      v44 = v43;
      v45 = [v43 isEditing];

      v46 = v13 >> 62;
      if (v45)
      {
        if (v46)
        {
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (v20)
          {
LABEL_14:
            v47 = 0;
            v23 = v13 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v13 & 0xC000000000000001) != 0)
              {
                v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v47 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_46;
                }

                v48 = *(v13 + 8 * v47 + 32);
              }

              v49 = v48;
              v50 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                break;
              }

              [v48 setEnabled:v19 ^ 1];

              ++v47;
              if (v50 == v20)
              {
                goto LABEL_54;
              }
            }

LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v20)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_54;
      }

      if (v46)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();
        if (v20)
        {
LABEL_34:
          v55 = 0;
          v23 = v13 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v13 & 0xC000000000000001) != 0)
            {
              v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v55 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_47;
              }

              v56 = *(v13 + 8 * v55 + 32);
            }

            v57 = v56;
            v58 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              goto LABEL_45;
            }

            [v56 setEnabled:1];

            ++v55;
          }

          while (v58 != v20);
        }
      }

      else
      {
        v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v20)
        {
          goto LABEL_34;
        }
      }

LABEL_54:

      if (v19)
      {
        return;
      }

      v59 = sub_100F378A4();
      v60 = sub_100F8A1C8(v59);

      v61 = v60[2];
      if (!v61)
      {
LABEL_62:

        v39 = sub_100F3CE70();
        v72 = sub_100F38610();
LABEL_65:
        [v39 setEnabled:v72];
        goto LABEL_66;
      }

      v62 = 0;
      v63 = v60 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v74 = v75 + 8;
      v77 += 7;
      v64 = v76;
      while (v62 < v60[2])
      {
        sub_1000652DC(&v63[*(v9 + 72) * v62], v64, type metadata accessor for CRLBoardIdentifier);
        v65 = v78;
        sub_1010AB99C(v64, v78);
        v66 = v63;
        v67 = v61;
        v68 = v9;
        sub_10000BBC4(v64, type metadata accessor for CRLBoardIdentifier);
        v69 = v79;
        (*v77)(v65, 0, 1, v79);
        v70 = v75;
        sub_100065D50(v65, v75, _s5BoardVMa);
        if (*(v70 + *(v69 + 72)))
        {

          sub_10000BBC4(v70, _s5BoardVMa);
          goto LABEL_64;
        }

        v71 = v74[*(v69 + 76)];
        sub_10000BBC4(v70, _s5BoardVMa);
        v9 = v68;
        v64 = v76;
        v61 = v67;
        v63 = v66;
        if ((v71 & 1) == 0)
        {

LABEL_64:
          v39 = sub_100F3CE70();
          v72 = 0;
          goto LABEL_65;
        }

        if (v61 == ++v62)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

    if (v13 >> 62)
    {
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (!v20)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v20)
      {
        goto LABEL_54;
      }
    }

    v51 = 0;
    v23 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v51 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v52 = *(v13 + 8 * v51 + 32);
      }

      v53 = v52;
      v54 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      [v52 setEnabled:v19 ^ 1];

      ++v51;
      if (v54 == v20)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v19 = objc_opt_self();
  LODWORD(v20) = [v19 _atomicIncrementAssertCount];
  v80 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v80);
  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v21 lastPathComponent];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v24;

  if (qword_1019F20A0 != -1)
  {
LABEL_48:
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v20;
  v27 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v27;
  v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v28;
  *(inited + 72) = v13;
  *(inited + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(inited + 112) = v23;
  *(inited + 120) = v9;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v29;
  *(inited + 152) = 1398;
  v30 = v80;
  *(inited + 216) = v27;
  *(inited + 224) = v28;
  *(inited + 192) = v30;
  v31 = v13;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v34 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v35 = swift_allocObject();
  v35[2] = 8;
  v35[3] = 0;
  v35[4] = 0;
  v35[5] = 0;
  v36 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v39 = String._bridgeToObjectiveC()();

  [v19 handleFailureInFunction:v37 file:v38 lineNumber:1398 isFatal:0 format:v39 args:v36];

LABEL_66:
}

id sub_100F40978(int a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLiOSFolderGridViewController();
  v38.receiver = v3;
  v38.super_class = v10;
  v31 = a1;
  objc_msgSendSuper2(&v38, "setEditing:animated:", a1 & 1, a2 & 1);
  sub_10006D850();
  v11 = [v3 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (_UISolariumEnabled() && v12 == 1)
  {
    sub_10006E9B4();
    v13 = [v3 navigationController];
    if (!v13)
    {
      goto LABEL_8;
    }

    v14 = v13;
    [v13 setToolbarHidden:0];
  }

  else
  {
    v15 = [v3 navigationController];
    if (!v15)
    {
      goto LABEL_8;
    }

    v14 = v15;
    [v15 setToolbarHidden:(v31 & 1) == 0];
  }

LABEL_8:
  sub_100F3FE88();
  result = [v3 collectionView];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = result;
  v18 = sub_100911C48();

  v33 = *(v18 + 16);
  if (v33)
  {
    v19 = 0;
    v32 = v7 + 16;
    while (1)
    {
      if (v19 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v20 = v6;
      (*(v7 + 16))(v9, v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v6);
      v21 = v3;
      result = [v3 collectionView];
      if (!result)
      {
        break;
      }

      v22 = result;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [v22 cellForItemAtIndexPath:isa];

      v6 = v20;
      if (v17)
      {
        ObjectType = swift_getObjectType();
        v25 = swift_conformsToProtocol2();
        if (v25)
        {
          (*(v25 + 112))(v31 & 1, ObjectType, v25);
        }
      }

      ++v19;
      (*(v7 + 8))(v9, v20);
      v3 = v21;
      if (v33 == v19)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_18:

  if (v31)
  {
    v37 = &type metadata for () + 8;
    v17 = [objc_opt_self() defaultCenter];
    if (qword_1019F1F48 != -1)
    {
LABEL_26:
      swift_once();
    }

    [v17 addObserver:v3 selector:? name:? object:?];

    v26 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver;
    swift_beginAccess();
    sub_10002C638(&v36, v3 + v26, &unk_1019F4D00);
    return swift_endAccess();
  }

  else
  {
    result = [v3 collectionView];
    if (!result)
    {
LABEL_29:
      __break(1u);
      return result;
    }

    v27 = result;
    [result selectItemAtIndexPath:0 animated:0 scrollPosition:0];

    v28 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_iCloudStatusObserver;
    swift_beginAccess();
    sub_10000BE14(v3 + v28, &v34, &unk_1019F4D00);
    if (*(&v35 + 1))
    {
      sub_10000BF3C(&v34, &v36);
      v29 = [objc_opt_self() defaultCenter];
      sub_100020E58(&v36, v37);
      [v29 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      v34 = 0u;
      v35 = 0u;
      swift_beginAccess();
      sub_10002C638(&v34, v3 + v28, &unk_1019F4D00);
      swift_endAccess();
      return sub_100005070(&v36);
    }

    else
    {
      return sub_10000CAAC(&v34, &unk_1019F4D00);
    }
  }
}

uint64_t sub_100F40F40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v9 - 8);
  v11 = (&v65 - v10);
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_10005AFE0();
  sub_10079330C(a2, v11);

  v19 = _s4NodeVMa(0);
  if ((*(*(v19 - 8) + 48))(v11, 1, v19) == 1)
  {
    sub_10000CAAC(v11, &unk_1019FB770);
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_10006852C(&qword_101A23D10, &type metadata accessor for IndexPath);
    v8 = inited;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 32) = v21;
    v67 = v24;
    v68 = inited + 32;
    *(inited + 64) = v24;
    *(inited + 40) = v23;
    v65 = objc_opt_self();
    LODWORD(v25) = [v65 _atomicIncrementAssertCount];
    v69 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v69);
    StaticString.description.getter();
    v66 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v29;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v30 = static OS_os_log.crlAssert;
      v31 = swift_initStackObject();
      *(v31 + 16) = xmmword_10146CA70;
      *(v31 + 56) = &type metadata for Int32;
      *(v31 + 64) = &protocol witness table for Int32;
      *(v31 + 32) = v25;
      v32 = sub_100006370(0, &qword_1019F4D30);
      *(v31 + 96) = v32;
      v33 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      v34 = v66;
      *(v31 + 72) = v66;
      v35 = v67;
      *(v31 + 136) = &type metadata for String;
      *(v31 + 144) = v35;
      *(v31 + 104) = v33;
      *(v31 + 112) = v28;
      *(v31 + 120) = v17;
      *(v31 + 176) = &type metadata for UInt;
      *(v31 + 184) = &protocol witness table for UInt;
      *(v31 + 152) = 1522;
      v36 = v69;
      *(v31 + 216) = v32;
      *(v31 + 224) = v33;
      *(v31 + 192) = v36;
      v37 = v34;
      v38 = v36;
      v39 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v31);
      swift_setDeallocating();
      v67 = sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v40 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v40, "No item for index path: %@", 26, 2, v8);

      type metadata accessor for __VaListBuilder();
      v11 = swift_allocObject();
      v11[2] = 8;
      v11[3] = 0;
      v14 = v11 + 3;
      v11[4] = 0;
      v11[5] = 0;
      v17 = *(v8 + 2);
      if (!v17)
      {
LABEL_30:
        v57 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v58 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v59 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v60 = String._bridgeToObjectiveC()();

        [v65 handleFailureInFunction:v58 file:v59 lineNumber:1522 isFatal:0 format:v60 args:v57];

        swift_setDeallocating();
        swift_arrayDestroy();
        v56 = 0;
        return v56 & 1;
      }

      v41 = 0;
      a1 = 40;
      while (1)
      {
        v42 = (v68 + 40 * v41);
        v28 = v42[4];
        LODWORD(v25) = sub_100020E58(v42, v42[3]);
        v43 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v3 = *v14;
        v44 = *(v43 + 16);
        v45 = __OFADD__(*v14, v44);
        v46 = *v14 + v44;
        if (v45)
        {
          break;
        }

        v25 = v11[4];
        if (v25 >= v46)
        {
          goto LABEL_20;
        }

        if (v25 + 0x4000000000000000 < 0)
        {
          goto LABEL_37;
        }

        v28 = v11[5];
        if (2 * v25 > v46)
        {
          v46 = 2 * v25;
        }

        v11[4] = v46;
        if ((v46 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_38;
        }

        v47 = v8;
        v48 = v43;
        v49 = swift_slowAlloc();
        v50 = v49;
        v11[5] = v49;
        if (v28)
        {
          if (v49 != v28 || v49 >= &v28[8 * v3])
          {
            memmove(v49, v28, 8 * v3);
          }

          LODWORD(v25) = v11;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v43 = v48;
          v8 = v47;
          a1 = 40;
LABEL_20:
          v50 = v11[5];
          if (!v50)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v43 = v48;
        v8 = v47;
        a1 = 40;
        if (!v50)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v52 = *(v43 + 16);
        if (v52)
        {
          v53 = (v43 + 32);
          v54 = *v14;
          while (1)
          {
            v55 = *v53++;
            *&v50[8 * v54] = v55;
            v54 = *v14 + 1;
            if (__OFADD__(*v14, 1))
            {
              break;
            }

            *v14 = v54;
            if (!--v52)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++v41 == v17)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
    }
  }

LABEL_28:
  sub_1000652DC(v11, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000BBC4(v11, _s4NodeVMa);
  sub_100065D50(v14, v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if ([a1 isEditing])
  {
    sub_10000BBC4(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v56 = 1;
  }

  else
  {
    v61 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v62 = sub_1005B981C(&qword_1019F3480);
    (*(*(v62 - 8) + 56))(v8, 5, 5, v62);
    v63 = sub_100068604(v3 + v61, v8);
    sub_10000BBC4(v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (v63)
    {
      sub_100F435B4(v17);
    }

    sub_10000BBC4(v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v56 = !v63;
  }

  return v56 & 1;
}

uint64_t sub_100F419E8(void *a1, uint64_t a2)
{
  v3 = v2;
  v124 = a1;
  v114 = _s5BoardVMa(0);
  __chkstk_darwin(v114);
  v6 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v111 - v8;
  v9 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v9 - 8);
  v11 = &v111 - v10;
  v12 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v12 - 8);
  v14 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v123 = &v111 - v16;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v117 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v119 = &v111 - v21;
  __chkstk_darwin(v22);
  v24 = &v111 - v23;
  v25 = sub_10005AFE0();
  sub_10079330C(a2, v11);

  v26 = _s4NodeVMa(0);
  v27 = (*(*(v26 - 8) + 48))(v11, 1, v26);
  v116 = v6;
  v122 = v17;
  if (v27 == 1)
  {
    v120 = v3;
    v121 = v24;
    v115 = a2;
    sub_10000CAAC(v11, &unk_1019FB770);
    v28 = *(v18 + 56);
    v113 = v14;
    v28(v14, 1, 1, v17);
    v112 = objc_opt_self();
    v29 = [v112 _atomicIncrementAssertCount];
    v125[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v125);
    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = v18;
    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v29;
    v38 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v38;
    v39 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v39;
    v40 = v111;
    *(inited + 72) = v111;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 1549;
    v42 = v125[0];
    *(inited + 216) = v38;
    *(inited + 224) = v39;
    *(inited + 192) = v42;
    v43 = v40;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v46, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v112 handleFailureInFunction:v49 file:v50 lineNumber:1549 isFatal:0 format:v51 args:v48];

    v3 = v120;
    v24 = v121;
    v52 = v124;
    a2 = v115;
    v17 = v122;
    v53 = v113;
  }

  else
  {
    sub_1000652DC(v11, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000BBC4(v11, _s4NodeVMa);
    (*(v18 + 56))(v14, 0, 1, v17);
    v53 = v14;
    v52 = v124;
    v35 = v18;
  }

  v54 = v123;
  sub_10003DFF8(v53, v123, &unk_101A15B20);
  if ((*(v35 + 48))(v54, 1, v17) == 1)
  {
    return sub_10000CAAC(v54, &unk_101A15B20);
  }

  sub_100065D50(v54, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v57 = [v52 cellForItemAtIndexPath:isa];

  if (!v57)
  {
    v121 = v24;
    v124 = objc_opt_self();
    v80 = [v124 _atomicIncrementAssertCount];
    v125[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v125);
    StaticString.description.getter();
    v81 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v82 = String._bridgeToObjectiveC()();

    v83 = [v82 lastPathComponent];

    v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v86 = v85;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v87 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_10146CA70;
    *(v88 + 56) = &type metadata for Int32;
    *(v88 + 64) = &protocol witness table for Int32;
    *(v88 + 32) = v80;
    v89 = sub_100006370(0, &qword_1019F4D30);
    *(v88 + 96) = v89;
    v90 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v88 + 104) = v90;
    *(v88 + 72) = v81;
    *(v88 + 136) = &type metadata for String;
    v91 = sub_1000053B0();
    *(v88 + 112) = v84;
    *(v88 + 120) = v86;
    *(v88 + 176) = &type metadata for UInt;
    *(v88 + 184) = &protocol witness table for UInt;
    *(v88 + 144) = v91;
    *(v88 + 152) = 1550;
    v92 = v125[0];
    *(v88 + 216) = v89;
    *(v88 + 224) = v90;
    *(v88 + 192) = v92;
    v93 = v81;
    v94 = v92;
    v95 = static os_log_type_t.error.getter();
    sub_100005404(v87, &_mh_execute_header, v95, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v88);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v96 = static os_log_type_t.error.getter();
    sub_100005404(v87, &_mh_execute_header, v96, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v97 = swift_allocObject();
    v97[2] = 8;
    v97[3] = 0;
    v97[4] = 0;
    v97[5] = 0;
    v98 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v99 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v100 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v101 = String._bridgeToObjectiveC()();

    [v124 handleFailureInFunction:v99 file:v100 lineNumber:1550 isFatal:0 format:v101 args:v98];

    v102 = v121;
    return sub_10000BBC4(v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  type metadata accessor for CRLBoardLibrary();
  v58 = swift_dynamicCastClass();
  if (!v58)
  {
    v63 = 0;
LABEL_26:
    v104 = [v3 navigationItem];
    v105 = [v104 searchController];

    if (v105)
    {
      v106 = [v105 searchBar];

      [v106 resignFirstResponder];
    }

    v107 = &v3[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v108 = *(v107 + 1);
      ObjectType = swift_getObjectType();
      (*(v108 + 8))(v3, v24, ObjectType, v108);
      swift_unknownObjectRelease();
    }

    goto LABEL_30;
  }

  v59 = v119;
  sub_1000652DC(v24, v119, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    swift_unknownObjectRetain();
    sub_10000BBC4(v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v63 = 0;
    goto LABEL_26;
  }

  v120 = v3;
  v60 = v118;
  v61 = sub_100065D50(v59, v118, _s5BoardVMa);
  v62 = *(*&v58[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController] + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
  __chkstk_darwin(v61);
  *(&v111 - 2) = v60;
  swift_unknownObjectRetain_n();

  v63 = sub_101107CA8(sub_100F794EC, (&v111 - 4), v62);

  sub_10000BBC4(v60, _s5BoardVMa);
  swift_unknownObjectRelease();
  if (!v63)
  {
    v3 = v120;
    goto LABEL_26;
  }

  v64 = v117;
  sub_1000652DC(v24, v117, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v120;
  if (EnumCaseMultiPayload != 2)
  {
    v103 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_25:
    sub_10000BBC4(v64, v103);
    goto LABEL_26;
  }

  v66 = v64;
  v64 = v116;
  sub_100065D50(v66, v116, _s5BoardVMa);
  if (*(v64 + *(v114 + 60)) != 1)
  {
    v103 = _s5BoardVMa;
    goto LABEL_25;
  }

  v115 = a2;
  v121 = v24;
  v67 = qword_1019F22C8;
  v68 = v63;
  if (v67 != -1)
  {
    swift_once();
  }

  v69 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_10146C6B0;
  v71 = URL.absoluteString.getter();
  v73 = v72;
  *(v70 + 56) = &type metadata for String;
  *(v70 + 64) = sub_1000053B0();
  *(v70 + 32) = v71;
  *(v70 + 40) = v73;
  v74 = static os_log_type_t.default.getter();
  sub_100005404(v69, &_mh_execute_header, v74, "Opening URL to accept share: ", 29, 2, v70);
  swift_setDeallocating();
  sub_100005070(v70 + 32);
  v75 = [objc_opt_self() sharedApplication];
  URL._bridgeToObjectiveC()(v76);
  v78 = v77;
  sub_100BD72C0(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_10006852C(&qword_1019F3CF0, type metadata accessor for OpenExternalURLOptionsKey);
  v79 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v75 openURL:v78 options:v79 completionHandler:0];

  sub_10000BBC4(v116, _s5BoardVMa);
  v24 = v121;
  v52 = v124;
LABEL_30:
  v110 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v52 deselectItemAtIndexPath:v110 animated:0];

  v102 = v24;
  return sub_10000BBC4(v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
}

void sub_100F42A6C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v70 - v10;
  v12 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v79 = (v14 + 48);
  if (v15(v8, 1, v13) == 1)
  {
    v74 = v15;
    v75 = v13;
    v76 = a2;
    v77 = a1;
    v78 = v3;
    v73 = objc_opt_self();
    v16 = [v73 _atomicIncrementAssertCount];
    v80 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v80);
    StaticString.description.getter();
    v72 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v20;
    v71 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v16;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v24;
    v25 = v72;
    *(inited + 72) = v72;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    v27 = v70;
    *(inited + 112) = v71;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 1576;
    v28 = v80;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v28;
    v29 = v25;
    v30 = v28;
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v31, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v32, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v33 = swift_allocObject();
    v33[2] = 8;
    v33[3] = 0;
    v33[4] = 0;
    v33[5] = 0;
    v34 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    [v73 handleFailureInFunction:v35 file:v36 lineNumber:1576 isFatal:0 format:v37 args:v34];

    a1 = v77;
    v13 = v75;
    v15 = v74;
  }

  sub_10003DFF8(v8, v11, &qword_1019F6990);
  v38 = v15(v11, 1, v13);
  sub_10000CAAC(v11, &qword_1019F6990);
  if (v38 != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v40 = [a1 cellForItemAtIndexPath:isa];

    if (v40)
    {

      if ([a1 isEditing])
      {
        sub_100F3FE88();
      }

      else
      {
        if (qword_1019F2098 != -1)
        {
          swift_once();
        }

        v63 = static OS_os_log.crlDefault;
        sub_1005B981C(&qword_1019F54E0);
        v64 = swift_initStackObject();
        *(v64 + 16) = xmmword_10146C6B0;
        v80 = 0;
        v81 = 0xE000000000000000;
        _StringGuts.grow(_:)(58);
        v65._object = 0x80000001015B40B0;
        v65._countAndFlagsBits = 0xD000000000000024;
        String.append(_:)(v65);
        v66._countAndFlagsBits = 0xD000000000000038;
        v66._object = 0x80000001015B40E0;
        String.append(_:)(v66);
        v67 = v80;
        v68 = v81;
        *(v64 + 56) = &type metadata for String;
        *(v64 + 64) = sub_1000053B0();
        *(v64 + 32) = v67;
        *(v64 + 40) = v68;
        v69 = static os_log_type_t.default.getter();
        sub_100005404(v63, &_mh_execute_header, v69, "%@", 2, 2, v64);
        swift_setDeallocating();
        sub_100005070(v64 + 32);
      }

      sub_10006D850();
    }

    else
    {
      v79 = objc_opt_self();
      v41 = [v79 _atomicIncrementAssertCount];
      v80 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v80);
      StaticString.description.getter();
      v42 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v43 = String._bridgeToObjectiveC()();

      v44 = [v43 lastPathComponent];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v48 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_10146CA70;
      *(v49 + 56) = &type metadata for Int32;
      *(v49 + 64) = &protocol witness table for Int32;
      *(v49 + 32) = v41;
      v50 = sub_100006370(0, &qword_1019F4D30);
      *(v49 + 96) = v50;
      v51 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v49 + 104) = v51;
      *(v49 + 72) = v42;
      *(v49 + 136) = &type metadata for String;
      v52 = sub_1000053B0();
      *(v49 + 112) = v45;
      *(v49 + 120) = v47;
      *(v49 + 176) = &type metadata for UInt;
      *(v49 + 184) = &protocol witness table for UInt;
      *(v49 + 144) = v52;
      *(v49 + 152) = 1577;
      v53 = v80;
      *(v49 + 216) = v50;
      *(v49 + 224) = v51;
      *(v49 + 192) = v53;
      v54 = v42;
      v55 = v53;
      v56 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v49);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v57 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v57, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v58 = swift_allocObject();
      v58[2] = 8;
      v58[3] = 0;
      v58[4] = 0;
      v58[5] = 0;
      v59 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v61 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v62 = String._bridgeToObjectiveC()();

      [v79 handleFailureInFunction:v60 file:v61 lineNumber:1577 isFatal:0 format:v62 args:v59];
    }
  }
}

uint64_t sub_100F434A8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
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

void sub_100F435B4(uint64_t a1)
{
  v38 = a1;
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100006370(0, &qword_1019F6EE0);
  v3 = static OS_os_log.default.getter();
  v4 = static os_log_type_t.default.getter();
  sub_100005404(v3, &_mh_execute_header, v4, "Show recovery alert in response to attempting to open a deleted board", 69, 2, _swiftEmptyArrayStorage);

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = [v5 mainBundle];
  v11 = String._bridgeToObjectiveC()();
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = [v5 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = String._bridgeToObjectiveC()();

  v22 = objc_opt_self();
  v23 = [v22 actionWithTitle:v21 style:1 handler:0];

  [v16 addAction:v23];
  v24 = [v5 mainBundle];
  v25 = String._bridgeToObjectiveC()();
  v26 = String._bridgeToObjectiveC()();
  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = swift_allocObject();
  v29 = v37;
  swift_unknownObjectWeakInit();
  sub_1000652DC(v38, &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
  v30 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  sub_100065D50(&v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for CRLBoardLibraryViewModel.Item);

  v32 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100F76C4C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018A9230;
  v33 = _Block_copy(aBlock);

  v34 = [v22 actionWithTitle:v32 style:0 handler:v33];
  _Block_release(v33);

  [v16 addAction:v34];
  [v29 presentViewController:v16 animated:1 completion:0];
}

uint64_t sub_100F43B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1005B981C(&qword_101A23C10);
    v6 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_10146C6B0;
    sub_1000652DC(a3, v8 + v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100F3DE90(v8);

    swift_setDeallocating();
    sub_10000BBC4(v8 + v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_100F43EE4(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForItemAtIndexPath:isa];

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = (*(v5 + 136))(ObjectType, v5);

      return v6;
    }
  }

  v8 = objc_opt_self();
  v9 = [v8 _atomicIncrementAssertCount];
  v31 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v31);
  StaticString.description.getter();
  v10 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v9;
  v18 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v18;
  v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(inited + 104) = v19;
  *(inited + 72) = v10;
  *(inited + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 112) = v13;
  *(inited + 120) = v15;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v20;
  *(inited + 152) = 1646;
  v21 = v31;
  *(inited + 216) = v18;
  *(inited + 224) = v19;
  *(inited + 192) = v21;
  v22 = v10;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v26[4] = 0;
  v26[5] = 0;
  v27 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  [v8 handleFailureInFunction:v28 file:v29 lineNumber:1646 isFatal:0 format:v30 args:v27];

  return 0;
}

UIMenu sub_100F44338(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_100F444A4(a3);
  if (v4)
  {
    v5 = v4;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v6 = sub_100F449C4(a3);
  if (v6)
  {
    v7 = v6;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006370(0, &qword_1019F6C00);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v8, 0, v10, 0, 0xFFFFFFFFFFFFFFFFLL, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage);
}

uint64_t sub_100F444A4(char *a1)
{
  v2 = [*&a1[OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight] hideContextMenu];
  if (v2)
  {
    v3 = v2;
    sub_100006370(0, &qword_1019F6190);
    v4 = [v3 title];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = String._bridgeToObjectiveC()();
    v6 = [objc_opt_self() systemImageNamed:v5];

    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = v3;
    v8[4] = a1;
    v9 = a1;
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 2385;
    v24 = v34;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:2385 isFatal:0 format:v33 args:v30];

    return 0;
  }
}

uint64_t sub_100F449C4(uint64_t a1)
{
  v2 = [*(a1 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight) replyContextMenuWithPresentingViewController:v1];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() mainBundle];
    v5 = String._bridgeToObjectiveC()();
    v6 = String._bridgeToObjectiveC()();
    v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100006370(0, &qword_1019F6190);
    v8 = String._bridgeToObjectiveC()();
    v9 = [objc_opt_self() systemImageNamed:v8];

    *(swift_allocObject() + 16) = v3;
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  else
  {
    v11 = objc_opt_self();
    v12 = [v11 _atomicIncrementAssertCount];
    v34 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v34);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 2374;
    v24 = v34;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v11 handleFailureInFunction:v31 file:v32 lineNumber:2374 isFatal:0 format:v33 args:v30];

    return 0;
  }
}

id sub_100F44F1C(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a2;
  v36 = a3;
  v30 = a1;
  isa = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(isa - 8);
  v35 = *(v4 + 64);
  __chkstk_darwin(isa);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_1005B981C(&qword_101A23C10);
  v9 = *(v4 + 80);
  v10 = (v9 + 32) & ~v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146C6B0;
  sub_1000652DC(a1, v11 + v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100E93FF4(v11);
  swift_setDeallocating();
  sub_10000BBC4(v11 + v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  swift_deallocClassInstance();
  sub_10006852C(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  v13 = v31;
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v6);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  (*(v7 + 32))(v15 + v14, &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v16 = v33;
  sub_1000652DC(v30, v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v17 = (v9 + 24) & ~v9;
  v18 = (v35 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  sub_100065D50(v16, v19 + v17, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v20 = v36;
  *(v19 + v18) = v36;
  v21 = objc_opt_self();
  v41 = sub_100F78020;
  v42 = v15;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_1006499AC;
  v40 = &unk_1018A9AF0;
  v22 = _Block_copy(&aBlock);
  v23 = v20;

  v24 = v13;

  v41 = sub_100F780B0;
  v42 = v19;
  aBlock = _NSConcreteStackBlock;
  v38 = *"";
  v39 = sub_1006465C4;
  v40 = &unk_1018A9B18;
  v25 = _Block_copy(&aBlock);

  v26 = isa;
  v27 = [v21 configurationWithIdentifier:isa previewProvider:v22 actionProvider:v25];

  _Block_release(v25);
  _Block_release(v22);
  return v27;
}

void sub_100F454D0(void *a1, void *a2, void *a3)
{
  v127 = a1;
  v6 = type metadata accessor for UUID();
  v129 = *(v6 - 8);
  v130 = v6;
  __chkstk_darwin(v6);
  v128 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v8 - 8);
  v135 = (&v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v131 = &v116 - v11;
  v12 = type metadata accessor for IndexPath();
  v133 = *(v12 - 8);
  v134 = v12;
  v13 = v133[8];
  __chkstk_darwin(v12);
  v125 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v126 = &v116 - v15;
  v16 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v16 - 8);
  v18 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v116 - v20;
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v136 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v116 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a3;
  [a3 setPreferredCommitStyle:{0, v26}];
  v29 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v30 = sub_1005B981C(&qword_1019F3480);
  (*(*(v30 - 8) + 56))(v28, 5, 5, v30);
  LOBYTE(v29) = sub_100068604(v3 + v29, v28);
  sub_10000BBC4(v28, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if ((v29 & 1) == 0)
  {
    v137 = [a2 identifier];
    sub_1005B981C(&unk_101A23D00);
    sub_1005B981C(&qword_1019FB8A8);
    if (swift_dynamicCast())
    {
      if (v143[2] == 1)
      {
        sub_100BC1ABC(v143, v18);

        v33 = *(v23 + 48);
        v32 = v23 + 48;
        v31 = v33;
        v34 = v33(v18, 1, v22);
        v124 = v3;
        if (v34 == 1)
        {
          v122 = v31;
          v123 = v32;
          v121 = objc_opt_self();
          v35 = [v121 _atomicIncrementAssertCount];
          v137 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v137);
          StaticString.description.getter();
          v119 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v36 = String._bridgeToObjectiveC()();

          v37 = [v36 lastPathComponent];

          v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v116 = v39;
          v117 = v38;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v120 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v35;
          v118 = inited + 32;
          v41 = sub_100006370(0, &qword_1019F4D30);
          *(inited + 96) = v41;
          v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
          *(inited + 104) = v42;
          v43 = v119;
          *(inited + 72) = v119;
          *(inited + 136) = &type metadata for String;
          v44 = sub_1000053B0();
          v45 = v116;
          *(inited + 112) = v117;
          *(inited + 120) = v45;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v44;
          *(inited + 152) = 1679;
          v46 = v137;
          *(inited + 216) = v41;
          *(inited + 224) = v42;
          *(inited + 192) = v46;
          v47 = v43;
          v48 = v46;
          v49 = static os_log_type_t.error.getter();
          v50 = v120;
          sub_100005404(v120, &_mh_execute_header, v49, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670);
          swift_arrayDestroy();
          v51 = static os_log_type_t.error.getter();
          sub_100005404(v50, &_mh_execute_header, v51, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v52 = swift_allocObject();
          v52[2] = 8;
          v52[3] = 0;
          v52[4] = 0;
          v52[5] = 0;
          v120 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v53 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v54 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v55 = String._bridgeToObjectiveC()();

          [v121 handleFailureInFunction:v53 file:v54 lineNumber:1679 isFatal:0 format:v55 args:v120];

          v31 = v122;
        }

        sub_10003DFF8(v18, v21, &unk_101A15B20);
        if (v31(v21, 1, v22) == 1)
        {
          sub_10000CAAC(v21, &unk_101A15B20);
        }

        else
        {
          sub_100065D50(v21, v136, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v78 = sub_10005AFE0();
          v79 = v128;
          sub_100F87E04(v128);
          v80 = v135;
          dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

          (v129)[1](v79, v130);
          v81 = v134;
          v82 = v133[6];
          if (v82(v80, 1, v134) == 1)
          {
            v130 = v82;
            v129 = objc_opt_self();
            v83 = [v129 _atomicIncrementAssertCount];
            v137 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v137);
            StaticString.description.getter();
            v128 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v84 = String._bridgeToObjectiveC()();

            v85 = [v84 lastPathComponent];

            v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v87 = v86;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v88 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v89 = swift_initStackObject();
            *(v89 + 16) = xmmword_10146CA70;
            *(v89 + 56) = &type metadata for Int32;
            *(v89 + 64) = &protocol witness table for Int32;
            *(v89 + 32) = v83;
            v90 = sub_100006370(0, &qword_1019F4D30);
            *(v89 + 96) = v90;
            v91 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
            *(v89 + 104) = v91;
            v92 = v128;
            *(v89 + 72) = v128;
            *(v89 + 136) = &type metadata for String;
            v93 = sub_1000053B0();
            *(v89 + 112) = v123;
            *(v89 + 120) = v87;
            *(v89 + 176) = &type metadata for UInt;
            *(v89 + 184) = &protocol witness table for UInt;
            *(v89 + 144) = v93;
            *(v89 + 152) = 1680;
            v94 = v137;
            *(v89 + 216) = v90;
            *(v89 + 224) = v91;
            *(v89 + 192) = v94;
            v95 = v92;
            v96 = v94;
            v97 = static os_log_type_t.error.getter();
            sub_100005404(v88, &_mh_execute_header, v97, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v89);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v98 = static os_log_type_t.error.getter();
            sub_100005404(v88, &_mh_execute_header, v98, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v99 = swift_allocObject();
            v99[2] = 8;
            v99[3] = 0;
            v99[4] = 0;
            v99[5] = 0;
            v100 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v101 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v102 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v103 = String._bridgeToObjectiveC()();

            [v129 handleFailureInFunction:v101 file:v102 lineNumber:1680 isFatal:0 format:v103 args:v100];

            v81 = v134;
            v82 = v130;
          }

          v104 = v131;
          sub_10003DFF8(v135, v131, &unk_101A23C40);
          if (v82(v104, 1, v81) == 1)
          {
            sub_10000BBC4(v136, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000CAAC(v104, &unk_101A23C40);
          }

          else
          {
            v105 = v133;
            v135 = v133[4];
            v106 = v126;
            (v135)(v126, v104, v81);
            v107 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v141 = sub_100F77F30;
            v142 = v107;
            v137 = _NSConcreteStackBlock;
            v138 = *"";
            v134 = &v139;
            v139 = sub_100007638;
            v140 = &unk_1018A9938;
            v108 = _Block_copy(&v137);

            [v132 addAnimations:v108];
            _Block_release(v108);
            v109 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v110 = v125;
            (v105[2])(v125, v106, v81);
            v111 = (*(v105 + 80) + 32) & ~*(v105 + 80);
            v112 = swift_allocObject();
            v113 = v127;
            *(v112 + 16) = v109;
            *(v112 + 24) = v113;
            (v135)(v112 + v111, v110, v81);
            v141 = sub_100F77F38;
            v142 = v112;
            v137 = _NSConcreteStackBlock;
            v138 = *"";
            v139 = sub_100007638;
            v140 = &unk_1018A9988;
            v114 = _Block_copy(&v137);
            v115 = v113;

            [v132 addCompletion:v114];
            _Block_release(v114);
            (v105[1])(v106, v81);
            sub_10000BBC4(v136, type metadata accessor for CRLBoardLibraryViewModel.Item);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v136 = objc_opt_self();
      v56 = [v136 _atomicIncrementAssertCount];
      v143 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v143);
      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      v59 = [v58 lastPathComponent];

      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v63 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v64 = swift_initStackObject();
      *(v64 + 16) = xmmword_10146CA70;
      *(v64 + 56) = &type metadata for Int32;
      *(v64 + 64) = &protocol witness table for Int32;
      *(v64 + 32) = v56;
      v65 = sub_100006370(0, &qword_1019F4D30);
      *(v64 + 96) = v65;
      v66 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v64 + 104) = v66;
      *(v64 + 72) = v57;
      *(v64 + 136) = &type metadata for String;
      v67 = sub_1000053B0();
      *(v64 + 112) = v60;
      *(v64 + 120) = v62;
      *(v64 + 176) = &type metadata for UInt;
      *(v64 + 184) = &protocol witness table for UInt;
      *(v64 + 144) = v67;
      *(v64 + 152) = 1677;
      v68 = v143;
      *(v64 + 216) = v65;
      *(v64 + 224) = v66;
      *(v64 + 192) = v68;
      v69 = v57;
      v70 = v68;
      v71 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v71, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v64);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v72 = static os_log_type_t.error.getter();
      sub_100005404(v63, &_mh_execute_header, v72, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v73 = swift_allocObject();
      v73[2] = 8;
      v73[3] = 0;
      v73[4] = 0;
      v73[5] = 0;
      v74 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v75 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v76 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v77 = String._bridgeToObjectiveC()();

      [v136 handleFailureInFunction:v75 file:v76 lineNumber:1677 isFatal:0 format:v77 args:v74];
    }
  }
}

void sub_100F46774()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setEditing:0 animated:1];
  }
}

void sub_100F467D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v4 collectionView:a2 didSelectItemAtIndexPath:isa];
  }
}

void sub_100F46A04(double a1)
{
  v2 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight;
  v3 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight];
  *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight] = a1;
  if (v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] != 1 || v3 == a1)
  {
    return;
  }

  v5 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint];
  if (!v5)
  {
    return;
  }

  v6 = -a1;
  v7 = v5;
  [v7 setConstant:v6];

  v8 = String.count.getter();

  if (v8 > 0 || *&v1[v2] == 0.0)
  {
    v9 = [v1 view];
    if (!v9)
    {
LABEL_16:
      __break(1u);
      return;
    }

    v10 = v9;
    [v9 setNeedsUpdateConstraints];
  }

  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = v11;
  [v11 setNeedsLayout];
}

void sub_100F46C70()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 delegate];

        if (v5)
        {
          type metadata accessor for CRLiOSSceneDelegate();
          if (swift_dynamicCastClass())
          {
            sub_100C29FB8();
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100F46D70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000CAAC(v9, &unk_1019F4D00);
}

uint64_t sub_100F46DFC(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 112) = a1;
  sub_1005B981C(&qword_1019FB750);
  *(v3 + 32) = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  *(v3 + 40) = swift_task_alloc();
  sub_1005B981C(&unk_101A15B20);
  *(v3 + 48) = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  *(v3 + 56) = v4;
  v5 = *(v4 - 8);
  *(v3 + 64) = v5;
  *(v3 + 72) = *(v5 + 64);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = type metadata accessor for MainActor();
  *(v3 + 104) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100F46FA8, v7, v6);
}

uint64_t sub_100F46FA8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  sub_10000BE14(v4, v3, &unk_101A15B20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10000CAAC(*(v0 + 48), &unk_101A15B20);
    goto LABEL_31;
  }

  v5 = *(v0 + 112);
  sub_100065D50(*(v0 + 48), *(v0 + 88), type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (v5 <= 4)
  {
    if (v5 <= 1)
    {
      v10 = *(v0 + 88);
      if (v5)
      {
        sub_100F47B5C(*(v0 + 88));
      }

      else
      {
        sub_100F4774C(*(v0 + 88));
      }

      goto LABEL_29;
    }

    if (v5 == 2)
    {
      v10 = *(v0 + 88);
      v24 = *(v0 + 80);
      v25 = *(v0 + 64);
      v26 = *(v0 + 24);
      v13 = *(v0 + 32);
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
      sub_1000652DC(v10, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v28 = v26;
      v29 = static MainActor.shared.getter();
      v30 = (*(v25 + 80) + 40) & ~*(v25 + 80);
      v19 = swift_allocObject();
      v19[2] = v29;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v28;
      sub_100065D50(v24, v19 + v30, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v20 = &unk_1014B99E8;
    }

    else
    {
      if (v5 != 3)
      {
        v6 = *(v0 + 88);
        v40 = *(v0 + 64);
        sub_1005B981C(&qword_101A23C10);
        v8 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10146C6B0;
        sub_1000652DC(v6, v9 + v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100F37CBC(v9);
        goto LABEL_24;
      }

      v10 = *(v0 + 88);
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v14 = *(v0 + 24);
      v13 = *(v0 + 32);
      v15 = type metadata accessor for TaskPriority();
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
      sub_1000652DC(v10, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v16 = v14;
      v17 = static MainActor.shared.getter();
      v18 = (*(v12 + 80) + 40) & ~*(v12 + 80);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v16;
      sub_100065D50(v11, v19 + v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v20 = &unk_1014B99E0;
    }

    sub_10064191C(0, 0, v13, v20, v19);

LABEL_29:
    v41 = v10;
    goto LABEL_30;
  }

  if (v5 <= 7)
  {
    if ((v5 - 5) >= 2)
    {
      v31 = *(v0 + 88);
      v32 = *(v0 + 64);
      v33 = *(v0 + 40);
      v34 = *(v0 + 24);
      sub_1005B981C(&qword_101A23C10);
      v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_10146C6B0;
      sub_1000652DC(v31, v36 + v35, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v37 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
      v38 = sub_1005B981C(&qword_1019F3480);
      (*(*(v38 - 8) + 56))(v33, 5, 5, v38);
      LOBYTE(v37) = sub_100068604(v34 + v37, v33);
      sub_10000BBC4(v33, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      if (v37)
      {
        sub_100F549A8(v36);
      }

      else
      {
        sub_100F558C0(v36, 0, 0);
      }

      v47 = *(v0 + 88);

      v41 = v47;
      goto LABEL_30;
    }

    v6 = *(v0 + 88);
    v7 = *(v0 + 64);
    sub_1005B981C(&qword_101A23C10);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146C6B0;
    sub_1000652DC(v6, v9 + v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100F37F34(v9);
    goto LABEL_24;
  }

  if (v5 == 8)
  {
    v6 = *(v0 + 88);
    v39 = *(v0 + 64);
    sub_1005B981C(&qword_101A23C10);
    v8 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146C6B0;
    sub_1000652DC(v6, v9 + v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100F3DE90(v9);
LABEL_24:
    swift_setDeallocating();
    sub_10000BBC4(v9 + v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_deallocClassInstance();
    v41 = v6;
LABEL_30:
    sub_10000BBC4(v41, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_31;
  }

  if (v5 == 9)
  {
    v21 = sub_100F4897C(*(v0 + 88));
    if (v21)
    {
      v22 = v21;
      v23 = [*(v21 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight) hideContextMenu];
      v10 = *(v0 + 88);
      if (v23)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

LABEL_34:
    v41 = *(v0 + 88);
    goto LABEL_30;
  }

  v42 = sub_100F4897C(*(v0 + 88));
  if (!v42)
  {
    goto LABEL_34;
  }

  v22 = v42;
  v23 = [*(v42 + OBJC_IVAR____TtC8Freeform18CRLSharedHighlight_swHighlight) replyContextMenuWithPresentingViewController:*(v0 + 24)];
  v10 = *(v0 + 88);
  if (v23)
  {
LABEL_28:
    v43 = v23;
    v44 = [v23 actionBlock];
    v44[2]();

    _Block_release(v44);
    goto LABEL_29;
  }

LABEL_37:
  sub_10000BBC4(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);

LABEL_31:

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_100F4774C(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100F88220();
  v9 = v8;
  sub_1000652DC(a1, v6, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v10 = *(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  sub_100065D50(v6, v11 + ((v10 + 24) & ~v10), type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = v1;
  v13 = sub_10068B6BC(v7, v9, sub_100F782D8, v11);

  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v32 = sub_1006301CC;
  v33 = v14;
  v29 = *"";
  v27[1] = &v30;
  aBlock = _NSConcreteStackBlock;
  v30 = sub_100007638;
  v31 = &unk_1018A9C58;
  v15 = _Block_copy(&aBlock);
  v16 = v13;

  [v12 presentViewController:v16 animated:1 completion:v15];
  _Block_release(v15);
  v17 = [objc_opt_self() defaultCenter];
  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v27[0] = qword_101AD8568;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000652DC(a1, v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
  v19 = (v10 + 16) & ~v10;
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_100065D50(v6, v21 + v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
  *(v21 + v20) = v18;
  *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v32 = sub_100F7835C;
  v33 = v21;
  aBlock = _NSConcreteStackBlock;
  v29 = *"";
  v30 = sub_100059694;
  v31 = &unk_1018A9CA8;
  v22 = _Block_copy(&aBlock);
  v23 = v16;

  v24 = [v17 addObserverForName:v27[0] object:0 queue:0 usingBlock:v22];
  _Block_release(v22);

  v25 = *&v12[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver];
  *&v12[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_renameDeleteObserver] = v24;
  swift_unknownObjectRetain();
  sub_100F36EC8(v25);

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void sub_100F47B5C(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v7 - 8);
  v9 = &v88 - v8;
  v10 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  type metadata accessor for CRLBoardLibrary();
  v11 = swift_dynamicCastClass();
  if (v11 && *(v11 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_isNetworkReachable) == 1)
  {
    v12 = v1;
    v13 = objc_opt_self();
    swift_unknownObjectRetain();
    v14 = [v13 sharedApplication];
    v15 = [v14 delegate];

    if (!v15)
    {
      __break(1u);
      return;
    }

    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRelease();
    v16 = sub_10000A05C();

    if (v16 <= 1u)
    {
      if (v16)
      {
        v17 = type metadata accessor for TaskPriority();
        (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
        sub_1000652DC(a1, &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
        type metadata accessor for MainActor();
        v18 = v12;
        v19 = static MainActor.shared.getter();
        v20 = (*(v4 + 80) + 40) & ~*(v4 + 80);
        v21 = swift_allocObject();
        v21[2] = v19;
        v21[3] = &protocol witness table for MainActor;
        v21[4] = v18;
        sub_100065D50(v6, v21 + v20, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10064191C(0, 0, v9, &unk_1014B9980, v21);
        swift_unknownObjectRelease();

        return;
      }

      goto LABEL_15;
    }

    if (v16 != 2)
    {
LABEL_15:
      v89 = v12;
      v40 = objc_opt_self();
      v41 = [v40 mainBundle];
      v42 = String._bridgeToObjectiveC()();
      v43 = String._bridgeToObjectiveC()();
      v44 = [v41 localizedStringForKey:v42 value:v43 table:{0, v10}];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100F7B160();
      v45 = [v40 mainBundle];
      v46 = String._bridgeToObjectiveC()();
      v47 = String._bridgeToObjectiveC()();
      v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = String._bridgeToObjectiveC()();

      v50 = String._bridgeToObjectiveC()();

      v51 = [objc_opt_self() alertControllerWithTitle:v49 message:v50 preferredStyle:1];

      v52 = String._bridgeToObjectiveC()();

      v94 = sub_1005EB41C;
      v95 = 0;
      aBlock = _NSConcreteStackBlock;
      v91 = *"";
      v92 = sub_10068B39C;
      v93 = &unk_1018A9DC0;
      v53 = _Block_copy(&aBlock);

      v54 = objc_opt_self();
      v55 = [v54 actionWithTitle:v52 style:0 handler:v53];
      _Block_release(v53);

      v56 = [v40 mainBundle];
      v57 = String._bridgeToObjectiveC()();
      v58 = String._bridgeToObjectiveC()();
      v59 = [v56 localizedStringForKey:v57 value:v58 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v60 = String._bridgeToObjectiveC()();

      v61 = [v54 actionWithTitle:v60 style:1 handler:0];

      [v51 addAction:v55];
      [v51 addAction:v61];
      [v89 presentViewController:v51 animated:1 completion:0];

LABEL_16:
      swift_unknownObjectRelease();
      return;
    }

    v89 = v12;
    if (![objc_opt_self() loggedInUserHasManagedAppleID])
    {
      v62 = objc_opt_self();
      v63 = [v62 mainBundle];
      v64 = String._bridgeToObjectiveC()();
      v65 = String._bridgeToObjectiveC()();
      v66 = [v63 localizedStringForKey:v64 value:v65 table:0];

      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = [v62 mainBundle];
      v68 = String._bridgeToObjectiveC()();
      v69 = String._bridgeToObjectiveC()();
      v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v71 = [v62 mainBundle];
      v72 = String._bridgeToObjectiveC()();
      v73 = String._bridgeToObjectiveC()();
      v74 = [v71 localizedStringForKey:v72 value:v73 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = String._bridgeToObjectiveC()();

      v76 = String._bridgeToObjectiveC()();

      v77 = [objc_opt_self() alertControllerWithTitle:v75 message:v76 preferredStyle:1];

      v78 = String._bridgeToObjectiveC()();

      v94 = sub_1005EB41C;
      v95 = 0;
      aBlock = _NSConcreteStackBlock;
      v91 = *"";
      v92 = sub_10068B39C;
      v93 = &unk_1018A9DE8;
      v79 = _Block_copy(&aBlock);

      v80 = objc_opt_self();
      v81 = [v80 actionWithTitle:v78 style:0 handler:v79];
      _Block_release(v79);

      v82 = [v62 mainBundle];
      v83 = String._bridgeToObjectiveC()();
      v84 = String._bridgeToObjectiveC()();
      v85 = [v82 localizedStringForKey:v83 value:v84 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = String._bridgeToObjectiveC()();

      v87 = [v80 actionWithTitle:v86 style:1 handler:0];

      [v77 addAction:v81];
      [v77 addAction:v87];
      [v89 presentViewController:v77 animated:1 completion:0];

      goto LABEL_16;
    }

    v22 = objc_opt_self();
    v23 = [v22 mainBundle];
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = [v22 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = [v22 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() actionWithTitle:v35 style:0 handler:0];

    v37 = String._bridgeToObjectiveC()();

    v38 = String._bridgeToObjectiveC()();

    v39 = [objc_opt_self() alertControllerWithTitle:v37 message:v38 preferredStyle:1];

    [v39 addAction:v36];
    [v89 presentViewController:v39 animated:1 completion:0];

    swift_unknownObjectRelease();
  }

  else
  {

    sub_1005E5B5C();
  }
}

uint64_t sub_100F4897C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s5BoardVMa(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for CRLBoardLibrary();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    sub_1000652DC(a1, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v10 = sub_100065D50(v4, v7, _s5BoardVMa);
      v11 = *(*(v9 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_sharedHighlightController) + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights);
      __chkstk_darwin(v10);
      *&v13[-16] = v7;
      swift_unknownObjectRetain();

      v12 = sub_101107CA8(sub_100F794EC, &v13[-32], v11);
      swift_unknownObjectRelease();

      sub_10000BBC4(v7, _s5BoardVMa);
      return v12;
    }

    else
    {
      sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
      return 0;
    }
  }

  return result;
}

char *sub_100F48B98(uint64_t a1, void *a2)
{
  v74 = a2;
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v70[-v11];
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v15 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = _s5BoardVMa(0);
  __chkstk_darwin(v16);
  v18 = &v70[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = v2;
  v76 = sub_100F495D4();
  sub_1000652DC(a1, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v72 = v6;
    sub_100065D50(v15, v18, _s5BoardVMa);
    v19 = v18[v16[18]] ^ 1;
    v20 = v16[20];
    sub_10000BE14(&v18[v20], v12, &qword_1019F33D0);
    v21 = _s5BoardV13ShareMetadataVMa(0);
    v22 = *(*(v21 - 8) + 48);
    if (v22(v12, 1, v21) == 1)
    {
      sub_10000CAAC(v12, &qword_1019F33D0);
      v73 = 0;
    }

    else
    {
      v26 = *v12;
      sub_10000BBC4(v12, _s5BoardV13ShareMetadataVMa);
      v73 = v26 ^ 1;
    }

    LODWORD(v75) = v18[v16[14]];
    sub_10000BE14(&v18[v20], v9, &qword_1019F33D0);
    v23 = (v22)(v9, 1, v21) != 1;
    sub_10000CAAC(v9, &qword_1019F33D0);
    HIDWORD(v75) = v18[v16[19] + 8] ^ 1;
    v24 = v18[v16[15]];
    sub_10000BBC4(v18, _s5BoardVMa);
    v6 = v72;
    v25 = v19;
  }

  else
  {
    sub_10000BBC4(v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v23 = 0;
    v75 = 0;
    v24 = 0;
    v25 = 1;
    v73 = 1;
  }

  v27 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v28 = sub_1005B981C(&qword_1019F3480);
  v29 = *(*(v28 - 8) + 56);
  v29(v6, 5, 5, v28);
  v30 = v77;
  v31 = sub_100068604(v77 + v27, v6);
  sub_10000BBC4(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v31)
  {
    v32 = sub_100B3808C(0, 1, 1, _swiftEmptyArrayStorage);
    v34 = *(v32 + 2);
    v33 = *(v32 + 3);
    v35 = v34 + 1;
    if (v34 >= v33 >> 1)
    {
      v32 = sub_100B3808C((v33 > 1), v34 + 1, 1, v32);
    }

    v36 = 8;
LABEL_11:
    *(v32 + 2) = v35;
    v32[v34 + 32] = v36;
    goto LABEL_68;
  }

  LODWORD(v72) = v23;
  if (v76)
  {
    v32 = _swiftEmptyArrayStorage;
  }

  else
  {
    v71 = v24;
    if (v74)
    {
      v37 = v74;
      v38 = v24;
      v39 = v37;
      if (v38 && (v40 = sub_100F444A4(v37)) != 0)
      {
        v41 = v6;

        v32 = sub_100B3808C(0, 1, 1, _swiftEmptyArrayStorage);
        v43 = *(v32 + 2);
        v42 = *(v32 + 3);
        if (v43 >= v42 >> 1)
        {
          v32 = sub_100B3808C((v42 > 1), v43 + 1, 1, v32);
        }

        *(v32 + 2) = v43 + 1;
        v32[v43 + 32] = 9;
        v6 = v41;
        v30 = v77;
      }

      else
      {
        v32 = _swiftEmptyArrayStorage;
      }

      v44 = sub_100F449C4(v39);
      if (v44)
      {

        v45 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
        }

        v47 = *(v32 + 2);
        v46 = *(v32 + 3);
        if (v47 >= v46 >> 1)
        {
          v32 = sub_100B3808C((v46 > 1), v47 + 1, 1, v32);
        }

        *(v32 + 2) = v47 + 1;
        v32[v47 + 32] = 10;
        v6 = v45;
        v30 = v77;
      }

      else
      {
      }

      LOBYTE(v24) = v71;
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    if (!(v73 & 1 | ((v25 & 1) == 0)))
    {
      v48 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v50 = *(v32 + 2);
      v49 = *(v32 + 3);
      if (v50 >= v49 >> 1)
      {
        v32 = sub_100B3808C((v49 > 1), v50 + 1, 1, v32);
      }

      *(v32 + 2) = v50 + 1;
      v32[v50 + 32] = 0;
      v6 = v48;
      LOBYTE(v24) = v71;
    }
  }

  if ((v24 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (v75)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v53 = *(v32 + 2);
      v52 = *(v32 + 3);
      v54 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v32 = sub_100B3808C((v52 > 1), v53 + 1, 1, v32);
      }

      v55 = 6;
    }

    else
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v53 = *(v32 + 2);
      v56 = *(v32 + 3);
      v54 = v53 + 1;
      if (v53 >= v56 >> 1)
      {
        v32 = sub_100B3808C((v56 > 1), v53 + 1, 1, v32);
      }

      v55 = 5;
    }

    *(v32 + 2) = v54;
    v32[v53 + 32] = v55;
  }

  v29(v6, 3, 5, v28);
  v57 = sub_100068604(v30 + v27, v6);
  sub_10000BBC4(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v57 || (v29(v6, 4, 5, v28), v58 = sub_100068604(v30 + v27, v6), sub_10000BBC4(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter), v58))
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v29(v6, 5, 5, v28);
    v63 = sub_100068604(v30 + v27, v6);
    sub_10000BBC4(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if ((v25 & 1) == 0)
    {
      goto LABEL_68;
    }

    if (((v63 | HIDWORD(v75)) & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v65 = *(v32 + 2);
      v64 = *(v32 + 3);
      if (v65 >= v64 >> 1)
      {
        v32 = sub_100B3808C((v64 > 1), v65 + 1, 1, v32);
      }

      *(v32 + 2) = v65 + 1;
      v32[v65 + 32] = 4;
    }
  }

  if (((v76 | HIDWORD(v75)) & 1) == 0)
  {
    v59 = swift_isUniquelyReferenced_nonNull_native();
    if (v72)
    {
      if ((v59 & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v61 = *(v32 + 2);
      v60 = *(v32 + 3);
      v62 = v60 >> 1;
      v34 = v61 + 1;
      if (v60 >> 1 <= v61)
      {
        v32 = sub_100B3808C((v60 > 1), v61 + 1, 1, v32);
        v60 = *(v32 + 3);
        v62 = v60 >> 1;
      }

      *(v32 + 2) = v34;
      v32[v61 + 32] = 3;
      v35 = v61 + 2;
      if (v62 < v35)
      {
        v32 = sub_100B3808C((v60 > 1), v35, 1, v32);
      }

      v36 = 2;
    }

    else
    {
      if ((v59 & 1) == 0)
      {
        v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v69 = *(v32 + 3);
      v35 = v34 + 1;
      v36 = 1;
      if (v34 >= v69 >> 1)
      {
        v32 = sub_100B3808C((v69 > 1), v34 + 1, 1, v32);
      }
    }

    goto LABEL_11;
  }

LABEL_68:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_100B3808C(0, *(v32 + 2) + 1, 1, v32);
  }

  v67 = *(v32 + 2);
  v66 = *(v32 + 3);
  if (v67 >= v66 >> 1)
  {
    v32 = sub_100B3808C((v66 > 1), v67 + 1, 1, v32);
  }

  *(v32 + 2) = v67 + 1;
  v32[v67 + 32] = 7;
  return v32;
}

id sub_100F495D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = &v50 - v9;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v56 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v0;
  v13 = sub_10005AFE0();
  sub_100F87E04(v4);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v2 + 8))(v4, v1);
  v14 = *(v11 + 48);
  if (v14(v7, 1, v10) == 1)
  {
    v53 = v14;
    v54 = v11;
    v55 = v10;
    v52 = objc_opt_self();
    v15 = [v52 _atomicIncrementAssertCount];
    v59 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v59);
    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v16 = String._bridgeToObjectiveC()();

    v17 = [v16 lastPathComponent];

    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v21 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v15;
    v23 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v23;
    v24 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v24;
    v25 = v51;
    *(inited + 72) = v51;
    *(inited + 136) = &type metadata for String;
    v26 = sub_1000053B0();
    *(inited + 112) = v18;
    *(inited + 120) = v20;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v26;
    *(inited + 152) = 2988;
    v27 = v59;
    *(inited + 216) = v23;
    *(inited + 224) = v24;
    *(inited + 192) = v27;
    v28 = v25;
    v29 = v27;
    v30 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v30, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v31 = static os_log_type_t.error.getter();
    sub_100005404(v21, &_mh_execute_header, v31, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v32 = swift_allocObject();
    v32[2] = 8;
    v32[3] = 0;
    v32[4] = 0;
    v32[5] = 0;
    v33 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v35 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    [v52 handleFailureInFunction:v34 file:v35 lineNumber:2988 isFatal:0 format:v36 args:v33];

    v10 = v55;
    v11 = v54;
    v14 = v53;
  }

  v37 = v58;
  sub_10003DFF8(v7, v58, &unk_101A23C40);
  if (v14(v37, 1, v10) == 1)
  {
    sub_10000CAAC(v37, &unk_101A23C40);
    return 0;
  }

  v39 = v56;
  (*(v11 + 32))(v56, v37, v10);
  v40 = v57;
  result = [v57 collectionView];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v41 = result;
  v42 = [result indexPathsForSelectedItems];

  if (v42)
  {
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = *(v43 + 16);

    v45 = v44 > 1;
  }

  else
  {
    v45 = 0;
  }

  result = [v40 collectionView];
  if (!result)
  {
    goto LABEL_17;
  }

  v46 = result;
  v47 = [result indexPathsForSelectedItems];

  if (v47)
  {
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = sub_1012CD684(v39, v48);
  }

  else
  {
    v49 = 0;
  }

  (*(v11 + 8))(v39, v10);
  return (v45 & v49);
}

uint64_t sub_100F49D50(uint64_t a1)
{
  v1[15] = type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v1[17] = v3;
  *v3 = v1;
  v3[1] = sub_100F49E0C;

  return sub_100F4A0CC(a1);
}

uint64_t sub_100F49E0C()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100F49F68;
  }

  else
  {
    v4 = sub_100D0FF70;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100F49F68()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Error showing share sheet: %@", 29, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100F4A0CC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_100F4A168, v4, v3);
}

id sub_100F4A168()
{
  v1 = sub_100F4E3E0();
  v0[8] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = sub_100F4EA50(v0[2]);
    v0[9] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = v0[3];
      v6 = [v2 contentView];
      [v6 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [v5 collectionView];
      [v2 convertRect:v15 toView:{v8, v10, v12, v14}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      result = [v5 collectionView];
      if (result)
      {
        v25 = result;
        v26 = v0[3];
        v27 = [v26 view];
        [v25 convertRect:v27 toView:{v17, v19, v21, v23}];
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v35 = v34;

        v0[10] = v29;
        v0[11] = v31;
        v0[12] = v33;
        v0[13] = v35;
        result = [v26 view];
        v0[14] = result;
        if (result)
        {
          v0[15] = static MainActor.shared.getter();
          v36 = swift_task_alloc();
          v0[16] = v36;
          *v36 = v0;
          v36[1] = sub_100F4A3DC;

          return sub_1009936A8(v4);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v37 = v0[1];

  return v37();
}

uint64_t sub_100F4A3DC(uint64_t a1)
{
  v3 = *v2;
  v3[17] = a1;
  v3[18] = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v5;
  v3[20] = v4;
  if (v1)
  {
    v6 = sub_100F4A718;
  }

  else
  {
    v6 = sub_100F4A540;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100F4A540()
{
  if ([objc_opt_self() crl_padUI])
  {
    v1 = *(v0 + 136);
    [v1 setModalPresentationStyle:7];
    v2 = [v1 popoverPresentationController];
    if (v2)
    {
      v3 = v2;
      [v2 setSourceView:*(v0 + 112)];
    }

    v4 = *(v0 + 136);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    v9 = [v4 popoverPresentationController];

    [v9 setSourceRect:{v8, v7, v6, v5}];
  }

  v10 = *(v0 + 136);
  v11 = *(v0 + 24);
  v12 = static MainActor.shared.getter();
  *(v0 + 168) = v12;
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_100F4A7F8;

  return withCheckedContinuation<A>(isolation:function:_:)(v14, v12, &protocol witness table for MainActor, 0xD000000000000067, 0x800000010157D890, sub_100F7889C, v13, &type metadata for () + 8);
}

uint64_t sub_100F4A718()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_100F4A784, v1, v2);
}

uint64_t sub_100F4A784()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F4A7F8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100F4A958, v3, v2);
}

uint64_t sub_100F4A958()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  return _swift_task_switch(sub_100F4A9CC, v2, v3);
}

uint64_t sub_100F4A9CC()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100F4AA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v5[31] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v5[32] = swift_task_alloc();
  _s5BoardVMa(0);
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v7;
  v5[37] = v6;

  return _swift_task_switch(sub_100F4AB38, v7, v6);
}

uint64_t sub_100F4AB38()
{
  v0[38] = *(v0[29] + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
  type metadata accessor for CRLBoardLibrary();
  v1 = swift_dynamicCastClass();
  v0[39] = v1;
  if (v1)
  {
    sub_1000652DC(v0[30], v0[32], type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100065D50(v0[32], v0[33], _s5BoardVMa);
      swift_unknownObjectRetain();
      v0[40] = static MainActor.shared.getter();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v0[41] = v3;
      v0[42] = v2;

      return _swift_task_switch(sub_100F4ACD0, v3, v2);
    }

    v4 = v0[32];

    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100F4ACD0()
{
  v1 = v0[33];
  v2 = (v1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  if (*v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2[1] == 0xE000000000000000;
  }

  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v4 = swift_task_alloc();
    v0[43] = v4;
    *v4 = v0;
    v4[1] = sub_100F4AE18;
    v5 = v0[33];

    return sub_1010AB348(v5);
  }

  else
  {

    v7 = swift_task_alloc();
    v0[44] = v7;
    *v7 = v0;
    v7[1] = sub_100F4B474;
    v8 = v0[30];

    return sub_100F4B7E8(v8);
  }
}

uint64_t sub_100F4AE18(char a1)
{
  v2 = *v1;
  *(*v1 + 368) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_100F4AF40, v4, v3);
}

uint64_t sub_100F4AF40()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_100F4AFA4, v1, v2);
}

uint64_t sub_100F4AFA4()
{
  if (*(v0 + 368) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 352) = v1;
    *v1 = v0;
    v1[1] = sub_100F4B474;
    v2 = *(v0 + 240);

    return sub_100F4B7E8(v2);
  }

  else
  {

    v4 = objc_opt_self();
    v5 = [v4 mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = [v4 mainBundle];
    v13 = String._bridgeToObjectiveC()();
    v14 = String._bridgeToObjectiveC()();
    v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v35 = v11;
    v19 = String._bridgeToObjectiveC()();
    v34 = v16;
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

    v22 = [v4 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();

    v27 = [objc_opt_self() actionWithTitle:v26 style:0 handler:0];

    [v21 addAction:v27];
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 232);
    v29 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    v31 = sub_1000053B0();
    *(inited + 32) = v9;
    *(inited + 40) = v35;
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v31;
    *(inited + 64) = v31;
    *(inited + 72) = v34;
    *(inited + 80) = v18;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v32, "Presenting alert: %@ %@", 23, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    [v28 presentViewController:v21 animated:1 completion:0];
    swift_unknownObjectRelease();

    sub_10000BBC4(*(v0 + 264), _s5BoardVMa);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_100F4B474()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 296);
  v4 = *(v2 + 288);
  if (v0)
  {
    v5 = sub_100F4B648;
  }

  else
  {
    v5 = sub_100F4B5B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100F4B5B0()
{

  swift_unknownObjectRelease();
  sub_10000BBC4(*(v0 + 264), _s5BoardVMa);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100F4B648()
{
  v1 = *(v0 + 264);

  swift_unknownObjectRelease();
  sub_10000BBC4(v1, _s5BoardVMa);
  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v4 = Error.localizedDescription.getter();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.error.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error showing share sheet: %@", 29, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100F4B7E8(uint64_t a1)
{
  v2[104] = v1;
  v2[103] = a1;
  v3 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2[105] = v3;
  v2[106] = *(v3 + 64);
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v2[109] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[110] = swift_task_alloc();
  v2[111] = _s5BoardVMa(0);
  v2[112] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[113] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[114] = v5;
  v2[115] = v4;

  return _swift_task_switch(sub_100F4B954, v5, v4);
}

uint64_t sub_100F4B954()
{
  v65 = v0;
  v0[116] = *(v0[104] + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
  type metadata accessor for CRLBoardLibrary();
  v1 = swift_dynamicCastClass();
  v0[117] = v1;
  if (v1)
  {
    sub_1000652DC(v0[103], v0[110], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v3 = v0[110];
    if (EnumCaseMultiPayload == 2)
    {
      v4 = v0[104];
      sub_100065D50(v0[110], v0[112], _s5BoardVMa);
      v5 = v4 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_thumbnailProvider;
      Strong = swift_unknownObjectWeakLoadStrong();
      v0[118] = Strong;
      v0[119] = *(v5 + 8);
      if (Strong)
      {
        v7 = v0[112];
        v8 = v0[111];
        sub_1000652DC(v7, v0[108], type metadata accessor for CRLBoardIdentifier);
        v9 = (v7 + *(v8 + 24));
        v0[120] = *v9;
        v0[121] = v9[1];
        swift_unknownObjectRetain();
        v10 = swift_task_alloc();
        v0[122] = v10;
        *v10 = v0;
        v10[1] = sub_100F4C300;
        v11 = v0[108];

        return sub_1010A91B4(v11, 0);
      }

      v37 = objc_opt_self();
      swift_unknownObjectRetain();
      v63 = v37;
      v38 = [v37 _atomicIncrementAssertCount];
      v64 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v64);
      StaticString.description.getter();
      v60 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v39 = String._bridgeToObjectiveC()();

      v40 = [v39 lastPathComponent];

      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v61 = v0[112];
      v44 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v38;
      v46 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v46;
      v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v47;
      *(inited + 72) = v60;
      *(inited + 136) = &type metadata for String;
      v48 = sub_1000053B0();
      *(inited + 112) = v41;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v48;
      *(inited + 152) = 2051;
      v49 = v64;
      *(inited + 216) = v46;
      *(inited + 224) = v47;
      *(inited + 192) = v49;
      v50 = v60;
      v51 = v49;
      v52 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v44, &_mh_execute_header, v53, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v54 = swift_allocObject();
      v54[2] = 8;
      v54[3] = 0;
      v54[4] = 0;
      v54[5] = 0;
      v55 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v58 = String._bridgeToObjectiveC()();

      [v63 handleFailureInFunction:v56 file:v57 lineNumber:2051 isFatal:0 format:v58 args:v55];

      swift_unknownObjectRelease();
      v35 = _s5BoardVMa;
      v36 = v61;
    }

    else
    {

      v35 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v36 = v3;
    }

    sub_10000BBC4(v36, v35);
  }

  else
  {
    v62 = objc_opt_self();
    v13 = [v62 _atomicIncrementAssertCount];
    v64 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v64);
    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v15 lastPathComponent];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v20 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v21 = swift_initStackObject();
    *(v21 + 16) = xmmword_10146CA70;
    *(v21 + 56) = &type metadata for Int32;
    *(v21 + 64) = &protocol witness table for Int32;
    *(v21 + 32) = v13;
    v22 = sub_100006370(0, &qword_1019F4D30);
    *(v21 + 96) = v22;
    v23 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v21 + 104) = v23;
    *(v21 + 72) = v14;
    *(v21 + 136) = &type metadata for String;
    v24 = sub_1000053B0();
    *(v21 + 112) = v17;
    *(v21 + 120) = v19;
    *(v21 + 176) = &type metadata for UInt;
    *(v21 + 184) = &protocol witness table for UInt;
    *(v21 + 144) = v24;
    *(v21 + 152) = 2049;
    v25 = v64;
    *(v21 + 216) = v22;
    *(v21 + 224) = v23;
    *(v21 + 192) = v25;
    v26 = v14;
    v27 = v25;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v21);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v29 = static os_log_type_t.error.getter();
    sub_100005404(v20, &_mh_execute_header, v29, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v30 = swift_allocObject();
    v30[2] = 8;
    v30[3] = 0;
    v30[4] = 0;
    v30[5] = 0;
    v31 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v34 = String._bridgeToObjectiveC()();

    [v62 handleFailureInFunction:v32 file:v33 lineNumber:2049 isFatal:0 format:v34 args:v31];
  }

  v59 = v0[1];

  return v59();
}

uint64_t sub_100F4C300(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[115];
    v6 = v4[114];
    v7 = sub_100F4D390;
  }

  else
  {
    v4[123] = a1;
    v5 = v4[115];
    v6 = v4[114];
    v7 = sub_100F4C434;
  }

  return _swift_task_switch(v7, v6, v5);
}

id sub_100F4C434()
{
  v1 = *(v0 + 984);
  v2 = *(v0 + 968);
  v3 = *(v0 + 960);
  v4 = *(v0 + 936);
  v5 = *(v0 + 864);
  v6 = type metadata accessor for CRLBoardShareItemProviderHelper();
  v143 = v1;
  v7 = sub_100D193E4(v1, v4, v5, v3, v2, 0, 0xF000000000000000);
  sub_1005B981C(&unk_1019F4D60);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101465920;
  *(v8 + 32) = v7;
  *(v0 + 696) = &type metadata for CRLFeatureFlags;
  v145 = sub_100004D60();
  *(v0 + 704) = v145;
  *(v0 + 672) = 21;
  v142 = v7;
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100005070(v0 + 672);
  if (v7)
  {
    v9 = sub_100D1977C(*(v0 + 936), *(v0 + 864), *(v0 + 960), *(v0 + 968));
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v10 = *(v0 + 968);
  v11 = *(v0 + 960);
  v12 = *(v0 + 952);
  v13 = *(v0 + 944);
  v14 = *(v0 + 864);
  v15 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_100006370(0, &unk_101A23D20);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17 = [v15 initWithItemProviders:isa];

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v19 = sub_100D18984(v14, v11, v10, v13, v6, ObjectType, v12);
  swift_unknownObjectRelease();
  *(v0 + 736) = &type metadata for CRLFeatureFlags;
  *(v0 + 744) = v145;
  *(v0 + 712) = 21;
  LOBYTE(v13) = isFeatureEnabled(_:)();
  sub_100005070(v0 + 712);
  if (v13)
  {
    v138 = v19;
    v140 = v17;
    v20 = (v0 + 624);
    v130 = *(v0 + 936);
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    aBlock = v27;
    v136 = v26;

    v28 = [v21 mainBundle];
    v29 = String._bridgeToObjectiveC()();
    v30 = String._bridgeToObjectiveC()();
    v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v33;
    v134 = v32;

    v34 = [v21 mainBundle];
    v35 = String._bridgeToObjectiveC()();
    v36 = String._bridgeToObjectiveC()();
    v37 = [v34 localizedStringForKey:v35 value:v36 table:0];

    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v39;
    v132 = v38;

    v40 = [v21 mainBundle];
    v41 = String._bridgeToObjectiveC()();
    v42 = String._bridgeToObjectiveC()();
    v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

    v44 = *(v130 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    sub_100E3B1B0();

    v45 = [v21 mainBundle];
    v46 = String._bridgeToObjectiveC()();
    v47 = String._bridgeToObjectiveC()();
    v19 = v138;
    v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = swift_allocObject();
    v52[2] = v138;
    v52[3] = v136;
    v52[4] = aBlock;
    v52[5] = v49;
    v53 = &unk_1018A9F50;
    v52[6] = v51;
    v52[7] = v132;
    v52[8] = v131;
    v52[9] = v134;
    v52[10] = v133;
    v54 = sub_100702ADC;
    v55 = 648;
    v56 = 640;
    v57 = 636;
    v58 = 632;
    v59 = 664;
    v60 = 656;
    v17 = v140;
  }

  else
  {
    v20 = (v0 + 480);
    v52 = swift_allocObject();
    v52[2] = v19;
    v53 = &unk_1018A9E60;
    v54 = sub_100F7899C;
    v55 = 504;
    v56 = 496;
    v57 = 492;
    v58 = 488;
    v59 = 520;
    v60 = 512;
  }

  *(v0 + v60) = v54;
  *(v0 + v59) = v52;
  *v20 = _NSConcreteStackBlock;
  *(v0 + v58) = 1107296256;
  *(v0 + v57) = 0;
  *(v0 + v56) = sub_100701F94;
  *(v0 + v55) = v53;
  v61 = _Block_copy(v20);
  v62 = v19;

  [v17 setPerItemMetadataProvider:v61];
  _Block_release(v61);
  v63 = sub_100F4E3E0();
  if (v63)
  {
    v64 = v63;
    v139 = sub_100F4EA50(*(v0 + 824));
    if (v139)
    {
      v65 = *(v0 + 832);
      v66 = [v64 contentView];
      [v66 frame];
      v68 = v67;
      v70 = v69;
      v72 = v71;
      v74 = v73;

      v75 = [v65 collectionView];
      [v64 convertRect:v75 toView:{v68, v70, v72, v74}];
      v77 = v76;
      v79 = v78;
      v81 = v80;
      v83 = v82;

      result = [v65 collectionView];
      if (result)
      {
        v85 = result;
        v137 = v64;
        v86 = *(v0 + 832);
        v87 = [v86 view];
        [v85 convertRect:v87 toView:{v77, v79, v81, v83}];
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v95 = v94;

        result = [v86 view];
        if (result)
        {
          v96 = result;
          v141 = v17;

          v97 = type metadata accessor for CRLiOSExportAsPDFActivity();
          v98 = objc_allocWithZone(v97);
          swift_unknownObjectWeakInit();
          *&v98[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_boardActor] = v139;
          swift_unknownObjectWeakAssign();
          *&v98[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceView] = v96;
          v99 = &v98[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceRect];
          *v99 = v89;
          v99[1] = v91;
          v99[2] = v93;
          v99[3] = v95;
          *(v0 + 792) = v98;
          *(v0 + 800) = v97;

          v100 = objc_msgSendSuper2((v0 + 792), "init");
          v101 = swift_allocObject();
          *(v101 + 16) = xmmword_101465920;
          *(v101 + 32) = v100;
          v147 = v101;
          *(v0 + 776) = &type metadata for CRLFeatureFlags;
          *(v0 + 784) = v145;
          *(v0 + 752) = 21;
          v144 = v100;
          LOBYTE(v100) = isFeatureEnabled(_:)();
          sub_100005070(v0 + 752);
          if (v100)
          {
            v102 = *(v0 + 856);
            sub_1000652DC(*(v0 + 864), v102, type metadata accessor for CRLBoardIdentifier);
            v103 = type metadata accessor for CRLSendACopyActivity_i();
            v104 = objc_allocWithZone(v103);
            *&v104[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_activityItems] = 0;
            *&v104[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_collaborationItem] = 0;
            sub_1000652DC(v102, &v104[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
            *(v0 + 808) = v104;
            *(v0 + 816) = v103;
            objc_msgSendSuper2((v0 + 808), "init");
            sub_10000BBC4(v102, type metadata accessor for CRLBoardIdentifier);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v101 = v147;
          }

          v146 = v62;
          v105 = *(v0 + 936);
          v106 = *(v0 + 864);
          v107 = *(v0 + 856);
          v108 = *(v0 + 840);
          v109 = swift_allocObject();
          *(v109 + 16) = v101;
          *(v0 + 560) = sub_1000C104C;
          *(v0 + 568) = v109;
          *(v0 + 528) = _NSConcreteStackBlock;
          *(v0 + 536) = *"";
          *(v0 + 544) = sub_100701C80;
          *(v0 + 552) = &unk_1018A9EB0;
          v110 = _Block_copy((v0 + 528));

          [v141 setApplicationActivitiesProvider:v110];
          _Block_release(v110);
          type metadata accessor for CRLSelectionAwareActivityViewController();
          v111 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v112 = v141;
          v113 = [v111 initWithActivityItemsConfiguration:v112];
          v114 = sub_100F7D680(v113);

          sub_1000652DC(v106, v107, type metadata accessor for CRLBoardIdentifier);
          v115 = (*(v108 + 80) + 24) & ~*(v108 + 80);
          v116 = swift_allocObject();
          *(v116 + 16) = v105;
          sub_100065D50(v107, v116 + v115, type metadata accessor for CRLBoardIdentifier);
          *(v0 + 608) = sub_100F789A4;
          *(v0 + 616) = v116;
          *(v0 + 576) = _NSConcreteStackBlock;
          *(v0 + 584) = *"";
          *(v0 + 592) = sub_100992704;
          *(v0 + 600) = &unk_1018A9F00;
          v117 = _Block_copy((v0 + 576));
          swift_unknownObjectRetain();
          v118 = v114;

          [v118 setCompletionWithItemsHandler:v117];
          _Block_release(v117);

          v119 = v118;
          v120 = [v119 popoverPresentationController];
          if (v120)
          {
            v121 = v120;
            v122 = [*(v0 + 832) view];
            [v121 setSourceView:v122];
          }

          v123 = *(v0 + 896);
          v124 = *(v0 + 864);
          v125 = *(v0 + 832);
          v126 = [v119 popoverPresentationController];

          [v126 setSourceRect:{v89, v91, v93, v95}];
          [v125 presentViewController:v119 animated:1 completion:0];

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          sub_10000BBC4(v124, type metadata accessor for CRLBoardIdentifier);
          v127 = v123;
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    sub_10000BBC4(*(v0 + 864), type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    sub_10000BBC4(*(v0 + 864), type metadata accessor for CRLBoardIdentifier);
  }

  swift_unknownObjectRelease();

  v128 = *(v0 + 896);

  swift_unknownObjectRelease();

  v127 = v128;
LABEL_22:
  sub_10000BBC4(v127, _s5BoardVMa);

  v129 = *(v0 + 8);

  return v129();
}

id sub_100F4D390()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v3 = *(v0 + 936);
  v4 = *(v0 + 864);
  v5 = type metadata accessor for CRLBoardShareItemProviderHelper();
  v6 = sub_100D193E4(0, v3, v4, v2, v1, 0, 0xF000000000000000);
  sub_1005B981C(&unk_1019F4D60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101465920;
  *(v7 + 32) = v6;
  *(v0 + 696) = &type metadata for CRLFeatureFlags;
  v143 = sub_100004D60();
  *(v0 + 704) = v143;
  *(v0 + 672) = 21;
  v141 = v6;
  LOBYTE(v6) = isFeatureEnabled(_:)();
  sub_100005070(v0 + 672);
  if (v6)
  {
    v8 = sub_100D1977C(*(v0 + 936), *(v0 + 864), *(v0 + 960), *(v0 + 968));
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v9 = *(v0 + 968);
  v10 = *(v0 + 960);
  v11 = *(v0 + 952);
  v12 = *(v0 + 944);
  v13 = *(v0 + 864);
  v14 = objc_allocWithZone(UIActivityItemsConfiguration);
  sub_100006370(0, &unk_101A23D20);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v16 = [v14 initWithItemProviders:isa];

  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v18 = sub_100D18984(v13, v10, v9, v12, v5, ObjectType, v11);
  swift_unknownObjectRelease();
  *(v0 + 736) = &type metadata for CRLFeatureFlags;
  *(v0 + 744) = v143;
  *(v0 + 712) = 21;
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100005070(v0 + 712);
  if (v12)
  {
    v137 = v18;
    v139 = v16;
    v19 = (v0 + 624);
    v129 = *(v0 + 936);
    v20 = objc_opt_self();
    v21 = [v20 mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v26;
    aBlock = v25;

    v27 = [v20 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v32;
    v133 = v31;

    v33 = [v20 mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v38;
    v131 = v37;

    v39 = [v20 mainBundle];
    v40 = String._bridgeToObjectiveC()();
    v41 = String._bridgeToObjectiveC()();
    v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

    v43 = *(v129 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
    sub_100E3B1B0();

    v44 = [v20 mainBundle];
    v45 = String._bridgeToObjectiveC()();
    v46 = String._bridgeToObjectiveC()();
    v18 = v137;
    v47 = [v44 localizedStringForKey:v45 value:v46 table:0];

    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = swift_allocObject();
    v51[2] = v137;
    v51[3] = aBlock;
    v51[4] = v134;
    v51[5] = v48;
    v52 = &unk_1018A9F50;
    v51[6] = v50;
    v51[7] = v131;
    v51[8] = v130;
    v51[9] = v133;
    v51[10] = v132;
    v53 = sub_100702ADC;
    v54 = 648;
    v55 = 640;
    v56 = 636;
    v57 = 632;
    v58 = 664;
    v59 = 656;
    v16 = v139;
  }

  else
  {
    v19 = (v0 + 480);
    v51 = swift_allocObject();
    v51[2] = v18;
    v52 = &unk_1018A9E60;
    v53 = sub_100F7899C;
    v54 = 504;
    v55 = 496;
    v56 = 492;
    v57 = 488;
    v58 = 520;
    v59 = 512;
  }

  *(v0 + v59) = v53;
  *(v0 + v58) = v51;
  *v19 = _NSConcreteStackBlock;
  *(v0 + v57) = 1107296256;
  *(v0 + v56) = 0;
  *(v0 + v55) = sub_100701F94;
  *(v0 + v54) = v52;
  v60 = _Block_copy(v19);
  v61 = v18;

  [v16 setPerItemMetadataProvider:v60];
  _Block_release(v60);
  v62 = sub_100F4E3E0();
  if (v62)
  {
    v63 = v62;
    v138 = sub_100F4EA50(*(v0 + 824));
    if (v138)
    {
      v64 = *(v0 + 832);
      v65 = [v63 contentView];
      [v65 frame];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v74 = [v64 collectionView];
      [v63 convertRect:v74 toView:{v67, v69, v71, v73}];
      v76 = v75;
      v78 = v77;
      v80 = v79;
      v82 = v81;

      result = [v64 collectionView];
      if (result)
      {
        v84 = result;
        v85 = *(v0 + 832);
        v86 = [v85 view];
        [v84 convertRect:v86 toView:{v76, v78, v80, v82}];
        v88 = v87;
        v90 = v89;
        v92 = v91;
        v94 = v93;

        result = [v85 view];
        if (result)
        {
          v95 = result;
          v140 = v16;

          v96 = type metadata accessor for CRLiOSExportAsPDFActivity();
          v97 = objc_allocWithZone(v96);
          swift_unknownObjectWeakInit();
          *&v97[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_boardActor] = v138;
          swift_unknownObjectWeakAssign();
          *&v97[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceView] = v95;
          v98 = &v97[OBJC_IVAR____TtC8Freeform25CRLiOSExportAsPDFActivity_sourceRect];
          *v98 = v88;
          v98[1] = v90;
          v98[2] = v92;
          v98[3] = v94;
          *(v0 + 792) = v97;
          *(v0 + 800) = v96;

          v99 = objc_msgSendSuper2((v0 + 792), "init");
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_101465920;
          *(v100 + 32) = v99;
          v145 = v100;
          *(v0 + 776) = &type metadata for CRLFeatureFlags;
          *(v0 + 784) = v143;
          *(v0 + 752) = 21;
          v136 = v99;
          LOBYTE(v99) = isFeatureEnabled(_:)();
          sub_100005070(v0 + 752);
          if (v99)
          {
            v101 = *(v0 + 856);
            sub_1000652DC(*(v0 + 864), v101, type metadata accessor for CRLBoardIdentifier);
            v102 = type metadata accessor for CRLSendACopyActivity_i();
            v103 = objc_allocWithZone(v102);
            *&v103[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_activityItems] = 0;
            *&v103[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_collaborationItem] = 0;
            sub_1000652DC(v101, &v103[OBJC_IVAR____TtC8Freeform22CRLSendACopyActivity_i_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
            *(v0 + 808) = v103;
            *(v0 + 816) = v102;
            objc_msgSendSuper2((v0 + 808), "init");
            sub_10000BBC4(v101, type metadata accessor for CRLBoardIdentifier);
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v100 = v145;
          }

          v142 = v63;
          v144 = v61;
          v104 = *(v0 + 936);
          v105 = *(v0 + 864);
          v106 = *(v0 + 856);
          v107 = *(v0 + 840);
          v108 = swift_allocObject();
          *(v108 + 16) = v100;
          *(v0 + 560) = sub_1000C104C;
          *(v0 + 568) = v108;
          *(v0 + 528) = _NSConcreteStackBlock;
          *(v0 + 536) = *"";
          *(v0 + 544) = sub_100701C80;
          *(v0 + 552) = &unk_1018A9EB0;
          v109 = _Block_copy((v0 + 528));

          [v140 setApplicationActivitiesProvider:v109];
          _Block_release(v109);
          type metadata accessor for CRLSelectionAwareActivityViewController();
          v110 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v111 = v140;
          v112 = [v110 initWithActivityItemsConfiguration:v111];
          v113 = sub_100F7D680(v112);

          sub_1000652DC(v105, v106, type metadata accessor for CRLBoardIdentifier);
          v114 = (*(v107 + 80) + 24) & ~*(v107 + 80);
          v115 = swift_allocObject();
          *(v115 + 16) = v104;
          sub_100065D50(v106, v115 + v114, type metadata accessor for CRLBoardIdentifier);
          *(v0 + 608) = sub_100F789A4;
          *(v0 + 616) = v115;
          *(v0 + 576) = _NSConcreteStackBlock;
          *(v0 + 584) = *"";
          *(v0 + 592) = sub_100992704;
          *(v0 + 600) = &unk_1018A9F00;
          v116 = _Block_copy((v0 + 576));
          swift_unknownObjectRetain();
          v117 = v113;

          [v117 setCompletionWithItemsHandler:v116];
          _Block_release(v116);

          v118 = v117;
          v119 = [v118 popoverPresentationController];
          if (v119)
          {
            v120 = v119;
            v121 = [*(v0 + 832) view];
            [v120 setSourceView:v121];
          }

          v122 = *(v0 + 896);
          v123 = *(v0 + 864);
          v124 = *(v0 + 832);
          v125 = [v118 popoverPresentationController];

          [v125 setSourceRect:{v88, v90, v92, v94}];
          [v124 presentViewController:v118 animated:1 completion:0];

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();

          sub_10000BBC4(v123, type metadata accessor for CRLBoardIdentifier);
          v126 = v122;
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

    sub_10000BBC4(*(v0 + 864), type metadata accessor for CRLBoardIdentifier);
  }

  else
  {
    sub_10000BBC4(*(v0 + 864), type metadata accessor for CRLBoardIdentifier);
  }

  swift_unknownObjectRelease();

  v127 = *(v0 + 896);

  swift_unknownObjectRelease();
  v126 = v127;
LABEL_22:
  sub_10000BBC4(v126, _s5BoardVMa);

  v128 = *(v0 + 8);

  return v128();
}

id sub_100F4E2D0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
  {

    if (a1)
    {
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0 || a1)
    {
      goto LABEL_7;
    }
  }

  *(a3 + 24) = sub_100006370(0, &unk_101A23D30);
  *a3 = a2;

  return a2;
}

id sub_100F4E3E0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v0;
  v12 = sub_10005AFE0();
  sub_100F87E04(v4);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v2 + 8))(v4, v1);
  v13 = v9;
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CAAC(v7, &unk_101A23C40);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  result = [v43 collectionView];
  if (result)
  {
    v15 = result;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v15 cellForItemAtIndexPath:isa];

    if (v17)
    {
      (*(v13 + 8))(v11, v8);
      return v17;
    }

    v42 = v8;
    v43 = v11;
    v41 = objc_opt_self();
    v18 = [v41 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v44);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 2176;
    v30 = v19;
    v31 = v44;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v31;
    v32 = v30;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v35, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v36 = swift_allocObject();
    v36[2] = 8;
    v36[3] = 0;
    v36[4] = 0;
    v36[5] = 0;
    v37 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v40 = String._bridgeToObjectiveC()();

    [v41 handleFailureInFunction:v38 file:v39 lineNumber:2176 isFatal:0 format:v40 args:v37];

    (*(v13 + 8))(v43, v42);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F4EA50(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5BoardVMa(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLBoardLibrary();
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    sub_1000652DC(a1, v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_100065D50(v7, v10, _s5BoardVMa);
      sub_1000652DC(v10, v4, type metadata accessor for CRLBoardIdentifier);
      v13 = *(v12 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_store);
      type metadata accessor for CRLBoardActor();
      v14 = swift_allocObject();
      v15 = v13;
      swift_defaultActor_initialize();
      sub_10000BBC4(v10, _s5BoardVMa);
      sub_100065D50(v4, v14 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
      result = v14;
      *(v14 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store) = v15;
      return result;
    }

    sub_10000BBC4(v7, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = [v17 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v25 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v18;
    v27 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v27;
    v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v28;
    *(inited + 72) = v19;
    *(inited + 136) = &type metadata for String;
    v29 = sub_1000053B0();
    *(inited + 112) = v22;
    *(inited + 120) = v24;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v29;
    *(inited + 152) = 2163;
    v30 = v41;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    *(inited + 192) = v30;
    v31 = v19;
    v32 = v30;
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v25, &_mh_execute_header, v34, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v35 = swift_allocObject();
    v35[2] = 8;
    v35[3] = 0;
    v35[4] = 0;
    v35[5] = 0;
    v36 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v39 = String._bridgeToObjectiveC()();

    [v17 handleFailureInFunction:v37 file:v38 lineNumber:2163 isFatal:0 format:v39 args:v36];
  }

  return 0;
}

void sub_100F4F03C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  if ((a2 & 1) == 0)
  {
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.shareState;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v17, "UIActivityViewController returned without completing. Delete any cached shares.", 79, 2, _swiftEmptyArrayStorage);
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1000652DC(a6, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for MainActor();
    v19 = a5;
    v20 = static MainActor.shared.getter();
    v21 = (*(v10 + 80) + 40) & ~*(v10 + 80);
    v22 = swift_allocObject();
    v22[2] = v20;
    v22[3] = &protocol witness table for MainActor;
    v22[4] = v19;
    sub_100065D50(v12, v22 + v21, type metadata accessor for CRLBoardIdentifier);
    sub_10064191C(0, 0, v15, &unk_1014B99A0, v22);
  }
}

uint64_t sub_100F4F2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_10007EE50;

  return sub_1010AD998(a5);
}

uint64_t sub_100F4F368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = sub_100F4F424;

  return sub_100F4F6E4(a5);
}

uint64_t sub_100F4F424()
{
  *(*v1 + 144) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100F4F580;
  }

  else
  {
    v4 = sub_100F795B8;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_100F4F580()
{

  if (qword_1019F22C8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.shareState;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Error showing manage share UI. Error: %@", 40, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100F4F6E4(uint64_t a1)
{
  v2[31] = a1;
  v2[32] = v1;
  v2[33] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[34] = swift_task_alloc();
  _s5BoardVMa(0);
  v2[35] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[36] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[37] = v4;
  v2[38] = v3;

  return _swift_task_switch(sub_100F4F7D8, v4, v3);
}

uint64_t sub_100F4F7D8()
{
  v36 = v0;
  v0[39] = *(v0[32] + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
  type metadata accessor for CRLBoardLibrary();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    sub_1000652DC(v0[31], v0[34], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = v0[34];
    if (EnumCaseMultiPayload == 2)
    {
      sub_100065D50(v0[34], v0[35], _s5BoardVMa);
      v5 = *(v2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardShareController);
      v0[40] = v5;
      v6 = *(*(v5 + 112) + 112);
      v0[41] = v6;
      swift_unknownObjectRetain();

      v7 = v6;
      v8 = swift_task_alloc();
      v0[42] = v8;
      *v8 = v0;
      v8[1] = sub_100F4FD5C;
      v9 = v0[35];

      return sub_1010A91B4(v9, 0);
    }

    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  else
  {
    v34 = objc_opt_self();
    v11 = [v34 _atomicIncrementAssertCount];
    v35 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v35);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 2190;
    v23 = v35;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v34 handleFailureInFunction:v30 file:v31 lineNumber:2190 isFatal:0 format:v32 args:v29];
  }

  v33 = v0[1];

  return v33();
}

uint64_t sub_100F4FD5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 344) = a1;
  *(v4 + 352) = v1;

  v5 = *(v3 + 304);
  v6 = *(v3 + 296);
  if (v1)
  {
    v7 = sub_100F50034;
  }

  else
  {
    v7 = sub_100F4FEA0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100F4FEA0()
{
  v1 = v0[43];

  if (v1)
  {
    v2 = v0[43];
    v3 = v0[41];
    v4 = v0[35];
    v5 = v0[32];
    v6 = objc_allocWithZone(UICloudSharingController);
    v7 = v2;
    v8 = [v6 initWithShare:v7 container:v3];
    [v8 setDelegate:v5];
    [v8 setModalPresentationStyle:2];
    [v5 presentViewController:v8 animated:1 completion:0];

    swift_unknownObjectRelease();

    sub_10000BBC4(v4, _s5BoardVMa);
  }

  else
  {
    v9 = v0[41];
    sub_10000BBC4(v0[35], _s5BoardVMa);

    swift_unknownObjectRelease();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100F50034()
{
  v1 = v0[41];
  v2 = v0[35];

  swift_unknownObjectRelease();

  sub_10000BBC4(v2, _s5BoardVMa);

  v3 = v0[1];

  return v3();
}

void sub_100F502A0(void *a1)
{
  v2 = [a1 share];
  if (v2)
  {
    v3 = v2;
    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.shareState;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_100006370(0, &qword_1019F52C0);
    *(inited + 64) = sub_10000FDE0(&qword_101A1BA40, &qword_1019F52C0);
    *(inited + 32) = v3;
    v6 = v3;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v4, &_mh_execute_header, v7, "Share completed or updated for share %@", 39, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v8 = [a1 share];
    sub_100F767A0(v8, 0);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = [v9 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_10146CA70;
    *(v18 + 56) = &type metadata for Int32;
    *(v18 + 64) = &protocol witness table for Int32;
    *(v18 + 32) = v10;
    v19 = sub_100006370(0, &qword_1019F4D30);
    *(v18 + 96) = v19;
    v20 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(v18 + 104) = v20;
    *(v18 + 72) = v11;
    *(v18 + 136) = &type metadata for String;
    v21 = sub_1000053B0();
    *(v18 + 112) = v14;
    *(v18 + 120) = v16;
    *(v18 + 176) = &type metadata for UInt;
    *(v18 + 184) = &protocol witness table for UInt;
    *(v18 + 144) = v21;
    *(v18 + 152) = 2244;
    v22 = v30;
    *(v18 + 216) = v19;
    *(v18 + 224) = v20;
    *(v18 + 192) = v22;
    v23 = v11;
    v24 = v22;
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v18);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v27 = swift_allocObject();
    v27[2] = 8;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = 0;
    v28 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    [v9 handleFailureInFunction:v29 file:v6 lineNumber:2244 isFatal:0 format:v8 args:v28];
  }
}

uint64_t sub_100F5095C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_10085FA90;

  return sub_1010A9CB4(a5, a6, a7);
}

void sub_100F50B74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 collectionView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 indexPathsForVisibleItems];

      type metadata accessor for IndexPath();
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v7) = sub_1012CD684(a2, v8);

      if ((v7 & 1) == 0)
      {
        v11 = v4;
        goto LABEL_10;
      }

      v9 = [v4 collectionView];

      if (v9)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v11 = [v9 cellForItemAtIndexPath:isa];

        if (!v11)
        {
          goto LABEL_11;
        }

        ObjectType = swift_getObjectType();
        v13 = swift_conformsToProtocol2();
        if (v13)
        {
          (*(v13 + 136))(ObjectType, v13);
        }

LABEL_10:

        v4 = v11;
LABEL_11:

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

UIMenu sub_100F50D20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v97 = a4;
  v6 = sub_1005B981C(&unk_1019FA3E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v92 - v7;
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v105 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v92 - v16;
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v103 = *(v18 - 8);
  __chkstk_darwin(v18);
  v99 = v19;
  v100 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v92 - v21;
  v23 = _s5BoardVMa(0);
  v95 = *(v23 - 8);
  __chkstk_darwin(v23);
  v101 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v92 - v26;
  v108 = _swiftEmptyArrayStorage;
  v104 = a2;
  v102 = sub_100F495D4();
  v28 = a3;
  sub_1000652DC(a3, v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v106 = v23;
  if (EnumCaseMultiPayload == 2)
  {
    sub_100065D50(v22, v27, _s5BoardVMa);
    v30 = v27[*(v23 + 72)];
    sub_10000BE14(&v27[*(v23 + 80)], v17, &qword_1019F33D0);
    v31 = _s5BoardV13ShareMetadataVMa(0);
    v32 = (*(*(v31 - 8) + 48))(v17, 1, v31);
    v98 = v30;
    if (v32 == 1)
    {
      sub_10000CAAC(v17, &qword_1019F33D0);
    }

    else
    {
      v36 = *v17;
      sub_10000BBC4(v17, _s5BoardV13ShareMetadataVMa);
      LOBYTE(v30) = v36 ^ 1 | v30;
    }

    v35 = a3;
    v33 = v27[*(v106 + 76) + 8] ^ 1;
    v34 = v27[*(v106 + 60)];
    sub_10000BBC4(v27, _s5BoardVMa);
  }

  else
  {
    sub_10000BBC4(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v33 = 0;
    v98 = 0;
    v34 = 0;
    LOBYTE(v30) = 1;
    v35 = v28;
  }

  v37 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v38 = sub_1005B981C(&qword_1019F3480);
  (*(*(v38 - 8) + 56))(v14, 5, 5, v38);
  LOBYTE(v37) = sub_100068604(v104 + v37, v14);
  sub_10000BBC4(v14, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v37)
  {
    sub_100F51CBC(v35);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  else
  {
    v96 = v35;
    if ((v102 & 1) == 0)
    {
      if (v97)
      {
        v39 = v97;
        v40 = v39;
        if (v34)
        {
          v41 = sub_100F444A4(v39);
          if (v41)
          {
            v42 = v41;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }
        }

        v43 = sub_100F449C4(v40);
        if (v43)
        {
          v44 = v43;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      if ((v30 & 1) == 0)
      {
        v94 = v33;
        sub_100006370(0, &qword_1019F6190);
        v45 = [objc_opt_self() mainBundle];
        v46 = String._bridgeToObjectiveC()();
        v47 = String._bridgeToObjectiveC()();
        v48 = [v45 localizedStringForKey:v46 value:v47 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = String._bridgeToObjectiveC()();
        v50 = [objc_opt_self() systemImageNamed:v49];

        v51 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v52 = v100;
        sub_1000652DC(v35, v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v53 = (*(v103 + 80) + 24) & ~*(v103 + 80);
        v54 = swift_allocObject();
        *(v54 + 16) = v51;
        sub_100065D50(v52, v54 + v53, type metadata accessor for CRLBoardLibraryViewModel.Item);
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v35 = v96;
        v33 = v94;
      }
    }

    v55 = sub_100F53530(v35);
    v56 = objc_opt_self();
    v57 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v58 = v100;
    sub_1000652DC(v35, v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v59 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v93 = *(v103 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v55;
    *(v60 + 24) = v57;
    sub_100065D50(v58, v60 + v59, type metadata accessor for CRLBoardLibraryViewModel.Item);
    aBlock[4] = sub_100F78150;
    aBlock[5] = v60;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100646688;
    aBlock[3] = &unk_1018A9B68;
    v61 = _Block_copy(aBlock);

    v62 = [v56 elementWithUncachedProvider:v61];
    _Block_release(v61);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v63 = v106;
    if (v102)
    {
      v94 = v33;
      v64 = sub_100F378A4();
      v65 = sub_100F8A1C8(v64);

      v66 = v65[2];
      if (v66)
      {
        v67 = 0;
        v68 = v65 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        v97 = (v101 + 8);
        v103 = v95 + 56;
        while (v67 < v65[2])
        {
          sub_1000652DC(&v68[*(v105 + 72) * v67], v11, type metadata accessor for CRLBoardIdentifier);
          sub_1010AB99C(v11, v8);
          v69 = v68;
          v70 = v66;
          v71 = v11;
          sub_10000BBC4(v11, type metadata accessor for CRLBoardIdentifier);
          (*v103)(v8, 0, 1, v63);
          v72 = v8;
          v73 = v8;
          v74 = v101;
          sub_100065D50(v73, v101, _s5BoardVMa);
          if (*(v74 + *(v63 + 72)))
          {

            sub_10000BBC4(v74, _s5BoardVMa);
            goto LABEL_45;
          }

          v75 = *(v97 + *(v63 + 76));
          sub_10000BBC4(v74, _s5BoardVMa);
          v8 = v72;
          v11 = v71;
          v66 = v70;
          v68 = v69;
          if ((v75 & 1) == 0)
          {

LABEL_45:
            v35 = v96;
            v76 = v98;
            v33 = v94;
            goto LABEL_46;
          }

          ++v67;
          v63 = v106;
          if (v66 == v67)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_51;
      }

LABEL_38:

      v76 = v98;
      v33 = v94;
    }

    else
    {
      v76 = v98;
    }

    v35 = v96;
    if (((v76 | v33) & 1) == 0)
    {
      if (sub_100F38610())
      {
        v77 = v93;
        sub_100006370(0, &qword_1019F6190);
        v78 = [objc_opt_self() mainBundle];
        v79 = String._bridgeToObjectiveC()();
        v80 = String._bridgeToObjectiveC()();
        v81 = [v78 localizedStringForKey:v79 value:v80 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = String._bridgeToObjectiveC()();
        v83 = [objc_opt_self() systemImageNamed:v82];

        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = v100;
        sub_1000652DC(v35, v100, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v86 = swift_allocObject();
        *(v86 + 16) = v84;
        sub_100065D50(v85, v86 + ((v77 + 24) & ~v77), type metadata accessor for CRLBoardLibraryViewModel.Item);
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v35 = v96;
        v76 = v98;
      }

LABEL_46:
      if (((v76 | v102 | v33) & 1) == 0)
      {
        v87 = sub_100F525A0(v35);
        sub_10079A660(v87);
      }
    }
  }

  sub_100F52ED8(v35);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_51:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v88 = v108;
  sub_100006370(0, &qword_1019F6C00);
  v89._countAndFlagsBits = 0;
  v89._object = 0xE000000000000000;
  v109.value.super.isa = 0;
  v109.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v89, 0, v109, 0, 0xFFFFFFFFFFFFFFFFLL, v88, v91);
}

uint64_t sub_100F51CBC(uint64_t a1)
{
  v67 = a1;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v64 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v66 = v3;
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v9 = sub_1005B981C(&qword_1019F3480);
  (*(*(v9 - 8) + 56))(v7, 5, 5, v9);
  v63 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v69 = v5;
  sub_1005B981C(&qword_101A23C18);
  String.init<A>(describing:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v12;
  v13 = inited;
  v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v13 + 32) = v11;
  v68 = v13 + 32;
  *(v13 + 64) = v14;
  v65 = v1;
  if (!sub_100068604(v1 + v8, v7))
  {
    v60 = v7;
    v61 = v4;
    v59 = objc_opt_self();
    v62 = [v59 _atomicIncrementAssertCount];
    v69 = [objc_allocWithZone(NSString) init];
    sub_100604538(v13, &v69);
    StaticString.description.getter();
    v15 = v13;
    v16 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v17 = String._bridgeToObjectiveC()();

    v18 = [v17 lastPathComponent];

    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v22 = static OS_os_log.crlAssert;
      v23 = swift_initStackObject();
      *(v23 + 16) = xmmword_10146CA70;
      *(v23 + 56) = &type metadata for Int32;
      *(v23 + 64) = &protocol witness table for Int32;
      *(v23 + 32) = v62;
      *(v23 + 96) = v12;
      *(v23 + 104) = v14;
      *(v23 + 72) = v16;
      *(v23 + 136) = &type metadata for String;
      v24 = sub_1000053B0();
      *(v23 + 112) = v19;
      *(v23 + 120) = v21;
      *(v23 + 176) = &type metadata for UInt;
      *(v23 + 184) = &protocol witness table for UInt;
      *(v23 + 144) = v24;
      *(v23 + 152) = 2524;
      v25 = v69;
      *(v23 + 216) = v12;
      *(v23 + 224) = v14;
      *(v23 + 192) = v25;
      v26 = v16;
      v27 = v25;
      v28 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v28, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v23);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v22, &_mh_execute_header, v29, "expected equality between two values of type %{public}@", 55, 2, v15);

      type metadata accessor for __VaListBuilder();
      v12 = swift_allocObject();
      v12[2] = 8;
      v12[3] = 0;
      v16 = v12 + 3;
      v12[4] = 0;
      v12[5] = 0;
      v63 = v15;
      v14 = *(v15 + 16);
      if (!v14)
      {
LABEL_29:
        v44 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v46 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v47 = String._bridgeToObjectiveC()();

        [v59 handleFailureInFunction:v45 file:v46 lineNumber:2524 isFatal:0 format:v47 args:v44];

        sub_10000BBC4(v60, type metadata accessor for CRLBoardLibraryViewModel.Filter);
        v4 = v61;
        goto LABEL_30;
      }

      v21 = 0;
      v19 = 40;
      while (1)
      {
        sub_100020E58((v68 + 40 * v21), *(v68 + 40 * v21 + 24));
        v30 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v31 = *v16;
        v32 = *(v30 + 16);
        v33 = __OFADD__(*v16, v32);
        v34 = *v16 + v32;
        if (v33)
        {
          break;
        }

        v35 = v12[4];
        if (v35 >= v34)
        {
          goto LABEL_21;
        }

        if (v35 + 0x4000000000000000 < 0)
        {
          goto LABEL_33;
        }

        v36 = v12[5];
        if (2 * v35 > v34)
        {
          v34 = 2 * v35;
        }

        v12[4] = v34;
        if ((v34 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_34;
        }

        v15 = v30;
        v37 = swift_slowAlloc();
        v38 = v37;
        v12[5] = v37;
        if (v36)
        {
          if (v37 != v36 || v37 >= &v36[8 * v31])
          {
            memmove(v37, v36, 8 * v31);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v30 = v15;
LABEL_21:
          v38 = v12[5];
          if (!v38)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v30 = v15;
        if (!v38)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v40 = *(v30 + 16);
        if (v40)
        {
          v41 = (v30 + 32);
          v42 = *v16;
          while (1)
          {
            v43 = *v41++;
            *&v38[8 * v42] = v43;
            v42 = *v16 + 1;
            if (__OFADD__(*v16, 1))
            {
              break;
            }

            *v16 = v42;
            if (!--v40)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        if (++v21 == v14)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }
  }

  sub_10000BBC4(v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);

LABEL_30:
  v48 = v67;
  sub_100006370(0, &qword_1019F6190);
  v49 = [objc_opt_self() mainBundle];
  v50 = String._bridgeToObjectiveC()();
  v51 = String._bridgeToObjectiveC()();
  v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() systemImageNamed:v53];

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000652DC(v48, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v56 = (*(v64 + 80) + 24) & ~*(v64 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = v55;
  sub_100065D50(v4, v57 + v56, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

uint64_t sub_100F525A0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = _s5BoardVMa(0);
  __chkstk_darwin(v13);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = _swiftEmptyArrayStorage;
  sub_1000652DC(a1, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000BBC4(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_7;
  }

  sub_100065D50(v12, v15, _s5BoardVMa);
  sub_10000BE14(&v15[*(v13 + 80)], v5, &qword_1019F33D0);
  sub_10000BBC4(v15, _s5BoardVMa);
  v16 = _s5BoardV13ShareMetadataVMa(0);
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  sub_10000CAAC(v5, &qword_1019F33D0);
  if (v17 == 1)
  {
LABEL_7:
    sub_100006370(0, &qword_1019F6190);
    v33 = [objc_opt_self() mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = String._bridgeToObjectiveC()();
    [objc_opt_self() systemImageNamed:v37];

    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000652DC(a1, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v39 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = v38;
    sub_100065D50(v9, v40 + v39, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_8;
  }

  v18 = String._bridgeToObjectiveC()();
  v47 = objc_opt_self();
  v44 = [v47 systemImageNamed:v18];

  v48 = sub_100006370(0, &qword_1019F6190);
  v45 = objc_opt_self();
  v19 = [v45 mainBundle];
  v20 = String._bridgeToObjectiveC()();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v19 localizedStringForKey:v20 value:v21 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = swift_allocObject();
  v46 = v1;
  swift_unknownObjectWeakInit();
  sub_1000652DC(a1, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  sub_100065D50(v9, v25 + v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = [v45 mainBundle];
  v27 = String._bridgeToObjectiveC()();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v26 localizedStringForKey:v27 value:v28 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = String._bridgeToObjectiveC()();
  [v47 systemImageNamed:v30];

  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000652DC(a1, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_100065D50(v9, v32 + v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_8:
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v41 = v49;
  if (v49 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0);

    v42 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0);
    v42 = v41;
  }

  return v42;
}

uint64_t sub_100F52ED8(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100006370(0, &qword_1019F6190);
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000652DC(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_100065D50(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
}

void sub_100F53160(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for CRLBoardLibrary();
    if (swift_dynamicCastClass())
    {
      swift_unknownObjectRetain();
      v8 = [a3 actionBlock];
      v8[2]();
      _Block_release(v8);
      sub_1005B981C(&unk_1019F4D60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_101465920;
      *(inited + 32) = a4;
      v10 = a4;
      sub_1005EE734(inited);

      swift_unknownObjectRelease();
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_100F532A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    a4(a3);
  }
}

void sub_100F53318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_1000652DC(a3, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
    type metadata accessor for MainActor();
    v16 = v14;
    v17 = static MainActor.shared.getter();
    v18 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v16;
    sub_100065D50(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10064191C(0, 0, v12, a5, v19);
  }
}

void *sub_100F53530(uint64_t a1)
{
  v3 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v3 - 8);
  v77 = &v70 - v4;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v78 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v76 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v70 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&unk_101A23C40);
  __chkstk_darwin(v13 - 8);
  v15 = (&v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v80 = &v70 - v17;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v81 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v84 = v1;
  v24 = sub_10005AFE0();
  sub_100F87E04(v12);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  (*(v10 + 8))(v12, v9);
  v75 = v19;
  v25 = *(v19 + 48);
  v79 = v15;
  if (v25(v15, 1, v18) == 1)
  {
    v83 = v18;
    v74 = v23;
    v72 = v25;
    v73 = a1;
    v71 = objc_opt_self();
    v26 = [v71 _atomicIncrementAssertCount];
    v85 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v85);
    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    v29 = [v28 lastPathComponent];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v33 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v26;
    v35 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v35;
    v36 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v36;
    *(inited + 72) = v27;
    *(inited + 136) = &type metadata for String;
    v37 = sub_1000053B0();
    *(inited + 112) = v30;
    *(inited + 120) = v32;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v37;
    *(inited + 152) = 2995;
    v38 = v85;
    *(inited + 216) = v35;
    *(inited + 224) = v36;
    *(inited + 192) = v38;
    v39 = v27;
    v40 = v38;
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v41, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v33, &_mh_execute_header, v42, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v43 = swift_allocObject();
    v43[2] = 8;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
    v44 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    [v71 handleFailureInFunction:v45 file:v46 lineNumber:2995 isFatal:0 format:v47 args:v44];

    a1 = v73;
    v25 = v72;
    v23 = v74;
    v18 = v83;
  }

  v48 = v80;
  sub_10003DFF8(v79, v80, &unk_101A23C40);
  if (v25(v48, 1, v18) == 1)
  {
    sub_10000CAAC(v48, &unk_101A23C40);
    return _swiftEmptyArrayStorage;
  }

  (*(v75 + 32))(v23, v48, v18);
  result = [v84 collectionView];
  if (result)
  {
    v51 = result;
    v52 = [result indexPathsForSelectedItems];

    if (v52)
    {
      v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (sub_1012CD684(v23, v53))
      {
        v54 = *(v53 + 16);
        if (v54)
        {
          v74 = v23;
          v83 = v18;
          v80 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___diffableDataSource;
          v55 = v75 + 16;
          v79 = *(v75 + 16);
          v56 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v75 = v53;
          v57 = v53 + v56;
          v58 = *(v55 + 56);
          v59 = (v55 - 8);
          v49 = _swiftEmptyArrayStorage;
          v73 = (v55 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v60 = v77;
          do
          {
            v61 = v81;
            v62 = v83;
            v79(v81, v57, v83);
            v63 = *&v84[v80];
            sub_10079330C(v61, v60);

            v64 = *v59;
            (*v59)(v61, v62);
            v65 = _s4NodeVMa(0);
            if ((*(*(v65 - 8) + 48))(v60, 1, v65) == 1)
            {
              sub_10000CAAC(v60, &unk_1019FB770);
            }

            else
            {
              v66 = v76;
              sub_1000652DC(v60, v76, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10000BBC4(v60, _s4NodeVMa);
              sub_100065D50(v66, v82, type metadata accessor for CRLBoardLibraryViewModel.Item);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_100B3648C(0, v49[2] + 1, 1, v49);
              }

              v68 = v49[2];
              v67 = v49[3];
              if (v68 >= v67 >> 1)
              {
                v49 = sub_100B3648C(v67 > 1, v68 + 1, 1, v49);
              }

              v49[2] = v68 + 1;
              sub_100065D50(v82, v49 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v68, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v60 = v77;
            }

            v57 += v58;
            --v54;
          }

          while (v54);

          v18 = v83;
          v23 = v74;
        }

        else
        {

          v64 = *(v75 + 8);
          v49 = _swiftEmptyArrayStorage;
        }

        v64(v23, v18);
        return v49;
      }
    }

    sub_1005B981C(&qword_101A23C10);
    v69 = (*(v78 + 80) + 32) & ~*(v78 + 80);
    v49 = swift_allocObject();
    *(v49 + 1) = xmmword_10146C6B0;
    sub_1000652DC(a1, v49 + v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    (*(v75 + 8))(v23, v18);
    return v49;
  }

  __break(1u);
  return result;
}

uint64_t sub_100F5409C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100F8A1C8(a3);
  v13 = sub_10004B3DC(v12);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (*(v13 + 16))
    {
      v29 = v9;
      v30 = a5;
      sub_100F544AC(v13);

      v16 = [objc_opt_self() mainBundle];
      v31 = a1;
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100006370(0, &qword_1019F6190);
      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() systemImageNamed:v20];

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000652DC(v30, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardLibraryViewModel.Item);
      v23 = (*(v29 + 80) + 24) & ~*(v29 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v22;
      sub_100065D50(v11, v24 + v23, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v25 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      sub_1005B981C(&unk_1019F4D60);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_101465920;
      *(v26 + 32) = v25;
      v27 = v25;
      v31(v26);
    }
  }

  return (a1)(_swiftEmptyArrayStorage);
}

uint64_t sub_100F544AC(uint64_t a1)
{
  v15 = _s5BoardVMa(0);
  __chkstk_darwin(v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v16 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_9:
    sub_1000652DC(*(a1 + 48) + *(v16 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v6, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(v6, v3);
    v9 &= v9 - 1;
    sub_10000BBC4(v6, type metadata accessor for CRLBoardIdentifier);
    v14 = v3[*(v15 + 56)];
    result = sub_10000BBC4(v3, _s5BoardVMa);
    if ((v14 & 1) == 0)
    {

      return 1;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 0;
    }

    v9 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100F54710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_100F53530(a3);
    if (v9[2])
    {
      v10 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
      v11 = sub_1005B981C(&qword_1019F3480);
      (*(*(v11 - 8) + 56))(v6, 5, 5, v11);
      LOBYTE(v10) = sub_100068604(v8 + v10, v6);
      sub_10000BBC4(v6, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      if (v10)
      {
        sub_100F549A8(v9);
      }

      else
      {
        sub_100F558C0(v9, 0, 0);
      }
    }
  }
}

void sub_100F54868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (sub_100F53530(a3)[2])
    {
      a4();
    }
  }
}

uint64_t sub_100F548EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = type metadata accessor for MainActor();
  v5[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1005F1164;

  return sub_100F49D50(a5);
}

void sub_100F549A8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v3);
  v5 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
  v7 = sub_1005B981C(&qword_1019F3480);
  (*(*(v7 - 8) + 56))(v5, 5, 5, v7);
  v99 = sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  v97 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v101[0] = v3;
  sub_1005B981C(&qword_101A23C18);
  String.init<A>(describing:)();
  v9 = String._bridgeToObjectiveC()();

  v10 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 56) = v10;
  v11 = inited;
  v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v11 + 32) = v9;
  v100 = (v11 + 32);
  *(v11 + 64) = v12;
  v98 = v1;
  if (sub_100068604(v1 + v6, v5))
  {
    sub_10000BBC4(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);

    v13 = a1;
    goto LABEL_30;
  }

  v94 = v5;
  v95 = a1;
  v93 = objc_opt_self();
  LODWORD(v96) = [v93 _atomicIncrementAssertCount];
  v101[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v11, v101);
  StaticString.description.getter();
  v14 = v11;
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_52;
  }

LABEL_4:
  v21 = static OS_os_log.crlAssert;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_10146CA70;
  *(v22 + 56) = &type metadata for Int32;
  *(v22 + 64) = &protocol witness table for Int32;
  *(v22 + 32) = v96;
  *(v22 + 96) = v10;
  *(v22 + 104) = v12;
  *(v22 + 72) = v15;
  *(v22 + 136) = &type metadata for String;
  v23 = sub_1000053B0();
  *(v22 + 112) = v18;
  *(v22 + 120) = v20;
  *(v22 + 176) = &type metadata for UInt;
  *(v22 + 184) = &protocol witness table for UInt;
  *(v22 + 144) = v23;
  *(v22 + 152) = 2785;
  v24 = v101[0];
  *(v22 + 216) = v10;
  *(v22 + 224) = v12;
  *(v22 + 192) = v24;
  v25 = v15;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v28 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v28, "expected equality between two values of type %{public}@", 55, 2, v14);

  type metadata accessor for __VaListBuilder();
  v12 = swift_allocObject();
  v12[2] = 8;
  v12[3] = 0;
  v29 = v12 + 3;
  v12[4] = 0;
  v12[5] = 0;
  v96 = v14;
  v20 = *(v14 + 16);
  if (v20)
  {
    v30 = 0;
    v14 = 40;
    while (1)
    {
      v31 = &v100[40 * v30];
      v18 = *(v31 + 3);
      v15 = sub_100020E58(v31, v18);
      v32 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v33 = *v29;
      v34 = *(v32 + 16);
      v35 = __OFADD__(*v29, v34);
      v36 = *v29 + v34;
      if (v35)
      {
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        swift_once();
        goto LABEL_4;
      }

      v15 = v12[4];
      if (v15 >= v36)
      {
        goto LABEL_21;
      }

      if (v15 + 0x4000000000000000 < 0)
      {
        goto LABEL_50;
      }

      v18 = v12[5];
      if (2 * v15 > v36)
      {
        v36 = 2 * v15;
      }

      v12[4] = v36;
      if ((v36 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_51;
      }

      v10 = v32;
      v37 = swift_slowAlloc();
      v38 = v37;
      v12[5] = v37;
      if (v18)
      {
        break;
      }

      v32 = v10;
      if (!v38)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v40 = *(v32 + 16);
      if (v40)
      {
        v41 = (v32 + 32);
        v42 = *v29;
        while (1)
        {
          v43 = *v41++;
          *&v38[8 * v42] = v43;
          v42 = *v29 + 1;
          if (__OFADD__(*v29, 1))
          {
            break;
          }

          *v29 = v42;
          if (!--v40)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

LABEL_6:

      if (++v30 == v20)
      {
        goto LABEL_29;
      }
    }

    if (v37 != v18 || v37 >= &v18[8 * v33])
    {
      memmove(v37, v18, 8 * v33);
    }

    v15 = v12;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v32 = v10;
LABEL_21:
    v38 = v12[5];
    if (!v38)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v44 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v45 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  [v93 handleFailureInFunction:v45 file:v46 lineNumber:2785 isFatal:0 format:v47 args:v44];

  sub_10000BBC4(v94, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v13 = v95;
LABEL_30:
  v48 = sub_100F8A1C8(v13);
  v49 = sub_10004B3DC(v48);

  if (*(v49 + 16))
  {
    v50 = [objc_opt_self() sharedApplication];
    v51 = [v50 delegate];

    if (v51)
    {
      type metadata accessor for CRLiOSAppDelegate();
      swift_dynamicCastClassUnconditional();

      swift_unknownObjectRelease();
      sub_10000A05C();

      v52 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:1];
      v53 = v52;
      if (*(v49 + 16) < 2uLL)
      {
        v100 = v52;
        v64 = objc_opt_self();
        v65 = [v64 mainBundle];
        v66 = String._bridgeToObjectiveC()();
        v67 = String._bridgeToObjectiveC()();
        v68 = [v65 localizedStringForKey:v66 value:v67 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = swift_allocObject();
        *(v69 + 16) = v97;
        if (*(v13 + 16))
        {
          type metadata accessor for CRLBoardLibraryViewModel.Item(0);
          v70 = sub_100F88220();
          v72 = v71;
        }

        else
        {
          v70 = 0;
          v72 = 0;
        }

        v53 = v100;
        *(v69 + 56) = &type metadata for String;
        *(v69 + 64) = sub_1000053B0();
        if (v72)
        {
          v73 = v70;
        }

        else
        {
          v73 = 0;
        }

        v74 = 0xE000000000000000;
        if (v72)
        {
          v74 = v72;
        }

        *(v69 + 32) = v73;
        *(v69 + 40) = v74;
        static String.localizedStringWithFormat(_:_:)();

        v75 = String._bridgeToObjectiveC()();

        [v53 setTitle:v75];

        v61 = [v64 mainBundle];
      }

      else
      {
        v54 = objc_opt_self();
        v55 = [v54 mainBundle];
        v102._object = 0x80000001015B3220;
        v56._object = 0x80000001015B3200;
        v102._countAndFlagsBits = 0xD000000000000023;
        v56._countAndFlagsBits = 0xD00000000000001ELL;
        v57._countAndFlagsBits = 0;
        v57._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v102);

        v58 = swift_allocObject();
        *(v58 + 16) = v97;
        v59 = *(v49 + 16);
        *(v58 + 56) = &type metadata for Int;
        *(v58 + 64) = &protocol witness table for Int;
        *(v58 + 32) = v59;
        static String.localizedStringWithFormat(_:_:)();

        v60 = String._bridgeToObjectiveC()();

        [v53 setTitle:v60];

        v61 = [v54 mainBundle];
      }

      v62 = String._bridgeToObjectiveC()();
      v63 = String._bridgeToObjectiveC()();
      v76 = [v61 localizedStringForKey:v62 value:v63 table:0];

      if (!v76)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v76 = String._bridgeToObjectiveC()();
      }

      [v53 setMessage:v76];

      v100 = objc_opt_self();
      v77 = [v100 mainBundle];
      v78 = String._bridgeToObjectiveC()();
      v79 = String._bridgeToObjectiveC()();
      v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v82 = swift_allocObject();
      v82[2] = v81;
      v82[3] = v49;

      v83 = String._bridgeToObjectiveC()();

      v101[4] = sub_100F76D8C;
      v101[5] = v82;
      v101[0] = _NSConcreteStackBlock;
      v101[1] = *"";
      v101[2] = sub_10068B39C;
      v101[3] = &unk_1018A92A8;
      v84 = _Block_copy(v101);

      v85 = objc_opt_self();
      v86 = [v85 actionWithTitle:v83 style:2 handler:v84];
      _Block_release(v84);

      [v53 addAction:v86];
      v87 = [v100 mainBundle];
      v88 = String._bridgeToObjectiveC()();
      v89 = String._bridgeToObjectiveC()();
      v90 = [v87 localizedStringForKey:v88 value:v89 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v91 = String._bridgeToObjectiveC()();

      v92 = [v85 actionWithTitle:v91 style:1 handler:0];

      [v53 addAction:v92];
      [v98 presentViewController:v53 animated:1 completion:0];
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