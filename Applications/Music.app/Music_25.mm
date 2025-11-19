void sub_1002E47B4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount);
    *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] = v1;
    sub_1002DDA94(v4);
  }
}

uint64_t sub_1002E4824(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_1002DCC7C();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    if (v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement] == 1)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = sub_10030AD10;
      *(v6 + 24) = v5;
      v7 = OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_interactiveMovementCompletionHandlers;
      swift_beginAccess();
      v8 = *&v4[v7];
      v9 = v1;

      v10 = v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v4[v7] = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = sub_10006429C(0, v8[2] + 1, 1, v8);
        *&v4[v7] = v8;
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_10006429C((v12 > 1), v13 + 1, 1, v8);
      }

      v8[2] = v13 + 1;
      v14 = &v8[2 * v13];
      v14[4] = sub_10018A020;
      v14[5] = v6;
      *&v4[v7] = v8;
      swift_endAccess();
    }

    else
    {
      v15 = v1;
      v3;
      v16 = v15;
      sub_1002DD040(v1);
    }
  }

  return result;
}

uint64_t sub_1002E4A30()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v2 tracklist];
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if ([v3 transitionStyle] != 1)
  {

LABEL_9:
    goto LABEL_10;
  }

  v5 = [v4 toggleTransitionsCommand];

  if (v5)
  {
    swift_unknownObjectRelease();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v0;
    *&v18 = sub_10030A9F8;
    *(&v18 + 1) = v7;
    LOWORD(v19) = 257;
    *(&v19 + 1) = 1;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = qword_10117F8A8;
    v9 = v0;
    if (v8 != -1)
    {
      swift_once();
    }

    v12[0] = 7;
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
    v13 = v18;
    swift_unknownObjectWeakInit();

    sub_1001D1980(&v18, &v11);
    sub_10058B0DC(v12);

    sub_1001D19DC(&v18);
    return sub_100198CAC(v12);
  }

LABEL_10:
  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(7, 3);
}

id sub_1002E4E50()
{
  v37.receiver = v0;
  v37.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  objc_msgSendSuper2(&v37, "viewLayoutMarginsDidChange");
  v1 = sub_1002DCC7C();
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result directionalLayoutMargins];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v1 setDirectionalLayoutMargins:{v5, v7, v9, v11}];
    v36 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
    v12 = [*&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] visibleCells];
    sub_100009F78(0, &unk_101184750);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v13 >> 62)
    {
      goto LABEL_15;
    }

    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_16:

      v20 = [*&v0[v36] visibleSupplementaryViewsOfKind:_UICollectionViewListLayoutElementKindSectionHeader];
      sub_100009F78(0, &qword_10118AC60);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v21 >> 62)
      {
        goto LABEL_29;
      }

      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
LABEL_30:

        v28 = [*&v0[v36] visibleSupplementaryViewsOfKind:_UICollectionViewListLayoutElementKindSectionFooter];
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v29 >> 62)
        {
          goto LABEL_43;
        }

        v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v30)
        {
        }

LABEL_32:
        for (i = 0; ; ++i)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v32 = sub_1007E97B4(i, v29);
            v33 = i + 1;
            if (__OFADD__(i, 1))
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v32 = *(v29 + 8 * i + 32);
            v33 = i + 1;
            if (__OFADD__(i, 1))
            {
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v30 = _CocoaArrayWrapper.endIndex.getter();
              if (!v30)
              {
              }

              goto LABEL_32;
            }
          }

          v34 = v32;
          result = [v0 view];
          if (!result)
          {
            goto LABEL_47;
          }

          v35 = result;
          [result directionalLayoutMargins];

          [v34 directionalLayoutMargins];
          [v34 setDirectionalLayoutMargins:?];

          if (v33 == v30)
          {
          }
        }
      }

LABEL_18:
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_1007E97B4(v23, v21);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v24 = *(v21 + 8 * v23 + 32);
          v25 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            v22 = _CocoaArrayWrapper.endIndex.getter();
            if (!v22)
            {
              goto LABEL_30;
            }

            goto LABEL_18;
          }
        }

        v26 = v24;
        result = [v0 view];
        if (!result)
        {
          goto LABEL_46;
        }

        v27 = result;
        [result directionalLayoutMargins];

        [v26 directionalLayoutMargins];
        [v26 setDirectionalLayoutMargins:?];

        ++v23;
        if (v25 == v22)
        {
          goto LABEL_30;
        }
      }
    }

LABEL_4:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_1007E97A0(v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 8 * v15 + 32);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = _CocoaArrayWrapper.endIndex.getter();
          if (!v14)
          {
            goto LABEL_16;
          }

          goto LABEL_4;
        }
      }

      v18 = v16;
      result = [v0 view];
      if (!result)
      {
        break;
      }

      v19 = result;
      [result directionalLayoutMargins];

      [v18 directionalLayoutMargins];
      [v18 setDirectionalLayoutMargins:?];

      ++v15;
      if (v17 == v14)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1002E53E4()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for NowPlayingQueueViewController(0);
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = v1;
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = &v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds];
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  if (CGRectEqualToRect(v23, *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_lastSeenBounds]))
  {
    return;
  }

  v12 = [v0 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *v11 = v15;
  *(v11 + 1) = v17;
  *(v11 + 2) = v19;
  *(v11 + 3) = v21;
  if (v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == 1)
  {
    sub_1002E555C(1);
  }
}

void sub_1002E555C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1002DEF54();
  v9 = sub_1002DEB20();
  isa = sub_1002DE42C(v9).super.isa;
  [v8 setAttributedText:isa];

  v11 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel;
  v12 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___emptyStateLabel];
  sub_1002DEB20();
  v68 = sub_1002DE968();
  v69 = v13;
  v67[2] = 0x6C6F626D79737B7BLL;
  v67[3] = 0xEA00000000007D7DLL;
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_100009838();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v14 = String._bridgeToObjectiveC()();

  [v12 setAccessibilityLabel:v14];

  v15 = *&v2[v11];
  if (a1)
  {
    v16 = v15;
    v17 = [v2 view];
    if (!v17)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v18 = v17;
    v19 = [v17 layoutMarginsGuide];

    [v19 layoutFrame];
    v21 = v20;
    v23 = v22;

    [v16 sizeThatFits:{v21, v23}];
    v24 = [v2 view];
    if (!v24)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v25 = v24;
  }

  else
  {
    [v15 frame];
    v26 = [v2 view];
    if (!v26)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v25 = v26;
  }

  CGRect.centeringAlong(axes:in:)();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v35)
  {
    __break(1u);
    goto LABEL_27;
  }

  v36 = v35;
  v37 = [v2 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (v68)
  {
    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      v38 = 5;
    }

    else
    {
      v38 = 3;
    }
  }

  else
  {

    v38 = 5;
  }

  sub_1004357B8(v38);
  v41 = v40;

  if (v41)
  {
    return;
  }

  v42 = sub_1002DCC7C();
  v43 = [v42 collectionViewLayout];

  v44 = _UICollectionViewListLayoutElementKindSectionHeader;
  IndexPath.init(item:section:)();
  v45 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v46 = [v43 layoutAttributesForSupplementaryViewOfKind:v44 atIndexPath:v45];

  if (!v46)
  {
    return;
  }

  v47 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
  v48 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  [*&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] contentOffset];
  v50 = v47 - v49;
  v51 = v30 + v47 - v49;
  if (v50 < 0.0)
  {
    v30 = v51;
  }

  v52 = [v2 view];
  if (!v52)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v53 = v52;
  [v46 frame];
  [v53 convertRect:*&v2[v48] fromCoordinateSpace:?];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v70.origin.x = v55;
  v70.origin.y = v57;
  v70.size.width = v59;
  v70.size.height = v61;
  MaxY = CGRectGetMaxY(v70);
  if (qword_10117F560 != -1)
  {
    v66 = MaxY;
    swift_once();
    MaxY = v66;
  }

  v63 = MaxY + *&qword_10118A8F0;
  v71.origin.x = v28;
  v71.origin.y = v30;
  v71.size.width = v32;
  v71.size.height = v34;
  MinY = CGRectGetMinY(v71);
  if (MinY > v63)
  {
    v65 = MinY;
  }

  else
  {
    v65 = v63;
  }

  [*&v2[v11] setFrame:{v28, v65, v32, v34}];
}

void sub_1002E5B54(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v24 - v9;
  v11 = [a1 state];
  v12 = sub_1002DCC7C();
  v25 = v12;
  if (v11 == 3)
  {
    [v12 endInteractiveMovement];
  }

  else if (v11 == 2)
  {
    v17 = [a1 view];
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    [a1 locationInView:v17];
    v20 = v19;
    v22 = v21;

    [v25 updateInteractiveMovementTargetPosition:{v20, v22}];
  }

  else
  {
    if (v11 == 1)
    {
      v13 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
      [a1 locationInView:*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView)];
      v14 = [v25 indexPathForItemAtPoint:?];

      if (v14)
      {
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v4 + 32))(v10, v6, v3);
        v15 = *(v1 + v13);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v15 beginInteractiveMovementForItemAtIndexPath:isa];

        (*(v4 + 8))(v10, v3);
      }

      return;
    }

    [v12 cancelInteractiveMovement];
  }

  v23 = v25;
}

void sub_1002E5F10(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    [a1 contentOffset];
    if (!(*&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
    {
      v8 = v7;
      if (([v5 isBeingPresented] & 1) == 0)
      {
        v9 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v9)
        {
          __break(1u);
          return;
        }

        v10 = *&v9[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v9[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = v6 - v8;
        if (v6 - v8 != v10)
        {
          v11 = v9;
          sub_1001B6800();
        }
      }
    }

    swift_unknownObjectRelease();
  }

  sub_1002E7054();
  v12 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset + 8);
  v13 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY;
  v14 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
  [a1 contentOffset];
  v16 = v15;
  if (v14 <= v12)
  {
    v30 = v14 - v15;
  }

  else
  {
    v17 = *(v2 + v13);
    v18 = sub_1002DCC7C();
    [v18 frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v33.origin.x = v20;
    v33.origin.y = v22;
    v33.size.width = v24;
    v33.size.height = v26;
    Height = CGRectGetHeight(v33);
    v28 = 0.0;
    if (Height < v17)
    {
      v29 = *(v2 + v13);
      [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      v28 = v29 - CGRectGetHeight(v34);
    }

    v30 = v16 - v28;
  }

  if (qword_10117F568 != -1)
  {
    swift_once();
  }

  v31 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback;
  if (*&qword_10118A8F8 <= v30)
  {
    if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback))
    {
      [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_feedbackGenerator) impactOccurred];
      *(v2 + v31) = 0;
    }
  }

  else if ((*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_shouldPlayHapticFeedback) = 1;
  }

  if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) == 1)
  {

    sub_1002E555C(0);
  }
}

uint64_t sub_1002E61F0(void *a1, double *a2, double a3, double a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = *(a2 + 1);
  v11 = v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_initialDraggingOffset;
  v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY;
  sub_10030ABA8();
  if ((static ApproximatelyComparable<>.>=~ infix(_:_:)() & 1) == 0 || (dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || a4 >= 0.0)
  {
    v30 = *(v11 + 8);
    v31 = *(v4 + v12);
    v68 = v31;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && v30 < v31)
    {
      v68 = 0.0;
      if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && a4 > 0.0)
      {
        [a1 frame];
        CGRectGetHeight(v74);
        if (static ApproximatelyComparable<>.>=~ infix(_:_:)())
        {
          goto LABEL_27;
        }

        goto LABEL_39;
      }
    }

    [a1 contentOffset];
    v33 = v32;
    v34 = *(v4 + v12);
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v33 >= v34)
    {
      goto LABEL_39;
    }

    [a1 contentOffset];
    v36 = v35;
    v37 = *(v4 + v12);
    v38 = sub_1002DCC7C();
    [v38 frame];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v75.origin.x = v40;
    v75.origin.y = v42;
    v75.size.width = v44;
    v75.size.height = v46;
    v47 = 0.0;
    if (CGRectGetHeight(v75) < v37)
    {
      v48 = *(v5 + v12);
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      v47 = v48 - CGRectGetHeight(v76);
    }

    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v47 >= v36)
    {
      goto LABEL_39;
    }

    v69 = *(v5 + v12);
    if (static ApproximatelyComparable<>.>=~ infix(_:_:)())
    {
      if (qword_10117F568 != -1)
      {
        swift_once();
      }

      v70 = qword_10118A8F8;
      v49 = static ApproximatelyComparable<>.>=~ infix(_:_:)();
      v50 = *(v5 + v12);
      if (v49)
      {
        v51 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
        [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
        Height = CGRectGetHeight(v77);
        v24 = 0.0;
        if (Height >= v50)
        {
          goto LABEL_38;
        }

        v25 = *(v5 + v12);
        v53 = *(v5 + v51);
LABEL_36:
        [v53 frame];
        goto LABEL_37;
      }
    }

    else
    {
      [a1 contentOffset];
      v56 = *(v5 + v12);
      v57 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
      if (CGRectGetHeight(v78) < v56)
      {
        [*(v5 + v57) frame];
        CGRectGetHeight(v79);
      }

      if (qword_10117F568 != -1)
      {
        swift_once();
      }

      v71 = qword_10118A8F8;
      v58 = static ApproximatelyComparable<>.>=~ infix(_:_:)();
      v50 = *(v5 + v12);
      if ((v58 & 1) == 0)
      {
        [*(v5 + v57) frame];
        v59 = CGRectGetHeight(v80);
        v24 = 0.0;
        if (v59 >= v50)
        {
          goto LABEL_38;
        }

        v25 = *(v5 + v12);
        v53 = *(v5 + v57);
        goto LABEL_36;
      }
    }

    a2[1] = v50;
    goto LABEL_39;
  }

  [a1 contentOffset];
  v67 = *(v4 + v12);
  if (static ApproximatelyComparable<>.<=~ infix(_:_:)())
  {
    v13 = *(v4 + v12);
    v14 = sub_1002DCC7C();
    [v14 frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v73.origin.x = v16;
    v73.origin.y = v18;
    v73.size.width = v20;
    v73.size.height = v22;
    v23 = CGRectGetHeight(v73);
    v24 = 0.0;
    if (v23 < v13)
    {
      v25 = *(v5 + v12);
      [*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
LABEL_37:
      v24 = v25 - CGRectGetHeight(*&v26);
    }

LABEL_38:
    a2[1] = v24;
    goto LABEL_39;
  }

  v54 = a2[1];
  v55 = *(v4 + v12);
  if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) == 0 && v54 < v55)
  {
LABEL_27:
    a2[1] = *(v4 + v12);
  }

LABEL_39:
  v60 = 0.0;
  if (*(v5 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader) == 1)
  {
    sub_1002F815C(1u);
    v60 = v61;
  }

  type metadata accessor for CGPoint(0);
  v72 = *a2;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    return [a1 setDecelerationRate:{UIScrollViewDecelerationRateFast, v72, *&v9, v10}];
  }

  v63 = a2[1];
  v64 = *(v5 + v12);
  result = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
  if ((result & 1) == 0 && v64 < v63)
  {
    v65 = a2[1];
    v66 = v60 + *(v5 + v12);
    result = dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)();
    if ((result & 1) == 0 && v65 < v66)
    {
      a2[1] = v60 + *(v5 + v12);
    }
  }

  return result;
}

void sub_1002E6958(char a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
  if (a1)
  {
    v6 = (v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
    *v6 = 0;
    v6[1] = 0;
    a3 = v5 + sub_1002F815C(3);
  }

  v7 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset;
  v8 = a3 + *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset);
  v9 = sub_1002DCC7C();
  [v9 safeAreaInsets];
  v11 = v10;

  v12 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  [*(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) frame];
  v13 = v5 - (v8 + v11 - CGRectGetHeight(v28));
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  v14 = *(v4 + v7) + v13;
  [*(v4 + v12) safeAreaInsets];
  v16 = v14 + v15;
  [*(v4 + v12) contentInset];
  if (v20 != 0.0 || v17 != 0.0 || v18 != v16 || v19 != 0.0)
  {
    [*(v4 + v12) setContentInset:{0.0, 0.0, v16, 0.0}];
    [*(v4 + v12) setScrollIndicatorInsets:{0.0, 0.0, *(v4 + v7), 0.0}];
    v21 = *(v4 + v12);
    _s22AutoPlayBackgroundViewCMa();
    v22 = v21;
    static UICollectionReusableView.reuseIdentifier.getter();
    v23 = String._bridgeToObjectiveC()();

    v24 = [v22 _visibleDecorationViewsOfKind:v23];

    if (v24)
    {
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v25 + 16))
      {
        sub_10000DD18(v25 + 32, v27);

        if (swift_dynamicCast())
        {
          sub_1002EB3C8(v26);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002E6B90(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_10118AB38);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  type metadata accessor for CGSize(0);
  v14 = (v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
  v30 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_previousContentSize);
  *v29 = a1;
  *&v29[1] = a2;
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    *v14 = a1;
    v14[1] = a2;
    v15 = *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = v15;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v17 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v11 + 8))(v13, v10);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      while (*(v17 + v19 + 32))
      {
        if (v18 == ++v19)
        {
          goto LABEL_7;
        }
      }

      v23 = sub_1002DCC7C(v22);
      v24 = [v23 collectionViewLayout];

      v25 = _UICollectionViewListLayoutElementKindSectionFooter;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v7 + 8))(v9, v6);
      v27 = [v24 layoutAttributesForSupplementaryViewOfKind:v25 atIndexPath:isa];

      if (v27)
      {
        [v27 frame];
        *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) = CGRectGetMaxY(v31);
        sub_1002DD920(v28);

        goto LABEL_9;
      }
    }

    else
    {
LABEL_7:
    }

    *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) = 0;
    sub_1002DD920(v20);
LABEL_9:
    sub_1002E6958(0, v21, a2);
    sub_1002E6EA4();
  }
}

void sub_1002E6EA4()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118AB38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-v4];
  v6 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v7 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  sub_1004357B8(0);
  v10 = v9;

  if (v10)
  {
    v12 = 1;
    goto LABEL_6;
  }

  v13 = *(v1 + v6);
  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v14 = v13;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v19[15] = 0;
  v15 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  v11 = (*(v3 + 8))(v5, v2);
  v12 = v15 < 1;
LABEL_6:
  v16 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext;
  if ((*(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext) & 1) == 0)
  {
    v17 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
    if (v17 > 0.0 || v12)
    {
      v18 = sub_1002DCC7C(v11);
      [v18 setContentOffset:{0.0, v17}];

      *(v1 + v16) = 1;
    }
  }
}

void sub_1002E7054()
{
  v1 = v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  v2 = swift_beginAccess();
  if ((*(v1 + 8) & 1) == 0)
  {
    v3 = sub_1002DCC7C(v2);
    [v3 contentOffset];
    v5 = v4;

    v6 = floor(v5);
    v7 = floor(*(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY));
    v8 = v7 <= v6 ? 3 : 0;
    v9 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection);
    *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = v8;
    if (v8 != v9 && v7 > v6 && *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didAppearOnce) != 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1005E15A8(4, 1);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1002E7140(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v7 = v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v10 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = __chkstk_darwin(v11);
  v14 = v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v89 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v89 - v19;
  __chkstk_darwin(v18);
  v23 = v89 - v22;
  if (!a1)
  {
    goto LABEL_50;
  }

  v91 = v10;
  v92 = v21;
  v89[1] = v7;
  v24 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v24)
  {
    v25 = a1;
    v26 = [v24 isSharedListeningSession];
    v27 = a1;
    if (v26)
    {
      v28 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount;
      if (*&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_sharedListeningParticipantsCount] >= 1)
      {

        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = *&v2[v28];
        v33 = 1;
LABEL_51:
        *a2 = v32;
        *(a2 + 8) = v29;
        *(a2 + 16) = v30;
        *(a2 + 24) = v31;
        *(a2 + 32) = v33;
        return;
      }
    }
  }

  else
  {
    v34 = a1;
    v27 = a1;
  }

  v90 = v2;
  v35 = sub_1007D38E4();
  v36 = v27;
  if (v35)
  {
    v37 = v35;
    if ([v35 isAutoPlay])
    {

      v32 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
      v33 = 2;
      goto LABEL_51;
    }

    v50 = [v27 representativeSectionForDisplaySection:MPCPlayerResponseTracklistDisplaySectionNextItems];

    goto LABEL_23;
  }

  v38 = [v27 playingItemIndexPath];
  if (v38)
  {
    v39 = v38;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v92 + 32))(v23, v20, v11);
    v40 = [v27 items];
    v41 = [v40 sectionAtIndex:IndexPath.section.getter()];

    v42 = [v41 metadataObject];
    if (v42)
    {
      v43 = [v42 flattenedGenericObject];

      if (v43)
      {
        v44 = [v43 anyObject];

        if (v44)
        {
          objc_opt_self();
          v45 = swift_dynamicCastObjCClass();
          if (v45)
          {
            v46 = [v45 name];
            if (v46)
            {
              v47 = v46;
              v48 = v44;
              v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v29 = v49;

              (*(v92 + 8))(v23, v11);
              v30 = 0;
              v31 = 0;
              v33 = 0;
              goto LABEL_51;
            }

            (*(v92 + 8))(v23, v11);

            goto LABEL_20;
          }
        }
      }
    }

    (*(v92 + 8))(v23, v11);
  }

LABEL_20:
  if (![v36 repeatType] || (v51 = objc_msgSend(v36, "playingItemIndexPath")) == 0)
  {
    v66 = [v36 playingItemGlobalIndex];
    v67 = v66 + 1;
    if (!__OFADD__(v66, 1))
    {
      v68 = [v36 globalItemCount];

      v32 = 0;
      v30 = 0;
      v31 = 0;
      v69 = v67 < v68;
      if (v67 < v68)
      {
        v29 = 0xE000000000000000;
      }

      else
      {
        v29 = 0;
      }

      if (v69)
      {
        v33 = 0;
      }

      else
      {
        v33 = -1;
      }

      goto LABEL_51;
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v52 = v51;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = v92;
  (*(v92 + 32))(v17, v14, v11);
  v54 = [v36 items];
  v50 = [v54 sectionAtIndex:IndexPath.section.getter()];

  (*(v53 + 8))(v17, v11);
LABEL_23:
  v55 = v50;
  v56 = v90;
  if (!v55)
  {
LABEL_49:

LABEL_50:
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v33 = -1;
    goto LABEL_51;
  }

  v57 = v55;
  v58 = [v55 metadataObject];
  v59 = [v58 flattenedGenericObject];

  v60 = [v59 anyObject];
  if (!v60)
  {
LABEL_48:

    goto LABEL_49;
  }

  objc_opt_self();
  v61 = swift_dynamicCastObjCClass();
  if (v61)
  {
    v62 = v61;
    v63 = [v61 name];
    if (v63)
    {
      v64 = v63;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v65;
    }

    else
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v32 = String.init(localized:table:bundle:locale:comment:)();
      v29 = v74;
    }

    v75 = [v56 view];
    if (v75)
    {
      v76 = v75;
      v30 = [v75 window];

      if (v30)
      {
        v77 = [v30 windowScene];

        if (v77)
        {
          v78 = sub_1004840C8(v62, 0, v77);
LABEL_43:
          v30 = v78;
          v31 = v79;

LABEL_62:
          v88 = HIBYTE(v29) & 0xF;
          if ((v29 & 0x2000000000000000) == 0)
          {
            v88 = v32 & 0xFFFFFFFFFFFFLL;
          }

          if (v88)
          {
            v33 = 0;
            goto LABEL_51;
          }

          sub_100020438(v30);

          goto LABEL_50;
        }

        goto LABEL_59;
      }

LABEL_60:

      goto LABEL_61;
    }

    goto LABEL_68;
  }

  objc_opt_self();
  v70 = swift_dynamicCastObjCClass();
  if (v70)
  {
    v71 = [v70 name];
    if (v71)
    {
      v72 = v71;
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v73;

LABEL_59:
      v30 = 0;
LABEL_61:
      v31 = 0;
      goto LABEL_62;
    }

    goto LABEL_48;
  }

  objc_opt_self();
  v80 = swift_dynamicCastObjCClass();
  if (!v80)
  {

    goto LABEL_50;
  }

  v81 = v80;
  v82 = [v80 title];
  if (v82)
  {
    v83 = v82;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v84;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v32 = String.init(localized:table:bundle:locale:comment:)();
    v29 = v85;
  }

  v86 = [v56 view];
  if (v86)
  {
    v87 = v86;
    v30 = [v86 window];

    if (v30)
    {
      v77 = [v30 windowScene];

      if (v77)
      {
        v78 = sub_100483660(v81, 0, 0, v77);
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_69:
  __break(1u);
}

uint64_t sub_1002E7A7C(uint64_t a1, id a2)
{
  v4 = [a2 tracklist];
  v5 = [v4 actionAtQueueEndCommand];

  if (v5)
  {
    v6 = [v5 supportedActions];
    sub_100009F78(0, &qword_101189A20);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = [objc_allocWithZone(NSNumber) initWithInteger:3];
    v24 = v8;
    __chkstk_darwin(v8);
    v23[2] = &v24;
    LOBYTE(v6) = sub_10044AC40(sub_10030B0DC, v23, v7);

    if (v6)
    {
      v9 = [a2 tracklist];
      v10 = [v9 actionAtQueueEnd];

      *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = v10 == 3;
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) setNeedsUpdateConfiguration];
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

    swift_unknownObjectRelease();
  }

  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = 2;
  [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) setNeedsUpdateConfiguration];
LABEL_6:
  v11 = [a2 tracklist];
  v12 = [v11 toggleTransitionsCommand];

  if (v12)
  {
    swift_unknownObjectRelease();
    v13 = [a2 tracklist];
    v14 = [v13 transitionsActive];

    v15 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = v14;
    if (v15 == v14)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 2;
    if (v16 == 2)
    {
      goto LABEL_12;
    }
  }

  v17 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v17))
  {
    [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
  }

LABEL_12:
  v18 = [a2 tracklist];
  v19 = [v18 transitionStyle];

  v20 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle) = v19;
  if (v19 != v20)
  {
    v21 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v21))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }
  }

  return sub_1002E4A30();
}

