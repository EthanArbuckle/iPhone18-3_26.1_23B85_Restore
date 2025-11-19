uint64_t sub_10033DAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v5 - 8);
  v7 = (v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = v32 - v9;
  v11 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v14 - 8);
  v16 = v32 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_10033F820(a4);
    v19 = type metadata accessor for IndexPath();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
    sub_10033B470(v16);
    sub_1000095E8(v16, &unk_10118BCE0);
    v32[0] = *(a4 + 16);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v21;
    v23 = type metadata accessor for URL();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    sub_10033F418(v18 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_pageProperties, v7, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v20, v22, 14, 44, v10, 0, 0, 12, v13, 0, 0, 0xFF00u, v7, 0);
    v24 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v25 = sub_10053771C();
    v27 = v26;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v28 = qword_101218AD0;
    v29 = GroupActivitiesManager.hasJoined.getter();
    v30 = GroupActivitiesManager.participantsCount.getter();
    v31 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v24) + 0xB8))(v13, v25, v27, v29 & 1, v30, *(v28 + v31));

    return sub_10033F754(v13, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

void sub_10033DF7C(uint64_t a1, char *a2)
{
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock[-1] - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v13 = &aBlock[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager];
  if (v14)
  {
    swift_beginAccess();
    v15 = *(v14 + 72);
    if (*(v15 + 16))
    {
      sub_10033F418(v15 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v13, type metadata accessor for Lyrics.TextLine);
      v16 = *&a2[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource];
      if (!v16)
      {
LABEL_12:
        __break(1u);
        return;
      }

      v17 = v16;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_10033F754(v13, type metadata accessor for Lyrics.TextLine);
        sub_1000095E8(v5, &unk_10118BCE0);
        return;
      }

      (*(v7 + 32))(v9, v5, v6);
      sub_100339E90();
      v19 = v18;
      v20 = sub_100338DE4();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v22 = [v20 layoutAttributesForItemAtIndexPath:isa];

      if (v22)
      {
        v29 = v7;
        v23 = objc_opt_self();
        v24 = swift_allocObject();
        v24[2] = a2;
        v24[3] = 0;
        v24[4] = v19;
        v25 = swift_allocObject();
        *(v25 + 16) = sub_10033F3B8;
        *(v25 + 24) = v24;
        aBlock[4] = sub_100029B6C;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100029B9C;
        aBlock[3] = &unk_1010A77A0;
        v26 = _Block_copy(aBlock);
        v27 = a2;

        [v23 performWithoutAnimation:v26];
        _Block_release(v26);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          [v22 frame];
          CGRectGetMinY(v31);
          [v22 frame];
          CGRectGetWidth(v32);
          [v22 frame];
          CGRectGetHeight(v33);

          (*(v29 + 8))(v9, v6);
          sub_10033F754(v13, type metadata accessor for Lyrics.TextLine);

          return;
        }

        __break(1u);
        goto LABEL_12;
      }

      (*(v7 + 8))(v9, v6);
      sub_10033F754(v13, type metadata accessor for Lyrics.TextLine);
    }
  }
}

uint64_t sub_10033E484(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10033F338;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A7660;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000296C8(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_10002489C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

void sub_10033E754(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v80 - v5;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v80 - v12;
  __chkstk_darwin(v14);
  v16 = &v80 - v15;
  v17 = type metadata accessor for Lyrics.TextLine(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v94 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager);
  if (!v20)
  {
    return;
  }

  swift_beginAccess();
  v21 = *(v20 + 72);
  if (!*(v21 + 16))
  {
    return;
  }

  v22 = v94;
  sub_10033F418(v21 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v94, type metadata accessor for Lyrics.TextLine);
  v23 = *(a1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource);
  if (!v23)
  {
    goto LABEL_45;
  }

  v24 = v23;
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10033F754(v22, type metadata accessor for Lyrics.TextLine);
    sub_1000095E8(v6, &unk_10118BCE0);
    return;
  }

  v84 = a2;
  (*(v8 + 32))(v16, v6, v7);
  v25 = sub_100338DE4();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v27 = a1;
  v28 = [v25 cellForItemAtIndexPath:isa];

  v87 = v28;
  if (!v28)
  {
    (*(v8 + 8))(v16, v7);
    sub_10033F754(v22, type metadata accessor for Lyrics.TextLine);
    return;
  }

  v91 = v10;
  v96 = v16;
  v92 = v8;
  v29 = OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView;
  v30 = [*(v27 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController____lazy_storage___collectionView) indexPathsForVisibleItems];
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v81 = v31;
  v32 = *(v31 + 16);
  v100 = v27;
  v95 = v29;
  if (v32)
  {
    v98 = *(v92 + 16);
    v33 = v81 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
    v97 = *(v92 + 72);
    v99 = (v92 + 16);
    v34 = (v92 + 8);
    v35 = v32;
    v90 = v7;
    v98(v13, v33, v7);
    while (1)
    {
      v36 = *(v100 + v29);
      v37 = IndexPath._bridgeToObjectiveC()().super.isa;
      v38 = [v36 cellForItemAtIndexPath:v37];

      if (v38)
      {
        _s8LineCellCMa();
        v39 = swift_dynamicCastClass();
        if (v39)
        {
          v40 = v39;
          v41 = IndexPath.item.getter();
          if (v41 >= IndexPath.item.getter() && (v42 = IndexPath.item.getter(), IndexPath.item.getter() >= v42))
          {
            [v40 setHidden:1];
          }

          else
          {
            v43 = v38;
            [v40 frame];
            [v40 setFrame:?];
            [v40 setAlpha:0.0];
          }

          v7 = v90;
          v29 = v95;
        }
      }

      (*v34)(v13, v7);
      v33 += v97;
      if (!--v35)
      {
        break;
      }

      v98(v13, v33, v7);
    }
  }

  v44 = swift_allocObject();
  v86 = v44;
  *(v44 + 16) = 0;
  v45 = (v44 + 16);
  v85 = swift_allocObject();
  *(v85 + 16) = 0;
  if (!v32)
  {

    v53 = *(v92 + 8);
    v51 = v96;
LABEL_40:
    v53(v51, v7);
    sub_10033F754(v94, type metadata accessor for Lyrics.TextLine);

    return;
  }

  v46 = v92;
  v47 = v81 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
  v82 = v45;
  swift_beginAccess();
  v49 = *(v46 + 16);
  v46 += 16;
  v48 = v49;
  v83 = &v103;
  v99 = (v46 - 8);
  v50 = *(v46 + 56);
  v51 = v96;
  v52 = v91;
  v92 = v46;
  v97 = v49;
  v93 = v50;
  v49(v91, v47, v7);
  while (1)
  {
    v54 = IndexPath.item.getter();
    if (v54 == IndexPath.item.getter())
    {
      v53 = *v99;
      (*v99)(v52, v7);
      goto LABEL_22;
    }

    v98 = v32;
    v55 = v7;
    v56 = v100;
    v57 = v95;
    v58 = *(v100 + v95);
    v59 = IndexPath._bridgeToObjectiveC()().super.isa;
    v60 = [v58 layoutAttributesForItemAtIndexPath:v59];

    if (!v60)
    {
      v53 = *v99;
      v7 = v55;
      (*v99)(v52, v55);
LABEL_36:
      v48 = v97;
      v32 = v98;
      v50 = v93;
      goto LABEL_22;
    }

    v61 = *(v56 + v57);
    v62 = v52;
    v63 = IndexPath._bridgeToObjectiveC()().super.isa;
    v64 = [v61 cellForItemAtIndexPath:v63];

    if (!v64)
    {
      v53 = *v99;
      v7 = v55;
      (*v99)(v62, v55);

      v51 = v96;
      v52 = v62;
      goto LABEL_36;
    }

    v7 = v55;
    if (qword_10117F5C0 != -1)
    {
      swift_once();
    }

    v65 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_101218A90 timingParameters:0.0];
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 24) = v60;
    v105 = sub_10033F340;
    v106 = v66;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v103 = sub_10002BC98;
    v104 = &unk_1010A76D8;
    v67 = _Block_copy(&aBlock);
    v89 = v64;
    v88 = v60;

    [v65 addAnimations:v67];
    _Block_release(v67);
    v68 = swift_allocObject();
    v69 = v86;
    v68[2] = v85;
    v68[3] = v69;
    v70 = v87;
    v68[4] = v84;
    v68[5] = v70;
    v105 = sub_10033F3AC;
    v106 = v68;
    aBlock = _NSConcreteStackBlock;
    v102 = 1107296256;
    v71 = v65;
    v103 = sub_100338AB8;
    v104 = &unk_1010A7728;
    v72 = _Block_copy(&aBlock);

    v73 = v70;

    [v65 addCompletion:v72];
    _Block_release(v72);
    v74 = *(v69 + 16);
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    v32 = v98;
    if (v75)
    {
      break;
    }

    *v82 = v76;
    v77 = IndexPath.item.getter();
    v78 = IndexPath.item.getter();
    v79 = v77 - v78;
    if (__OFSUB__(v77, v78))
    {
      goto LABEL_43;
    }

    v48 = v97;
    v50 = v93;
    if (v79 < 0)
    {
      v75 = __OFSUB__(0, v79);
      v79 = v78 - v77;
      if (v75)
      {
        goto LABEL_44;
      }
    }

    [v71 startAnimationAfterDelay:v79 * 0.04];

    v53 = *v99;
    v52 = v91;
    (*v99)(v91, v7);
    v51 = v96;
LABEL_22:
    v47 += v50;
    if (!--v32)
    {

      goto LABEL_40;
    }

    v48(v52, v47, v7);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

id sub_10033F260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a2 + 16) = v11;
    result = swift_beginAccess();
    if (v11 == *(a3 + 16))
    {
      [*(a4 + 32) removeFromSuperview];
      return [a5 setHidden:0];
    }
  }

  return result;
}

id sub_10033F340()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v2 frame];
  [v1 setFrame:?];
  [v2 alpha];

  return [v1 setAlpha:?];
}

void sub_10033F3B8()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_100338DE4();
  [v4 setContentOffset:{v2, v3}];

  *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_didAdjustInitialContentOffset) = 1;
}

uint64_t sub_10033F418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033F480(uint64_t a1)
{
  v3 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10033DAB0(a1, v4, v5, v6);
}

uint64_t sub_10033F4F4(void *a1)
{
  v3 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s8LineCellCMa();
  result = swift_dynamicCastClass();
  if (result)
  {
    v11 = *(v1 + OBJC_IVAR____TtC5Music29LyricsSelectionViewController_dataSource);
    if (v11)
    {
      v12 = result;
      v13 = a1;
      v14 = v11;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        return sub_1000095E8(v5, &qword_101184020);
      }

      else
      {
        sub_1001EC250(v5, v9);
        *(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_position) = sub_10033ABD0(v9);
        sub_1007F3A40();
        v15 = sub_10033A9D4(v9);
        if (*(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) != v15)
        {
          *(v12 + OBJC_IVAR____TtCC5Music29LyricsSelectionViewController8LineCell_state) = v15;
          sub_1007F31FC();
        }

        return sub_10033F754(v9, type metadata accessor for Lyrics.TextLine);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10033F754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033F820(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_10118BE60);
  __chkstk_darwin(v4 - 8);
  v6 = &v73 - v5;
  v79 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v79 - 8);
  __chkstk_darwin(v79);
  v74 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v73 - v10;
  __chkstk_darwin(v12);
  v14 = &v73 - v13;
  __chkstk_darwin(v15);
  v17 = &v73 - v16;
  __chkstk_darwin(v18);
  v20 = &v73 - v19;
  v21 = swift_beginAccess();
  v22 = v1[9];
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_29;
  }

  v73 = v6;
  v24 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v77 = v20;
  v78 = v24;
  v25 = v7;
  v26 = v22 + v24;
  sub_1001EBDD4(v22 + v24, v20);
  v75 = v25;
  v76 = v17;
  v27 = *(v25 + 72);
  sub_1001EBDD4(v26 + v27 * (v23 - 1), v17);

  v28 = v23 + 1;
  while (--v28)
  {
    v29 = static Lyrics.TextLine.== infix(_:_:)(v26, a1);
    v26 += v27;
    if (v29)
    {

      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v30 = v2[10];

  v31 = sub_10048C144(a1, v30);

  if ((v31 & 1) == 0)
  {
LABEL_28:
    sub_1003407A4(v76);
    v21 = sub_1003407A4(v77);
    v7 = v75;
LABEL_29:
    (*(a1 + *(v79 + 64)))(v21);
    v49 = v7;
    v50 = String.count.getter();

    v2[8] = v50;
    sub_10010FC20(&qword_10118BE68);
    v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_100EBC6B0;
    sub_1001EBDD4(a1, v52 + v51);
    v2[9] = v52;

    v53 = v2[6];
    if (v53)
    {

      v53(v54);
      sub_100020438(v53);
    }

    goto LABEL_51;
  }

  v32 = *(a1 + 16);
  v33 = *(v77 + 2);
  if (v32 >= v33)
  {
    v55 = *(v76 + 2);
    v43 = __OFADD__(v55, 1);
    v56 = v55 + 1;
    if (!v43)
    {
      v57 = 0;
      v58 = _swiftEmptyArrayStorage;
      v59 = v74;
      v60 = v56 == v32;
      if (v56 >= v32)
      {
        goto LABEL_35;
      }

LABEL_33:
      v61 = v56 + 1;
      if ((v56 & 0x8000000000000000) != 0)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
      }

      else
      {
        while (1)
        {
          v63 = v2[5];
          if (v56 >= *(v63 + 16))
          {
            break;
          }

          v64 = sub_1001EBDD4(v63 + v78 + v56 * v27, v11);
          (*&v11[*(v79 + 64)])(v64);
          v65 = String.count.getter();

          v66 = v2[8];
          v43 = __OFADD__(v66, v65);
          v67 = v66 + v65;
          if (v43)
          {
            goto LABEL_60;
          }

          v2[8] = v67;
          sub_1001EBDD4(v11, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_10049930C(0, v58[2] + 1, 1, v58);
          }

          v69 = v58[2];
          v68 = v58[3];
          if (v69 >= v68 >> 1)
          {
            v58 = sub_10049930C(v68 > 1, v69 + 1, 1, v58);
          }

          v58[2] = v69 + 1;
          sub_1001EC250(v59, v58 + v78 + v69 * v27);
          sub_1003407A4(v11);
          v56 = v61;
          v60 = v61 == v32;
          if (v61 < v32)
          {
            goto LABEL_33;
          }

LABEL_35:
          v62 = !v60;
          if ((v62 | v57))
          {
            swift_beginAccess();
            sub_1001240CC(v58);
            swift_endAccess();
            v70 = v2[6];
            if (v70)
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }

          v57 = 1;
          v61 = v32;
          if ((v56 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
    }

    __break(1u);
    goto LABEL_62;
  }

  v34 = 0;
  v35 = v33 - 1;
  v36 = _swiftEmptyArrayStorage;
  v37 = v73;
  while (1)
  {
    if (v32 < v35)
    {
      v38 = v35 - 1;
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_17;
    }

    if ((v35 != v32) | v34 & 1)
    {
      break;
    }

    v34 = 1;
    v38 = v32;
    if ((v35 & 0x8000000000000000) != 0)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

LABEL_17:
    v39 = v2[5];
    if (v35 >= *(v39 + 16))
    {
      goto LABEL_57;
    }

    v40 = sub_1001EBDD4(v39 + v78 + v35 * v27, v14);
    (*&v14[*(v79 + 64)])(v40);
    v41 = String.count.getter();

    v42 = v2[8];
    v43 = __OFADD__(v42, v41);
    v44 = v42 + v41;
    if (v43)
    {
      goto LABEL_58;
    }

    v2[8] = v44;
    sub_1001EBDD4(v14, v37);
    v45 = v36[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v45 >= v36[3] >> 1)
    {
      v36 = sub_10049930C(isUniquelyReferenced_nonNull_native, v45 + 1, 1, v36);
    }

    v47 = v36 + v78;
    swift_arrayDestroy();
    v48 = v36[2];
    if (v27 < 0 || v27 >= v48 * v27)
    {
      swift_arrayInitWithTakeFrontToBack();
      ++v36[2];
      if (v27 > 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v27)
      {
        swift_arrayInitWithTakeBackToFront();
        ++v36[2];
LABEL_10:
        sub_1001EBDD4(v37, v47);
        goto LABEL_11;
      }

      v36[2] = v48 + 1;
    }

LABEL_11:
    sub_100340864(v37);
    sub_1003407A4(v14);
    v35 = v38;
  }

  swift_beginAccess();
  sub_1003BBB24(0, 0, v36);
  swift_endAccess();

  v70 = v2[6];
  if (!v70)
  {
    goto LABEL_50;
  }

LABEL_49:

  v70(v71);
  sub_100020438(v70);
LABEL_50:
  sub_1003407A4(v76);
  sub_1003407A4(v77);
LABEL_51:
  if (v2[2] >= v2[8])
  {
    return sub_10034017C();
  }

LABEL_62:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10033FF60(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v23[-v9];
  swift_beginAccess();
  v11 = v2[9];
  v12 = *(v11 + 16);

  if (v12)
  {
    v14 = 0;
    while (1)
    {
      if (v14 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_1001EBDD4(v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v10);
      v15 = static Lyrics.TextLine.== infix(_:_:)(v10, a1);
      result = sub_1003407A4(v10);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        goto LABEL_6;
      }
    }

    swift_beginAccess();
    sub_1004F401C(v14, v7);
    sub_1003407A4(v7);
    v16 = swift_endAccess();
    v17 = v2[6];
    if (v17)
    {

      v17(v18);
      v16 = sub_100020438(v17);
    }

    (*(a1 + *(v4 + 64)))(v16);
    v19 = String.count.getter();

    v20 = v2[8];
    v21 = __OFSUB__(v20, v19);
    v22 = v20 - v19;
    if (!v21)
    {
      v2[8] = v22;
      return sub_10034017C();
    }

LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_6:

    return sub_10034017C();
  }

  return result;
}

uint64_t sub_10034017C()
{
  v1 = v0;
  v62 = type metadata accessor for Lyrics.TextLine(0);
  v2 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v54 - v5;
  __chkstk_darwin(v7);
  v9 = &v54 - v8;
  __chkstk_darwin(v10);
  v12 = &v54 - v11;
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  swift_beginAccess();
  v1[10] = &_swiftEmptySetSingleton;

  swift_beginAccess();
  v19 = v1[9];
  v20 = *(v19 + 16);
  if (!v20)
  {
    v63 = v1[5];

    v50 = sub_10010FC20(&qword_101184038);
    v51 = sub_100340800();
    v52 = Sequence.exclude(_:)(sub_1003408CC, 0, v50, v51);

    v53 = sub_100670070(v52);

    v1[10] = v53;
  }

  v58 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v21 = v19 + v58;
  sub_1001EBDD4(v19 + v58, v18);
  v61 = *(v2 + 72);
  v55 = v15;
  result = sub_1001EBDD4(v21 + v61 * (v20 - 1), v15);
  v23 = *(v18 + 2);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v54 = v18;
  LODWORD(v59) = 0;
  v26 = v1[8];
  do
  {
    if (v25 <= 0)
    {
      if ((v25 != 0) | v59 & 1)
      {
        goto LABEL_15;
      }

      v27 = 0;
      LODWORD(v59) = 1;
    }

    else
    {
      v27 = v25 - 1;
    }

    v28 = v1[5];
    if (v25 >= *(v28 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v29 = sub_1001EBDD4(v28 + v58 + v25 * v61, v12);
    v30 = &v12[*(v62 + 64)];
    v31 = *v30;
    (*v30)(v29);
    v32 = String.count.getter();

    if (__OFADD__(v26, v32))
    {
      goto LABEL_33;
    }

    if (v1[2] < v26 + v32)
    {
      goto LABEL_14;
    }

    sub_1001EBDD4(v12, v6);
    swift_beginAccess();
    sub_1003B3560(v9, v6);
    sub_1003407A4(v9);
    v33 = swift_endAccess();
    v31(v33);
    v34 = String.count.getter();

    result = sub_1003407A4(v12);
    v25 = v27;
    v24 = __OFADD__(v26, v34);
    v26 += v34;
  }

  while (!v24);
  __break(1u);
LABEL_14:
  result = sub_1003407A4(v12);
LABEL_15:
  v35 = *(v55 + 2);
  v24 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v24)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v57 = 0;
  v37 = v1[8];
  v38 = v1[5];
  v39 = *(v38 + 16) - 1;
  v56 = v38;
  v58 += v38;
  v59 = v39;
  while (v36 < v59)
  {
    v40 = v36 + 1;
    if (v36 < 0)
    {
      goto LABEL_34;
    }

LABEL_22:
    if (v36 >= *(v56 + 16))
    {
      goto LABEL_35;
    }

    v41 = v60;
    v42 = sub_1001EBDD4(v58 + v36 * v61, v60);
    v43 = (v41 + *(v62 + 64));
    v44 = *v43;
    (*v43)(v42);
    v45 = String.count.getter();

    if (__OFADD__(v37, v45))
    {
      goto LABEL_36;
    }

    if (v1[2] < v37 + v45)
    {
      goto LABEL_28;
    }

    v46 = v60;
    sub_1001EBDD4(v60, v6);
    swift_beginAccess();
    sub_1003B3560(v9, v6);
    sub_1003407A4(v9);
    v47 = swift_endAccess();
    v44(v47);
    v48 = String.count.getter();

    result = sub_1003407A4(v46);
    v36 = v40;
    v24 = __OFADD__(v37, v48);
    v37 += v48;
    if (v24)
    {
      __break(1u);
LABEL_28:
      sub_1003407A4(v55);
      sub_1003407A4(v54);
      v49 = v60;
      return sub_1003407A4(v49);
    }
  }

  if (!((v36 != v59) | v57 & 1))
  {
    v57 = 1;
    v40 = v59;
    if (v36 < 0)
    {
      goto LABEL_34;
    }

    goto LABEL_22;
  }

  sub_1003407A4(v55);
  v49 = v54;
  return sub_1003407A4(v49);
}

BOOL sub_1003406B0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(a1 + *(v2 + 64)))();
  v3 = String.count.getter();

  v4 = sub_1001EBB88();
  v6 = 150;
  if ((v5 & 1) == 0)
  {
    v6 = v4;
  }

  return v6 < v3;
}

uint64_t sub_100340728()
{

  sub_100020438(*(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1003407A4(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100340800()
{
  result = qword_101184040;
  if (!qword_101184040)
  {
    sub_1001109D0(&qword_101184038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184040);
  }

  return result;
}

uint64_t sub_100340864(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_10118BE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003408E8(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v85 = a2;
  v3 = type metadata accessor for Actions.MetricsReportingContext();
  __chkstk_darwin(v3 - 8);
  v87 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v5 - 8);
  v86 = &v77 - v6;
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v77 - v8;
  v10 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v10 - 8);
  v81 = &v77 - v11;
  v78 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v78);
  v79 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicPin.Item();
  v82 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v16 - 8);
  v18 = &v77 - v17;
  v84 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v80 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for MusicPin.Action();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v77 - v25;
  __chkstk_darwin(v27);
  v29 = &v77 - v28;
  v89 = a1;
  MusicPin.action.getter();
  v30 = (*(v21 + 88))(v29, v20);
  if (v30 == enum case for MusicPin.Action.navigate(_:))
  {
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    v31 = v89;
    if (sub_100428914())
    {
      sub_1003413BC(v31, v85, 0);
      LODWORD(v85) = 28;
LABEL_6:
      v32 = type metadata accessor for MusicPin();
      sub_100344AD8(&qword_101197100);
      v89 = MusicItem.metricsTargetIdentifier.getter(v32);
      v34 = v33;
      v35 = type metadata accessor for URL();
      v36 = v86;
      (*(*(v35 - 8) + 56))(v86, 1, 1, v35);
      sub_10010FC20(&qword_10118BE78);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = MusicItem.metricsContentType.getter(v32);
      *(inited + 40) = v38;
      *(inited + 48) = 0;
      v39 = MetricsEvent.Click.ActionDetails.init(_:)(inited);
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = BYTE1(v44);
      v47 = v87;
      sub_1005A5B7C(v87);
      static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v89, v34, 16, v85, v36, v39, v41, v43, v45, v47);
      sub_100344B1C(v39, v41, v43, v45, v46);

      sub_100344D3C(v47, type metadata accessor for Actions.MetricsReportingContext);
      return sub_1000095E8(v36, &qword_101183A20);
    }

    v54 = type metadata accessor for IndexPath();
    (*(*(v54 - 8) + 56))(v9, 1, 1, v54);
    sub_100376BCC(v9, &v90);
    sub_1000095E8(v9, &unk_10118BCE0);
    static Alert.explicitRestrictedAlert(traitCollection:)(0, &v93);
    PresentationSource.present(_:)(&v93);
    sub_100344A84(&v93);
    return sub_10012BA6C(&v90);
  }

  else
  {
    v49 = enum case for MusicPin.Action.shuffle(_:);
    if (v30 == enum case for MusicPin.Action.play(_:) || v30 == enum case for MusicPin.Action.shuffle(_:))
    {
      result = sub_100341CD0(v89);
      if (result)
      {
        if (qword_10117F6D8 != -1)
        {
          swift_once();
        }

        MusicPin.item.getter();
        MusicPin.action.getter();
        (*(v21 + 104))(v23, v49, v20);
        v50 = static MusicPin.Action.== infix(_:_:)();
        v51 = *(v21 + 8);
        v51(v23, v20);
        v51(v26, v20);
        sub_10042BAAC(v15, v50 & 1, v18);
        (*(v82 + 8))(v15, v13);
        v52 = v83;
        v53 = v84;
        if ((*(v83 + 48))(v18, 1, v84) != 1)
        {
          v55 = v80;
          (*(v52 + 32))(v80, v18, v53);
          type metadata accessor for PlaybackIntentDescriptor(0);
          v56 = swift_allocBox();
          v58 = v57;
          v59 = v79;
          (*(v52 + 16))(v79, v55, v53);
          swift_storeEnumTagMultiPayload();
          v92 = 0;
          v90 = 0u;
          v91 = 0u;
          v60 = v88;
          v93.title.value._countAndFlagsBits = v88;
          v61 = v88;
          v62 = String.init<A>(reflecting:)();
          v93.message.value._object = &type metadata for Player.CommandIssuerIdentity;
          *&v93.style = &protocol witness table for Player.CommandIssuerIdentity;
          v93.title.value._countAndFlagsBits = v62;
          v93.title.value._object = v63;
          v64 = v61;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v59, &v90, 3, 0, 0, 1, 0, 1, v58, v60, &v93);
          v65 = PlaybackIntentDescriptor.playActivityInformation.getter();
          *&v90 = v65;
          *(&v90 + 1) = v68;
          *&v91 = v66;
          *(&v91 + 1) = v67;
          if (v68)
          {
            v69._countAndFlagsBits = 0x736E69702FLL;
            v69._object = 0xE500000000000000;
            String.append(_:)(v69);
            PlaybackIntentDescriptor.playActivityInformation.setter(v90, *(&v90 + 1), v91, *(&v91 + 1));
          }

          else
          {
            v70 = v65;
            v71 = v66;
            v72 = v67;
            sub_100344C3C(v65, 0, v66, v67);
            PlaybackIntentDescriptor.playActivityInformation.setter(v70, 0, v71, v72);
            sub_100344C88(v90, *(&v90 + 1), v91, *(&v91 + 1));
          }

          v73 = type metadata accessor for TaskPriority();
          v74 = v81;
          (*(*(v73 - 8) + 56))(v81, 1, 1, v73);
          type metadata accessor for MainActor();

          v75 = static MainActor.shared.getter();
          v76 = swift_allocObject();
          v76[2] = v75;
          v76[3] = &protocol witness table for MainActor;
          v76[4] = v56;
          sub_1001F4F78(0, 0, v74, &unk_100EC77A8, v76);

          (*(v52 + 8))(v55, v53);

          LODWORD(v85) = 31;
          goto LABEL_6;
        }

        return sub_1000095E8(v18, &unk_10118CDB0);
      }
    }

    else
    {
      return (*(v21 + 8))(v29, v20);
    }
  }

  return result;
}

uint64_t sub_1003413BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v74 = a2;
  v5 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v5 - 8);
  v72 = &v71 - v6;
  v7 = type metadata accessor for MusicPin();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v71 - v12;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v71 - v16;
  v75 = v3;
  v18 = [v3 tabBarController];
  if (v18)
  {
    v19 = v18;
    sub_100344AD8(&qword_10118BE70);
    dispatch thunk of Identifiable.id.getter();
    v77 = 0xD000000000000014;
    v78 = 0x8000000100E3E560;
    String.append(_:)(aBlock);

    v20 = String._bridgeToObjectiveC()();

    v21 = [v19 tabForIdentifier:v20];

    if (v21)
    {
      if (qword_10117F750 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000060E4(v22, static Logger.libraryView);
      v23 = v21;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock._countAndFlagsBits = v27;
        *v26 = 136446210;
        v28 = v23;
        v29 = [v28 description];
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        v33 = sub_1000105AC(v30, v32, &aBlock._countAndFlagsBits);

        *(v26 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v24, v25, "Selecting pin tab=%{public}s", v26, 0xCu);
        sub_10000959C(v27);
      }

      v34 = v76;
      v35 = [v23 viewController];
      sub_100342C94(v35, v75, v34, v74);

      v36 = swift_allocObject();
      *(v36 + 16) = v19;
      *(v36 + 24) = v23;
      if (v34)
      {
        v37 = swift_allocObject();
        *(v37 + 16) = sub_100344858;
        *(v37 + 24) = v36;
        v86 = sub_10018A020;
        v87 = v37;
        aBlock._countAndFlagsBits = _NSConcreteStackBlock;
        aBlock._object = 1107296256;
        v84 = sub_10002BC98;
        v85 = &unk_1010A7B10;
        v38 = _Block_copy(&aBlock);
        v39 = v23;
        v40 = v19;
        swift_unknownObjectRetain();

        [v34 addAnimations:v38];

        _Block_release(v38);
        return swift_unknownObjectRelease();
      }

      v69 = v23;
      v70 = v19;
      [v70 setSelectedTab:v69];
    }
  }

  v42 = *(v8 + 16);
  v42(v17, a1, v7);
  v43 = objc_allocWithZone(_s6PinTabCMa(0));
  v42(&v43[OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab6PinTab_pin], v17, v7);
  v42(v13, v17, v7);
  sub_1007484FC(v13, &aBlock._countAndFlagsBits);
  v44 = sub_10003622C(&aBlock);
  sub_10032A8A4();
  v45 = *(v8 + 8);
  v45(v17, v7);
  v73 = sub_100327974(v44, a1);

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, static Logger.libraryView);
  v42(v10, a1, v7);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v77 = v50;
    *v49 = 136446210;
    sub_100344AD8(&qword_10118BB00);
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    v53 = v52;
    v45(v10, v7);
    v54 = sub_1000105AC(v51, v53, &v77);

    *(v49 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v47, v48, "Unable to find matching tab for pin=%{public}s — Performing manual navigation…", v49, 0xCu);
    sub_10000959C(v50);
  }

  else
  {

    v45(v10, v7);
  }

  v55 = v73;
  v56 = v73;
  v58 = v75;
  v57 = v76;
  sub_100342C94(v55, v75, v76, v74);

  v59 = swift_allocObject();
  *(v59 + 16) = v58;
  *(v59 + 24) = v56;
  if (v57)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = sub_100344850;
    *(v60 + 24) = v59;
    v81 = sub_100029B94;
    v82 = v60;
    v77 = _NSConcreteStackBlock;
    v78 = 1107296256;
    v79 = sub_10002BC98;
    v80 = &unk_1010A7A98;
    v61 = _Block_copy(&v77);
    swift_unknownObjectRetain();
    v62 = v56;
    v63 = v58;

    [v57 addAnimations:v61];

    _Block_release(v61);
    return swift_unknownObjectRelease();
  }

  v64 = v56;
  v65 = [v58 navigationController];
  if (v65)
  {
    v66 = v65;
    v67 = v72;
    UIViewController.traitOverrides.getter();
    v68 = type metadata accessor for UITraitOverrides();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    UINavigationController.push(_:traitOverrides:animated:)(v64, v67, 1);

    return sub_1000095E8(v67, &unk_10119F3A0);
  }
}

uint64_t sub_100341CD0(void (*a1)(char *, uint64_t, uint64_t))
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v77 = v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v76 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v6 - 8);
  v80 = v72 - v7;
  v84 = type metadata accessor for MusicPin.Item();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v9 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v10 - 8);
  v78 = v72 - v11;
  v82 = type metadata accessor for Artist();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v75 = v72 - v14;
  v15 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v15 - 8);
  v17 = v72 - v16;
  v18 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v74 = v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v72 - v22;
  v24 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = v72 - v29;
  sub_100537A68(a1, v72 - v29);
  v31 = *(v25 + 16);
  v85 = v30;
  v31(v27, v30, v24);
  if ((*(v25 + 88))(v27, v24) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v25 + 8))(v27, v24);
    goto LABEL_13;
  }

  v32 = *(v25 + 96);
  v73 = v24;
  v32(v27, v24);
  (*(v19 + 32))(v23, v27, v18);
  v72[1] = a1;
  MusicPin.genericMusicItem.getter(v17);
  v33 = type metadata accessor for GenericMusicItem();
  v34 = *(v33 - 8);
  if ((*(v34 + 48))(v17, 1, v33) == 1)
  {
    (*(v19 + 8))(v23, v18);
    sub_1000095E8(v17, &unk_101189DA0);
    v86 = 0u;
    v87 = 0u;
    v88 = 0;
  }

  else
  {
    GenericMusicItem.innerMusicItem.getter(&v86);
    (*(v34 + 8))(v17, v33);
    if (*(&v87 + 1))
    {
      sub_100059A8C(&v86, &v91);
      sub_100008FE4(&v91, &v86);
      sub_10010FC20(&unk_10118AB50);
      v35 = v75;
      v36 = v82;
      v37 = v18;
      if (!swift_dynamicCast() || ((*(v81 + 8))(v35, v36), v38 = v74, (*(v19 + 104))(v74, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:), v37), v39 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)(), v40 = *(v19 + 8), v40(v38, v37), (v39 & 1) == 0))
      {
        v41 = type metadata accessor for IndexPath();
        v42 = v78;
        (*(*(v41 - 8) + 56))(v78, 1, 1, v41);
        sub_100376BCC(v42, &v86);
        sub_1000095E8(v42, &unk_10118BCE0);
        object = v91.message.value._object;
        v44 = *&v91.style;
        v45 = sub_10000954C(&v91, v91.message.value._object);
        v46 = v85;
        sub_10053A5D0(v85, v45, &v86, object, v44);
        sub_10012BA6C(&v86);
        (*(v19 + 8))(v23, v37);
        (*(v25 + 8))(v46, v73);
        sub_10000959C(&v91);
        return 0;
      }

      v40(v23, v37);
      sub_10000959C(&v91);
      goto LABEL_12;
    }

    (*(v19 + 8))(v23, v18);
  }

  sub_1000095E8(&v86, &qword_10118B990);
LABEL_12:
  v24 = v73;
LABEL_13:
  v48 = v83;
  MusicPin.item.getter();
  v49 = v84;
  if ((*(v48 + 88))(v9, v84) == enum case for MusicPin.Item.artist(_:))
  {
    (*(v48 + 96))(v9, v49);
    v50 = v81;
    v51 = v79;
    v52 = v9;
    v53 = v82;
    (*(v81 + 32))(v79, v52, v82);
    v54 = v80;
    Artist.libraryAddedDate.getter();
    (*(v50 + 8))(v51, v53);
    v55 = type metadata accessor for Date();
    LODWORD(v53) = (*(*(v55 - 8) + 48))(v54, 1, v55);
    sub_1000095E8(v54, &qword_101188C20);
    if (v53 == 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v56 = String.init(localized:table:bundle:locale:comment:)();
      v58 = v57;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v59 = String.init(localized:table:bundle:locale:comment:)();
      v60 = v24;
      v62 = v61;
      sub_10010FC20(&qword_10118BE80);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100EBC6B0;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v64 = String.init(localized:table:bundle:locale:comment:)();
      Alert.Action.init(id:title:role:perform:)(0, 0, v64, v65, 2, 0, 0, v89);
      v66 = v89[1];
      *(v63 + 32) = v89[0];
      *(v63 + 48) = v66;
      *(v63 + 64) = v89[2];
      *(v63 + 80) = v90;
      v93.is_nil = v63;
      v67.value._countAndFlagsBits = v56;
      v67.value._object = v58;
      v68.value._countAndFlagsBits = v59;
      v68.value._object = v62;
      v92.value.super.isa = 0;
      v92.is_nil = 0;
      v93.value = 1;
      Alert.init(title:message:image:style:preferredActionIndex:actions:)(&v91, v67, v68, v92, MusicCore_Alert_Style_alert, v93, v71);
      v69 = type metadata accessor for IndexPath();
      v70 = v78;
      (*(*(v69 - 8) + 56))(v78, 1, 1, v69);
      sub_100376BCC(v70, &v86);
      sub_1000095E8(v70, &unk_10118BCE0);
      PresentationSource.present(_:)(&v91);
      sub_100344A84(&v91);
      sub_10012BA6C(&v86);
      (*(v25 + 8))(v85, v60);
      return 0;
    }
  }

  else
  {
    (*(v48 + 8))(v9, v49);
  }

  (*(v25 + 8))(v85, v24);
  return 1;
}

uint64_t sub_1003428B8(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for PlaybackIntentDescriptor(0);
  v1[6] = swift_task_alloc();
  v1[7] = swift_projectBox();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10034298C, v3, v2);
}

uint64_t sub_10034298C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[7];
  swift_beginAccess();
  sub_100344CD4(v2, v1, type metadata accessor for PlaybackIntentDescriptor);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_100342AA0;
  v4 = v0[6];

  return PlaybackController.add(_:route:)(v4, 0);
}

uint64_t sub_100342AA0()
{
  v2 = *v1;
  v2[12] = v0;

  v3 = v2[6];
  if (v0)
  {

    sub_100344D3C(v3, type metadata accessor for PlaybackIntentDescriptor);
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_100344DA4;
  }

  else
  {
    sub_100344D3C(v3, type metadata accessor for PlaybackIntentDescriptor);
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_100342C10;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100342C10()
{
  v1 = v0[12];
  v2 = v0[5];

  *v2 = v1 != 0;

  v3 = v0[1];

  return v3();
}

void sub_100342C94(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v11 - 8);
  if (a1)
  {
    UIViewController.traitOverrides.getter();
    UIViewController.traitOverrides.setter();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      *&a1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*(a2 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController) + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);
    }

    if (!a3)
    {
      v18[1] = sub_100009F78(0, &qword_101184710);
      v12 = [objc_allocWithZone(UIZoomTransitionOptions) init];
      UIZoomTransitionOptions.alignmentRectProvider.setter();
      v13 = v9;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v13 + 16))(v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
      v15 = (*(v13 + 80) + 24) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      (*(v13 + 32))(v16 + v15, v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

      v17 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

      [a1 setPreferredTransition:v17];
    }
  }
}

id sub_100342F68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = sub_1005A5F8C();

  v3 = sub_1005FF72C();
  return v3;
}

id sub_100342FEC(void *a1, void *a2)
{
  v4 = sub_10010FC20(&unk_10119F3A0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v11 - v6;
  result = [a1 navigationController];
  if (result)
  {
    v9 = result;
    UIViewController.traitOverrides.getter();
    v10 = type metadata accessor for UITraitOverrides();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    UINavigationController.push(_:traitOverrides:animated:)(a2, v7, 1);

    return sub_1000095E8(v7, &unk_10119F3A0);
  }

  return result;
}

id sub_100343100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v32 = a1;
  v5 = sub_10010FC20(&unk_1011838D0);
  v39 = *(v5 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v5 - 8);
  v38 = &v31 - v6;
  v44 = type metadata accessor for IndexPath();
  v36 = *(v44 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v44);
  v43 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPin();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v31 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v14 = *(v9 + 16);
  v14(v13, a1, v8);
  v15 = *(v9 + 80);
  v33 = v15 | 7;
  v16 = swift_allocObject();
  v34 = *(v9 + 32);
  v35 = v16;
  v34(v16 + ((v15 + 16) & ~v15), v13, v8);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14(&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v8);
  v18 = v36;
  (*(v36 + 16))(v43, a2, v44);
  v19 = v38;
  sub_1000089F8(v41, v38, &unk_1011838D0);
  v20 = (v15 + 24) & ~v15;
  v21 = v18;
  v22 = (v20 + v10 + *(v18 + 80)) & ~*(v18 + 80);
  v23 = (v37 + *(v39 + 80) + v22) & ~*(v39 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  v34(v24 + v20, v31, v8);
  (*(v21 + 32))(v24 + v22, v43, v44);
  sub_10032E8BC(v19, v24 + v23);
  v25 = objc_opt_self();
  v49 = sub_1003448DC;
  v50 = v35;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100747E6C;
  v48 = &unk_1010A7BD8;
  v26 = _Block_copy(&aBlock);

  v49 = sub_10034493C;
  v50 = v24;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100747EBC;
  v48 = &unk_1010A7C00;
  v27 = _Block_copy(&aBlock);

  v28 = isa;
  v29 = [v25 configurationWithIdentifier:isa previewProvider:v26 actionProvider:v27];

  _Block_release(v27);
  _Block_release(v26);
  return v29;
}

uint64_t sub_1003435DC(uint64_t a1)
{
  v2 = type metadata accessor for MusicPin();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1007350F8(v5, 1);
}

unint64_t sub_10034369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v153 = a4;
  v178 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_1011838D0);
  v158 = *(v10 - 8);
  v159 = *(v158 + 64);
  __chkstk_darwin(v10 - 8);
  v160 = &v135 - v11;
  v179 = type metadata accessor for MusicPin();
  v174 = *(v179 - 8);
  __chkstk_darwin(v179);
  v157 = v12;
  v173 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Actions.PlaybackContext();
  v14 = *(v13 - 8);
  v167 = v13;
  v168 = v14;
  __chkstk_darwin(v13);
  v172 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v15;
  __chkstk_darwin(v16);
  v176 = &v135 - v17;
  v18 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v18 - 8);
  v20 = &v135 - v19;
  v166 = type metadata accessor for MusicPin.Action();
  v21 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v163 = &v135 - v24;
  v165 = type metadata accessor for MusicPin.Item();
  v175 = *(v165 - 8);
  __chkstk_darwin(v165);
  v162 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v26 - 8);
  v161 = &v135 - v27;
  v28 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v28 - 8);
  v154 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v155 = &v135 - v31;
  __chkstk_darwin(v32);
  v170 = (&v135 - v33);
  __chkstk_darwin(v34);
  v171 = &v135 - v35;
  v36 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v36 - 8);
  v38 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v177 = &v135 - v40;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v42 = Strong;
  v143 = v20;
  v152 = v38;
  v147 = v7;
  v148 = v6;
  v43 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v144 = v192[0];
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v145 = a5;
  v146 = v9;
  v44 = qword_101218C40;
  v45 = v162;
  MusicPin.item.getter();
  v46 = v163;
  MusicPin.action.getter();
  v47 = *(v21 + 104);
  v48 = v164;
  v138 = enum case for MusicPin.Action.shuffle(_:);
  v49 = v166;
  v139 = v21 + 104;
  v137 = v47;
  v47(v164);
  v50 = static MusicPin.Action.== infix(_:_:)();
  v51 = *(v21 + 8);
  v51(v48, v49);
  v142 = v21 + 8;
  v140 = v51;
  v51(v46, v49);
  v52 = v161;
  v141 = v44;
  sub_10042BAAC(v45, v50 & 1, v161);
  v53 = *(v175 + 8);
  v175 += 8;
  v53(v45, v165);
  v54 = v171;
  PlaybackIntentDescriptor.IntentType.init(_:)(v52, v171);
  v136 = sub_10010FC20(&unk_101183930);
  v55 = swift_allocObject();
  v135 = xmmword_100EBDC20;
  *(v55 + 16) = xmmword_100EBDC20;
  v192[0] = v42;
  v56 = v42;
  v57 = String.init<A>(reflecting:)();
  *(v55 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v55 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v55 + 32) = v57;
  *(v55 + 40) = v58;
  v59 = v179;
  *(v55 + 96) = v179;
  *(v55 + 104) = &protocol witness table for MusicPin;
  v60 = sub_10001C8B8((v55 + 72));
  v150 = *(v174 + 16);
  v151 = v174 + 16;
  v150(v60, v178, v59);
  v61 = static Player.CommandIssuer<>.combining(_:)();
  v63 = v62;

  v192[3] = &type metadata for Player.CommandIssuerIdentity;
  v192[4] = &protocol witness table for Player.CommandIssuerIdentity;
  v192[0] = v61;
  v192[1] = v63;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v64 = qword_101218AD8;
  sub_1000089F8(v54, v170, &unk_1011838E0);
  v149 = v64;
  v65 = UIViewController.playActivityInformation.getter();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1000089F8(v192, &v187, &unk_101183910);
  v72 = v168;
  v169 = v56;
  if (v188)
  {
    sub_100059A8C(&v187, v191);
    v73 = v152;
  }

  else
  {
    v186[0] = v56;
    sub_100009F78(0, &qword_101183D40);
    v75 = v56;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v193, v191);
      v72 = v168;
      v73 = v152;
    }

    else
    {
      v195 = 0;
      v193 = 0u;
      v194 = 0u;
      v191[0] = v75;
      v76 = v75;
      v77 = String.init<A>(reflecting:)();
      v191[3] = &type metadata for Player.CommandIssuerIdentity;
      v191[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v191[0] = v77;
      v191[1] = v78;
      v72 = v168;
      v73 = v152;
      if (*(&v194 + 1))
      {
        sub_1000095E8(&v193, &unk_101183910);
      }
    }

    if (v188)
    {
      sub_1000095E8(&v187, &unk_101183910);
    }
  }

  v79 = v177;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v149, v170, v65, v67, v69, v71, v191, v177);
  sub_1000095E8(v171, &unk_1011838E0);
  sub_1000095E8(v192, &unk_101183910);
  v80 = v167;
  (*(v72 + 56))(v79, 0, 1, v167);
  v81 = type metadata accessor for IndexPath();
  v82 = *(v81 - 8);
  v83 = v143;
  (*(v82 + 16))(v143, v153, v81);
  (*(v82 + 56))(v83, 0, 1, v81);
  v84 = v169;
  sub_100376BCC(v83, v192);
  sub_1000095E8(v83, &unk_10118BCE0);
  sub_1000089F8(v192, &v187, &unk_1011845E0);
  if (v190 == 1)
  {
    v195 = 0;
    v193 = 0u;
    v194 = 0u;
    v196 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v84, &v193, v191);
    v85 = v176;
    if (v190 != 1)
    {
      sub_1000095E8(&v187, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v187, v191);
    v85 = v176;
  }

  sub_1000089F8(v177, v73, &unk_10118AB20);
  v86 = *(v72 + 48);
  if ((v86)(v73, 1, v80) == 1)
  {
    v170 = v86;
    v171 = (v72 + 48);
    v87 = v162;
    v88 = v178;
    MusicPin.item.getter();
    v89 = v163;
    MusicPin.action.getter();
    v90 = v164;
    v91 = v166;
    v137(v164, v138, v166);
    v92 = static MusicPin.Action.== infix(_:_:)();
    v93 = v53;
    v94 = v140;
    v140(v90, v91);
    v94(v89, v91);
    v95 = v161;
    sub_10042BAAC(v87, v92 & 1, v161);
    v93(v87, v165);
    v96 = v155;
    PlaybackIntentDescriptor.IntentType.init(_:)(v95, v155);
    v97 = swift_allocObject();
    *(v97 + 16) = v135;
    *&v187 = v84;
    v98 = v84;
    v99 = String.init<A>(reflecting:)();
    *(v97 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v97 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v97 + 32) = v99;
    *(v97 + 40) = v100;
    v101 = v179;
    *(v97 + 96) = v179;
    *(v97 + 104) = &protocol witness table for MusicPin;
    v102 = sub_10001C8B8((v97 + 72));
    v150(v102, v88, v101);
    v103 = static Player.CommandIssuer<>.combining(_:)();
    v105 = v104;

    v188 = &type metadata for Player.CommandIssuerIdentity;
    v189 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v187 = v103;
    *(&v187 + 1) = v105;
    sub_1000089F8(v96, v154, &unk_1011838E0);
    v106 = v149;
    v107 = UIViewController.playActivityInformation.getter();
    v109 = v108;
    v111 = v110;
    v113 = v112;
    sub_1000089F8(&v187, &v184, &unk_101183910);
    if (v185)
    {
      sub_100059A8C(&v184, v186);
      v72 = v168;
      v85 = v176;
    }

    else
    {
      v183 = v98;
      sub_100009F78(0, &qword_101183D40);
      v114 = v98;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v180, v186);
        v85 = v176;
        v72 = v168;
      }

      else
      {
        v182 = 0;
        v180 = 0u;
        v181 = 0u;
        v186[0] = v114;
        v115 = v114;
        v116 = String.init<A>(reflecting:)();
        v186[3] = &type metadata for Player.CommandIssuerIdentity;
        v186[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v186[0] = v116;
        v186[1] = v117;
        v85 = v176;
        v72 = v168;
        if (*(&v181 + 1))
        {
          sub_1000095E8(&v180, &unk_101183910);
        }
      }

      if (v185)
      {
        sub_1000095E8(&v184, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v106, v154, v107, v109, v111, v113, v186, v85);
    sub_1000095E8(v155, &unk_1011838E0);
    sub_1000095E8(&v187, &unk_101183910);
    v118 = v152;
    if (v170(v152, 1, v167) != 1)
    {
      sub_1000095E8(v118, &unk_10118AB20);
    }
  }

  else
  {
    sub_100314A80(v73, v85);
  }

  sub_100344AD8(&qword_10118BB00);
  v119 = v178;
  v120 = v179;
  v175 = dispatch thunk of CustomStringConvertible.description.getter();
  v171 = v121;
  v170 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v150(v173, v119, v120);
  sub_100344CD4(v85, v172, type metadata accessor for Actions.PlaybackContext);
  v122 = v160;
  sub_1000089F8(v145, v160, &unk_1011838D0);
  sub_10012B7A8(v191, &v187);
  v123 = v174;
  v124 = (*(v174 + 80) + 16) & ~*(v174 + 80);
  v125 = (v157 + *(v72 + 80) + v124) & ~*(v72 + 80);
  v126 = (v156 + *(v158 + 80) + v125) & ~*(v158 + 80);
  v127 = (v159 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
  v128 = (v127 + 103) & 0xFFFFFFFFFFFFFFF8;
  v129 = swift_allocObject();
  (*(v123 + 32))(v129 + v124, v173, v179);
  sub_100314A80(v172, v129 + v125);
  sub_10032E8BC(v122, v129 + v126);
  sub_10012B828(&v187, v129 + v127);
  *(v129 + v128) = v144;
  *(v129 + ((v128 + 15) & 0xFFFFFFFFFFFFFFF8)) = v170;

  v130 = v146;
  UUID.init()();
  v131 = UUID.uuidString.getter();
  v133 = v132;
  (*(v147 + 8))(v130, v148);
  type metadata accessor for ActionMenu();
  swift_allocObject();
  v197._countAndFlagsBits = v175;
  v197._object = v171;
  ActionMenu.init(id:type:subtitle:debugDescription:sort:builder:)(v131, v133, 0, 0, 0, v197, 0, sub_10032E92C, v129);

  v74 = ActionMenu.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);

  sub_100344D3C(v176, type metadata accessor for Actions.PlaybackContext);
  sub_10012BA6C(v191);
  sub_1000095E8(v192, &unk_1011845E0);
  sub_1000095E8(v177, &unk_10118AB20);
  return v74;
}