void sub_1002E7DC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    sub_1004357B8(3u);
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      v7 = sub_1002DCC7C(v6);
      v8 = [v7 collectionViewLayout];

      [swift_getObjCClassFromObject() invalidationContextClass];
      swift_getObjCClassMetadata();
      sub_100009F78(0, &qword_10118AC78);
      swift_dynamicCastMetatypeUnconditional();
      v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v10 = _UICollectionViewListLayoutElementKindSectionHeader;
      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      v11 = v10;
      IndexPath.init(item:section:)();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 invalidateSupplementaryElementsOfKind:v11 atIndexPaths:isa];

      v13 = [*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView) collectionViewLayout];
      [v13 invalidateLayoutWithContext:v9];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002E802C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v9 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v9)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v10 = v9;
  sub_1004357B8(5u);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    v14 = sub_1002DCC7C(v13);
    v15 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v17 = [v14 supplementaryViewForElementKind:v15 atIndexPath:isa];

    if (v17)
    {
      type metadata accessor for NowPlayingQueueControlsView();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        sub_1002E9520(v18);
      }
    }
  }

  v19 = *(v2 + v8);
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  sub_1004357B8(2u);
  v22 = v21;

  if ((v22 & 1) == 0)
  {
    v24 = sub_1002DCC7C(v23);
    v25 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    v26 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v27 = [v24 supplementaryViewForElementKind:v25 atIndexPath:v26];

    if (v27)
    {
      type metadata accessor for NowPlayingQueueHeaderView();
      v28 = swift_dynamicCastClass();
      if (v28)
      {
        sub_1002E8394(v28, 2, a1);
      }
    }
  }

  v29 = *(v2 + v8);
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;
  sub_1004357B8(3u);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    v34 = sub_1002DCC7C(v33);
    v35 = _UICollectionViewListLayoutElementKindSectionHeader;
    IndexPath.init(item:section:)();
    v36 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v7, v4);
    v37 = [v34 supplementaryViewForElementKind:v35 atIndexPath:v36];

    if (v37)
    {
      type metadata accessor for NowPlayingQueueHeaderView();
      v38 = swift_dynamicCastClass();
      if (v38)
      {
        sub_1002E8394(v38, 3, a1);
      }
    }
  }
}

id sub_1002E8394(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v80 - v9;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v13)
  {
    v31 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v32 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v33 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v34 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v35 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v31 = 0u;
    *(v31 + 16) = 0u;
    v36 = *(v31 + 32);
    *(v31 + 32) = -1;
    sub_100309C54(v32, v33, v34, v35, v36);
    return sub_1005701F8();
  }

  v14 = &selRef_trackNumber;
  if (a2 != 3)
  {
    v37 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v38 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v39 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v40 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v41 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v37 = 0u;
    *(v37 + 16) = 0u;
    v42 = *(v37 + 32);
    *(v37 + 32) = -1;
    v43 = v13;
    sub_100309C54(v38, v39, v40, v41, v42);
    sub_1005701F8();
    v44 = sub_10056FCA8();
    [v44 setHidden:0];

    v45 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v46 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
    v47 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction);
    *v46 = sub_10030AA1C;
    v46[1] = v45;

    sub_100020438(v47);

LABEL_10:
    v54 = [v4 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    v55 = sub_1005C3564(v82[0]) ^ 1;
    v56 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
    [v56 setHidden:v55 & 1];
    goto LABEL_12;
  }

  v80 = a3;
  v15 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v17 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title);
  *v17 = v16;
  v17[1] = v18;

  sub_1005700F4();
  v19 = [v15 tracklist];
  v81 = v3;
  sub_1002E7140(v19, v83);

  v20 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  v21 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
  v22 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
  v23 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
  v24 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
  v25 = v83[1];
  *v20 = v83[0];
  *(v20 + 16) = v25;
  v26 = *(v20 + 32);
  *(v20 + 32) = v84;
  sub_1000089F8(v83, v82, &qword_10118ABD8);
  sub_100309C54(v21, v22, v23, v24, v26);
  sub_1005701F8();
  sub_1000095E8(v83, &qword_10118ABD8);
  v27 = sub_10056FCA8();
  [v27 setHidden:1];

  sub_1000089F8(v80, v10, &qword_10118ABE0);
  v28 = sub_10010FC20(&qword_10118AB38);
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v10, 1, v28) == 1)
  {
    result = sub_1000095E8(v10, &qword_10118ABE0);
    v4 = v81;
    v14 = &selRef_trackNumber;
  }

  else
  {
    v82[0] = 2;
    NSDiffableDataSourceSnapshot.indexOfSection(_:)();
    v49 = v48;
    result = (*(v29 + 8))(v10, v28);
    v4 = v81;
    v14 = &selRef_trackNumber;
    if ((v49 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v50 = *&v4[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v50)
  {
    __break(1u);
    return result;
  }

  v51 = v50;
  sub_1004357B8(2u);
  v53 = v52;

  if (v53)
  {
    goto LABEL_10;
  }

LABEL_11:
  v56 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
  v55 = 1;
  [v56 setHidden:1];
LABEL_12:
  sub_10056FF60();
  v57 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v57))
  {
    [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setHidden:v55 & 1];
    sub_10056FF60();
  }

  v58 = [v13 v14[2]];
  v59 = sub_1002DEE20();

  if (v59)
  {
    v60 = [v13 v14[2]];
    v61 = [v60 actionAtQueueEnd];

    v62 = v61 == 3;
  }

  else
  {
    v62 = 2;
  }

  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState) = v62;
  [v56 setNeedsUpdateConfiguration];
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v65 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  *v64 = sub_10030AA24;
  v64[1] = v63;

  sub_100020438(v65);

  v66 = [v13 v14[2]];
  v67 = [v66 transitionStyle];

  v68 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle) = v67;
  if (v67 != v68)
  {
    v69 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v69))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }
  }

  sub_1002E4A30();
  v70 = [v13 v14[2]];
  v71 = [v70 toggleTransitionsCommand];

  if (v71)
  {
    swift_unknownObjectRelease();
    v72 = [v13 v14[2]];
    v73 = [v72 transitionsActive];

    v74 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
    *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = v73;
    if (v74 == v73)
    {
      goto LABEL_26;
    }

LABEL_24:
    v76 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v76))
    {
      [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) setNeedsUpdateConfiguration];
    }

    goto LABEL_26;
  }

  v75 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState);
  *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState) = 2;
  if (v75 != 2)
  {
    goto LABEL_24;
  }

LABEL_26:

  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v79 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  *v78 = sub_10030AA54;
  v78[1] = v77;

  sub_100020438(v79);
}

void sub_1002E8BD4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
    if (v4)
    {
      v5 = [v4 tracklist];
      v6 = [v5 resetCommand];

      if (v6)
      {
        v7 = [v6 clearUpNextItems];
        swift_unknownObjectRelease();
        if (v7)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v8 = String._bridgeToObjectiveC()();

          v9 = [objc_opt_self() alertControllerWithTitle:0 message:v8 preferredStyle:1];

          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v10 = swift_allocObject();
          *(v10 + 16) = v7;
          v11 = v7;
          v12 = String._bridgeToObjectiveC()();

          aBlock[4] = sub_10030AA84;
          aBlock[5] = v10;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_10027D328;
          aBlock[3] = &unk_1010A5E58;
          v13 = _Block_copy(aBlock);

          v14 = objc_opt_self();
          v15 = [v14 actionWithTitle:v12 style:2 handler:v13];
          _Block_release(v13);

          [v9 addAction:v15];
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v16 = String._bridgeToObjectiveC()();

          v17 = [v14 actionWithTitle:v16 style:1 handler:0];

          [v9 addAction:v17];
          [v3 presentViewController:v9 animated:1 completion:0];

          v3 = v9;
        }
      }
    }
  }
}

uint64_t sub_1002E8FE8(uint64_t a1, void *a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = a2;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_10086E658(0, 0, v5, &unk_100EC6610, v9);
}

uint64_t sub_1002E9110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002E91A8, v6, v5);
}

uint64_t sub_1002E91A8()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1002E92E8;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002E92E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002E949C;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_1002E942C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002E942C()
{
  v1 = v0[19];
  v2 = v0[12];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002E949C()
{

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

char *sub_1002E9520(char *result)
{
  v2 = result;
  v3 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = [v1 traitCollection];
    sub_100050078();
    v7 = UITraitCollection.subscript.getter();

    v8 = objc_opt_self();
    if (v7)
    {
      v9 = [v8 clearColor];
      [v2 setBackgroundColor:v9];

      v10 = [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView] layer];
      [v10 setCompositingFilter:kCAFilterPlusL];
    }

    else
    {
      v18 = [v8 systemBackgroundColor];
      [v2 setBackgroundColor:v18];

      v10 = [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_contentView] layer];
      [v10 setCompositingFilter:0];
    }

    v19 = [v5 tracklist];
    v20 = [v19 shuffleCommand];

    if (v20)
    {
      swift_unknownObjectRelease();
      v21 = [v5 tracklist];
      v22 = [v21 shuffleType];

      v23 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v24 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v25 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
      *v23 = v22;
      v23[8] = 0;
      if ((v25 & 1) == 0 && v22 == v24)
      {
LABEL_21:
        v28 = [v5 tracklist];
        v29 = [v28 repeatCommand];

        if (v29)
        {
          swift_unknownObjectRelease();
          v30 = [v5 tracklist];
          v31 = [v30 repeatType];

          v32 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v33 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v34 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
          *v32 = v31;
          v32[8] = 0;
          if ((v34 & 1) == 0 && v31 == v33)
          {
LABEL_27:
            v37 = [v5 tracklist];
            v38 = sub_1002DEE20();

            if (v38)
            {
              v39 = [v5 tracklist];
              v40 = [v39 actionAtQueueEnd];

              v41 = v40 == 3;
              v42 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
              v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = v41;
              if (v42 != 2 && ((v41 ^ v42) & 1) == 0)
              {
LABEL_33:
                v44 = [v5 tracklist];
                v45 = [v44 toggleTransitionsCommand];

                if (v45)
                {
                  swift_unknownObjectRelease();
                  v46 = [v5 tracklist];
                  v47 = [v46 transitionsActive];

                  v48 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
                  v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = v47;
                  if (v48 != 2 && ((v47 ^ v48) & 1) == 0)
                  {
LABEL_39:
                    v50 = [v5 tracklist];
                    v51 = [v50 transitionStyle];

                    v52 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle];
                    *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionStyle] = v51;
                    if (v51 != v52)
                    {
                      [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton] setNeedsUpdateConfiguration];
                    }

                    sub_1002E4A30();
                    v53 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction];
                    v54 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButtonAction];
                    *v53 = sub_1002E9E7C;
                    v53[1] = 0;
                    sub_100020438(v54);
                    v55 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction];
                    v56 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButtonAction];
                    *v55 = sub_1002EA050;
                    v55[1] = 0;
                    sub_100020438(v56);
                    v57 = sub_100025CE0();
                    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v57))
                    {
                      if (qword_10117F5F8 != -1)
                      {
                        swift_once();
                      }

                      v58 = (*(*qword_101218AC8 + 360))();
                      v59 = [v58 route];

                      if (v59)
                      {
                        v60 = [v59 isDeviceRoute];

                        if (v60)
                        {
                          v61 = objc_opt_self();
                          v62 = [v61 standardUserDefaults];
                          v63 = [v62 isFocusModePrivateListeningEnabled];

                          if (!v63)
                          {
                            v64 = [v61 standardUserDefaults];
                            v63 = [v64 isPrivateListeningEnabled];
                          }

                          v65 = [v63 BOOLValue];

                          sub_10028F61C(v65);
                          v66 = swift_allocObject();
                          *(v66 + 16) = v2;
                          *(v66 + 24) = v4;
                          v67 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction];
                          v68 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButtonAction];
                          *v67 = sub_10030A890;
                          v67[1] = v66;
                          v69 = v2;
                          v70 = v4;
                          sub_100020438(v68);
                          goto LABEL_52;
                        }
                      }

                      v71 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory];
                      v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory] = 2;
                      if (v71 != 2)
                      {
                        v72 = OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton;
                        [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistoryButton] setHidden:1];
                        v73 = *&v2[v72];
                        [v73 setNeedsUpdateConfiguration];
                      }
                    }

LABEL_52:
                    v74 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v75 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction];
                    v76 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButtonAction];
                    *v75 = sub_10030B04C;
                    v75[1] = v74;

                    sub_100020438(v76);

                    v77 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v78 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction];
                    v79 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButtonAction];
                    *v78 = sub_10030B050;
                    v78[1] = v77;

                    sub_100020438(v79);
                  }
                }

                else
                {
                  v49 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
                  v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = 2;
                  if (v49 == 2)
                  {
                    goto LABEL_39;
                  }
                }

                [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton] setNeedsUpdateConfiguration];
                goto LABEL_39;
              }
            }

            else
            {
              v43 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
              v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = 2;
              if (v43 == 2)
              {
                goto LABEL_33;
              }
            }

            [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton] setNeedsUpdateConfiguration];
            goto LABEL_33;
          }
        }

        else
        {
          v35 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
          v36 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
          *v35 = 0;
          v35[8] = 1;
          if (v36)
          {
            goto LABEL_27;
          }
        }

        [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton] setNeedsUpdateConfiguration];
        goto LABEL_27;
      }
    }

    else
    {
      v26 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
      v27 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
      *v26 = 0;
      v26[8] = 1;
      if (v27)
      {
        goto LABEL_21;
      }
    }

    [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton] setNeedsUpdateConfiguration];
    goto LABEL_21;
  }

  v11 = result[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState];
  result[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayState] = 2;
  if (v11 != 2)
  {
    result = [*&result[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_autoPlayButton] setNeedsUpdateConfiguration];
  }

  v12 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType];
  v13 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleType + 8];
  *v12 = 0;
  v12[8] = 1;
  if ((v13 & 1) == 0)
  {
    result = [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_shuffleButton] setNeedsUpdateConfiguration];
  }

  v14 = &v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType];
  v15 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatType + 8];
  *v14 = 0;
  v14[8] = 1;
  if ((v15 & 1) == 0)
  {
    result = [*&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_repeatButton] setNeedsUpdateConfiguration];
  }

  v16 = v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive];
  v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsActive] = 2;
  if (v16 != 2)
  {
    v17 = *&v2[OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_transitionsButton];

    return [v17 setNeedsUpdateConfiguration];
  }

  return result;
}

uint64_t sub_1002E9E9C(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002E9F34, v3, v2);
}

uint64_t sub_1002E9F34()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002EA070(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v5, a2, v8);
}

uint64_t sub_1002EA178(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002EA210, v3, v2);
}

uint64_t sub_1002EA210()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0;
  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_1002EA32C(uint64_t a1, void *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Music27NowPlayingQueueControlsView_useListeningHistory) ^ 1;
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = [v5 isFocusModePrivateListeningEnabled];

  if (v6)
  {

    v7 = String._bridgeToObjectiveC()();

    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = swift_allocObject();
    *(v10 + 16) = v3 & 1;
    v11 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_10030A898;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010A5D90;
    v12 = _Block_copy(aBlock);

    v13 = [objc_opt_self() actionWithTitle:v11 style:0 handler:v12];
    _Block_release(v12);

    [v9 addAction:v13];
    [a2 presentViewController:v9 animated:1 completion:0];
  }

  else
  {
    v14 = [v4 standardUserDefaults];
    [v14 setFocusModePrivateListeningEnabled:0];

    v15 = [v4 standardUserDefaults];
    v16 = [objc_allocWithZone(NSNumber) initWithBool:v3 & 1];
    [v15 setPrivateListeningEnabled:v16];
  }
}

void sub_1002EA678(uint64_t a1, char a2)
{
  v3 = objc_opt_self();
  v4 = [v3 standardUserDefaults];
  [v4 setFocusModePrivateListeningEnabled:0];

  v5 = [v3 standardUserDefaults];
  v6 = [objc_allocWithZone(NSNumber) initWithBool:a2 & 1];
  [v5 setPrivateListeningEnabled:v6];
}

uint64_t sub_1002EA748()
{
  v1 = sub_10010FC20(&qword_101183A20);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v33 - v5;
  v7 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v10 - 8);
  v13 = &v33 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v14)
  {
    v15 = v14;
    v16 = [v15 tracklist];
    v17 = [v16 actionAtQueueEnd];

    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
    type metadata accessor for MainActor();
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    if (v17 == 3)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    *(v20 + 16) = v19;
    *(v20 + 24) = &protocol witness table for MainActor;
    *(v20 + 32) = v21;
    if (v17 == 3)
    {
      v22 = 15;
    }

    else
    {
      v22 = 2;
    }

    sub_1001F524C(0, 0, v13, &unk_100EC65D0, v20);

    v23 = type metadata accessor for URL();
    v24 = *(*(v23 - 8) + 56);
    v24(v6, 1, 1, v23);
    v24(v4, 1, 1, v23);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x79616C506F747561, 0xE800000000000000, 5, v22, v6, 0, 0, 12, v9, 0, 0, 65280, 0x7478654E7055, 0xE600000000000000, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v4, 0, 1, 2, 0, 0, 0);
    v25 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v26 = sub_10053771C();
    v28 = v27;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v29 = qword_101218AD0;
    v30 = GroupActivitiesManager.hasJoined.getter();
    v31 = GroupActivitiesManager.participantsCount.getter();
    v32 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v25) + 0xB8))(v9, v26, v28, v30 & 1, v31, *(v29 + v32));

    return sub_10030AD48(v9, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

uint64_t sub_1002EAB7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 144) = a4;
  *(v4 + 96) = a1;
  type metadata accessor for MainActor();
  *(v4 + 104) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 112) = v6;
  *(v4 + 120) = v5;

  return _swift_task_switch(sub_1002EAC18, v6, v5);
}

uint64_t sub_1002EAC18()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 144);
  *(v0 + 40) = &type metadata for Player.QueueEndCommand;
  *(v0 + 48) = &protocol witness table for Player.QueueEndCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2D48;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002EAD38()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v4)
  {
    v5 = [v4 tracklist];
    v6 = [v5 transitionStyle];

    if (v6 == 1)
    {
      if (qword_10117F8A8 != -1)
      {
        swift_once();
      }

      sub_10058BB38(7, 2);
    }
  }

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1001F524C(0, 0, v3, &unk_100EC65C0, v9);
}

uint64_t sub_1002EAEE4(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1002EAF7C, v3, v2);
}

uint64_t sub_1002EAF7C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.ToggleTransitionsCommand;
  *(v0 + 48) = &protocol witness table for Player.ToggleTransitionsCommand;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

id sub_1002EB08C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (!v3)
  {
    v17 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
    v18 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v19 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v20 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v21 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    *v17 = 0u;
    *(v17 + 16) = 0u;
    v22 = *(v17 + 32);
    *(v17 + 32) = -1;
    sub_100309C54(v18, v19, v20, v21, v22);
    return sub_1005701F8();
  }

  v4 = v3;
  v5 = [v4 tracklist];
  sub_1002E7140(v5, v31);

  v6 = a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource;
  v7 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
  v8 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
  v9 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
  v10 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
  v11 = v31[1];
  *v6 = v31[0];
  *(v6 + 16) = v11;
  v12 = *(v6 + 32);
  *(v6 + 32) = v32;
  sub_1000089F8(v31, &v30, &qword_10118ABD8);
  sub_100309C54(v7, v8, v9, v10, v12);
  sub_1005701F8();
  sub_1000095E8(v31, &qword_10118ABD8);
  v13 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton);
  v14 = [v13 isHidden];
  v15 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v15))
  {
    v16 = [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden];
  }

  else
  {
    v16 = 1;
  }

  sub_1002E7A7C(a1, v4);
  if (v14 == [v13 isHidden])
  {
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v15))
    {
      if (v16 == [*(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
      {
        goto LABEL_8;
      }
    }

    else if (v16)
    {
      goto LABEL_8;
    }
  }

  sub_1002E7DC8();
LABEL_8:

  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  v26 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction);
  *v25 = sub_10030B04C;
  v25[1] = v24;

  sub_100020438(v26);

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = (a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  v29 = *(a1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction);
  *v28 = sub_10030B050;
  v28[1] = v27;

  sub_100020438(v29);
}

void sub_1002EB36C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1002EB3C8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v3)
  {
    v4 = [v3 tracklist];
  }

  else
  {
    v4 = 0;
  }

  sub_1002E7140(v10, v4);

  if (v11 != 255)
  {
    if (v11 == 2)
    {
      v5 = vorrq_s8(v10[0], v10[1]);
      if (!*&vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))
      {
        v6 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView);
        v8 = 1;
        goto LABEL_9;
      }
    }

    sub_1000095E8(v10, &qword_10118ABD8);
  }

  v6 = *(a1 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController22AutoPlayBackgroundView_backgroundView);
  v7 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  v8 = sub_1005C3564(v9);
LABEL_9:
  [v6 setHidden:v8 & 1];
}

void sub_1002EB520(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_10010FC20(&qword_10118AB38);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v87 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v86 - v10;
  v12 = [objc_allocWithZone(_UICollectionViewListLayoutSectionConfiguration) initWithAppearanceStyle:0 layoutEnvironment:a2];
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = sub_10030A1F0;
  v97 = v13;
  aBlock = _NSConcreteStackBlock;
  v93 = 1107296256;
  v94 = sub_1002EF004;
  v95 = &unk_1010A59D0;
  v14 = _Block_copy(&aBlock);

  [v12 setTrailingSwipeActionsConfigurationProvider:v14];
  _Block_release(v14);
  v15 = [a2 traitCollection];
  sub_100557358(v15);
  v17 = v16;

  [v12 setRowHeight:v17];
  v18 = [v3 traitCollection];
  v19 = sub_1001D1C24();
  v88 = sub_1001D1C78();
  v89 = v19;
  UITraitCollection.subscript.getter();
  if (sub_1005C3564(aBlock))
  {

    v20 = 1;
  }

  else
  {
    v21 = v12;
    v22 = [v18 accessibilityContrast];

    v23 = v22 == 1;
    v12 = v21;
    v20 = v23;
  }

  [v12 setSeparatorStyle:v20];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = sub_10030A1F8;
  v97 = v24;
  aBlock = _NSConcreteStackBlock;
  v93 = 1107296256;
  v94 = sub_1002EF354;
  v95 = &unk_1010A59F8;
  v25 = _Block_copy(&aBlock);

  [v12 setSeparatorInsetProvider:v25];
  _Block_release(v25);
  if (qword_10117F920 != -1)
  {
    swift_once();
  }

  v26 = qword_1012190B8;
  v91 = [objc_allocWithZone(_UIListSeparatorConfiguration) initWithListAppearance:0];
  [v91 setColor:v26];
  v27 = [v3 traitCollection];
  sub_100050078();
  v28 = UITraitCollection.subscript.getter();

  v29 = 0;
  if (v28)
  {
    v29 = [objc_opt_self() effectCompositingColor:v26 withMode:24 alpha:1.0];
  }

  v30 = v91;
  [v91 setVisualEffect:v29];

  [v12 _setSeparatorConfiguration:v30];
  [v12 setHeaderTopPadding:0.0];
  v31 = objc_allocWithZone(_UICollectionViewListLayoutSection);
  v90 = v12;
  v32 = [v31 initWithConfiguration:v12 layoutEnvironment:a2];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v36 = v32;
  [v36 setContentInsets:{NSDirectionalEdgeInsetsZero.top, leading, bottom, trailing}];
  v37 = [v3 traitCollection];
  [v37 displayScale];
  v39 = v38;

  v40 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v41 = *&v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v41)
  {
    __break(1u);
    goto LABEL_52;
  }

  v42 = v41;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v43 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v44 = *(v7 + 8);
  v44(v11, v6);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (*(v43 + 16) <= a1)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v45 = *(v43 + a1 + 32);
  v46 = 1.0 / v39;

  v42 = &selRef_setPhotosHeaderMetadata_;
  if (v45 > 1)
  {
    if ((v45 - 2) >= 2)
    {
      if (v45 != 4)
      {
        v66 = [v3 traitCollection];
        UITraitCollection.subscript.getter();

        if (aBlock)
        {
          v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v67 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
        }

LABEL_44:
        sub_1002F815C(v45);
        v77 = v76;
        v78 = objc_opt_self();
        v79 = [v78 fractionalWidthDimension:1.0];
        v80 = [v78 absoluteDimension:v77];
        v3 = [objc_opt_self() sizeWithWidthDimension:v79 heightDimension:v80];

        v81 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v3 elementKind:_UICollectionViewListLayoutElementKindSectionHeader alignment:1];
        LOBYTE(aBlock) = 2;
        v82 = sub_100309CC0();
        [v81 setPinToVisibleBounds:{FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v82) & 1u | (v45 != 4)}];
        [v81 setZIndex:v45 + 0x7FFFFFFFFFFFFFF9];
        v11 = v81;
        v83 = [v36 boundarySupplementaryItems];
        sub_100009F78(0, &unk_1011913A0);
        v84 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        aBlock = v84;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_45:
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v36 v42[57]];

LABEL_46:
          v58 = v90;
          goto LABEL_47;
        }

LABEL_50:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        goto LABEL_45;
      }

      LOBYTE(aBlock) = 2;
      v60 = sub_100309CC0();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v60))
      {
        goto LABEL_44;
      }

      v61 = objc_opt_self();
      _s22AutoPlayBackgroundViewCMa();
      static UICollectionReusableView.reuseIdentifier.getter();
      v62 = String._bridgeToObjectiveC()();

      v63 = [v61 backgroundDecorationItemWithElementKind:v62];

      [v63 setContentInsets:{4.0, 0.0, 0.0, 0.0}];
      sub_10010FC20(&qword_101183990);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_100EBC6C0;
      *(v64 + 32) = v63;
      sub_100009F78(0, &unk_10118AC40);
      v65 = v63;
      v50 = Array._bridgeToObjectiveC()().super.isa;

      [v36 setDecorationItems:v50];

LABEL_43:
      goto LABEL_44;
    }

    v47 = objc_opt_self();
    v48 = [v47 fractionalWidthDimension:1.0];
    if (qword_10117F560 != -1)
    {
      swift_once();
    }

    v49 = [v47 absoluteDimension:v46 + *&qword_10118A8F0];
    v50 = [objc_opt_self() sizeWithWidthDimension:v48 heightDimension:v49];

    v51 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:_UICollectionViewListLayoutElementKindSectionFooter alignment:5];
    v52 = [v36 boundarySupplementaryItems];
    sub_100009F78(0, &unk_1011913A0);
    v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v53;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

LABEL_42:
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v75 = Array._bridgeToObjectiveC()().super.isa;

    v42 = &selRef_setPhotosHeaderMetadata_;
    [v36 setBoundarySupplementaryItems:v75];

    goto LABEL_43;
  }

  if (v45)
  {
    goto LABEL_44;
  }

  v54 = *&v3[v40];
  if (v54)
  {
    v55 = v54;
    v56 = v87;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    LOBYTE(aBlock) = 0;
    v57 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
    v44(v56, v6);
    v58 = v90;
    if (!v57)
    {
LABEL_47:

      return;
    }

    v59 = [v3 traitCollection];
    UITraitCollection.subscript.getter();

    if (aBlock && aBlock != 1)
    {

      v69 = 1.0;
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v68)
      {
        v69 = 1.0;
      }

      else
      {
        v69 = 2.0;
      }
    }

    v70 = objc_opt_self();
    v71 = [v70 fractionalWidthDimension:1.0];
    if (qword_10117F560 != -1)
    {
      swift_once();
    }

    v72 = [v70 absoluteDimension:v46 + v69 * *&qword_10118A8F0];
    v50 = [objc_opt_self() sizeWithWidthDimension:v71 heightDimension:v72];

    v51 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v50 elementKind:_UICollectionViewListLayoutElementKindSectionFooter alignment:5];
    v73 = [v36 boundarySupplementaryItems];
    sub_100009F78(0, &unk_1011913A0);
    v74 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v74;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    goto LABEL_42;
  }