id sub_100344868()
{
  type metadata accessor for IndexPath();

  return sub_100342F68();
}

uint64_t sub_1003448DC()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1003435DC(v2);
}

unint64_t sub_10034493C(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicPin() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_10034369C(a1, v10, v1 + v4, v1 + v7, v11);
}

uint64_t sub_100344AD8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_100344B1C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 3 || a5 == 2)
  {
  }

  if (a5 == 1)
  {
    return sub_100344B48(result);
  }

  return result;
}

void *sub_100344B48(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100344B88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1003428B8(a1);
}

void sub_100344C3C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_10002D6A4(a3, a4);
  }
}

void sub_100344C88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100029CA4(a3, a4);
  }
}

uint64_t sub_100344CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100344D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t initializeBufferWithCopyOfBuffer for ArtworkSmartTransition.Data(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ArtworkSmartTransition.Data(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ArtworkSmartTransition.Data(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

id sub_100344EF4()
{
  result = [v0 transitionInfo];
  if (result)
  {
    v2 = result;
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    started = MPCNowPlayingContentItemTransitionInfoKeyStartTime.getter();
    if (*(v3 + 16))
    {
      v6 = sub_100019C10(started, v5);
      v8 = v7;

      if (v8)
      {
        sub_10000DD18(*(v3 + 56) + 32 * v6, v10);

        if (swift_dynamicCast())
        {
          return v9;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100345008(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  return sub_1006B9530(*a1, *a2) & ~(v2 ^ v4) & ~(v3 ^ v5) & 1;
}

Swift::Int sub_100345068()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100345140()
{
  String.hash(into:)();
}

Swift::Int sub_100345204()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003452D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003457E4(*a1);
  *a2 = result;
  return result;
}

void sub_100345308(unint64_t *a1@<X8>)
{
  v2 = 0xEE00657261757153;
  v3 = 0x6F54657261757173;
  v4 = 0xD000000000000012;
  v5 = 0x8000000100E3C510;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000016;
    v5 = 0x8000000100E3C530;
  }

  if (*v1)
  {
    v3 = 0xD000000000000012;
    v2 = 0x8000000100E3C4F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

id sub_10034539C()
{
  v1 = [v0 transitionInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = MPCNowPlayingContentItemTransitionInfoKeyStyle.getter();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v6 = sub_100019C10(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_10000DD18(*(v3 + 56) + 32 * v6, v12);

  sub_100345730();
  if (swift_dynamicCast())
  {
    v9 = [v11 integerValue];

    return v9;
  }

  return 0;
}

uint64_t sub_1003454C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218A98);
  sub_1000060E4(v0, qword_101218A98);
  return static Logger.music(_:)();
}

void sub_100345538(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v10 setDuration:3.0];
  v11 = (a1 & 1) == 0;
  if (a1)
  {
    v12 = &type metadata for Int;
  }

  else
  {
    v12 = &type metadata for Double;
  }

  v13 = 0x3FF3333333333333;
  if (!v11)
  {
    v13 = 1;
  }

  v21 = v12;
  v20[0] = v13;
  if (v11)
  {
    v14 = &type metadata for Int;
  }

  else
  {
    v14 = &type metadata for Double;
  }

  if (v11)
  {
    v15 = COERCE_DOUBLE(1);
  }

  else
  {
    v15 = 0.75;
  }

  sub_10000954C(v20, v12);
  v16 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000959C(v20);
  [v10 setFromValue:{v16, v20[0]}];
  swift_unknownObjectRelease();
  v21 = v14;
  *v20 = v15;
  sub_10000954C(v20, v14);
  v17 = _bridgeAnythingToObjectiveC<A>(_:)();
  sub_10000959C(v20);
  [v10 setToValue:v17];
  swift_unknownObjectRelease();
  sub_100030444(a3);
  CAAnimation.completion.setter(a3, a4);

  v18 = [a2 layer];
  v19 = String._bridgeToObjectiveC()();
  [v18 addAnimation:v10 forKey:v19];
}

unint64_t sub_100345730()
{
  result = qword_101189A20;
  if (!qword_101189A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101189A20);
  }

  return result;
}

unint64_t sub_100345790()
{
  result = qword_10118BE88;
  if (!qword_10118BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118BE88);
  }

  return result;
}

unint64_t sub_1003457E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10109A6C8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

char *sub_100345830(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a1;
  v28 = a3;
  v31 = *v5;
  v8 = sub_10010FC20(&qword_10118BAF0);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = v26 - v10;
  v12 = sub_10010FC20(&unk_101197210);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  *(v5 + 2) = _swiftEmptyArrayStorage;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token;
  v16 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v17 = *(v16 - 8);
  v29 = *(v17 + 56);
  v30 = v17 + 56;
  v29(&v5[v15], 1, 1, v16);
  v18 = &v5[OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver];
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  *v18 = 0;
  *(v18 + 24) = xmmword_100EC78D0;
  type metadata accessor for MusicPin();
  sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin);
  MusicItemCollection.init(arrayLiteral:)();
  swift_unknownObjectWeakAssign();
  v5[32] = a2;
  *(v5 + 5) = v28;
  *(v5 + 6) = a4;
  v26[1] = a4;

  sub_100345C40(v34);
  sub_1000095E8(v34, &qword_10118D380);
  v19 = [objc_opt_self() defaultCenter];
  type metadata accessor for LibraryPinsController();
  sub_10032E7E0();
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v31;
  *(v21 + 16) = v20;
  *(v21 + 24) = v22;
  sub_100020674(&qword_10118BAF8, &qword_10118BAF0);
  v23 = v32;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v33 + 8))(v11, v23);
  v29(v14, 0, 1, v16);
  v24 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token;
  swift_beginAccess();
  sub_10006B010(v14, &v5[v24], &unk_101197210);
  swift_endAccess();
  return v5;
}

double sub_100345C40@<D0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, &v7, &qword_10118BFE0);
  if (*(&v8 + 1) == 1)
  {
    sub_1000095E8(&v7, &qword_10118BFE0);
    v4 = sub_1003463C0(v1);
    *(a1 + 24) = type metadata accessor for AnyCancellable();
    *(a1 + 32) = &protocol witness table for AnyCancellable;
    *a1 = v4;
    sub_1000089F8(a1, &v7, &qword_10118D380);
    swift_beginAccess();
    sub_10006B010(&v7, v1 + v3, &qword_10118BFE0);
    swift_endAccess();
  }

  else
  {
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  return result;
}

uint64_t sub_100345D60()
{
  v48 = type metadata accessor for MusicPin();
  v0 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = (&v42 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v2);
  v4 = &v42 - v3;
  v5 = sub_10010FC20(&qword_10118BF90);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_10010FC20(&unk_1011972A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v16 = result;
  v49 = v5;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v18 = _swiftEmptyArrayStorage;
  if (!Strong)
  {
    goto LABEL_15;
  }

  v19 = Strong;
  v47 = v0;
  v42 = v16;
  v44 = v14;
  v20 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  swift_beginAccess();
  v43 = v9;
  v21 = *(v9 + 16);
  v22 = v19 + v20;
  v23 = v44;
  v21(v44, v22, v8);

  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v45 = _swiftEmptyArrayStorage;
  v51 = _swiftEmptyArrayStorage;
  v21(v11, v23, v8);
  sub_100020674(&qword_10118BF98, &unk_1011972A0);
  dispatch thunk of Sequence.makeIterator()();
  v24 = *(v49 + 36);
  swift_beginAccess();
  v25 = sub_100020674(&qword_1011972B0, &unk_1011972A0);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v7[v24] == v50[0])
  {
    goto LABEL_14;
  }

  v26 = (v47 + 2);
  ++v47;
  v45 = _swiftEmptyArrayStorage;
  do
  {
    while (1)
    {
      v27 = dispatch thunk of Collection.subscript.read();
      v28 = *v26;
      v29 = v48;
      (*v26)(v4);
      v27(v50, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v30 = swift_weakLoadStrong();
      if (!v30)
      {
        (*v47)(v4, v29);
        break;
      }

      v31 = v30;
      v32 = v24;
      v49 = type metadata accessor for GridView.Base.ViewModel();
      v33 = v7;
      v34 = v25;
      v35 = v8;
      v36 = v46;
      (v28)(v46, v4, v29);
      v37 = v36;
      v8 = v35;
      v25 = v34;
      v7 = v33;
      v24 = v32;
      v38 = sub_10034AFE8(v37, sub_10034D3F8, v31);
      (*v47)(v4, v29);
      if (!v38)
      {
        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v45 = v51;
      dispatch thunk of Collection.endIndex.getter();
      v23 = v44;
      if (*&v7[v32] == v50[0])
      {
        goto LABEL_14;
      }
    }

    dispatch thunk of Collection.endIndex.getter();
  }

  while (*&v7[v24] != v50[0]);
  v23 = v44;
LABEL_14:
  sub_1000095E8(v7, &qword_10118BF90);
  (*(v43 + 8))(v23, v8);
  swift_weakDestroy();
  v16 = v42;
  v18 = v45;
LABEL_15:
  v39 = *(v16 + 16);
  *(v16 + 16) = v18;
  v40 = *(v16 + 40);
  v41 = v18;

  v40(v39, v41);
}

uint64_t sub_1003463C0(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v1 - 8);
  v3 = v13 - v2;
  v4 = sub_10010FC20(&unk_101197280);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  v8 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

  v13[3] = v8;
  sub_100027010();
  v9 = static OS_dispatch_queue.main.getter();
  v13[2] = v9;
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  sub_10010FC20(&qword_10118BFE8);
  sub_100020674(&unk_101197290, &qword_10118BFE8);
  sub_10034D788(&qword_101184920, sub_100027010);
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v3, &qword_101182140);

  swift_allocObject();
  swift_weakInit();
  sub_100020674(&qword_10118BFF0, &unk_101197280);
  v11 = Publisher<>.sink(receiveValue:)();

  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_1003466D8(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011972A0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v14 - v7;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = *(v3 + 16);
    v11(v8, a1, v2);
    v12 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
    swift_beginAccess();
    v11(v5, v10 + v12, v2);
    swift_beginAccess();
    (*(v3 + 24))(v10 + v12, v8, v2);
    swift_endAccess();
    sub_1003468B0(v5);

    v13 = *(v3 + 8);
    v13(v5, v2);
    return (v13)(v8, v2);
  }

  return result;
}

uint64_t sub_1003468B0(char *a1)
{
  v106 = a1;
  v114 = sub_10010FC20(&qword_10118BF90);
  __chkstk_darwin(v114 - 8);
  v3 = &v90 - v2;
  v110 = type metadata accessor for MusicPin.Action();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v108 = &v90 - v6;
  v120 = type metadata accessor for MusicPin();
  v97 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v119 = &v90 - v9;
  __chkstk_darwin(v10);
  v112 = &v90 - v11;
  __chkstk_darwin(v12);
  v117 = &v90 - v13;
  v111 = sub_10010FC20(&qword_10118BFF8);
  __chkstk_darwin(v111);
  v115 = &v90 - v14;
  v15 = sub_10010FC20(&qword_10118C000);
  __chkstk_darwin(v15 - 8);
  v101 = &v90 - v16;
  v103 = sub_10010FC20(&qword_10118C008);
  __chkstk_darwin(v103);
  v113 = &v90 - v17;
  v104 = sub_10010FC20(&qword_10118C010);
  __chkstk_darwin(v104);
  v100 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v102 = &v90 - v20;
  v21 = sub_10010FC20(&unk_1011972A0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v105 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v90 - v25;
  v27 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  v107 = v1;
  swift_beginAccess();
  v28 = *(v22 + 16);
  v28(v26, v1 + v27, v21);
  v29 = sub_100020674(&qword_1011972B0, &unk_1011972A0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v30 = dispatch thunk of Collection.distance(from:to:)();
  v96 = v22;
  v31 = *(v22 + 8);
  v99 = v22 + 8;
  v98 = v31;
  v31(v26, v21);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v32 = v28;
  v33 = v30 == dispatch thunk of Collection.distance(from:to:)();
  v34 = v107;
  v118 = v29;
  if (!v33)
  {
    goto LABEL_16;
  }

  v91 = v27;
  v35 = v102;
  v28(v102, v107 + v27, v21);
  v36 = v35 + *(v104 + 52);
  v93 = v22 + 16;
  v92 = v28;
  v28(v36, v106, v21);
  v37 = v100;
  sub_1000089F8(v35, v100, &qword_10118C010);
  v38 = v101;
  sub_10003D17C(v37, v101, &qword_10118C000);
  v106 = *(v96 + 32);
  (v106)(v26, v38, v21);
  sub_100020674(&qword_10118BF98, &unk_1011972A0);
  v39 = v113;
  dispatch thunk of Sequence.makeIterator()();
  sub_10003D17C(v37 + *(v104 + 52), v38, &qword_10118C000);
  v40 = v103;
  v41 = (v39 + *(v103 + 52));
  (v106)(v26, v38, v21);
  v106 = v41;
  dispatch thunk of Sequence.makeIterator()();
  v96 = *(v40 + 56);
  *(v39 + v96) = 0;
  v42 = *(v114 + 36);
  dispatch thunk of Collection.endIndex.getter();
  v43 = v39;
  if (*(v39 + v42) == v121[0])
  {
LABEL_4:
    sub_1000095E8(v102, &qword_10118C010);
    *(v43 + v96) = 1;
    return sub_1000095E8(v43, &qword_10118C008);
  }

  v45 = (v97 + 16);
  v104 = v97 + 32;
  v103 = v95 + 8;
  v94 = v26;
  v101 = v42;
  v100 = (v97 + 16);
  while (1)
  {
    v48 = dispatch thunk of Collection.subscript.read();
    v49 = *v45;
    v50 = v117;
    (*v45)(v117);
    v48(v121, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v51 = *(v114 + 36);
    v52 = v106;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v52[v51] == v121[0])
    {
      (*(v97 + 8))(v50, v120);
      goto LABEL_4;
    }

    v53 = dispatch thunk of Collection.subscript.read();
    v54 = v112;
    v55 = v120;
    v49(v112);
    v53(v121, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v56 = *(v111 + 48);
    v57 = *v104;
    v58 = v115;
    (*v104)(v115, v117, v55);
    v57(v58 + v56, v54, v55);
    sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin);
    sub_10034D788(qword_1011972F0, &type metadata accessor for MusicPin);
    if ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
    {
      break;
    }

    v59 = v108;
    MusicPin.action.getter();
    v60 = v109;
    MusicPin.action.getter();
    sub_10034D788(qword_10118C018, &type metadata accessor for MusicPin.Action);
    v61 = v110;
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    v63 = *v103;
    (*v103)(v60, v61);
    v63(v59, v61);
    if ((v62 & 1) == 0)
    {
      break;
    }

    v64 = MusicPin.title.getter();
    v66 = v65;
    if (v64 == MusicPin.title.getter() && v66 == v67)
    {

      sub_1000095E8(v58, &qword_10118BFF8);
      v47 = v101;
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1000095E8(v58, &qword_10118BFF8);
      v26 = v94;
      v47 = v101;
      if ((v46 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v43 = v113;
    dispatch thunk of Collection.endIndex.getter();
    v45 = v100;
    if (*(v43 + v47) == v121[0])
    {
      goto LABEL_4;
    }
  }

  sub_1000095E8(v58, &qword_10118BFF8);
  v26 = v94;
LABEL_15:
  sub_1000095E8(v113, &qword_10118C008);
  sub_1000095E8(v102, &qword_10118C010);
  v34 = v107;
  v32 = v92;
  v27 = v91;
LABEL_16:
  v68 = v34 + v27;
  v69 = v105;
  v32(v105, v68, v21);
  swift_weakInit();
  v70 = _swiftEmptyArrayStorage;
  v122 = _swiftEmptyArrayStorage;
  v32(v26, v69, v21);
  sub_100020674(&qword_10118BF98, &unk_1011972A0);
  dispatch thunk of Sequence.makeIterator()();
  v71 = *(v114 + 36);
  swift_beginAccess();
  dispatch thunk of Collection.endIndex.getter();
  v72 = v34;
  v73 = v119;
  if (*&v3[v71] == v121[0])
  {
    goto LABEL_28;
  }

  v74 = (v97 + 16);
  v117 = (v97 + 8);
  while (2)
  {
    while (1)
    {
      v75 = dispatch thunk of Collection.subscript.read();
      v76 = *v74;
      (*v74)(v73);
      v75(v121, 0);
      dispatch thunk of Collection.formIndex(after:)();
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        break;
      }

      v78 = Strong;
      type metadata accessor for GridView.Base.ViewModel();
      v79 = v3;
      v80 = v120;
      v81 = v21;
      v82 = v70;
      v83 = v116;
      (v76)(v116, v119, v120);
      v84 = v83;
      v85 = v80;
      v3 = v79;
      v73 = v119;
      v86 = sub_10034AFE8(v84, sub_10034D7D4, v78);
      v87 = v85;
      v70 = v82;
      v21 = v81;
      (*v117)(v73, v87);
      if (!v86)
      {
        goto LABEL_20;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v70 = v122;
      dispatch thunk of Collection.endIndex.getter();
      v72 = v107;
      v69 = v105;
      if (*&v3[v71] == v121[0])
      {
        goto LABEL_28;
      }
    }

    (*v117)(v73, v120);
LABEL_20:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v3[v71] != v121[0])
    {
      continue;
    }

    break;
  }

  v72 = v107;
  v69 = v105;
LABEL_28:
  sub_1000095E8(v3, &qword_10118BF90);
  v98(v69, v21);
  swift_weakDestroy();
  v88 = *(v72 + 16);
  *(v72 + 16) = v70;
  v89 = *(v72 + 40);

  v89(v88, v70);
}

uint64_t sub_10034781C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v37 = &v35 - v4;
  v5 = type metadata accessor for MusicPin.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MusicPin.Action();
  v39 = *(v9 - 8);
  v40 = v9;
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicPin();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v36 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = &v35 - v17;
  v41 = v13;
  v42 = v19;
  v35 = *(v13 + 16);
  v35(&v35 - v17, a1, v16);
  MusicPin.action.getter();
  MusicPin.item.getter();
  v20 = (*(v6 + 88))(v8, v5);
  v21 = enum case for MusicPin.Item.musicVideo(_:);
  (*(v6 + 8))(v8, v5);
  if (v20 == v21)
  {
    (*(v39 + 8))(v11, v40);
LABEL_3:
    sub_100347CB4(v18, v38);
    return (*(v41 + 8))(v18, v42);
  }

  v24 = v39;
  v23 = v40;
  v25 = (*(v39 + 88))(v11, v40);
  if (v25 == enum case for MusicPin.Action.navigate(_:))
  {
    v27 = v41;
    v26 = v42;
    (*(v41 + 8))(v18, v42);
    v28 = type metadata accessor for TaskPriority();
    v29 = v37;
    (*(*(v28 - 8) + 56))(v37, 1, 1, v28);
    v30 = v36;
    (v35)(v36, a1, v26);
    type metadata accessor for MainActor();
    v31 = v38;

    v32 = static MainActor.shared.getter();
    v33 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v32;
    *(v34 + 24) = &protocol witness table for MainActor;
    (*(v27 + 32))(v34 + v33, v30, v26);
    *(v34 + ((v14 + v33 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
    sub_1001F4CB8(0, 0, v29, &unk_100EC7990, v34);
  }

  else
  {
    if (v25 == enum case for MusicPin.Action.play(_:) || v25 == enum case for MusicPin.Action.shuffle(_:))
    {
      goto LABEL_3;
    }

    (*(v41 + 8))(v18, v42);
    return (*(v24 + 8))(v11, v23);
  }
}

void sub_100347CB4(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v57 = type metadata accessor for MusicPin();
  v3 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = v4;
  v56 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v55 = v51 - v6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v51[2] = v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v51[1] = v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v11 - 8);
  v53 = v51 - v12;
  v13 = type metadata accessor for Artist();
  v52 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicPin.Item();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v51 - v21;
  v59 = a1;
  MusicPin.item.getter();
  v23 = v16;
  v24 = *(v17 + 88);
  v25 = v24(v22, v16);
  if (v25 == enum case for MusicPin.Item.album(_:))
  {
    goto LABEL_2;
  }

  v38 = v25;
  if (v25 != enum case for MusicPin.Item.artist(_:))
  {
    if (v25 == enum case for MusicPin.Item.musicVideo(_:) || v25 == enum case for MusicPin.Item.playlist(_:) || v25 == enum case for MusicPin.Item.song(_:))
    {
      goto LABEL_2;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    goto LABEL_19;
  }

  v51[0] = v23;
  MusicPin.item.getter();
  v23 = v51[0];
  v39 = v24(v19, v51[0]);
  v40 = v17;
  if (v39 != v38)
  {
LABEL_19:
    (*(v40 + 8))(v19, v23);
    goto LABEL_2;
  }

  (*(v17 + 96))(v19, v23);
  v41 = v52;
  (*(v52 + 32))(v15, v19, v13);
  v42 = v53;
  Artist.libraryAddedDate.getter();
  v23 = v51[0];
  (*(v41 + 8))(v15, v13);
  v43 = type metadata accessor for Date();
  v44 = (*(*(v43 - 8) + 48))(v42, 1, v43);
  sub_1000095E8(v42, &qword_101188C20);
  if (v44 != 1)
  {
LABEL_2:
    (*(v17 + 8))(v22, v23);
    v26 = type metadata accessor for TaskPriority();
    v27 = v55;
    (*(*(v26 - 8) + 56))(v55, 1, 1, v26);
    v29 = v56;
    v28 = v57;
    (*(v3 + 16))(v56, v59, v57);
    type metadata accessor for MainActor();
    v30 = v58;

    v31 = static MainActor.shared.getter();
    v32 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v33 = (v54 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v31;
    *(v34 + 24) = &protocol witness table for MainActor;
    (*(v3 + 32))(v34 + v32, v29, v28);
    *(v34 + v33) = v30;
    sub_1001F4CB8(0, 0, v27, &unk_100EC79A0, v34);

    goto LABEL_3;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v45 = String._bridgeToObjectiveC()();

  v46 = [objc_opt_self() alertControllerWithTitle:0 message:v45 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47 = String._bridgeToObjectiveC()();

  v48 = [objc_opt_self() actionWithTitle:v47 style:1 handler:0];

  [v46 addAction:v48];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    [Strong presentViewController:v46 animated:1 completion:0];
  }

  (*(v17 + 8))(v22, v51[0]);
LABEL_3:
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = [v35 navigationController];

    if (v37)
    {
      type metadata accessor for CarPlayRootNavigationController();
      if (swift_dynamicCastClass())
      {
        sub_1001D3268(0, 1);
      }
    }
  }
}

uint64_t sub_10034848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[40] = a4;
  v5[41] = a5;
  type metadata accessor for Locale();
  v5[42] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v5[43] = swift_task_alloc();
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v5[44] = v6;
  v5[45] = *(v6 - 8);
  v5[46] = swift_task_alloc();
  v5[47] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[48] = swift_task_alloc();
  type metadata accessor for PlaybackIntentDescriptor(0);
  v5[49] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin.Action();
  v5[50] = v7;
  v5[51] = *(v7 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  v5[54] = v8;
  v5[55] = *(v8 - 8);
  v5[56] = swift_task_alloc();
  sub_10010FC20(&unk_10118CDB0);
  v5[57] = swift_task_alloc();
  v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[58] = v9;
  v5[59] = *(v9 - 8);
  v5[60] = swift_task_alloc();
  v10 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v5[61] = v10;
  v5[62] = *(v10 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[66] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[67] = v12;
  v5[68] = v11;

  return _swift_task_switch(sub_100348804, v12, v11);
}

uint64_t sub_100348804()
{
  v73 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  sub_100537A68(*(v0 + 320), *(v0 + 520));
  (*(v3 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v2);
  v4 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v5 = *(v3 + 8);
  *(v0 + 552) = v5;
  *(v0 + 560) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v2);
  if ((v4 & 1) == 0)
  {

LABEL_7:
    v17 = *(v0 + 496);
    v16 = *(v0 + 504);
    v18 = *(v0 + 488);
    (*(v17 + 16))(v16, *(v0 + 520), v18);
    v19 = (*(v17 + 88))(v16, v18);
    v20 = *(v0 + 504);
    if (v19 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
    {
      v22 = *(v0 + 360);
      v21 = *(v0 + 368);
      v23 = *(v0 + 352);
      (*(*(v0 + 496) + 96))(*(v0 + 504), *(v0 + 488));
      (*(v22 + 32))(v21, v20, v23);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v25 = Strong;
        v26 = [Strong traitCollection];
      }

      else
      {
        v26 = 0;
      }

      sub_1005384B8(v26, v0 + 184);

      v40 = *(v0 + 240);
      if (v40)
      {
        v41 = *(v0 + 520);
        v42 = *(v0 + 488);
        v44 = *(v0 + 360);
        v43 = *(v0 + 368);
        v45 = *(v0 + 352);
        v46 = *(v0 + 248);
        v47 = *(v0 + 200);
        *(v0 + 112) = *(v0 + 184);
        *(v0 + 128) = v47;
        *(v0 + 144) = *(v0 + 216);
        *(v0 + 160) = *(v0 + 232);
        *(v0 + 168) = v40;
        *(v0 + 176) = v46;
        v48 = swift_unknownObjectWeakLoadStrong();
        *(v0 + 256) = 0u;
        *(v0 + 272) = 0u;
        *(v0 + 288) = 0;
        *(v0 + 296) = 255;
        *(v0 + 304) = 0;
        PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v48, v0 + 256, 0, 0, 0, 0, v0 + 16);
        PresentationSource.present(_:)((v0 + 112));
        sub_1000095E8(v0 + 184, &qword_10118BFD0);
        sub_10012BA6C(v0 + 16);
        (*(v44 + 8))(v43, v45);
LABEL_20:
        v5(v41, v42);

        v55 = *(v0 + 8);

        return v55();
      }

      (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));
    }

    else
    {
      v5(*(v0 + 504), *(v0 + 488));
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v49 = String._bridgeToObjectiveC()();

    v50 = [objc_opt_self() alertControllerWithTitle:0 message:v49 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v51 = String._bridgeToObjectiveC()();

    v52 = [objc_opt_self() actionWithTitle:v51 style:0 handler:0];

    [v50 addAction:v52];
    v53 = swift_unknownObjectWeakLoadStrong();
    v41 = *(v0 + 520);
    v42 = *(v0 + 488);
    if (v53)
    {
      v54 = v53;
      [v53 presentViewController:v50 animated:1 completion:0];
    }

    goto LABEL_20;
  }

  v62 = v5;
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 472);
  v7 = *(v0 + 448);
  v8 = *(v0 + 440);
  v64 = *(v0 + 432);
  v65 = *(v0 + 464);
  v10 = *(v0 + 416);
  v9 = *(v0 + 424);
  v11 = *(v0 + 400);
  v12 = *(v0 + 408);
  v63 = *(v0 + 456);
  MusicPin.item.getter();
  MusicPin.action.getter();
  (*(v12 + 104))(v10, enum case for MusicPin.Action.shuffle(_:), v11);
  v13 = static MusicPin.Action.== infix(_:_:)();
  v14 = *(v12 + 8);
  v14(v10, v11);
  v14(v9, v11);
  sub_10042BAAC(v7, v13 & 1, v63);
  (*(v8 + 8))(v7, v64);
  if ((*(v6 + 48))(v63, 1, v65) == 1)
  {
    v15 = *(v0 + 456);

    sub_1000095E8(v15, &unk_10118CDB0);
    v5 = v62;
    goto LABEL_7;
  }

  v28 = *(v0 + 472);
  v27 = *(v0 + 480);
  v29 = *(v0 + 464);
  v30 = *(v0 + 384);
  v31 = *(v0 + 392);
  v32 = *(v0 + 328);
  (*(v28 + 32))(v27, *(v0 + 456), v29);
  (*(v28 + 16))(v30, v27, v29);
  swift_storeEnumTagMultiPayload();
  v67 = 0;
  memset(v66, 0, sizeof(v66));
  v33 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 312) = v32;

  v71 = &type metadata for Player.CommandIssuerIdentity;
  v72 = &protocol witness table for Player.CommandIssuerIdentity;
  v68 = String.init<A>(reflecting:)();
  v69 = v34;
  PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v30, v66, 3, 1, 0, 1, 0, 1, v31, v33, &v68);
  v35 = PlaybackIntentDescriptor.playActivityInformation.getter();
  v68 = v35;
  v69 = v38;
  v70 = v36;
  v71 = v37;
  if (v38)
  {
    v39._countAndFlagsBits = 0x736E69702FLL;
    v39._object = 0xE500000000000000;
    String.append(_:)(v39);
    PlaybackIntentDescriptor.playActivityInformation.setter(v68, v69, v70, v71);
  }

  else
  {
    v57 = v35;
    v58 = v36;
    v59 = v37;
    sub_100344C3C(v35, 0, v36, v37);
    PlaybackIntentDescriptor.playActivityInformation.setter(v57, 0, v58, v59);
    sub_100344C88(v57, 0, v58, v59);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v60 = swift_task_alloc();
  *(v0 + 568) = v60;
  *v60 = v0;
  v60[1] = sub_100349040;
  v61 = *(v0 + 392);

  return PlaybackController.add(_:route:)(v61, 0);
}

uint64_t sub_100349040()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10034D7D0;
  }

  else
  {
    v3 = *(v2 + 544);
    v4 = *(v2 + 536);
    v5 = sub_10034916C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034916C()
{
  v1 = v0[69];
  v2 = v0[65];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[58];
  v6 = v0[59];
  v7 = v0[49];

  sub_100188CDC(v7);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1003492BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[31] = a4;
  v5[32] = a5;
  v6 = type metadata accessor for MusicPin.Item();
  v5[33] = v6;
  v5[34] = *(v6 - 8);
  v5[35] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin();
  v5[36] = v7;
  v5[37] = *(v7 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v5[40] = v8;
  v5[41] = *(v8 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[44] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[45] = v10;
  v5[46] = v9;

  return _swift_task_switch(sub_100349480, v10, v9);
}

uint64_t sub_100349480()
{
  if (qword_10117F6D8 != -1)
  {
    swift_once();
  }

  if (sub_100428914())
  {
    v1 = *(*(v0 + 256) + 32);
    v2 = swift_task_alloc();
    *(v0 + 376) = v2;
    *v2 = v0;
    v2[1] = sub_100349640;

    return sub_100349E5C(v1);
  }

  else
  {

    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 200) = 0u;
    *(v0 + 216) = 0;
    *(v0 + 184) = 0u;
    *(v0 + 224) = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(Strong, v0 + 184, 0, 0, 0, 0, v0 + 16);
    static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 112);
    PresentationSource.present(_:)((v0 + 112));
    sub_100344A84(v0 + 112);
    sub_10012BA6C(v0 + 16);

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_100349640(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 368);
  v6 = *(v3 + 360);
  if (v1)
  {
    v7 = sub_100349AE4;
  }

  else
  {
    v7 = sub_100349784;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100349784()
{
  v37 = v0;
  v1 = v0[48];

  if (v1)
  {
    v2 = v0[48];
    Strong = swift_unknownObjectWeakLoadStrong();
    [v2 setPlayActivityFeatureNameSourceViewController:Strong];

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4 && (v5 = v4, v6 = [v4 navigationController], v5, v6))
    {
      [v6 pushViewController:v2 animated:1];
    }

    else
    {
    }
  }

  else
  {
    v7 = v0[39];
    v8 = v0[36];
    v9 = v0[37];
    v10 = v0[31];
    Logger.init(subsystem:category:)();
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[43];
    v15 = v0[40];
    v16 = v0[41];
    v17 = v0[39];
    v19 = v0[36];
    v18 = v0[37];
    if (v13)
    {
      v35 = v0[40];
      v21 = v0[34];
      v20 = v0[35];
      log = v11;
      v22 = v0[33];
      v31 = v0[36];
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36 = v33;
      *v23 = 136446210;
      v34 = v14;
      MusicPin.item.getter();
      sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v12;
      v26 = v25;
      (*(v21 + 8))(v20, v22);
      (*(v18 + 8))(v17, v31);
      v27 = sub_1000105AC(v24, v26, &v36);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, log, v30, "Unable to navigate to pinned item=%{public}s", v23, 0xCu);
      sub_10000959C(v33);

      (*(v16 + 8))(v34, v35);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
      (*(v16 + 8))(v14, v15);
    }
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_100349AE4()
{
  v35 = v0;
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[36];
  v4 = v0[31];

  Logger.init(subsystem:category:)();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v31 = v0[41];
    v32 = v0[40];
    v33 = v0[42];
    v7 = v0[37];
    v8 = v0[38];
    v9 = v0[35];
    v28 = v0[36];
    v29 = v0[49];
    v10 = v0[33];
    v11 = v0[34];
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v12 = 136446466;
    v30 = v6;
    MusicPin.item.getter();
    sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v11 + 8))(v9, v10);
    (*(v7 + 8))(v8, v28);
    v16 = sub_1000105AC(v13, v15, &v34);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v0[30] = v29;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v17 = String.init<A>(describing:)();
    v19 = sub_1000105AC(v17, v18, &v34);

    *(v12 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v5, v30, "Error navigating to pinned item=%{public}s error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v21 = v0[41];
    v20 = v0[42];
    v22 = v0[40];
    v24 = v0[37];
    v23 = v0[38];
    v25 = v0[36];

    (*(v24 + 8))(v23, v25);
    (*(v21 + 8))(v20, v22);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_100349E5C(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 312) = a1;
  sub_10010FC20(&unk_101192990);
  *(v2 + 24) = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  *(v2 + 32) = swift_task_alloc();
  v3 = type metadata accessor for Song();
  *(v2 + 40) = v3;
  *(v2 + 48) = *(v3 - 8);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = swift_task_alloc();
  v4 = type metadata accessor for Playlist();
  *(v2 + 72) = v4;
  *(v2 + 80) = *(v4 - 8);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = _s6AlbumsV5ScopeOMa(0);
  *(v2 + 120) = swift_task_alloc();
  v5 = type metadata accessor for Artist();
  *(v2 + 128) = v5;
  *(v2 + 136) = *(v5 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  *(v2 + 160) = v6;
  *(v2 + 168) = *(v6 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v7 = type metadata accessor for Album();
  *(v2 + 192) = v7;
  *(v2 + 200) = *(v7 - 8);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = swift_task_alloc();
  *(v2 + 232) = swift_task_alloc();
  v8 = type metadata accessor for MusicPin.Item();
  *(v2 + 240) = v8;
  *(v2 + 248) = *(v8 - 8);
  *(v2 + 256) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 264) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 272) = v10;
  *(v2 + 280) = v9;

  return _swift_task_switch(sub_10034A220, v10, v9);
}

uint64_t sub_10034A220()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  MusicPin.item.getter();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for MusicPin.Item.album(_:))
  {
    v5 = *(v0 + 256);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);
    v8 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);
    v53 = *(v0 + 184);
    v55 = *(v0 + 216);
    v57 = *(v0 + 176);
    v59 = v9;
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v60 = *(v0 + 312);

    (*(v6 + 96))(v5, v7);
    (*(v10 + 32))(v9, v5, v11);
    v14 = *(v10 + 16);
    v15 = v8;
    v14(v8, v9, v11);
    v16 = v53;
    (*(v12 + 104))(v53, enum case for MusicPropertySource.library(_:), v13);
    v14(v55, v15, v11);
    (*(v12 + 16))(v57, v53, v13);
    _s10DataSourceCMa_1();
    swift_allocObject();
    v17 = sub_10078B958(v55, v60, v57);
    v18 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v19 = sub_1007934B0(v17, v18);
LABEL_3:
    v61 = v19;
    (*(v12 + 8))(v16, v13);
    v20 = *(v10 + 8);
    v20(v15, v11);
    v20(v59, v11);
LABEL_8:

    v35 = *(v0 + 8);

    return v35(v61);
  }

  if (v4 == enum case for MusicPin.Item.artist(_:))
  {
    v21 = *(v0 + 256);
    v22 = *(v0 + 240);
    v23 = *(v0 + 248);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    v28 = *(v0 + 120);
    v62 = *(v0 + 312);

    (*(v23 + 96))(v21, v22);
    (*(v27 + 32))(v24, v21, v26);
    v29 = *(v27 + 16);
    v29(v25, v24, v26);
    v29(v28, v25, v26);
    swift_storeEnumTagMultiPayload();
    v30 = objc_allocWithZone(type metadata accessor for CarPlayAlbumsViewController(0));
    v61 = sub_1004217FC(v28, v62);
    v31 = *(v27 + 8);
    v31(v25, v26);
    v31(v24, v26);
    goto LABEL_8;
  }

  if (v4 == enum case for MusicPin.Item.musicVideo(_:))
  {
    goto LABEL_7;
  }

  if (v4 == enum case for MusicPin.Item.playlist(_:))
  {
    v37 = *(v0 + 256);
    v39 = *(v0 + 240);
    v38 = *(v0 + 248);
    v56 = *(v0 + 184);
    v58 = *(v0 + 176);
    v13 = *(v0 + 160);
    v12 = *(v0 + 168);
    v40 = *(v0 + 96);
    v41 = *(v0 + 104);
    v59 = v41;
    v10 = *(v0 + 80);
    v54 = *(v0 + 88);
    v11 = *(v0 + 72);
    v63 = *(v0 + 312);

    (*(v38 + 96))(v37, v39);
    (*(v10 + 32))(v41, v37, v11);
    v42 = *(v10 + 16);
    v15 = v40;
    v42(v40, v41, v11);
    v16 = v56;
    (*(v12 + 104))(v56, enum case for MusicPropertySource.library(_:), v13);
    v42(v54, v15, v11);
    (*(v12 + 16))(v58, v56, v13);
    _s10DataSourceCMa_0();
    swift_allocObject();
    v43 = sub_1006365C8(v54, v63, v58);
    v44 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
    v19 = sub_10079349C(v43, v44);
    goto LABEL_3;
  }

  if (v4 != enum case for MusicPin.Item.song(_:))
  {
LABEL_7:
    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    v34 = *(v0 + 248);

    (*(v34 + 8))(v32, v33);
    v61 = 0;
    goto LABEL_8;
  }

  v45 = *(v0 + 256);
  v46 = *(v0 + 64);
  v47 = *(v0 + 40);
  v48 = *(v0 + 48);
  (*(*(v0 + 248) + 96))(v45, *(v0 + 240));
  (*(v48 + 32))(v46, v45, v47);
  sub_10010FC20(&qword_101183990);
  v49 = swift_allocObject();
  *(v0 + 288) = v49;
  *(v49 + 16) = xmmword_100EBC6C0;
  sub_10010FC20(&qword_10118BFD8);
  *(v49 + 32) = static PartialMusicProperty<A>.albums.getter();
  v50 = swift_task_alloc();
  *(v0 + 296) = v50;
  *v50 = v0;
  v50[1] = sub_10034A8FC;
  v51 = *(v0 + 56);
  v52 = *(v0 + 40);

  return dispatch thunk of MusicPropertyContainer.with(_:)(v51, v49, v52, &protocol witness table for Song);
}

uint64_t sub_10034A8FC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_10034AE88;
  }

  else
  {
    v5 = sub_10034AA54;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034AA54()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);

  Song.albums.getter();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = sub_10010FC20(&qword_1011815C0);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v4, 1, v6);
  v9 = *(v0 + 192);
  v10 = *(v0 + 200);
  if (v8 == 1)
  {
    v11 = *(v0 + 32);
    v12 = *(v0 + 24);
    v5(*(v0 + 64), *(v0 + 40));
    sub_1000095E8(v12, &unk_101192990);
    (*(v10 + 56))(v11, 1, 1, v9);
LABEL_5:
    sub_1000095E8(*(v0 + 32), &unk_101184730);
    v33 = 0;
    goto LABEL_7;
  }

  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  sub_10034DA18(v14);
  (*(v7 + 8))(v13, v6);
  if ((*(v10 + 48))(v14, 1, v9) == 1)
  {
    v5(*(v0 + 64), *(v0 + 40));
    goto LABEL_5;
  }

  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v29 = v5;
  v30 = *(v0 + 200);
  v17 = *(v0 + 192);
  v26 = *(v0 + 184);
  v27 = *(v0 + 224);
  v18 = *(v0 + 168);
  v28 = *(v0 + 176);
  v19 = *(v0 + 160);
  v31 = *(v0 + 40);
  v32 = *(v0 + 64);
  v34 = *(v0 + 312);
  (*(v30 + 32))(v16, *(v0 + 32), v17);
  v20 = *(v30 + 16);
  v20(v15, v16, v17);
  (*(v18 + 104))(v26, enum case for MusicPropertySource.library(_:), v19);
  v20(v27, v15, v17);
  (*(v18 + 16))(v28, v26, v19);
  _s10DataSourceCMa_1();
  swift_allocObject();
  v21 = sub_10078B958(v27, v34, v28);
  v22 = objc_allocWithZone(type metadata accessor for MCDItemDetailViewController());
  v33 = sub_1007934B0(v21, v22);
  (*(v18 + 8))(v26, v19);
  v23 = *(v30 + 8);
  v23(v15, v17);
  v23(v16, v17);
  v29(v32, v31);
LABEL_7:

  v24 = *(v0 + 8);

  return v24(v33);
}

uint64_t sub_10034AE88()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10034AFE8(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v245 = a3;
  v242 = a2;
  v4 = sub_10010FC20(&qword_10118BFA0);
  __chkstk_darwin(v4 - 8);
  v240 = &v204 - v5;
  v238 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v239 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration();
  __chkstk_darwin(v7 - 8);
  v241 = &v204 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v9 - 8);
  v211 = &v204 - v10;
  v222 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v220 = &v204 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v219 = &v204 - v13;
  v250 = type metadata accessor for MusicPin.Action();
  v252 = *(v250 - 8);
  __chkstk_darwin(v250);
  v251 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v228 = &v204 - v16;
  v17 = sub_10010FC20(&qword_10118BFA8);
  __chkstk_darwin(v17 - 8);
  v236 = &v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v257 = (&v204 - v20);
  __chkstk_darwin(v21);
  v233 = &v204 - v22;
  __chkstk_darwin(v23);
  v254 = &v204 - v24;
  v246 = type metadata accessor for MusicPin();
  v244 = *(v246 - 8);
  __chkstk_darwin(v246);
  v235 = &v204 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = v25;
  __chkstk_darwin(v26);
  v208 = &v204 - v27;
  v229 = type metadata accessor for Logger();
  v209 = *(v229 - 8);
  __chkstk_darwin(v229);
  v230 = &v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for MusicVideo();
  v217 = *(v218 - 8);
  __chkstk_darwin(v218);
  v216 = &v204 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = type metadata accessor for Song();
  v206 = *(v207 - 8);
  __chkstk_darwin(v207);
  v205 = &v204 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for Playlist();
  v213 = *(v214 - 8);
  __chkstk_darwin(v214);
  v212 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for Artist();
  v226 = *(v227 - 8);
  __chkstk_darwin(v227);
  v210 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v223 = &v204 - v34;
  v225 = type metadata accessor for Album();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v36 = &v204 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for MusicPin.Item();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v215 = &v204 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v232 = &v204 - v41;
  __chkstk_darwin(v42);
  v204 = &v204 - v43;
  __chkstk_darwin(v44);
  v46 = &v204 - v45;
  v256 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
  v253 = *(v256 - 8);
  __chkstk_darwin(v256);
  v48 = &v204 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = &v204 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v53 - 8);
  v55 = &v204 - v54;
  v255 = a1;
  MusicPin.item.getter();
  v56 = v38;
  v247 = *(v38 + 88);
  v248 = v38 + 88;
  v57 = v247(v46, v37);
  v259 = v48;
  v260 = v49;
  v261 = v52;
  v258 = v55;
  v249 = v38;
  v231 = enum case for MusicPin.Item.album(_:);
  v243 = v37;
  if (v57 == enum case for MusicPin.Item.album(_:))
  {
    v209 = *(v38 + 96);
    (v209)(v46, v37);
    v58 = v224;
    v59 = v46;
    v60 = v225;
    (*(v224 + 32))(v36, v59, v225);
    Album.artwork.getter();
    *v52 = 0;
    v52[8] = 0;
    v61 = v50;
    (*(v50 + 104))(v52, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.cpuiPlaceholder(_:), v49);
    v230 = Album.title.getter();
    v229 = v62;
    (*(v58 + 8))(v36, v60);
    v63 = *(sub_10010FC20(&qword_10118BFB0) + 48);
    *v48 = 0;
    v48[8] = 1;
    v64 = type metadata accessor for RoundedCornerStyle();
    (*(*(v64 - 8) + 56))(&v48[v63], 1, 1, v64);
    v65 = v256;
    (*(v253 + 104))(v48, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.rounded(_:), v256);
    v66 = enum case for MusicPin.Item.artist(_:);
    v67 = v37;
    v68 = v61;
    v69 = v255;
LABEL_9:
    v74 = v252;
    goto LABEL_14;
  }

  v70 = v57;
  v224 = v50;
  if (v57 == enum case for MusicPin.Item.artist(_:))
  {
    v71 = v46;
    v209 = *(v56 + 96);
    (v209)(v46, v243);
    v72 = v223;
    (*(v226 + 32))(v223, v71, v227);
    sub_10010FC20(&unk_10118F200);
    swift_allocObject();
    MusicAttributeProperty.init(_:)();
    Artist.subscript.getter();

    v65 = v256;
    v96 = v253;
    v98 = v259;
    v97 = v260;
    v99 = sub_10010FC20(&qword_101180CB0);
    v100 = *(v99 + 48);
    v101 = v261;
    v102 = &v261[*(v99 + 64)];
    *v261 = 0xD000000000000010;
    *(v101 + 1) = 0x8000000100E3CE70;
    v103 = type metadata accessor for Image.Scale();
    (*(*(v103 - 8) + 56))(&v101[v100], 1, 1, v103);
    *v102 = 0;
    v102[8] = 1;
    v104 = v224;
    (*(v224 + 104))(v101, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v97);
    v230 = Artist.name.getter();
    v229 = v105;
    (*(v226 + 8))(v72, v227);
    (*(v96 + 104))(v98, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.circle(_:), v65);
    v66 = v70;
    v68 = v104;
    v69 = v255;
    v67 = v243;
    goto LABEL_9;
  }

  LODWORD(v225) = enum case for MusicPin.Item.artist(_:);
  v73 = v261;
  v74 = v252;
  if (v57 == enum case for MusicPin.Item.musicVideo(_:))
  {
    v75 = v243;
    v209 = *(v56 + 96);
    (v209)(v46, v243);
    v76 = v217;
    v77 = v216;
    v78 = v46;
    v79 = v218;
    (*(v217 + 32))(v216, v78, v218);
    MusicVideo.artwork.getter();
    v80 = sub_10010FC20(&qword_101180CB0);
    v81 = *(v80 + 48);
    v82 = &v73[*(v80 + 64)];
    strcpy(v73, "music.note.tv");
    *(v73 + 7) = -4864;
    v83 = type metadata accessor for Image.Scale();
    (*(*(v83 - 8) + 56))(&v73[v81], 1, 1, v83);
    *v82 = 0;
    v82[8] = 1;
    v68 = v224;
    (*(v224 + 104))(v73, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v260);
    v230 = MusicVideo.title.getter();
    v229 = v84;
    (*(v76 + 8))(v77, v79);
    v85 = *(sub_10010FC20(&qword_10118BFB0) + 48);
    v86 = v259;
    *v259 = 0;
    *(v86 + 8) = 1;
  }

  else
  {
    if (v57 == enum case for MusicPin.Item.playlist(_:))
    {
      v75 = v243;
      v209 = *(v56 + 96);
      (v209)(v46, v243);
      v87 = v213;
      v88 = v212;
      v89 = v46;
      v90 = v214;
      (*(v213 + 32))(v212, v89, v214);
      Playlist.artwork.getter();
      v91 = sub_10010FC20(&qword_101180CB0);
      v92 = *(v91 + 48);
      v93 = &v73[*(v91 + 64)];
      *v73 = 0x6F6E2E636973756DLL;
      *(v73 + 1) = 0xEF7473696C2E6574;
      v94 = type metadata accessor for Image.Scale();
      (*(*(v94 - 8) + 56))(&v73[v92], 1, 1, v94);
      *v93 = 0;
      v93[8] = 1;
      v68 = v224;
      (*(v224 + 104))(v73, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v260);
      v230 = Playlist.name.getter();
      v229 = v95;
      (*(v87 + 8))(v88, v90);
    }

    else
    {
      if (v57 != enum case for MusicPin.Item.song(_:))
      {
        v184 = v56;
        v185 = v230;
        Logger.init(subsystem:category:)();
        v186 = v244;
        v187 = v208;
        v188 = v255;
        v189 = v246;
        (*(v244 + 16))(v208, v255, v246);
        v190 = Logger.logObject.getter();
        v191 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v190, v191))
        {
          v192 = swift_slowAlloc();
          v259 = v192;
          v261 = swift_slowAlloc();
          v262 = v261;
          *v192 = 136446210;
          v193 = v204;
          LODWORD(v260) = v191;
          MusicPin.item.getter();
          sub_10034D788(&qword_101186690, &type metadata accessor for MusicPin.Item);
          v194 = v243;
          v195 = dispatch thunk of CustomStringConvertible.description.getter();
          v197 = v196;
          v198 = *(v184 + 8);
          v198(v193, v194);
          v199 = *(v186 + 8);
          v200 = v246;
          v199(v187, v246);
          v201 = sub_1000105AC(v195, v197, &v262);

          v202 = v259;
          *(v259 + 4) = v201;
          _os_log_impl(&_mh_execute_header, v190, v260, "Unsupported Pin item encountered: %{public}s", v202, 0xCu);
          sub_10000959C(v261);

          v199(v255, v200);
          (*(v209 + 8))(v230, v229);
        }

        else
        {

          v203 = *(v186 + 8);
          v203(v188, v189);
          v203(v187, v189);
          (*(v209 + 8))(v185, v229);
          v198 = *(v184 + 8);
          v194 = v243;
        }

        v198(v46, v194);
        return 0;
      }

      v75 = v243;
      v209 = *(v56 + 96);
      (v209)(v46, v243);
      v106 = v206;
      v107 = v205;
      v108 = v46;
      v109 = v207;
      (*(v206 + 32))(v205, v108, v207);
      Song.artwork.getter();
      v110 = sub_10010FC20(&qword_101180CB0);
      v111 = *(v110 + 48);
      v112 = &v73[*(v110 + 64)];
      *v73 = 0x6F6E2E636973756DLL;
      *(v73 + 1) = 0xEA00000000006574;
      v113 = type metadata accessor for Image.Scale();
      (*(*(v113 - 8) + 56))(&v73[v111], 1, 1, v113);
      *v112 = 0;
      v112[8] = 1;
      v68 = v224;
      (*(v224 + 104))(v73, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder.systemImage(_:), v260);
      v230 = Song.title.getter();
      v229 = v114;
      (*(v106 + 8))(v107, v109);
    }

    v85 = *(sub_10010FC20(&qword_10118BFB0) + 48);
    v86 = v259;
    *v259 = 0;
    *(v86 + 8) = 1;
  }

  v115 = type metadata accessor for RoundedCornerStyle();
  v116 = v86 + v85;
  v67 = v75;
  (*(*(v115 - 8) + 56))(v116, 1, 1, v115);
  v65 = v256;
  (*(v253 + 104))(v86, enum case for GridView.Base.ViewModel.ImageConfiguration.Shape.rounded(_:), v256);
  v69 = v255;
  v66 = v225;
LABEL_14:
  v117 = v232;
  MusicPin.item.getter();
  v118 = v247(v117, v67);
  v119 = v250;
  LODWORD(v225) = v66;
  if (v118 == v231 || v118 == v66)
  {
    goto LABEL_21;
  }

  if (v118 != enum case for MusicPin.Item.musicVideo(_:))
  {
    if (v118 != enum case for MusicPin.Item.playlist(_:) && v118 != enum case for MusicPin.Item.song(_:))
    {
      v132 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v133 = v67;
      v129 = v233;
      (*(*(v132 - 8) + 56))(v233, 1, 1, v132);
      v130 = *(v249 + 8);
      v130(v117, v133);
      goto LABEL_30;
    }

LABEL_21:
    v130 = *(v249 + 8);
    v130(v117, v67);
    v134 = v228;
    MusicPin.action.getter();
    v135 = (*(v74 + 88))(v134, v119);
    if (v135 == enum case for MusicPin.Action.navigate(_:))
    {
      v136 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v137 = v257;
      (*(*(v136 - 8) + 56))(v257, 1, 1, v136);
    }

    else
    {
      v137 = v257;
      if (v135 == enum case for MusicPin.Action.play(_:))
      {
        v138 = sub_10010FC20(&qword_10118BFC8);
        v139 = *(v138 + 48);
        v140 = v257 + *(v138 + 64);
        v141 = 0x6C69662E79616C70;
        v142 = 0xE90000000000006CLL;
      }

      else
      {
        if (v135 != enum case for MusicPin.Action.shuffle(_:))
        {
          v149 = type metadata accessor for GridView.Base.ViewModel.Accessory();
          (*(*(v149 - 8) + 56))(v137, 1, 1, v149);
          (*(v74 + 8))(v228, v119);
          goto LABEL_29;
        }

        v143 = sub_10010FC20(&qword_10118BFC8);
        v139 = *(v143 + 48);
        v140 = v257 + *(v143 + 64);
        v141 = 0x656C6666756873;
        v142 = 0xE700000000000000;
      }

      *v257 = v141;
      v257[1] = v142;
      v144 = type metadata accessor for Image.Scale();
      (*(*(v144 - 8) + 56))(v257 + v139, 1, 1, v144);
      *v140 = 0;
      v140[8] = 1;
      v145 = enum case for GridView.Base.ViewModel.Accessory.symbol(_:);
      v146 = type metadata accessor for GridView.Base.ViewModel.Accessory();
      v147 = *(v146 - 8);
      (*(v147 + 104))(v257, v145, v146);
      v148 = v146;
      v137 = v257;
      (*(v147 + 56))(v257, 0, 1, v148);
      v119 = v250;
    }

LABEL_29:
    v129 = v233;
    sub_10003D17C(v137, v233, &qword_10118BFA8);
    goto LABEL_30;
  }

  v120 = sub_10010FC20(&qword_10118BFC8);
  v224 = v68;
  v121 = v67;
  v122 = *(v120 + 48);
  v123 = v233;
  v124 = &v233[*(v120 + 64)];
  *v233 = 0x6C69662E79616C70;
  *(v123 + 1) = 0xE90000000000006CLL;
  v125 = type metadata accessor for Image.Scale();
  (*(*(v125 - 8) + 56))(&v123[v122], 1, 1, v125);
  *v124 = 0;
  v124[8] = 1;
  v126 = enum case for GridView.Base.ViewModel.Accessory.symbol(_:);
  v127 = type metadata accessor for GridView.Base.ViewModel.Accessory();
  v128 = *(v127 - 8);
  (*(v128 + 104))(v123, v126, v127);
  v129 = v123;
  (*(v128 + 56))(v123, 0, 1, v127);
  v74 = v252;
  v130 = *(v249 + 8);
  v131 = v121;
  v68 = v224;
  v130(v117, v131);