LABEL_52:
  __break(1u);
}

void sub_1002EC380(uint64_t a1)
{
  v59 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IndexPath();
  v54 = *(v6 - 8);
  v55 = v6;
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_10118AB38);
  v52 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v51 - v12;
  v14 = _s23QueueSnapshotIdentifierOMa(0);
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v51 = v3;
  v21 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v57 = Strong;
  v22 = *&Strong[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v22)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v22;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v58 + 48))(v13, 1, v14) == 1)
  {

    sub_1000095E8(v13, &unk_10118AAF0);
LABEL_5:
    sub_100009F78(0, &unk_1011A49F0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [objc_opt_self() configurationWithActions:isa];

    return;
  }

  v25 = v19;
  sub_100309144(v13, v19, _s23QueueSnapshotIdentifierOMa);
  v26 = sub_100432DFC();
  v27 = [v26 remove];

  if (v27)
  {

LABEL_8:
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1003090DC(v25, v17, _s23QueueSnapshotIdentifierOMa);
    v29 = v53;
    v30 = v54;
    v31 = v55;
    (*(v54 + 16))(v53, v59, v55);
    v32 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v33 = (v15 + *(v30 + 80) + v32) & ~*(v30 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = v28;
    sub_100309144(v17, v34 + v32, _s23QueueSnapshotIdentifierOMa);
    (*(v30 + 32))(v34 + v33, v29, v31);
    aBlock[4] = sub_10030A200;
    aBlock[5] = v34;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D72A4;
    aBlock[3] = &unk_1010A5A48;
    v35 = _Block_copy(aBlock);
    v36 = objc_opt_self();

    v37 = [v36 contextualActionWithStyle:1 title:0 handler:v35];
    _Block_release(v35);

    v38 = [objc_opt_self() configurationWithWeight:5];
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v38];

    [v37 setImage:v40];
    v41 = v37;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v42 = String._bridgeToObjectiveC()();

    [v41 setAccessibilityLabel:v42];

    sub_10010FC20(&qword_101183990);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_100EBC6C0;
    *(v43 + 32) = v41;
    sub_100009F78(0, &unk_1011A49F0);
    v44 = v41;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    [objc_opt_self() configurationWithActions:v45];

    sub_10030AD48(v25, _s23QueueSnapshotIdentifierOMa);
    return;
  }

  v46 = *&v57[v21];
  if (v46)
  {
    v47 = v46;
    v48 = IndexPath.safeSection.getter();
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v49 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v52 + 8))(v10, v8);
    if ((v48 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v48 < *(v49 + 16))
    {
      v50 = *(v49 + v48 + 32);

      v25 = v19;
      if (v50)
      {
        sub_10030AD48(v19, _s23QueueSnapshotIdentifierOMa);

        goto LABEL_5;
      }

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void sub_1002ECBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v97 = a7;
  v98 = a6;
  v94 = a4;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v82[1] = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v13 - 8);
  v96 = v82 - v14;
  v93 = type metadata accessor for DispatchWorkItemFlags();
  v92 = *(v93 - 1);
  __chkstk_darwin(v93);
  v90 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for DispatchQoS();
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for IndexPath();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v17;
  v85 = v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&qword_10118AB38);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v82 - v20;
  v95 = _s23QueueSnapshotIdentifierOMa(0);
  v22 = *(v95 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v95);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  v82[0] = v12;
  v83 = a3;
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1003090DC(v98, v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), _s23QueueSnapshotIdentifierOMa);
  v27 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v98 = v28;
  sub_100309144(v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, _s23QueueSnapshotIdentifierOMa);
  v29 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v30 = *&v25[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v30)
  {
    goto LABEL_27;
  }

  v31 = v25;
  v32 = v30;
  v33 = v97;
  v34 = IndexPath.safeSection.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v35 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v19 + 8))(v21, v18);
  if ((v34 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v34 >= *(v35 + 16))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v36 = *(v35 + v34 + 32);

  if (v36 <= 1)
  {
    v42 = v31;
    if (!v36)
    {
      v43 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
      swift_beginAccess();
      v44 = *&v31[v43];
      v45 = v86;
      v46 = v85;
      v47 = v87;
      (*(v86 + 16))(v85, v33, v87);
      v48 = (*(v45 + 80) + 40) & ~*(v45 + 80);
      v49 = (v84 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = swift_allocObject();
      *(v50 + 2) = v42;
      *(v50 + 3) = sub_10030A4C8;
      *(v50 + 4) = v98;
      (*(v45 + 32))(&v50[v48], v46, v47);
      v51 = &v50[v49];
      v52 = v94;
      *v51 = v83;
      v51[1] = v52;
      v103 = sub_10030A584;
      v104 = v50;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v101 = sub_10002BC98;
      v102 = &unk_1010A5B60;
      v53 = _Block_copy(&aBlock);
      v54 = v44;
      v55 = v42;

      v56 = v88;
      static DispatchQoS.unspecified.getter();
      *v99 = _swiftEmptyArrayStorage;
      sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970);
      sub_100020674(&qword_101183F70, &qword_101182970);
      v57 = v90;
      v58 = v93;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v53);

      (*(v92 + 8))(v57, v58);
      (*(v89 + 8))(v56, v91);
LABEL_22:

      return;
    }

LABEL_21:

    goto LABEL_22;
  }

  if ((v36 - 2) >= 3)
  {
    goto LABEL_21;
  }

  v37 = *&v31[v29];
  if (!v37)
  {
LABEL_28:
    __break(1u);
    return;
  }

  v38 = v37;
  v39 = v96;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v40 = (*(v22 + 48))(v39, 1, v95);
  v41 = v83;
  if (v40 == 1)
  {

    sub_1000095E8(v39, &unk_10118AAF0);
    return;
  }

  v59 = sub_100432DFC();
  sub_10030AD48(v39, _s23QueueSnapshotIdentifierOMa);
  if (!v59)
  {
    goto LABEL_21;
  }

  v60 = [v59 remove];
  if (!v60)
  {

    goto LABEL_21;
  }

  v61 = v60;
  v62 = *&v31[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (v62 && [v62 isSharedListeningSession] && ((v63 = &v31[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__hasSeenSharedListeningQueueItemRemoveAlert], swift_beginAccess(), v64 = *(v63 + 2), v65 = v63[24], aBlock = *v63, v101 = v64, LOBYTE(v102) = v65, v66 = sub_10010FC20(&qword_10118AC50), UserDefault.wrappedValue.getter(v66, v99), v99[0] == 2) || (v99[0] & 1) == 0))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v96 = v63;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v95 = v66;
    v67 = String._bridgeToObjectiveC()();

    v68 = String._bridgeToObjectiveC()();

    v97 = [objc_opt_self() alertControllerWithTitle:v67 message:v68 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v69 = swift_allocObject();
    v70 = v94;
    *(v69 + 16) = v83;
    *(v69 + 24) = v70;

    v71 = String._bridgeToObjectiveC()();

    v103 = sub_10026765C;
    v104 = v69;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v93 = &v101;
    v101 = sub_10027D328;
    v102 = &unk_1010A5AC0;
    v72 = _Block_copy(&aBlock);

    v73 = objc_opt_self();
    v74 = [v73 actionWithTitle:v71 style:1 handler:v72];
    _Block_release(v72);

    [v97 addAction:v74];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v75 = swift_allocObject();
    v75[2] = v31;
    v75[3] = sub_10030A4C8;
    v75[4] = v98;
    v75[5] = v61;
    v75[6] = v83;
    v75[7] = v70;
    v76 = v31;

    v77 = v61;
    v78 = String._bridgeToObjectiveC()();

    v103 = sub_10030A574;
    v104 = v75;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v101 = sub_10027D328;
    v102 = &unk_1010A5B10;
    v79 = _Block_copy(&aBlock);

    v80 = [v73 actionWithTitle:v78 style:2 handler:v79];
    _Block_release(v79);

    v81 = v97;
    [v97 addAction:v80];

    [v76 presentViewController:v81 animated:1 completion:0];
    v99[0] = 1;
    swift_beginAccess();
    UserDefault.wrappedValue.setter(v99, v95);
    swift_endAccess();
  }

  else
  {
    sub_1002EE3A4(v31, sub_10030A4C8, v98, v61, v41, v94);
  }
}

void sub_1002ED9EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19[-v4];
  v6 = sub_10010FC20(&qword_10118AB38);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19[-v8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (v12)
    {
      v13 = v12;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      sub_10010FC20(&qword_10118AC10);
      v14 = *(_s23QueueSnapshotIdentifierOMa(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100EBC6B0;
      sub_1003090DC(a2, v16 + v15, _s23QueueSnapshotIdentifierOMa);
      NSDiffableDataSourceSnapshot.deleteItems(_:)(v16);

      (*(v7 + 32))(v5, v9, v6);
      (*(v7 + 56))(v5, 0, 1, v6);
      v17 = &v11[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext];
      swift_beginAccess();
      updated = _s13UpdateContextVMa(0);
      sub_10006B010(v5, &v17[*(updated + 24)], &qword_10118ABE0);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1002EDCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002F4E14(256, a2, a3);
  sub_1002EDFCC();
  sub_100009F78(0, &qword_101182960);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  aBlock[4] = sub_10030B05C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5BB0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v21 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v20);
}

void sub_1002EDFCC()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse);
  if (!v5)
  {
    return;
  }

  v6 = objc_allocWithZone(MPMutableSectionedCollection);
  v7 = v5;
  v8 = [v6 init];
  v9 = [v7 results];
  if (!v9)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 sectionAtIndex:0];

  [v8 appendSection:v11];
  swift_unknownObjectRelease();
  v12 = [v7 results];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v13 = v12;
  isa = [v12 itemsInSectionAtIndex:0];

  if (!isa)
  {
    sub_100009F78(0, qword_101186D10);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 appendItems:isa];

  IndexPath.item.getter();
  IndexPath.init(item:section:)();
  v15 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  [v8 removeItemAtIndexPath:v15];

  v16 = [objc_allocWithZone(MPModelLibraryPlaylistEditChangeRequest) init];
  [v16 setShouldCreatePlaylist:0];
  sub_100305FB0();
  v18 = v17;
  [v16 setPlaylist:v17];

  [v16 setPlaylistEntries:v8];
  v27 = UIScreen.Dimensions.size.getter;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002F982C;
  v26 = &unk_1010A5BD8;
  v19 = _Block_copy(&aBlock);
  v27 = UIScreen.Dimensions.size.getter;
  v28 = 0;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002F982C;
  v26 = &unk_1010A5C00;
  v20 = _Block_copy(&aBlock);
  v21 = [v16 newOperationWithLocalPersistenceResponseHandler:v19 completeResponseHandler:v20];
  _Block_release(v20);
  _Block_release(v19);
  v22 = [objc_opt_self() preferredQueue];
  [v22 addOperation:v21];
}

uint64_t sub_1002EE3A4(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v18 = *&a1[v17];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = v26;
  v19[7] = a6;
  aBlock[4] = sub_10030A66C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5C50;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = a1;

  v23 = a4;

  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v28 + 8))(v13, v11);
  (*(v14 + 8))(v16, v27);
}

uint64_t sub_1002EE6CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v27 = a5;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v16 - 8);
  v18 = &v26 - v17;
  sub_1002F4E14(257, a2, a3);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a4;
  v21 = a4;
  sub_10086E658(0, 0, v18, &unk_100EC65B0, v20);

  sub_100009F78(0, &qword_101182960);
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v27;
  *(v23 + 24) = a6;
  aBlock[4] = sub_10026765C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5CC8;
  v24 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v29 + 8))(v12, v10);
  return (*(v13 + 8))(v15, v28);
}

uint64_t sub_1002EEACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a1;
  *(v4 + 104) = a4;
  return _swift_task_switch(sub_1002EEAEC, 0, 0);
}

uint64_t sub_1002EEAEC()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EEB84, v2, v1);
}

uint64_t sub_1002EEB84()
{

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1002EEC1C, 0, 0);
}

uint64_t sub_1002EEC1C()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002EECA8, v2, v1);
}

uint64_t sub_1002EECA8()
{

  *(v0 + 136) = qword_101218AD8;

  return _swift_task_switch(sub_1002EED1C, 0, 0);
}

uint64_t sub_1002EED1C()
{
  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1002EEE20;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002EEE20(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = sub_1002EEF88;
  }

  else
  {
    *(v4 + 160) = a1;
    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = sub_1002EEF64;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002EEF88()
{
  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

id sub_1002EF004(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);

  return v7;
}

void sub_1002EF110()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_10117F860 != -1)
    {
      swift_once();
    }

    if (qword_10117F850 != -1)
    {
      swift_once();
    }

    v2 = IndexPath.item.getter();
    v3 = sub_1002DCC7C(v2);
    v4 = [v3 numberOfItemsInSection:IndexPath.section.getter()];

    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      if (v2 != v4 - 1)
      {
        v15 = v1;
        v16 = [v15 view];
        if (v16)
        {
          v17 = v16;
          [v16 directionalLayoutMargins];

          v18 = [v15 view];
          if (v18)
          {
            [v18 directionalLayoutMargins];

            return;
          }

          goto LABEL_17;
        }

LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      v5 = [v1 view];
      if (v5)
      {
        v6 = v5;
        [v5 frame];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        v19.origin.x = v8;
        v19.origin.y = v10;
        v19.size.width = v12;
        v19.size.height = v14;
        CGRectGetWidth(v19);

        return;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

double sub_1002EF354(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6(v5);

  (*(v3 + 8))(v5, v2);
  return v7;
}

void sub_1002EF478()
{
  v1 = v0;
  sub_1002DCC7C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(_s10DataSourceCMa(0));
  v3 = &v2[qword_10118F958];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v2[qword_10118F960];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = v5;

  dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = &v6[qword_10118F958];
  v9 = *&v6[qword_10118F958];
  *v8 = sub_10030A12C;
  v8[1] = v7;

  sub_100020438(v9);

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_10118F960];
  v12 = *&v6[qword_10118F960];
  *v11 = sub_10030A134;
  v11[1] = v10;

  sub_100020438(v12);

  v13 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource) = v6;
}

char *sub_1002EF670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a1;
  v5 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v5 - 8);
  v73 = &v72 - v6;
  v7 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v72 - v8;
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v13 = _s23QueueSnapshotIdentifierOMa(0);
  __chkstk_darwin(v13);
  v15 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    while (1)
    {
LABEL_25:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_26:
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v71._object = 0x8000000100E45E60;
      v71._countAndFlagsBits = 0xD000000000000020;
      String.append(_:)(v71);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  v17 = Strong;
  sub_1003090DC(a3, v15, _s23QueueSnapshotIdentifierOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v34 = *v15;
      type metadata accessor for NowPlayingQueueRepeatCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      v35 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

      v21 = v35;
      v36 = [v17 view];
      if (!v36)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v37 = v36;
      [v36 directionalLayoutMargins];

      [v21 directionalLayoutMargins];
      [v21 setDirectionalLayoutMargins:?];

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v38._countAndFlagsBits = 0x6E69746165706552;
      v38._object = 0xEA00000000002067;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v38);
      v75 = v34;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v39._countAndFlagsBits = 0x73676E6F5320;
      v39._object = 0xE600000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v39);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      v40 = String.init(localized:table:bundle:locale:comment:)();
      v41 = &v21[OBJC_IVAR____TtC5Music25NowPlayingQueueRepeatCell_text];
      *v41 = v40;
      v41[1] = v42;

      sub_100294FA4();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = *v15;
        type metadata accessor for NowPlayingQueueRemainingSongsCell();
        static UICollectionReusableView.reuseIdentifier.getter();
        v20 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

        v21 = v20;
        v22 = [v17 view];
        if (v22)
        {
          v23 = v22;
          [v22 directionalLayoutMargins];

          [v21 directionalLayoutMargins];
          [v21 setDirectionalLayoutMargins:?];

          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
          v75 = v19;
          String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
          v25._countAndFlagsBits = 0x6F532065726F4D20;
          v25._object = 0xEB0000000073676ELL;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v25);
          String.LocalizationValue.init(stringInterpolation:)();
          static Locale.current.getter();
          v26 = String.init(localized:table:bundle:locale:comment:)();
          v27 = &v21[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_text];
          *v27 = v26;
          v27[1] = v28;

          v29 = *&v21[OBJC_IVAR____TtC5Music33NowPlayingQueueRemainingSongsCell_label];

          v30 = v29;
          v31 = String._bridgeToObjectiveC()();

          [v30 setText:v31];

          return v21;
        }

        goto LABEL_22;
      }

      type metadata accessor for NowPlayingQueueAddCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      v43 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

      v44 = v43;
      v45 = [v17 view];
      if (!v45)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v46 = v45;
      [v45 directionalLayoutMargins];

      [v44 directionalLayoutMargins];
      [v44 setDirectionalLayoutMargins:?];

      v21 = v44;
      UICollectionViewCell.configurationUpdateHandler.setter();
    }

    return v21;
  }

  if (!EnumCaseMultiPayload)
  {
    v32 = sub_1004329EC();
    if (v32)
    {
      v33 = v32;
      v21 = sub_1002F6544(a2, v32);
    }

    else
    {
      type metadata accessor for NowPlayingQueueCell();
      static UICollectionReusableView.reuseIdentifier.getter();
      v50 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

      v51 = v50;
      v52 = [v17 view];
      if (!v52)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v53 = v52;
      [v52 layoutMargins];
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;

      [v51 setLayoutMargins:{v55, v57, v59, v61}];
      v51[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = 1;
      v62 = *&v51[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
      UIInterfaceGetContentDisabledAlpha();
      [v62 setAlpha:?];

      v21 = v51;
      static UIBackgroundConfiguration.clear()();
      v63 = type metadata accessor for UIBackgroundConfiguration();
      (*(*(v63 - 8) + 56))(v9, 0, 1, v63);
      UICollectionViewCell.backgroundConfiguration.setter();
      *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title] = xmmword_100EC61F0;

      sub_100553944();
      v64 = v73;
      AttributedString.init(stringLiteral:)();
      v65 = type metadata accessor for AttributedString();
      (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
      v66 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
      swift_beginAccess();
      sub_100309BE4(v64, &v21[v66]);
      swift_endAccess();
      v67 = [v21 traitCollection];
      v68 = [v67 preferredContentSizeCategory];

      LOBYTE(v67) = UIContentSizeCategory.isAccessibilityCategory.getter();
      sub_100555BBC(v67 & 1);
      sub_1000095E8(v64, &qword_101180C90);
      v69 = *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork];
      *&v21[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork] = 0;

      sub_100553DD0();
    }

    sub_1000095E8(v15, &qword_10118AB00);
    return v21;
  }

  v47 = sub_1004329EC();
  if (!v47)
  {
    goto LABEL_26;
  }

  v48 = v47;
  v21 = sub_1002F6544(a2, v47);

  v49 = type metadata accessor for IndexPath();
  (*(*(v49 - 8) + 8))(v15, v49);
  return v21;
}

uint64_t sub_1002F0150()
{
  v0 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = type metadata accessor for UIBackgroundConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isExpanded.getter())
  {
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.05];

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  (*(v4 + 16))(v2, v6, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002F0338(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v9 = Strong;
  sub_1002F6DA8(a2, a3, a4, a1);
  v11 = v10;

  return v11;
}

uint64_t sub_1002F03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v3 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v33 = _s23QueueSnapshotIdentifierOMa(0);
  v6 = *(v33 - 8);
  __chkstk_darwin(v33);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v32 = &v30 - v9;
  v10 = sub_10010FC20(&qword_10118AB38);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v15 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= *(v15 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v17 = *(v15 + v14 + 32);

  if (v17)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v18 = result;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    if ((*(v6 + 48))(v5, 1, v33) == 1)
    {

      sub_1000095E8(v5, &unk_10118AAF0);
    }

    else
    {
      v19 = v32;
      sub_100309144(v5, v32, _s23QueueSnapshotIdentifierOMa);
      v20 = sub_100432DFC();
      if (v20)
      {
        v21 = v20;
        v22 = v31;
        sub_1003090DC(v19, v31, _s23QueueSnapshotIdentifierOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v23 = *(v22 + *(sub_10010FC20(&qword_10118AB08) + 48));
          v24 = type metadata accessor for IndexPath();
          (*(*(v24 - 8) + 8))(v22, v24);
          v25 = sub_1002DCC7C();
          IndexPath.section.getter();
          v26 = dispatch thunk of UICollectionViewDiffableDataSource.collectionView(_:numberOfItemsInSection:)();

          if (v26 >= 2)
          {
            v27 = [v23 tracklist];
            v28 = [v27 reorderCommand];

            if (v28)
            {
              v29 = [v28 canMoveItem:v21];
              swift_unknownObjectRelease();

              sub_10030AD48(v19, _s23QueueSnapshotIdentifierOMa);
              return v29;
            }
          }

          sub_10030AD48(v19, _s23QueueSnapshotIdentifierOMa);
        }

        else
        {
          sub_10030AD48(v19, _s23QueueSnapshotIdentifierOMa);

          sub_10030AD48(v22, _s23QueueSnapshotIdentifierOMa);
        }
      }

      else
      {
        sub_10030AD48(v19, _s23QueueSnapshotIdentifierOMa);
      }
    }
  }

  return 0;
}

void sub_1002F0888(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v70 = a4;
  v74 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v71 = &v65 - v6;
  v7 = sub_10010FC20(&qword_10118AB38);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v72 = &v65 - v9;
  v10 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = _s23QueueSnapshotIdentifierOMa(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v73 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  __chkstk_darwin(v22);
  v76 = &v65 - v23;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v75 = Strong;
  v68 = v8;
  v69 = v7;
  v67 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {

    sub_1000095E8(v15, &unk_10118AAF0);
    goto LABEL_11;
  }

  v26 = v15;
  v27 = v76;
  sub_100309144(v26, v76, _s23QueueSnapshotIdentifierOMa);
  sub_1003090DC(v27, v21, _s23QueueSnapshotIdentifierOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10030AD48(v27, _s23QueueSnapshotIdentifierOMa);

    v32 = v21;
LABEL_9:
    sub_10030AD48(v32, _s23QueueSnapshotIdentifierOMa);
    goto LABEL_11;
  }

  v28 = *&v21[*(sub_10010FC20(&qword_10118AB08) + 48)];
  v29 = type metadata accessor for IndexPath();
  (*(*(v29 - 8) + 8))(v21, v29);
  v30 = sub_100432DFC();
  if (v30)
  {
    v66 = v30;
    v31 = v28;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
    if (v25(v12, 1, v16) == 1)
    {
      sub_10030AD48(v27, _s23QueueSnapshotIdentifierOMa);

      sub_1000095E8(v12, &unk_10118AAF0);
      goto LABEL_11;
    }

    v36 = v73;
    sub_100309144(v12, v73, _s23QueueSnapshotIdentifierOMa);
    v37 = sub_100432DFC();
    if (v37)
    {
      v38 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
      v39 = *&v75[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
      if (v39)
      {
        v40 = v37;
        v41 = v39;
        v42 = v72;
        dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

        v43 = IndexPath.item.getter();
        v44 = IndexPath.item.getter();
        v45 = [v31 tracklist];
        v46 = [v45 reorderCommand];

        v47 = v44 < v43;
        v48 = v68;
        v49 = v69;
        if (v47)
        {
          if (v46)
          {
            v50 = [v46 moveItem:v66 beforeItem:v40];
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = 0;
          }

          v51 = v50;
          NSDiffableDataSourceSnapshot.moveItem(_:beforeItem:)();
        }

        else
        {
          if (v46)
          {
            v50 = [v46 moveItem:v66 afterItem:v40];
            swift_unknownObjectRelease();
          }

          else
          {
            v50 = 0;
          }

          v52 = v50;
          NSDiffableDataSourceSnapshot.moveItem(_:afterItem:)();
        }

        if (!v50)
        {
          swift_beginAccess();
          v56 = swift_unknownObjectWeakLoadStrong();
          if (v56)
          {
            v57 = v56;
            v58 = sub_1002DCC7C();

            [v58 reloadData];
          }

          else
          {
          }

          (*(v48 + 8))(v42, v49);
          sub_10030AD48(v36, _s23QueueSnapshotIdentifierOMa);
          v64 = v76;
          goto LABEL_38;
        }

        v53 = *&v75[v38];
        if ((v70 & 1) == 0)
        {
          v54 = v76;
          if (v53)
          {
            v55 = v53;
            dispatch thunk of UICollectionViewDiffableDataSource.applySnapshotUsingReloadData(_:completion:)();
            goto LABEL_35;
          }

LABEL_41:
          __break(1u);
          return;
        }

        v54 = v76;
        if (v53)
        {
          v55 = v53;
          dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
LABEL_35:

          v59 = type metadata accessor for TaskPriority();
          v60 = v71;
          (*(*(v59 - 8) + 56))(v71, 1, 1, v59);
          type metadata accessor for MainActor();
          v61 = v50;
          v62 = static MainActor.shared.getter();
          v63 = swift_allocObject();
          v63[2] = v62;
          v63[3] = &protocol witness table for MainActor;
          v63[4] = v61;
          sub_10086E658(0, 0, v60, &unk_100EC6598, v63);

          (*(v48 + 8))(v42, v49);
          sub_10030AD48(v36, _s23QueueSnapshotIdentifierOMa);
          v64 = v54;
LABEL_38:
          sub_10030AD48(v64, _s23QueueSnapshotIdentifierOMa);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    sub_10030AD48(v36, _s23QueueSnapshotIdentifierOMa);
    v32 = v27;
    goto LABEL_9;
  }

  sub_10030AD48(v27, _s23QueueSnapshotIdentifierOMa);

LABEL_11:
  swift_beginAccess();
  v33 = swift_unknownObjectWeakLoadStrong();
  if (v33)
  {
    v34 = v33;
    v35 = sub_1002DCC7C();

    [v35 reloadData];
  }
}

uint64_t sub_1002F1118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  type metadata accessor for MainActor();
  v4[14] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[15] = v6;
  v4[16] = v5;

  return _swift_task_switch(sub_1002F11B0, v6, v5);
}

uint64_t sub_1002F11B0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_100009F78(0, &qword_10118AC38);
  *(v0 + 16) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = &protocol witness table for MPCPlayerCommandRequest;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 136) = v4;
  *v4 = v0;
  v4[1] = sub_1002F12F0;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1002F12F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_10030B040;
  }

  else
  {
    v4[19] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[15];
    v6 = v4[16];
    v7 = sub_10030B058;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002F1434@<X0>(uint64_t a1@<X8>)
{
  v196 = type metadata accessor for IndexPath();
  v193 = *(v196 - 8);
  v2 = __chkstk_darwin(v196);
  v194 = &v183 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = v3;
  __chkstk_darwin(v2);
  v195 = &v183 - v4;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v7 = &v183 - v6;
  v204 = type metadata accessor for DispatchTime();
  v8 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118AAF0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = (&v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v202 = (&v183 - v14);
  v15 = _s23QueueSnapshotIdentifierOMa(0);
  v214 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v198 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v197 = &v183 - v19;
  v20 = __chkstk_darwin(v18);
  v213 = &v183 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v183 - v23;
  v25 = __chkstk_darwin(v22);
  v201 = &v183 - v26;
  v27 = __chkstk_darwin(v25);
  v200 = &v183 - v28;
  v191 = v29;
  __chkstk_darwin(v27);
  v210 = &v183 - v30;
  v224 = sub_10010FC20(&qword_10118AB38);
  v208 = *(v224 - 8);
  v31 = __chkstk_darwin(v224);
  v33 = &v183 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v183 - v34;
  sub_100309E04();
  v36 = sub_100309644(&unk_10118AC00, _s23QueueSnapshotIdentifierOMa);
  v223 = v35;
  v216 = v15;
  v209 = v36;
  NSDiffableDataSourceSnapshot.init()();
  if (qword_10117F5F8 != -1)
  {
LABEL_99:
    swift_once();
  }

  v37 = (*(*qword_101218AC8 + 360))();
  v38 = [v37 route];

  v205 = v24;
  if (v38 && (v39 = [v38 isDeviceRoute], v38, v39) && (v40 = *&v222[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__historyResponse]) != 0)
  {
    v41 = v40;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A260);
    v241 = _swiftEmptyArrayStorage;
    result = [v41 results];
    if (!result)
    {
LABEL_127:
      __break(1u);
      return result;
    }

    v43 = result;
    v44 = swift_allocObject();
    *(v44 + 16) = v41;
    *(v44 + 24) = &v241;
    v45 = swift_allocObject();
    *(v45 + 16) = sub_10030A0EC;
    *(v45 + 24) = v44;
    v207 = v44;
    v238 = sub_10030A0F4;
    v239 = v45;
    aBlock = _NSConcreteStackBlock;
    v235 = 1107296256;
    v236 = sub_1002DCBA0;
    v237 = &unk_1010A5980;
    v46 = _Block_copy(&aBlock);
    v47 = v41;

    [v43 enumerateItemIdentifiersInSectionAtIndex:0 usingBlock:v46];

    _Block_release(v46);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_125;
    }

    v24 = v241;
    LOBYTE(aBlock) = 0;

    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v206 = sub_10030A0EC;
  }

  else
  {
    v206 = 0;
    v207 = 0;
  }

  v48 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader;
  if (v222[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_wantsPlayingItemHeader] == 1)
  {
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A288);
  }

  LOBYTE(aBlock) = 2;
  v215 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v215))
  {
    if ((v222[v48] & 1) != 0 || (v49 = [objc_opt_self() currentTraitCollection], v50 = objc_msgSend(v49, "userInterfaceIdiom"), v49, v50 == 6))
    {
      NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A2B0);
    }
  }

  v51 = *&v222[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
  if (!v51)
  {
    v148 = 0;
    v145 = v224;
    v146 = v208;
    v149 = v223;
    goto LABEL_113;
  }

  v244 = 0;
  v243 = 0;
  v242 = 0;
  v228 = v51;
  v52 = [v228 tracklist];
  v53 = [v52 displayItems];

  v54 = [v53 allSections];
  sub_100009F78(0, &qword_10118D430);
  v55 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v199 = v7;
  if (v55 >> 62)
  {
    v56 = _CocoaArrayWrapper.endIndex.getter();
    if (v56)
    {
      goto LABEL_18;
    }

LABEL_101:

    v221 = 0;
    v150 = v199;
    goto LABEL_102;
  }

  v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v56)
  {
    goto LABEL_101;
  }