LABEL_30:
  sub_10003D17C(v129, v254, &qword_10118BFA8);
  v150 = v251;
  MusicPin.action.getter();
  v151 = (*(v74 + 88))(v150, v119);
  if (v151 == enum case for MusicPin.Action.navigate(_:))
  {
    v152 = v244;
    if (qword_10117F6D8 != -1)
    {
      swift_once();
    }

    LODWORD(v257) = sub_100428914() ^ 1;
  }

  else if (v151 == enum case for MusicPin.Action.play(_:) || v151 == enum case for MusicPin.Action.shuffle(_:))
  {
    v153 = v68;
    v154 = v243;
    v155 = v219;
    sub_100537A68(v69, v219);
    v156 = v221;
    v157 = v220;
    v158 = v222;
    (*(v221 + 104))(v220, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v222);
    sub_10034D788(&qword_10118BFC0, &type metadata accessor for MusicPlayer.PlayabilityStatus);
    v159 = dispatch thunk of static Equatable.== infix(_:_:)();
    v160 = *(v156 + 8);
    v160(v157, v158);
    v160(v155, v158);
    if (v159)
    {
      v161 = v215;
      MusicPin.item.getter();
      v162 = v247(v161, v154);
      v68 = v153;
      if (v162 == v225)
      {
        (v209)(v161, v154);
        v163 = v226;
        v164 = v210;
        v165 = v227;
        (*(v226 + 32))(v210, v161, v227);
        v166 = v211;
        Artist.libraryAddedDate.getter();
        (*(v163 + 8))(v164, v165);
        v167 = type metadata accessor for Date();
        LODWORD(v257) = (*(*(v167 - 8) + 48))(v166, 1, v167) == 1;
        sub_1000095E8(v166, &qword_101188C20);
      }

      else
      {
        v130(v161, v154);
        LODWORD(v257) = 0;
      }

      v152 = v244;
      v65 = v256;
    }

    else
    {
      LODWORD(v257) = 1;
      v152 = v244;
      v65 = v256;
      v68 = v153;
    }
  }

  else
  {
    (*(v74 + 8))(v251, v119);
    LODWORD(v257) = 0;
    v152 = v244;
  }

  v168 = MusicPin.id.getter();
  v251 = v169;
  v252 = v168;
  v170 = *(sub_10010FC20(&qword_10118BFB8) + 48);
  v171 = v239;
  sub_1000089F8(v258, v239, &unk_101188920);
  v172 = v260;
  (*(v68 + 16))(v171 + v170, v261, v260);
  (*(v68 + 56))(v171 + v170, 0, 1, v172);
  (*(v237 + 104))(v171, enum case for GridView.Base.ViewModel.ImageConfiguration.Image.artwork(_:), v238);
  v173 = v253;
  v174 = v240;
  (*(v253 + 16))(v240, v259, v65);
  (*(v173 + 56))(v174, 0, 1, v65);
  GridView.Base.ViewModel.ImageConfiguration.init(image:shape:isTallArtwork:)();
  v175 = v254;
  sub_1000089F8(v254, v236, &qword_10118BFA8);
  v176 = v235;
  v177 = v68;
  v178 = v246;
  (*(v152 + 16))(v235, v69, v246);
  v179 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v180 = swift_allocObject();
  v181 = v245;
  *(v180 + 16) = v242;
  *(v180 + 24) = v181;
  (*(v152 + 32))(v180 + v179, v176, v178);
  v182 = GridView.Base.ViewModel.__allocating_init(id:title:subtitle:imageConfiguration:accessory:allowsTouches:disabledAppearance:action:)();
  (*(v152 + 8))(v255, v178);
  sub_1000095E8(v175, &qword_10118BFA8);
  (*(v173 + 8))(v259, v256);
  (*(v177 + 8))(v261, v260);
  sub_1000095E8(v258, &unk_101188920);
  return v182;
}

uint64_t sub_10034D108()
{

  swift_unknownObjectWeakDestroy();

  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_token, &unk_101197210);
  sub_1000095E8(v0 + OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource____lazy_storage___pinsObserver, &qword_10118BFE0);
  v1 = OBJC_IVAR____TtCC5Music28CarPlayLibraryViewController14PinsDataSource_pins;
  v2 = sub_10010FC20(&unk_1011972A0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s14PinsDataSourceCMa()
{
  result = qword_10118BED0;
  if (!qword_10118BED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034D25C()
{
  sub_100329A50();
  if (v0 <= 0x3F)
  {
    sub_10034D35C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10034D35C()
{
  if (!qword_10118BEE0)
  {
    type metadata accessor for MusicPin();
    sub_10034D788(&qword_101197100, &type metadata accessor for MusicPin);
    v0 = type metadata accessor for MusicItemCollection();
    if (!v1)
    {
      atomic_store(v0, &qword_10118BEE0);
    }
  }
}

uint64_t sub_10034D468(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_1003492BC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034D588()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10034D660(uint64_t a1)
{
  v4 = *(type metadata accessor for MusicPin() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_10034848C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10034D788(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10034D7D8()
{
  result = type metadata accessor for Optional();
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

uint64_t sub_10034D888()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(*v0 + 128);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_10034D9A8()
{
  sub_10034D888();

  return swift_deallocClassInstance();
}

uint64_t sub_10034DA78@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  sub_10010FC20(a1);
  sub_100020674(a2, a1);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v15[4] == v15[0])
  {
    v8 = a3(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }

  else
  {
    v10 = dispatch thunk of Collection.subscript.read();
    v12 = v11;
    v13 = a3(0);
    v14 = *(v13 - 8);
    (*(v14 + 16))(a4, v12, v13);
    v10(v15, 0);
    return (*(v14 + 56))(a4, 0, 1, v13);
  }
}

uint64_t sub_10034DFAC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = Album.title.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    return Album.title.getter();
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  if (Album.trackCount.getter() > 1)
  {
    return v7;
  }

  v8 = Album.representativeTrackTitle.getter();
  if (!v9)
  {
    return v7;
  }

  v10 = v8;

  return v10;
}

uint64_t sub_10034E12C()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = Album.artistName.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    return Album.artistName.getter();
  }

  else
  {
    Album.isCompilation.getter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10034E2C4()
{
  v0 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  v3 = Playlist.isOwner.getter();
  if (v3 == 2 || (v3 & 1) == 0)
  {
    return 0;
  }

  static ApplicationCapabilities.shared.getter(v9);
  sub_100014984(v9);
  if (v10 == 2)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = type metadata accessor for UserProfile();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v2, 1, v5) == 1)
  {
    sub_1000095E8(v2, &qword_101183AD0);
    return 0;
  }

  v8 = UserProfile.name.getter();
  (*(v6 + 8))(v2, v5);
  return v8;
}

uint64_t sub_10034E548()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = Artist.name.getter();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {

    return Artist.name.getter();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10034E6A8()
{
  sub_10010FC20(&unk_101182940);
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBCED0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Playlist.Variant.regular(_:), v0);
  v6(v5 + v2, enum case for Playlist.Variant.smart(_:), v0);
  v6(v5 + 2 * v2, enum case for Playlist.Variant.genius(_:), v0);
  v6(v5 + 3 * v2, enum case for Playlist.Variant.favoriteSongs(_:), v0);
  v6(v5 + 4 * v2, enum case for Playlist.Variant.subscribed(_:), v0);
  v6(v5 + 5 * v2, enum case for Playlist.Variant.personalMix(_:), v0);
  v7 = sub_10010DF7C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101218AB0 = v7;
  return result;
}

uint64_t sub_10034E888()
{
  sub_10010FC20(&unk_101182940);
  v0 = type metadata accessor for Playlist.Variant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBF880;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Playlist.Variant.regular(_:), v0);
  v6(v5 + v2, enum case for Playlist.Variant.smart(_:), v0);
  v6(v5 + 2 * v2, enum case for Playlist.Variant.genius(_:), v0);
  v6(v5 + 3 * v2, enum case for Playlist.Variant.favoriteSongs(_:), v0);
  v6(v5 + 4 * v2, enum case for Playlist.Variant.subscribed(_:), v0);
  v6(v5 + 5 * v2, enum case for Playlist.Variant.personalMix(_:), v0);
  v6(v5 + 6 * v2, enum case for Playlist.Variant.folder(_:), v0);
  v7 = sub_10010DF7C(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_101218AB8 = v7;
  return result;
}

uint64_t Playlist.numberOfDuplicateTracks(_:library:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Playlist();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for MusicLibrary.AddToPlaylistAction();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return _swift_task_switch(sub_10034EBAC, 0, 0);
}

uint64_t sub_10034EBAC()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[2] == v0[3])
  {

    v2 = v0[1];

    return v2(0);
  }

  else
  {
    static MusicLibraryAction<>.add(to:)();
    v4 = swift_task_alloc();
    v0[14] = v4;
    v5 = sub_100020674(&unk_10118C0A0, &unk_1011841D0);
    *v4 = v0;
    v4[1] = sub_10034ED7C;
    v6 = v0[13];
    v7 = v0[11];
    v8 = v0[5];

    return MusicLibrary.duplicateCount<A, B>(for:action:)(v8, v6, v1, v7, v5, &protocol witness table for MusicLibrary.AddToPlaylistAction, &protocol witness table for MusicLibrary.AddToPlaylistAction, &protocol witness table for Track);
  }
}

uint64_t sub_10034ED7C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[15] = v1;

  (*(v4[12] + 8))(v4[13], v4[11]);
  if (v1)
  {

    return _swift_task_switch(sub_10034EF34, 0, 0);
  }

  else
  {

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_10034EF34()
{
  v24 = v0;
  if (qword_10117F6E8 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_101218C50);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];
  if (v8)
  {
    v13 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v13 = 136446466;
    v14 = Playlist.description.getter();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    v17 = sub_1000105AC(v14, v16, &v23);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v0[4] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000105AC(v18, v19, &v23);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve duplicate tracks count for playlist=%{public}s with error=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v21 = v0[1];

  return v21(0);
}

uint64_t Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v8 + 624) = v7;
  *(v8 + 616) = a7;
  *(v8 + 985) = a6;
  *(v8 + 608) = a5;
  *(v8 + 984) = a4;
  *(v8 + 600) = a3;
  *(v8 + 592) = a2;
  *(v8 + 584) = a1;
  type metadata accessor for Locale();
  *(v8 + 632) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v8 + 640) = swift_task_alloc();
  v9 = type metadata accessor for MusicLibrary.AddToPlaylistError();
  *(v8 + 648) = v9;
  *(v8 + 656) = *(v9 - 8);
  *(v8 + 664) = swift_task_alloc();
  v10 = sub_10010FC20(&unk_1011841D0);
  *(v8 + 672) = v10;
  v11 = *(v10 - 8);
  *(v8 + 680) = v11;
  *(v8 + 688) = *(v11 + 64);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = sub_10010FC20(&unk_10118C0B0);
  *(v8 + 712) = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  *(v8 + 720) = swift_task_alloc();
  sub_10010FC20(&unk_10118A5E0);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = type metadata accessor for Notice.Variant(0);
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = type metadata accessor for Notice(0);
  *(v8 + 776) = swift_task_alloc();
  *(v8 + 784) = swift_task_alloc();
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  sub_10010FC20(&qword_10118A530);
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  v12 = type metadata accessor for Track();
  *(v8 + 824) = v12;
  *(v8 + 832) = *(v12 - 8);
  *(v8 + 840) = swift_task_alloc();
  *(v8 + 848) = swift_task_alloc();
  v13 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  *(v8 + 856) = v13;
  *(v8 + 864) = *(v13 - 8);
  *(v8 + 872) = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  *(v8 + 880) = v14;
  v15 = *(v14 - 8);
  *(v8 + 888) = v15;
  *(v8 + 896) = *(v15 + 64);
  *(v8 + 904) = swift_task_alloc();
  *(v8 + 912) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 920) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 928) = v17;
  *(v8 + 936) = v16;

  return _swift_task_switch(sub_10034F664, v17, v16);
}

uint64_t sub_10034F664()
{
  v0[118] = sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[58] == v0[59])
  {

    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000060E4(v1, qword_101218C50);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "No tracks to add to playlist.", v4, 2u);
    }

    v5 = v0[1];

    return v5();
  }

  else
  {
    type metadata accessor for MusicLibrary();
    v0[119] = static MusicLibrary.shared.getter();
    v7 = swift_task_alloc();
    v0[120] = v7;
    v8 = sub_100020674(&unk_10118C0A0, &unk_1011841D0);
    v0[121] = v8;
    *v7 = v0;
    v7[1] = sub_10034F9FC;
    v9 = v0[114];
    v10 = v0[84];
    v11 = v0[78];
    v12 = v0[74];
    v13 = v0[73];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v9, v13, v11, v12, 0, 0, v10, v8);
  }
}

uint64_t sub_10034F9FC()
{
  v2 = *v1;
  *(*v1 + 976) = v0;

  if (v0)
  {
    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_100350BE8;
  }

  else
  {

    v3 = *(v2 + 936);
    v4 = *(v2 + 928);
    v5 = sub_10034FB20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10034FB20()
{
  v1 = v0;
  v2 = *(v0 + 985);

  if (v2 != 1)
  {
    (*(*(v0 + 888) + 8))(*(v0 + 912), *(v0 + 880));
    goto LABEL_61;
  }

  v3 = *(v0 + 872);
  v4 = *(v0 + 864);
  v5 = *(v0 + 856);
  v6 = *(v0 + 592);
  v7 = *(v0 + 984);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v8 = dispatch thunk of Collection.distance(from:to:)();
  (*(v4 + 16))(v3, v6, v5);
  v9 = (*(v4 + 88))(v3, v5);
  v10 = enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.skipDuplicates(_:);
  result = (*(v4 + 8))(v3, v5);
  if (v9 == v10 && (v7 & 1) == 0)
  {
    v12 = v1[75];
    v13 = __OFSUB__(v8, v12);
    v8 -= v12;
    if (v13)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  v128 = v8;
  v14 = v1[77];
  v134 = v1;
  if (!v14)
  {
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (dispatch thunk of Collection.distance(from:to:)() == 1)
    {
      v20 = v1[104];
      v21 = v1[103];
      v22 = v1[101];
      sub_10034DA78(&unk_1011841D0, &qword_1011913B0, &type metadata accessor for Track, v22);
      if ((*(v20 + 48))(v22, 1, v21) != 1)
      {
        v74 = v1[104];
        v75 = v1[103];
        v76 = v1[101];
        v125 = Track.id.getter();
        v23 = v77;
        (*(v74 + 8))(v76, v75);
LABEL_36:
        v78 = v128;
        if (Playlist.hasActiveCollaboration.getter())
        {
          v126 = v23;
          v79 = v1 + 54;
          v80 = v1[104];
          v81 = v1[89];
          v82 = v1[88];
          (*(v1[85] + 16))(v1[87], v1[73], v1[84]);
          dispatch thunk of Sequence.makeIterator()();
          v83 = 0;
          v84 = *(v82 + 36);
          v130 = (v80 + 8);
          v132 = (v80 + 16);
          while (1)
          {
            dispatch thunk of Collection.endIndex.getter();
            if (*(v81 + v84) == v1[69])
            {
              break;
            }

            v86 = v1[105];
            v87 = v1[103];
            v88 = dispatch thunk of Collection.subscript.read();
            (*v132)(v86);
            v88(v79, 0);
            dispatch thunk of Collection.formIndex(after:)();
            Track.catalogID.getter();
            v90 = v89;
            result = (*v130)(v86, v87);
            if (v90)
            {

              v85 = 0;
            }

            else
            {
              v85 = 1;
            }

            v13 = __OFADD__(v83, v85);
            v83 += v85;
            v1 = v134;
            if (v13)
            {
              __break(1u);
              goto LABEL_65;
            }
          }

          result = sub_1000095E8(v1[89], &unk_10118C0B0);
          v78 = v128 - v83;
          if (__OFSUB__(v128, v83))
          {
            goto LABEL_66;
          }

          v23 = v126;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v92 = Strong, v93 = UIViewController.noticePresenter.getter(), v92, !v93))
        {
          (*(v1[111] + 8))(v1[114], v1[110]);

          goto LABEL_61;
        }

        v127 = v23;
        v94 = v1[94];
        v95 = v1[91];
        v96 = sub_10010FC20(&unk_10118C0C0);
        v97 = *(v96 + 48);
        *v94 = Playlist.name.getter();
        v94[1] = v98;
        Playlist.artworkViewModel.getter(v95);
        v99 = type metadata accessor for ArtworkImage.ViewModel(0);
        v100 = (*(*(v99 - 8) + 48))(v95, 1, v99);
        v101 = v1[91];
        v133 = v93;
        if (v100 == 1)
        {
          sub_1000095E8(v101, &unk_10118A5E0);
          v102 = type metadata accessor for Artwork();
          (*(*(v102 - 8) + 56))(v94 + v97, 1, 1, v102);
        }

        else
        {
          v103 = type metadata accessor for Artwork();
          v104 = *(v103 - 8);
          (*(v104 + 16))(v94 + v97, v101, v103);
          sub_10035AF54(v101, type metadata accessor for ArtworkImage.ViewModel);
          (*(v104 + 56))(v94 + v97, 0, 1, v103);
        }

        v105 = v1[97];
        v106 = v1[94];
        *(v106 + *(v96 + 64)) = v78;
        swift_storeEnumTagMultiPayload();
        static Notice.variant(_:)(v106, v105);
        sub_10035AF54(v106, type metadata accessor for Notice.Variant);
        PresentationSource.windowScene.getter();
        if (v107)
        {
          v108 = v107;
          v109 = [v107 delegate];

          if (v109 && (v1[68] = v109, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
          {
            v110 = v1[47];
            if (v110)
            {
              v129 = *(*sub_10000954C(v1 + 44, v110) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C((v1 + 44));
LABEL_59:
              v131 = v1[114];
              v111 = v1[113];
              v112 = v1[112];
              v113 = v1[111];
              v114 = v1[110];
              v115 = v1[98];
              v116 = v1[97];
              v117 = v134[96];
              (*(v113 + 16))(v111);
              v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
              v119 = (v112 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
              v120 = swift_allocObject();
              (*(v113 + 32))(v120 + v118, v111, v114);
              v121 = (v120 + v119);
              *v121 = v125;
              v121[1] = v127;
              *(v120 + ((v119 + 23) & 0xFFFFFFFFFFFFFFF8)) = v129;
              sub_10035AEF0(v116, v115);
              v122 = *(v117 + 32);
              v1 = v134;
              v123 = (v115 + v122);
              sub_100020438(*(v115 + v122));
              *v123 = sub_10035AE54;
              v123[1] = v120;
              (*(*v133 + 200))(v115, 0);

              (*(v113 + 8))(v131, v114);
              v73 = v115;
LABEL_60:
              sub_10035AF54(v73, type metadata accessor for Notice);
              goto LABEL_61;
            }
          }

          else
          {
            v1[48] = 0;
            *(v1 + 22) = 0u;
            *(v1 + 23) = 0u;
          }

          sub_1000095E8((v1 + 44), &unk_101184EA0);
        }

        v129 = 0;
        goto LABEL_59;
      }

      sub_1000095E8(v1[101], &qword_10118A530);
    }

    v125 = 0;
    v23 = 0;
    goto LABEL_36;
  }

  v15 = v14;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (dispatch thunk of Collection.distance(from:to:)() != 1)
  {
    v19 = 0;
    goto LABEL_17;
  }

  v16 = v1[104];
  v17 = v1[103];
  v18 = v1[102];
  sub_10034DA78(&unk_1011841D0, &qword_1011913B0, &type metadata accessor for Track, v18);
  if ((*(v16 + 48))(v18, 1, v17) == 1)
  {
    sub_1000095E8(v1[102], &qword_10118A530);
    v19 = 0;
    goto LABEL_17;
  }

  v24 = v1[106];
  (*(v1[104] + 32))(v24, v1[102], v1[103]);
  v25 = [objc_opt_self() kindWithVariants:3];
  v26 = swift_task_alloc();
  *(v26 + 16) = v24;
  v27 = objc_allocWithZone(MPIdentifierSet);
  v28 = String._bridgeToObjectiveC()();
  v29 = swift_allocObject();
  *(v29 + 16) = sub_10035AFC0;
  *(v29 + 24) = v26;
  v1[42] = sub_1002CF914;
  v1[43] = v29;
  v1[38] = _NSConcreteStackBlock;
  v1[39] = 1107296256;
  v1[40] = sub_10006BD7C;
  v1[41] = &unk_1010A8070;
  v30 = _Block_copy(v1 + 38);

  v19 = [v27 initWithSource:v28 modelKind:v25 block:v30];

  v31 = v30;
  v1 = v134;
  _Block_release(v31);

  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
LABEL_67:
    __break(1u);
    return result;
  }

  v32 = v134[106];
  v33 = v134[104];
  v34 = v134[103];

  (*(v33 + 8))(v32, v34);
LABEL_17:
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = UIViewController.noticePresenter.getter();

    if (v37)
    {
      v38 = v1[95];
      v39 = v1[92];
      v40 = sub_10010FC20(&unk_10118C0C0);
      v41 = *(v40 + 48);
      *v38 = Playlist.name.getter();
      v38[1] = v42;
      Playlist.artworkViewModel.getter(v39);
      v43 = type metadata accessor for ArtworkImage.ViewModel(0);
      v44 = (*(*(v43 - 8) + 48))(v39, 1, v43);
      v45 = v1[92];
      if (v44 == 1)
      {
        sub_1000095E8(v1[92], &unk_10118A5E0);
        v46 = type metadata accessor for Artwork();
        (*(*(v46 - 8) + 56))(v38 + v41, 1, 1, v46);
      }

      else
      {
        v47 = type metadata accessor for Artwork();
        v48 = *(v47 - 8);
        (*(v48 + 16))(v38 + v41, v45, v47);
        sub_10035AF54(v45, type metadata accessor for ArtworkImage.ViewModel);
        (*(v48 + 56))(v38 + v41, 0, 1, v47);
      }

      v49 = v1[99];
      v50 = v1[95];
      *(v50 + *(v40 + 64)) = v128;
      swift_storeEnumTagMultiPayload();
      static Notice.variant(_:)(v50, v49);
      sub_10035AF54(v50, type metadata accessor for Notice.Variant);
      PresentationSource.windowScene.getter();
      if (v51)
      {
        v52 = v51;
        v53 = [v51 delegate];

        if (v53 && (v1[72] = v53, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
        {
          v54 = v1[52];
          if (v54)
          {
            v55 = *(*sub_10000954C(v1 + 49, v54) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C((v1 + 49));
LABEL_31:
            v56 = v1[111];
            v57 = v1[110];
            v58 = v1[90];
            v59 = v15;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v60 = (*(v56 + 48))(v58, 1, v57);
            v61 = v1[100];
            v62 = v1[99];
            if (v60 == 1)
            {
              v63 = v1[90];

              sub_1000095E8(v63, &unk_1011814D0);
              sub_10035AEF0(v62, v61);
            }

            else
            {
              v64 = v1[96];
              sub_1000095E8(v1[90], &unk_1011814D0);
              v65 = swift_allocObject();
              v65[2] = v59;
              v65[3] = v19;
              v65[4] = v55;
              sub_10035AEF0(v62, v61);
              v66 = (v61 + *(v64 + 32));
              v67 = *v66;
              v19 = v19;
              v68 = v59;
              sub_100020438(v67);
              *v66 = sub_10035AFB4;
              v66[1] = v65;
            }

            v69 = v1[114];
            v70 = v1[111];
            v71 = v1[110];
            v72 = v1[100];
            (*(*v37 + 200))(v72, 0);

            (*(v70 + 8))(v69, v71);
            v73 = v72;
            goto LABEL_60;
          }
        }

        else
        {
          v1[53] = 0;
          *(v1 + 49) = 0u;
          *(v1 + 51) = 0u;
        }

        sub_1000095E8((v1 + 49), &unk_101184EA0);
      }

      v55 = 0;
      goto LABEL_31;
    }
  }

  (*(v1[111] + 8))(v1[114], v1[110]);

LABEL_61:

  v124 = v1[1];

  return v124();
}

uint64_t sub_100350BE8()
{
  v54 = v0;
  v1 = v0[122];

  v0[60] = v1;
  swift_errorRetain();
  sub_10010FC20(&qword_1011824A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v2 = (*(v0[82] + 88))(v0[83], v0[81]);
  if (v2 != enum case for MusicLibrary.AddToPlaylistError.duplicates(_:))
  {
    if (v2 == enum case for MusicLibrary.AddToPlaylistError.noItemsToAdd(_:))
    {

      if (qword_10117F6E8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000060E4(v20, qword_101218C50);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "No tracks to add to playlist.", v23, 2u);
      }

LABEL_9:

      goto LABEL_16;
    }

    (*(v0[82] + 8))(v0[83], v0[81]);
LABEL_11:

    if (qword_10117F6E8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000060E4(v24, qword_101218C50);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v21, v25);
    v27 = v0[122];
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v53[0] = v29;
      *v28 = 136446210;
      v0[61] = v27;
      swift_errorRetain();
      v30 = String.init<A>(describing:)();
      v32 = sub_1000105AC(v30, v31, v53);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v25, "Failed to add tracks to playlist with error=%{public}s", v28, 0xCu);
      sub_10000959C(v29);

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v49 = v0[113];
  v3 = v0[111];
  v39 = v0[87];
  v43 = v0[86];
  v45 = v0[112];
  v4 = v0[85];
  v37 = v0[110];
  v38 = v0[84];
  v5 = v0[83];
  v6 = v0[82];
  v7 = v0[81];
  v8 = v0[78];
  v50 = v0[76];
  v9 = v0[73];

  (*(v6 + 96))(v5, v7);
  v51 = *v5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47 = *(v3 + 16);
  v47(v49, v8, v37);
  v52 = v4;
  v46 = *(v4 + 16);
  v46(v39, v9, v38);
  sub_10012B7A8(v50, (v0 + 2));
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = (v45 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = (v43 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = v10;
  v13 = swift_allocObject();
  v44 = *(v3 + 32);
  v44(v13 + v10, v49, v37);
  v41 = *(v52 + 32);
  v41(v13 + v11, v39, v38);
  *(v13 + v12) = v51;
  sub_10012B828((v0 + 2), v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = String._bridgeToObjectiveC()();

  v0[30] = sub_10035AB40;
  v0[31] = v13;
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_10027D328;
  v0[29] = &unk_1010A7F80;
  v15 = _Block_copy(v0 + 26);

  v40 = objc_opt_self();
  v48 = [v40 actionWithTitle:v14 style:0 handler:v15];
  _Block_release(v15);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v47(v49, v8, v37);
  v46(v39, v9, v38);
  sub_10012B7A8(v50, (v0 + 14));
  v16 = swift_allocObject();
  v44(v16 + v42, v49, v37);
  v41(v16 + v11, v39, v38);
  *(v16 + v12) = v51;
  sub_10012B828((v0 + 14), v16 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v17 = String._bridgeToObjectiveC()();

  v0[36] = sub_10035AD10;
  v0[37] = v16;
  v0[32] = _NSConcreteStackBlock;
  v0[33] = 1107296256;
  v0[34] = sub_10027D328;
  v0[35] = &unk_1010A7FD0;
  v18 = _Block_copy(v0 + 32);

  v19 = [v40 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v33 = String._bridgeToObjectiveC()();

  v34 = [objc_opt_self() alertControllerWithTitle:v33 message:0 preferredStyle:1];

  [v34 addAction:v48];
  [v34 addAction:v19];
  [v34 setPreferredAction:v19];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v34, 1, 1, 0, 0);

LABEL_16:

LABEL_17:

  v35 = v0[1];

  return v35();
}

uint64_t sub_1003516D4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10035B198;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1001EBE40;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002B8A68;
  aBlock[3] = &unk_1010A8110;
  v11 = _Block_copy(aBlock);

  [a1 setUniversalStoreIdentifiersWithBlock:v11];
  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_1003518EC(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v47[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = Track.catalogID.getter();
  if (v9)
  {
    v10 = HIBYTE(v9) & 0xF;
    v11 = v8 & 0xFFFFFFFFFFFFLL;
    if ((v9 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v9) & 0xF;
    }

    else
    {
      v12 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {

      goto LABEL_69;
    }

    if ((v9 & 0x1000000000000000) != 0)
    {
      v15 = sub_1002D0E10(v8, v9, 10);
      v44 = v43;

      if ((v44 & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      v47[0] = v8;
      v47[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      if (v8 == 43)
      {
        if (v10)
        {
          v11 = v10 - 1;
          if (v10 != 1)
          {
            v15 = 0;
            v34 = v47 + 1;
            while (1)
            {
              v35 = *v34 - 48;
              if (v35 > 9)
              {
                break;
              }

              v36 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                break;
              }

              v15 = v36 + v35;
              if (__OFADD__(v36, v35))
              {
                break;
              }

              ++v34;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_78;
      }

      if (v8 != 45)
      {
        if (v10)
        {
          v15 = 0;
          v39 = v47;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            v39 = (v39 + 1);
            if (!--v10)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

      if (v10)
      {
        v11 = v10 - 1;
        if (v10 != 1)
        {
          v15 = 0;
          v28 = v47 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v15;
            if ((v15 * 10) >> 64 != (10 * v15) >> 63)
            {
              break;
            }

            v15 = v30 - v29;
            if (__OFSUB__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v11)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }
    }

    else
    {
      if ((v8 & 0x1000000000000000) != 0)
      {
        v13 = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
        v11 = v45;
      }

      v14 = *v13;
      if (v14 == 43)
      {
        if (v11 >= 1)
        {
          if (--v11)
          {
            v15 = 0;
            if (v13)
            {
              v31 = v13 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  goto LABEL_67;
                }

                v33 = 10 * v15;
                if ((v15 * 10) >> 64 != (10 * v15) >> 63)
                {
                  goto LABEL_67;
                }

                v15 = v33 + v32;
                if (__OFADD__(v33, v32))
                {
                  goto LABEL_67;
                }

                ++v31;
                if (!--v11)
                {
                  goto LABEL_68;
                }
              }
            }

            goto LABEL_66;
          }

          goto LABEL_67;
        }

        goto LABEL_77;
      }

      if (v14 != 45)
      {
        if (v11)
        {
          v15 = 0;
          if (v13)
          {
            while (1)
            {
              v37 = *v13 - 48;
              if (v37 > 9)
              {
                goto LABEL_67;
              }

              v38 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_67;
              }

              v15 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                goto LABEL_67;
              }

              ++v13;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_66;
        }

LABEL_67:
        v15 = 0;
        LOBYTE(v11) = 1;
LABEL_68:
        v48 = v11;
        v42 = v11;

        if ((v42 & 1) == 0)
        {
LABEL_70:
          [a1 setAdamID:v15];
          return;
        }

LABEL_69:
        v15 = 0;
        goto LABEL_70;
      }

      if (v11 >= 1)
      {
        if (--v11)
        {
          v15 = 0;
          if (v13)
          {
            v16 = v13 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_67;
              }

              v18 = 10 * v15;
              if ((v15 * 10) >> 64 != (10 * v15) >> 63)
              {
                goto LABEL_67;
              }

              v15 = v18 - v17;
              if (__OFSUB__(v18, v17))
              {
                goto LABEL_67;
              }

              ++v16;
              if (!--v11)
              {
                goto LABEL_68;
              }
            }
          }

LABEL_66:
          LOBYTE(v11) = 0;
          goto LABEL_68;
        }

        goto LABEL_67;
      }

      __break(1u);
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000060E4(v19, qword_101219770);
  (*(v5 + 16))(v7, a2, v4);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v47[0] = v23;
    *v22 = 136315138;
    sub_10035B208(&qword_101181A08, &type metadata accessor for Track);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v5 + 8))(v7, v4);
    v27 = sub_1000105AC(v24, v26, v47);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v20, v21, "Catalog ID not present on track=%s.", v22, 0xCu);
    sub_10000959C(v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_100351E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_100351F48, v10, v9);
}

uint64_t sub_100351F48()
{
  (*(v0[7] + 104))(v0[8], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_100352014;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v5, v2, v3, 0, v4, 1, 0);
}

uint64_t sub_100352014()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100352198, v6, v5);
}

uint64_t sub_100352198()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100352200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a4;
  v35 = a7;
  v32 = a5;
  v33 = a6;
  v31 = a3;
  v8 = sub_10010FC20(&unk_1011841D0);
  v29 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v27 - v11;
  v30 = &v27 - v11;
  v13 = type metadata accessor for Playlist();
  v28 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v17 - 8);
  v19 = &v27 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a2, v13);
  (*(v9 + 16))(v12, v31, v8);
  sub_10012B7A8(v32, v36);
  type metadata accessor for MainActor();
  v21 = static MainActor.shared.getter();
  v22 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v23 = (v15 + *(v9 + 80) + v22) & ~*(v9 + 80);
  v24 = (v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = &protocol witness table for MainActor;
  (*(v14 + 32))(v25 + v22, v16, v28);
  (*(v9 + 32))(v25 + v23, v30, v29);
  *(v25 + v24) = v34;
  sub_10012B828(v36, v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v19, v35, v25);
}

uint64_t sub_100352500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[9] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[10] = v10;
  v7[11] = v9;

  return _swift_task_switch(sub_1003525F8, v10, v9);
}

uint64_t sub_1003525F8()
{
  (*(v0[7] + 104))(v0[8], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.skipDuplicates(_:), v0[6]);
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1003526C4;
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v5, v2, v3, 0, v4, 1, 0);
}

uint64_t sub_1003526C4()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_10035B748, v6, v5);
}

uint64_t sub_100352848(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = type metadata accessor for Logger();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = sub_10010FC20(&unk_10118F670);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();

  return _swift_task_switch(sub_100352A18, 0, 0);
}

uint64_t sub_100352A18()
{
  sub_10035B208(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
  sub_10035B208(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
  if (static MusicItem<>.==~ infix(_:_:)())
  {

    v1 = v0[1];

    return v1(2);
  }

  else
  {
    v0[27] = sub_10010FC20(&qword_101183990);
    v3 = swift_allocObject();
    v0[28] = v3;
    *(v3 + 16) = xmmword_100EBC6C0;
    v0[29] = sub_10010FC20(&qword_10118C1A8);
    *(v3 + 32) = static PartialMusicProperty<A>.parent.getter();
    v4 = sub_10035B208(&qword_10118C1B0, &type metadata accessor for Playlist.Folder);
    v0[30] = v4;
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_100352CC8;
    v6 = v0[19];
    v7 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v6, v3, v7, v4);
  }
}

uint64_t sub_100352CC8()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_1003530E4;
  }

  else
  {

    v2 = sub_100352DE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100352DE4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[19];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[7];
  Playlist.Folder.parent.getter();
  v7 = v5[1];
  v0[33] = v7;
  v0[34] = (v5 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  v8 = v5[2];
  v0[35] = v8;
  v0[36] = (v5 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v6, v4);
  v9 = v5[7];
  v0[37] = v9;
  v0[38] = (v5 + 7) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v2, 0, 1, v4);
  v0[39] = sub_10035B208(&qword_10118C1B8, &type metadata accessor for Playlist.Folder);
  LOBYTE(v3) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v2, &unk_10118F670);
  sub_1000095E8(v1, &unk_10118F670);
  if (v3)
  {

    v10 = v0[1];

    return v10(1);
  }

  else
  {
    v9(v0[24], 1, 1, v0[13]);
    v12 = swift_allocObject();
    v0[40] = v12;
    *(v12 + 16) = xmmword_100EBC6C0;
    *(v12 + 32) = static PartialMusicProperty<A>.parent.getter();
    v13 = swift_task_alloc();
    v0[41] = v13;
    *v13 = v0;
    v13[1] = sub_100353470;
    v14 = v0[30];
    v15 = v0[17];
    v16 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v15, v12, v16, v14);
  }
}

uint64_t sub_1003530E4()
{
  v35 = v0;
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v8 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v4, v8, v5);
  (*(v3 + 16))(v1, v7, v2);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[18];
    v13 = v0[13];
    v12 = v0[14];
    v30 = v0[32];
    v31 = v0[10];
    v32 = v0[9];
    v33 = v0[12];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v14 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000105AC(v15, v17, &v34);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[5] = v30;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v34);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v22 = v0[18];
    v23 = v0[13];
    v24 = v0[14];
    v25 = v0[12];
    v26 = v0[9];
    v27 = v0[10];

    (*(v24 + 8))(v22, v23);
    (*(v27 + 8))(v25, v26);
  }

  v28 = v0[1];

  return v28(3);
}

uint64_t sub_100353470()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100353980;
  }

  else
  {

    v2 = sub_10035358C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10035358C()
{
  v1 = v0[33];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[23];
  v5 = v0[17];
  v6 = v0[13];
  v7 = v0[14];
  Playlist.Folder.parent.getter();
  v1(v5, v6);
  sub_10035B128(v2, v3);
  sub_1000089F8(v3, v4, &unk_10118F670);
  v8 = *(v7 + 48);
  v0[43] = v8;
  if (v8(v4, 1, v6) == 1)
  {
LABEL_6:
    v26 = v0[24];
    sub_1000095E8(v0[23], &unk_10118F670);
    v34 = 4;
LABEL_8:
    sub_1000095E8(v26, &unk_10118F670);

    v27 = v0[1];

    return v27(v34);
  }

  else
  {
    v9 = &unk_10118F670;
    v10 = &unk_100EC89B0;
    while (1)
    {
      v35 = v0[37];
      v11 = v0[35];
      v13 = v0[24];
      v12 = v0[25];
      v14 = v9;
      v15 = v0[22];
      v16 = v10;
      v17 = v0[13];
      v18 = v0[8];
      sub_1000095E8(v0[23], v14);
      sub_1000089F8(v13, v12, v14);
      v11(v15, v18, v17);
      v35(v15, 0, 1, v17);
      v10 = v16;
      LOBYTE(v16) = static Optional<A>.==~ infix(_:_:)();
      v19 = v15;
      v9 = v14;
      sub_1000095E8(v19, v14);
      sub_1000095E8(v12, v14);
      if (v16)
      {
        v34 = 0;
        v26 = v0[24];
        goto LABEL_8;
      }

      v20 = v0[24];
      v21 = v0[13];
      if (!(v0[43])(v20, 1, v21))
      {
        break;
      }

      (v0[37])(v0[21], 1, 1, v21);
      v22 = v0[43];
      v24 = v0[23];
      v23 = v0[24];
      v25 = v0[13];
      sub_10035B128(v0[21], v23);
      sub_1000089F8(v23, v24, v14);
      if (v22(v24, 1, v25) == 1)
      {
        goto LABEL_6;
      }
    }

    (v0[35])(v0[15], v20, v21);
    v29 = swift_allocObject();
    v0[44] = v29;
    *(v29 + 16) = xmmword_100EBC6C0;
    *(v29 + 32) = static PartialMusicProperty<A>.parent.getter();
    v30 = swift_task_alloc();
    v0[45] = v30;
    *v30 = v0;
    v30[1] = sub_100353CB4;
    v31 = v0[30];
    v32 = v0[16];
    v33 = v0[13];

    return dispatch thunk of MusicPropertyContainer.with(_:)(v32, v29, v33, v31);
  }
}

uint64_t sub_100353980()
{
  v26 = v0;

  v1 = v0[42];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = Logger.musicKit.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[10];
    v23 = v0[9];
    v24 = v0[11];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136446466;
    swift_beginAccess();
    sub_1000089F8(v8, v9, &unk_10118F670);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v0[6] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, &v25);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v24, v23);
  }

  else
  {
    v8 = v0[24];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
  }

  sub_1000095E8(v8, &unk_10118F670);

  v21 = v0[1];

  return v21(3);
}