LABEL_18:
  v186 = v33;
  v185 = a1;
  v232 = MPCPlayerResponseTracklistDisplaySectionNextItems;
  v233 = (v55 & 0xC000000000000001);
  swift_beginAccess();
  v221 = 0;
  v218 = 0;
  a1 = 0;
  v57 = 0;
  v219 = v55 & 0xFFFFFFFFFFFFFF8;
  v229 = MPCPlayerResponseTracklistDisplaySectionUpNextItems;
  v212 = &v236;
  v187 = (v214 + 48);
  v227 = MPCPlayerResponseTracklistDisplaySectionAutoPlayItems;
  v226 = MPCPlayerResponseTracklistDisplaySectionPreviousItems;
  v190 = "rResponseItem8q16^B24";
  v189 = (v8 + 8);
  v188 = MSVAutoBugCaptureDomainMediaRemote;
  *(&v58 + 1) = 2;
  v211 = xmmword_100EBC6B0;
  *&v58 = 138412290;
  v184 = v58;
  *&v58 = 136315138;
  v183 = v58;
  v225 = v13;
  v231 = v55;
  v230 = v56;
  do
  {
    while (1)
    {
      if (v233)
      {
        v59 = sub_1007E9374(v57, v55);
      }

      else
      {
        if (v57 >= *(v219 + 16))
        {
          goto LABEL_95;
        }

        v59 = *(v55 + 8 * v57 + 32);
      }

      v60 = v59;
      v13 = (v57 + 1);
      if (__OFADD__(v57, 1))
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v60;
      v61 = String._bridgeToObjectiveC()();

      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v64 = v63;
      if (v62 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v64 == v65)
      {

        v84 = 3;
        goto LABEL_55;
      }

      v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v66)
      {

        v84 = 3;
        goto LABEL_55;
      }

      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69 = v68;
      if (v67 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v69 == v70)
      {

        v84 = 2;
        goto LABEL_55;
      }

      v71 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v71)
      {

        v84 = 2;
        goto LABEL_55;
      }

      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v73;
      if (v72 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v74)
      {

        goto LABEL_50;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        break;
      }

LABEL_50:
      v85 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v86 = sub_1005192B8(3u, v85);

      if (v86)
      {
        v84 = 4;
      }

      else
      {
        v87 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
        v88 = sub_1005192B8(2u, v87);

        if (v88)
        {
          v84 = 4;
        }

        else
        {
          v84 = 3;
        }
      }

LABEL_55:
      sub_10010FC20(&unk_10118AC18);
      v89 = swift_allocObject();
      *(v89 + 16) = v211;
      v220 = v84;
      *(v89 + 32) = v84;
      NSDiffableDataSourceSnapshot.appendSections(_:)(v89);

      v240 = _swiftEmptyArrayStorage;
      v90 = v228;
      v91 = [v228 tracklist];
      v92 = [v91 displayItems];

      v33 = v242;
      v8 = swift_allocObject();
      *(v8 + 16) = &v242;
      *(v8 + 24) = v90;
      *(v8 + 32) = &v240;
      *(v8 + 40) = &v244;
      v217 = v90;
      sub_100020438(v221);
      a1 = swift_allocObject();
      *(a1 + 16) = sub_10030A094;
      *(a1 + 24) = v8;
      v238 = sub_10030A0A0;
      v239 = a1;
      aBlock = _NSConcreteStackBlock;
      v235 = 1107296256;
      v236 = sub_1002F4338;
      v237 = &unk_1010A58B8;
      v7 = _Block_copy(&aBlock);

      [v92 enumerateItemsInSectionAtIndex:v33 usingBlock:v7];

      _Block_release(v7);
      LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

      if (v92)
      {
        goto LABEL_96;
      }

      LOBYTE(aBlock) = 2;
      v93 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v215);
      v7 = v213;
      if (v93)
      {
        if (v220 == 2)
        {
          swift_storeEnumTagMultiPayload();
          swift_beginAccess();
          v94 = v240;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v240 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v94 = sub_100499770(0, v94[2] + 1, 1, v94);
            v240 = v94;
          }

          v97 = v94[2];
          v96 = v94[3];
          a1 = v97 + 1;
          v98 = v214;
          if (v97 >= v96 >> 1)
          {
            v143 = sub_100499770(v96 > 1, v97 + 1, 1, v94);
            v98 = v214;
            v94 = v143;
          }

          v94[2] = a1;
          sub_100309144(v210, v94 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v97, _s23QueueSnapshotIdentifierOMa);
          v240 = v94;
          swift_endAccess();
        }

        v99 = v242 + 1;
        if (__OFADD__(v242, 1))
        {
          goto LABEL_98;
        }

        v100 = [v217 tracklist];
        v101 = [v100 displayItems];

        v102 = [v101 numberOfSections];
        if (v99 == v102)
        {
          v103 = v202;
          sub_1002F3850(v217, &v244, v222, &v243, v202);
          if ((*v187)(v103, 1, v216) == 1)
          {
            sub_1000095E8(v103, &unk_10118AAF0);
          }

          else
          {
            v104 = v8;
            v105 = v200;
            sub_100309144(v103, v200, _s23QueueSnapshotIdentifierOMa);
            sub_1003090DC(v105, v201, _s23QueueSnapshotIdentifierOMa);
            swift_beginAccess();
            v106 = v240;
            v107 = swift_isUniquelyReferenced_nonNull_native();
            v240 = v106;
            if ((v107 & 1) == 0)
            {
              v106 = sub_100499770(0, v106[2] + 1, 1, v106);
              v240 = v106;
            }

            v109 = v106[2];
            v108 = v106[3];
            a1 = v109 + 1;
            v110 = v214;
            v8 = v104;
            if (v109 >= v108 >> 1)
            {
              v144 = sub_100499770(v108 > 1, v109 + 1, 1, v106);
              v110 = v214;
              v106 = v144;
            }

            v106[2] = a1;
            sub_100309144(v201, v106 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, _s23QueueSnapshotIdentifierOMa);
            v240 = v106;
            swift_endAccess();
            sub_10030AD48(v200, _s23QueueSnapshotIdentifierOMa);
          }
        }
      }

      if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
      {
        swift_beginAccess();
        a1 = v240;

        v111 = Set.init(minimumCapacity:)();
        aBlock = v111;
        v112 = *(a1 + 16);
        if (v112)
        {
          v221 = v8;
          v33 = (a1 + ((*(v214 + 80) + 32) & ~*(v214 + 80)));
          v113 = *(v214 + 72);
          v114 = v205;
          do
          {
            sub_1003090DC(v33, v114, _s23QueueSnapshotIdentifierOMa);
            sub_1003B40A4(v7, v114);
            sub_10030AD48(v7, _s23QueueSnapshotIdentifierOMa);
            v33 += v113;
            --v112;
          }

          while (v112);

          v115 = aBlock;
          v8 = v221;
        }

        else
        {
          v116 = v111;

          v115 = v116;
        }

        v117 = v115[2];

        if (v117 != v240[2])
        {
          if (qword_10117F938 != -1)
          {
            swift_once();
          }

          v118 = type metadata accessor for Logger();
          sub_1000060E4(v118, qword_1012190C8);
          v119 = v24;
          v120 = Logger.logObject.getter();
          v121 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v120, v121))
          {
            v122 = swift_slowAlloc();
            v123 = swift_slowAlloc();
            *v122 = v184;
            *(v122 + 4) = v119;
            *v123 = v60;
            v124 = v119;
            _os_log_impl(&_mh_execute_header, v120, v121, "[NowPlayingQueueViewController] Found duplicates in section %@, we're about to crash 😭", v122, 0xCu);
            sub_1000095E8(v123, &unk_101183D70);
          }

          v125 = Logger.logObject.getter();
          v126 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            aBlock = v128;
            *v127 = v183;

            v129 = Array.description.getter();
            v131 = v130;

            v132 = sub_1000105AC(v129, v131, &aBlock);

            *(v127 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v125, v126, "[NowPlayingQueueViewController] Items: %s", v127, 0xCu);
            sub_10000959C(v128);
          }

          v133 = dispatch_semaphore_create(0);
          v221 = objc_opt_self();
          v134 = String._bridgeToObjectiveC()();
          v135 = String._bridgeToObjectiveC()();
          a1 = String._bridgeToObjectiveC()();
          sub_10010FC20(&qword_101181530);
          v136 = swift_allocObject();
          *(v136 + 16) = v211;
          v137 = [v217 tracklist];
          v138 = [v137 displayItems];

          *(v136 + 56) = sub_10010FC20(&qword_10118AC28);
          *(v136 + 32) = v138;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v140 = swift_allocObject();
          *(v140 + 16) = v133;
          v238 = sub_10030A0C8;
          v239 = v140;
          aBlock = _NSConcreteStackBlock;
          v235 = 1107296256;
          v236 = sub_10002BC98;
          v237 = &unk_1010A5908;
          v141 = _Block_copy(&aBlock);
          v7 = v239;
          v33 = v133;

          [v221 snapshotWithDomain:v188 type:v134 subType:v135 context:a1 triggerThresholdValues:0 events:isa completion:v141];
          _Block_release(v141);

          v142 = v203;
          static DispatchTime.distantFuture.getter();
          OS_dispatch_semaphore.wait(timeout:)();

          (*v189)(v142, v204);
        }
      }

      swift_beginAccess();
      LOBYTE(aBlock) = v220;

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      if (__OFADD__(v242, 1))
      {
        goto LABEL_97;
      }

      ++v242;
      a1 = 1;
      v221 = sub_10030A094;
      v218 = v8;
      v57 = v13;
      v55 = v231;
      if (v13 == v230)
      {

        v147 = 1;
        v148 = sub_10030A094;
        a1 = v185;
        v149 = v223;
        v150 = v199;
        v33 = v186;
        goto LABEL_106;
      }
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
    if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
    {

      v79 = v230;
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v79 = v230;
      if ((v80 & 1) == 0)
      {

        goto LABEL_40;
      }
    }

    v81 = [v228 tracklist];
    v82 = [v81 displayItems];

    v8 = [v82 numberOfItemsInSection:v242];
    if (v8 >= 1)
    {
      v243 = 1;
    }

LABEL_40:
    v55 = v231;
    if (__OFADD__(v242, 1))
    {
      goto LABEL_94;
    }

    ++v242;
    ++v57;
    v83 = v13 == v79;
    v13 = v225;
  }

  while (!v83);

  v150 = v199;
  v33 = v186;
  if (a1)
  {
    v147 = 1;
    a1 = v185;
    v149 = v223;
    v148 = v221;
    goto LABEL_106;
  }

  a1 = v185;
LABEL_102:
  v151 = v223;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_10109A2D8);
  sub_1002F3850(v228, &v244, v222, &v243, v13);
  v152 = v214;
  if ((*(v214 + 48))(v13, 1, v216) == 1)
  {
    sub_1000095E8(v13, &unk_10118AAF0);
    v147 = 0;
  }

  else
  {
    v153 = v197;
    sub_100309144(v13, v197, _s23QueueSnapshotIdentifierOMa);
    sub_10010FC20(&qword_10118AC10);
    v154 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v155 = swift_allocObject();
    *(v155 + 16) = xmmword_100EBC6B0;
    sub_1003090DC(v153, v155 + v154, _s23QueueSnapshotIdentifierOMa);
    LOBYTE(aBlock) = 6;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_10030AD48(v153, _s23QueueSnapshotIdentifierOMa);
    v147 = 1;
  }

  v149 = v151;
  v148 = v221;
LABEL_106:
  LOBYTE(aBlock) = 2;
  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v215);
  if (result)
  {
    v156 = type metadata accessor for TaskPriority();
    (*(*(v156 - 8) + 56))(v150, 1, 1, v156);
    type metadata accessor for MainActor();
    v157 = v228;
    v158 = v222;
    v159 = static MainActor.shared.getter();
    v160 = swift_allocObject();
    *(v160 + 16) = v159;
    *(v160 + 24) = &protocol witness table for MainActor;
    *(v160 + 32) = v157;
    *(v160 + 40) = v158;
    v149 = v223;
    *(v160 + 48) = v147;
    sub_1001F4CB8(0, 0, v150, &unk_100EC6568, v160);
  }

  v161 = *&v222[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v161)
  {
    goto LABEL_126;
  }

  v162 = v161;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  LOBYTE(aBlock) = 3;
  v163 = v224;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if (v164 & 1) != 0 || (LOBYTE(aBlock) = 3, v165 = NSDiffableDataSourceSnapshot.indexOfSection(_:)(), (v166))
  {
    v146 = v208;
    (*(v208 + 8))(v33, v163);

    goto LABEL_112;
  }

  v233 = v165;
  LOBYTE(aBlock) = 3;
  v168 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  v169 = *(v168 + 16);
  if (!v169)
  {
    v146 = v208;
    (*(v208 + 8))(v33, v163);

    v149 = v223;
    goto LABEL_112;
  }

  v170 = *(v214 + 80);
  sub_1003090DC(v168 + ((v170 + 32) & ~v170) + *(v214 + 72) * (v169 - 1), v198, _s23QueueSnapshotIdentifierOMa);

  LOBYTE(aBlock) = 3;
  v171 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  LOBYTE(aBlock) = 3;
  v172 = NSDiffableDataSourceSnapshot.numberOfItems(inSection:)();
  result = v172 - 1;
  if (__OFSUB__(v172, 1))
  {
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v146 = v208;
  if ((result & 0x8000000000000000) == 0 && (v171 == 1 || v172 == 1) && v171 != v172)
  {
    v173 = v195;
    IndexPath.init(item:section:)();
    v174 = type metadata accessor for TaskPriority();
    (*(*(v174 - 8) + 56))(v150, 1, 1, v174);
    v186 = v33;
    v221 = v148;
    v175 = v193;
    (*(v193 + 16))(v194, v173, v196);
    sub_1003090DC(v198, v213, _s23QueueSnapshotIdentifierOMa);
    type metadata accessor for MainActor();
    v233 = v222;
    v176 = static MainActor.shared.getter();
    v177 = (*(v175 + 80) + 40) & ~*(v175 + 80);
    v178 = a1;
    v179 = (v192 + v177 + 7) & 0xFFFFFFFFFFFFFFF8;
    v180 = (v170 + v179 + 8) & ~v170;
    v181 = swift_allocObject();
    *(v181 + 2) = v176;
    *(v181 + 3) = &protocol witness table for MainActor;
    v146 = v208;
    *(v181 + 4) = v233;
    v182 = v196;
    (*(v175 + 32))(&v181[v177], v194, v196);
    *&v181[v179] = v171;
    a1 = v178;
    sub_100309144(v213, &v181[v180], _s23QueueSnapshotIdentifierOMa);
    sub_1001F4CB8(0, 0, v199, &unk_100EC6558, v181);

    (*(v175 + 8))(v195, v182);
    v148 = v221;
    sub_10030AD48(v198, _s23QueueSnapshotIdentifierOMa);
    (*(v146 + 8))(v186, v224);
  }

  else
  {

    sub_10030AD48(v198, _s23QueueSnapshotIdentifierOMa);
    (*(v146 + 8))(v33, v224);
  }

  v149 = v223;
LABEL_112:
  v145 = v224;
LABEL_113:
  v167 = v206;
  (*(v146 + 32))(a1, v149, v145);
  sub_100020438(v167);
  return sub_100020438(v148);
}

id sub_1002F35EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  v7 = _s23QueueSnapshotIdentifierOMa(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v20 - v12;
  IndexPath.init(item:section:)();
  result = [a4 results];
  if (result)
  {
    *&v13[*(sub_10010FC20(&qword_10118AB18) + 48)] = result;
    sub_10010FC20(&qword_10118AB10);
    swift_storeEnumTagMultiPayload();
    sub_10010FC20(&qword_10118AB00);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1003090DC(v13, v11, _s23QueueSnapshotIdentifierOMa);
    v15 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_100499770(0, v15[2] + 1, 1, v15);
      *a5 = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      *a5 = sub_100499770(v17 > 1, v18 + 1, 1, v15);
    }

    sub_10030AD48(v13, _s23QueueSnapshotIdentifierOMa);
    v19 = *a5;
    v19[2] = v18 + 1;
    return sub_100309144(v11, v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, _s23QueueSnapshotIdentifierOMa);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F3850@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X3>, void *a5@<X8>)
{
  v53 = a5;
  v9 = sub_10010FC20(&unk_10118AAF0);
  v10 = __chkstk_darwin(v9 - 8);
  v51 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v10);
  v14 = (&v51 - v13);
  __chkstk_darwin(v12);
  v16 = (&v51 - v15);
  v17 = [a1 tracklist];
  v18 = [v17 playingItemGlobalIndex];

  swift_beginAccess();
  v19 = &v18[*a2];
  if (__OFADD__(v18, *a2))
  {
    __break(1u);
    goto LABEL_27;
  }

  v52 = a4;
  a4 = &selRef_trackNumber;
  v20 = [a1 tracklist];
  v18 = [v20 globalItemCount];

  v21 = v18 - v19;
  if (__OFSUB__(v18, v19))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = (v21 - 1);
  if (__OFSUB__(v21, 1))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  sub_1002F3E6C(a3, v16);
  v19 = &selRef_trackNumber;
  v22 = [a1 tracklist];
  v23 = [v22 repeatType];

  if (v23 == 2)
  {
    v24 = [a1 tracklist];
    v25 = [v24 globalItemCount];

    if (v25)
    {
      v26 = [a1 tracklist];
      v27 = [v26 globalItemCount];

      sub_1000095E8(v16, &unk_10118AAF0);
      v28 = v53;
      *v53 = v27;
      v29 = _s23QueueSnapshotIdentifierOMa(0);
LABEL_15:
      swift_storeEnumTagMultiPayload();
      return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    }

    sub_10003D17C(v16, v14, &unk_10118AAF0);
    v44 = _s23QueueSnapshotIdentifierOMa(0);
    v45 = *(v44 - 8);
    if ((*(v45 + 48))(v14, 1, v44) == 1)
    {
      v42 = v14;
      goto LABEL_18;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10030AD48(v14, _s23QueueSnapshotIdentifierOMa);
      goto LABEL_19;
    }

    v47 = *v14;
    v48 = v53;
    *v53 = v47;
    swift_storeEnumTagMultiPayload();
    return (*(v45 + 56))(v48, 0, 1, v44);
  }

  swift_beginAccess();
  a4 = &v18[*a2];
  if (!__OFADD__(*a2, v18))
  {
    if (qword_10117F5F8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_9:
  v30 = (*(*qword_101218AC8 + 736))();
  v32 = v31;
  Player.NowPlayingConfiguration.tracklistRange.getter(v30, v31, v33);
  v35 = v34;

  if (v35 >= a4)
  {
    goto LABEL_13;
  }

  v36 = [a1 v19[2]];
  v37 = [v36 playingItemGlobalIndex];

  if (v37 || (v38 = v52, swift_beginAccess(), *v38 != 1))
  {
    sub_1000095E8(v16, &unk_10118AAF0);
    v28 = v53;
    *v53 = v18;
    v29 = _s23QueueSnapshotIdentifierOMa(0);
    goto LABEL_15;
  }

  v39 = v16;
  v16 = v51;
  sub_10003D17C(v39, v51, &unk_10118AAF0);
  v40 = _s23QueueSnapshotIdentifierOMa(0);
  v41 = *(v40 - 8);
  if ((*(v41 + 48))(v16, 1, v40) == 1)
  {
LABEL_13:
    v42 = v16;
LABEL_18:
    sub_1000095E8(v42, &unk_10118AAF0);
LABEL_19:
    v46 = _s23QueueSnapshotIdentifierOMa(0);
    return (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_10030AD48(v16, _s23QueueSnapshotIdentifierOMa);
    goto LABEL_19;
  }

  v49 = *v16;
  v50 = v53;
  *v53 = v49;
  swift_storeEnumTagMultiPayload();
  return (*(v41 + 56))(v50, 0, 1, v40);
}

uint64_t sub_1002F3E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118AB38);
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = *(a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v9)
  {
    __break(1u);
    return result;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v20[15] = 3;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if ((v11 & 1) == 0)
  {
    v20[12] = 3;
    goto LABEL_6;
  }

  v20[14] = 2;
  NSDiffableDataSourceSnapshot.indexOfSection(_:)();
  if ((v12 & 1) == 0)
  {
    v20[13] = 2;
LABEL_6:
    v13 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v14 - 1;
      v16 = v13;
      v17 = _s23QueueSnapshotIdentifierOMa(0);
      v18 = *(v17 - 8);
      sub_1003090DC(v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v15, a2, _s23QueueSnapshotIdentifierOMa);

      (*(v5 + 8))(v8, v4);
      return (*(v18 + 56))(a2, 0, 1, v17);
    }
  }

  (*(v5 + 8))(v8, v4);
  v19 = _s23QueueSnapshotIdentifierOMa(0);
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

uint64_t sub_1002F40E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void **a6, void *a7)
{
  v10 = _s23QueueSnapshotIdentifierOMa(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v17 = *(sub_10010FC20(&qword_10118AB08) + 48);
  IndexPath.init(item:section:)();
  *&v16[v17] = a5;
  swift_storeEnumTagMultiPayload();
  sub_1003090DC(v16, v14, _s23QueueSnapshotIdentifierOMa);
  swift_beginAccess();
  v18 = *a6;
  v19 = a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a6 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_100499770(0, v18[2] + 1, 1, v18);
    *a6 = v18;
  }

  v22 = v18[2];
  v21 = v18[3];
  if (v22 >= v21 >> 1)
  {
    v18 = sub_100499770(v21 > 1, v22 + 1, 1, v18);
    *a6 = v18;
  }

  v18[2] = v22 + 1;
  sub_100309144(v14, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v22, _s23QueueSnapshotIdentifierOMa);
  swift_endAccess();
  sub_10030AD48(v16, _s23QueueSnapshotIdentifierOMa);
  result = swift_beginAccess();
  if (__OFADD__(*a7, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a7;
  }

  return result;
}

void sub_1002F4338(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_1002F439C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 72) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = type metadata accessor for IndexPath();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F44A0, v9, v8);
}

uint64_t sub_1002F44A0()
{
  v1 = *(v0 + 16);

  v2 = [v1 tracklist];
  v3 = [v2 playingItemIndexPath];

  if (!v3)
  {
LABEL_10:
    if ((*(v0 + 72) & 1) == 0)
    {
LABEL_15:
      v26 = [*(v0 + 16) tracklist];
      v27 = [v26 repeatType];

      v21 = v27 == 0;
      goto LABEL_16;
    }

LABEL_11:
    v21 = 0;
LABEL_16:
    v28 = *(v0 + 24);
    v29 = *(v28 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState);
    *(v28 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) = v21;
    sub_1002DE24C(v29);
    goto LABEL_17;
  }

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v7 + 32))(v4, v5, v6);
  v9 = [v8 tracklist];
  v10 = [v9 items];

  v11 = [v10 sectionAtIndex:IndexPath.section.getter()];
  v12 = [v11 metadataObject];

  if (!v12 || (v13 = [v12 flattenedGenericObject], v12, !v13) || (v14 = objc_msgSend(v13, "anyObject"), v13, !v14))
  {
LABEL_9:
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
    goto LABEL_10;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_9;
  }

  v16 = v15;
  v17 = [*(v0 + 16) tracklist];
  v18 = [v17 items];

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v20 = [v18 itemAtIndexPath:isa];

  LOBYTE(isa) = [v20 isAutoPlay];
  if (isa)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
    goto LABEL_14;
  }

  v22 = [v16 type];
  v23 = *(v0 + 56);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);
  if (v22 == 4)
  {
    (*(v25 + 8))(*(v0 + 56), *(v0 + 32));
LABEL_14:

    if ((*(v0 + 72) & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  v32 = *(v0 + 24);
  v33 = *(v32 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState);
  *(v32 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState) = 0;
  sub_1002DE24C(v33);

  (*(v25 + 8))(v23, v24);
LABEL_17:

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1002F481C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_10010FC20(&unk_10118ABC0);
  v7[6] = swift_task_alloc();
  v8 = type metadata accessor for UICellAccessory.ReorderOptions();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v9 = type metadata accessor for UICellAccessory.DisplayedState();
  v7[10] = v9;
  v7[11] = *(v9 - 8);
  v7[12] = swift_task_alloc();
  v7[13] = _s23QueueSnapshotIdentifierOMa(0);
  v7[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[15] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F49D8, v11, v10);
}

uint64_t sub_1002F49D8()
{

  v1 = sub_1002DCC7C();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [v1 cellForItemAtIndexPath:isa];

  if (v3)
  {
    type metadata accessor for NowPlayingQueueCell();
    if (!swift_dynamicCastClass())
    {
LABEL_13:

      goto LABEL_14;
    }

    if (v0[4] >= 2)
    {
      v4 = sub_100432DFC();
      if (v4)
      {
        v5 = v4;
        sub_1003090DC(v0[5], v0[14], _s23QueueSnapshotIdentifierOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v7 = v0[14];
        if (EnumCaseMultiPayload == 1)
        {
          v8 = *(v7 + *(sub_10010FC20(&qword_10118AB08) + 48));
          v9 = type metadata accessor for IndexPath();
          (*(*(v9 - 8) + 8))(v7, v9);
          v10 = [v8 tracklist];
          v11 = [v10 reorderCommand];

          if (v11)
          {
            v12 = [v11 canMoveItem:v5];
            swift_unknownObjectRelease();
            if (v12)
            {
              v13 = v0[11];
              v14 = v0[12];
              v24 = v14;
              v15 = v0[10];
              v25 = v15;
              v26 = v13;
              v27 = v0[9];
              v28 = v0[8];
              v29 = v0[7];
              v16 = v0[6];
              sub_10010FC20(&unk_101184740);
              type metadata accessor for UICellAccessory();
              *(swift_allocObject() + 16) = xmmword_100EBC6B0;
              (*(v13 + 104))(v14, enum case for UICellAccessory.DisplayedState.always(_:), v15);
              *v16 = 0x403C000000000000;
              v17 = enum case for UICellAccessory.LayoutDimension.custom(_:);
              v18 = type metadata accessor for UICellAccessory.LayoutDimension();
              v19 = *(v18 - 8);
              (*(v19 + 104))(v16, v17, v18);
              (*(v19 + 56))(v16, 0, 1, v18);
              v20 = v3;
              UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
              static UICellAccessory.reorder(displayed:options:)();
              (*(v28 + 8))(v27, v29);
              (*(v26 + 8))(v24, v25);
              UICollectionViewListCell.accessories.setter();

LABEL_12:
              goto LABEL_13;
            }
          }
        }

        else
        {

          sub_10030AD48(v7, _s23QueueSnapshotIdentifierOMa);
        }
      }
    }

    v21 = v3;
    UICollectionViewListCell.accessories.setter();
    goto LABEL_12;
  }

LABEL_14:

  v22 = v0[1];

  return v22();
}

uint64_t sub_1002F4E14(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v13 = *v12;
  *v11 = *v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v13)
  {
    swift_beginAccess();
    v16 = *(_s13UpdateContextVMa(0) + 28);
    sub_100030444(a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v12 + v16);
    *(v12 + v16) = 0x8000000000000000;
    sub_1006C5FE0(a1 & 0x1FF, a2, a3, a1, isUniquelyReferenced_nonNull_native);
    *(v12 + v16) = v19;
    result = swift_endAccess();
    if ((*(v12 + 8) & 1) == 0)
    {
      return sub_1002F4FE0();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F4FE0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v1 - 8);
  v73 = v1;
  __chkstk_darwin(v1);
  v70 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for DispatchQoS();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_10118ABE0);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v60 - v7;
  v75 = sub_10010FC20(&qword_10118AB38);
  v9 = *(v75 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v75);
  v67 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v60 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = v0;
  v17 = &v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext];
  swift_beginAccess();
  v18 = *v17;
  *v16 = *v17;
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v17[8] = 1;
  result = _s13UpdateContextVMa(0);
  v21 = *&v17[*(result + 28)];
  v22 = v76;
  if (!*(v21 + 16))
  {
    goto LABEL_13;
  }

  v23 = result;
  result = sub_1006CCC5C(1);
  if ((v24 & 1) == 0)
  {
    v30 = *&v17[*(v23 + 28)];
    if (*(v30 + 16))
    {
      result = sub_1006CCC5C(0);
      if (v31)
      {
        v32 = (*(v30 + 56) + 24 * result);
        v63 = *v32;
        v26 = v32[1];
        v27 = *(v32 + 1);
        v28 = *(v32 + 2);
        swift_beginAccess();
        sub_100030444(v27);
        sub_100030444(v27);
        v29 = 0;
        goto LABEL_11;
      }

      v33 = *&v17[*(v23 + 28)];
      if (*(v33 + 16))
      {
        result = sub_1006CCC5C(2);
        if (v34)
        {
          v35 = (*(v33 + 56) + 24 * result);
          v63 = *v35;
          v26 = v35[1];
          v27 = *(v35 + 1);
          v28 = *(v35 + 2);
          swift_beginAccess();
          sub_100030444(v27);
          sub_100030444(v27);
          v29 = 2;
          goto LABEL_11;
        }
      }
    }

LABEL_13:
    v17[8] = 0;
    return result;
  }

  v25 = (*(v21 + 56) + 24 * result);
  v63 = *v25;
  v26 = v25[1];
  v27 = *(v25 + 1);
  v28 = *(v25 + 2);
  swift_beginAccess();
  sub_100030444(v27);
  sub_100030444(v27);
  v29 = 1;
LABEL_11:
  sub_1004077DC(0, 1, 0, v29);
  swift_endAccess();
  v60 = swift_allocObject();
  *(v60 + 16) = v22;
  v36 = v22[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_didScrollToUpNext] & v26;
  v61 = swift_allocObject();
  *(v61 + 16) = v36 & 1;
  v65 = v27;
  v64 = v28;
  v62 = v26;
  v37 = v22;
  if (v27)
  {
    v38 = sub_100030444(v27);
    v27(v38);
    sub_100020438(v27);
  }

  sub_1000089F8(&v17[*(v23 + 24)], v8, &qword_10118ABE0);
  v39 = v9[6];
  v40 = v75;
  if (v39(v8, 1, v75) == 1)
  {
    v41 = v9;
    v42 = v74;
    sub_1002F1434(v74);
    v40 = v75;
    if (v39(v8, 1, v75) != 1)
    {
      sub_1000095E8(v8, &qword_10118ABE0);
    }
  }

  else
  {
    v41 = v9;
    v43 = v9[4];
    v42 = v74;
    v43(v74, v8, v40);
  }

  v44 = v66;
  (v41[7])(v66, 1, 1, v40);
  swift_beginAccess();
  sub_10006B010(v44, &v17[*(v23 + 24)], &qword_10118ABE0);
  swift_endAccess();
  sub_100009F78(0, &qword_101182960);
  v45 = v40;
  v66 = static OS_dispatch_queue.main.getter();
  v46 = v67;
  (v41[2])(v67, v42, v40);
  v47 = (*(v41 + 80) + 56) & ~*(v41 + 80);
  v48 = swift_allocObject();
  v49 = v76;
  v50 = v61;
  *(v48 + 16) = v76;
  *(v48 + 24) = v50;
  *(v48 + 32) = v63;
  *(v48 + 33) = v62;
  v51 = v64;
  *(v48 + 40) = v65;
  *(v48 + 48) = v51;
  (v41[4])(v48 + v47, v46, v45);
  v52 = (v48 + ((v10 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));
  v53 = v60;
  *v52 = sub_100309D2C;
  v52[1] = v53;
  aBlock[4] = sub_100309D34;
  aBlock[5] = v48;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A5750;
  v54 = _Block_copy(aBlock);
  v55 = v49;

  v56 = v68;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  v57 = v70;
  v58 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v59 = v66;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v54);

  sub_100020438(v65);

  (*(v72 + 8))(v57, v58);
  (*(v69 + 8))(v56, v71);
  (v41[1])(v74, v75);
}

uint64_t sub_1002F5978(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v5 = *(v15 - 8);
  __chkstk_darwin(v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  v9 = *&a1[v8];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  aBlock[4] = sub_100309DFC;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_1010A57F0;
  v11 = _Block_copy(aBlock);
  v12 = v9;
  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100309644(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v16 + 8))(v4, v2);
  (*(v5 + 8))(v7, v15);
}

uint64_t sub_1002F5C6C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
  swift_beginAccess();
  *(v1 + 8) = 0;
  result = _s13UpdateContextVMa(0);
  if (*(*(v1 + *(result + 28)) + 16))
  {
    return sub_1002F4FE0();
  }

  return result;
}

void sub_1002F5CD4(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v86 = a7;
  v87 = a8;
  v88 = a2;
  v89 = a6;
  v90 = sub_10010FC20(&qword_10118AB38);
  v10 = *(v90 - 8);
  __chkstk_darwin(v90);
  v12 = &v85 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v85 - v18;
  v20 = [a1 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_37;
  }

  v21 = v20;
  v22 = a3;
  v23 = [v20 window];

  if (v23)
  {
    v25 = [v23 windowScene];

    if (v25)
    {
      v26 = [v25 activationState];

      if (v26 == 2)
      {
        v27 = v88;
        v24 = swift_beginAccess();
        *(v27 + 16) = 0;
      }
    }
  }

  if (v22 == 1)
  {
    v92[0] = 2;
    v28 = sub_100309CC0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v28))
    {
      v29 = v90;
      (*(v10 + 16))(v19, v89, v90);
      (*(v10 + 56))(v19, 0, 1, v29);
      sub_1002E802C(v19);
      v30 = sub_1000095E8(v19, &qword_10118ABE0);
    }

    else
    {
      v31 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
      if (!v31)
      {
LABEL_40:
        __break(1u);
        return;
      }

      v32 = v31;
      sub_1004357B8(3u);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        v85 = sub_1002DCC7C(v30);
        v35 = _UICollectionViewListLayoutElementKindSectionHeader;
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v14 + 8))(v16, v13);
        v37 = v85;
        v38 = [v85 supplementaryViewForElementKind:v35 atIndexPath:isa];

        if (v38)
        {
          type metadata accessor for NowPlayingQueueHeaderView();
          v39 = swift_dynamicCastClass();
          if (v39)
          {
            sub_1002EB08C(v39);
          }
        }
      }
    }

    v40 = sub_1002DCC7C(v30);
    _s22AutoPlayBackgroundViewCMa();
    static UICollectionReusableView.reuseIdentifier.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [v40 _visibleDecorationViewsOfKind:v41];

    if (v42)
    {
      v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v43 + 16))
      {
        sub_10000DD18(v43 + 32, v92);

        v24 = swift_dynamicCast();
        if (v24)
        {
          v44 = v91;
          sub_1002EB3C8(v91);
        }
      }

      else
      {
      }

      goto LABEL_20;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_20:
  v45 = sub_1002DCC7C(v24);
  [v45 contentSize];
  v47 = v46;

  sub_1002E6958(1, v48, v47);
  if (v22)
  {
    v49 = 0;
  }

  else
  {
    v49 = a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection] == 3;
  }

  v50 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView;
  v51 = [*&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController____lazy_storage___collectionView] collectionViewLayout];
  [v51 collectionViewContentSize];
  v53 = v52;

  [*&a1[v50] contentOffset];
  v55 = v54;
  v57 = v56;
  (*(v10 + 16))(v12, v89, v90);
  if (v49)
  {
    v58 = v88;
    swift_beginAccess();
    *(v58 + 16) = 0;
    v59 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
    if (v59)
    {
      v60 = swift_allocObject();
      v61 = v86;
      v62 = v87;
      v60[2] = a1;
      v60[3] = v61;
      v60[4] = v62;
      v63 = v59;
      v64 = a1;

      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      (*(v10 + 8))(v12, v90);
      v65 = [*&a1[v50] collectionViewLayout];
      [v65 collectionViewContentSize];
      v67 = v66;

      v68 = v67 - v53;
      *&v64[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY] = v68 + *&v64[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
      sub_1002DD920(v69);
      [*&a1[v50] setContentOffset:{v55, v57 + v68}];
      return;
    }

    goto LABEL_38;
  }

  v70 = *&a1[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v70)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  swift_beginAccess();
  v71 = swift_allocObject();
  v72 = v86;
  v73 = v87;
  v71[2] = a1;
  v71[3] = v72;
  v71[4] = v73;
  v74 = a1;

  v75 = v70;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  (*(v10 + 8))(v12, v90);
  v76 = [*&a1[v50] collectionViewLayout];
  [v76 collectionViewContentSize];
  v78 = v77;

  v79 = v78 + *&v74[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset];
  [*&a1[v50] safeAreaInsets];
  v81 = v79 + v80;
  [*&a1[v50] frame];
  v82 = v81 - CGRectGetHeight(v93);
  if (v82 >= 0.0)
  {
    if (v82 >= v57)
    {
      return;
    }
  }

  else
  {
    v82 = 0.0;
    if (v57 <= 0.0)
    {
      return;
    }
  }

  if (vabdd_f64(v57, v82) >= 1.0)
  {
    v83 = *&v74[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY];
    v84 = v57 - (v57 - v82);
    if (v83 <= v84)
    {
      v83 = v84;
    }

    [*&a1[v50] setContentOffset:1 animated:{0.0, v83}];
  }
}

uint64_t sub_1002F64D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1002DCC7C(a1);
  [v3 contentSize];
  v5 = v4;
  v7 = v6;

  sub_1002E6B90(v5, v7);
  return a2();
}

char *sub_1002F6544(uint64_t a1, void *a2)
{
  v3 = v2;
  v46 = a2;
  v5 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_10010FC20(&qword_10118AB38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - v10;
  type metadata accessor for NowPlayingQueueCell();
  static UICollectionReusableView.reuseIdentifier.getter();
  v12 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)();

  v47[0]._countAndFlagsBits = 0;
  v47[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v47[0]._countAndFlagsBits = 0xD00000000000001ELL;
  v47[0]._object = 0x8000000100E45BD0;
  v14 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  v16 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v17 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  result = (*(v9 + 8))(v11, v8);
  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v16 >= *(v17 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v18 = *(v17 + v16 + 32);

  if (v18 > 2)
  {
    if (v18 == 3)
    {
      v19 = 0xE600000000000000;
      v20 = 0x7478654E7075;
    }

    else
    {
      v19 = 0xE800000000000000;
      if (v18 == 4)
      {
        v20 = 0x79616C506F747561;
      }

      else
      {
        v20 = 0x736C6F72746E6F63;
      }
    }
  }

  else if (v18)
  {
    if (v18 == 1)
    {
      v19 = 0xE700000000000000;
      v20 = 0x676E6979616C70;
    }

    else
    {
      v19 = 0xE500000000000000;
      v20 = 0x6575657571;
    }
  }

  else
  {
    v19 = 0xE700000000000000;
    v20 = 0x79726F74736968;
  }

  v21 = v19;
  String.append(_:)(*&v20);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  v23 = AccessibilityIdentifier.init(name:)(v47[0]);
  v24 = UIView.withAccessibilityIdentifier(_:)(v23, *(&v23 + 1));

  v25 = v24;
  result = [v3 view];
  if (!result)
  {
    goto LABEL_30;
  }

  v26 = result;
  [result layoutMargins];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [v25 setLayoutMargins:{v28, v30, v32, v34}];
  sub_1002E3428(a1, v46);
  v36 = v35;
  v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled] = v35 & 1;
  v37 = *&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView];
  v38 = 1.0;
  if (v36)
  {
    UIInterfaceGetContentDisabledAlpha();
  }

  [v37 setAlpha:{v38, v46}];

  type metadata accessor for Artwork.Caching.Reference();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    swift_unknownObjectRetain();
  }

  *&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference] = v39;

  *(*&v25[OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView] + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference) = v39;

  v40 = v25;
  static UIBackgroundConfiguration.clear()();
  v41 = type metadata accessor for UIBackgroundConfiguration();
  (*(*(v41 - 8) + 56))(v7, 0, 1, v41);
  UICollectionViewCell.backgroundConfiguration.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  UICollectionViewCell.configurationUpdateHandler.setter();

  objc_opt_self();
  v42 = swift_dynamicCastObjCClass();
  if (v42)
  {
    v43 = v42;
    v44 = &selRef_configureCell_forSong_;
LABEL_26:
    [v3 *v44];
    sub_1004F26A8(&v47[0]._countAndFlagsBits);

    sub_1000095E8(v47, &qword_1011A3DD0);
    return v40;
  }

  objc_opt_self();
  v45 = swift_dynamicCastObjCClass();
  if (v45)
  {
    v43 = v45;
    v44 = &selRef_configureCell_forTVEpisode_;
    goto LABEL_26;
  }

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v43 = result;
    v44 = &selRef_configureCell_forMovie_;
    goto LABEL_26;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1002F6B34(void *a1)
{
  v2 = sub_10010FC20(&qword_1011888C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIBackgroundConfiguration.clear()();
  if (UICellConfigurationState.isFocused.getter() & 1) != 0 || (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isExpanded.getter())
  {
    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.05];

    UIBackgroundConfiguration.backgroundColor.setter();
  }

  else if (UICellConfigurationState.isReordering.getter())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1002DDE0C();
    }

    UIBackgroundConfiguration.customView.setter();
    v14 = [a1 layer];
    [v14 setMasksToBounds:0];
  }

  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  UICollectionViewCell.backgroundConfiguration.setter();
  return (*(v6 + 8))(v8, v5);
}

void sub_1002F6DA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v98 = a4;
  v8 = sub_10010FC20(&qword_10118ABE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v96 - v9;
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v13 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10010FC20(&qword_10118AB38);
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v17 = &v96 - v16;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v18 == a2)
  {

LABEL_15:
    _s25NowPlayingQueueFooterViewCMa();
    v35 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
    v36 = [v5 view];
    if (!v36)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v37 = v36;
    [v36 directionalLayoutMargins];

    [v35 directionalLayoutMargins];
    [v35 setDirectionalLayoutMargins:?];
    v38 = v5;
    v39 = [v5 traitCollection];
    v40 = sub_1001D1C24();
    sub_1001D1C78();
    v98 = v40;
    UITraitCollection.subscript.getter();

    v97 = 0x746361706D6F63;
    if (v103 && v103 != 1)
    {
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
LABEL_22:

        v42 = IndexPath.section.getter();
        v43 = sub_1002DCC7C();
        v44 = [v43 numberOfSections];

        if (__OFSUB__(v44, 1))
        {
          __break(1u);
        }

        else
        {
          if (v42 == v44 - 1)
          {
            v45 = 1;
            v44 = v38;
          }

          else
          {
            v44 = v38;
            v46 = [v38 traitCollection];
            UITraitCollection.subscript.getter();
            if (sub_1005C3564(v102))
            {

              v45 = 0;
            }

            else
            {
              v47 = [v46 accessibilityContrast];

              v45 = v47 != 1;
            }
          }

          [*&v35[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController25NowPlayingQueueFooterView_separator] setHidden:v45];
          if (qword_10117F560 == -1)
          {
LABEL_29:
            v48 = *&qword_10118A8F0;
            v49 = sub_10043692C();
            [v49 setConstant:v48];

            v50 = *&v44[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
            if (!v50)
            {
LABEL_64:
              __break(1u);
              goto LABEL_65;
            }

            v51 = v50;
            v52 = IndexPath.safeSection.getter();
            dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
            v53 = v100;
            v54 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
            (*(v99 + 8))(v17, v53);
            if ((v52 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v52 < *(v54 + 16))
            {
              v55 = *(v54 + v52 + 32);

              if (!v55)
              {
                v57 = [v38 traitCollection];
                UITraitCollection.subscript.getter();

                if (v101)
                {
                  if (v101 != 1)
                  {

                    goto LABEL_33;
                  }

                  v97 = 0x72616C75676572;
                }

                v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v58 & 1) == 0)
                {
                  v56 = sub_1004369F4();
                  [v56 setConstant:-v48];
                  goto LABEL_34;
                }
              }

LABEL_33:
              v56 = sub_1004369F4();
              [v56 setConstant:-0.0];
LABEL_34:

              return;
            }

            __break(1u);
LABEL_61:
            __break(1u);
            goto LABEL_62;
          }
        }

        swift_once();
        goto LABEL_29;
      }
    }

    [v35 directionalLayoutMargins];
    [v35 setDirectionalLayoutMargins:?];
    goto LABEL_22;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_15;
  }

  v96 = v13;
  v97 = v5;
  v21 = *&v5[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v21)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v22 = v10;
  v23 = v21;
  v24 = IndexPath.safeSection.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v25 = v100;
  v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v99 + 8))(v17, v25);
  if ((v24 & 0x8000000000000000) != 0)
  {
    goto LABEL_61;
  }

  if (v24 >= *(v26 + 16))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v27 = *(v26 + v24 + 32);

  if (v27 <= 2)
  {
    if (!v27)
    {
      type metadata accessor for NowPlayingHistoryHeaderView();
      static UICollectionReusableView.reuseIdentifier.getter();
      v63 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

      v64 = v63;
      v65 = [v97 view];
      if (v65)
      {
        v66 = v65;
        [v65 directionalLayoutMargins];

        [v64 directionalLayoutMargins];
        [v64 setDirectionalLayoutMargins:?];

        v31 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v32 = &v64[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
        v33 = *&v64[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
        v34 = sub_100309D14;
        goto LABEL_47;
      }

      goto LABEL_68;
    }

    if (v27 != 1)
    {
      v73 = v22;
      type metadata accessor for NowPlayingQueueHeaderView();
      static UICollectionReusableView.reuseIdentifier.getter();
      v74 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

      v75 = v74;
      v76 = v97;
      v77 = [v97 view];
      if (v77)
      {
        v78 = v77;
        [v77 directionalLayoutMargins];

        [v75 directionalLayoutMargins];
        [v75 setDirectionalLayoutMargins:?];
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v79 = String.init(localized:table:bundle:locale:comment:)();
        v80 = &v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v80 = v79;
        v80[1] = v81;

        sub_1005700F4();
        v82 = &v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v83 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v84 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
        v85 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
        v86 = *&v75[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
        *v82 = 0u;
        *(v82 + 1) = 0u;
        v87 = v82[32];
        v82[32] = -1;
        sub_100309C54(v83, v84, v85, v86, v87);
        sub_1005701F8();
        v88 = [v76 view];
        if (v88)
        {
          v89 = v88;
          [v88 directionalLayoutMargins];

          [v75 directionalLayoutMargins];
          [v75 setDirectionalLayoutMargins:?];

          (*(v99 + 56))(v73, 1, 1, v100);
          sub_1002E8394(v75, 2, v73);
          sub_1000095E8(v73, &qword_10118ABE0);
          return;
        }

        goto LABEL_72;
      }

      goto LABEL_70;
    }

    _s17PlayingHeaderViewCMa();
    v28 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
    v29 = [v97 view];
    if (v29)
    {
      v30 = v29;
      [v29 directionalLayoutMargins];

      [v28 directionalLayoutMargins];
      [v28 setDirectionalLayoutMargins:?];

      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = &v28[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
      v33 = *&v28[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController17PlayingHeaderView_didUpdateAttributes];
      v34 = sub_100309CB8;
LABEL_47:
      *v32 = v34;
      *(v32 + 1) = v31;

      sub_100020438(v33);

      return;
    }

    goto LABEL_66;
  }

  if (v27 != 3)
  {
    if (v27 != 4)
    {
      type metadata accessor for NowPlayingQueueControlsView();
      v90 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();
      [v90 setInsetsLayoutMarginsFromSafeArea:{0, v96}];
      v91 = [v97 view];
      if (v91)
      {
        v92 = v91;
        [v91 directionalLayoutMargins];

        [v90 directionalLayoutMargins];
        [v90 setDirectionalLayoutMargins:?];

        sub_1002E9520(v90);
        return;
      }

      goto LABEL_71;
    }

    type metadata accessor for NowPlayingAutoPlayHeaderView();
    static UICollectionReusableView.reuseIdentifier.getter();
    v59 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

    v60 = v59;
    v61 = [v97 view];
    if (v61)
    {
      v62 = v61;
      [v61 directionalLayoutMargins];

      [v60 directionalLayoutMargins];
      [v60 setDirectionalLayoutMargins:?];

      return;
    }

    goto LABEL_67;
  }

  v67 = v22;
  type metadata accessor for NowPlayingQueueHeaderView();
  static UICollectionReusableView.reuseIdentifier.getter();
  v68 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)();

  v69 = v68;
  v70 = [v97 view];
  if (!v70)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v71 = v70;
  [v70 directionalLayoutMargins];

  [v69 directionalLayoutMargins];
  [v69 setDirectionalLayoutMargins:?];

  v104 = 2;
  v72 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v72))
  {
    (*(v99 + 56))(v67, 1, 1, v100);
    sub_1002E8394(v69, 3, v67);
    sub_1000095E8(v67, &qword_10118ABE0);
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v93 = String.init(localized:table:bundle:locale:comment:)();
    v94 = &v69[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
    *v94 = v93;
    v94[1] = v95;

    sub_1005700F4();
    sub_1002EB08C(v69);
  }
}

void sub_1002F7C30()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v4 = String._bridgeToObjectiveC()();

    v5 = [objc_opt_self() alertControllerWithTitle:0 message:v4 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = v3;
    v8 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100309D1C;
    aBlock[5] = v6;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10027D328;
    aBlock[3] = &unk_1010A5660;
    v9 = _Block_copy(aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:2 handler:v9];
    _Block_release(v9);

    [v5 addAction:v11];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v10 actionWithTitle:v12 style:1 handler:0];

    [v5 addAction:v13];
    [v7 presentViewController:v5 animated:1 completion:0];
  }
}

void sub_1002F7FBC()
{
  v0 = [objc_allocWithZone(MPSectionedCollection) init];
  sub_1003070E4(v0);
}