uint64_t sub_100353CB4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  (*(v2 + 264))(*(v2 + 120), *(v2 + 104));

  if (v0)
  {
    v3 = sub_1003541D4;
  }

  else
  {
    v3 = sub_100353E40;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100353E40()
{
  v1 = v0[33];
  v2 = v0[16];
  v3 = v0[13];
  Playlist.Folder.parent.getter();
  v1(v2, v3);
  v4 = &unk_100EC89B0;
  while (1)
  {
    v5 = v0[43];
    v7 = v0[23];
    v6 = v0[24];
    v8 = v0[13];
    sub_10035B128(v0[21], v6);
    sub_1000089F8(v6, v7, &unk_10118F670);
    if (v5(v7, 1, v8) == 1)
    {
      v19 = v0[24];
      sub_1000095E8(v0[23], &unk_10118F670);
      v28 = 4;
      goto LABEL_8;
    }

    v27 = v0[37];
    v9 = v0[35];
    v11 = v0[24];
    v10 = v0[25];
    v12 = v4;
    v13 = v0[22];
    v14 = v0[13];
    v15 = v0[8];
    sub_1000095E8(v0[23], &unk_10118F670);
    sub_1000089F8(v11, v10, &unk_10118F670);
    v9(v13, v15, v14);
    v27(v13, 0, 1, v14);
    LOBYTE(v9) = static Optional<A>.==~ infix(_:_:)();
    v16 = v13;
    v4 = v12;
    sub_1000095E8(v16, &unk_10118F670);
    sub_1000095E8(v10, &unk_10118F670);
    if (v9)
    {
      break;
    }

    v17 = v0[24];
    v18 = v0[13];
    if (!(v0[43])(v17, 1, v18))
    {
      (v0[35])(v0[15], v17, v18);
      v22 = swift_allocObject();
      v0[44] = v22;
      *(v22 + 16) = xmmword_100EBC6C0;
      *(v22 + 32) = static PartialMusicProperty<A>.parent.getter();
      v23 = swift_task_alloc();
      v0[45] = v23;
      *v23 = v0;
      v23[1] = sub_100353CB4;
      v24 = v0[30];
      v25 = v0[16];
      v26 = v0[13];

      return dispatch thunk of MusicPropertyContainer.with(_:)(v25, v22, v26, v24);
    }

    (v0[37])(v0[21], 1, 1, v18);
  }

  v28 = 0;
  v19 = v0[24];
LABEL_8:
  sub_1000095E8(v19, &unk_10118F670);

  v20 = v0[1];

  return v20(v28);
}

uint64_t sub_1003541D4()
{
  v26 = v0;
  v1 = v0[46];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = Logger.musicKit.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[24];
    v9 = v0[25];
    v10 = v0[10];
    v23 = v0[9];
    v24 = v0[11];
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v11 = 136446466;
    swift_beginAccess();
    sub_1000089F8(v8, v9, &unk_10118F670);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v25);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v0[6] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, &v25);

    *(v11 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v11, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v24, v23);
  }

  else
  {
    v8 = v0[24];
    v19 = v0[10];
    v18 = v0[11];
    v20 = v0[9];

    (*(v19 + 8))(v18, v20);
  }

  sub_1000095E8(v8, &unk_10118F670);

  v21 = v0[1];

  return v21(3);
}

uint64_t sub_100354500(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for Playlist.Folder();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_10010FC20(&unk_10118F670);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = type metadata accessor for Playlist();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v6 = type metadata accessor for Playlist.Folder.Item();
  v2[29] = v6;
  v2[30] = *(v6 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(sub_1003547A8, 0, 0);
}

uint64_t sub_1003547A8()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];
  (*(v2 + 16))(v1, v0[5], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 != enum case for Playlist.Folder.Item.folder(_:))
  {
    v20 = v0[30];
    v21 = v0[31];
    v22 = v0[29];
    if (v4 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      v23 = v0[28];
      v24 = v0[23];
      v25 = v0[24];
      v26 = v0[22];
      v27 = v0[10];
      v28 = v0[11];
      v29 = v0[4];
      (*(v20 + 96))(v0[31], v22);
      (*(v25 + 32))(v23, v21, v24);
      sub_1000089F8(v29, v26, &unk_10118F670);
      v30 = *(v28 + 48);
      v0[32] = v30;
      v0[33] = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v30(v26, 1, v27) == 1)
      {
        sub_10010FC20(&qword_101183990);
        v31 = swift_allocObject();
        v0[39] = v31;
        *(v31 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&unk_10118C1C0);
        *(v31 + 32) = static PartialMusicProperty<A>.parent.getter();
        v32 = swift_task_alloc();
        v0[40] = v32;
        *v32 = v0;
        v32[1] = sub_100355690;
        v16 = v0[26];
LABEL_7:
        v17 = v0[23];
        v19 = &protocol witness table for Playlist;
        v18 = v31;
        goto LABEL_8;
      }

      v35 = v0[22];
      v36 = v0[17];
      v37 = v0[10];
      v38 = v0[11];
      v39 = *(v38 + 32);
      v0[34] = v39;
      v0[35] = (v38 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v39(v36, v35, v37);
      v40 = Playlist.id.getter();
      v42 = v41;
      if (v40 == Playlist.Folder.id.getter() && v42 == v43)
      {
      }

      else
      {
        v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v44 & 1) == 0)
        {
          sub_10010FC20(&qword_101183990);
          v31 = swift_allocObject();
          v0[36] = v31;
          *(v31 + 16) = xmmword_100EBC6C0;
          sub_10010FC20(&unk_10118C1C0);
          *(v31 + 32) = static PartialMusicProperty<A>.parent.getter();
          v49 = swift_task_alloc();
          v0[37] = v49;
          *v49 = v0;
          v49[1] = sub_100354E7C;
          v16 = v0[27];
          goto LABEL_7;
        }
      }

      v45 = v0[28];
      v46 = v0[23];
      v47 = v0[24];
      (*(v0[11] + 8))(v0[17], v0[10]);
      (*(v47 + 8))(v45, v46);
    }

    else
    {
      (*(v20 + 8))(v0[31], v22);
    }

    v48 = v0[1];

    return v48(0);
  }

  v5 = v0[31];
  v6 = v0[19];
  v7 = v0[15];
  v8 = v0[10];
  v9 = v0[11];
  v10 = v0[4];
  (*(v0[30] + 96))(v5, v0[29]);
  v11 = *(v9 + 32);
  v11(v7, v5, v8);
  sub_1000089F8(v10, v6, &unk_10118F670);
  v12 = *(v9 + 48);
  v0[42] = v12;
  v0[43] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v12(v6, 1, v8) == 1)
  {
    sub_10010FC20(&qword_101183990);
    v13 = swift_allocObject();
    v0[45] = v13;
    *(v13 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_10118C1A8);
    *(v13 + 32) = static PartialMusicProperty<A>.parent.getter();
    v14 = sub_10035B208(&qword_10118C1B0, &type metadata accessor for Playlist.Folder);
    v15 = swift_task_alloc();
    v0[46] = v15;
    *v15 = v0;
    v15[1] = sub_100355FE8;
    v16 = v0[13];
    v17 = v0[10];
    v18 = v13;
    v19 = v14;
LABEL_8:

    return dispatch thunk of MusicPropertyContainer.with(_:)(v16, v18, v17, v19);
  }

  v11(v0[14], v0[19], v0[10]);
  v33 = swift_task_alloc();
  v0[44] = v33;
  *v33 = v0;
  v33[1] = sub_100355D68;
  v34 = v0[14];

  return sub_100352848(v34);
}

uint64_t sub_100354E7C()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100355284;
  }

  else
  {
    v2 = sub_100354FAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100354FAC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = *(v0 + 168);
  v6 = *(v0 + 80);
  Playlist.parent.getter();
  v7 = *(v4 + 8);
  v7(v2, v3);
  if (v1(v5, 1, v6) == 1)
  {
    v8 = *(v0 + 224);
    v9 = *(v0 + 184);
    v10 = *(v0 + 168);
    (*(*(v0 + 88) + 8))(*(v0 + 136), *(v0 + 80));
    v7(v8, v9);
    sub_1000095E8(v10, &unk_10118F670);
  }

  else
  {
    v20 = *(v0 + 224);
    v11 = *(v0 + 184);
    v13 = *(v0 + 128);
    v12 = *(v0 + 136);
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    (*(v0 + 272))(v13, *(v0 + 168), v15);
    sub_10035B208(&qword_10118C1A0, &type metadata accessor for Playlist.Folder);
    sub_10035B208(&unk_1011828D0, &type metadata accessor for Playlist.Folder);
    v16 = static MusicItem<>.==~ infix(_:_:)();
    v17 = *(v14 + 8);
    v17(v13, v15);
    v17(v12, v15);
    v7(v20, v11);
    if (v16)
    {
      v21 = 0;
      goto LABEL_6;
    }
  }

  v21 = 1;
LABEL_6:

  v18 = *(v0 + 8);

  return v18(v21);
}

uint64_t sub_100355284()
{
  v40 = v0;
  (*(v0[11] + 8))(v0[17], v0[10]);
  v1 = v0[38];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v11;
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v37 = v0[8];
    v38 = v0[28];
    v35 = v0[7];
    v36 = v0[6];
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_1000105AC(v16, v18, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v39);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v34, "Failed to retrieve parent for playlist=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v37, v36);
    v19(v38, v14);
  }

  else
  {
    v24 = v0[28];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];

    v31 = *(v26 + 8);
    v31(v25, v27);
    (*(v29 + 8))(v28, v30);
    v31(v24, v27);
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_100355690()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10035596C;
  }

  else
  {

    v2 = sub_1003557AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003557AC()
{
  v1 = v0[32];
  v2 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[20];
  v7 = v0[10];
  Playlist.parent.getter();
  v8 = *(v5 + 8);
  v8(v3, v4);
  v8(v2, v4);
  v11 = v1(v6, 1, v7) != 1;
  sub_1000095E8(v6, &unk_10118F670);

  v9 = v0[1];

  return v9(v11);
}

uint64_t sub_10035596C()
{
  v40 = v0;

  v1 = v0[41];
  v2 = v0[28];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[23];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v11;
    v13 = v0[24];
    v12 = v0[25];
    v14 = v0[23];
    v37 = v0[8];
    v38 = v0[28];
    v35 = v0[7];
    v36 = v0[6];
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_1000105AC(v16, v18, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v0[3] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v21 = String.init<A>(describing:)();
    v23 = sub_1000105AC(v21, v22, &v39);

    *(v15 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v10, v34, "Failed to retrieve parent for playlist=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v35 + 8))(v37, v36);
    v19(v38, v14);
  }

  else
  {
    v24 = v0[28];
    v26 = v0[24];
    v25 = v0[25];
    v27 = v0[23];
    v29 = v0[7];
    v28 = v0[8];
    v30 = v0[6];

    v31 = *(v26 + 8);
    v31(v25, v27);
    (*(v29 + 8))(v28, v30);
    v31(v24, v27);
  }

  v32 = v0[1];

  return v32(0);
}

uint64_t sub_100355D68(char a1)
{
  *(*v1 + 384) = a1;

  return _swift_task_switch(sub_100355E68, 0, 0);
}

uint64_t sub_100355E68()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 120);
  v3 = *(v0 + 80);
  v4 = *(*(v0 + 88) + 8);
  v4(*(v0 + 112), v3);
  v4(v2, v3);

  v5 = *(v0 + 8);

  return v5(v1 > 3);
}

uint64_t sub_100355FE8()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1003562C0;
  }

  else
  {

    v2 = sub_100356104;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100356104()
{
  v1 = v0[42];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  Playlist.Folder.parent.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  v7(v3, v5);
  v10 = v1(v2, 1, v5) != 1;
  sub_1000095E8(v2, &unk_10118F670);

  v8 = v0[1];

  return v8(v10);
}

uint64_t sub_1003562C0()
{
  v39 = v0;
  v1 = v0[15];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[6];
  v7 = v0[7];

  v8 = Logger.musicKit.unsafeMutableAddressor();
  (*(v7 + 16))(v5, v8, v6);
  (*(v3 + 16))(v2, v1, v4);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v33 = v0[47];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v36 = v0[9];
    v37 = v0[15];
    v34 = v0[7];
    v35 = v0[6];
    v14 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v14 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, &v38);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v0[2] = v33;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, &v38);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v9, v10, "Failed to retrieve parent for folder=%{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v34 + 8))(v36, v35);
    v18(v37, v13);
  }

  else
  {
    v23 = v0[15];
    v25 = v0[11];
    v24 = v0[12];
    v27 = v0[9];
    v26 = v0[10];
    v28 = v0[6];
    v29 = v0[7];

    v30 = *(v25 + 8);
    v30(v24, v26);
    (*(v29 + 8))(v27, v28);
    v30(v23, v26);
  }

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_1003566B8(uint64_t a1, uint64_t a2)
{
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = type metadata accessor for Notice(0);
  v3[37] = v4;
  v3[38] = *(v4 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118C158);
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118C160);
  v3[45] = v6;
  v3[46] = *(v6 - 8);
  v3[47] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Folder();
  v3[48] = v7;
  v8 = *(v7 - 8);
  v3[49] = v8;
  v3[50] = *(v8 + 64);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = type metadata accessor for Notice.Variant(0);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = sub_10010FC20(&unk_10118F670);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[68] = v9;
  v3[69] = *(v9 - 8);
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v10 = sub_10010FC20(&qword_1011842C8);
  v3[74] = v10;
  v3[75] = *(v10 - 8);
  v3[76] = swift_task_alloc();
  sub_10010FC20(&unk_10118C170);
  v3[77] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_1011842E0);
  v3[78] = v11;
  v3[79] = *(v11 - 8);
  v3[80] = swift_task_alloc();
  v12 = type metadata accessor for Playlist();
  v3[81] = v12;
  v3[82] = *(v12 - 8);
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v13 = type metadata accessor for Playlist.Folder.Item();
  v3[86] = v13;
  v3[87] = *(v13 - 8);
  v3[88] = swift_task_alloc();
  sub_10010FC20(&unk_10118B980);
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[93] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[94] = v15;
  v3[95] = v14;

  return _swift_task_switch(sub_100356CB0, v15, v14);
}

uint64_t sub_100356CB0()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  (*(v2 + 16))(v1, *(v0 + 288), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for Playlist.Folder.Item.folder(_:))
  {
    v5 = *(v0 + 704);
    v6 = *(v0 + 440);
    v7 = *(v0 + 384);
    v8 = *(v0 + 392);
    (*(*(v0 + 696) + 96))(v5, *(v0 + 688));
    (*(v8 + 32))(v6, v5, v7);
    static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:parent:)();
    v9 = swift_task_alloc();
    *(v0 + 784) = v9;
    *v9 = v0;
    v9[1] = sub_1003581EC;
    v10 = *(v0 + 352);

    return MusicLibraryPlaylistRequest.response<>()(v10);
  }

  if (v4 == enum case for Playlist.Folder.Item.playlist(_:))
  {
    v11 = *(v0 + 704);
    v12 = *(v0 + 680);
    v13 = *(v0 + 656);
    v14 = *(v0 + 648);
    v15 = *(v0 + 616);
    (*(*(v0 + 696) + 96))(v11, *(v0 + 688));
    (*(v13 + 32))(v12, v11, v14);
    v16 = type metadata accessor for Curator();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:isPublic:isVisible:curator:parent:)();
    sub_1000095E8(v15, &unk_10118C170);
    v17 = swift_task_alloc();
    *(v0 + 768) = v17;
    *v17 = v0;
    v17[1] = sub_100357624;
    v18 = *(v0 + 608);

    return MusicLibraryPlaylistRequest.response<>()(v18);
  }

  v19 = *(v0 + 736);
  v20 = *(v0 + 704);
  v21 = *(v0 + 696);
  v22 = *(v0 + 688);
  v23 = *(v0 + 296);
  v24 = *(v0 + 304);

  (*(v24 + 56))(v19, 1, 1, v23);
  (*(v21 + 8))(v20, v22);
  v25 = *(v0 + 712);
  v26 = *(v0 + 296);
  v27 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v25, &unk_10118B980);
  if ((*(v27 + 48))(v25, 1, v26) != 1)
  {
    v31 = *(v0 + 280);
    sub_10035AEF0(*(v0 + 712), *(v0 + 328));
    sub_1000089F8(v31, v0 + 112, &unk_1011845E0);
    if (*(v0 + 176) == 1)
    {
      v32 = *(v0 + 736);
      sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
      sub_1000095E8(v32, &unk_10118B980);
      v30 = &unk_1011845E0;
      v29 = v0 + 112;
      goto LABEL_29;
    }

    v33 = *(v0 + 496);
    v34 = *(v0 + 384);
    v35 = *(v0 + 392);
    v36 = *(v0 + 272);
    sub_10012B828(v0 + 112, v0 + 16);
    sub_1000089F8(v36, v33, &unk_10118F670);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      sub_1000095E8(*(v0 + 496), &unk_10118F670);
      goto LABEL_25;
    }

    v37 = *(v0 + 328);
    v38 = *(v0 + 312);
    v64 = *(*(v0 + 392) + 32);
    v64(*(v0 + 424), *(v0 + 496), *(v0 + 384));
    sub_10035AFC8(v37, v38);
    PresentationSource.windowScene.getter();
    v40 = *(v0 + 328);
    if (v39)
    {
      v41 = v39;
      v42 = [v39 delegate];

      sub_10035AF54(v40, type metadata accessor for Notice);
      if (v42 && (*(v0 + 248) = v42, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
      {
        v43 = *(v0 + 232);
        if (v43)
        {
          v63 = *(*sub_10000954C((v0 + 208), v43) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(v0 + 208);
LABEL_24:
          v44 = *(v0 + 416);
          v46 = *(v0 + 392);
          v45 = *(v0 + 400);
          v47 = *(v0 + 384);
          v48 = *(v0 + 320);
          v49 = *(v0 + 312);
          v61 = *(v0 + 296);
          v62 = *(v0 + 328);
          v64(v44, *(v0 + 424), v47);
          v50 = (*(v46 + 80) + 16) & ~*(v46 + 80);
          v51 = (v45 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
          v52 = swift_allocObject();
          v64(v52 + v50, v44, v47);
          *(v52 + v51) = v63;
          sub_10035AEF0(v49, v48);
          v53 = (v48 + *(v61 + 32));
          sub_100020438(*v53);
          *v53 = sub_10035B02C;
          v53[1] = v52;
          sub_10035AEF0(v48, v62);
LABEL_25:
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v55 = Strong;
            v56 = UIViewController.noticePresenter.getter();

            if (v56)
            {
              (*(*v56 + 200))(*(v0 + 328), 0);
            }
          }

          v57 = *(v0 + 736);
          v58 = *(v0 + 328);
          sub_10012BA6C(v0 + 16);
          sub_10035AF54(v58, type metadata accessor for Notice);
          v30 = &unk_10118B980;
          v29 = v57;
          goto LABEL_29;
        }
      }

      else
      {
        *(v0 + 240) = 0;
        *(v0 + 208) = 0u;
        *(v0 + 224) = 0u;
      }

      sub_1000095E8(v0 + 208, &unk_101184EA0);
    }

    else
    {
      sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    }

    v63 = 0;
    goto LABEL_24;
  }

  v28 = *(v0 + 712);
  sub_1000095E8(*(v0 + 736), &unk_10118B980);
  v29 = v28;
  v30 = &unk_10118B980;
LABEL_29:
  sub_1000095E8(v29, v30);

  v59 = *(v0 + 8);

  return v59(0);
}

uint64_t sub_100357624()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_100358DB0;
  }

  else
  {
    (*(v2[75] + 8))(v2[76], v2[74]);
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_10035775C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10035775C()
{
  v96 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 584);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 536);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v10, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_1000089F8(v9, v8, &unk_10118F670);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 672);
  v15 = *(v0 + 656);
  v16 = *(v0 + 648);
  v17 = *(v0 + 584);
  v18 = *(v0 + 552);
  v19 = *(v0 + 544);
  v20 = *(v0 + 536);
  if (v13)
  {
    v82 = *(v0 + 528);
    v83 = v12;
    v21 = swift_slowAlloc();
    v95[0] = swift_slowAlloc();
    *v21 = 136446466;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist);
    v86 = v17;
    v89 = v19;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v93 = *(v15 + 8);
    v93(v14, v16);
    v25 = sub_1000105AC(v22, v24, v95);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2082;
    sub_1000089F8(v20, v82, &unk_10118F670);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1000095E8(v20, &unk_10118F670);
    v29 = sub_1000105AC(v26, v28, v95);

    *(v21 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v83, "Moved playlist=%{public}s to parent=%{public}s", v21, 0x16u);
    swift_arrayDestroy();

    (*(v18 + 8))(v86, v89);
  }

  else
  {

    sub_1000095E8(v20, &unk_10118F670);
    v93 = *(v15 + 8);
    v93(v14, v16);
    (*(v18 + 8))(v17, v19);
  }

  v30 = *(v0 + 520);
  v31 = *(v0 + 384);
  v32 = *(v0 + 392);
  sub_1000089F8(*(v0 + 272), v30, &unk_10118F670);
  v33 = (*(v32 + 48))(v30, 1, v31);
  v34 = *(v0 + 520);
  if (v33 == 1)
  {
    sub_1000095E8(*(v0 + 520), &unk_10118F670);
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v37 = *(v0 + 384);
    v38 = *(v0 + 392);
    v35 = Playlist.Folder.name.getter();
    v36 = v39;
    (*(v38 + 8))(v34, v37);
  }

  v40 = *(v0 + 728);
  v84 = *(v0 + 648);
  v87 = *(v0 + 680);
  v41 = *(v0 + 640);
  v42 = *(v0 + 632);
  v43 = *(v0 + 624);
  v44 = *(v0 + 464);
  v45 = *(v0 + 304);
  v90 = *(v0 + 296);
  v92 = *(v0 + 736);
  *v44 = v35;
  v44[1] = v36;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v44, v40);
  sub_10035AF54(v44, type metadata accessor for Notice.Variant);
  (*(v42 + 8))(v41, v43);
  v93(v87, v84);
  (*(v45 + 56))(v40, 0, 1, v90);
  sub_10035B0B8(v40, v92);
  v46 = *(v0 + 712);
  v47 = *(v0 + 296);
  v48 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v46, &unk_10118B980);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    v49 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980);
    v50 = v49;
    v51 = &unk_10118B980;
    goto LABEL_27;
  }

  v52 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v52, v0 + 112, &unk_1011845E0);
  if (*(v0 + 176) == 1)
  {
    v53 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v53, &unk_10118B980);
    v51 = &unk_1011845E0;
    v50 = v0 + 112;
    goto LABEL_27;
  }

  v54 = *(v0 + 496);
  v55 = *(v0 + 384);
  v56 = *(v0 + 392);
  v57 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v57, v54, &unk_10118F670);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670);
    goto LABEL_23;
  }

  v58 = *(v0 + 328);
  v59 = *(v0 + 312);
  v94 = *(*(v0 + 392) + 32);
  v94(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v58, v59);
  PresentationSource.windowScene.getter();
  v61 = *(v0 + 328);
  if (!v60)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_21;
  }

  v62 = v60;
  v63 = [v60 delegate];

  sub_10035AF54(v61, type metadata accessor for Notice);
  if (!v63 || (*(v0 + 248) = v63, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_19;
  }

  v64 = *(v0 + 232);
  if (!v64)
  {
LABEL_19:
    sub_1000095E8(v0 + 208, &unk_101184EA0);
LABEL_21:
    v91 = 0;
    goto LABEL_22;
  }

  v91 = *(*sub_10000954C((v0 + 208), v64) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 208);
LABEL_22:
  v65 = *(v0 + 416);
  v67 = *(v0 + 392);
  v66 = *(v0 + 400);
  v68 = *(v0 + 384);
  v69 = *(v0 + 320);
  v70 = *(v0 + 312);
  v85 = *(v0 + 296);
  v88 = *(v0 + 328);
  v94(v65, *(v0 + 424), v68);
  v71 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v72 = (v66 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  v94(v73 + v71, v65, v68);
  *(v73 + v72) = v91;
  sub_10035AEF0(v70, v69);
  v74 = (v69 + *(v85 + 32));
  sub_100020438(*v74);
  *v74 = sub_10035B02C;
  v74[1] = v73;
  sub_10035AEF0(v69, v88);
LABEL_23:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v76 = Strong;
    v77 = UIViewController.noticePresenter.getter();

    if (v77)
    {
      (*(*v77 + 200))(*(v0 + 328), 0);
    }
  }

  v78 = *(v0 + 736);
  v79 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v79, type metadata accessor for Notice);
  v51 = &unk_10118B980;
  v50 = v78;
LABEL_27:
  sub_1000095E8(v50, v51);

  v80 = *(v0 + 8);

  return v80(1);
}