void sub_1002F800C(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [a1 frame];
      MinY = CGRectGetMinY(v13);
      v7 = sub_1002DCC7C();
      [v7 contentOffset];
      v9 = v8;

      if (!(*&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62) && ([v5 isBeingPresented] & 1) == 0)
      {
        v10 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v10)
        {
          __break(1u);
          return;
        }

        v11 = *&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset];
        *&v10[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = MinY - v9;
        if (MinY - v9 != v11)
        {
          v12 = v10;
          sub_1001B6800();
        }
      }

      swift_unknownObjectRelease();
    }

    if (v3[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] == 1)
    {
      sub_1002E555C(0);
    }
  }
}

void sub_1002F815C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v144[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  if (a1 > 1u)
  {
    if (a1 - 2 >= 2)
    {
      if (a1 == 4)
      {
        v10 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView;
        v11 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView];
        if (v11)
        {
          v12 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_autoPlayHeaderSizingView];
        }

        else
        {
          type metadata accessor for NowPlayingAutoPlayHeaderView();
          v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v62 = *&v2[v10];
          *&v2[v10] = v61;
          v12 = v61;

          v63 = [v2 view];
          if (!v63)
          {
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          v64 = v63;
          [v63 addSubview:v12];

          v65 = sub_1002DCC7C([v12 setHidden:1]);
          [v65 frame];
          v67 = v66;
          v69 = v68;
          v71 = v70;
          v73 = v72;

          v148.origin.x = v67;
          v148.origin.y = v69;
          v148.size.width = v71;
          v148.size.height = v73;
          [v12 setFrame:{0.0, 0.0, CGRectGetWidth(v148), 100.0}];

          v11 = 0;
        }

        v74 = v11;
        v15 = v12;
        v75 = [v2 view];
        if (v75)
        {
          v76 = v75;
          [v75 layoutMargins];
          v78 = v77;
          v80 = v79;
          v82 = v81;
          v84 = v83;

          [v15 setLayoutMargins:{v78, v80, v82, v84}];
          [v15 layoutIfNeeded];

          v86 = sub_1002DCC7C(v85);
          [v86 frame];
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;

          v149.origin.x = v88;
          v149.origin.y = v90;
          v149.size.width = v92;
          v149.size.height = v94;
          [v15 systemLayoutSizeFittingSize:{CGRectGetWidth(v149), INFINITY}];

LABEL_49:
          return;
        }

LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (qword_10117F558 == -1)
      {
        return;
      }

LABEL_52:
      swift_once();
      return;
    }

LABEL_7:
    v13 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView;
    v14 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView];
    if (v14)
    {
      v15 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_headerSizingView];
    }

    else
    {
      type metadata accessor for NowPlayingQueueHeaderView();
      v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v17 = *&v2[v13];
      *&v2[v13] = v16;
      v15 = v16;

      v18 = [v2 view];
      if (!v18)
      {
        goto LABEL_55;
      }

      v19 = v18;
      [v18 addSubview:v15];

      v20 = sub_1002DCC7C([v15 setHidden:1]);
      [v20 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v147.origin.x = v22;
      v147.origin.y = v24;
      v147.size.width = v26;
      v147.size.height = v28;
      [v15 setFrame:{0.0, 0.0, CGRectGetWidth(v147), 100.0}];

      v14 = 0;
    }

    v29 = v14;
    v30 = [v2 view];
    if (v30)
    {
      v31 = v30;
      [v30 layoutMargins];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v15 setLayoutMargins:{v33, v35, v37, v39}];
      if (!a1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v51 = String.init(localized:table:bundle:locale:comment:)();
        v52 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v52 = v51;
        v52[1] = v53;

        sub_1005700F4();
        v54 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v55 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
        v56 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
        v57 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
        v58 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
        *v54 = 0u;
        *(v54 + 1) = 0u;
        v59 = v54[32];
        v54[32] = -1;
        sub_100309C54(v55, v56, v57, v58, v59);
        sub_1005701F8();
        [*&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton] setHidden:1];
        sub_10056FF60();
        v60 = sub_1002931A8();
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v60))
        {
          [*&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton] setHidden:1];
          sub_10056FF60();
        }

        goto LABEL_48;
      }

      if (a1 != 3)
      {
        if (a1 == 2)
        {
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          v40 = String.init(localized:table:bundle:locale:comment:)();
          v41 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
          *v41 = v40;
          v41[1] = v42;

          sub_1005700F4();
          v43 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v44 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v45 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v46 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v47 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          *v43 = 0u;
          *(v43 + 1) = 0u;
          v48 = v43[32];
          v43[32] = -1;
          sub_100309C54(v44, v45, v46, v47, v48);
          sub_1005701F8();
        }

        goto LABEL_48;
      }

      if (v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_needsEmptyState] != 1)
      {
LABEL_38:
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v97 = String.init(localized:table:bundle:locale:comment:)();
        v98 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
        *v98 = v97;
        v98[1] = v99;

        sub_1005700F4();
        v100 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse];
        if (v100)
        {
          v143 = v5;
          v101 = v100;
          v102 = [v101 tracklist];
          sub_1002E7140(v102, v145);

          v103 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v104 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v105 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v106 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v107 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          v108 = v146;
          v109 = v145[1];
          *v103 = v145[0];
          *(v103 + 1) = v109;
          v110 = v103[32];
          v103[32] = v108;
          sub_1000089F8(v145, v144, &qword_10118ABD8);
          v111 = v110;
          v112 = v101;
          sub_100309C54(v104, v105, v106, v107, v111);
          sub_1005701F8();
          sub_1000095E8(v145, &qword_10118ABD8);
          sub_1002E7A7C(v15, v101);
          v113 = *&v2[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
          if (!v113)
          {
LABEL_58:
            __break(1u);
            return;
          }

          v114 = v113;
          sub_1004357B8(3u);
          v116 = v115;

          v118 = v143;
          if ((v116 & 1) == 0)
          {
            v119 = sub_1002DCC7C(v117);
            v120 = _UICollectionViewListLayoutElementKindSectionHeader;
            IndexPath.init(item:section:)();
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v118 + 8))(v7, v4);
            v122 = [v119 supplementaryViewForElementKind:v120 atIndexPath:isa];

            if (v122)
            {
              type metadata accessor for NowPlayingQueueHeaderView();
              v123 = swift_dynamicCastClass();
              if (!v123)
              {

                goto LABEL_48;
              }

              v124 = v123;
              v125 = [*(v123 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton) titleLabel];
              if (v125)
              {
                v126 = v125;
                [v125 setPreferredMaxLayoutWidth:0.0];
              }

              v127 = *(v124 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);
              [v127 setPreferredMaxLayoutWidth:0.0];
            }
          }
        }

        else
        {
          v128 = &v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v129 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
          v130 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8];
          v131 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16];
          v132 = *&v15[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24];
          *v128 = 0u;
          *(v128 + 1) = 0u;
          v133 = v128[32];
          v128[32] = -1;
          sub_100309C54(v129, v130, v131, v132, v133);
          sub_1005701F8();
        }

LABEL_48:
        v134 = sub_1002DCC7C([v15 layoutIfNeeded]);
        [v134 frame];
        v136 = v135;
        v138 = v137;
        v140 = v139;
        v142 = v141;

        v150.origin.x = v136;
        v150.origin.y = v138;
        v150.size.width = v140;
        v150.size.height = v142;
        [v15 systemLayoutSizeFittingSize:{CGRectGetWidth(v150), INFINITY}];
        goto LABEL_49;
      }

      v50 = [v2 traitCollection];
      sub_1001D1C24();
      sub_1001D1C78();
      UITraitCollection.subscript.getter();

      if (LOBYTE(v145[0]))
      {
        v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v96)
        {

          return;
        }

        goto LABEL_38;
      }

LABEL_35:

      return;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

  v49 = [v1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  if (LOBYTE(v145[0]) && LOBYTE(v145[0]) != 1)
  {
    goto LABEL_35;
  }

  v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v95 & 1) == 0 && qword_10117F550 != -1)
  {
    goto LABEL_52;
  }
}

void sub_1002F8DC0()
{
  v1 = sub_10010FC20(&unk_10118AAF0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v23 - v3;
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_18;
  }

  v6 = v5;
  v7 = [v5 window];

  v8 = [v7 windowScene];
  if (!v8)
  {
    return;
  }

  v9 = *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v9)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v11 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {
    sub_1000095E8(v4, &unk_10118AAF0);
  }

  else
  {
    v12 = sub_1004329EC();
    sub_10030AD48(v4, _s23QueueSnapshotIdentifierOMa);
    if (v12)
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13 && (v14 = v13, (v15 = [v13 album]) != 0))
      {

        v16 = v12;
        v17 = sub_1004843F8();

        if ((v17 & 1) != 0 && (v18 = [v14 album]) != 0)
        {
          v19 = v18;
          v20 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
          MPModelObject.bestIdentifier(for:)(*v20, 0);
          v22 = v21;

          if (v22)
          {
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }
  }
}

void sub_1002F9024()
{
  v1 = sub_10010FC20(&unk_10118AAF0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v19 - v3;
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 window];

  if (!v7)
  {
    return;
  }

  v8 = [v7 windowScene];

  if (!v8)
  {
    return;
  }

  v9 = *&v0[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = v9;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v11 = _s23QueueSnapshotIdentifierOMa(0);
  if ((*(*(v11 - 8) + 48))(v4, 1, v11) == 1)
  {

    sub_1000095E8(v4, &unk_10118AAF0);
    return;
  }

  v12 = sub_1004329EC();
  sub_10030AD48(v4, _s23QueueSnapshotIdentifierOMa);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13 || (v14 = v13, (v15 = [v13 album]) == 0))
    {

      return;
    }

    v16 = v15;
    v17 = v12;
    v18 = sub_100483660(v16, v14, 0, v8);

    if (v18)
    {
      v18();

      sub_100020438(v18);
      return;
    }
  }
}

void sub_1002F9274(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v3);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v38[-v7 - 8];
  v9 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v11 = _s23QueueSnapshotIdentifierOMa(0);
    if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
    {
      sub_1000095E8(v8, &unk_10118AAF0);
LABEL_7:
      v18 = 1;
LABEL_19:
      v36 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v36 - 8) + 56))(a1, v18, 1, v36);
      return;
    }

    v12 = sub_1004329EC();
    sub_10030AD48(v8, _s23QueueSnapshotIdentifierOMa);
    if (!v12)
    {
      goto LABEL_7;
    }

    v13 = [objc_allocWithZone(MPModelLibraryRequest) init];
    v14 = [objc_opt_self() deviceMediaLibrary];
    [v13 setMediaLibrary:v14];

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v15 = objc_opt_self();
      v16 = v13;
      v17 = [v15 kindWithVariants:3];
LABEL_18:
      v28 = v17;
      [v13 setItemKind:v28];

      v29 = [objc_opt_self() emptyPropertySet];
      [v13 setItemProperties:v29];

      sub_10010FC20(&qword_101183990);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100EBC6C0;
      *(v30 + 32) = [v12 identifiers];
      sub_100009F78(0, &qword_101192200);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 setAllowedItemIdentifiers:isa];

      [v13 setFilteringOptions:{objc_msgSend(v13, "filteringOptions") | 4}];
      v32 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v32 setRequest:v13];

      v33 = [objc_allocWithZone(MPCPlaybackIntent) init];
      [v33 setTracklistToken:v32];
      [v33 setTracklistSource:3];
      v34 = String._bridgeToObjectiveC()();
      [v33 setPlayActivityFeatureName:v34];

      *v5 = v33;
      swift_storeEnumTagMultiPayload();
      v42 = 0;
      memset(v41, 0, sizeof(v41));
      v39 = &_s18NowPlayingUISourceON;
      v40 = &off_10109D788;
      v38[0] = 1;
      v35 = v33;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, v41, 3, 0, 0, 1, 0, 1, a1, 0, v38);

      v18 = 0;
      goto LABEL_19;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v19 = objc_opt_self();
      v20 = v13;
      v21 = [v19 standardUserDefaults];
      v22 = NSUserDefaults.showAllTVShows.getter();

      if (v22)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

LABEL_17:
      v17 = [objc_opt_self() kindWithVariants:v23];
      goto LABEL_18;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = objc_opt_self();
      v25 = v13;
      v26 = [v24 standardUserDefaults];
      v27 = NSUserDefaults.showAllTVShows.getter();

      if (v27)
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      goto LABEL_17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1002F982C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = a3;
  v5(a2, a3);
}

uint64_t sub_1002F992C(unsigned __int8 a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v9)
  {
    v10 = v9;
    sub_1004357B8(a1);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = sub_1002DCC7C();
      v14 = _UICollectionViewListLayoutElementKindSectionHeader;
      IndexPath.init(item:section:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v5 + 8))(v8, v4);
      v16 = [v13 supplementaryViewForElementKind:v14 atIndexPath:isa];

      if (v16 && (v20[1] = v16, sub_100009F78(0, &qword_10118AC60), sub_10010FC20(&unk_10118AC68), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v22 + 1))
        {
          sub_100059A8C(&v21, v24);
          v17 = v25;
          v18 = v26;
          sub_10000954C(v24, v25);
          v19 = (*(v18 + 8))(v17, v18);
          sub_10000959C(v24);
          return v19;
        }
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
      }

      sub_1000095E8(&v21, &qword_10118AC58);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1002F9B78@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_canPresentTooltip) == 1)
    {
      v6 = Strong;
      v7 = sub_1002F992C(5u, a1);
      if (v7 || (v7 = sub_1002F992C(3u, a1)) != 0 || (v7 = sub_1002F992C(2u, a1), v5 = v6, v7))
      {
        v17 = v7;
        v18 = 0u;
        v19 = 0u;
        v20 = 2;
        PresentationSource.Position.init(source:permittedArrowDirections:)(&v17, 15, v9);
        v13[0] = v9[0];
        v13[1] = v9[1];
        v14 = v10;
        v15 = v11;
        v16 = v12;
        *&result = PresentationSource.init(viewController:position:)(v6, v13, a2).n128_u64[0];
        return result;
      }
    }
  }

  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

double sub_1002F9EC0(double a1, double a2)
{
  _s14CollectionViewCMa();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    if (*(v5 + OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController14CollectionView_hasInteractiveMovement) == 1 && *(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY) > a2)
    {
      a1 = 0.0;
      if (*(v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) != 3)
      {
        [v5 contentOffset];
        return v6;
      }
    }

    else
    {
      v7 = v5;
      v8 = v2 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_updateContext;
      swift_beginAccess();
      if (*(v8 + 8) == 1)
      {
        [v7 contentOffset];
        return v6;
      }
    }
  }

  return a1;
}

void sub_1002FA024(uint64_t a1@<X1>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v4 = v3;
  v86 = a2;
  v83 = a1;
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v76 = &v72 - v7;
  v82 = _s23QueueSnapshotIdentifierOMa(0);
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v10 - 8);
  v79 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  v84 = v15;
  v85 = v16;
  __chkstk_darwin(v15);
  v77 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v78 = &v72 - v19;
  __chkstk_darwin(v20);
  v80 = &v72 - v21;
  v22 = sub_10010FC20(&qword_10118AB38);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v26 = sub_10010FC20(&unk_10118B910);
  __chkstk_darwin(v26 - 8);
  v28 = &v72 - v27;
  v29 = *(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dragDropController);
  if (v29)
  {
    v30 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    swift_beginAccess();
    sub_1000089F8(v29 + v30, v28, &unk_10118B910);
    v31 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    if ((*(*(v31 - 8) + 48))(v28, 1, v31) != 1)
    {
      sub_1000095E8(v28, &unk_10118B910);
      (*(v85 + 16))(a3, v86, v84);
      return;
    }
  }

  else
  {
    v32 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  }

  v81 = a3;
  sub_1000095E8(v28, &unk_10118B910);
  v33 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v34 = *(v4 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v34)
  {
    goto LABEL_33;
  }

  v35 = v34;
  v36 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v37 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v23 + 8))(v25, v22);
  if ((v36 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v36 >= *(v37 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v38 = *(v37 + v36 + 32);

  if (!v38)
  {
    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    return;
  }

  v39 = *(v4 + v33);
  v40 = v81;
  v41 = v83;
  if (!v39)
  {
    goto LABEL_34;
  }

  v42 = v39;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  v43 = *(v8 + 48);
  if (v43(v14, 1, v82) != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10030AD48(v14, _s23QueueSnapshotIdentifierOMa);
      goto LABEL_19;
    }

    v44 = sub_10010FC20(&qword_10118AB08);
    v45 = *&v14[*(v44 + 48)];
    v46 = v14;
    v47 = v84;
    v73 = *(v85 + 32);
    v74 = v85 + 32;
    v73(v80, v46, v84);
    v48 = *(v4 + v33);
    if (v48)
    {
      v49 = v48;
      v50 = v79;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if (v43(v50, 1, v82) == 1)
      {
        v51 = v85;
        (*(v85 + 8))(v80, v47);

        v52 = &unk_10118AAF0;
        v53 = v50;
LABEL_17:
        sub_1000095E8(v53, v52);
LABEL_27:
        v40 = v81;
        goto LABEL_28;
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v55 = v80;
      if (EnumCaseMultiPayload != 1)
      {
        v51 = v85;
        (*(v85 + 8))(v80, v47);

        sub_10030AD48(v50, _s23QueueSnapshotIdentifierOMa);
        goto LABEL_27;
      }

      v86 = v44;

      v73(v78, v50, v47);
      v56 = v45;
      v57 = [v45 tracklist];
      v58 = [v57 reorderCommand];

      if (!v58)
      {

        v51 = v85;
        v71 = *(v85 + 8);
        v71(v78, v47);
        v71(v55, v47);
        goto LABEL_27;
      }

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v60 = IndexPath._bridgeToObjectiveC()().super.isa;
      v61 = [v58 limitedDisplayIndexPathForMovingIndexPath:isa toProprosedIndexPath:v60];

      v62 = v77;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v51 = v85;
      v63 = *(v86 + 48);
      v64 = v75;
      (*(v85 + 16))(v75, v62, v47);
      *(v64 + v63) = v56;
      swift_storeEnumTagMultiPayload();
      v65 = *(v4 + v33);
      if (v65)
      {
        v66 = v56;
        v67 = v65;
        v68 = v76;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();

        swift_unknownObjectRelease();
        sub_10030AD48(v64, _s23QueueSnapshotIdentifierOMa);
        v69 = *(v51 + 8);
        v69(v77, v47);
        v69(v78, v47);
        v69(v80, v47);
        v70 = (*(v51 + 48))(v68, 1, v47);
        v41 = v83;
        if (v70 != 1)
        {
          v73(v81, v68, v47);
          return;
        }

        v52 = &unk_10118BCE0;
        v53 = v68;
        goto LABEL_17;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1000095E8(v14, &unk_10118AAF0);
LABEL_19:
  v47 = v84;
  v51 = v85;
LABEL_28:
  (*(v51 + 16))(v40, v41, v47);
}

void sub_1002FAB38(void *a1)
{
  v3 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = _s23QueueSnapshotIdentifierOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (v10)
  {
    v11 = v10;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &unk_10118AAF0);
    }

    else
    {
      sub_100309144(v5, v9, _s23QueueSnapshotIdentifierOMa);
      if (sub_100432FF0())
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v13 = [a1 cellForItemAtIndexPath:isa];

        sub_10030AD48(v9, _s23QueueSnapshotIdentifierOMa);
        if (v13)
        {
          type metadata accessor for NowPlayingQueueCell();
          swift_dynamicCastClass();
        }
      }

      else
      {
        sub_10030AD48(v9, _s23QueueSnapshotIdentifierOMa);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002FAE94(unint64_t a1, uint64_t (**a2)(char *, uint64_t, uint64_t))
{
  v3 = v2;
  v208 = a1;
  v5 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v5 - 8);
  v210 = &v172 - v6;
  v7 = type metadata accessor for Song();
  v186 = *(v7 - 8);
  __chkstk_darwin(v7);
  v199 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v9 - 8);
  v203 = &v172 - v10;
  v11 = type metadata accessor for MusicVideo();
  v185 = *(v11 - 8);
  __chkstk_darwin(v11);
  v194 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v13 - 8);
  v209 = &v172 - v14;
  v211 = type metadata accessor for Track();
  v198 = *(v211 - 8);
  __chkstk_darwin(v211);
  v201 = &v172 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10010FC20(&qword_10118AB10);
  __chkstk_darwin(v192);
  v191 = &v172 - v16;
  v206 = type metadata accessor for IndexPath();
  v184 = *(v206 - 8);
  __chkstk_darwin(v206);
  v205 = &v172 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10010FC20(&qword_10118AB00);
  __chkstk_darwin(v195);
  v193 = (&v172 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v204 = &v172 - v20;
  v189 = sub_10010FC20(&unk_10118AB90);
  v188 = *(v189 - 1);
  __chkstk_darwin(v189);
  v187 = &v172 - v21;
  v22 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v22 - 8);
  v175 = &v172 - v23;
  v24 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v24 - 8);
  v178 = &v172 - v25;
  v177 = type metadata accessor for PlaybackIntentDescriptor(0);
  v176 = *(v177 - 8);
  __chkstk_darwin(v177);
  v179 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_10010FC20(&qword_10118AB38);
  v182 = *(v183 - 8);
  __chkstk_darwin(v183);
  v28 = &v172 - v27;
  v29 = sub_10010FC20(&unk_10118AAF0);
  __chkstk_darwin(v29 - 8);
  v180 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v172 - v32;
  v207 = _s23QueueSnapshotIdentifierOMa(0);
  v196 = *(v207 - 1);
  __chkstk_darwin(v207);
  v35 = &v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v172 - v37;
  __chkstk_darwin(v39);
  v41 = &v172 - v40;
  __chkstk_darwin(v42);
  v44 = &v172 - v43;
  v197 = a2;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v208 deselectItemAtIndexPath:isa animated:1];

  v46 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController__playerResponse);
  if (v46)
  {
    v200 = v11;
    v202 = v7;
    v190 = v44;
    v47 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
    v181 = v3;
    v48 = *(v3 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
    if (!v48)
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v174 = v46;
    v49 = v46;
    v50 = v48;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    v51 = *(v196 + 48);
    if (v51(v33, 1, v207) == 1)
    {

      sub_1000095E8(v33, &unk_10118AAF0);
      return;
    }

    v208 = v51;
    v173 = v49;
    v52 = v33;
    v53 = v190;
    sub_100309144(v52, v190, _s23QueueSnapshotIdentifierOMa);
    swift_storeEnumTagMultiPayload();
    v54 = sub_100437274(v53, v41);
    sub_10030AD48(v41, _s23QueueSnapshotIdentifierOMa);
    if (v54)
    {
      v55 = *(v181 + v47);
      if (v55)
      {
        LOBYTE(v219) = 2;
        v56 = v55;
        v57 = v187;
        UICollectionViewDiffableDataSource.snapshot(for:)();

        v58 = v189;
        v47 = NSDiffableDataSourceSectionSnapshot.items.getter();
        v188[1](v57, v58);
        *&v219 = _swiftEmptyArrayStorage;
        v59 = *(v47 + 16);
        v60 = v210;
        v61 = v203;
        if (v59)
        {
          v62 = (*(v196 + 80) + 32) & ~*(v196 + 80);
          v187 = v47;
          v63 = v47 + v62;
          v189 = (v184 + 32);
          v188 = (v184 + 8);
          v208 = _swiftEmptyArrayStorage;
          v47 = *(v196 + 72);
          v197 = v47;
          while (1)
          {
            sub_1003090DC(v63, v38, _s23QueueSnapshotIdentifierOMa);
            sub_1003090DC(v38, v35, _s23QueueSnapshotIdentifierOMa);
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if ((EnumCaseMultiPayload - 2) >= 3)
            {
              break;
            }

            sub_10030AD48(v38, _s23QueueSnapshotIdentifierOMa);
LABEL_10:
            v63 += v47;
            if (!--v59)
            {

              v89 = v208;
              if (!(v208 >> 62))
              {
                goto LABEL_36;
              }

LABEL_62:
              v84 = _CocoaArrayWrapper.endIndex.getter();
              v90 = v84;
              if (!v84)
              {
                goto LABEL_63;
              }

LABEL_37:
              v91 = 0;
              v206 = v89 & 0xC000000000000001;
              v205 = (v89 & 0xFFFFFFFFFFFFFF8);
              v193 = (v185 + 48);
              v189 = (v185 + 32);
              LODWORD(v188) = enum case for Track.musicVideo(_:);
              v196 = v198 + 104;
              v49 = (v198 + 56);
              v92 = (v186 + 48);
              v192 = (v186 + 32);
              LODWORD(v191) = enum case for Track.song(_:);
              v195 = (v198 + 48);
              v207 = _swiftEmptyArrayStorage;
              v197 = (v198 + 32);
              v208 = v89;
              v204 = v90;
              v187 = (v186 + 48);
              while (2)
              {
                if (v206)
                {
                  v84 = sub_1007E97C8(v91, v89);
                }

                else
                {
                  if (v91 >= *(v205 + 2))
                  {
                    goto LABEL_97;
                  }

                  v84 = *(v89 + 8 * v91 + 32);
                }

                v94 = v84;
                v95 = v91 + 1;
                if (__OFADD__(v91, 1))
                {
                  __break(1u);
LABEL_97:
                  __break(1u);
LABEL_98:
                  __break(1u);
                  goto LABEL_99;
                }

                if ([v84 hasVideo])
                {
                  v96 = v94;
                  v97 = v200;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*v193)(v61, 1, v97) == 1)
                  {
                    sub_1000095E8(v61, &unk_1011846B0);
                    v60 = v210;
                    goto LABEL_48;
                  }

                  v47 = v61;
                  v103 = *v189;
                  v104 = v194;
                  (*v189)(v194, v61, v97);
                  v93 = v209;
                  v103(v209, v104, v97);
                  v92 = v187;
                  v102 = v188;
                  v60 = v210;
LABEL_51:
                  v105 = v211;
                  (*v196)(v93, v102, v211);
                  (*v49)(v93, 0, 1, v105);
                  if ((*v195)(v93, 1, v105) != 1)
                  {
                    v106 = *v197;
                    (*v197)(v201, v93, v211);
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v207 = sub_100499798(0, *(v207 + 2) + 1, 1, v207);
                    }

                    v89 = v208;
                    v108 = *(v207 + 2);
                    v107 = *(v207 + 3);
                    if (v108 >= v107 >> 1)
                    {
                      v207 = sub_100499798(v107 > 1, v108 + 1, 1, v207);
                    }

                    v109 = v207;
                    *(v207 + 2) = v108 + 1;
                    v84 = v106(&v109[((*(v198 + 80) + 32) & ~*(v198 + 80)) + *(v198 + 72) * v108], v201, v211);
                    v60 = v210;
LABEL_40:
                    ++v91;
                    if (v95 == v204)
                    {
                      goto LABEL_64;
                    }

                    continue;
                  }
                }

                else
                {
LABEL_48:
                  v98 = v202;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*v92)(v60, 1, v98) != 1)
                  {
                    v47 = v192;
                    v99 = *v192;
                    v100 = v199;
                    (*v192)(v199, v60, v98);
                    v93 = v209;
                    v101 = v100;
                    v61 = v203;
                    v99(v209, v101, v98);
                    v102 = v191;
                    goto LABEL_51;
                  }

                  sub_1000095E8(v60, &unk_101183960);
                  v93 = v209;
                  (*v49)(v209, 1, 1, v211);
                }

                break;
              }

              v84 = sub_1000095E8(v93, &qword_10118A530);
              v89 = v208;
              goto LABEL_40;
            }
          }

          v65 = v206;
          v66 = v205;
          if (EnumCaseMultiPayload)
          {
            v71 = *&v35[*(sub_10010FC20(&qword_10118AB08) + 48)];
            (*v189)(v66, v35, v65);
            v72 = [v71 tracklist];
            v73 = [v72 displayItems];

            v74 = IndexPath._bridgeToObjectiveC()().super.isa;
            v75 = [v73 itemAtIndexPath:v74];

            v76 = [v75 metadataObject];
            if (!v76)
            {

              (*v188)(v66, v65);
              sub_10030AD48(v38, _s23QueueSnapshotIdentifierOMa);
              v60 = v210;
              v61 = v203;
LABEL_25:
              v47 = v197;
              goto LABEL_10;
            }

            v77 = [v76 innermostModelObject];

            (*v188)(v66, v65);
            v60 = v210;
            v61 = v203;
          }

          else
          {
            v67 = v204;
            sub_10003D17C(v35, v204, &qword_10118AB00);
            v68 = v67;
            v69 = v193;
            sub_1000089F8(v68, v193, &qword_10118AB00);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v70 = *v69;
            }

            else
            {
              v78 = v191;
              sub_10003D17C(v69, v191, &qword_10118AB10);
              v70 = SnapshotIdentifier.Lazy.object.getter(v192);
              sub_1000095E8(v78, &qword_10118AB10);
            }

            v77 = [v70 innermostModelObject];

            sub_1000095E8(v204, &qword_10118AB00);
          }

          sub_10030AD48(v38, _s23QueueSnapshotIdentifierOMa);
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v219 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v219 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v208 = v219;
          }

          else
          {
          }

          goto LABEL_25;
        }

        v89 = _swiftEmptyArrayStorage;
        if (_swiftEmptyArrayStorage >> 62)
        {
          goto LABEL_62;
        }

LABEL_36:
        v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v90)
        {
          goto LABEL_37;
        }

LABEL_63:
        v207 = _swiftEmptyArrayStorage;
LABEL_64:

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v116 = Strong;
          v117 = swift_allocObject();
          *(v117 + 16) = v174;
          v118 = v173;
          sub_100650B10(v116, v207, sub_100309BDC, v117);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v114 = v190;
        goto LABEL_68;
      }

      goto LABEL_102;
    }

    if (sub_100432FF0())
    {
      v79 = *(v181 + v47);
      if (!v79)
      {
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      v80 = v79;
      v81 = IndexPath.section.getter();
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
      v82 = v183;
      v83 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      v84 = (*(v182 + 8))(v28, v82);
      if ((v81 & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      if (v81 >= *(v83 + 16))
      {
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v85 = *(v83 + v81 + 32);

      if (v85 > 1)
      {
        if ((v85 - 2) < 3)
        {
          v86 = *(v181 + v47);
          if (!v86)
          {
LABEL_104:
            __break(1u);
            return;
          }

          v87 = v86;
          v88 = v180;
          dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

          if ((v208)(v88, 1, v207) == 1)
          {
            sub_10030AD48(v190, _s23QueueSnapshotIdentifierOMa);

            sub_1000095E8(v88, &unk_10118AAF0);
            return;
          }

          v47 = sub_100432DFC();
          sub_10030AD48(v88, _s23QueueSnapshotIdentifierOMa);
          v49 = v190;
          if (v47)
          {
            v124 = qword_10117F5F8;
            v84 = v47;
            if (v124 == -1)
            {
LABEL_78:
              v220 = &type metadata for Player.ChangeCommand;
              v221 = &protocol witness table for Player.ChangeCommand;
              *&v219 = v47;
              v125 = *(*qword_101218AC8 + 760);
              v126 = v84;
              v127 = v125(&v219);
              sub_10000959C(&v219);
              if (v127)
              {
                v128 = v181;
                v129 = *(v181 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
                v130 = sub_1002DCC7C();
                [v130 setContentOffset:0 animated:{0.0, v129}];

                *(v128 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = 3;
                sub_10010FC20(&unk_10118ABA0);
                v131 = swift_allocObject();
                *(v131 + 16) = xmmword_100EBC6B0;
                *(v131 + 56) = &type metadata for Player.ChangeCommand;
                *(v131 + 64) = &protocol witness table for Player.ChangeCommand;
                *(v131 + 32) = v47;
                v220 = &type metadata for Player.PlaybackCommand;
                v221 = &protocol witness table for Player.PlaybackCommand;
                LOBYTE(v219) = 0;
                v216 = &type metadata for Player.PlaybackCommand;
                v217 = &protocol witness table for Player.PlaybackCommand;
                LOBYTE(v215) = 0;
                v132 = v126;
                LOBYTE(v128) = v125(&v215);
                sub_10000959C(&v215);
                if (v128)
                {
                  sub_100008FE4(&v219, &v215);
                  v134 = *(v131 + 16);
                  v133 = *(v131 + 24);
                  if (v134 >= v133 >> 1)
                  {
                    v131 = sub_1004997C0((v133 > 1), v134 + 1, 1, v131);
                  }

                  v135 = sub_100309A88(&v215, v216);
                  v136 = __chkstk_darwin(v135);
                  v138 = &v172 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v139 + 16))(v138, v136);
                  v140 = *v138;
                  v213 = &type metadata for Player.PlaybackCommand;
                  v214 = &protocol witness table for Player.PlaybackCommand;
                  LOBYTE(v212) = v140;
                  *(v131 + 16) = v134 + 1;
                  sub_100059A8C(&v212, v131 + 40 * v134 + 32);
                  sub_10000959C(&v215);
                }

                v141 = v175;
                sub_10000959C(&v219);
                v142 = type metadata accessor for TaskPriority();
                (*(*(v142 - 8) + 56))(v141, 1, 1, v142);
                type metadata accessor for MainActor();
                v143 = static MainActor.shared.getter();
                v144 = swift_allocObject();
                v144[2] = v143;
                v144[3] = &protocol witness table for MainActor;
                v144[4] = v131;
                sub_1001F57F4(0, 0, v141, &unk_100EC6508, v144);

                v114 = v49;
                goto LABEL_68;
              }

              sub_10030AD48(v49, _s23QueueSnapshotIdentifierOMa);

              goto LABEL_74;
            }

LABEL_100:
            v170 = v84;
            swift_once();
            v84 = v170;
            goto LABEL_78;
          }

          v123 = v190;
LABEL_73:
          sub_10030AD48(v123, _s23QueueSnapshotIdentifierOMa);
LABEL_74:

          return;
        }

LABEL_72:
        v123 = v190;
        goto LABEL_73;
      }

      if (v85)
      {
        goto LABEL_72;
      }

      v119 = v178;
      sub_1002F9274(v178);
      v120 = (*(v176 + 48))(v119, 1, v177);
      v121 = v190;
      v122 = v173;
      if (v120 == 1)
      {
        sub_10030AD48(v190, _s23QueueSnapshotIdentifierOMa);

        sub_1000095E8(v119, &qword_1011848A0);
        return;
      }

      v145 = sub_100309144(v119, v179, type metadata accessor for PlaybackIntentDescriptor);
      v146 = PlaybackIntentDescriptor.intent.getter(v145);
      v147 = Player.InsertCommand.init(location:playbackIntent:)(0, v146);
      v149 = v148;
      if (qword_10117F5F8 != -1)
      {
        v171 = v147;
        swift_once();
        v147 = v171;
      }

      v220 = &type metadata for Player.InsertCommand;
      v221 = &protocol witness table for Player.InsertCommand;
      *&v219 = v147;
      *(&v219 + 1) = v149;
      v150 = *(*qword_101218AC8 + 760);
      v151 = v147;
      sub_1001DFD48(v149);
      v152 = v150(&v219);
      sub_10000959C(&v219);
      if (v152)
      {
        v153 = v181;
        v154 = *(v181 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_upNextSectionMinY);
        v155 = sub_1002DCC7C();
        [v155 setContentOffset:1 animated:{0.0, v154}];

        *(v153 + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_currentSection) = 3;
        sub_10010FC20(&unk_10118ABA0);
        v156 = swift_allocObject();
        *(v156 + 16) = xmmword_100EBDC20;
        *(v156 + 56) = &type metadata for Player.InsertCommand;
        *(v156 + 64) = &protocol witness table for Player.InsertCommand;
        *(v156 + 32) = v151;
        *(v156 + 40) = v149;
        *(v156 + 96) = &type metadata for Player.ChangeCommand;
        *(v156 + 104) = &protocol witness table for Player.ChangeCommand;
        *(v156 + 72) = 1;
        v220 = &type metadata for Player.PlaybackCommand;
        v221 = &protocol witness table for Player.PlaybackCommand;
        LOBYTE(v219) = 0;
        v216 = &type metadata for Player.PlaybackCommand;
        v217 = &protocol witness table for Player.PlaybackCommand;
        LOBYTE(v215) = 0;
        v157 = v151;
        sub_1001DFD48(v149);
        LOBYTE(v153) = v150(&v215);
        sub_10000959C(&v215);
        if (v153)
        {
          sub_100008FE4(&v219, &v215);
          v159 = *(v156 + 16);
          v158 = *(v156 + 24);
          if (v159 >= v158 >> 1)
          {
            v156 = sub_1004997C0((v158 > 1), v159 + 1, 1, v156);
          }

          v160 = sub_100309A88(&v215, v216);
          v161 = __chkstk_darwin(v160);
          v163 = &v172 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v164 + 16))(v163, v161);
          v165 = *v163;
          v213 = &type metadata for Player.PlaybackCommand;
          v214 = &protocol witness table for Player.PlaybackCommand;
          LOBYTE(v212) = v165;
          *(v156 + 16) = v159 + 1;
          sub_100059A8C(&v212, v156 + 40 * v159 + 32);
          sub_10000959C(&v215);
        }

        sub_10000959C(&v219);
        v166 = type metadata accessor for TaskPriority();
        v167 = v175;
        (*(*(v166 - 8) + 56))(v175, 1, 1, v166);
        type metadata accessor for MainActor();
        v168 = static MainActor.shared.getter();
        v169 = swift_allocObject();
        v169[2] = v168;
        v169[3] = &protocol witness table for MainActor;
        v169[4] = v156;
        sub_1001F57F4(0, 0, v167, &unk_100EC6518, v169);

        sub_100309AD8(v149);
        sub_10030AD48(v179, type metadata accessor for PlaybackIntentDescriptor);
        v114 = v190;
      }

      else
      {

        sub_100309AD8(v149);
        sub_10030AD48(v179, type metadata accessor for PlaybackIntentDescriptor);
        v114 = v121;
      }
    }

    else
    {
      static ApplicationCapabilities.shared.getter(&v219);
      sub_100014984(&v219);
      if (BYTE8(v219))
      {
        goto LABEL_72;
      }

      v110 = v190;
      v111 = sub_1004329EC();
      v112 = v173;
      if (!v111)
      {
        sub_10030AD48(v110, _s23QueueSnapshotIdentifierOMa);

        return;
      }

      v215 = v111;
      v218 = 1;
      v113 = v111;
      static SubscriptionUpsellPresenter.present(for:)(&v215);

      sub_100309980(&v215);
      v114 = v110;
    }

LABEL_68:
    sub_10030AD48(v114, _s23QueueSnapshotIdentifierOMa);
  }
}

uint64_t sub_1002FCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1002FCE84, v6, v5);
}

uint64_t sub_1002FCE84()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &_s18NowPlayingUISourceON;
  *(v0 + 48) = &off_10109D788;
  *(v0 + 16) = 1;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002FCF80;
  v2 = *(v0 + 64);

  return PlaybackController.perform(_:route:intent:issuer:)(v2, 0, 0, v0 + 16);
}

uint64_t sub_1002FCF80(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1002FD130;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8((v4 + 2), &unk_101183910);
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_1002FD0C4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1002FD0C4()
{
  v1 = *(v0 + 104);

  **(v0 + 56) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002FD130()
{

  sub_1000095E8(v0 + 16, &unk_101183910);
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FD1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a1;
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_1002FD248, v6, v5);
}

uint64_t sub_1002FD248()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &_s18NowPlayingUISourceON;
  *(v0 + 48) = &off_10109D788;
  *(v0 + 16) = 1;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1002FD344;
  v2 = *(v0 + 64);

  return PlaybackController.perform(_:route:intent:issuer:)(v2, 0, 0, v0 + 16);
}

uint64_t sub_1002FD344(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10030B03C;
  }

  else
  {
    v4[13] = a1;
    sub_1000095E8((v4 + 2), &unk_101183910);
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10030B044;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_1002FD584()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002F9024();
  }
}