uint64_t sub_1003581EC()
{
  v2 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_10035983C;
  }

  else
  {
    (*(v2[43] + 8))(v2[44], v2[42]);
    v3 = v2[95];
    v4 = v2[94];
    v5 = sub_100358320;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100358320()
{
  v100 = v0;
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 512);
  v6 = *(v0 + 432);
  v5 = *(v0 + 440);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v10, v3);
  (*(v8 + 16))(v6, v5, v7);
  sub_1000089F8(v9, v4, &unk_10118F670);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 576);
  v15 = *(v0 + 552);
  v16 = *(v0 + 544);
  if (v13)
  {
    v86 = *(v0 + 528);
    v85 = *(v0 + 512);
    v94 = v12;
    v17 = *(v0 + 432);
    v18 = *(v0 + 384);
    v19 = *(v0 + 392);
    v96 = *(v0 + 576);
    v20 = swift_slowAlloc();
    v99[0] = swift_slowAlloc();
    *v20 = 136446466;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v16;
    v23 = v22;
    v24 = *(v19 + 8);
    v24(v17, v18);
    v25 = sub_1000105AC(v21, v23, v99);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2082;
    sub_1000089F8(v85, v86, &unk_10118F670);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1000095E8(v85, &unk_10118F670);
    v29 = sub_1000105AC(v26, v28, v99);

    *(v20 + 14) = v29;
    _os_log_impl(&_mh_execute_header, v11, v94, "Moved folder=%{public}s to parent=%{public}s", v20, 0x16u);
    swift_arrayDestroy();

    (*(v15 + 8))(v96, v89);
  }

  else
  {
    v30 = *(v0 + 512);
    v31 = *(v0 + 432);
    v32 = *(v0 + 384);
    v33 = *(v0 + 392);

    sub_1000095E8(v30, &unk_10118F670);
    v24 = *(v33 + 8);
    v24(v31, v32);
    (*(v15 + 8))(v14, v16);
  }

  v34 = *(v0 + 504);
  v35 = *(v0 + 384);
  v36 = *(v0 + 392);
  sub_1000089F8(*(v0 + 272), v34, &unk_10118F670);
  v37 = (*(v36 + 48))(v34, 1, v35);
  v38 = *(v0 + 504);
  v95 = v24;
  if (v37 == 1)
  {
    sub_1000095E8(v38, &unk_10118F670);
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v41 = *(v0 + 384);
    v39 = Playlist.Folder.name.getter();
    v40 = v42;
    v24(v38, v41);
  }

  v97 = *(v0 + 736);
  v43 = *(v0 + 720);
  v44 = *(v0 + 456);
  v87 = *(v0 + 384);
  v90 = *(v0 + 440);
  v45 = *(v0 + 368);
  v46 = *(v0 + 376);
  v47 = *(v0 + 360);
  v48 = *(v0 + 304);
  v92 = *(v0 + 296);
  *v44 = v39;
  v44[1] = v40;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v44, v43);
  sub_10035AF54(v44, type metadata accessor for Notice.Variant);
  (*(v45 + 8))(v46, v47);
  v95(v90, v87);
  (*(v48 + 56))(v43, 0, 1, v92);
  sub_10035B0B8(v43, v97);
  v49 = *(v0 + 712);
  v50 = *(v0 + 296);
  v51 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v49, &unk_10118B980);
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    v52 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980);
    v53 = v52;
    v54 = &unk_10118B980;
    goto LABEL_27;
  }

  v55 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v55, v0 + 112, &unk_1011845E0);
  if (*(v0 + 176) == 1)
  {
    v56 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v56, &unk_10118B980);
    v54 = &unk_1011845E0;
    v53 = v0 + 112;
    goto LABEL_27;
  }

  v57 = *(v0 + 496);
  v58 = *(v0 + 384);
  v59 = *(v0 + 392);
  v60 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v60, v57, &unk_10118F670);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670);
    goto LABEL_23;
  }

  v61 = *(v0 + 328);
  v62 = *(v0 + 312);
  v98 = *(*(v0 + 392) + 32);
  v98(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v61, v62);
  PresentationSource.windowScene.getter();
  v64 = *(v0 + 328);
  if (!v63)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_21;
  }

  v65 = v63;
  v66 = [v63 delegate];

  sub_10035AF54(v64, type metadata accessor for Notice);
  if (!v66 || (*(v0 + 248) = v66, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_19;
  }

  v67 = *(v0 + 232);
  if (!v67)
  {
LABEL_19:
    sub_1000095E8(v0 + 208, &unk_101184EA0);
LABEL_21:
    v93 = 0;
    goto LABEL_22;
  }

  v93 = *(*sub_10000954C((v0 + 208), v67) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 208);
LABEL_22:
  v68 = *(v0 + 416);
  v70 = *(v0 + 392);
  v69 = *(v0 + 400);
  v71 = *(v0 + 384);
  v72 = *(v0 + 320);
  v73 = *(v0 + 312);
  v88 = *(v0 + 296);
  v91 = *(v0 + 328);
  v98(v68, *(v0 + 424), v71);
  v74 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v75 = (v69 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v98(v76 + v74, v68, v71);
  *(v76 + v75) = v93;
  sub_10035AEF0(v73, v72);
  v77 = (v72 + *(v88 + 32));
  sub_100020438(*v77);
  *v77 = sub_10035B02C;
  v77[1] = v76;
  sub_10035AEF0(v72, v91);
LABEL_23:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v79 = Strong;
    v80 = UIViewController.noticePresenter.getter();

    if (v80)
    {
      (*(*v80 + 200))(*(v0 + 328), 0);
    }
  }

  v81 = *(v0 + 736);
  v82 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v82, type metadata accessor for Notice);
  v54 = &unk_10118B980;
  v53 = v81;
LABEL_27:
  sub_1000095E8(v53, v54);

  v83 = *(v0 + 8);

  return v83(1);
}

uint64_t sub_100358DB0()
{
  v94 = v0;
  v1 = *(v0 + 680);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = *(v0 + 568);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v8 = *(v0 + 488);
  v9 = *(v0 + 272);

  v10 = Logger.musicKit.unsafeMutableAddressor();
  (*(v6 + 16))(v5, v10, v7);
  (*(v3 + 16))(v2, v1, v4);
  sub_1000089F8(v9, v8, &unk_10118F670);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v77 = *(v0 + 776);
    v90 = *(v0 + 680);
    v78 = v12;
    v13 = *(v0 + 664);
    v14 = *(v0 + 656);
    v15 = *(v0 + 648);
    v85 = *(v0 + 624);
    v88 = *(v0 + 640);
    v81 = *(v0 + 568);
    v83 = *(v0 + 632);
    v79 = *(v0 + 552);
    v80 = *(v0 + 544);
    v16 = *(v0 + 528);
    v76 = *(v0 + 488);
    v17 = swift_slowAlloc();
    v93[0] = swift_slowAlloc();
    *v17 = 136446722;
    sub_10035B208(&qword_101184200, &type metadata accessor for Playlist);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_1000105AC(v18, v20, v93);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2082;
    sub_1000089F8(v76, v16, &unk_10118F670);
    v23 = String.init<A>(describing:)();
    v25 = v24;
    sub_1000095E8(v76, &unk_10118F670);
    v26 = sub_1000105AC(v23, v25, v93);

    *(v17 + 14) = v26;
    *(v17 + 22) = 2082;
    *(v0 + 264) = v77;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000105AC(v27, v28, v93);

    *(v17 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v78, "Failed to move playlist=%{public}s to parent=%{public}s with error=%{public}s", v17, 0x20u);
    swift_arrayDestroy();

    (*(v79 + 8))(v81, v80);
    (*(v83 + 8))(v88, v85);
    v21(v90, v15);
  }

  else
  {
    v30 = *(v0 + 664);
    v31 = v11;
    v32 = *(v0 + 656);
    v33 = *(v0 + 648);
    v89 = *(v0 + 640);
    v91 = *(v0 + 680);
    v34 = *(v0 + 632);
    v86 = *(v0 + 624);
    v35 = *(v0 + 568);
    v36 = *(v0 + 552);
    v37 = *(v0 + 544);
    v38 = *(v0 + 488);

    sub_1000095E8(v38, &unk_10118F670);
    v39 = *(v32 + 8);
    v39(v30, v33);
    (*(v36 + 8))(v35, v37);
    (*(v34 + 8))(v89, v86);
    v39(v91, v33);
  }

  (*(*(v0 + 304) + 56))(*(v0 + 736), 1, 1, *(v0 + 296));
  v40 = *(v0 + 712);
  v41 = *(v0 + 296);
  v42 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v40, &unk_10118B980);
  if ((*(v42 + 48))(v40, 1, v41) == 1)
  {
    v43 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980);
    v44 = v43;
    v45 = &unk_10118B980;
    goto LABEL_24;
  }

  v46 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v46, v0 + 112, &unk_1011845E0);
  if (*(v0 + 176) == 1)
  {
    v47 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v47, &unk_10118B980);
    v45 = &unk_1011845E0;
    v44 = v0 + 112;
    goto LABEL_24;
  }

  v48 = *(v0 + 496);
  v49 = *(v0 + 384);
  v50 = *(v0 + 392);
  v51 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v51, v48, &unk_10118F670);
  if ((*(v50 + 48))(v48, 1, v49) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670);
    goto LABEL_20;
  }

  v52 = *(v0 + 328);
  v53 = *(v0 + 312);
  v92 = *(*(v0 + 392) + 32);
  v92(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v52, v53);
  PresentationSource.windowScene.getter();
  v55 = *(v0 + 328);
  if (!v54)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_18;
  }

  v56 = v54;
  v57 = [v54 delegate];

  sub_10035AF54(v55, type metadata accessor for Notice);
  if (!v57 || (*(v0 + 248) = v57, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_16;
  }

  v58 = *(v0 + 232);
  if (!v58)
  {
LABEL_16:
    sub_1000095E8(v0 + 208, &unk_101184EA0);
LABEL_18:
    v87 = 0;
    goto LABEL_19;
  }

  v87 = *(*sub_10000954C((v0 + 208), v58) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 208);
LABEL_19:
  v59 = *(v0 + 416);
  v61 = *(v0 + 392);
  v60 = *(v0 + 400);
  v62 = *(v0 + 384);
  v63 = *(v0 + 320);
  v64 = *(v0 + 312);
  v82 = *(v0 + 296);
  v84 = *(v0 + 328);
  v92(v59, *(v0 + 424), v62);
  v65 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v66 = (v60 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v92(v67 + v65, v59, v62);
  *(v67 + v66) = v87;
  sub_10035AEF0(v64, v63);
  v68 = (v63 + *(v82 + 32));
  sub_100020438(*v68);
  *v68 = sub_10035B02C;
  v68[1] = v67;
  sub_10035AEF0(v63, v84);
LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v70 = Strong;
    v71 = UIViewController.noticePresenter.getter();

    if (v71)
    {
      (*(*v71 + 200))(*(v0 + 328), 0);
    }
  }

  v72 = *(v0 + 736);
  v73 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v73, type metadata accessor for Notice);
  v45 = &unk_10118B980;
  v44 = v72;
LABEL_24:
  sub_1000095E8(v44, v45);

  v74 = *(v0 + 8);

  return v74(0);
}

uint64_t sub_10035983C()
{
  v93 = v0;
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v89 = *(v0 + 480);
  v4 = *(v0 + 440);
  v5 = *(v0 + 408);
  v7 = *(v0 + 384);
  v6 = *(v0 + 392);
  v8 = *(v0 + 272);

  v9 = Logger.musicKit.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v9, v3);
  (*(v6 + 16))(v5, v4, v7);
  sub_1000089F8(v8, v89, &unk_10118F670);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  v90 = v10;
  if (os_log_type_enabled(v10, v11))
  {
    v75 = *(v0 + 792);
    v78 = *(v0 + 552);
    v81 = *(v0 + 544);
    v84 = *(v0 + 560);
    v12 = *(v0 + 528);
    v74 = *(v0 + 480);
    v87 = *(v0 + 440);
    v13 = *(v0 + 408);
    v15 = *(v0 + 384);
    v14 = *(v0 + 392);
    v79 = *(v0 + 376);
    v76 = *(v0 + 368);
    v77 = *(v0 + 360);
    v16 = swift_slowAlloc();
    v92[0] = swift_slowAlloc();
    *v16 = 136446722;
    sub_10035B208(&unk_10118C180, &type metadata accessor for Playlist.Folder);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1000105AC(v17, v19, v92);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    sub_1000089F8(v74, v12, &unk_10118F670);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    sub_1000095E8(v74, &unk_10118F670);
    v25 = sub_1000105AC(v22, v24, v92);

    *(v16 + 14) = v25;
    *(v16 + 22) = 2082;
    *(v0 + 256) = v75;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v26 = String.init<A>(describing:)();
    v28 = sub_1000105AC(v26, v27, v92);

    *(v16 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v90, v11, "Failed to move folder=%{public}s to parent=%{public}s with error=%{public}s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v78 + 8))(v84, v81);
    (*(v76 + 8))(v79, v77);
    v20(v87, v15);
  }

  else
  {
    v29 = *(v0 + 552);
    v82 = *(v0 + 544);
    v85 = *(v0 + 560);
    v30 = *(v0 + 480);
    v88 = *(v0 + 440);
    v31 = *(v0 + 408);
    v33 = *(v0 + 384);
    v32 = *(v0 + 392);
    v34 = *(v0 + 368);
    v35 = *(v0 + 376);
    v36 = *(v0 + 360);

    sub_1000095E8(v30, &unk_10118F670);
    v37 = *(v32 + 8);
    v37(v31, v33);
    (*(v29 + 8))(v85, v82);
    (*(v34 + 8))(v35, v36);
    v37(v88, v33);
  }

  (*(*(v0 + 304) + 56))(*(v0 + 736), 1, 1, *(v0 + 296));
  v38 = *(v0 + 712);
  v39 = *(v0 + 296);
  v40 = *(v0 + 304);
  sub_1000089F8(*(v0 + 736), v38, &unk_10118B980);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    v41 = *(v0 + 712);
    sub_1000095E8(*(v0 + 736), &unk_10118B980);
    v42 = v41;
    v43 = &unk_10118B980;
    goto LABEL_24;
  }

  v44 = *(v0 + 280);
  sub_10035AEF0(*(v0 + 712), *(v0 + 328));
  sub_1000089F8(v44, v0 + 112, &unk_1011845E0);
  if (*(v0 + 176) == 1)
  {
    v45 = *(v0 + 736);
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    sub_1000095E8(v45, &unk_10118B980);
    v43 = &unk_1011845E0;
    v42 = v0 + 112;
    goto LABEL_24;
  }

  v46 = *(v0 + 496);
  v47 = *(v0 + 384);
  v48 = *(v0 + 392);
  v49 = *(v0 + 272);
  sub_10012B828(v0 + 112, v0 + 16);
  sub_1000089F8(v49, v46, &unk_10118F670);
  if ((*(v48 + 48))(v46, 1, v47) == 1)
  {
    sub_1000095E8(*(v0 + 496), &unk_10118F670);
    goto LABEL_20;
  }

  v50 = *(v0 + 328);
  v51 = *(v0 + 312);
  v91 = *(*(v0 + 392) + 32);
  v91(*(v0 + 424), *(v0 + 496), *(v0 + 384));
  sub_10035AFC8(v50, v51);
  PresentationSource.windowScene.getter();
  v53 = *(v0 + 328);
  if (!v52)
  {
    sub_10035AF54(*(v0 + 328), type metadata accessor for Notice);
    goto LABEL_18;
  }

  v54 = v52;
  v55 = [v52 delegate];

  sub_10035AF54(v53, type metadata accessor for Notice);
  if (!v55 || (*(v0 + 248) = v55, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 240) = 0;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    goto LABEL_16;
  }

  v56 = *(v0 + 232);
  if (!v56)
  {
LABEL_16:
    sub_1000095E8(v0 + 208, &unk_101184EA0);
LABEL_18:
    v86 = 0;
    goto LABEL_19;
  }

  v86 = *(*sub_10000954C((v0 + 208), v56) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(v0 + 208);
LABEL_19:
  v57 = *(v0 + 416);
  v59 = *(v0 + 392);
  v58 = *(v0 + 400);
  v60 = *(v0 + 384);
  v61 = *(v0 + 320);
  v62 = *(v0 + 312);
  v80 = *(v0 + 296);
  v83 = *(v0 + 328);
  v91(v57, *(v0 + 424), v60);
  v63 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v64 = (v58 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v91(v65 + v63, v57, v60);
  *(v65 + v64) = v86;
  sub_10035AEF0(v62, v61);
  v66 = (v61 + *(v80 + 32));
  sub_100020438(*v66);
  *v66 = sub_10035B02C;
  v66[1] = v65;
  sub_10035AEF0(v61, v83);
LABEL_20:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68 = Strong;
    v69 = UIViewController.noticePresenter.getter();

    if (v69)
    {
      (*(*v69 + 200))(*(v0 + 328), 0);
    }
  }

  v70 = *(v0 + 736);
  v71 = *(v0 + 328);
  sub_10012BA6C(v0 + 16);
  sub_10035AF54(v71, type metadata accessor for Notice);
  v43 = &unk_10118B980;
  v42 = v70;
LABEL_24:
  sub_1000095E8(v42, v43);

  v72 = *(v0 + 8);

  return v72(0);
}

uint64_t sub_10035A2B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v46 = type metadata accessor for Logger();
  v48 = *(v46 - 8);
  __chkstk_darwin(v46);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45 - v5;
  v7 = type metadata accessor for Playlist();
  v49 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v10 - 8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Playlist.Folder();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Playlist.Folder.Item();
  v17 = *(v50 - 8);
  __chkstk_darwin(v50);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {

    v38 = *(v14 + 32);
    v38(v16, v12, v13);
    v38(v19, v16, v13);
    v39 = &enum case for Playlist.Folder.Item.folder(_:);
LABEL_7:
    v41 = v50;
    (*(v17 + 104))(v19, *v39, v50);
    v42 = v51;
    (*(v17 + 32))(v51, v19, v41);
    v43 = 0;
    return (*(v17 + 56))(v42, v43, 1, v41);
  }

  sub_1000095E8(v12, &unk_10118F670);
  v21 = v20;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v22 = v49;
  if ((*(v49 + 48))(v6, 1, v7) != 1)
  {

    v40 = *(v22 + 32);
    v40(v9, v6, v7);
    v40(v19, v9, v7);
    v39 = &enum case for Playlist.Folder.Item.playlist(_:);
    goto LABEL_7;
  }

  sub_1000095E8(v6, &unk_1011814D0);
  v23 = Logger.musicKit.unsafeMutableAddressor();
  v25 = v47;
  v24 = v48;
  v26 = v46;
  (*(v48 + 16))(v47, v23, v46);
  v27 = v21;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v52 = v31;
    *v30 = 136446210;
    v32 = v27;
    v33 = [v32 description];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    v37 = sub_1000105AC(v34, v36, &v52);

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to convert MPModelPlaylist=%{public}s to Playlist.Folder.Item", v30, 0xCu);
    sub_10000959C(v31);

    (*(v48 + 8))(v47, v26);
  }

  else
  {

    (*(v24 + 8))(v25, v26);
  }

  v43 = 1;
  v41 = v50;
  v42 = v51;
  return (*(v17 + 56))(v42, v43, 1, v41);
}

uint64_t sub_10035A8A0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10035A91C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101183AD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &qword_101183AD0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &qword_101183AD0);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &qword_101183AD0);
}

char *sub_10035AA4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_10118A390);
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

uint64_t sub_10035AB60()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v9 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v10 = *(v0 + v8 + 48);
  if (v10 != 255)
  {
    sub_10012B804(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), v10);
  }

  if (*(v9 + 64))
  {
  }

  if (*(v9 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10035AD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for Playlist() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = v8 + *(v7 + 64);
  v10 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_100352200(a1, v3 + v8, v3 + v11, *(v3 + v12), v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8), a2, a3);
}

uint64_t sub_10035AE54()
{
  v1 = *(type metadata accessor for Playlist() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);

  return sub_10049E884(v0 + v2, v6, v7, v8);
}

uint64_t sub_10035AEF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035AF54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10035AFC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035B02C()
{
  v1 = *(type metadata accessor for Playlist.Folder() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10049DFE4(v0 + v2, v3);
}

uint64_t sub_10035B0B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118B980);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10035B128(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10118F670);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10035B198(void *a1)
{
  v3 = *(type metadata accessor for Track() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1003518EC(a1, v4);
}

uint64_t sub_10035B208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10035B250(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100008F30;

  return sub_100352500(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

uint64_t sub_10035B3F0()
{
  v1 = type metadata accessor for Playlist();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = sub_10010FC20(&unk_1011841D0);
  v6 = *(v5 - 8);
  v7 = (v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v9 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v10 = *(v0 + v8 + 48);
  if (v10 != 255)
  {
    sub_10012B804(*(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), v10);
  }

  if (*(v9 + 64))
  {
  }

  if (*(v9 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10035B5A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v1 + 16);
  v13 = *(v1 + 24);
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_10002F3F4;

  return sub_100351E50(a1, v12, v13, v1 + v6, v1 + v9, v14, v1 + v11);
}

id sub_10035B75C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 0.75;
  LODWORD(v2) = 0.25;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10118C2B8 = result;
  return result;
}

id sub_10035B7A0()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:40.0 damping:12.0 initialVelocity:{0.0, 0.0}];
  qword_10118C2C0 = result;
  return result;
}

char *sub_10035B7EC()
{
  v1 = OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView;
  v2 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView];
  }

  else
  {
    v4 = v0;
    v5 = [v0 traitCollection];
    v6 = [v5 accessibilityContrast];

    if (v6 == 1)
    {
      v7 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    else
    {
      v7 = [objc_opt_self() whiteColor];
    }

    v8 = v7;
    v9 = objc_allocWithZone(type metadata accessor for LineProgressGradientView());
    v10 = LineProgressGradientView.init(color:featherWidth:direction:frame:)(v8, 0, 24.0, 0.0, 0.0, 0.0, 0.0);
    v11 = *&v4[v1];
    *&v4[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_10035B8EC()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10035B984, v3, v2);
}

uint64_t sub_10035B984()
{
  [*(v0 + 16) bounds];
  CGRectGetWidth(v10);
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() animationWithKeyPath:v1];
  *(v0 + 48) = v2;

  v3 = v2;
  [v3 setDuration:3.0];
  if (qword_10117F5E0 != -1)
  {
    swift_once();
  }

  [v3 setTimingFunction:qword_10118C2B8];

  isa = CGPoint._bridgeToObjectiveC()().super.isa;
  [v3 setFromValue:isa];

  v5 = CGPoint._bridgeToObjectiveC()().super.isa;
  [v3 setToValue:v5];

  v6 = sub_10035B7EC();
  *(v0 + 56) = [v6 layer];

  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_10035BB8C;

  return CALayer.addAsyncAnimation(_:forKey:)(v3, 0x6E6F697469736F70, 0xE800000000000000);
}

uint64_t sub_10035BB8C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_10035BCCC, v4, v3);
}

uint64_t sub_10035BCCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10035BD38()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035BDD0, v3, v2);
}

uint64_t sub_10035BDD0()
{

  v1 = String._bridgeToObjectiveC()();
  v2 = objc_opt_self();
  v3 = [v2 animationWithKeyPath:v1];

  v4 = v3;
  [v4 setDuration:2.0];
  if (qword_10117F5E0 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 16);
  v6 = qword_10118C2B8;
  [v4 setTimingFunction:qword_10118C2B8];

  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setFromValue:isa];

  v8 = Int._bridgeToObjectiveC()().super.super.isa;
  [v4 setToValue:v8];

  v9 = String._bridgeToObjectiveC()();
  v10 = [v2 animationWithKeyPath:v9];

  v11 = v10;
  [v11 setDuration:2.0];
  [v11 setTimingFunction:v6];

  v12 = Double._bridgeToObjectiveC()().super.super.isa;
  [v11 setFromValue:v12];

  v13 = Int._bridgeToObjectiveC()().super.super.isa;
  [v11 setToValue:v13];

  v14 = objc_opt_self();
  [v14 begin];
  [v14 setDisableActions:1];
  v15 = sub_10035B7EC();
  v16 = [v15 layer];

  v17 = String._bridgeToObjectiveC()();
  [v16 addAnimation:v4 forKey:v17];

  v18 = *(v5 + OBJC_IVAR____TtC5Music17SingIndicatorView_singIndicatorLabel);
  v19 = [v18 layer];
  v20 = String._bridgeToObjectiveC()();
  [v19 addAnimation:v11 forKey:v20];

  v21 = [*(v5 + OBJC_IVAR____TtC5Music17SingIndicatorView____lazy_storage___gradientView) layer];
  [v21 setOpacity:0.0];

  v22 = [v18 layer];
  [v22 setShadowOpacity:0.0];

  [v14 commit];
  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_10035C184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10035C22C, v6, v5);
}

uint64_t sub_10035C22C()
{

  sub_100009F78(0, &qword_101181620);
  if (qword_10117F5E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = qword_10118C2C0;
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v2, 0, sub_10035D284, v3, 0, 0, 0.0);

  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_10035C37C;

  return sub_10035B8EC();
}