void sub_1002FD678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v603 = a6;
  v617 = a5;
  v628 = a4;
  v6 = type metadata accessor for UploadedVideo();
  v552 = *(v6 - 8);
  v553 = v6;
  __chkstk_darwin(v6);
  v551 = &v543[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UploadedAudio();
  v562 = *(v8 - 8);
  v563 = v8;
  __chkstk_darwin(v8);
  v561 = &v543[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v620 = type metadata accessor for MusicMovie();
  v619 = *(v620 - 8);
  __chkstk_darwin(v620);
  v618 = &v543[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for TVEpisode();
  v572 = *(v11 - 8);
  v573 = v11;
  __chkstk_darwin(v11);
  v571 = &v543[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for MusicVideo();
  v594 = *(v13 - 8);
  v595 = v13;
  __chkstk_darwin(v13);
  v593 = &v543[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for UUID();
  v610 = *(v15 - 8);
  __chkstk_darwin(v15);
  v609 = &v543[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10010FC20(&unk_1011838D0);
  v605 = *(v17 - 8);
  __chkstk_darwin(v17 - 8);
  v557 = &v543[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v567 = &v543[-v20];
  __chkstk_darwin(v21);
  v625 = &v543[-v22];
  __chkstk_darwin(v23);
  v577 = &v543[-v24];
  __chkstk_darwin(v25);
  v599 = &v543[-v26];
  __chkstk_darwin(v27);
  v608 = &v543[-v28];
  v600 = v29;
  __chkstk_darwin(v30);
  v587 = &v543[-v31];
  v32 = sub_10010FC20(&unk_1011845D0);
  v604 = *(v32 - 8);
  __chkstk_darwin(v32 - 8);
  v556 = &v543[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v566 = &v543[-v35];
  __chkstk_darwin(v36);
  v624 = &v543[-v37];
  __chkstk_darwin(v38);
  v576 = &v543[-v39];
  __chkstk_darwin(v40);
  v598 = &v543[-v41];
  __chkstk_darwin(v42);
  v607 = &v543[-v43];
  v606 = v44;
  __chkstk_darwin(v45);
  v586 = &v543[-v46];
  v47 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v47 - 8);
  v547 = &v543[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v555 = &v543[-v50];
  __chkstk_darwin(v51);
  v554 = &v543[-v52];
  __chkstk_darwin(v53);
  v565 = &v543[-v54];
  __chkstk_darwin(v55);
  v596 = &v543[-v56];
  __chkstk_darwin(v57);
  v623 = &v543[-v58];
  __chkstk_darwin(v59);
  v564 = &v543[-v60];
  __chkstk_darwin(v61);
  v575 = &v543[-v62];
  __chkstk_darwin(v63);
  v584 = &v543[-v64];
  __chkstk_darwin(v65);
  v597 = &v543[-v66];
  __chkstk_darwin(v67);
  v574 = &v543[-v68];
  __chkstk_darwin(v69);
  v585 = &v543[-v70];
  v71 = type metadata accessor for Song();
  v582 = *(v71 - 8);
  v583 = v71;
  __chkstk_darwin(v71);
  v581 = &v543[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v73 - 8);
  v545 = &v543[-((v74 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v75);
  v546 = &v543[-v76];
  __chkstk_darwin(v77);
  v549 = &v543[-v78];
  __chkstk_darwin(v79);
  v550 = &v543[-v80];
  __chkstk_darwin(v81);
  v591 = &v543[-v82];
  __chkstk_darwin(v83);
  v592 = &v543[-v84];
  __chkstk_darwin(v85);
  v559 = &v543[-v86];
  __chkstk_darwin(v87);
  v560 = &v543[-v88];
  __chkstk_darwin(v89);
  v579 = &v543[-v90];
  __chkstk_darwin(v91);
  v580 = &v543[-v92];
  __chkstk_darwin(v93);
  v569 = &v543[-v94];
  __chkstk_darwin(v95);
  v570 = &v543[-v96];
  __chkstk_darwin(v97);
  v630 = &v543[-v98];
  __chkstk_darwin(v99);
  v631 = &v543[-v100];
  v632 = type metadata accessor for Actions.PlaybackContext();
  v629 = *(v632 - 8);
  __chkstk_darwin(v632);
  v102 = &v543[-((v101 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v611 = type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context(0);
  v612 = *(v611 - 8);
  __chkstk_darwin(v611);
  v614 = &v543[-((v103 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v613 = v103;
  __chkstk_darwin(v104);
  v106 = &v543[-v105];
  v615 = sub_10010FC20(&qword_10118AB30);
  v601 = *(v615 - 1);
  __chkstk_darwin(v615);
  v544 = &v543[-((v107 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v108);
  v548 = &v543[-v109];
  __chkstk_darwin(v110);
  v590 = &v543[-v111];
  __chkstk_darwin(v112);
  v558 = &v543[-v113];
  __chkstk_darwin(v114);
  v578 = &v543[-v115];
  __chkstk_darwin(v116);
  v568 = &v543[-v117];
  v602 = v118;
  __chkstk_darwin(v119);
  v633 = &v543[-v120];
  v626 = type metadata accessor for GenericMusicItem();
  v627 = *(v626 - 8);
  __chkstk_darwin(v626);
  v589._rawValue = &v543[-((v121 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v122);
  v616 = &v543[-v123];
  __chkstk_darwin(v124);
  v126 = &v543[-v125];
  v127 = sub_10010FC20(&qword_10118AB38);
  v128 = *(v127 - 8);
  __chkstk_darwin(v127);
  v130 = &v543[-v129];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v132 = Strong;
  v588 = v15;
  v621 = v102;
  v622 = OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource;
  v133 = *(Strong + OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_dataSource);
  if (!v133)
  {
    __break(1u);
LABEL_175:
    __break(1u);
    return;
  }

  v134 = v133;
  v135 = IndexPath.section.getter();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v136 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v128 + 8))(v130, v127);
  if ((v135 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_172;
  }

  if (v135 >= *(v136 + 16))
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v137 = *(v136 + v135 + 32);

  if (v137)
  {
    v138 = 0;
    v139 = &off_10109A378;
  }

  else
  {
    sub_100009F78(0, &qword_10118AB70);
    (*(v627 + 2))(v126, v628, v626);
    v140 = MPCPlaybackIntent.init(for:)();
    v141 = v140;
    v138 = v140;
    v139 = _swiftEmptyArrayStorage;
  }

  v589._rawValue = v139;
  v142 = v622;
  v622 = v138;
  v143 = *&v142[v132];
  if (!v143)
  {
    goto LABEL_175;
  }

  v144 = v611;
  sub_1003090DC(v617, v106 + *(v611 + 20), _s23QueueSnapshotIdentifierOMa);
  v145 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *v106 = v143;
  v146 = (v106 + *(v144 + 24));
  *v146 = sub_100309364;
  v146[1] = v145;
  v147 = v633;
  sub_1003090DC(v106, v633, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v148 = v614;
  sub_1003090DC(v106, v614, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v149 = (*(v612 + 80) + 16) & ~*(v612 + 80);
  v617 = v132;
  v150 = swift_allocObject();
  sub_100309144(v148, v150 + v149, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  sub_100309144(v106, v148, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v151 = swift_allocObject();
  sub_100309144(v148, v151 + v149, type metadata accessor for NowPlayingQueueViewController.QueueMoveToTop.Context);
  v152 = v615;
  v147[v615[9]] = 21;
  *&v147[v152[11]] = 0x4014000000000000;
  v153 = &v147[v152[10]];
  *v153 = sub_10030936C;
  v153[1] = v150;
  v154 = &v147[v152[12]];
  *v154 = &unk_100EC64B8;
  v154[1] = v151;
  v155 = &v147[v152[13]];
  *v155 = &unk_100EC64C0;
  v155[1] = 0;
  v126 = v631;
  PlaybackIntentDescriptor.IntentType.init(_:)(v622, v631);
  *(&v649 + 1) = &_s18NowPlayingUISourceON;
  *&v650 = &off_10109D788;
  LOBYTE(v648) = 1;
  v156 = qword_10117F608;
  v132 = v617;
  v157 = v143;
  if (v156 != -1)
  {
LABEL_173:
    swift_once();
  }

  v158 = qword_101218AD8;
  sub_1000089F8(v126, v630, &unk_1011838E0);
  v617 = v158;
  v159 = UIViewController.playActivityInformation.getter();
  v161 = v160;
  v163 = v162;
  v165 = v164;
  sub_1000089F8(&v648, &v640, &unk_101183910);
  v166 = v621;
  if (*(&v641 + 1))
  {
    sub_100059A8C(&v640, &v644);
  }

  else
  {
    *&v656 = v132;
    sub_100009F78(0, &qword_101183D40);
    v167 = v132;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v659, &v644);
    }

    else
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      *&v644 = v167;
      v168 = v167;
      v169 = String.init<A>(reflecting:)();
      v645 = &type metadata for Player.CommandIssuerIdentity;
      v646 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v644 = v169;
      *(&v644 + 1) = v170;
      if (*(&v660 + 1))
      {
        sub_1000095E8(&v659, &unk_101183910);
      }
    }

    if (*(&v641 + 1))
    {
      sub_1000095E8(&v640, &unk_101183910);
    }
  }

  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v617, v630, v159, v161, v163, v165, &v644, v166);

  sub_1000095E8(v631, &unk_1011838E0);
  sub_1000095E8(&v648, &unk_101183910);
  v171 = v627;
  v172 = v616;
  v173 = v626;
  (*(v627 + 2))(v616, v628, v626);
  v174 = (*(v171 + 11))(v172, v173);
  v615 = v132;
  if (v174 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v171 + 12))(v172, v173);
    v175 = v619;
    v176 = v618;
    v177 = v172;
    v178 = v620;
    (*(v619 + 32))(v618, v177, v620);
    sub_10010FC20(&unk_101183900);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_100EBC6B0;
    *(v179 + 56) = v178;
    *(v179 + 64) = sub_100309644(&unk_10118AB60, &type metadata accessor for MusicMovie);
    v180 = sub_10001C8B8((v179 + 32));
    (*(v175 + 16))(v180, v176, v178);
    v181 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v182 = v623;
    sub_1003090DC(v166, v623, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v182, 0, 1, v632);
    v183 = type metadata accessor for PlaylistContext();
    (*(*(v183 - 8) + 56))(v624, 1, 1, v183);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v184 = v625;
    sub_1003090DC(v603, v625, type metadata accessor for Actions.MetricsReportingContext);
    v185 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v185 - 8) + 56))(v184, 0, 1, v185);
    v186 = v590;
    sub_1000089F8(v633, v590, &qword_10118AB30);
    v187 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v188 = swift_allocObject();
    sub_10003D17C(v186, &v188[v187], &qword_10118AB30);
    sub_100008FE4(v179 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v189 = v596;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v189 = v596;
    }

    swift_getObjectType();
    v205 = swift_conformsToProtocol2();
    v206 = v632;
    v630 = v188;
    if (v205)
    {
      v626 = v205;
      v207 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v223 = v222;
    sub_1000089F8(v623, v189, &unk_10118AB20);
    v224 = *(v629 + 6);
    if (v224(v189, 1, v206) == 1)
    {
      v225 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v226 = v592;
      (*(*(v225 - 8) + 56))(v592, 1, 1, v225);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v226, v591, &unk_1011838E0);
      v629 = v617;
      v227 = UIViewController.playActivityInformation.getter();
      v229 = v228;
      v231 = v230;
      v233 = v232;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v251 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v206 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v251;
          v281 = v251;
          v282 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v282;
          *(&v656 + 1) = v283;
          v206 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v591, v227, v229, v231, v233, &v656, v223);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v592, &unk_1011838E0);
      v284 = v596;
      if (v224(v596, 1, v206) != 1)
      {
        sub_1000095E8(v284, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v189, v223, type metadata accessor for Actions.PlaybackContext);
    }

    v285 = &v223[*(v206 + 28)];
    sub_1000089F8(v285, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v286 = v600;
    }

    else
    {
      *&v640 = v132;
      v287 = v132;
      v288 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v288;
      *(&v640 + 1) = v289;
      v286 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v290 = swift_allocObject();
    *(v290 + 16) = xmmword_100EBDC20;
    *(v290 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v290 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v290 + 32) = 0x4D747865746E6F43;
    *(v290 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v290 + 72);
    v291 = static Player.CommandIssuer<>.combining(_:)();
    v293 = v292;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v291;
    *(&v640 + 1) = v293;
    sub_10006B010(&v640, v285, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v294;
    v617 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v295 = v608;
    sub_1000089F8(v625, v608, &unk_1011838D0);
    v296 = v607;
    sub_1000089F8(v624, v607, &unk_1011845D0);
    v297 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v298 = (v286 + v297 + 7) & 0xFFFFFFFFFFFFFFF8;
    v299 = (v298 + 15) & 0xFFFFFFFFFFFFFFF8;
    v300 = (*(v604 + 80) + v299 + 8) & ~*(v604 + 80);
    v301 = (v300 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v302 = (v300 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v303 = swift_allocObject();
    sub_100059A8C(&v638, v303 + 16);
    *(v303 + 56) = v631;
    sub_10012B828(&v640, v303 + 64);
    sub_10003D17C(v295, v303 + v297, &unk_1011838D0);
    *(v303 + v298) = v617;
    *(v303 + v299) = v628;
    sub_10003D17C(v296, v303 + v300, &unk_1011845D0);
    v304 = v303 + v301;
    v305 = v626;
    *v304 = v627;
    *(v304 + 8) = v305;
    *(v304 + 16) = 1;
    v306 = (v303 + v302);
    v307 = v630;
    *v306 = sub_10030B048;
    v306[1] = v307;
    swift_unknownObjectRetain();

    v308 = v609;
    UUID.init()();
    v309 = UUID.uuidString.getter();
    v311 = v310;
    (*(v610 + 8))(v308, v588);
    v663._countAndFlagsBits = v632;
    v663._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v663, v309, v311, sub_10021953C, v303, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v625, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v624, &unk_1011845D0);
    sub_1000095E8(v623, &unk_10118AB20);
    (*(v619 + 8))(v618, v620);
LABEL_170:
    sub_10030AD48(v621, type metadata accessor for Actions.PlaybackContext);
    sub_1000095E8(v633, &qword_10118AB30);
    return;
  }

  if (v174 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v171 + 12))(v172, v173);
    v191 = v593;
    v190 = v594;
    v192 = v172;
    v193 = v595;
    (*(v594 + 32))(v593, v192, v595);
    sub_10010FC20(&unk_101183900);
    v194 = swift_allocObject();
    *(v194 + 16) = xmmword_100EBC6B0;
    *(v194 + 56) = v193;
    *(v194 + 64) = &protocol witness table for MusicVideo;
    v195 = sub_10001C8B8((v194 + 32));
    (*(v190 + 16))(v195, v191, v193);
    v196 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v197 = v597;
    sub_1003090DC(v166, v597, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v197, 0, 1, v632);
    v198 = type metadata accessor for PlaylistContext();
    (*(*(v198 - 8) + 56))(v598, 1, 1, v198);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v199 = v599;
    sub_1003090DC(v603, v599, type metadata accessor for Actions.MetricsReportingContext);
    v200 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v200 - 8) + 56))(v199, 0, 1, v200);
    v201 = v578;
    sub_1000089F8(v633, v578, &qword_10118AB30);
    v202 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v203 = swift_allocObject();
    sub_10003D17C(v201, &v203[v202], &qword_10118AB30);
    sub_100008FE4(v194 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v204 = v584;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v204 = v584;
    }

    swift_getObjectType();
    v234 = swift_conformsToProtocol2();
    v235 = v632;
    v630 = v203;
    if (v234)
    {
      v626 = v234;
      v236 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v253 = v252;
    sub_1000089F8(v597, v204, &unk_10118AB20);
    v254 = *(v629 + 6);
    if (v254(v204, 1, v235) == 1)
    {
      v255 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v256 = v580;
      (*(*(v255 - 8) + 56))(v580, 1, 1, v255);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v256, v579, &unk_1011838E0);
      v629 = v617;
      v257 = UIViewController.playActivityInformation.getter();
      v259 = v258;
      v261 = v260;
      v263 = v262;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v312 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v235 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v312;
          v342 = v312;
          v343 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v343;
          *(&v656 + 1) = v344;
          v235 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v579, v257, v259, v261, v263, &v656, v253);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v580, &unk_1011838E0);
      v345 = v584;
      if (v254(v584, 1, v235) != 1)
      {
        sub_1000095E8(v345, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v204, v253, type metadata accessor for Actions.PlaybackContext);
    }

    v346 = &v253[*(v235 + 28)];
    sub_1000089F8(v346, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v347 = v600;
    }

    else
    {
      *&v640 = v132;
      v348 = v132;
      v349 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v349;
      *(&v640 + 1) = v350;
      v347 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v351 = swift_allocObject();
    *(v351 + 16) = xmmword_100EBDC20;
    *(v351 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v351 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v351 + 32) = 0x4D747865746E6F43;
    *(v351 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v351 + 72);
    v352 = static Player.CommandIssuer<>.combining(_:)();
    v354 = v353;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v352;
    *(&v640 + 1) = v354;
    sub_10006B010(&v640, v346, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v355;
    v625 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v356 = v608;
    sub_1000089F8(v599, v608, &unk_1011838D0);
    v357 = v607;
    sub_1000089F8(v598, v607, &unk_1011845D0);
    v358 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v359 = (v347 + v358 + 7) & 0xFFFFFFFFFFFFFFF8;
    v360 = (v359 + 15) & 0xFFFFFFFFFFFFFFF8;
    v361 = (*(v604 + 80) + v360 + 8) & ~*(v604 + 80);
    v362 = (v361 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v363 = (v361 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v364 = swift_allocObject();
    sub_100059A8C(&v638, v364 + 16);
    *(v364 + 56) = v631;
    sub_10012B828(&v640, v364 + 64);
    sub_10003D17C(v356, v364 + v358, &unk_1011838D0);
    *(v364 + v359) = v625;
    *(v364 + v360) = v628;
    sub_10003D17C(v357, v364 + v361, &unk_1011845D0);
    v365 = v364 + v362;
    v366 = v626;
    *v365 = v627;
    *(v365 + 8) = v366;
    *(v365 + 16) = 1;
    v367 = (v364 + v363);
    v368 = v630;
    *v367 = sub_10030B048;
    v367[1] = v368;
    swift_unknownObjectRetain();

    v369 = v609;
    UUID.init()();
    v370 = UUID.uuidString.getter();
    v372 = v371;
    (*(v610 + 8))(v369, v588);
    v664._countAndFlagsBits = v632;
    v664._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v664, v370, v372, sub_10021953C, v364, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v599, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v598, &unk_1011845D0);
    sub_1000095E8(v597, &unk_10118AB20);
    (*(v594 + 8))(v593, v595);
    goto LABEL_170;
  }

  if (v174 == enum case for GenericMusicItem.song(_:))
  {
    (*(v171 + 12))(v172, v173);
    v209 = v581;
    v208 = v582;
    v210 = v172;
    v211 = v583;
    (*(v582 + 32))(v581, v210, v583);
    sub_10010FC20(&unk_101183900);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_100EBC6B0;
    *(v212 + 56) = v211;
    *(v212 + 64) = &protocol witness table for Song;
    v213 = sub_10001C8B8((v212 + 32));
    (*(v208 + 16))(v213, v209, v211);
    v214 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v215 = v585;
    sub_1003090DC(v166, v585, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v215, 0, 1, v632);
    v216 = type metadata accessor for PlaylistContext();
    (*(*(v216 - 8) + 56))(v586, 1, 1, v216);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v217 = v587;
    sub_1003090DC(v603, v587, type metadata accessor for Actions.MetricsReportingContext);
    v218 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v218 - 8) + 56))(v217, 0, 1, v218);
    v219 = v568;
    sub_1000089F8(v633, v568, &qword_10118AB30);
    v220 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v630 = swift_allocObject();
    sub_10003D17C(v219, &v630[v220], &qword_10118AB30);
    sub_100008FE4(v212 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v221 = v574;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v221 = v574;
    }

    swift_getObjectType();
    v264 = swift_conformsToProtocol2();
    v265 = v632;
    if (v264)
    {
      v626 = v264;
      v266 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v314 = v313;
    sub_1000089F8(v585, v221, &unk_10118AB20);
    v315 = *(v629 + 6);
    if (v315(v221, 1, v265) == 1)
    {
      v316 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v317 = v570;
      (*(*(v316 - 8) + 56))(v570, 1, 1, v316);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v317, v569, &unk_1011838E0);
      v629 = v617;
      v318 = UIViewController.playActivityInformation.getter();
      v320 = v319;
      v322 = v321;
      v324 = v323;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v373 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v265 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v373;
          v389 = v373;
          v390 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v390;
          *(&v656 + 1) = v391;
          v265 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v569, v318, v320, v322, v324, &v656, v314);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v570, &unk_1011838E0);
      v392 = v574;
      if (v315(v574, 1, v265) != 1)
      {
        sub_1000095E8(v392, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v221, v314, type metadata accessor for Actions.PlaybackContext);
    }

    v393 = &v314[*(v265 + 28)];
    sub_1000089F8(v393, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v394 = v600;
    }

    else
    {
      *&v640 = v132;
      v395 = v132;
      v396 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v396;
      *(&v640 + 1) = v397;
      v394 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v398 = swift_allocObject();
    *(v398 + 16) = xmmword_100EBDC20;
    *(v398 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v398 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v398 + 32) = 0x4D747865746E6F43;
    *(v398 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v398 + 72);
    v399 = static Player.CommandIssuer<>.combining(_:)();
    v401 = v400;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v399;
    *(&v640 + 1) = v401;
    sub_10006B010(&v640, v393, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v402;
    v625 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v403 = v608;
    sub_1000089F8(v587, v608, &unk_1011838D0);
    v404 = v607;
    sub_1000089F8(v586, v607, &unk_1011845D0);
    v405 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v406 = (v394 + v405 + 7) & 0xFFFFFFFFFFFFFFF8;
    v407 = (v406 + 15) & 0xFFFFFFFFFFFFFFF8;
    v408 = (*(v604 + 80) + v407 + 8) & ~*(v604 + 80);
    v409 = (v408 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v410 = (v408 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v411 = swift_allocObject();
    sub_100059A8C(&v638, v411 + 16);
    *(v411 + 56) = v631;
    sub_10012B828(&v640, v411 + 64);
    sub_10003D17C(v403, v411 + v405, &unk_1011838D0);
    *(v411 + v406) = v625;
    *(v411 + v407) = v628;
    sub_10003D17C(v404, v411 + v408, &unk_1011845D0);
    v412 = v411 + v409;
    v413 = v626;
    *v412 = v627;
    *(v412 + 8) = v413;
    *(v412 + 16) = 1;
    v414 = (v411 + v410);
    v415 = v630;
    *v414 = sub_1003098C4;
    v414[1] = v415;
    swift_unknownObjectRetain();

    v416 = v609;
    UUID.init()();
    v417 = UUID.uuidString.getter();
    v419 = v418;
    (*(v610 + 8))(v416, v588);
    v665._countAndFlagsBits = v632;
    v665._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v665, v417, v419, sub_10021953C, v411, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v587, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v586, &unk_1011845D0);
    sub_1000095E8(v585, &unk_10118AB20);
    (*(v582 + 8))(v581, v583);
    goto LABEL_170;
  }

  if (v174 == enum case for GenericMusicItem.tvEpisode(_:))
  {
    (*(v171 + 12))(v172, v173);
    v238 = v571;
    v237 = v572;
    v239 = v172;
    v240 = v573;
    (*(v572 + 32))(v571, v239, v573);
    sub_10010FC20(&unk_101183900);
    v241 = swift_allocObject();
    *(v241 + 16) = xmmword_100EBC6B0;
    *(v241 + 56) = v240;
    *(v241 + 64) = sub_100309644(&unk_1011996E0, &type metadata accessor for TVEpisode);
    v242 = sub_10001C8B8((v241 + 32));
    (*(v237 + 16))(v242, v238, v240);
    v243 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v244 = v575;
    sub_1003090DC(v166, v575, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v244, 0, 1, v632);
    v245 = type metadata accessor for PlaylistContext();
    (*(*(v245 - 8) + 56))(v576, 1, 1, v245);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v246 = v577;
    sub_1003090DC(v603, v577, type metadata accessor for Actions.MetricsReportingContext);
    v247 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v247 - 8) + 56))(v246, 0, 1, v247);
    v248 = v558;
    sub_1000089F8(v633, v558, &qword_10118AB30);
    v249 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v630 = swift_allocObject();
    sub_10003D17C(v248, &v630[v249], &qword_10118AB30);
    sub_100008FE4(v241 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v250 = v564;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v250 = v564;
    }

    swift_getObjectType();
    v325 = swift_conformsToProtocol2();
    v326 = v632;
    if (v325)
    {
      v626 = v325;
      v327 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v375 = v374;
    sub_1000089F8(v575, v250, &unk_10118AB20);
    v376 = *(v629 + 6);
    if (v376(v250, 1, v326) == 1)
    {
      v377 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v378 = v560;
      (*(*(v377 - 8) + 56))(v560, 1, 1, v377);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v378, v559, &unk_1011838E0);
      v629 = v617;
      v379 = UIViewController.playActivityInformation.getter();
      v381 = v380;
      v383 = v382;
      v385 = v384;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v420 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v326 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v420;
          v436 = v420;
          v437 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v437;
          *(&v656 + 1) = v438;
          v326 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v559, v379, v381, v383, v385, &v656, v375);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v560, &unk_1011838E0);
      v439 = v564;
      if (v376(v564, 1, v326) != 1)
      {
        sub_1000095E8(v439, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v250, v375, type metadata accessor for Actions.PlaybackContext);
    }

    v440 = &v375[*(v326 + 28)];
    sub_1000089F8(v440, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v441 = v600;
    }

    else
    {
      *&v640 = v132;
      v442 = v132;
      v443 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v443;
      *(&v640 + 1) = v444;
      v441 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v445 = swift_allocObject();
    *(v445 + 16) = xmmword_100EBDC20;
    *(v445 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v445 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v445 + 32) = 0x4D747865746E6F43;
    *(v445 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v445 + 72);
    v446 = static Player.CommandIssuer<>.combining(_:)();
    v448 = v447;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v446;
    *(&v640 + 1) = v448;
    sub_10006B010(&v640, v440, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v449;
    v625 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v450 = v608;
    sub_1000089F8(v577, v608, &unk_1011838D0);
    v451 = v607;
    sub_1000089F8(v576, v607, &unk_1011845D0);
    v452 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v453 = (v441 + v452 + 7) & 0xFFFFFFFFFFFFFFF8;
    v454 = (v453 + 15) & 0xFFFFFFFFFFFFFFF8;
    v455 = (*(v604 + 80) + v454 + 8) & ~*(v604 + 80);
    v456 = (v455 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v457 = (v455 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v458 = swift_allocObject();
    sub_100059A8C(&v638, v458 + 16);
    *(v458 + 56) = v631;
    sub_10012B828(&v640, v458 + 64);
    sub_10003D17C(v450, v458 + v452, &unk_1011838D0);
    *(v458 + v453) = v625;
    *(v458 + v454) = v628;
    sub_10003D17C(v451, v458 + v455, &unk_1011845D0);
    v459 = v458 + v456;
    v460 = v626;
    *v459 = v627;
    *(v459 + 8) = v460;
    *(v459 + 16) = 1;
    v461 = (v458 + v457);
    v462 = v630;
    *v461 = sub_10030B048;
    v461[1] = v462;
    swift_unknownObjectRetain();

    v463 = v609;
    UUID.init()();
    v464 = UUID.uuidString.getter();
    v466 = v465;
    (*(v610 + 8))(v463, v588);
    v666._countAndFlagsBits = v632;
    v666._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v666, v464, v466, sub_10021953C, v458, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v577, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v576, &unk_1011845D0);
    sub_1000095E8(v575, &unk_10118AB20);
    (*(v572 + 8))(v571, v573);
    goto LABEL_170;
  }

  if (v174 == enum case for GenericMusicItem.uploadedAudio(_:))
  {
    (*(v171 + 12))(v172, v173);
    v268 = v561;
    v267 = v562;
    v269 = v172;
    v270 = v563;
    (*(v562 + 32))(v561, v269, v563);
    sub_10010FC20(&unk_101183900);
    v271 = swift_allocObject();
    *(v271 + 16) = xmmword_100EBC6B0;
    *(v271 + 56) = v270;
    *(v271 + 64) = sub_100309644(&qword_101181A58, &type metadata accessor for UploadedAudio);
    v272 = sub_10001C8B8((v271 + 32));
    (*(v267 + 16))(v272, v268, v270);
    v273 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v274 = v565;
    sub_1003090DC(v166, v565, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v274, 0, 1, v632);
    v275 = type metadata accessor for PlaylistContext();
    (*(*(v275 - 8) + 56))(v566, 1, 1, v275);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v276 = v567;
    sub_1003090DC(v603, v567, type metadata accessor for Actions.MetricsReportingContext);
    v277 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v277 - 8) + 56))(v276, 0, 1, v277);
    v278 = v548;
    sub_1000089F8(v633, v548, &qword_10118AB30);
    v279 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v630 = swift_allocObject();
    sub_10003D17C(v278, &v630[v279], &qword_10118AB30);
    sub_100008FE4(v271 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v280 = v554;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v280 = v554;
    }

    swift_getObjectType();
    v386 = swift_conformsToProtocol2();
    v387 = v632;
    if (v386)
    {
      v626 = v386;
      v388 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v422 = v421;
    sub_1000089F8(v565, v280, &unk_10118AB20);
    v423 = *(v629 + 6);
    if (v423(v280, 1, v387) == 1)
    {
      v424 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v425 = v550;
      (*(*(v424 - 8) + 56))(v550, 1, 1, v424);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v425, v549, &unk_1011838E0);
      v629 = v617;
      v426 = UIViewController.playActivityInformation.getter();
      v428 = v427;
      v430 = v429;
      v432 = v431;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v467 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v387 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v467;
          v480 = v467;
          v481 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v481;
          *(&v656 + 1) = v482;
          v387 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v549, v426, v428, v430, v432, &v656, v422);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v550, &unk_1011838E0);
      v483 = v554;
      if (v423(v554, 1, v387) != 1)
      {
        sub_1000095E8(v483, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v280, v422, type metadata accessor for Actions.PlaybackContext);
    }

    v484 = &v422[*(v387 + 28)];
    sub_1000089F8(v484, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v485 = v600;
    }

    else
    {
      *&v640 = v132;
      v486 = v132;
      v487 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v487;
      *(&v640 + 1) = v488;
      v485 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v489 = swift_allocObject();
    *(v489 + 16) = xmmword_100EBDC20;
    *(v489 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v489 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v489 + 32) = 0x4D747865746E6F43;
    *(v489 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v489 + 72);
    v490 = static Player.CommandIssuer<>.combining(_:)();
    v492 = v491;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v490;
    *(&v640 + 1) = v492;
    sub_10006B010(&v640, v484, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v493;
    v625 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v494 = v608;
    sub_1000089F8(v567, v608, &unk_1011838D0);
    v495 = v607;
    sub_1000089F8(v566, v607, &unk_1011845D0);
    v496 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v497 = (v485 + v496 + 7) & 0xFFFFFFFFFFFFFFF8;
    v498 = (v497 + 15) & 0xFFFFFFFFFFFFFFF8;
    v499 = (*(v604 + 80) + v498 + 8) & ~*(v604 + 80);
    v500 = (v499 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v501 = (v499 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v502 = swift_allocObject();
    sub_100059A8C(&v638, v502 + 16);
    *(v502 + 56) = v631;
    sub_10012B828(&v640, v502 + 64);
    sub_10003D17C(v494, v502 + v496, &unk_1011838D0);
    *(v502 + v497) = v625;
    *(v502 + v498) = v628;
    sub_10003D17C(v495, v502 + v499, &unk_1011845D0);
    v503 = v502 + v500;
    v504 = v626;
    *v503 = v627;
    *(v503 + 8) = v504;
    *(v503 + 16) = 1;
    v505 = (v502 + v501);
    v506 = v630;
    *v505 = sub_10030B048;
    v505[1] = v506;
    swift_unknownObjectRetain();

    v507 = v609;
    UUID.init()();
    v508 = UUID.uuidString.getter();
    v510 = v509;
    (*(v610 + 8))(v507, v588);
    v667._countAndFlagsBits = v632;
    v667._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v667, v508, v510, sub_10021953C, v502, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v567, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v566, &unk_1011845D0);
    sub_1000095E8(v565, &unk_10118AB20);
    (*(v562 + 8))(v561, v563);
    goto LABEL_170;
  }

  if (v174 == enum case for GenericMusicItem.uploadedVideo(_:))
  {
    (*(v171 + 12))(v172, v173);
    v329 = v551;
    v328 = v552;
    v330 = v172;
    v331 = v553;
    (*(v552 + 32))(v551, v330, v553);
    sub_10010FC20(&unk_101183900);
    v332 = swift_allocObject();
    *(v332 + 16) = xmmword_100EBC6B0;
    *(v332 + 56) = v331;
    *(v332 + 64) = sub_100309644(&unk_10118AB40, &type metadata accessor for UploadedVideo);
    v333 = sub_10001C8B8((v332 + 32));
    (*(v328 + 16))(v333, v329, v331);
    v334 = [v132 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v631 = v648;
    v335 = v555;
    sub_1003090DC(v166, v555, type metadata accessor for Actions.PlaybackContext);
    (*(v629 + 7))(v335, 0, 1, v632);
    v336 = type metadata accessor for PlaylistContext();
    (*(*(v336 - 8) + 56))(v556, 1, 1, v336);
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v652 = 1;
    v653 = 0;
    v655 = 0;
    v654 = 0;
    v337 = v557;
    sub_1003090DC(v603, v557, type metadata accessor for Actions.MetricsReportingContext);
    v338 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v338 - 8) + 56))(v337, 0, 1, v338);
    v339 = v544;
    sub_1000089F8(v633, v544, &qword_10118AB30);
    v340 = (*(v601 + 80) + 16) & ~*(v601 + 80);
    v630 = swift_allocObject();
    sub_10003D17C(v339, &v630[v340], &qword_10118AB30);
    sub_100008FE4(v332 + 32, v647);

    sub_1000089F8(&v648, &v640, &unk_1011845E0);
    if (v643 == 1)
    {
      v661 = 0;
      v659 = 0u;
      v660 = 0u;
      v662 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:)(v132, &v659, &v644);
      v341 = v547;
      if (v643 != 1)
      {
        sub_1000095E8(&v640, &unk_1011845E0);
      }
    }

    else
    {
      sub_10012B828(&v640, &v644);
      v341 = v547;
    }

    swift_getObjectType();
    v433 = swift_conformsToProtocol2();
    v434 = v632;
    if (v433)
    {
      v626 = v433;
      v435 = v132;
      v627 = v132;
    }

    else
    {
      v627 = 0;
      v626 = 0;
    }

    v628 = swift_allocBox();
    v469 = v468;
    sub_1000089F8(v555, v341, &unk_10118AB20);
    v470 = *(v629 + 6);
    if (v470(v341, 1, v434) == 1)
    {
      v471 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
      v472 = v546;
      (*(*(v471 - 8) + 56))(v546, 1, 1, v471);
      v642 = 0;
      v640 = 0u;
      v641 = 0u;
      sub_1000089F8(v472, v545, &unk_1011838E0);
      v629 = v617;
      v473 = UIViewController.playActivityInformation.getter();
      v475 = v474;
      v477 = v476;
      v479 = v478;
      sub_1000089F8(&v640, &v638, &unk_101183910);
      if (v639)
      {
        sub_100059A8C(&v638, &v656);
      }

      else
      {
        v637 = v132;
        sub_100009F78(0, &qword_101183D40);
        v511 = v132;
        sub_10010FC20(&unk_101183920);
        if (swift_dynamicCast())
        {
          sub_100059A8C(&v634, &v656);
          v434 = v632;
        }

        else
        {
          v636 = 0;
          v634 = 0u;
          v635 = 0u;
          *&v656 = v511;
          v512 = v511;
          v513 = String.init<A>(reflecting:)();
          *(&v657 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v658 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v656 = v513;
          *(&v656 + 1) = v514;
          v434 = v632;
          if (*(&v635 + 1))
          {
            sub_1000095E8(&v634, &unk_101183910);
          }
        }

        v132 = v615;
        if (v639)
        {
          sub_1000095E8(&v638, &unk_101183910);
        }
      }

      Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v629, v545, v473, v475, v477, v479, &v656, v469);
      sub_1000095E8(&v640, &unk_101183910);
      sub_1000095E8(v546, &unk_1011838E0);
      v515 = v547;
      if (v470(v547, 1, v434) != 1)
      {
        sub_1000095E8(v515, &unk_10118AB20);
      }
    }

    else
    {
      sub_100309144(v341, v469, type metadata accessor for Actions.PlaybackContext);
    }

    v516 = &v469[*(v434 + 28)];
    sub_1000089F8(v516, &v656, &unk_101183910);
    if (*(&v657 + 1))
    {
      sub_100059A8C(&v656, &v640);
      v517 = v600;
    }

    else
    {
      *&v640 = v132;
      v518 = v132;
      v519 = String.init<A>(reflecting:)();
      *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
      v642 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v640 = v519;
      *(&v640 + 1) = v520;
      v517 = v600;
      if (*(&v657 + 1))
      {
        sub_1000095E8(&v656, &unk_101183910);
      }
    }

    sub_10010FC20(&unk_101183930);
    v521 = swift_allocObject();
    *(v521 + 16) = xmmword_100EBDC20;
    *(v521 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v521 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v521 + 32) = 0x4D747865746E6F43;
    *(v521 + 40) = 0xEB00000000756E65;
    sub_100008FE4(&v640, v521 + 72);
    v522 = static Player.CommandIssuer<>.combining(_:)();
    v524 = v523;

    sub_10000959C(&v640);
    *(&v641 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v642 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v640 = v522;
    *(&v640 + 1) = v524;
    sub_10006B010(&v640, v516, &unk_101183910);
    sub_100008FE4(v647, &v640);
    sub_10010FC20(&unk_10118AB50);
    v632 = String.init<A>(describing:)();
    v629 = v525;
    v625 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008FE4(v647, &v638);
    sub_10012B7A8(&v644, &v640);
    v526 = v608;
    sub_1000089F8(v557, v608, &unk_1011838D0);
    v527 = v607;
    sub_1000089F8(v556, v607, &unk_1011845D0);
    v528 = (*(v605 + 80) + 160) & ~*(v605 + 80);
    v529 = (v517 + v528 + 7) & 0xFFFFFFFFFFFFFFF8;
    v530 = (v529 + 15) & 0xFFFFFFFFFFFFFFF8;
    v531 = (*(v604 + 80) + v530 + 8) & ~*(v604 + 80);
    v532 = (v531 + v606 + 7) & 0xFFFFFFFFFFFFFFF8;
    v533 = (v531 + v606 + 31) & 0xFFFFFFFFFFFFFFF8;
    v534 = swift_allocObject();
    sub_100059A8C(&v638, v534 + 16);
    *(v534 + 56) = v631;
    sub_10012B828(&v640, v534 + 64);
    sub_10003D17C(v526, v534 + v528, &unk_1011838D0);
    *(v534 + v529) = v625;
    *(v534 + v530) = v628;
    sub_10003D17C(v527, v534 + v531, &unk_1011845D0);
    v535 = v534 + v532;
    v536 = v626;
    *v535 = v627;
    *(v535 + 8) = v536;
    *(v535 + 16) = 1;
    v537 = (v534 + v533);
    v538 = v630;
    *v537 = sub_10030B048;
    v537[1] = v538;
    swift_unknownObjectRetain();

    v539 = v609;
    UUID.init()();
    v540 = UUID.uuidString.getter();
    v542 = v541;
    (*(v610 + 8))(v539, v588);
    v668._countAndFlagsBits = v632;
    v668._object = v629;
    ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v668, v540, v542, sub_100217D28, v534, &v656);
    swift_unknownObjectRelease();
    sub_10012BA6C(&v644);
    sub_10000959C(v647);

    ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v589, 0);

    v644 = v656;
    sub_100015BB0(&v644);
    v640 = v657;
    sub_100015BB0(&v640);

    sub_1000095E8(v557, &unk_1011838D0);
    sub_1000095E8(&v648, &unk_1011845E0);
    sub_1000095E8(v556, &unk_1011845D0);
    sub_1000095E8(v555, &unk_10118AB20);
    (*(v552 + 8))(v551, v553);
    goto LABEL_170;
  }

  sub_10030AD48(v166, type metadata accessor for Actions.PlaybackContext);
  sub_1000095E8(v633, &qword_10118AB30);
  (*(v171 + 1))(v172, v173);
}