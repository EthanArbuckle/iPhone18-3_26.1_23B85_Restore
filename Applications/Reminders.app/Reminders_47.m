void sub_1005258F4(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v12)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000079B4(v7, &qword_100772140);
    return;
  }

  (*(v9 + 32))(v11, v7, v8);
  v14 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  if (!*(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView))
  {
    goto LABEL_20;
  }

  [a2 locationInView:?];
  v15 = *(v3 + v14);
  if (v15)
  {
    v16 = [v15 hitTest:0 withEvent:?];
    if (v16 && (v17 = v16, type metadata accessor for TTRIRemindersListReminderCell_collectionView(), v18 = static TTRIRemindersListReminderCell_collectionView.ignoreDragging(view:)(), v17, (v18 & 1) != 0))
    {
      v19 = _swiftEmptyArrayStorage;
    }

    else
    {
      v20 = (v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
      v21 = *(v3 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v22 = v20[4];
      sub_10000C36C(v20, v21);
      v19 = (*(*(v22 + 8) + 552))(v11, v21);
    }

    if (v19 >> 62)
    {
      v24 = v19;
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v24;
      if (!v25)
      {
        goto LABEL_16;
      }
    }

    else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_16:

      (*(v9 + 8))(v11, v8);
      return;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v19 + 32);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
}

void sub_100525BF0()
{
  v1 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v8)
  {
    v9 = v8;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000079B4(v3, &qword_100772140);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
      sub_100309E08();
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100525DCC(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v141 = a1;
  v140 = sub_100058000(&unk_100784640);
  v136 = *(v140 - 8);
  __chkstk_darwin(v140);
  v135 = &v127 - v2;
  v3 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v3 - 8);
  v132 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v127 - v6;
  v138 = sub_100058000(&qword_10078A3D0);
  v142 = *(v138 - 8);
  __chkstk_darwin(v138);
  v128 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v133 = &v127 - v9;
  v10 = sub_100058000(&unk_100784650);
  __chkstk_darwin(v10 - 8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v127 - v14;
  v137 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v137);
  v17 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v127 - v19;
  v21 = type metadata accessor for TTRRemindersListViewModel.Item();
  v22 = *(v21 - 8);
  v143 = v21;
  v144 = v22;
  __chkstk_darwin(v21);
  v130 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v139 = &v127 - v25;
  __chkstk_darwin(v26);
  v134 = &v127 - v27;
  v28 = sub_100058000(&unk_100784660);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v131 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v127 - v32;
  v34 = sub_100058000(&qword_100769548);
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = &v127 - v37;
  (*(v35 + 16))(&v127 - v37, v145, v34, v36);
  v39 = (*(v35 + 88))(v38, v34);
  if (v39 != enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    v47 = v146;
    if (v39 != enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
    {
      if (v39 != enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
      {
        if (v39 == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
        {
          return 0;
        }

        goto LABEL_38;
      }

      (*(v35 + 96))(v38, v34);
      v58 = v131;
      (*(v29 + 32))(v131, v38, v28);
      v59 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
      if (v59)
      {
        v60 = v59;
        TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

        v61 = sub_100058000(&qword_100784670);
        v62 = (*(*(v61 - 8) + 48))(v12, 1, v61);
        v63 = v144;
        if (v62 == 1)
        {
          (*(v29 + 8))(v58, v28);
          sub_1000079B4(v12, &unk_100784650);
          return 0;
        }

        v103 = *&v12[*(v61 + 48)];
        v104 = v137;
        v105 = *(v137 + 48);
        v106 = *(v144 + 32);
        v107 = v12;
        v108 = v143;
        v106(v17, v107, v143);
        *&v17[v105] = v103;
        v109 = *&v17[*(v104 + 48)];
        v106(v130, v17, v108);
        sub_100058000(&unk_10078A3D8);
        v110 = TTRICollectionViewDragItemSources.dropSession.getter();
        if (v110)
        {
          v111 = [v110 items];
          swift_unknownObjectRelease();
          sub_100003540(0, &qword_10076BAC0);
          v112 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v112 = _swiftEmptyArrayStorage;
        }

        v121 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v122 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C((v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v121);
        (*(*(v122 + 8) + 616))(v147, v112, v121);

        v123 = v148;
        v124 = v149;
        sub_10000C36C(v147, v148);
        v125 = v130;
        v102 = (*(v124 + 32))(v130, v109, v123, v124);
        (*(v63 + 8))(v125, v108);
        (*(v29 + 8))(v131, v28);
        goto LABEL_30;
      }

LABEL_37:
      __break(1u);
LABEL_38:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      goto LABEL_39;
    }

    (*(v35 + 96))(v38, v34);
    v49 = v135;
    v48 = v136;
    v50 = v140;
    (*(v136 + 32))(v135, v38, v140);
    v51 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (v51)
    {
      v52 = v51;
      v53 = v132;
      TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

      v54 = v143;
      v55 = v144;
      v56 = (*(v144 + 48))(v53, 1, v143);
      v57 = v142;
      if (v56 == 1)
      {
        (*(v48 + 8))(v49, v50);
        sub_1000079B4(v53, &qword_100772140);
        return 0;
      }

      v85 = (*(v55 + 32))(v139, v53, v54);
      __chkstk_darwin(v85);
      *(&v127 - 2) = v47;
      sub_100058000(&unk_10078A3D8);
      v86 = v128;
      TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
      v87 = v86;
      v88 = v138;
      v89 = (*(v57 + 88))(v86, v138);
      if (v89 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
      {
        (*(v57 + 96))(v86, v88);
        v90 = *v86;
        v91 = (v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
        v92 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v93 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C(v91, v92);
        v94 = *(*(v93 + 8) + 592);
        v95 = v139;
        v96 = v94(v90, v139, v92);

        (*(v55 + 8))(v95, v54);
        (*(v48 + 8))(v49, v140);
        v83 = (v96 & 1) == 0;
LABEL_19:
        if (v83)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      v113 = v140;
      if (v89 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
      {
        (*(v57 + 96))(v87, v88);
        v114 = *v87;
        v115 = (v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter);
        v116 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v117 = *(v47 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C(v115, v116);
        (*(*(v117 + 8) + 616))(v147, v114, v116);

        v118 = v148;
        v119 = v149;
        sub_10000C36C(v147, v148);
        v120 = v139;
        v102 = (*(v119 + 16))(v139, v118, v119);
        (*(v55 + 8))(v120, v54);
        (*(v48 + 8))(v49, v113);
        goto LABEL_30;
      }

LABEL_39:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  (*(v35 + 96))(v38, v34);
  (*(v29 + 32))(v33, v38, v28);
  v40 = v146;
  v41 = *(v146 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (!v41)
  {
    __break(1u);
    goto LABEL_36;
  }

  v42 = v29;
  v43 = v41;
  TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

  v44 = sub_100058000(&qword_100784670);
  v45 = (*(*(v44 - 8) + 48))(v15, 1, v44);
  v46 = v144;
  if (v45 == 1)
  {
    (*(v42 + 8))(v33, v28);
    sub_1000079B4(v15, &unk_100784650);
    return 0;
  }

  v140 = v42;
  v145 = v28;
  v64 = *&v15[*(v44 + 48)];
  v65 = v137;
  v66 = *(v137 + 48);
  v67 = *(v144 + 32);
  v68 = v15;
  v69 = v143;
  v67(v20, v68, v143);
  *&v20[v66] = v64;
  v70 = *&v20[*(v65 + 48)];
  v71 = v134;
  v72 = (v67)(v134, v20, v69);
  v73 = v69;
  __chkstk_darwin(v72);
  *(&v127 - 2) = v40;
  sub_100058000(&unk_10078A3D8);
  v74 = v133;
  TTRICollectionViewDragItemSources.draggedItemsForValidation<A>(transformItemID:)();
  v75 = v142;
  v76 = v138;
  v77 = (*(v142 + 88))(v74, v138);
  if (v77 == enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.local<A><A1>(_:))
  {
    (*(v75 + 96))(v74, v76);
    v78 = *v74;
    v79 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v80 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v79);
    v81 = v129;
    (*(v46 + 16))(v129, v71, v73);
    (*(v46 + 56))(v81, 0, 1, v73);
    v82 = (*(*(v80 + 8) + 576))(v78, v81, v70, v79);

    sub_1000079B4(v81, &qword_100772140);
    (*(v46 + 8))(v71, v73);
    (*(v140 + 8))(v33, v145);
    v83 = (v82 & 1) == 0;
    goto LABEL_19;
  }

  if (v77 != enum case for TTRICollectionViewDragItemSources.DraggedItemsForValidation.external<A><A1>(_:))
  {
    goto LABEL_38;
  }

  (*(v75 + 96))(v74, v76);
  v97 = *v74;
  v98 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v99 = *(v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
  sub_10000C36C((v40 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v98);
  (*(*(v99 + 8) + 616))(v147, v97, v98);

  v100 = v148;
  v101 = v149;
  sub_10000C36C(v147, v148);
  v102 = (*(v101 + 8))(v71, v70, v100, v101);
  (*(v46 + 8))(v71, v73);
  (*(v140 + 8))(v33, v145);
LABEL_30:
  if (v102)
  {
    v126 = 2;
  }

  else
  {
    v126 = 0;
  }

  sub_100004758(v147);
  return v126;
}

uint64_t sub_100526D28(char *a1)
{
  v196 = sub_100058000(&qword_10078A3B8);
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v191 - v3;
  v212 = sub_100058000(&unk_100784640);
  v220 = *(v212 - 8);
  __chkstk_darwin(v212);
  v213 = &v191 - v4;
  v5 = sub_100058000(&qword_1007818D8);
  __chkstk_darwin(v5 - 8);
  v224 = (&v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v223 = &v191 - v8;
  v227 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v210 = *(v227 - 8);
  __chkstk_darwin(v227);
  v193 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v225 = &v191 - v11;
  v200 = sub_100058000(&qword_10078A3C0);
  v199 = *(v200 - 8);
  __chkstk_darwin(v200);
  v192 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v198 = &v191 - v14;
  v15 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v15 - 8);
  v209 = &v191 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v203 = &v191 - v18;
  v19 = sub_100058000(&qword_10078A3C8);
  v215 = *(v19 - 8);
  v216 = v19;
  __chkstk_darwin(v19);
  v202 = (&v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v214 = &v191 - v22;
  v23 = sub_100058000(&unk_100784650);
  __chkstk_darwin(v23 - 8);
  v201 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v191 - v26;
  v211 = sub_100058000(&unk_100781910);
  __chkstk_darwin(v211);
  v197 = &v191 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v208 = &v191 - v30;
  v31 = type metadata accessor for TTRRemindersListViewModel.Item();
  v219 = *(v31 - 8);
  __chkstk_darwin(v31);
  v204 = &v191 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v221 = &v191 - v34;
  __chkstk_darwin(v35);
  v222 = (&v191 - v36);
  __chkstk_darwin(v37);
  v217 = &v191 - v38;
  v39 = sub_100058000(&unk_100784660);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v207 = &v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v191 - v43;
  v45 = sub_100058000(&qword_100769548);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = &v191 - v47;
  v228 = a1;
  TTRICollectionViewDropCommitCoordinator.destination.getter();
  result = (*(v46 + 88))(v48, v45);
  v226 = v31;
  if (result == enum case for TTRTreeViewDropDestination.insertAt<A, B>(_:))
  {
    (*(v46 + 96))(v48, v45);
    (*(v40 + 32))(v44, v48, v39);
    v50 = v218;
    v51 = *(v218 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    if (!v51)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v52 = v51;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

    v53 = sub_100058000(&qword_100784670);
    v54 = (*(*(v53 - 8) + 48))(v27, 1, v53);
    v55 = v226;
    if (v54 == 1)
    {
      (*(v40 + 8))(v44, v39);
      v56 = &unk_100784650;
      v57 = v27;
      return sub_1000079B4(v57, v56);
    }

    v213 = v44;
    v206 = v39;
    v205 = v40;
    v74 = *&v27[*(v53 + 48)];
    v75 = v211;
    v76 = *(v211 + 48);
    v77 = v50;
    v79 = v219 + 32;
    v78 = *(v219 + 4);
    v80 = v208;
    v81 = v217;
    (v78)(v208, v27, v226);
    *&v80[v76] = v74;
    v82 = *&v80[*(v75 + 48)];
    v220 = v78;
    v221 = v79;
    v83 = (v78)(v81, v80, v55);
    __chkstk_darwin(v83);
    *(&v191 - 2) = v77;
    v84 = v214;
    TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
    v85 = v215;
    v86 = v216;
    v87 = (*(v215 + 88))(v84, v216);
    if (v87 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
    {
      (*(v85 + 96))(v84, v86);
      v88 = v55;
      v90 = *v84;
      v89 = *(v84 + 1);
      v91 = v77 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
      v92 = v82;
      v94 = *(v77 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v93 = *(v91 + 4);
      sub_10000C36C(v91, v94);
      v95 = v219;
      v96 = v203;
      (*(v219 + 2))(v203, v217, v88);
      (*(v95 + 7))(v96, 0, 1, v88);
      (*(*(v93 + 8) + 600))(v89, v96, v92, 0, 0, v94);

      sub_1000079B4(v96, &qword_100772140);
      v97 = *(v90 + 2);
      if (v97)
      {
        v98 = v199 + 16;
        v99 = *(v199 + 16);
        v100 = *(v199 + 80);
        v222 = v90;
        v101 = &v90[(v100 + 32) & ~v100];
        v223 = *(v199 + 72);
        v224 = v99;
        v102 = (v199 + 8);
        v103 = (v210 + 8);
        v104 = v225;
        v105 = v200;
        v106 = v198;
        do
        {
          v107 = v98;
          v224(v106, v101, v105);
          v108 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
          TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
          (*v102)(v106, v105);
          TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

          (*v103)(v104, v227);
          v98 = v107;
          v101 += v223;
          --v97;
        }

        while (v97);

        v95 = v219;
      }

      else
      {
      }

      v184 = v206;
      (*(v95 + 1))(v217, v226);
      return (*(v205 + 8))(v213, v184);
    }

    v133 = v219;
    if (v87 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      v134 = v214;
      (*(v215 + 96))(v214, v86);
      v135 = *v134;
      v136 = v77 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
      v138 = *(v77 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v137 = *(v136 + 4);
      sub_10000C36C(v136, v138);
      (*(*(v137 + 8) + 616))(&v229, v135, v138);

      v139 = v230;
      v140 = v231;
      sub_10000C36C(&v229, v230);
      v65 = (*(v140 + 48))(v217, v82, v139, v140);
      i = 0;
      v48 = *(v65 + 16);
      v218 = (v210 + 8);
      v219 = v133 + 8;
      v142 = &unk_1007818F0;
      v143 = v224;
      if (v48)
      {
        goto LABEL_31;
      }

LABEL_34:
      v152 = sub_100058000(v142);
      (*(*(v152 - 8) + 56))(v143, 1, 1, v152);
      for (i = v48; ; ++i)
      {
        v153 = v143;
        v154 = v223;
        sub_100016588(v153, v223, &qword_1007818D8);
        v155 = sub_100058000(v142);
        if ((*(*(v155 - 8) + 48))(v154, 1, v155) == 1)
        {

          (*v219)(v217, v226);
          (*(v205 + 8))(v213, v206);
          return sub_100004758(&v229);
        }

        v144 = *v154;
        v139 = v222;
        v145 = v142;
        v146 = v65;
        v147 = v226;
        (v220)(v222, v154 + *(v155 + 48), v226);
        v148 = v225;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        TTRICollectionViewDropCommitCoordinator.drop(_:toItem:)();

        (*v218)(v148, v227);
        v149 = v147;
        v65 = v146;
        v142 = v145;
        v143 = v224;
        (*v219)(v139, v149);
        if (i == v48)
        {
          goto LABEL_34;
        }

LABEL_31:
        if ((i & 0x8000000000000000) != 0)
        {
          break;
        }

        if (i >= *(v65 + 16))
        {
          goto LABEL_57;
        }

        v150 = sub_100058000(v142);
        v151 = *(v150 - 8);
        sub_10000794C(v65 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * i, v143, v142);
        (*(v151 + 56))(v143, 0, 1, v150);
      }

      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    goto LABEL_66;
  }

  v58 = v218;
  v205 = v40;
  v206 = v39;
  if (result == enum case for TTRTreeViewDropDestination.insertInto<A, B>(_:))
  {
    (*(v46 + 96))(v48, v45);
    v59 = v220;
    v60 = v213;
    v45 = v212;
    v220[4](v213, v48, v212);
    v61 = *(v58 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
    v27 = v219;
    if (!v61)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v62 = v61;
    v63 = v209;
    TTRICollectionViewTreeBackedDiffableDataSource.targetParent(for:)();

    a1 = v63;
    v1 = v226;
    v64 = (*(v27 + 6))(v63, 1, v226);
    v48 = v225;
    v65 = v227;
    v46 = v216;
    if (v64 == 1)
    {
      (v59[1])(v60, v45);
      v56 = &qword_100772140;
      v57 = a1;
      return sub_1000079B4(v57, v56);
    }
  }

  else
  {
    v65 = v219;
    if (result == enum case for TTRTreeViewDropDestination.copyToAround<A, B>(_:))
    {
      (*(v46 + 96))(v48, v45);
      v66 = v205;
      v67 = v207;
      v68 = v206;
      (*(v205 + 32))(v207, v48, v206);
      v69 = *(v58 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
      v70 = v226;
      if (v69)
      {
        v71 = v69;
        v72 = v201;
        TTRICollectionViewTreeBackedDiffableDataSource.targetParentAndUnadjustedIndex(for:)();

        v73 = sub_100058000(&qword_100784670);
        if ((*(*(v73 - 8) + 48))(v72, 1, v73) == 1)
        {
          (*(v66 + 8))(v67, v68);
          v56 = &unk_100784650;
          v57 = v72;
          return sub_1000079B4(v57, v56);
        }

        v156 = *&v72[*(v73 + 48)];
        v157 = v211;
        v158 = *(v211 + 48);
        v159 = *(v65 + 32);
        v160 = v197;
        v159(v197, v72, v70);
        *&v160[v158] = v156;
        v161 = *&v160[*(v157 + 48)];
        v162 = v160;
        v163 = v70;
        v159(v204, v162, v70);
        v164 = TTRICollectionViewDropCommitCoordinator.items.getter();
        v165 = *(v164 + 16);
        if (v165)
        {
          v227 = v161;
          v229 = _swiftEmptyArrayStorage;
          specialized ContiguousArray.reserveCapacity(_:)();
          v228 = *(v195 + 16);
          v166 = *(v195 + 80);
          v225 = v164;
          v167 = v164 + ((v166 + 32) & ~v166);
          v168 = *(v195 + 72);
          v169 = (v195 + 8);
          v170 = v196;
          v171 = v194;
          do
          {
            (v228)(v171, v167, v170);
            TTRICollectionViewDropCommitCoordinator.DropItem.dragItem.getter();
            (*v169)(v171, v170);
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v167 += v168;
            --v165;
          }

          while (v165);

          v172 = v229;
          v163 = v226;
          v161 = v227;
          v65 = v219;
        }

        else
        {

          v172 = _swiftEmptyArrayStorage;
        }

        v185 = v206;
        v186 = *(v218 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
        v187 = *(v218 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
        sub_10000C36C((v218 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v186);
        (*(*(v187 + 8) + 616))(&v229, v172, v186);

        v188 = v230;
        v189 = v231;
        sub_10000C36C(&v229, v230);
        v190 = v204;
        (*(v189 + 72))(v204, v161, v188, v189);
        (*(v65 + 8))(v190, v163);
        (*(v205 + 8))(v207, v185);
        return sub_100004758(&v229);
      }

      goto LABEL_65;
    }

    if (result == enum case for TTRTreeViewDropDestination.unknown<A, B>(_:))
    {
      return result;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  v109 = (*(v27 + 4))(v221, a1, v1);
  v110 = v58;
  __chkstk_darwin(v109);
  *(&v191 - 2) = v58;
  v111 = v202;
  TTRICollectionViewDropCommitCoordinator.draggedItemsForCommitting<A>(transformItemID:)();
  v112 = v215;
  v113 = (*(v215 + 88))(v111, v46);
  if (v113 != enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.local<A><A1>(_:))
  {
    if (v113 == enum case for TTRICollectionViewDropCommitCoordinator.DraggedItemsForCommitting.external<A><A1>(_:))
    {
      (*(v112 + 96))(v111, v46);
      v173 = *v111;
      v174 = *(v58 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v175 = *(v58 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((v58 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v174);
      (*(*(v175 + 8) + 616))(&v229, v173, v174);

      v176 = v230;
      v177 = v231;
      sub_10000C36C(&v229, v230);
      v178 = (*(v177 + 56))(v221, v176, v177);
      v139 = v178;
      if (!(v178 >> 62))
      {
        v179 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v179)
        {
LABEL_59:

          (*(v219 + 1))(v221, v226);
          (v220[1])(v213, v212);
          return sub_100004758(&v229);
        }

        goto LABEL_44;
      }

LABEL_58:
      v179 = _CocoaArrayWrapper.endIndex.getter();
      if (!v179)
      {
        goto LABEL_59;
      }

LABEL_44:
      if (v179 >= 1)
      {
        v180 = 0;
        v181 = (v210 + 8);
        do
        {
          if ((v139 & 0xC000000000000001) != 0)
          {
            v182 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v182 = *(v139 + 8 * v180 + 32);
          }

          v183 = v182;
          ++v180;
          TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
          TTRICollectionViewDropCommitCoordinator.drop(_:intoCenterOfItem:)();

          (*v181)(v48, v65);
        }

        while (v179 != v180);
        goto LABEL_59;
      }

      __break(1u);
      goto LABEL_63;
    }

LABEL_66:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v112 + 96))(v111, v46);
  v115 = *v111;
  v114 = v111[1];
  v116 = v110 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter;
  v117 = *(v110 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
  v118 = *(v116 + 4);
  sub_10000C36C(v116, v117);
  v119 = v221;
  v120 = (*(*(v118 + 8) + 608))(v114, v221, v117);

  if ((v120 & 1) != 0 && (v121 = v115[2]) != 0)
  {
    v122 = *(v199 + 16);
    v123 = *(v199 + 80);
    v218 = v115;
    v124 = v115 + ((v123 + 32) & ~v123);
    v223 = *(v199 + 72);
    v224 = v122;
    v222 = (v199 + 8);
    v125 = (v210 + 8);
    v126 = v200;
    v127 = v193;
    v128 = v192;
    do
    {
      v224(v128, v124, v126);
      v129 = TTRICollectionViewDropCommitCoordinator.LocalDropItem.dragItem.getter();
      TTRICollectionViewDropCommitCoordinator.LocalDropItem.sourceItemID.getter();
      (*v222)(v128, v126);
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      TTRICollectionViewDropCommitCoordinator.drop(_:toItem:orIntoCenterOfItem:)();

      v130 = *v125;
      v131 = v227;
      (*v125)(v127, v227);
      v130(v48, v131);
      v124 += v223;
      v121 = (v121 - 1);
    }

    while (v121);

    v1 = v226;
    v132 = v219;
    v45 = v212;
    v119 = v221;
  }

  else
  {

    v132 = v219;
  }

  v132[1](v119, v1);
  return (v220[1])(v213, v45);
}

void *sub_100528550()
{
  v1 = OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView;
  result = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (([result hasActiveDrag] & 1) == 0)
  {
    result = *(v0 + v1);
    if (result)
    {
      [result hasActiveDrop];
      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return result;
  }

LABEL_5:
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24));
  type metadata accessor for TTRIRemindersListCellPresentationStatesPresenterCapability();

  dispatch thunk of TTRIRemindersListCellPresentationContext.requestHandleDragAndDropActiveStateChange(_:)();
}

void sub_100528614()
{
  v1 = sub_100058000(&qword_100772738);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_diffableDataSource);
  if (v11)
  {
    v12 = v11;
    TTRICollectionViewTreeBackedDiffableDataSource.item(withID:)();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      v13 = &qword_100772140;
      v14 = v6;
LABEL_6:
      sub_1000079B4(v14, v13);
      return;
    }

    (*(v8 + 32))(v10, v6, v7);
    v15 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
    v16 = *(v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
    sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v15);
    (*(*(v16 + 8) + 512))(v10, v15);
    v17 = type metadata accessor for TTRRemindersListViewModel.Reminder();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v3, 1, v17) == 1)
    {
      (*(v8 + 8))(v10, v7);
      v13 = &qword_100772738;
      v14 = v3;
      goto LABEL_6;
    }

    TTRRemindersListViewModel.Reminder.title.getter();
    (*(v8 + 8))(v10, v7);
    (*(v18 + 8))(v3, v17);
  }

  else
  {
    __break(1u);
  }
}

id sub_100528930(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_10052893C(void *a1, void *a2, char a3)
{
  if (a1)
  {

    sub_1003DE74C(a2, a3 & 1);
  }
}

uint64_t sub_100528984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1005289E4()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_collectionView);
  if (result)
  {
    return [result setEditing:0];
  }

  __break(1u);
  return result;
}

uint64_t sub_100528A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_100058000(&unk_10078A498) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_100058000(&qword_10078A490) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_100058000(&qword_10078A480) - 8);
  v14 = *(v13 + 80);
  v15 = (v11 + v12 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = (v16 + v14 + v15) & ~v14;
  v18 = *(sub_100058000(&qword_10078A488) - 8);
  v19 = (v17 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = *(v18 + 64);
  v21 = *(sub_100058000(&qword_10078A478) - 8);
  return sub_1005158AC(a1, a2, a3, *(v3 + 16), v3 + v8, v3 + v11, v3 + v15, v3 + v17, v3 + v19, v3 + ((v19 + v20 + *(v21 + 80)) & ~*(v21 + 80)));
}

uint64_t sub_100528CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100058000(&qword_10077FBE0);
  sub_100058000(&unk_10078A468);

  return sub_1005161FC(a1, a2, a3, a4);
}

uint64_t sub_100528E80(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100528E98()
{
  result = qword_10078A4B0;
  if (!qword_10078A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078A4B0);
  }

  return result;
}

uint64_t sub_100528EEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100528F1C(void (*a1)(void), uint64_t a2)
{

  a1(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

id sub_100528FF0(uint64_t *a1, void **a2, uint64_t a3, int a4, void *a5)
{
  v120 = a5;
  LODWORD(v116) = a4;
  v129 = a3;
  v127 = a1;
  v6 = type metadata accessor for TTRRemindersListLayout();
  v124 = *(v6 - 8);
  v125 = v6;
  v7 = __chkstk_darwin(v6);
  v104 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v126 = &v103 - v10;
  v11 = __chkstk_darwin(v9);
  v103 = &v103 - v12;
  __chkstk_darwin(v11);
  v123 = &v103 - v13;
  v14 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v15 = __chkstk_darwin(v14 - 8);
  v118 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v119 = &v103 - v17;
  v117 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v117);
  v135 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRListType.SortingCapability();
  v133 = *(v19 - 8);
  v134 = v19;
  v20 = __chkstk_darwin(v19);
  *&v113 = &v103 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v103 - v22;
  v114 = type metadata accessor for TTRRemindersListDefaultListType();
  v112 = *(v114 - 1);
  __chkstk_darwin(v114);
  v111 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v109);
  v110 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v115 = (&v103 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v108 = type metadata accessor for REMHashtagLabelSpecifier();
  v27 = *(v108 - 1);
  __chkstk_darwin(v108);
  v29 = &v103 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v30 = *(v131 - 8);
  v31 = __chkstk_darwin(v131);
  v33 = &v103 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v130 = &v103 - v34;
  v35 = type metadata accessor for REMSmartList.NonCustom();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v103 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a2;
  v39 = *a2;
  (*(v36 + 104))(v38, enum case for REMSmartList.NonCustom.tagged(_:), v35);
  v40 = REMStore.fetchOrCreateNonCustomSmartList(withType:)();
  (*(v36 + 8))(v38, v35);
  if (v40)
  {
    v41 = sub_100174F2C();
    v42 = &protocol witness table for REMSmartList;
    v43 = v40;
  }

  else
  {
    v43 = 0;
    v41 = 0;
    v42 = 0;
    v141[2] = 0;
    v141[1] = 0;
  }

  v141[4] = v42;
  v106 = v40 != 0;
  v141[3] = v41;
  v141[0] = v40;
  v107 = v43;
  static REMRemindersListDataView.SortingStyle.fallbackForTaggedSmartList.getter();
  v44 = v130;
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v45 = v131;
  v121 = *(v30 + 8);
  v122 = v30 + 8;
  v121(v33, v131);
  sub_1000079B4(v141, &unk_100775680);
  (*(v27 + 16))(v29, v129, v108);
  v46 = *(v30 + 16);
  v46(v33, v44, v45);
  type metadata accessor for TTRShowTaggedDataModelSource();
  swift_allocObject();
  v108 = v40;
  v47 = v39;
  v129 = TTRShowTaggedDataModelSource.init(store:initialHashtagLabels:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v105 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters;
  v48 = v115;
  sub_10010BD5C(v128, v115, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v141[0] = &_swiftEmptyArrayStorage;
  sub_10052A4B8(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218);
  sub_10010BA44();
  v49 = v110;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v111;
  (*(v112 + 104))(v111, enum case for TTRRemindersListDefaultListType.cloudKitOnly(_:), v114);
  sub_10007786C(v48, v49, v50, v141);
  v46(v33, v44, v45);
  v51 = v132;
  TTRListType.SortingCapability.init(canChangeSortingStyle:canSortByManual:initialSortingStyle:)();
  v52 = v141[0];
  v53 = v113;
  (*(v133 + 16))(v113, v51, v134);
  type metadata accessor for TTRShowTaggedViewModelSource();
  v54 = swift_allocObject();
  v55 = v107;
  v56 = v129;

  v114 = v52;
  v57 = sub_10052A048(v108, v56, v114, v53, 0, (v116 & 1) == 0, v54);
  v116 = v55;

  v58 = v105;
  sub_10010BD5C(v128, v48, v105);
  sub_10010BCAC(v141, v138);
  v59 = sub_10052A4B8(&qword_100781128, type metadata accessor for TTRShowTaggedViewModelSource);
  v60 = v135;
  sub_10010BD5C(v48, v135, v58);
  v61 = v117;
  sub_10010BCAC(v138, v60 + *(v117 + 20));
  v62 = (v60 + *(v61 + 24));
  *v62 = v57;
  v62[1] = v59;
  v63 = v138[0];
  sub_100058000(&qword_10076C230);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v140, v137, &qword_100769608);
  v65 = *(v137[5] + 8);
  *(v64 + 32) = v137[4];
  *(v64 + 40) = v65;
  sub_10000794C(&v139, v136, &qword_100769600);
  swift_retain_n();
  v66 = v63;
  swift_unknownObjectRelease();
  *(v64 + 48) = v136[3];
  sub_100004758(v136);
  sub_100004758(v137);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v67 = swift_allocObject();
  v68 = sub_1003A8A18(v66, v57, v64, v67);
  v128 = v57;

  sub_10010BD08(v138);
  sub_10010BE0C(v48, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v69 = *(v61 + 28);
  v115 = v68;
  *(v60 + v69) = v68;
  v70 = v119;
  sub_100078BBC(v119);
  v117 = type metadata accessor for TTRIShowTaggedPresenter();
  v71 = swift_allocObject();
  v72 = (v71 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_dataModelSource);
  *v72 = v56;
  v72[1] = &protocol witness table for TTRShowTaggedDataModelSource;
  v113 = *(v70 + 104);
  *(v71 + OBJC_IVAR____TtC9Reminders23TTRIShowTaggedPresenter_hashtagAssociationModule) = v113;
  v73 = v118;
  sub_10010BD5C(v70, v118, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v74 = v120;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v75 = sub_1003A56E4(v73, v74, v71);
  sub_10010BE0C(v70, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v76 = *(v75 + 144);
  ObjectType = swift_getObjectType();
  v78 = *(v76 + 112);

  if (v78(ObjectType, v76))
  {
    swift_getObjectType();
    v79 = v103;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v80 = v123;
    v81 = v124;
    v82 = v125;
    (*(v124 + 32))(v123, v79, v125);
  }

  else
  {
    v80 = v123;
    v81 = v124;
    v82 = v125;
    (*(v124 + 104))(v123, enum case for TTRRemindersListLayout.list(_:), v125);
  }

  v120 = sub_1003A4A1C(v80, v75);
  v123 = v83;
  v85 = v84;
  v87 = v86;
  (*(v81 + 8))(v80, v82);
  v124 = swift_getObjectType();
  v125 = v85;
  *(v75 + 24) = *(v87 + 8);
  swift_unknownObjectWeakAssign();
  v88 = *(v75 + 144);
  v89 = swift_getObjectType();
  v90 = *(v88 + 112);

  if (v90(v89, v88))
  {
    swift_getObjectType();
    v91 = v104;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v92 = v126;
    (*(v81 + 32))(v126, v91, v82);
  }

  else
  {

    v92 = v126;
    (*(v81 + 104))(v126, enum case for TTRRemindersListLayout.list(_:), v82);
  }

  v93 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v94 = v120;
  v95 = sub_1003A8A4C(v75, v94, v123, v92, 0, 1, 0, v93);

  v96 = *(v87 + 32);
  v97 = v95;
  v96(v95, &off_100723D78, v124, v87);
  sub_10052A4B8(&qword_10078A510, type metadata accessor for TTRIShowTaggedPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10052A4B8(&qword_10078A518, type metadata accessor for TTRShowTaggedViewModelSource);

  v98 = v97;
  dispatch thunk of TTRShowTaggedDataModelSource.delegate.setter();

  sub_10056FEB0(v99, &off_10071A9B0);

  v115[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v142, v138, &qword_100769600);
  v100 = v138[4];
  swift_unknownObjectRelease();
  *(v100 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v138);
  sub_10000794C(&v143, v138, &qword_100769608);
  swift_getObjectType();
  sub_10052A4B8(&qword_10078A520, type metadata accessor for TTRIShowTaggedPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v138);
  v101 = v127;
  v127[3] = v117;
  v101[4] = &off_100720998;

  swift_unknownObjectRelease();
  *v101 = v75;
  (*(v133 + 8))(v132, v134);
  v121(v130, v131);
  sub_10010BE0C(v135, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v141);
  return v98;
}

id TTRIShowTaggedAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTaggedAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowTaggedAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowTaggedAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052A048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6, void *a7)
{
  v42 = a6;
  v43 = a3;
  v12 = *a7;
  v45 = a4;
  v46 = v12;
  v47 = type metadata accessor for REMAnalyticsEvent();
  v13 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v16 - 8);
  v18 = &v41[-v17];
  v44 = type metadata accessor for TTRListType.SortingCapability();
  v19 = *(v44 - 8);
  __chkstk_darwin(v44);
  v21 = &v41[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  v22 = OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_smartList) = 0;
  v23 = a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_completedRemindersCount;
  *v23 = 0;
  v23[8] = 1;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a7 + v22) = a1;
  v24 = (a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_taggedDataModelSource);
  *v24 = a2;
  v24[1] = &protocol witness table for TTRShowTaggedDataModelSource;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_hasDefaultNewReminderButtonWhenSelectingAllTags) = a5;
  *(a7 + OBJC_IVAR____TtC9Reminders28TTRShowTaggedViewModelSource_canShowHashtagLabelSelector) = v42;
  (*(v19 + 16))(v21, a4);
  v25 = a1;

  v27 = sub_1003A649C(v26, v43, v21, a7);

  sub_10016D8C4(v18);
  v28 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v28 - 8) + 56))(v18, 0, 1, v28);
  sub_10056F540(v18);
  sub_1000079B4(v18, &unk_10078A380);
  type metadata accessor for TTRUserDefaults();
  v29 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v30 = sub_100058000(&qword_100770980);
  v31 = &v15[*(v30 + 48)];
  v32 = &v15[*(v30 + 80)];
  v33 = enum case for REMRemindersOpenUserOperation.SmartListType.tagged(_:);
  v34 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v34 - 8) + 104))(v15, v33, v34);
  v35 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v36 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v36 - 8) + 104))(v15, v35, v36);
  *v31 = TTRUserDefaults.activitySessionId.getter();
  v31[1] = v37;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v32 = _typeName(_:qualified:)();
  v32[1] = v38;
  v39 = v47;
  (*(v13 + 104))(v15, enum case for REMAnalyticsEvent.openListUserOperation(_:), v47);
  REMAnalyticsManager.post(event:)();

  (*(v19 + 8))(v45, v44);
  (*(v13 + 8))(v15, v39);
  return v27;
}

uint64_t sub_10052A4B8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10052A560(char a1)
{
  v1[qword_10078A558] = 0;
  if ((a1 & 1) == 0)
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1003DA560;
    *(v5 + 24) = v4;
    v9[4] = sub_100026410;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100026440;
    v9[3] = &unk_10072D798;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation:v6];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
    goto LABEL_8;
  }

  result = *&v1[qword_10078A540];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return [result performBatchUpdates:0 completion:0];
}

void sub_10052A73C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + qword_10078A548);
  if (v4)
  {
    v6 = v4;
    sub_100190AA0(a1, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_10052A7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + qword_10078A548);
  if (v5)
  {
    v8 = v5;
    sub_100190EC4(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10052A864(uint64_t result, uint64_t (*a2)(uint64_t))
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v5 = result;
    v6 = v3;
    v7 = a2(v5);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10052A8CC()
{
  v1 = *(v0 + qword_10078A548);
  if (v1)
  {
    v2 = v1;
    sub_100191FE8(0);
  }

  else
  {
    __break(1u);
  }
}

void sub_10052A918(uint64_t a1, char a2)
{
  v3 = *(v2 + qword_10078A548);
  if (v3)
  {
    v6 = v3;
    sub_1001921C8(a1, a2 & 1);
  }

  else
  {
    __break(1u);
  }
}

SEL *sub_10052A9B4(SEL *result)
{
  if (*(v1 + qword_10078A540))
  {
    return [*(v1 + qword_10078A540) *result];
  }

  __break(1u);
  return result;
}

void sub_10052A9E8(uint64_t a1)
{
  v2 = *(v1 + qword_10078A540);
  *(v1 + qword_10078A540) = a1;
}

void sub_10052A9FC(uint64_t a1)
{
  v2 = *(v1 + qword_10078A548);
  *(v1 + qword_10078A548) = a1;
}

id sub_10052AA30()
{
  v1 = (*((swift_isaMask & *v0) + 0x90))();
  v2 = *(v0 + qword_10078A540);
  *(v0 + qword_10078A540) = v1;
  v3 = v1;

  [v3 setAutoresizingMask:18];
  [v3 setPreservesSuperviewLayoutMargins:1];
  [v0 addSubview:v3];

  return v3;
}

id sub_10052AAEC(void *a1)
{
  v2 = *(v1 + qword_10078A540);
  *(v1 + qword_10078A540) = a1;
  v3 = a1;

  return [v3 setPreservesSuperviewLayoutMargins:1];
}

void sub_10052AB4C(void *a1)
{
  type metadata accessor for TTRITreeViewTableAdapter();
  v3 = v1;
  v4 = sub_100189BDC(v3, a1);
  v5 = *&v3[qword_10078A548];
  *&v3[qword_10078A548] = v4;

  type metadata accessor for TTRITreeTableView();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = &off_100719448;
    if (!*&v3[qword_10078A548])
    {
      v7 = 0;
    }

    *(v6 + OBJC_IVAR____TtC9Reminders17TTRITreeTableView_contextMenuDelegate + 8) = v7;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100767430 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003E30(v8, qword_10078A528);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v9, "UITableView contained in TTRITreeView is not a subclass of TTRITreeTableView", v10, 2u);
    }
  }
}

id sub_10052AD20(uint64_t a1)
{
  [v1 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = objc_allocWithZone(type metadata accessor for TTRITreeTableView());

  return [v11 initWithFrame:a1 style:{v4, v6, v8, v10}];
}

uint64_t sub_10052ADA8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078A528);
  v1 = sub_100003E30(v0, qword_10078A528);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10052AE70()
{
  v1 = v0;
  v2 = *&v0[qword_10078A548];
  if (v2)
  {
    v3 = v2;
    sub_100189F08();
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TTRITreeView();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10052AF40(uint64_t a1)
{
}

uint64_t sub_10052AF9C(void *a1)
{
  *&v1[qword_10078A540] = 0;
  *&v1[qword_10078A548] = 0;
  *&v1[qword_10078A550] = 0;
  v1[qword_10078A558] = 0;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for TTRITreeView();
  v3 = objc_msgSendSuper2(&v15, "initWithCoder:", a1);
  v4 = v3;
  if (!v3)
  {
    goto LABEL_14;
  }

  v5 = v3;
  v6 = [v5 subviews];
  sub_10014C480();
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_7:
    v10 = v9;

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = *&v5[qword_10078A540];
      *&v5[qword_10078A540] = v11;
      v13 = v11;

      [v13 setPreservesSuperviewLayoutMargins:1];
LABEL_13:
      v14 = v10;
      sub_10052AB4C(v13);

      a1 = v13;
LABEL_14:

      return v4;
    }

LABEL_12:
    v10 = sub_10052AA30();
    v13 = v10;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id sub_10052B1BC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRITreeView();
  result = objc_msgSendSuper2(&v2, "layoutSubviews");
  if (*(v0 + qword_10078A558) == 1)
  {
    *(v0 + qword_10078A558) = 0;
    return sub_10052A560(0);
  }

  return result;
}

void sub_10052B24C(void *a1)
{
  v1 = a1;
  sub_10052B1BC();
}

void sub_10052B31C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_10052B41C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078A5E0);
  v1 = sub_100003E30(v0, qword_10078A5E0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10052B524@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListEditingInteractionOptions(0);
  v3 = v2[5];
  static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertTitle.getter();
  static TTRLocalizableStrings.Templates.cantMarkAsCompletedAlertMessage.getter();
  TTRReminderListCompletionBehavior.AlertContents.init(title:message:)();
  v4 = type metadata accessor for TTRReminderListCompletionBehavior.AlertContents();
  (*(*(v4 - 8) + 56))(&a1[v3], 0, 1, v4);
  v5 = enum case for TTRReminderListCompletionBehavior.disallowed(_:);
  v6 = type metadata accessor for TTRReminderListCompletionBehavior();
  result = (*(*(v6 - 8) + 104))(&a1[v3], v5, v6);
  *a1 = 0;
  a1[v2[6]] = 0;
  a1[v2[7]] = 0;
  a1[v2[8]] = 0;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  a1[v2[11]] = 0;
  a1[v2[12]] = 0;
  a1[v2[13]] = 0;
  return result;
}

void sub_10052B66C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
    if (v2)
    {
      v3 = type metadata accessor for TTRTemplateEditor();
      __chkstk_darwin(v3);
      v4 = v2;
      static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
    }
  }
}

uint64_t sub_10052B768(uint64_t a1, uint64_t (*a2)(__n128), uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  v5 = v4;
  if (!v4)
  {
    v5 = sub_100572610(a1, a2, a3);
  }

  v6 = v4;
  return v5;
}

id sub_10052B7B0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.template(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10052B8E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_100531818, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_10052B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.Item.section(_:), v4);
  v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.hasLoadedReminderItems(in:)();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

id sub_10052BB64@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
    v5 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v5 - 8) + 104))(a1, v4, v5);
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    v7 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v6 = 0;
    v7 = sub_10057F4D0;
  }

  v8 = v7;
  v9 = (a1 + *(type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0) + 20));
  *v9 = v8;
  v9[1] = v6;
  v10 = v3;

  return v10;
}

void sub_10052BC8C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for TTRSectionID();
  v38 = *(v3 - 8);
  __chkstk_darwin(v3);
  v37 = (&v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v16)
  {
    v35 = v3;
    v17 = v16;

    TTRRemindersListTreeViewModel.parent(of:)();

    v18 = type metadata accessor for TTRRemindersListViewModel.Item();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v11, 1, v18) == 1)
    {

      sub_1000079B4(v11, &qword_100772140);
    }

    else if ((*(v19 + 88))(v11, v18) == enum case for TTRRemindersListViewModel.Item.section(_:))
    {
      (*(v19 + 96))(v11, v18);
      (*(v13 + 32))(v15, v11, v12);
      TTRRemindersListViewModel.SectionHeader.id.getter();
      if ((*(v6 + 88))(v8, v5) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
      {
        (*(v6 + 96))(v8, v5);
        v34 = *v8;
        sub_100058000(&qword_10076B780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10062D420;
        v21 = v36;
        v22 = v13;
        v23 = TTRReminderEditor.changeItem.getter();
        v24 = [v23 objectID];

        *(inited + 32) = v24;
        sub_10001D5F8(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        type metadata accessor for TTRTemplateEditor();
        v40 = v17;
        v25 = v17;
        v26 = TTRReminderEditor.changeItem.getter();
        v27 = [v26 saveRequest];

        v39 = v21;
        type metadata accessor for TTRReminderEditor();
        sub_1005317D0(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
        TTRUndoableEditing.undoManager.getter();
        TTROneshotEditing.init(item:saveRequest:undoManager:)();
        v28 = v37;
        v29 = v38;
        v30 = v34;
        v31 = v35;
        *v37 = v34;
        (*(v29 + 104))(v28, enum case for TTRSectionID.sectioned(_:), v31);
        v32 = v30;
        TTRTemplateEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

        (*(v29 + 8))(v28, v31);
        (*(v22 + 8))(v15, v12);
      }

      else
      {
        (*(v13 + 8))(v15, v12);

        (*(v6 + 8))(v8, v5);
      }
    }

    else
    {

      (*(v19 + 8))(v11, v18);
    }
  }
}

uint64_t sub_10052C23C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v5 - 8);
  v7 = &v33 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v15);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v17 = 0;
  swift_storeEnumTagMultiPayload();

  TTRRemindersListTreeViewModel.parent(of:)();

  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    v18 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
    if (v18)
    {
      (*(v9 + 16))(v11, v14, v8);
      v19 = (*(v9 + 88))(v11, v8);
      if (v19 == enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:))
      {
        goto LABEL_5;
      }

      if (v19 == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        v21 = *(v9 + 8);
        v22 = v18;
        v21(v14, v8);
        sub_10014AA9C(v17);
        v23 = v37;
        *v37 = v22;
        v24 = enum case for TTRRemindersListTargetContainer.TargetList.upToDateList(_:);
        v25 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v25 - 8) + 104))(v23, v24, v25);
        swift_storeEnumTagMultiPayload();
        return (v21)(v11, v8);
      }

      if (v19 == enum case for TTRRemindersListViewModel.Item.reminder(_:))
      {
        (*(v9 + 96))(v11, v8);
        (*(v35 + 32))();
        v33 = v18;
        v27 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v28 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
        swift_beginAccess();
        v29 = *(v2 + v28);

        v30 = sub_10013F404(v27, v29);

        (*(v35 + 8))(v34, v36);
        (*(v9 + 8))(v14, v8);
        if (v30)
        {
          sub_10014AA9C(v17);
          v31 = v37;
          *v37 = v30;
          v31[1] = v18;
          return swift_storeEnumTagMultiPayload();
        }

        return sub_10014AA38(v17, v37);
      }

      if (v19 == enum case for TTRRemindersListViewModel.Item.uncommittedReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.placeholderReminder(_:) || v19 == enum case for TTRRemindersListViewModel.Item.completed(_:) || v19 == enum case for TTRRemindersListViewModel.Item.hashtags(_:) || v19 == enum case for TTRRemindersListViewModel.Item.templateStatus(_:) || v19 == enum case for TTRRemindersListViewModel.Item.tip(_:))
      {
LABEL_5:
        v20 = *(v9 + 8);
        v20(v14, v8);
        v20(v11, v8);
        return sub_10014AA38(v17, v37);
      }

      if (v19 != enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:) && v19 != enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:))
      {
        v32 = v18;
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return result;
      }
    }

    (*(v9 + 8))(v14, v8);
    return sub_10014AA38(v17, v37);
  }

  sub_1000079B4(v7, &qword_100772140);
  return sub_10014AA38(v17, v37);
}

double sub_10052C7F8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10052C9BC();
  v12 = *(v5 + 16);
  v12(v10, a1, v4);
  v13 = *(v5 + 88);
  v14 = (v5 + 8);
  if (v13(v10, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v14)(v10, v4);
    v12(v7, a1, v4);
    *(a2 + 24) = type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 32) = &off_10072B818;
    v15 = sub_1000317B8(a2);
    sub_1004B7ED8(v7, v11, v15);
  }

  else
  {

    (*v14)(v10, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10052C9BC()
{
  v1 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    type metadata accessor for TTRShowRemindersInListDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 24) = &off_10072D7C0;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
  }

  return v2;
}

BOOL sub_10052CA58(void *a1)
{
  v2 = sub_10052C9BC();
  if (sub_1004B91A4())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(v2, ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = [a1 objectID];
    v7 = TTRRemindersListTreeViewModel.existingReminderIDs(having:)();

    v8 = *(v7 + 16);

    return v8 == 0;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10052CB2C(void *a1)
{
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v3 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v3 & 1) == 0)
    {
LABEL_18:
      v9 = 0;
      return v9 & 1;
    }
  }

  v4 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  if (!v5)
  {
LABEL_7:
    if (qword_100767438 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003E30(v10, qword_10078A5E0);
    sub_10000B0D8(a1, v32);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = 7104878;
      v14 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = *(v1 + v4);
      if (v15)
      {
        v16 = [v15 description];
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {
        v19 = 0xE300000000000000;
        v17 = 7104878;
      }

      v20 = sub_100004060(v17, v19, &v31);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2080;
      sub_10000C36C(v32, v33);
      dispatch thunk of TTRReminderProtocol.ttrList.getter();
      sub_10000794C(&v29, &v27, &unk_100775680);
      if (v28)
      {
        sub_100005FD0(&v27, v26);
        sub_10000B0D8(v26, &v25);
        sub_100058000(&unk_100787E60);
        v13 = String.init<A>(describing:)();
        v22 = v21;
        sub_100004758(v26);
        sub_1000079B4(&v29, &unk_100775680);
      }

      else
      {
        sub_1000079B4(&v29, &unk_100775680);
        v22 = 0xE300000000000000;
      }

      sub_100004758(v32);
      v23 = sub_100004060(v13, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v11, v12, "matchesListPredicate returns false because one of the lists is nil {viewModelSourceList: %s, reminderList: %s}", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100004758(v32);
    }

    goto LABEL_18;
  }

  sub_10000C36C(a1, a1[3]);
  v6 = v5;
  dispatch thunk of TTRReminderProtocol.ttrList.getter();
  if (!v30)
  {

    sub_1000079B4(&v29, &unk_100775680);
    goto LABEL_7;
  }

  sub_100005FD0(&v29, v32);
  sub_100003540(0, &qword_100775690);
  v7 = [v6 objectID];
  sub_10000C36C(v32, v33);
  v8 = dispatch thunk of TTRListProtocol.objectID.getter();
  v9 = static NSObject.== infix(_:_:)();

  sub_100004758(v32);
  return v9 & 1;
}

uint64_t sub_10052CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10052C9BC();
  sub_1004B7628(a1, a2, a3);
}

uint64_t sub_10052CFA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10052C9BC();
  sub_1004B7834(a1, a2);
}

uint64_t sub_10052CFF8(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v108 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100776348);
  v100 = *(v6 - 8);
  __chkstk_darwin(v6);
  v95 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v87 - v9;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v117 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  v13 = sub_10052C9BC();
  if (!sub_1004B91A4())
  {

    goto LABEL_56;
  }

  v15 = v14;
  ObjectType = swift_getObjectType();
  (*(v15 + 8))(v13, ObjectType, v15);
  swift_unknownObjectRelease();

  v17 = TTRRemindersListTreeViewModel.moveSteps(forIndentingReminders:canIndentUncommittedReminder:supportsIndentOutdentInSection:)();
  v19 = v18;
  v87 = v20;

  v88 = v17;
  if (!v17)
  {
LABEL_56:
    result = 0;
    v106 = 0;
    return result;
  }

  v99 = v19;
  v94 = v6;
  v107 = v3;
  v21 = _swiftEmptyArrayStorage;
  v121 = _swiftEmptyArrayStorage;
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = (v117 + 2);
    v24 = v117[2];
    v25 = a1 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
    v116 = v117[9];
    v117 = v24;
    v26 = (v23 - 8);
    (v24)(v12, v25, v10);
    while (1)
    {
      v27 = TTRRemindersListViewModel.Item.reminderObjectID.getter();
      (*v26)(v12, v10);
      if (v27)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v121 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v121;
      }

      v25 += v116;
      if (!--v22)
      {
        break;
      }

      (v117)(v12, v25, v10);
    }
  }

  v28 = sub_10001D5F8(v21);

  v30 = v99;
  v31 = v94;
  v98 = *(v99 + 16);
  if (v98)
  {
    v32 = 0;
    v104 = 0;
    v33 = v108;
    v34 = v28 & 0xFFFFFFFFFFFFFF8;
    if (v28 < 0)
    {
      v34 = v28;
    }

    v111 = v34;
    v117 = (v28 + 56);
    v112 = (v108 + 8);
    v113 = v28 & 0xC000000000000001;
    v106 = _swiftEmptyArrayStorage;
    v114 = (v108 + 16);
    v97 = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *&v29 = 138412546;
    v89 = v29;
    v35 = v107;
    v36 = v95;
    while (1)
    {
      if (v32 >= *(v30 + 16))
      {
        goto LABEL_60;
      }

      v102 = (*(v100 + 80) + 32) & ~*(v100 + 80);
      v37 = *(v100 + 72);
      v103 = v32;
      v101 = v37;
      v38 = v30 + v102 + v37 * v32;
      v39 = v105;
      sub_10000794C(v38, v105, &qword_100776348);
      v40 = *(v31 + 48);
      v41 = *(v39 + v40);
      v119 = v41;
      v42 = *(v41 + 16);

      v116 = v42;
      if (v42)
      {
        break;
      }

      (*v114)(v36, v105, v35);
LABEL_49:
      *(v36 + v40) = v41;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_10054847C(0, v106[2] + 1, 1, v106);
      }

      v82 = v106[2];
      v81 = v106[3];
      if (v82 >= v81 >> 1)
      {
        v106 = sub_10054847C(v81 > 1, v82 + 1, 1, v106);
      }

      v83 = v103 + 1;
      v84 = v106;
      v106[2] = v82 + 1;
      v85 = v84 + v102 + v82 * v101;
      v32 = v83;
      sub_1004DD25C(v36, v85);

      sub_1000079B4(v105, &qword_100776348);
      v30 = v99;
      if (v32 == v98)
      {
        goto LABEL_58;
      }
    }

    v43 = 0;
    while (1)
    {
      if (v43 >= *(v41 + 16))
      {
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v44 = v41 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v43;
      v115 = *(v33 + 16);
      v115(v5, v44, v35);
      v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
      if (v113)
      {
        break;
      }

      if (*(v28 + 16))
      {
        sub_100003540(0, &qword_10076BA50);
        v52 = NSObject._rawHashValue(seed:)(*(v28 + 40));
        v53 = -1 << *(v28 + 32);
        v54 = v52 & ~v53;
        if (((*(v117 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
        {
LABEL_31:

          v35 = v107;
          v33 = v108;
          goto LABEL_19;
        }

        v55 = ~v53;
        while (1)
        {
          v56 = *(*(v28 + 48) + 8 * v54);
          v57 = static NSObject.== infix(_:_:)();

          if (v57)
          {
            break;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v117 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        v35 = v107;
        v33 = v108;
LABEL_23:
        v45 = TTRRemindersListViewModel.ReminderID.objectID.getter();
        v47 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
        v48 = v110;
        swift_beginAccess();
        v49 = *(v48 + v47);
        if ((v49 & 0xC000000000000001) != 0)
        {

          v50 = __CocoaDictionary.lookup(_:)();
          if (v50)
          {
            v118 = v50;
            sub_100003540(0, &qword_10076BB00);
            swift_dynamicCast();
            v51 = v120;
            goto LABEL_35;
          }

LABEL_39:

          goto LABEL_19;
        }

        if (*(v49 + 16))
        {

          v58 = sub_1002613B0(v45);
          if (v59)
          {
            v51 = *(*(v49 + 56) + 8 * v58);
LABEL_35:

            if (v51)
            {
              v109 = [v51 subtaskContext];
              if (v109)
              {
                v120 = 0;
                v60 = [v109 fetchObjectIDsOfUnsupportedSubtasksWithError:&v120];
                v61 = v120;
                if (v60)
                {
                  v62 = v60;
                  sub_100003540(0, &qword_10076BA50);
                  v63 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
                  v64 = v61;

                  __chkstk_darwin(v65);
                  *(&v87 - 2) = &v119;
                  *(&v87 - 1) = v5;
                  v66 = v104;
                  sub_10052B31C(sub_1005317B4, (&v87 - 4), v63);
                  v104 = v66;
                }

                else
                {
                  v67 = v120;
                  v68 = _convertNSErrorToError(_:)();

                  swift_willThrow();
                  if (qword_100767438 != -1)
                  {
                    swift_once();
                  }

                  v104 = 0;
                  v69 = type metadata accessor for Logger();
                  sub_100003E30(v69, qword_10078A5E0);
                  v70 = v51;
                  swift_errorRetain();
                  v71 = Logger.logObject.getter();
                  v72 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v71, v72))
                  {
                    v73 = swift_slowAlloc();
                    v96 = v68;
                    v91 = v72;
                    v74 = v70;
                    v93 = v70;
                    v75 = v73;
                    v76 = swift_slowAlloc();
                    v90 = v76;
                    v92 = swift_slowAlloc();
                    v120 = v92;
                    *v75 = v89;
                    v77 = [v74 objectID];
                    *(v75 + 4) = v77;
                    *v76 = v77;
                    *(v75 + 12) = 2080;
                    swift_getErrorValue();
                    v78 = Error.rem_errorDescription.getter();
                    v80 = sub_100004060(v78, v79, &v120);

                    *(v75 + 14) = v80;
                    _os_log_impl(&_mh_execute_header, v71, v91, "Failed to fetch objectIDs of completed subtasks of reminder {reminder.objectID: %@, error: %s}", v75, 0x16u);
                    sub_1000079B4(v90, &unk_10076DF80);

                    sub_100004758(v92);
                  }

                  else
                  {
                  }
                }
              }

              else
              {
              }
            }

            goto LABEL_19;
          }

          goto LABEL_39;
        }
      }

LABEL_19:
      ++v43;
      (*v112)(v5, v35);
      if (v43 == v116)
      {
        v41 = v119;
        v31 = v94;
        v40 = *(v94 + 48);
        v36 = v95;
        v115(v95, v105, v35);
        goto LABEL_49;
      }
    }

    v46 = __CocoaSet.contains(_:)();

    if ((v46 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v106 = _swiftEmptyArrayStorage;
LABEL_58:

  return v88;
}

uint64_t sub_10052DC58(id *a1, void **a2)
{
  v4 = sub_100058000(&qword_10076B070);
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  TTRRemindersListViewModel.ReminderID.groupID.getter();
  TTRRemindersListViewModel.ReminderID.init(objectID:groupID:)();
  v10 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_100548688(0, v10[2] + 1, 1, v10);
    *a2 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_100548688(v12 > 1, v13 + 1, 1, v10);
    *a2 = v10;
  }

  v10[2] = v13 + 1;
  return (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v5);
}

uint64_t sub_10052DE2C()
{
  v0 = sub_10052C9BC();
  v2 = sub_1004B91A4();
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();

    v2 = TTRRemindersListTreeViewModel.moveSteps(forOutdentingReminders:canOutdentUncommittedReminder:supportsIndentOutdentInSection:)();
  }

  else
  {
  }

  return v2;
}

uint64_t sub_10052DF1C()
{
  v0 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
}

id sub_10052E004@<X0>(void *a1@<X1>, unsigned int *a2@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X8>)
{
  v6 = *(v4 + *a1);
  if (v6)
  {
    *a4 = v6;
    v7 = *a2;
    v13 = v6;
    v8 = (a3)(0);
    v9 = *(v8 - 8);
    (*(v9 + 104))(a4, v7, v8);
    (*(v9 + 56))(a4, 0, 1, v8);
    v10 = v13;
  }

  else
  {
    v11 = a3();
    (*(*(v11 - 8) + 56))(a4, 1, 1, v11);
    v10 = 0;
  }

  return v10;
}

uint64_t sub_10052E120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v4 - 8);
  v6 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v7 - 8);
  v94 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v9 - 8);
  v93 = v71 - v10;
  v11 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v11 - 8);
  v90 = v71 - v12;
  v13 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v88 = *(v13 - 1);
  v89 = v13;
  __chkstk_darwin(v13);
  v87 = v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v15 - 8);
  v17 = v71 - v16;
  v18 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v85 = *(v18 - 8);
  v86 = v18;
  __chkstk_darwin(v18);
  v20 = v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v21 - 8);
  v23 = v71 - v22;
  v24 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v24 - 8);
  v95 = v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v96 = (v71 - v27);
  v28 = type metadata accessor for TTRListColors.Color();
  v91 = *(v28 - 8);
  v92 = v28;
  __chkstk_darwin(v28);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100058000(&qword_1007757F0);
  __chkstk_darwin(v31 - 8);
  v33 = v71 - v32;
  v34 = type metadata accessor for TTRTemplatePublicLinkData();
  __chkstk_darwin(v34);
  v38 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v38)
  {
    v80 = v37;
    v81 = v35;
    v82 = v6;
    v83 = a1;
    v39 = v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = type metadata accessor for Date();
    (*(*(v40 - 8) + 56))(v33, 1, 1, v40);
    v41 = v38;
    v79 = v39;
    TTRTemplatePublicLinkData.init(template:now:)();
    type metadata accessor for TTRListColors();
    v97[3] = sub_100003540(0, &qword_100770AF8);
    v97[4] = &protocol witness table for REMTemplate;
    v97[0] = v41;
    v42 = v41;
    static TTRListColors.color(for:)();
    sub_1000079B4(v97, &unk_100775680);
    v43 = [v42 accountCapabilities];
    v78 = [v43 supportsSections];

    v44 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
    v84 = v30;
    if (v44 && (v45 = [v44 objectID]) != 0)
    {
      v46 = v96;
      *v96 = v45;
      *(v46 + 8) = 0;
      v47 = enum case for TTRListType.list(_:);
      v48 = type metadata accessor for TTRListType();
      v49 = v42;
      v50 = *(v48 - 8);
      (*(v50 + 104))(v46, v47, v48);
      (*(v50 + 56))(v46, 0, 1, v48);
      v42 = v49;
    }

    else
    {
      v51 = type metadata accessor for TTRListType();
      v46 = v96;
      (*(*(v51 - 8) + 56))(v96, 1, 1, v51);
    }

    sub_10000794C(v46, v95, &unk_100775640);
    v52 = [v42 name];
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v53;

    v75 = TTRListColors.Color.nativeColor.getter();
    v74 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount + 16);
    if (v74)
    {
      v73 = 0;
    }

    else
    {
      v73 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount + 8);
    }

    v57 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    v58 = *(*(v57 - 8) + 56);
    v72 = v23;
    v58(v23, 1, 1, v57);
    v59 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v59 - 8) + 56))(v17, 1, 1, v59);
    TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    v71[1] = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v85 + 8))(v20, v86);
    v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v78)
    {
      v60 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v88 + 104))(v87, *v60, v89);
    v61 = [v42 objectID];
    v62 = [v61 stringRepresentation];
    v89 = v42;
    v63 = v62;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
    v65 = v80;
    v66 = v93;
    v67 = v79;
    v68 = v81;
    (*(v80 + 16))(v93, v79, v81);
    (*(v65 + 56))(v66, 0, 1, v68);
    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v69 = v83;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    sub_1000079B4(v96, &unk_100775640);
    (*(v91 + 8))(v84, v92);
    (*(v65 + 8))(v67, v68);
    v70 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  }

  else
  {
    v54 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v55 = *(*(v54 - 8) + 56);

    return v55(a1, 1, 1, v54);
  }
}

uint64_t sub_10052EC40()
{
}

uint64_t sub_10052ECA0()
{
  v0 = sub_10056FD38();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowTemplateViewModelSource()
{
  result = qword_10078A650;
  if (!qword_10078A650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10052EE04(void *a1)
{
  v3 = sub_100058000(&unk_10078A380);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = [a1 objectID];
  v8 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template;
  v9 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (!v9)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_11:
    v12 = 1;
    goto LABEL_12;
  }

  v10 = [v9 objectID];
  v11 = v10;
  if (!v7)
  {
    if (v10)
    {
      v12 = 0;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  if (v10)
  {
    sub_100003540(0, &qword_10076BA50);
    v12 = static NSObject.== infix(_:_:)();

LABEL_9:
    v7 = v11;
    goto LABEL_10;
  }

LABEL_6:
  v12 = 0;
LABEL_10:

LABEL_12:
  v13 = [a1 showingLargeAttachments];
  *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_showLargeAttachmentsValue) = v13;
  v14 = *(v1 + v8);
  *(v1 + v8) = a1;

  v15 = a1;
  sub_10052E120(v6);
  sub_10056F540(v6);
  if ((v12 & 1) == 0)
  {
    v16 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 88))(1, ObjectType, v17);
      swift_unknownObjectRelease();
    }
  }

  return sub_1000079B4(v6, &unk_10078A380);
}

uint64_t sub_10052EFDC(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  v154 = a4;
  v172 = a3;
  v7 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v7 - 8);
  v153 = &v149 - v8;
  v9 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v9 - 8);
  v225 = &v149 - v10;
  v224 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v183 = *(v224 - 8);
  __chkstk_darwin(v224);
  v223 = (&v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v222 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v184 = *(v222 - 8);
  __chkstk_darwin(v222);
  v221 = &v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v185 = *(v220 - 8);
  __chkstk_darwin(v220);
  v219 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v187 = *(v218 - 8);
  __chkstk_darwin(v218);
  v217 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v15 - 8);
  v216 = &v149 - v16;
  v215 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v180 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v149 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v179 = *(v213 - 8);
  __chkstk_darwin(v213);
  v167 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v212 = &v149 - v20;
  v211 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v178 = *(v211 - 8);
  __chkstk_darwin(v211);
  v168 = &v149 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for TTRListColors.Color();
  v177 = *(v230 - 8);
  __chkstk_darwin(v230);
  v227 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v176 = *(v210 - 8);
  __chkstk_darwin(v210);
  v209 = &v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v208 = &v149 - v25;
  v207 = sub_100058000(&qword_10076E8D8);
  __chkstk_darwin(v207);
  v231 = (&v149 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v206 = &v149 - v28;
  v205 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v226 = *(v205 - 8);
  __chkstk_darwin(v205);
  v204 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_100058000(&qword_10076E8D0);
  __chkstk_darwin(v150);
  v152 = &v149 - v30;
  v31 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v31 - 8);
  v151 = &v149 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v155 = &v149 - v34;
  v197 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v199 = *(v197 - 8);
  __chkstk_darwin(v197);
  v198 = &v149 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v201 = &v149 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v39 - 8);
  v229 = (&v149 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v41);
  v43 = &v149 - v42;
  v171 = type metadata accessor for REMRemindersListDataView.SectionsModel();
  v203 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = &v149 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v45);
  v48 = &v149 - v47;
  v49 = OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template;
  v156 = v4;
  v50 = *(v4 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  v202 = a1;
  v228 = v36;
  if (!v50)
  {
    if (!a1)
    {
      v54 = 1;
      LODWORD(v200) = 1;
      v55 = v156;
      if (!a2)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v51 = a2;
    v53 = 0;
LABEL_7:
    v56 = [a1 sortingStyle];
    v57 = v56;
    if (v53)
    {
      if (v56)
      {
        v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v60 = v59;
        if (v58 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v60 == v61)
        {
          LODWORD(v200) = 1;
        }

        else
        {
          LODWORD(v200) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a1 = v202;
      }

      else
      {
        LODWORD(v200) = 0;
        v57 = v53;
      }
    }

    else
    {
      if (!v56)
      {
        LODWORD(v200) = 1;
        goto LABEL_20;
      }

      LODWORD(v200) = 0;
    }

LABEL_20:
    v62 = v156;
    v53 = *(v156 + v49);
    *(v156 + v49) = a1;
    v55 = v62;
    v63 = a1;
    v54 = 0;
    goto LABEL_21;
  }

  v51 = a2;
  v52 = [v50 sortingStyle];
  v53 = v52;
  if (a1)
  {
    goto LABEL_7;
  }

  v54 = 1;
  if (v52)
  {
    LODWORD(v200) = 0;
    v55 = v156;
LABEL_21:

    goto LABEL_22;
  }

  LODWORD(v200) = 1;
  v55 = v156;
LABEL_22:
  a2 = v51;
  if (!v51)
  {
    goto LABEL_26;
  }

LABEL_23:
  v64 = *(v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation);
  *(v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation) = a2;
  v65 = a2;

  v66 = v55 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = *(v66 + 8);
    ObjectType = swift_getObjectType();
    (*(v67 + 104))(ObjectType, v67);
    swift_unknownObjectRelease();
  }

LABEL_26:
  REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  v69 = *(v203 + 8);
  v203 += 8;
  v169 = v69;
  v69(v48, v171);
  v70 = v229;
  sub_10000794C(v43, v229, &qword_100769378);
  v71 = v228;
  v72 = (*(v37 + 48))(v70, 1, v228);
  if (v72 == 1)
  {
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v75 = v201;
    (*(v37 + 32))(v201, v70, v71);
    v73 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v74 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v37 + 8))(v75, v71);
  }

  result = sub_1000079B4(v43, &qword_100769378);
  v77 = v55 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_remindersCount;
  *v77 = v73;
  *(v77 + 8) = v74;
  *(v77 + 16) = v72 == 1;
  if ((v54 & 1) == 0)
  {
    v78 = v202;
    v79 = v78;
    if ((v200 & 1) == 0)
    {
      v128 = [v78 sortingStyle];
      v129 = v198;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C();
      return (v199)[1](v129, v197);
    }

    v80 = v155;
    sub_10052E120(v155);
    v165 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v166 = v81;
    v82 = v170;
    REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
    v83 = REMRemindersListDataView.SectionsModel.sections.getter();
    v169(v82, v171);
    v84 = *(v83 + 16);
    if (v84)
    {
      *&v232 = _swiftEmptyArrayStorage;
      sub_1004A22E0(0, v84, 0);
      v202 = *(v83 + 16);
      v198 = type metadata accessor for REMRemindersListDataView.SectionLite();
      v85 = *(v198 - 1);
      v196 = v83 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
      v86 = v232;
      v195 = type metadata accessor for TTRListColors();
      v87 = 0;
      v194 = v85 + 16;
      v197 = v85;
      v193 = v85 + 32;
      v192 = (v178 + 11);
      v191 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v164 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v163 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
      v162 = (v179 + 104);
      v190 = (v177 + 2);
      v189 = (v177 + 7);
      v188 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
      v187 += 13;
      v186 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
      v185 += 13;
      v184 += 13;
      v183 += 13;
      v182 = (v180 + 2);
      v181 = (v180 + 7);
      ++v180;
      v161 = (v178 + 12);
      v160 = (v179 + 16);
      v159 = (v179 + 8);
      LODWORD(v179) = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
      v178 = (v176 + 2);
      ++v177;
      ++v176;
      v158 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v157 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v175 = v226 + 32;
      v88 = v168;
      v201 = v79;
      v200 = v83;
      v199 = v84;
      while (v202 != v87)
      {
        if (v87 >= *(v83 + 16))
        {
          goto LABEL_57;
        }

        v229 = v86;
        v89 = v207;
        v90 = *(v207 + 48);
        v91 = v197;
        v92 = v206;
        v93 = v198;
        (*(v197 + 16))(&v206[v90], v196 + *(v197 + 72) * v87, v198);
        v94 = v231;
        *v231 = v87;
        v95 = v88;
        v96 = *(v89 + 48);
        (*(v91 + 32))(v94 + v96, &v92[v90], v93);
        v234 = sub_100003540(0, &qword_100770AF8);
        v235 = &protocol witness table for REMTemplate;
        v233 = v79;
        v97 = v79;
        v98 = v227;
        static TTRListColors.color(for:)();
        sub_1000079B4(&v233, &unk_100775680);
        v228 = v96;
        v88 = v95;
        REMRemindersListDataView.SectionLite.type.getter();
        v99 = v211;
        v100 = (*v192)(v95, v211);
        if (v100 == v191)
        {
          (*v161)(v95, v99);
          v101 = v95[1];
          v174 = *v95;
          v173 = v101;

          v102 = v212;
          v165(v87);
          v103 = v213;
          (*v160)(v167, v102, v213);
          v104 = v216;
          v105 = v230;
          (*v190)(v216, v98, v230);
          (*v189)(v104, 0, 1, v105);
          (*v187)(v217, v188, v218);
          v106 = v98;
          (*v185)(v219, v186, v220);
          (*v184)(v221, v179, v222);
          v107 = v214;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v109 = v223;
          v108 = v224;
          *v223 = v174;
          (*v183)(v109, v157, v108);
          v110 = v225;
          v111 = v215;
          (*v182)(v225, v107, v215);
          (*v181)(v110, 0, 1, v111);
          v112 = v208;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          v113 = v107;
          v88 = v168;
          (*v180)(v113, v111);
          (*v159)(v102, v103);
        }

        else
        {
          if (v100 != v164)
          {
            goto LABEL_58;
          }

          v114 = v170;
          REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
          REMRemindersListDataView.SectionsModel.sections.getter();
          v169(v114, v171);

          (*v162)(v212, v163, v213);
          v115 = v216;
          v106 = v227;
          v116 = v230;
          (*v190)(v216, v227, v230);
          (*v189)(v115, 0, 1, v116);
          (*v187)(v217, v188, v218);
          (*v185)(v219, v186, v220);
          (*v184)(v221, v179, v222);
          v117 = v214;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v118 = [v97 objectID];
          v120 = v223;
          v119 = v224;
          *v223 = v118;
          (*v183)(v120, v158, v119);
          v121 = v225;
          v122 = v215;
          (*v182)(v225, v117, v215);
          (*v181)(v121, 0, 1, v122);
          v112 = v208;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v180)(v117, v122);
        }

        v123 = v210;
        (*v178)(v209, v112, v210);
        v124 = v231;
        REMRemindersListDataView.SectionLite.reminders.getter();
        v125 = v204;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*v177)(v106, v230);
        (*v176)(v112, v123);
        sub_1000079B4(v124, &qword_10076E8D8);
        v86 = v229;
        *&v232 = v229;
        v127 = v229[2];
        v126 = v229[3];
        if (v127 >= v126 >> 1)
        {
          sub_1004A22E0(v126 > 1, v127 + 1, 1);
          v86 = v232;
        }

        ++v87;
        v86[2] = v127 + 1;
        (*(v226 + 32))(v86 + ((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v127, v125, v205);
        v79 = v201;
        v83 = v200;
        if (v199 == v87)
        {

          v80 = v155;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_57:
      __break(1u);
      while (1)
      {
LABEL_58:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }

    v86 = _swiftEmptyArrayStorage;
LABEL_45:
    v130 = v151;
    sub_10000794C(v80, v151, &unk_10078A380);
    v131 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v132 = *(v131 - 8);
    if ((*(v132 + 48))(v130, 1, v131) == 1)
    {
      sub_1000079B4(v130, &unk_10078A380);
      v133 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      (*(*(v133 - 8) + 56))(v152, 1, 1, v133);
    }

    else
    {
      v134 = v152;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v132 + 8))(v130, v131);
      v135 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      v136 = *(v135 - 8);
      (*(v136 + 56))(v134, 0, 1, v135);
      v137 = (*(v136 + 88))(v134, v135);
      if (v137 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
      {
        if (v137 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
        {
          v138 = v86;
          v139 = v170;
          REMRemindersListDataView.TemplateSectionsModel.sectionsModel.getter();
          v140 = REMRemindersListDataView.SectionsModel.sections.getter();
          v169(v139, v171);
          v141 = sub_100003540(0, &qword_10076E8F8);
          type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
          v142 = swift_allocObject();
          *(v142 + 64) = 0;
          *(v142 + 24) = 0;
          *(v142 + 32) = 0;
          *(v142 + 16) = 0;
          swift_unknownObjectWeakInit();
          *(v142 + 128) = 0u;
          *(v142 + 144) = 0u;
          *(v142 + 96) = 0u;
          *(v142 + 112) = 0u;
          *(v142 + 64) = &off_10072ED30;
          v143 = v156;
          swift_unknownObjectWeakAssign();
          *(v142 + 80) = v140;
          *(v142 + 88) = v141;
          *(v142 + 72) = v140;
          *(v142 + 40) = &_swiftEmptySetSingleton;
          *(v142 + 48) = 1;
          *(v143 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = v142;

LABEL_54:

          v144 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
          v145 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
          v146 = type metadata accessor for TTRRemindersListViewModel.Item();
          v147 = v153;
          (*(*(v146 - 8) + 56))(v153, 1, 1, v146);
          v234 = v144;
          v235 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
          v233 = v145;
          sub_10000B0D8(&v233, &v232);
          v148 = swift_allocObject();
          *(v148 + 16) = v138;
          sub_100005FD0(&v232, v148 + 24);
          *(v148 + 64) = v143;

          sub_100586238(1, v80, sub_100070528, v148, v154, 0, v147);

          sub_1000079B4(v147, &qword_100772140);
          sub_1000079B4(v80, &unk_10078A380);

          return sub_100004758(&v233);
        }

        if (v137 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
        {
          goto LABEL_58;
        }
      }
    }

    v138 = v86;
    v143 = v156;
    *(v156 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance) = 0;
    goto LABEL_54;
  }

  return result;
}

double sub_100530DB0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_template);
  if (v2 && (v3 = *(v1 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_listRepresentation)) != 0)
  {
    *(a1 + 24) = &type metadata for DragAndDropREMTemplateTarget;
    *(a1 + 32) = &off_10072D8D0;
    *a1 = v2;
    *(a1 + 8) = v3;
    v7 = v3;
    v4 = v2;

    v5 = v7;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100530E38@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v11 = type metadata accessor for TTRSection();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_100530F58()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100531210(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders30TTRShowTemplateViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

id sub_1005312B4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v5 = *(v1 + 8);
  *a1 = *v1;
  a1[1] = v5;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();
  v3 = v2;

  return v5;
}

id sub_100531320@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  v8 = *(v2 + 8);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = v8;
  type metadata accessor for TTRRemindersListReminderActionTarget(0);
  swift_storeEnumTagMultiPayload();
  v5 = a1;
  v6 = v4;

  return v8;
}

BOOL sub_100531398()
{
  v0 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4;
  v6 = enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:);
  if (v4 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    goto LABEL_7;
  }

  if (v4 != enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) && v4 != enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_7:
    (*(v1 + 96))(v3, v0);
    v8 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v8 - 8) + 8))(v3, v8);
  }

  return v5 != v6;
}

uint64_t sub_100531534()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1005317D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100531860(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003540(0, &qword_100775690);
  v9 = [a2 list];
  v10 = [v9 objectID];

  v11 = [a3 objectID];
  LOBYTE(v9) = static NSObject.== infix(_:_:)();

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for TTRListEditor();
  static TTRListEditor.actualOperation(forChangingParentListOf:to:allowsLossyCopying:)();
  v12 = (*(v6 + 88))(v8, v5);
  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.disallowed(_:))
  {
    (*(v6 + 96))(v8, v5);
    v13 = type metadata accessor for TTRListEditor.ReminderParentListMutationOperation.DisallowReason();
    (*(*(v13 - 8) + 8))(v8, v13);
    return 0;
  }

  if (v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.move(_:) || v12 == enum case for TTRListEditor.ReminderParentListMutationOperation.copyAndDelete(_:))
  {
    return 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100531AB8()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100776A98);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel();
  v9 = *(v8 + 32);
  sub_100531CE4(v1 + v9, v7);
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) == 1)
  {
    v13 = v7;
  }

  else
  {
    v14 = TTRIHashtagWrappingCollectionView.LayoutResult.totalRowCountIncludingHidden.getter();
    v17 = *(v11 + 8);
    v17(v7, v10);
    if (v14 <= 3 || (*(v1 + *(v8 + 28)) & 1) != 0)
    {
      return 0;
    }

    sub_100531CE4(v1 + v9, v4);
    if (v12(v4, 1, v10) != 1)
    {
      TTRIHashtagWrappingCollectionView.LayoutResult.hiddenHashtagLabelCount.getter();
      v17(v4, v10);
      return static TTRLocalizableStrings.Hashtags.showMoreCountText(withCount:)();
    }

    v13 = v4;
  }

  sub_100531D54(v13);
  return 0;
}

uint64_t type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel()
{
  result = qword_10078ACC8;
  if (!qword_10078ACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100531CE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100776A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100531D54(uint64_t a1)
{
  v2 = sub_100058000(&qword_100776A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100531DBC(char *a1, char *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = a3[5];
    v9 = type metadata accessor for REMHashtagLabelSpecifier();
    v10 = *(*(v9 - 8) + 16);

    v10(&v6[v7], &a2[v7], v9);
    v11 = a3[7];
    v6[a3[6]] = a2[a3[6]];
    v6[v11] = a2[v11];
    v12 = a3[8];
    v13 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(&a2[v12], 1, v13))
    {
      v15 = sub_100058000(&qword_100776A98);
      memcpy(&v6[v12], &a2[v12], *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v14 + 16))(&v6[v12], &a2[v12], v13);
      (*(v14 + 56))(&v6[v12], 0, 1, v13);
    }
  }

  return v6;
}

uint64_t sub_100531F84(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 32);
  v7 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v10 = *(v7 - 8);
  result = (*(v10 + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = *(v10 + 8);

    return v9(a1 + v6, v7);
  }

  return result;
}

char *sub_100532094(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  v8 = *(*(v7 - 8) + 16);

  v8(&a1[v6], &a2[v6], v7);
  v9 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v9] = a2[v9];
  v10 = a3[8];
  v11 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(&a2[v10], 1, v11))
  {
    v13 = sub_100058000(&qword_100776A98);
    memcpy(&a1[v10], &a2[v10], *(*(v13 - 8) + 64));
  }

  else
  {
    (*(v12 + 16))(&a1[v10], &a2[v10], v11);
    (*(v12 + 56))(&a1[v10], 0, 1, v11);
  }

  return a1;
}

char *sub_100532214(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  a1[a3[6]] = a2[a3[6]];
  a1[a3[7]] = a2[a3[7]];
  v8 = a3[8];
  v9 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  LODWORD(v6) = v11(&a1[v8], 1, v9);
  v12 = v11(&a2[v8], 1, v9);
  if (!v6)
  {
    if (!v12)
    {
      (*(v10 + 24))(&a1[v8], &a2[v8], v9);
      return a1;
    }

    (*(v10 + 8))(&a1[v8], v9);
    goto LABEL_6;
  }

  if (v12)
  {
LABEL_6:
    v13 = sub_100058000(&qword_100776A98);
    memcpy(&a1[v8], &a2[v8], *(*(v13 - 8) + 64));
    return a1;
  }

  (*(v10 + 16))(&a1[v8], &a2[v8], v9);
  (*(v10 + 56))(&a1[v8], 0, 1, v9);
  return a1;
}

char *sub_1005323F8(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[8];
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(&a2[v9], 1, v10))
  {
    v12 = sub_100058000(&qword_100776A98);
    memcpy(&a1[v9], &a2[v9], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v11 + 32))(&a1[v9], &a2[v9], v10);
    (*(v11 + 56))(&a1[v9], 0, 1, v10);
  }

  return a1;
}

char *sub_100532564(char *a1, char *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
  v7 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v7 - 8) + 40))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  a1[a3[6]] = a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[8];
  v10 = type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  LODWORD(v6) = v12(&a1[v9], 1, v10);
  v13 = v12(&a2[v9], 1, v10);
  if (!v6)
  {
    if (!v13)
    {
      (*(v11 + 40))(&a1[v9], &a2[v9], v10);
      return a1;
    }

    (*(v11 + 8))(&a1[v9], v10);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100776A98);
    memcpy(&a1[v9], &a2[v9], *(*(v14 - 8) + 64));
    return a1;
  }

  (*(v11 + 32))(&a1[v9], &a2[v9], v10);
  (*(v11 + 56))(&a1[v9], 0, 1, v10);
  return a1;
}

void sub_100532764()
{
  type metadata accessor for REMHashtagLabelSpecifier();
  if (v0 <= 0x3F)
  {
    sub_1003EE660();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t sub_100532850(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (a1[2])
  {
    v5 = v4 ^ v3 ^ 1;
    if ((a2[2] & 1) == 0)
    {
      v5 = 0;
    }

    return v5 & 1;
  }

  else if (a2[2])
  {
    return 0;
  }

  else
  {
    v7 = a1[1];
    if (v3 == v4 && v7 == a2[1])
    {
      return 1;
    }

    else
    {
      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }
}

uint64_t sub_1005328B8()
{
  v1 = *(v0 + 16);
  v8 = *v0;
  v9 = v1;
  v10 = *(v0 + 32);
  v2 = objc_allocWithZone(type metadata accessor for TemplateStatusCellContentView());
  v11 = v8;
  v12 = v9;
  v3 = *(&v9 + 1);
  sub_100533FDC(&v11, v7);
  sub_10008E7EC(v3);
  sub_100533934(&v8);
  v5 = v4;
  sub_100534028(&v11);
  sub_1000301AC(v3);
  sub_1005343B4(&qword_10078AD50, type metadata accessor for TemplateStatusCellContentView);
  return v5;
}

uint64_t sub_10053298C@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_100528E80(v2, v3, v4);

  return sub_10008E7EC(v5);
}

char *sub_100532AA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel);
  if ([v1 isHidden])
  {
    v2 = _swiftEmptyArrayStorage;
  }

  else
  {
    v12 = sub_100003540(0, &qword_100776820);
    *&v11 = v1;
    v3 = v1;
    v2 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    if (v5 >= v4 >> 1)
    {
      v2 = sub_1005470E4((v4 > 1), v5 + 1, 1, v2);
    }

    *(v2 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v2[32 * v5 + 32]);
  }

  v6 = *(v0 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button);
  if (([v6 isHidden] & 1) == 0)
  {
    v12 = sub_100003540(0, &unk_10077A690);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1005470E4(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v8 = *(v2 + 3);
    if (v9 >= v8 >> 1)
    {
      v2 = sub_1005470E4((v8 > 1), v9 + 1, 1, v2);
    }

    *(v2 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v2[32 * v9 + 32]);
  }

  return v2;
}

uint64_t sub_100532C44(uint64_t a1)
{
  v2 = a1;
  v3 = isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v5 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v4 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 8);
  v6 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16);
  v7 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 24);
  v8 = *(a1 + 16);
  v21 = *a1;
  v22 = *(a1 + 16);
  v10 = *(a1 + 24);
  v9 = *(a1 + 32);
  *v3 = v21;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  if (v6)
  {
    if (v22 & 1) == 0 || ((v21 ^ v5))
    {
      goto LABEL_8;
    }

    return sub_1000301AC(v7);
  }

  else
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_8:
    while (1)
    {
      v12 = swift_allocObject();
      v13 = *(v2 + 16);
      *(v12 + 16) = *v2;
      *(v12 + 32) = v13;
      *(v12 + 48) = *(v2 + 32);
      *(v12 + 56) = isEscapingClosureAtFileLocation;
      v2 = swift_allocObject();
      *(v2 + 16) = sub_1005345B4;
      *(v2 + 24) = v12;
      aBlock[4] = sub_100068444;
      v20 = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_10072DA80;
      v17 = v7;
      v14 = _Block_copy(aBlock);
      v7 = v20;
      sub_100533FDC(&v21, v18);
      sub_10008E7EC(v10);
      sub_10008E7EC(v10);
      sub_100533FDC(&v21, v18);
      sub_10008E7EC(v10);
      sub_100533FDC(&v21, v18);
      v15 = isEscapingClosureAtFileLocation;

      [v15 performBatchUpdates:v14];
      _Block_release(v14);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      sub_100528EEC(v5, v4, v6);
      sub_1000301AC(v17);
      sub_100534028(&v21);
      sub_1000301AC(v10);
      sub_100534028(&v21);
      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = v5 == v21 && v4 == *(&v21 + 1);
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_10008E7EC(v10);
        sub_100533FDC(&v21, aBlock);
        sub_100528EEC(v5, v4, 0);
        sub_1000301AC(v7);
        sub_100534028(&v21);
        return sub_1000301AC(v10);
      }
    }

    return sub_1000301AC(v10);
  }
}

void sub_100532F30(char *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[16])
  {
    v4 = *(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button);
    [v4 setHidden:0];
    [*(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel) setHidden:1];

    [v4 setEnabled:v3 & 1];
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button) setHidden:1];
    v5 = *(a2 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel);
    [v5 setHidden:0];
    v6 = String._bridgeToObjectiveC()();
    [v5 setText:v6];
  }
}

uint64_t destroy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1)
{
  result = sub_100528EEC(*a1, *(a1 + 8), *(a1 + 16));
  if (*(a1 + 24))
  {
  }

  return result;
}

uint64_t initializeWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_100528E80(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(a2 + 32);
    *(a1 + 24) = v7;
    *(a1 + 32) = v8;
  }

  else
  {
    *(a1 + 24) = *(a2 + 24);
  }

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_100528E80(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_100528EEC(v7, v8, v9);
  v10 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v10)
    {
      v12 = *(a2 + 32);
      *(a1 + 24) = v10;
      *(a1 + 32) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 32);
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_100528EEC(v5, v6, v7);
  v8 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (v8)
    {
      v10 = *(a2 + 32);
      *(a1 + 24) = v8;
      *(a1 + 32) = v10;
      return a1;
    }

LABEL_7:
    *(a1 + 24) = *(a2 + 24);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 32);
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void (*sub_100533510(void *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[30] = v1;
  v5 = v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v6 = *(v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v3[13] = &type metadata for TTRIRemindersListTemplateStatusCellContentConfiguration;
  v3[14] = sub_100528E98();
  v11 = swift_allocObject();
  v4[10] = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v7;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  *(v11 + 48) = v10;
  sub_100528E80(v6, v7, v8);
  sub_10008E7EC(v9);
  return sub_1005335FC;
}

void sub_1005335FC(void **a1, char a2)
{
  v3 = *a1;
  sub_10000B0D8(*a1 + 80, *a1 + 120);
  if (a2)
  {
    sub_10000B0D8(v3 + 120, (v3 + 10));
    sub_100058000(&qword_10077A650);
    if (swift_dynamicCast())
    {
      v4 = *(v3 + 216);
      *v3 = *(v3 + 200);
      v3[1] = v4;
      *(v3 + 4) = *(v3 + 29);
      sub_100532C44(v3);
    }

    sub_100004758(v3 + 120);
  }

  else
  {
    sub_100058000(&qword_10077A650);
    if (swift_dynamicCast())
    {
      v5 = v3[11];
      *(v3 + 40) = v3[10];
      *(v3 + 56) = v5;
      *(v3 + 9) = *(v3 + 24);
      sub_100532C44(v3 + 40);
    }
  }

  sub_100004758((v3 + 5));

  free(v3);
}

uint64_t sub_100533708@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration;
  v4 = *(v1 + OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration);
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  a1[3] = &type metadata for TTRIRemindersListTemplateStatusCellContentConfiguration;
  a1[4] = sub_100528E98();
  v9 = swift_allocObject();
  *a1 = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  *(v9 + 32) = v6;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  sub_100528E80(v4, v5, v6);

  return sub_10008E7EC(v7);
}

uint64_t sub_1005337B0(uint64_t a1)
{
  sub_10000B0D8(a1, v6);
  sub_100058000(&qword_10077A650);
  if (swift_dynamicCast())
  {
    v7[0] = v3;
    v7[1] = v4;
    v8 = v5;
    sub_100532C44(v7);
  }

  return sub_100004758(a1);
}

void (*sub_100533834(void *a1))(void *a1)
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
  v2[4] = sub_100533510(v2);
  return sub_1001861BC;
}

uint64_t sub_1005338A4(uint64_t a1)
{
  sub_10000B0D8(a1, v7);
  sub_100058000(&qword_10077A650);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;
    sub_100528EEC(v3, v4, v5);
    sub_1000301AC(v6);
    return v2;
  }

  return result;
}

void sub_100533934(__int128 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100058000(&unk_100772600);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for UIButton.Configuration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v46 = *a1;
  v47 = *(a1 + 16);
  v16 = *(a1 + 3);
  v17 = *(a1 + 4);
  v18 = &v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration];
  *v18 = v46;
  *(v18 + 1) = v15;
  *(v18 + 4) = v17;
  v19 = objc_allocWithZone(UILabel);
  sub_100533FDC(&v46, aBlock);
  sub_10008E7EC(v16);
  v20 = [v19 init];
  sub_100003540(0, &qword_100771DF0);
  v21 = static UIFont.roundedBodyFont.getter();
  [v20 setFont:v21];

  v22 = [objc_opt_self() secondaryLabelColor];
  [v20 setTextColor:v22];

  [v20 setAdjustsFontForContentSizeCategory:1];
  v23 = [objc_allocWithZone(UIButton) init];
  static UIButton.Configuration.borderless()();
  static TTRLocalizableStrings.Templates.templateStatusUpdateSharedTemplate.getter();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v24 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  (*(v12 + 16))(v7, v14, v11);
  v41 = v12;
  v25 = *(v12 + 56);
  v42 = v11;
  v25(v7, 0, 1, v11);
  UIButton.configuration.setter();
  *&v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_templateLabel] = v20;
  *&v2[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_button] = v23;
  v45.receiver = v2;
  v45.super_class = ObjectType;
  v26 = v20;
  v27 = v23;
  v28 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v28 setHorizontalAlignment:1];
  [v28 setVerticalAlignment:0];

  v29 = v28;
  [v29 setLayoutMarginsRelativeArrangement:1];
  [v29 setPreservesSuperviewLayoutMargins:1];
  sub_100058000(&qword_10076B780);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10062D410;
  *(v30 + 32) = v26;
  *(v30 + 40) = v27;
  sub_100003540(0, &qword_10076B020);
  v31 = v26;
  v32 = v27;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 setArrangedSubviews:isa];

  [v32 addTarget:v29 action:"buttonAction:" forControlEvents:0x2000];
  v48 = *&v29[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration];
  v34 = *&v29[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 24];
  v49 = *&v29[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16];
  v35 = *&v29[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 32];
  v51 = v29[OBJC_IVAR____TtC9RemindersP33_4869690943FA7C97F8C5390C1CD5799A29TemplateStatusCellContentView_internalConfiguration + 16];
  v50 = v48;
  v36 = swift_allocObject();
  *(v36 + 16) = v48;
  *(v36 + 32) = v49;
  *(v36 + 40) = v34;
  *(v36 + 48) = v35;
  *(v36 + 56) = v29;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_10053405C;
  *(v37 + 24) = v36;
  aBlock[4] = sub_100026410;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072D9E0;
  v38 = _Block_copy(aBlock);
  sub_100533FDC(&v50, v43);
  sub_10008E7EC(v34);
  v39 = v29;
  sub_100533FDC(&v50, v43);
  sub_10008E7EC(v34);

  [v39 performBatchUpdates:v38];
  _Block_release(v38);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  sub_100534028(&v50);
  sub_1000301AC(v34);

  if (v11)
  {
    __break(1u);
  }

  else
  {
    (*(v41 + 8))(v14, v42);
  }
}

uint64_t sub_100533FDC(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_100528E80(*a1, v4, v5);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return a2;
}

uint64_t sub_100534068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTemplatePublicLinkData.Capabilities();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRTemplatePublicLinkData.stateToDisplay.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRTemplatePublicLinkData.StateToDisplay.created(_:))
  {
    TTRTemplatePublicLinkData.capabilities.getter();
    static TTRTemplatePublicLinkData.Capabilities.updateLink.getter();
    sub_1005343B4(&qword_10076EEC8, &type metadata accessor for TTRTemplatePublicLinkData.Capabilities);
    v16 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v27 = a1;
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
    if (v16)
    {
      v18 = type metadata accessor for TTRTemplatePublicLinkData();
      (*(*(v18 - 8) + 8))(v27, v18);
      v19 = 0;
      v20 = 1;
    }

    else
    {
      v20 = static TTRLocalizableStrings.Templates.templateStatusSharedTemplate.getter();
      v19 = v24;
      v25 = type metadata accessor for TTRTemplatePublicLinkData();
      (*(*(v25 - 8) + 8))(v27, v25);
    }

    result = (*(v12 + 8))(v14, v11);
    goto LABEL_8;
  }

  if (v15 == enum case for TTRTemplatePublicLinkData.StateToDisplay.notRequested(_:))
  {
    v20 = static TTRLocalizableStrings.Templates.templateStatusTemplate.getter();
    v19 = v21;
    v22 = type metadata accessor for TTRTemplatePublicLinkData();
    result = (*(*(v22 - 8) + 8))(a1, v22);
    v16 = 0;
LABEL_8:
    *a2 = v20;
    *(a2 + 8) = v19;
    *(a2 + 16) = v16 & 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1005343B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053440C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100528E80(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_100528E80(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  sub_100528EEC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  sub_100528EEC(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIRemindersListTemplateStatusCellContentConfiguration.MainContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionNameTextView()
{
  result = qword_10078AD58;
  if (!qword_10078AD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1005346AC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_100534724()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIRemindersListEditableSectionNameTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100534978()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078ADE0);
  v1 = sub_100003E30(v0, qword_10078ADE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100534A40()
{
  v0 = sub_100058000(&qword_10077E850);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  if (qword_1007674F0 != -1)
  {
    swift_once();
  }

  v6 = qword_1007A8A40;
  v26 = qword_1007A8A40;
  v21 = sub_100058000(&qword_100774070);
  inited = swift_initStackObject();
  v20 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  v25[0] = 0;
  sub_1005394D4();

  AnyHashable.init<A>(_:)();
  *(inited + 72) = 1;
  *v5 = 0;
  v5[40] = 0;
  v23 = v1;
  v8 = *(v1 + 104);
  v8(v5, enum case for TTRRelativeInsertionPosition.after<A>(_:), v0);
  sub_100323F28();
  v9 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v10)
  {
    v11 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v25, &qword_10077E868);
    if (v11)
    {
      v9 = *(v6 + 16);
    }

    else
    {
      v9 = 0;
    }
  }

  sub_1000FE4D8(v9, v9, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v23 + 8);
  v12(v5, v0);
  v24[0] = 1;
  AnyHashable.init<A>(_:)();
  v25[40] = 1;
  v13 = v22;
  v8(v22, enum case for TTRRelativeInsertionPosition.afterAll<A>(_:), v0);
  v14 = swift_initStackObject();
  *(v14 + 16) = v20;
  sub_100233FB0(v25, v14 + 32);
  v15 = v26;
  v16 = Array<A>.index<A>(forInsertingAt:where:)();
  if (v17)
  {
    v18 = TTRRelativeInsertionPosition.siblingAndIsAfter.getter();
    sub_1000079B4(v24, &qword_10077E868);
    if (v18)
    {
      v16 = *(v15 + 16);
    }

    else
    {
      v16 = 0;
    }
  }

  sub_1000FE4D8(v16, v16, v14);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12(v13, v0);
  sub_10023400C(v25);
  return v26;
}

uint64_t sub_100534DFC()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v18[-v5];
  AnyHashable.base.getter();
  if (swift_dynamicCast())
  {
    if ((v18[15] & 1) == 0)
    {
      v11 = String._bridgeToObjectiveC()();
      v12 = [objc_opt_self() _systemImageNamed:v11];

      sub_100003540(0, &qword_10076BA60);
      static TTRLocalizableStrings.AccountsList.showListInfoText.getter();
      swift_allocObject();
      swift_weakInit();
      return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    v7 = *(v0 + 144);
    ObjectType = swift_getObjectType();
    (*(v7 + 152))(ObjectType, v7);
    sub_10000794C(v6, v3, &unk_10078A380);
    v9 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v3, 1, v9) == 1)
    {
      sub_1000079B4(v3, &unk_10078A380);
    }

    else
    {
      v14 = TTRRemindersListViewModel.ListInfo.canBeDeleted.getter();
      (*(v10 + 8))(v3, v9);
      if (v14)
      {
        v15 = String._bridgeToObjectiveC()();
        v16 = [objc_opt_self() _systemImageNamed:v15];

        sub_100003540(0, &qword_10076BA60);
        static TTRLocalizableStrings.RemindersList.deleteListActionText.getter();
        swift_allocObject();
        swift_weakInit();

        v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1000079B4(v6, &unk_10078A380);

        return v17;
      }
    }

    sub_1000079B4(v6, &unk_10078A380);
  }

  return 0;
}

uint64_t sub_1005351DC()
{
  v0 = type metadata accessor for TTRITipKitSignal();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    v6 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (v6)
    {
      v7 = v6;
      swift_getObjectType();
      swift_unknownObjectRetain();

      v8 = dispatch thunk of TTRRemindersListInteractorType.changeItem(for:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRetain();

      type metadata accessor for TTRListDetailAssembly.ListComponentsCreator();
      swift_initStackObject();

      v9 = [v8 saveRequest];
      v10 = [v9 store];

      v11 = sub_10044DB08(v10, v8, 1, v5, &off_10072DB78);
      v13 = v12;

      v14 = v11;

      v15 = sub_10045A1AC(v14, v13, 0, 0, 0);

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v17 = Strong;
        [Strong presentViewController:v15 animated:1 completion:0];
      }

      swift_unknownObjectRelease();
      (*(v1 + 104))(v3, enum case for TTRITipKitSignal.tappedNameAndAppearanceAction(_:), v0);
      v18.value._countAndFlagsBits = static TTRITipKitSignalContext.RemindersList.MoreMenu.list.getter();
      TTRITipKitSignal.donate(signalContext:)(v18);

      return (*(v1 + 8))(v3, v0);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1005354AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100536CF8();
  }

  return result;
}

uint64_t sub_100535504@<X0>(void *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
  if (result)
  {
    v5 = type metadata accessor for TTRIShowRemindersInListPresenter();

    v6 = &off_10072DB38;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v2 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  a1[3] = v5;
  a1[4] = v6;
  *a1 = v2;
  return result;
}

void sub_10053558C()
{
  v29 = *v0;
  v1 = type metadata accessor for REMAnalyticsEvent();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v7 = sub_100003E30(v3, qword_10078ADE0);
  (*(v4 + 16))(v6, v7, v3);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v33 = v0;
  swift_getObjectType();
  v9 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 objectID];
  }

  else
  {
    v11 = 0;
  }

  v34 = v11;
  sub_100058000(&qword_10076DB18);
  v12 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v12;
  *(inited + 56) = v13;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  (*(v4 + 8))(v6, v3);
  v14 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v14)
  {
    v15 = v14;
    v16 = [v14 groceryContext];
    if (v16)
    {
      v17 = v16;
      if ([v16 shouldCategorizeGroceryItems])
      {
        type metadata accessor for TTRUserDefaults();
        v18 = static TTRUserDefaults.appUserDefaults.getter();
        type metadata accessor for REMAnalyticsManager();
        static REMAnalyticsManager.shared.getter();
        v19 = sub_100058000(&qword_1007757E8);
        v20 = v30;
        v21 = &v30[*(v19 + 48)];
        v22 = &v30[*(v19 + 80)];
        v23 = enum case for REMUserOperation.openGroceryList(_:);
        v24 = type metadata accessor for REMUserOperation();
        (*(*(v24 - 8) + 104))(v20, v23, v24);
        *v21 = TTRUserDefaults.activitySessionId.getter();
        v21[1] = v25;
        TTRUserDefaults.activitySessionBeginTime.getter();
        *v22 = _typeName(_:qualified:)();
        v22[1] = v26;
        v28 = v31;
        v27 = v32;
        (*(v31 + 104))(v20, enum case for REMAnalyticsEvent.userOperation(_:), v32);
        REMAnalyticsManager.post(event:)();

        (*(v28 + 8))(v20, v27);
      }

      else
      {
      }
    }

    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.updateLastUserAccessDate(for:)();
  }
}

void sub_100535A14(int a1, uint64_t a2)
{
  v3 = v2;
  v95 = a2;
  v96 = a1;
  v97 = *v2;
  v4 = type metadata accessor for REMAnalyticsEvent();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for REMUserOperation();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRListSharingUIType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&qword_1007831D0);
  __chkstk_darwin(v13 - 8);
  v98 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v91 - v16;
  __chkstk_darwin(v18);
  v101 = &v91 - v19;
  swift_getObjectType();
  v20 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v20)
  {
    return;
  }

  v103 = v20;
  if ([v20 canBeShared])
  {
    v94 = v5;
    v92 = v4;
    if (qword_100767440 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003E30(v21, qword_10078ADE0);
    sub_100058000(&unk_100775610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v23 = [v103 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50);
    *(inited + 48) = v23;
    sub_100008E04(inited);
    swift_setDeallocating();
    sub_1000079B4(inited + 32, &unk_10076BA70);
    sub_10000FD44();

    v93 = *(v100 + 56);
    v93(v101, 1, 1, v102);
    v24 = [v103 account];
    REMAccount.listSharingUIType.getter();

    v25 = (*(v10 + 88))(v12, v9);
    if (v25 == enum case for TTRListSharingUIType.cloudKit(_:))
    {
      if (v96)
      {
        v26 = v7;
        sub_100133A90(v103, v95);
        v27 = v101;
        sub_1000079B4(v101, &qword_1007831D0);
        v28 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
        v29 = type metadata accessor for REMSharedListUserOperationDetail();
        v30 = *(v29 - 8);
        (*(v30 + 104))(v27, v28, v29);
        (*(v30 + 56))(v27, 0, 1, v29);
        v31 = v100;
        v32 = v102;
        (*(v100 + 104))(v27, enum case for REMUserOperation.startSharedList(_:), v102);
        v93(v27, 0, 1, v32);
LABEL_31:
        v70 = v98;
LABEL_32:
        sub_10000794C(v27, v70, &qword_1007831D0);
        v71 = (*(v31 + 48))(v70, 1, v32);
        v72 = v94;
        if (v71 == 1)
        {
          sub_1000079B4(v27, &qword_1007831D0);

          v73 = v70;
        }

        else
        {
          v74 = v99;
          (*(v31 + 32))(v99, v70, v32);
          type metadata accessor for REMAnalyticsManager();
          v75 = v32;
          v100 = static REMAnalyticsManager.shared.getter();
          v76 = sub_100058000(&qword_1007757E8);
          v77 = v26;
          v78 = &v26[*(v76 + 48)];
          v79 = &v77[*(v76 + 80)];
          (*(v31 + 16))(v77, v74, v75);
          type metadata accessor for TTRUserDefaults();
          v80 = v31;
          v81 = static TTRUserDefaults.appUserDefaults.getter();
          v82 = TTRUserDefaults.activitySessionId.getter();
          v84 = v83;

          *v78 = v82;
          v78[1] = v84;
          v85 = static TTRUserDefaults.appUserDefaults.getter();
          TTRUserDefaults.activitySessionBeginTime.getter();

          *v79 = _typeName(_:qualified:)();
          v79[1] = v86;
          v87 = v92;
          (*(v72 + 104))(v77, enum case for REMAnalyticsEvent.userOperation(_:), v92);
          REMAnalyticsManager.post(event:)();

          (*(v72 + 8))(v77, v87);
          (*(v80 + 8))(v99, v102);
          v73 = v101;
        }

        sub_1000079B4(v73, &qword_1007831D0);
        return;
      }

      v39 = type metadata accessor for TTRIListSharingController();
      v40 = objc_allocWithZone(v39);
      *&v40[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v41 = v103;
      *&v40[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_list] = v103;
      v110.receiver = v40;
      v110.super_class = v39;
      v42 = v41;
      v43 = objc_msgSendSuper2(&v110, "init");
      v44 = *(v3 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);
      *(v3 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController) = v43;
      v45 = v43;

      *&v45[OBJC_IVAR____TtC9Reminders25TTRIListSharingController_delegate + 8] = &off_10072DB50;
      swift_unknownObjectWeakAssign();
      v46 = sub_1005AB938();
      if (v46)
      {
        v47 = v46;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v49 = Strong;
          v50 = [Strong presentedViewController];
          v27 = v101;
          if (v50)
          {
            v51 = v50;
            v52 = swift_allocObject();
            *(v52 + 16) = v49;
            *(v52 + 24) = v47;
            *(v52 + 32) = 1;
            v108 = sub_100233C2C;
            v109 = v52;
            aBlock = _NSConcreteStackBlock;
            v105 = 1107296256;
            v106 = sub_10001047C;
            v107 = &unk_10072DC58;
            v53 = _Block_copy(&aBlock);
            v54 = v49;
            v49 = v47;

            [v51 dismissViewControllerAnimated:1 completion:v53];
            _Block_release(v53);

            v45 = v54;
          }

          else
          {
            [v49 presentViewController:v47 animated:1 completion:0];
            v51 = v47;
          }

          v26 = v7;

          v45 = v51;
        }

        else
        {
          v26 = v7;
          v49 = v47;
          v27 = v101;
        }

        v70 = v98;

        sub_1000079B4(v27, &qword_1007831D0);
        v88 = enum case for REMSharedListUserOperationDetail.cloudKitShare(_:);
        v89 = type metadata accessor for REMSharedListUserOperationDetail();
        v90 = *(v89 - 8);
        (*(v90 + 104))(v27, v88, v89);
        (*(v90 + 56))(v27, 0, 1, v89);
        v31 = v100;
        v32 = v102;
        (*(v100 + 104))(v27, enum case for REMUserOperation.manageSharedList(_:), v102);
        v93(v27, 0, 1, v32);
        goto LABEL_32;
      }

      v26 = v7;
    }

    else
    {
      if (v25 == enum case for TTRListSharingUIType.custom(_:))
      {
        v26 = v7;
        sub_100538E24(v103, v3);
        v34 = [v103 isShared];
        v27 = v101;
        sub_1000079B4(v101, &qword_1007831D0);
        v35 = enum case for REMSharedListUserOperationDetail.calDAVShare(_:);
        v36 = type metadata accessor for REMSharedListUserOperationDetail();
        v37 = *(v36 - 8);
        (*(v37 + 104))(v17, v35, v36);
        (*(v37 + 56))(v17, 0, 1, v36);
        v31 = v100;
        v38 = &enum case for REMUserOperation.manageSharedList(_:);
        if (!v34)
        {
          v38 = &enum case for REMUserOperation.startSharedList(_:);
        }

        v32 = v102;
        (*(v100 + 104))(v17, *v38, v102);
        v93(v17, 0, 1, v32);
        sub_100539454(v17, v27);
        goto LABEL_31;
      }

      if (v25 != enum case for TTRListSharingUIType.unsupported(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v26 = v7;
      v55 = v103;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        *v58 = 138412802;
        v60 = [v55 objectID];
        *(v58 + 4) = v60;
        *v59 = v60;
        *(v58 + 12) = 2080;
        aBlock = 0;
        v105 = 0xE000000000000000;
        v61 = [v55 account];
        v62 = [v61 type];

        v111 = v62;
        type metadata accessor for REMAccountType(0);
        _print_unlocked<A, B>(_:_:)();
        v63 = sub_100004060(aBlock, v105, &v112);

        *(v58 + 14) = v63;
        *(v58 + 22) = 2080;
        aBlock = 0;
        v105 = 0xE000000000000000;
        v64 = [v55 canBeShared];
        v65 = v64 == 0;
        if (v64)
        {
          v66 = 1702195828;
        }

        else
        {
          v66 = 0x65736C6166;
        }

        if (v65)
        {
          v67 = 0xE500000000000000;
        }

        else
        {
          v67 = 0xE400000000000000;
        }

        v68 = v67;
        String.append(_:)(*&v66);

        v69 = sub_100004060(aBlock, v105, &v112);

        *(v58 + 24) = v69;
        _os_log_impl(&_mh_execute_header, v56, v57, "Trying to share a list that doesn't support sharing. Probably list.canBeShared is wrong. {listID: %@, accountType: %s, canBeShared: %s}", v58, 0x20u);
        sub_1000079B4(v59, &unk_10076DF80);

        swift_arrayDestroy();
      }
    }

    v32 = v102;
    v31 = v100;
    v27 = v101;
    goto LABEL_31;
  }

  v33 = v103;
}

id sub_1005368C4()
{
  swift_getObjectType();
  v0 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 account];

  return v2;
}

uint64_t sub_100536930()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 160);
    ObjectType = swift_getObjectType();
    v6[3] = type metadata accessor for TTRIShowRemindersInListPresenter();
    v6[4] = &off_10071AA88;
    v6[0] = v0;
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded);
    v5 = *(v2 + 16);

    v5(v6, v4, ObjectType, v2);
    swift_unknownObjectRelease();
    result = sub_100004758(v6);
  }

  *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = 0;
  return result;
}

uint64_t sub_100536A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRTipGroceryRenameSection();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for TTRTipCategorizeYourGroceries();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for TTRRemindersListTips.TipID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for TTRRemindersListTips.TipID.convertToGrocery(_:))
  {
    sub_10053940C(&qword_10078B8E0, type metadata accessor for TTRIShowRemindersInListPresenter);
    swift_unknownObjectRetain();
    TTRTipCategorizeYourGroceries.init(delegate:)();
    sub_10053940C(&qword_10078B8E8, &type metadata accessor for TTRTipCategorizeYourGroceries);
LABEL_5:
    AnyTip.init<A>(_:)();
    v12 = type metadata accessor for AnyTip();
    return (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
  }

  if (v11 == enum case for TTRRemindersListTips.TipID.renameSection(_:))
  {
    TTRTipGroceryRenameSection.init()();
    sub_10053940C(&qword_10078B8D8, &type metadata accessor for TTRTipGroceryRenameSection);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

void sub_100536CF8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRListOrCustomSmartList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v6 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_10078ADE0);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497463656A626FLL;
  *(inited + 40) = 0xE800000000000000;
  v10 = [v7 objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v10;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70);
  sub_10000FD44();

  aBlock = 0;
  v11 = [v7 fetchRemindersWithError:&aBlock];
  v12 = aBlock;
  if (v11)
  {
    v13 = v11;
    sub_100003540(0, &qword_10076BB00);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v12;

    if (v14 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      *v5 = v7;
      v17 = enum case for TTRListOrCustomSmartList.list(_:);
      v18 = *(v3 + 104);
      v18(v5, enum case for TTRListOrCustomSmartList.list(_:), v2);
      v19 = v7;
      sub_1002E91A0(v5);
      v44 = v1;
      v20 = *(v3 + 8);
      v20(v5, v2);
      *v5 = v19;
      v18(v5, v17, v2);
      v21 = v19;
      sub_1002E950C(v5);
      v20(v5, v2);
      v22 = String._bridgeToObjectiveC()();

      v23 = String._bridgeToObjectiveC()();

      v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

      static TTRLocalizableStrings.Common.alertCancelButton.getter();
      v25 = String._bridgeToObjectiveC()();

      v26 = objc_opt_self();
      v27 = [v26 actionWithTitle:v25 style:1 handler:0];

      static TTRLocalizableStrings.Common.deleteButton.getter();
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      *(v29 + 24) = v21;
      v30 = v21;

      v31 = String._bridgeToObjectiveC()();

      v49 = sub_10053956C;
      v50 = v29;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1001762CC;
      v48 = &unk_10072DD98;
      v32 = _Block_copy(&aBlock);

      v33 = [v26 actionWithTitle:v31 style:2 handler:v32];
      _Block_release(v32);

      [v24 addAction:v27];
      [v24 addAction:v33];
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v35 = Strong;
        [Strong presentViewController:v24 animated:1 completion:0];
      }

      return;
    }
  }

  else
  {
    v36 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  static TTRLocalizableStrings.RemindersList.deleteList.getter();
  v37 = objc_opt_self();
  v38 = String._bridgeToObjectiveC()();

  v39 = swift_allocObject();
  *(v39 + 16) = v1;
  *(v39 + 24) = v7;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_100539528;
  *(v40 + 24) = v39;
  v49 = sub_100068444;
  v50 = v40;
  aBlock = _NSConcreteStackBlock;
  v46 = 1107296256;
  v47 = sub_100026440;
  v48 = &unk_10072DD48;
  v41 = _Block_copy(&aBlock);
  v42 = v7;

  [v37 withActionName:v38 block:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_100537430(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    static TTRLocalizableStrings.RemindersList.deleteList.getter();
    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();

    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = a3;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_100539574;
    *(v9 + 24) = v8;
    aBlock[4] = sub_100068444;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072DE10;
    v10 = _Block_copy(aBlock);

    v11 = a3;

    [v6 withActionName:v7 block:v10];

    _Block_release(v10);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100537600(uint64_t a1)
{
  v2 = REMList.accountCapabilities.getter();
  v3 = [v2 supportsDeletionByTTL];

  *(a1 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_shouldShowReminderDeletePrivacyWarningIfNeeded) = v3;
  swift_getObjectType();
  return dispatch thunk of TTRRemindersListInteractorType.delete(_:)();
}

void sub_100537674()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);
}

uint64_t sub_1005376B4()
{
  v0 = sub_1001E6A30();

  swift_unknownObjectRelease();
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders32TTRIShowRemindersInListPresenter_listSharingController);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIShowRemindersInListPresenter()
{
  result = qword_10078AE38;
  if (!qword_10078AE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005377F4()
{
  v1 = v0;
  v2 = *(v0 + 104);
  v3 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderTitle;
  swift_beginAccess();
  *(v2 + v3) = 0;

  v4 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_suggestedSectionCanonicalNameByReminderID;
  swift_beginAccess();
  *(v2 + v4) = 0;

  v5 = OBJC_IVAR____TtC9Reminders35TTRRemindersListPresenterCapability_reminderIDsPreviouslyShownWithSuggestedSection;
  swift_beginAccess();
  *(v2 + v5) = &_swiftEmptySetSingleton;

  v6 = *(v2 + 72);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 120))(ObjectType, v6))
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceNewReminderContextType.newlyInsertedReminderIDs.setter();
    swift_unknownObjectRelease();
  }

  v8 = *(v2 + 72);
  v9 = swift_getObjectType();
  v10 = (*(v8 + 104))(v9, v8);
  if (v10)
  {
    v11 = v10;
    swift_beginAccess();
    *(v11 + 40) = &_swiftEmptySetSingleton;
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = *(v1 + 24);
    v14 = swift_getObjectType();
    (*(v13 + 288))(v14, v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1005379A8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_1005379EC(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for TTRUndoNavigationEditingTarget();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  TTRListDetailSavedObjectID.undoNavigationEditingTarget.getter(a2, a3);
  ObjectType = swift_getObjectType();
  v13 = (*(a5 + 16))(ObjectType, a5);
  dispatch thunk of TTRRemindersListInteractorType.registerUndo(forEditing:byDraining:)();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100537B34(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_10000C36C((v7 + 48), *(v7 + 72));
      sub_100396564(a3, a4);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100537BD4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
  if (result)
  {
    result = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (result)
    {
      v6 = result;
      v7 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
      if (v7 && (v8 = v7, v9 = [v7 groceryContext], v8, v9) && (v10 = objc_msgSend(v9, "shouldCategorizeGroceryItems"), v9, (v10 & 1) != 0))
      {
        v11 = "Data Collection: Intelligent Grocery Corrections";
      }

      else
      {
        v11 = "Data Collection: Auto-Categorization Corrections";
      }

      v12 = (v11 - 32) | 0x8000000000000000;
      static TaskPriority.userInitiated.getter();
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v1;
      v14[5] = v6;
      v14[6] = 0xD000000000000030;
      v14[7] = v12;

      v15 = v6;
      sub_100538AA4(0, 0, v4, &unk_1006455D8, v14);

      return sub_1000079B4(v4, &qword_10076BE10);
    }
  }

  return result;
}

uint64_t sub_100537DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  sub_100058000(&qword_10076BE10);
  v7[14] = swift_task_alloc();
  sub_100058000(&unk_100775660);
  v7[15] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v7[16] = v8;
  v9 = *(v8 - 8);
  v7[17] = v9;
  v7[18] = *(v9 + 64);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v10 = type metadata accessor for CharacterSet();
  v7[21] = v10;
  v7[22] = *(v10 - 8);
  v7[23] = swift_task_alloc();

  return _swift_task_switch(sub_100537F74, 0, 0);
}

uint64_t sub_100537F74()
{
  v1 = *(v0[10] + 80);
  ObjectType = swift_getObjectType();
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_100538030;
  v4 = v0[11];

  return dispatch thunk of TTRRemindersListInteractorType.fetchAutoCategorizationLocalCorrections(of:)(v4, ObjectType, v1);
}

uint64_t sub_100538030(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = sub_100538778;
  }

  else
  {
    v4 = sub_100538144;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100538144()
{
  v68 = v0;
  v0[5] = v0[12];
  v1 = v0 + 5;
  v2 = v0[25];
  v4 = v0[22];
  v3 = v1[18];
  v5 = v1[16];
  v1[1] = v1[8];
  static CharacterSet.alphanumerics.getter();
  sub_10007D420();
  v6 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v8 = v7;
  v62 = *(v4 + 8);
  v62(v3, v5);
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v64 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = v2 + 64;
  v12 = -1;
  v13 = -1 << *(v2 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v2 + 64);
  v15 = (63 - v13) >> 6;

  v16 = 0;
  if (v14)
  {
    while (1)
    {
      v17 = v16;
LABEL_15:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v19 = (v17 << 10) | (16 * v18);
      v20 = (*(v2 + 48) + v19);
      v21 = v20[1];
      v22 = (*(v2 + 56) + v19);
      v23 = *v22;
      v24 = v22[1];
      v66 = *v20;
      v67 = v21;
      swift_bridgeObjectRetain_n();

      v25._countAndFlagsBits = 540945696;
      v25._object = 0xE400000000000000;
      String.append(_:)(v25);
      v26._countAndFlagsBits = v23;
      v26._object = v24;
      String.append(_:)(v26);
      v27._countAndFlagsBits = 10;
      v27._object = 0xE100000000000000;
      String.append(_:)(v27);
      v28._countAndFlagsBits = v66;
      v28._object = v21;
      String.append(_:)(v28);

      if (!v14)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_32:
      swift_once();
      goto LABEL_24;
    }

    if (v17 >= v15)
    {
      break;
    }

    v14 = *(v11 + 8 * v17);
    ++v16;
    if (v14)
    {
      v16 = v17;
      goto LABEL_15;
    }
  }

  v29 = v10;
  v10 = v65;
  v30 = v65[23];
  v31 = v65[21];
  v33 = v65[16];
  v32 = v65[17];
  v34 = v65[15];

  v65[7] = 0xD00000000000001DLL;
  v65[8] = 0x800000010068BE50;
  static CharacterSet.alphanumerics.getter();
  v35 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v37 = v36;
  v62(v30, v31);

  if (v37)
  {
    v38 = v35;
  }

  else
  {
    v38 = 0;
  }

  if (!v37)
  {
    v37 = 0xE000000000000000;
  }

  v66 = 0;
  v67 = 0xE000000000000000;
  _StringGuts.grow(_:)(179);
  v39._countAndFlagsBits = 0xD0000000000000A8;
  v39._object = 0x800000010068BE70;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v38;
  v40._object = v37;
  String.append(_:)(v40);

  v41._countAndFlagsBits = 0x3D656C74695426;
  v41._object = 0xE700000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v64;
  v42._object = v29;
  String.append(_:)(v42);

  v11 = 0;
  v15 = 0xE000000000000000;
  URL.init(string:)();
  if ((*(v32 + 48))(v34, 1, v33) != 1)
  {
    v50 = v65[19];
    v49 = v65[20];
    v51 = v65[17];
    v52 = v65[15];
    v53 = v65[16];
    v54 = v65[14];
    v63 = v54;

    v55 = *(v51 + 32);
    v55(v49, v52, v53);
    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v54, 1, 1, v56);
    (*(v51 + 16))(v50, v49, v53);
    type metadata accessor for MainActor();
    v57 = static MainActor.shared.getter();
    v58 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v57;
    *(v59 + 24) = &protocol witness table for MainActor;
    v55(v59 + v58, v50, v53);
    sub_10009EF3C(0, 0, v63, &unk_100645600, v59);

    (*(v51 + 8))(v49, v53);
    goto LABEL_28;
  }

  sub_1000079B4(v65[15], &unk_100775660);
  if (qword_100767440 != -1)
  {
    goto LABEL_32;
  }

LABEL_24:
  v43 = type metadata accessor for Logger();
  sub_100003E30(v43, qword_10078ADE0);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v66 = v47;
    *v46 = 136315138;
    v48 = sub_100004060(v11, v15, &v66);

    *(v46 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Failed to file radar with auto-categorization local corrections due to invalid radar URL {radarURL: %s}", v46, 0xCu);
    sub_100004758(v47);
  }

  else
  {
  }

LABEL_28:

  v60 = *(v10 + 8);

  return v60();
}

uint64_t sub_100538778()
{
  v12 = v0;
  if (qword_100767440 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10078ADE0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to file radar with grocery local corrections due to error upon fetching grocery local corrections {error: %s}", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100538968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100538A00, v6, v5);
}

uint64_t sub_100538A00()
{

  v1 = [objc_opt_self() defaultWorkspace];
  if (v1)
  {
    LSApplicationWorkspace.open(universalLink:)();
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100538AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000794C(a3, v25 - v10, &qword_10076BE10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000079B4(v11, &qword_10076BE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_100538D64()
{
  swift_getObjectType();
  v1 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
  if (v1)
  {
    v4 = v1;
    swift_getObjectType();
    dispatch thunk of TTRRemindersListInteractorType.convertListToGroceryList(for:)();
    v2 = *(v0 + 144);
    ObjectType = swift_getObjectType();
    (*(v2 + 672))(ObjectType, v2);
  }
}

void sub_100538E24(void *a1, uint64_t a2)
{
  v4 = [a1 store];
  v5 = [a1 objectID];
  v18[0] = 0;
  v6 = [v4 fetchListWithObjectID:v5 error:v18];

  if (v6)
  {
    v7 = v18[0];
    v8 = sub_10045075C(v6, a2, [v6 isOwnedByMe] ^ 1);
    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong presentedViewController];
      if (v11)
      {
        v12 = v11;
        v13 = swift_allocObject();
        *(v13 + 16) = v10;
        *(v13 + 24) = v8;
        *(v13 + 32) = 1;
        v18[4] = sub_10023A490;
        v18[5] = v13;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_10001047C;
        v18[3] = &unk_10072DCA8;
        v14 = _Block_copy(v18);
        v15 = v10;
        v16 = v8;

        [v12 dismissViewControllerAnimated:1 completion:v14];

        _Block_release(v14);
        return;
      }

      [v10 presentViewController:v8 animated:1 completion:0];
    }
  }

  else
  {
    v17 = v18[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_100539080(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  static TTRLocalizableStrings.UndoAction.changeList.getter();
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();

  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100539248;
  *(v13 + 24) = v12;
  v17[4] = sub_100026410;
  v17[5] = v13;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_100026440;
  v17[3] = &unk_10072DC08;
  v14 = _Block_copy(v17);

  v15 = a3;
  swift_unknownObjectRetain();

  [v10 withActionName:v11 block:v14];

  _Block_release(v14);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  return result;
}

void sub_100539258()
{
  v0._object = 0x8000000100686D70;
  v1._countAndFlagsBits = 0x1000000000000034;
  v1._object = 0x800000010068BD30;
  v0._countAndFlagsBits = 0x1000000000000015;
  TTRLocalizedString(_:comment:)(v0, v1);
  v2._object = 0x8000000100686D90;
  v3._object = 0x8000000100686D90;
  v2._countAndFlagsBits = 0xD000000000000037;
  v3._countAndFlagsBits = 0xD000000000000037;
  TTRLocalizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v10 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  static TTRLocalizableStrings.Common.alertOKButton.getter();
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

uint64_t sub_10053940C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100539454(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_1007831D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005394D4()
{
  result = qword_10078B8F0;
  if (!qword_10078B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078B8F0);
  }

  return result;
}

uint64_t sub_10053957C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001AA3C;

  return sub_100537DD0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100539650(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001AA3C;

  return sub_10001A6BC(a1, v4);
}

uint64_t sub_100539708(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_100538968(a1, v6, v7, v1 + v5);
}

unint64_t sub_10053980C()
{
  result = qword_10078B8F8;
  if (!qword_10078B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078B8F8);
  }

  return result;
}

uint64_t sub_1005398CC()
{
  v1 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_cachedListInfo;
  swift_beginAccess();
  sub_10000794C(v0 + v4, v3, &unk_10078A380);
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_1000079B4(v3, &unk_10078A380);
    return 0;
  }

  else
  {
    v8 = TTRRemindersListViewModel.ListInfo.color.getter();
    (*(v6 + 8))(v3, v5);
    return v8;
  }
}

void sub_100539A38(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) != (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = a1 & 1;
    v2 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
    if (v2)
    {
      v4 = v2;
      v3 = [v4 customContext];
      if (v3)
      {

        type metadata accessor for TTRSmartListEditor();
        __chkstk_darwin(v4);
        static TTROneshotEditing.oneshotEdit(_:undoManager:editBlock:)();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100539B50()
{
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) == 2)
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(completedCount:)();
  }

  else
  {
    return TTRRemindersListViewModel.EmptyListMessagingType.init(hasIncompleteOrCompletedReminders:shouldCategorizeGroceryItems:)();
  }
}

uint64_t sub_100539B94@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3 && (v4 = [v3 customContext]) != 0)
  {
    v5 = v4;
    v6 = *(sub_100058000(&qword_10076E918) + 48);
    v7 = [v5 account];
    v8 = [v7 objectID];

    *a1 = v8;
    v9 = REMSmartListCustomContext.filter.getter();
    if (v9)
    {
      v10 = v9;
      REMCustomSmartListFilterDescriptor.lists.getter();
    }

    else
    {

      v16 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
      (*(*(v16 - 8) + 56))(&a1[v6], 1, 1, v16);
    }

    v17 = enum case for TTRAutoCompleteReminderListScope.matching(_:);
    v18 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v20 = *(v18 - 8);
    (*(v20 + 104))(a1, v17, v18);
    v12 = *(v20 + 56);
    v14 = a1;
    v15 = 0;
    v13 = v18;
  }

  else
  {
    v11 = type metadata accessor for TTRAutoCompleteReminderListScope();
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

id sub_100539D94@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListSortingStyleSaveTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListSortingStyleSaveTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100539ECC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    v4 = v3;
    sub_100539F8C(a1);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = sub_1004DD314;
  }

  else
  {
    *a1 = 0;
    type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
    swift_storeEnumTagMultiPayload();
    v5 = 0;
    v6 = sub_10057F4D0;
  }

  v7 = v6;
  result = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  v9 = (a1 + *(result + 20));
  *v9 = v7;
  v9[1] = v5;
  return result;
}

uint64_t sub_100539F8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100058000(&qword_10076D018);
  __chkstk_darwin(v3 - 8);
  v5 = &v22[-v4];
  v6 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterLists();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 customContext];
    if (v12 && (v13 = v12, v14 = REMSmartListCustomContext.filter.getter(), v13, v14))
    {
      REMCustomSmartListFilterDescriptor.lists.getter();
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {

        sub_1000079B4(v5, &qword_10076D018);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        v19 = [objc_opt_self() daemonUserDefaults];
        v20 = [v19 preferredDefaultListID];

        v21 = REMCustomSmartListFilterDescriptor.FilterLists.alternateTargetList(for:defaultListID:)();
        (*(v7 + 8))(v9, v6);

        if (v21)
        {
          *a1 = v21;
          v15 = &enum case for TTRRemindersListTargetContainer.TargetList.listID(_:);
          goto LABEL_8;
        }
      }
    }

    else
    {
    }
  }

  v15 = &enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
LABEL_8:
  v16 = *v15;
  v17 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v17 - 8) + 104))(a1, v16, v17);
  type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10053A29C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*(v4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance))
  {
    __chkstk_darwin(a1);
    v12[2] = v6;
    v12[3] = v7;
    v12[4] = v8;
    v9 = v8;
    type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();

    v10 = sub_1002E7DEC(v9, a4 & 1, sub_10053F7AC, v12);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_10053A394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  (*(*(v8 - 8) + 16))(v7, a3, v8);
  (*(v5 + 104))(v7, enum case for TTRRemindersListViewModel.Item.section(_:), v4);
  v9 = dispatch thunk of TTRRemindersListTreeContentsQueryable.hasLoadedReminderItems(in:)();
  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}

double sub_10053A4F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10053A690();
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = *(v5 + 88);
  v11 = (v5 + 8);
  if (v10(v7, v4) == enum case for TTRRemindersListViewModel.Item.reminder(_:))
  {
    (*v11)(v7, v4);
    v12 = type metadata accessor for TTRSmartListDragAndDropPresenterCapability.MoveReminderSubjectForItem(0);
    *(a2 + 24) = v12;
    *(a2 + 32) = &off_10071A5E0;
    v13 = sub_1000317B8(a2);
    v9(v13, a1, v4);
    *(v13 + *(v12 + 20)) = v8;
    *(v13 + *(v12 + 24)) = 0;
  }

  else
  {

    (*v11)(v7, v4);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10053A690()
{
  v1 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability;
  if (*(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability);
  }

  else
  {
    v3 = REMSmartListTypeCustom;
    type metadata accessor for TTRAttributeMatchingDragAndDropPresenterCapability();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v2 + 40) = 1;
    *(v2 + 24) = &off_10072DF68;
    *(v2 + 32) = v3;
    swift_unknownObjectWeakAssign();
    *(v0 + v1) = v2;
    v4 = v3;
  }

  return v2;
}

uint64_t sub_10053A74C(uint64_t a1)
{
  v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
  {
    swift_getObjectType();
    v7 = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.matchesPredicate(_:)();
    swift_unknownObjectRelease();
    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = [v8 customContext];
  if (v9)
  {
    v10 = REMSmartListCustomContext.filter.getter();

    if (v10)
    {
      sub_100058000(&qword_10076E928);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D400;
      sub_10000B0D8(a1, v9 + 32);
      static Set<>.typesSupportedByCustomSmartList.getter();
      v14[3] = &type metadata for TTRReminderIDsWithMatchingHashtagsProvider;
      v14[4] = sub_10014A994();
      v14[0] = v9;
      v11 = REMCustomSmartListFilterDescriptor.postFetchPredicates(for:reminderIDsWithMatchingHashtagsProvider:)();

      sub_100004758(v14);
      v13[2] = v11;
      sub_10000B0D8(a1, v14);
      v13[1] = v11;
      sub_100058000(&qword_10076E938);
      sub_10011763C(&qword_10076E940, &qword_10076E938);
      Sequence<>.postFetchPredicateTypes.getter();
      REMCustomSmartListFilterDescriptor.PostFetchPredicate.FilterableReminder.init(reminder:forEvaluatingAgainst:)();
      LOBYTE(v9) = Sequence<>.evaluate(with:)();

      (*(v4 + 8))(v6, v3);

      return v9 & 1;
    }

LABEL_7:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10053A9C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10053A690();
  sub_1001D6AC0(a1, a2, a3);
}

uint64_t sub_10053AA24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10053A690();
  sub_1001D6C98(a1, a2);
}

void sub_10053AA78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = a2;
  v4 = type metadata accessor for TTRSectionID();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v47 = (&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v49 = *(v13 - 8);
  v50 = v13;
  __chkstk_darwin(v13);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v19)
  {
    v46 = v4;
    v52 = v19;
    v20 = [v52 customContext];
    if (v20 && (v21 = v20, v45 = v7, v22 = REMSmartListCustomContext.filter.getter(), v21, v22))
    {
      Date.init()();
      TTRReminderEditor.edit(toMatch:now:)();
      (*(v16 + 8))(v18, v15);

      TTRRemindersListTreeViewModel.parent(of:)();

      v23 = type metadata accessor for TTRRemindersListViewModel.Item();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v12, 1, v23) == 1)
      {

        sub_1000079B4(v12, &qword_100772140);
      }

      else if ((*(v24 + 88))(v12, v23) == enum case for TTRRemindersListViewModel.Item.section(_:))
      {
        (*(v24 + 96))(v12, v23);
        v26 = v49;
        v27 = v51;
        v28 = v12;
        v29 = v50;
        (*(v49 + 32))(v51, v28, v50);
        TTRRemindersListViewModel.SectionHeader.id.getter();
        v30 = v45;
        if (v45[11](v9, v6) == enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
        {
          v30[12](v9, v6);
          v45 = *v9;
          sub_100058000(&qword_10076B780);
          v31 = v26;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10062D420;
          v33 = v53;
          v34 = TTRReminderEditor.changeItem.getter();
          v35 = [v34 objectID];

          *(inited + 32) = v35;
          sub_10001D5F8(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          type metadata accessor for TTRSmartListEditor();
          v55 = v52;
          v36 = v52;
          v37 = TTRReminderEditor.changeItem.getter();
          v38 = [v37 saveRequest];

          v54 = v33;
          type metadata accessor for TTRReminderEditor();
          sub_10053F764(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
          TTRUndoableEditing.undoManager.getter();
          TTROneshotEditing.init(item:saveRequest:undoManager:)();
          v40 = v47;
          v39 = v48;
          v41 = v45;
          v42 = v46;
          *v47 = v45;
          (*(v39 + 104))(v40, enum case for TTRSectionID.sectioned(_:), v42);
          v43 = v41;
          TTRSmartListEditor.updateMembershipsOfReminders(withReminderIDs:destinationSectionID:initialSectionIDByReminderID:)();

          (*(v39 + 8))(v40, v42);
          (*(v31 + 8))(v51, v29);
        }

        else
        {
          (*(v26 + 8))(v27, v29);

          v30[1](v9, v6);
        }
      }

      else
      {

        (*(v24 + 8))(v12, v23);
      }
    }

    else
    {
      v25 = v52;
    }
  }
}

uint64_t sub_10053B168@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
  v3 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  v6 = *(v3 - 8);
  (*(v6 + 104))(a1, v2, v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

void sub_10053B240(void *a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v8)
  {
    v9 = [v8 customContext];
    if (v9)
    {
      v10 = v9;
      v11 = REMSmartListCustomContext.filter.getter();

      if (v11)
      {
        type metadata accessor for TTRReminderEditor();
        sub_10053F764(&unk_1007756A0, &type metadata accessor for TTRReminderEditor);
        v12 = a1;
        TTRUndoableEditing.init(changeItem:undoManager:)();
        Date.init()();
        TTRReminderEditor.edit(toMatch:now:)();

        (*(v4 + 8))(v7, v3);
      }
    }
  }
}

void *sub_10053B3CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v1)
  {
    sub_100003540(0, &qword_1007865E0);
    v2 = v1;
    v1 = static NSUserActivity.forStoringCustomSmartListPayload(for:)();
  }

  return v1;
}

void sub_10053B434()
{
  v1 = type metadata accessor for TTRUserActivityListPayload.State();
  v3 = __chkstk_darwin(v1);
  v5 = (&v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v6)
  {
    *v5 = v6;
    (*(v2 + 104))(v5, enum case for TTRUserActivityListPayload.State.customSmartList(_:), v3);
    v9[3] = type metadata accessor for TTRUserActivityListPayload();
    v9[4] = &protocol witness table for TTRUserActivityListPayload;
    sub_1000317B8(v9);
    v7 = v6;
    TTRUserActivityListPayload.init(state:)();
    NSUserActivity.setPayload(_:)();

    sub_100004758(v9);
  }
}

uint64_t sub_10053B560()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v13 - 8);
  v15 = &v29 - v14;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (!v16)
  {
    return 0;
  }

  v30 = v3;
  v31 = v2;
  sub_100003540(0, &qword_1007865E0);
  v17 = v16;
  v18 = static NSUserActivity.forStoringWindowSceneRestorationPayload()();
  v19 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v17;
    v20 = *(v19 + 8);
    ObjectType = swift_getObjectType();
    sub_10056FD04(ObjectType, v20);
    swift_unknownObjectRelease();
    v22 = type metadata accessor for TTRRemindersListViewModel.Item();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v12, 1, v22) == 1)
    {
      sub_1000079B4(v12, &qword_100772140);
      v24 = 1;
    }

    else
    {
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
      (*(v23 + 8))(v12, v22);
      v24 = 0;
    }

    v17 = v29;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  (*(*(v25 - 8) + 56))(v15, v24, 1, v25);
  v26 = *(sub_100058000(&qword_10076E920) + 48);
  *v5 = [v17 objectID];
  sub_10000794C(v15, v5 + v26, &unk_10076BB50);
  (*(v30 + 104))(v5, enum case for TTRUserActivityWindowSceneRestorationPayload.State.selectedListID(_:), v31);
  TTRUserActivityWindowSceneRestorationPayload.init(state:)();
  v32[3] = v6;
  v32[4] = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  v27 = sub_1000317B8(v32);
  (*(v7 + 16))(v27, v9, v6);
  NSUserActivity.setPayload(_:)();

  (*(v7 + 8))(v9, v6);
  sub_1000079B4(v15, &unk_10076BB50);
  sub_100004758(v32);
  return v18;
}

uint64_t sub_10053B9A4()
{
  v1 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v1 - 8);
  v3 = (&v11 - v2);
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 accountCapabilities];
    [v6 supportsSections];

    *v3 = v5;
    v7 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
    v8 = type metadata accessor for TTRListOrCustomSmartList();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    return TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
  }

  else
  {

    return TTRRemindersListSectionMenuCapabilities.init()();
  }
}

id sub_10053BB2C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v3)
  {
    *a1 = v3;
    v4 = enum case for TTRRemindersListInteractorSectionsCapabilityTarget.smartList(_:);
    v10 = v3;
    v5 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a1, v4, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v7 = v10;
  }

  else
  {
    v8 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10053BC64@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v2 = type metadata accessor for TTRRemindersListViewModel.ListInfo.MacOS();
  __chkstk_darwin(v2 - 8);
  v4 = &v67[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for TTRRemindersListViewModel.ListInfo.IOS();
  __chkstk_darwin(v5 - 8);
  v7 = &v67[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_100058000(&qword_1007693B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v67[-v9];
  v11 = sub_100058000(&qword_1007693B8);
  __chkstk_darwin(v11 - 8);
  v88 = &v67[-v12];
  v13 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
  v87 = *(v13 - 8);
  __chkstk_darwin(v13);
  v91 = &v67[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100058000(&unk_10076DF20);
  __chkstk_darwin(v15 - 8);
  v84 = &v67[-v16];
  v17 = type metadata accessor for TTRRemindersListSectionMenuCapabilities();
  v85 = *(v17 - 8);
  v86 = v17;
  __chkstk_darwin(v17);
  v19 = &v67[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_100058000(&unk_100780980);
  __chkstk_darwin(v20 - 8);
  v90 = &v67[-v21];
  v22 = sub_100058000(&unk_100775640);
  __chkstk_darwin(v22 - 8);
  v24 = &v67[-v23];
  v25 = type metadata accessor for TTRListColors.Color();
  __chkstk_darwin(v25);
  v29 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v30 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v30)
  {
    v31 = v1;
    v75 = v13;
    v79 = v28;
    v80 = v26;
    v81 = v10;
    v82 = v7;
    v83 = v4;
    v32 = &v67[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
    type metadata accessor for TTRListColors();
    v93[3] = sub_100003540(0, &qword_100770978);
    v93[4] = &protocol witness table for REMSmartList;
    v93[0] = v30;
    v33 = v30;
    static TTRListColors.color(for:)();
    sub_1000079B4(v93, &unk_100775680);
    v34 = [v33 accountCapabilities];
    v68 = [v34 supportsSections];

    *v24 = [v33 objectID];
    v35 = enum case for TTRListType.customSmartList(_:);
    v36 = type metadata accessor for TTRListType();
    v37 = *(v36 - 8);
    (*(v37 + 104))(v24, v35, v36);
    v38 = *(v37 + 56);
    v78 = v24;
    v38(v24, 0, 1, v36);
    v76 = v33;
    v92 = v33;
    v74 = protocol witness for TTRListProtocol.displayName.getter in conformance REMSmartList();
    v73 = v39;
    v77 = v32;
    v72 = TTRListColors.Color.nativeColor.getter();
    v40 = 0;
    v70 = *(v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount + 16);
    if ((v70 & 1) == 0)
    {
      v40 = *(v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount + 8);
    }

    v69 = (v31 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount);
    v71 = v40;
    v41 = type metadata accessor for TTRRemindersListViewModel.ListSharingInfo();
    (*(*(v41 - 8) + 56))(v90, 1, 1, v41);
    swift_getObjectType();
    v42 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter();
    v43 = v91;
    if (v42)
    {
      swift_unknownObjectRelease();
    }

    v44 = *(v31 + v29);
    if (v44)
    {
      v45 = v44;
      v46 = [v45 accountCapabilities];
      [v46 supportsSections];

      v47 = v84;
      *v84 = v45;
      v48 = enum case for TTRListOrCustomSmartList.customSmartList(_:);
      v49 = type metadata accessor for TTRListOrCustomSmartList();
      v50 = *(v49 - 8);
      (*(v50 + 104))(v47, v48, v49);
      (*(v50 + 56))(v47, 0, 1, v49);
      v43 = v91;
      TTRRemindersListSectionMenuCapabilities.init(listOrCustomSmartList:canSupportAddSection:)();
    }

    else
    {
      TTRRemindersListSectionMenuCapabilities.init()();
    }

    v56 = v75;
    LODWORD(v84) = TTRRemindersListSectionMenuCapabilities.canSupportAddSection.getter();
    (*(v85 + 8))(v19, v86);
    v57 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.deleteCompletedContext.getter();
    if (v57)
    {
      swift_unknownObjectRelease();
    }

    v58 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.templateContext.getter();
    if (v58)
    {
      swift_unknownObjectRelease();
    }

    v59 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:);
    if (!v68)
    {
      v59 = &enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:);
    }

    (*(v87 + 104))(v43, *v59, v56);
    dispatch thunk of TTRRemindersListDataModelSourceBaseType.printingDataModelSource.getter();
    sub_1000079B4(v93, &qword_1007693C0);
    if (dispatch thunk of TTRRemindersListDataModelSourceBaseType.showCompletedContext.getter())
    {
      swift_getObjectType();
      LODWORD(v87) = dispatch thunk of TTRRemindersListDataModelSourceShowCompletedContextType.showCompleted.getter();
      swift_unknownObjectRelease();
    }

    else
    {
      LODWORD(v87) = 0;
    }

    if (v69[2])
    {
      v85 = 0;
    }

    else
    {
      v85 = *v69;
    }

    LODWORD(v86) = v58 != 0;
    LODWORD(v75) = v57 != 0;
    LODWORD(v69) = v42 != 0;
    v60 = v76;
    v61 = [v76 objectID];
    v62 = [v61 stringRepresentation];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v63 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
    (*(*(v63 - 8) + 56))(v88, 1, 1, v63);
    v64 = type metadata accessor for TTRTemplatePublicLinkData();
    (*(*(v64 - 8) + 56))(v81, 1, 1, v64);
    [v60 isOriginOfExistingTemplate];
    TTRRemindersListViewModel.ListInfo.IOS.init(showsActionMenuButton:hasBottomInsetForPencilInput:usesFlatDiffableSnapshot_workaroundRdar135908527:)();
    TTRRemindersListViewModel.ListInfo.MacOS.init(wantsTopShadow:)();
    v65 = v89;
    TTRRemindersListViewModel.ListInfo.init(listType:name:color:reminderCount:sharingInfo:canCreateNewReminder:canToggleCompletedReminderVisbility:canAddSection:canClearCompletedReminders:canSaveAsTemplate:supportsEditableSections:canBePrinted:completedRemindersShown:hasDefaultNewReminderButton:completedRemindersCount:canBeDeleted:collapsedStatesAutosaveName:canCreateCustomSmartListForHashtagsState:hashtagsStateToShow:templateStatus:isOriginOfExistingTemplate:isPublicTemplatePreview:shouldCategorizeGroceryItems:shouldAutoCategorizeItems:isRecentlyDeletedList:iOS:macOS:)();

    (*(v79 + 8))(v77, v80);
    v66 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    return (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  }

  else
  {
    v51 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v52 = *(*(v51 - 8) + 56);
    v53 = v51;
    v54 = v89;

    return v52(v54, 1, 1, v53);
  }
}

uint64_t sub_10053C75C()
{
}

uint64_t sub_10053C7AC()
{
  v0 = sub_10056FD38();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRShowCustomSmartListViewModelSource()
{
  result = qword_10078B958;
  if (!qword_10078B958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10053C90C(void *a1)
{
  v2 = v1;
  v36 = *v1;
  v37 = type metadata accessor for REMAnalyticsEvent();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10078A380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v36 - v9;
  v11 = [a1 objectID];
  v12 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v13 = *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  if (v13)
  {
    v14 = [v13 objectID];
    v15 = v14;
    if (v11)
    {
      if (v14)
      {
        sub_100003540(0, &qword_10076BA50);
        v16 = static NSObject.== infix(_:_:)();

LABEL_9:
        v11 = v15;
        goto LABEL_10;
      }

LABEL_6:
      v16 = 0;
LABEL_10:

      goto LABEL_12;
    }

    if (v14)
    {
      v16 = 0;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    goto LABEL_6;
  }

  v16 = 1;
LABEL_12:
  v17 = [a1 showingLargeAttachments];
  *(v1 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = v17;
  v18 = *(v1 + v12);
  *(v1 + v12) = a1;

  v19 = a1;
  sub_10053BC64(v10);
  sub_10056F540(v10);
  if ((v16 & 1) == 0)
  {
    v20 = v1 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 1);
      ObjectType = swift_getObjectType();
      (*(v21 + 88))(1, ObjectType, v21);
      swift_unknownObjectRelease();
    }

    type metadata accessor for TTRUserDefaults();
    v23 = static TTRUserDefaults.appUserDefaults.getter();
    type metadata accessor for REMAnalyticsManager();
    static REMAnalyticsManager.shared.getter();
    v24 = sub_100058000(&qword_100770980);
    v25 = &v6[*(v24 + 48)];
    v26 = &v6[*(v24 + 80)];
    v27 = enum case for REMRemindersOpenUserOperation.customSmartList(_:);
    v28 = type metadata accessor for REMRemindersOpenUserOperation();
    (*(*(v28 - 8) + 104))(v6, v27, v28);
    *v25 = TTRUserDefaults.activitySessionId.getter();
    v25[1] = v29;
    TTRUserDefaults.activitySessionBeginTime.getter();
    *v26 = _typeName(_:qualified:)();
    v26[1] = v30;
    v31 = v37;
    (*(v4 + 104))(v6, enum case for REMAnalyticsEvent.openListUserOperation(_:), v37);
    REMAnalyticsManager.post(event:)();

    (*(v4 + 8))(v6, v31);
  }

  v32 = v2 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v32 + 1);
    v34 = swift_getObjectType();
    (*(v33 + 104))(v34, v33);
    swift_unknownObjectRelease();
  }

  return sub_1000079B4(v10, &unk_10078A380);
}

uint64_t sub_10053CCF0(void *a1, uint64_t a2, uint64_t a3)
{
  v192 = a2;
  v6 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v6 - 8);
  v146 = &v143 - v7;
  v8 = sub_100058000(&unk_10076B050);
  __chkstk_darwin(v8 - 8);
  v213 = &v143 - v9;
  v212 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v174 = *(v212 - 8);
  __chkstk_darwin(v212);
  v211 = (&v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v210 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextSize();
  v175 = *(v210 - 8);
  __chkstk_darwin(v210);
  v209 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor();
  v176 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle();
  v178 = *(v193 - 8);
  __chkstk_darwin(v193);
  v206 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10076B060);
  __chkstk_darwin(v14 - 8);
  v205 = &v143 - v15;
  v204 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  v171 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle.Separator();
  v170 = *(v218 - 8);
  __chkstk_darwin(v218);
  v161 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v202 = &v143 - v19;
  v201 = type metadata accessor for REMRemindersListDataView.SectionLite.SectionType();
  v169 = *(v201 - 8);
  __chkstk_darwin(v201);
  v216 = (&v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for TTRListColors.Color();
  v168 = *(v200 - 8);
  __chkstk_darwin(v200);
  v162 = &v143 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v167 = *(v199 - 8);
  __chkstk_darwin(v199);
  v198 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v197 = &v143 - v24;
  v196 = sub_100058000(&qword_10076E8D8);
  __chkstk_darwin(v196);
  v221 = &v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v195 = &v143 - v27;
  v194 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v215 = *(v194 - 8);
  __chkstk_darwin(v194);
  v214 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100058000(&qword_10076E8D0);
  __chkstk_darwin(v29);
  v145 = &v143 - v30;
  v31 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v31 - 8);
  v144 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v148 = &v143 - v34;
  v35 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v189 = *(v35 - 8);
  __chkstk_darwin(v35);
  v188 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for TTRTipKitDataModelSourceContextKeyCondition();
  v219 = *(v37 - 8);
  v220 = v37;
  __chkstk_darwin(v37);
  v217 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v191 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100058000(&qword_100769378);
  __chkstk_darwin(v42 - 8);
  v44 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v45);
  v48 = &v143 - v47;
  v49 = OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList;
  v159 = v3;
  v50 = *(v3 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
  v147 = a3;
  v143 = v29;
  if (!v50)
  {
    if (!a1)
    {
      v53 = 0;
      v54 = 1;
      goto LABEL_16;
    }

    v52 = 0;
LABEL_7:
    v55 = [a1 sortingStyle];
    v56 = v55;
    if (v52)
    {
      if (v55)
      {
        v186 = v39;
        v187 = a1;
        v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v59 = v58;
        if (v57 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v59 == v60)
        {
          LODWORD(v190) = 1;
        }

        else
        {
          LODWORD(v190) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        a1 = v187;
        v39 = v186;
      }

      else
      {
        LODWORD(v190) = 0;
        v56 = v52;
      }
    }

    else
    {
      if (!v55)
      {
        LODWORD(v190) = 1;
        goto LABEL_20;
      }

      LODWORD(v190) = 0;
    }

LABEL_20:
    v61 = v159;
    v62 = *(v159 + v49);
    *(v159 + v49) = a1;
    v53 = a1;
    v52 = a1;

    v63 = v61 + OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v64 = *(v63 + 8);
      ObjectType = swift_getObjectType();
      (*(v64 + 104))(ObjectType, v64);
      swift_unknownObjectRelease();
    }

    v54 = 0;
    goto LABEL_23;
  }

  v51 = [v50 sortingStyle];
  v52 = v51;
  if (a1)
  {
    goto LABEL_7;
  }

  v53 = 0;
  v54 = 1;
  if (!v51)
  {
LABEL_16:
    LODWORD(v190) = 1;
    goto LABEL_24;
  }

  LODWORD(v190) = 0;
LABEL_23:

LABEL_24:
  REMRemindersListDataView.SectionsModel.remindersCount.getter();
  sub_10000794C(v48, v44, &qword_100769378);
  v66 = (*(v40 + 48))(v44, 1, v39);
  if (v66 == 1)
  {
    v67 = 0;
    v68 = 0;
  }

  else
  {
    v69 = v191;
    (*(v40 + 32))(v191, v44, v39);
    v67 = REMRemindersListDataView.CountByCompleted.completed.getter();
    v68 = REMRemindersListDataView.CountByCompleted.incomplete.getter();
    (*(v40 + 8))(v69, v39);
  }

  sub_1000079B4(v48, &qword_100769378);
  v70 = v159;
  v71 = v159 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount;
  *v71 = v67;
  *(v71 + 8) = v68;
  *(v71 + 16) = v66 == 1;
  *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) = REMRemindersListDataView.SectionsModel.hasIncompleteOrCompletedReminders.getter();
  swift_getObjectType();
  result = dispatch thunk of TTRRemindersListDataModelSourceBaseType.tipKitContext.getter();
  if (result)
  {
    swift_getObjectType();
    (*(v219 + 104))(v217, enum case for TTRTipKitDataModelSourceContextKeyCondition.unknown(_:), v220);
    dispatch thunk of TTRRemindersListDataModelSourceTipKitContextType.thisListHasCompletedReminders.setter();
    result = swift_unknownObjectRelease();
  }

  v73 = v162;
  if ((v54 & 1) == 0)
  {
    v74 = v53;
    v75 = v74;
    if ((v190 & 1) == 0)
    {
      v123 = [v74 sortingStyle];
      v124 = v188;
      REMSortingStyle.dataViewSortingStyle.getter();

      sub_10057A85C();
      return (*(v189 + 8))(v124, v35);
    }

    sub_10053BC64(v148);
    v158 = static TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidthOrHiddenForFirstSection.getter();
    v160 = v76;
    v77 = REMRemindersListDataView.SectionsModel.sections.getter();
    v78 = *(v77 + 16);
    if (v78)
    {
      v191 = v75;
      *&v222 = _swiftEmptyArrayStorage;
      sub_1004A22E0(0, v78, 0);
      v190 = *(v77 + 16);
      v187 = type metadata accessor for REMRemindersListDataView.SectionLite();
      v79 = *(v187 - 8);
      v185 = v77 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      v80 = v222;
      v217 = type metadata accessor for TTRListColors();
      v81 = 0;
      v184 = v79 + 16;
      v186 = v79;
      v183 = v79 + 32;
      v182 = (v169 + 11);
      v181 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectioned(_:);
      v157 = enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:);
      v156 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.Separator.fullWidth(_:);
      v155 = (v170 + 104);
      v180 = (v168 + 7);
      v179 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextStyle.plain(_:);
      v178 += 13;
      v177 = enum case for TTRRemindersListViewModel.SectionHeaderTitle.DefaultTextColor.regular(_:);
      v176 += 13;
      v175 += 13;
      v174 += 13;
      v173 = (v171 + 2);
      v172 = (v171 + 7);
      ++v171;
      v154 = (v169 + 12);
      v153 = (v170 + 16);
      v152 = (v168 + 2);
      v151 = (v170 + 8);
      LODWORD(v170) = enum case for TTRRemindersListViewModel.SectionHeaderTitle.TextSize.regular(_:);
      v169 = (v167 + 2);
      ++v168;
      ++v167;
      v150 = enum case for TTRRemindersListViewModel.SectionID.sectionless(_:);
      v149 = enum case for TTRRemindersListViewModel.SectionID.objectID(_:);
      v166 = v215 + 32;
      v82 = v216;
      v189 = v77;
      v188 = v78;
      while (v190 != v81)
      {
        if (v81 >= *(v77 + 16))
        {
          goto LABEL_56;
        }

        v220 = v80;
        v83 = v196;
        v84 = *(v196 + 48);
        v85 = v186;
        v86 = v195;
        v87 = v187;
        (*(v186 + 16))(&v195[v84], v185 + *(v186 + 72) * v81, v187);
        v88 = v221;
        *v221 = v81;
        v89 = *(v83 + 48);
        (*(v85 + 32))(&v88[v89], &v86[v84], v87);
        v90 = sub_100003540(0, &qword_100770978);
        v224 = v90;
        v225 = &protocol witness table for REMSmartList;
        v223 = v191;
        v91 = v191;
        static TTRListColors.color(for:)();
        sub_1000079B4(&v223, &unk_100775680);
        v219 = v89;
        REMRemindersListDataView.SectionLite.type.getter();
        v92 = v201;
        v93 = (*v182)(v82, v201);
        if (v93 == v181)
        {
          (*v154)(v82, v92);
          v94 = v82[1];
          v164 = *v82;
          v163 = v94;

          v95 = v202;
          v158(v81);
          (*v153)(v161, v95, v218);
          v96 = *v152;
          v165 = v91;
          v97 = v205;
          v98 = v200;
          v96(v205, v73, v200);
          (*v180)(v97, 0, 1, v98);
          (*v178)(v206, v179, v193);
          v99 = v73;
          (*v176)(v207, v177, v208);
          (*v175)(v209, v170, v210);
          v100 = v203;
          v101 = v98;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v103 = v211;
          v102 = v212;
          v104 = v164;
          *v211 = v164;
          (*v174)(v103, v149, v102);
          v105 = v213;
          v106 = v204;
          (*v173)(v213, v100, v204);
          (*v172)(v105, 0, 1, v106);
          v107 = v104;
          v108 = [v165 objectID];
          v109 = v197;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();

          (*v171)(v100, v106);
          (*v151)(v95, v218);
        }

        else
        {
          v101 = v200;
          if (v93 != v157)
          {
            goto LABEL_57;
          }

          REMRemindersListDataView.SectionsModel.sections.getter();

          (*v155)(v202, v156, v218);
          v224 = v90;
          v225 = &protocol witness table for REMSmartList;
          v223 = v91;
          v110 = v91;
          v111 = v205;
          static TTRListColors.color(for:)();
          sub_1000079B4(&v223, &unk_100775680);
          (*v180)(v111, 0, 1, v101);
          (*v178)(v206, v179, v193);
          (*v176)(v207, v177, v208);
          (*v175)(v209, v170, v210);
          v112 = v203;
          TTRRemindersListViewModel.SectionHeaderTitle.init(text:disabled:textStyle:defaultTextColor:textSize:hidesTitleIfEmpty:separator:disclosureColor:ttrAccessibilityIsPlaceholder:)();
          v113 = [v110 objectID];
          v115 = v211;
          v114 = v212;
          *v211 = v113;
          (*v174)(v115, v150, v114);
          v116 = v213;
          v117 = v204;
          (*v173)(v213, v112, v204);
          (*v172)(v116, 0, 1, v117);
          v109 = v197;
          TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
          (*v171)(v112, v117);
          v99 = v162;
        }

        v118 = v199;
        (*v169)(v198, v109, v199);
        v119 = v221;
        REMRemindersListDataView.SectionLite.reminders.getter();
        v120 = v214;
        TTRRemindersListTreeViewModel.Section.init(header:reminders:isDroppedWhenEmpty:)();
        (*v168)(v99, v101);
        (*v167)(v109, v118);
        sub_1000079B4(v119, &qword_10076E8D8);
        v80 = v220;
        *&v222 = v220;
        v122 = *(v220 + 16);
        v121 = *(v220 + 24);
        v73 = v99;
        if (v122 >= v121 >> 1)
        {
          sub_1004A22E0(v121 > 1, v122 + 1, 1);
          v120 = v214;
          v80 = v222;
        }

        ++v81;
        v80[2] = v122 + 1;
        (*(v215 + 32))(v80 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v122, v120, v194);
        v82 = v216;
        v77 = v189;
        if (v188 == v81)
        {
          v125 = v80;

          v70 = v159;
          v75 = v191;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      while (1)
      {
LABEL_57:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }

    v125 = _swiftEmptyArrayStorage;
LABEL_45:
    v126 = v144;
    sub_10000794C(v148, v144, &unk_10078A380);
    v127 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
    v128 = *(v127 - 8);
    if ((*(v128 + 48))(v126, 1, v127) == 1)
    {
      sub_1000079B4(v126, &unk_10078A380);
      v129 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      (*(*(v129 - 8) + 56))(v145, 1, 1, v129);
    }

    else
    {
      v130 = v145;
      TTRRemindersListViewModel.ListInfo.supportsEditableSections.getter();
      (*(v128 + 8))(v126, v127);
      v131 = type metadata accessor for TTRRemindersListViewModel.SupportsEditableSections();
      v132 = *(v131 - 8);
      (*(v132 + 56))(v130, 0, 1, v131);
      v133 = (*(v132 + 88))(v130, v131);
      if (v133 != enum case for TTRRemindersListViewModel.SupportsEditableSections.unsupported(_:))
      {
        if (v133 == enum case for TTRRemindersListViewModel.SupportsEditableSections.firstLevel(_:))
        {
          v134 = REMRemindersListDataView.SectionsModel.sections.getter();
          v135 = sub_100003540(0, &qword_10076E8F0);
          type metadata accessor for TTRRemindersListViewModelSourceSectionsContext();
          v136 = swift_allocObject();
          *(v136 + 64) = 0;
          *(v136 + 24) = 0;
          *(v136 + 32) = 0;
          *(v136 + 16) = 0;
          swift_unknownObjectWeakInit();
          *(v136 + 128) = 0u;
          *(v136 + 144) = 0u;
          *(v136 + 96) = 0u;
          *(v136 + 112) = 0u;
          *(v136 + 64) = &off_10072ED30;
          swift_unknownObjectWeakAssign();
          *(v136 + 80) = v134;
          *(v136 + 88) = v135;
          *(v136 + 72) = v134;
          *(v136 + 40) = &_swiftEmptySetSingleton;
          *(v136 + 48) = 1;
          *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = v136;

LABEL_53:

          v137 = type metadata accessor for TTRRemindersListObjectIDOnlyReminderIDProvider();
          v138 = static TTRRemindersListReminderIDProviding<>.uniqueWithinTree.getter();
          v139 = type metadata accessor for TTRRemindersListViewModel.Item();
          v140 = v146;
          (*(*(v139 - 8) + 56))(v146, 1, 1, v139);
          v224 = v137;
          v225 = &protocol witness table for TTRRemindersListObjectIDOnlyReminderIDProvider;
          v223 = v138;
          sub_10000B0D8(&v223, &v222);
          v141 = swift_allocObject();
          *(v141 + 16) = v125;
          sub_100005FD0(&v222, v141 + 24);
          *(v141 + 64) = v70;

          v142 = v148;
          sub_100586238(1, v148, sub_100070528, v141, v147, 0, v140);

          sub_1000079B4(v140, &qword_100772140);
          sub_1000079B4(v142, &unk_10078A380);

          return sub_100004758(&v223);
        }

        if (v133 != enum case for TTRRemindersListViewModel.SupportsEditableSections.secondLevel(_:))
        {
          goto LABEL_57;
        }
      }
    }

    *(v70 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = 0;
    goto LABEL_53;
  }

  return result;
}

uint64_t sub_10053EA44()
{
  v1 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TTRListType.SortingCapability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_sortingCapability;
  swift_beginAccess();
  (*(v9 + 16))(v11, v0 + v12, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for TTRListType.SortingCapability.notSupported(_:))
  {
    (*(v9 + 96))(v11, v8);
    (*(v2 + 32))(v7, v11, v1);
    (*(v2 + 104))(v4, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v1);
    v14 = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v15 = *(v2 + 8);
    v15(v4, v1);
    v15(v7, v1);
    return v14 & 1;
  }

  if (v13 == enum case for TTRListType.SortingCapability.supported(_:))
  {
    (*(v9 + 96))(v11, v8);
    v14 = *v11;
    return v14 & 1;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10053ECEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRRemindersListViewModel.SectionID.named(_:))
  {
    (*(v12 + 96))(v14, v11);
    (*(v5 + 32))(v10, v14, v4);
    (*(v5 + 16))(v7, v10, v4);
    v16 = (*(v5 + 88))(v7, v4);
    if (v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.customSmartListSection(_:))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_46;
    }

    if (v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.flaggedSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.siriFoundInAppsSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.taggedSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.beforeTodaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayAllDaySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayMorningSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayAfternoonSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayTonightSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayNearbySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.todayEmptySection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.designatedItemsSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastSevenDaysSection(_:) || v16 == enum case for TTRRemindersListViewModel.SectionID.NamedID.completedPastThirtyDaysSection(_:))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_52;
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_55:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  if (v15 != enum case for TTRRemindersListViewModel.SectionID.objectID(_:))
  {
    if (v15 == enum case for TTRRemindersListViewModel.SectionID.scheduledPastDue(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.date(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.day(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.month(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.year(_:) || v15 == enum case for TTRRemindersListViewModel.SectionID.eraAndYear(_:))
    {
      goto LABEL_51;
    }

    if (v15 == enum case for TTRRemindersListViewModel.SectionID.sectionless(_:))
    {
      (*(v12 + 8))(v14, v11);
      goto LABEL_46;
    }

    if (v15 == enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
    {
LABEL_51:
      (*(v12 + 8))(v14, v11);
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  (*(v12 + 96))(v14, v11);
  v17 = *v14;
  v18 = [*v14 entityName];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  sub_100003540(0, &qword_10076E8F0);
  v22 = [swift_getObjCClassFromMetadata() cdEntityName];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {

    goto LABEL_46;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27)
  {
LABEL_46:
    v33 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList);
    if (v33)
    {
      v34 = [v33 customContext];
      if (v34)
      {
        v35 = v34;
        v36 = REMSmartListCustomContext.filter.getter();

        if (v36)
        {
          *a1 = v36;
          v37 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
          swift_storeEnumTagMultiPayload();
          return (*(*(v37 - 8) + 56))(a1, 0, 1, v37);
        }
      }
    }
  }

LABEL_52:
  v39 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  return (*(*(v39 - 8) + 56))(a1, 1, 1, v39);
}

uint64_t sub_10053F310@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance);
  if (v4 && swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v4 + 64);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 16);

    v8(ObjectType, v6);
    swift_unknownObjectRelease();
    v9 = a1;
    TTRSection.init(with:store:)();
  }

  else
  {
    v11 = type metadata accessor for TTRSection();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t sub_10053F43C(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance))
  {
    return 0;
  }

  v4 = sub_1002E28FC(a2);

  return v4;
}

uint64_t sub_10053F4E4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.ReminderID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
  {
    (*(v7 + 96))(v9, v6);
    (*(v3 + 32))(v5, v9, v2);
    v11 = TTRRemindersListViewModel.ReminderID.objectID.getter();
    v12 = OBJC_IVAR____TtC9Reminders31TTRRemindersListViewModelSource_remReminderByObjectID;
    swift_beginAccess();
    v13 = *(v1 + v12);

    v14 = sub_10013F404(v11, v13);

    (*(v3 + 8))(v5, v2);
    return v14;
  }

  if (v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v10 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else if (v10 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_10053F764(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10053F7EC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10078BEE0);
  v1 = sub_100003E30(v0, qword_10078BEE0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10053F8B4(id a1)
{
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
  if (!a1)
  {
    if (!v3)
    {
      return;
    }

    v8 = v3;
    goto LABEL_8;
  }

  v8 = v3;
  if (!v3)
  {
    a1 = a1;
    goto LABEL_8;
  }

  sub_100003540(0, &qword_100788D40);
  a1 = a1;
  v4 = v8;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
LABEL_8:
    v7._object = 0x800000010068C070;
    v7._countAndFlagsBits = 0xD000000000000025;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v7);

    v6 = v8;
    goto LABEL_9;
  }

  v6 = v4;
LABEL_9:
}

uint64_t sub_10053F9B8()
{
  sub_100058000(&qword_10078BFD0);
  swift_allocObject();
  *(v0 + 16) = CurrentValueSubject.init(_:)();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_100777780);
  static OS_dispatch_queue.main.getter();
  type metadata accessor for TTRDeferredAction();
  swift_allocObject();
  *(v0 + 40) = TTRDeferredAction.init(queue:)();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 2;
  sub_100540A68();

  TTRDeferredAction.delegate.setter();

  return v0;
}

void sub_10053FAF0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong, v3 = [Strong viewIfLoaded], v2, !v3))
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = UIView.firstResponderDescendant.getter();

  if (!v12)
  {
    v12 = 0;
LABEL_8:
    v5 = *(v0 + 24);
    v8 = v5;
    v6 = *(v0 + 64);
    if (!v5)
    {
      if (!v6)
      {
        goto LABEL_16;
      }

      v5 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v4 = [v12 undoManager];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  v6 = *(v0 + 64);
  v7 = v4;
  if (!v6)
  {
LABEL_6:
    swift_unknownObjectRelease();
LABEL_14:
    v11 = *(v0 + 64);
    *(v0 + 64) = v5;
    v10 = v5;

    sub_10053FC14();
    goto LABEL_15;
  }

LABEL_10:
  swift_unknownObjectRelease();
  if (v5 != v6)
  {
    goto LABEL_14;
  }

  v10 = v12;
  v12 = v5;
LABEL_15:

LABEL_16:
}

void sub_10053FC14()
{
  v1 = v0;
  if (qword_100767448 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_10078BEE0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315138;
    v33 = *(v0 + 64);
    sub_100058000(&qword_10078BFE0);
    v7 = Optional.descriptionOrNil.getter();
    v9 = sub_100004060(v7, v8, v31);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIShowRemindersUndoManagerObserver: start observing undo manager: %s", v5, 0xCu);
    sub_100004758(v6);
  }

  v10 = *(v0 + 64);
  if (v10)
  {
    v34 = NSUndoManagerDidCloseUndoGroupNotification;
    v35 = NSUndoManagerDidUndoChangeNotification;
    v11 = TTRUndoManagerDidRemoveAllActionsNotification;
    v36 = NSUndoManagerDidRedoChangeNotification;
    v37 = TTRUndoManagerDidRemoveAllActionsNotification;
    v33 = _swiftEmptyArrayStorage;
    v12 = v10;
    v13 = NSUndoManagerDidCloseUndoGroupNotification;
    v14 = NSUndoManagerDidUndoChangeNotification;
    v29 = NSUndoManagerDidRedoChangeNotification;
    v30 = v11;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = objc_opt_self();
    v16 = v13;
    v17 = [v15 defaultCenter];
    v18 = sub_100003540(0, &qword_100788D40);
    v32 = v18;
    v31[0] = v12;
    swift_allocObject();
    swift_weakInit();
    v19 = v12;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v20 = v14;
    v21 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v19;
    swift_allocObject();
    swift_weakInit();
    v22 = v19;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v23 = v29;
    v24 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v22;
    swift_allocObject();
    swift_weakInit();
    v25 = v22;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v26 = v30;
    v27 = [v15 defaultCenter];
    v32 = v18;
    v31[0] = v25;
    swift_allocObject();
    swift_weakInit();
    v28 = v25;

    NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v31);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    type metadata accessor for Name(0);
    swift_arrayDestroy();
    v10 = v33;
  }

  *(v1 + 56) = v10;

  sub_10054049C();
}

uint64_t sub_1005401E4()
{
  v0 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_10009EF3C(0, 0, v2, &unk_1006458B0, v6);
}

uint64_t sub_100540364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005403FC, v6, v5);
}

uint64_t sub_1005403FC()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10054049C();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_10054049C()
{
  v1 = v0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 canUndo];
    v5 = [v3 canRedo];

    if (v5)
    {
      v6 = 256;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 | v4;
    v8 = *(v1 + 80);
    if (*(v1 + 80) != 2 && v2 == *(v1 + 72) && ((v4 ^ v8) & 1) == 0 && ((v5 ^ ((v8 & 0x100) == 0)) & 1) != 0)
    {
      return;
    }
  }

  else
  {
    if (*(v0 + 80) == 2)
    {
      return;
    }

    v7 = 2;
  }

  if (qword_100767448 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_10078BEE0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "TTRIShowRemindersUndoManagerObserver: undo manager state changed", v12, 2u);
  }

  *(v1 + 72) = v2;
  *(v1 + 80) = v7;
  v13 = *(v1 + 64);
  CurrentValueSubject.send(_:)();
}

uint64_t sub_100540640()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRIShowRemindersUndoManagerObserver.UndoManagerAndState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIShowRemindersUndoManagerObserver.UndoManagerAndState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100540774(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakAssign();
  *(v2 + 48) = 0;

  v4 = [a1 viewIfLoaded];
  if (v4 && (v5 = v4, v6 = [v4 window], v5, v6))
  {
    v7 = [objc_opt_self() defaultCenter];
    v17[3] = sub_100003540(0, &qword_10078BFE8);
    v17[0] = v6;
    v8 = objc_opt_self();
    v9 = v6;
    v10 = [v8 mainQueue];
    swift_allocObject();
    swift_weakInit();

    v11 = NSNotificationCenter.ttr_addObserver(forName:object:queue:using:)();

    sub_10000B070(v17);
  }

  else
  {
    if (qword_100767448 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003E30(v12, qword_10078BEE0);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "TTRIShowRemindersUndoManagerObserver#startObserving: missing window", v15, 2u);
    }

    v11 = 0;
  }

  *(v2 + 48) = v11;
}

uint64_t sub_1005409CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1._object = 0x800000010068C070;
    v1._countAndFlagsBits = 0xD000000000000025;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v1);
  }

  return result;
}

unint64_t sub_100540A68()
{
  result = qword_10078BFD8;
  if (!qword_10078BFD8)
  {
    type metadata accessor for TTRIShowRemindersUndoManagerObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10078BFD8);
  }

  return result;
}

uint64_t sub_100540AC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA3C;

  return sub_100540364(a1, v4, v5, v6);
}

void *sub_100540B84(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v12 = *a2;
    *a1 = *a2;
    a1 = (v12 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = (a1 + v8);
    v10 = (a2 + v8);
    v11 = v10[1];
    *v9 = *v10;
    v9[1] = v11;
    *(a1 + a3[7]) = *(a2 + a3[7]);
  }

  return a1;
}

uint64_t sub_100540C74(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v2 - 8) + 8))(a1, v2);
}

uint64_t sub_100540CF8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100540D9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v8[1] = v9[1];

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t sub_100540E60(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_100540EF0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  *v8 = v11;
  v8[1] = v10;

  *(a1 + a3[7]) = *(a2 + a3[7]);

  return a1;
}

uint64_t type metadata accessor for TTRIReminderCellAutoCompleteViewModel()
{
  result = qword_10078C048;
  if (!qword_10078C048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10054100C()
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_1005410B8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_1005421BC();
  static TTRTypedController.currentArgument.getter();
  v5 = v11;
  v6 = v12;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_presenter] = v10[1];
  v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_style] = v5;
  *&v2[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_localUndoManager] = v6;
  v10[0].receiver = v2;
  v10[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v7 = v6;
  v8 = [(objc_super *)v10 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v8)
  {
  }

  return v8;
}

void sub_100541210()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, "viewDidLoad");
  v2 = [v0 tableView];
  if (!v2)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  UITableView.fixUpBackgroundColorLoadedFromNibIfNeeded_workaroundRdar108920406()();

  if (v1[OBJC_IVAR____TtC9Reminders29TTRIGroupDetailViewController_style])
  {
    v4._countAndFlagsBits = 0x6E492070756F7247;
    v5._countAndFlagsBits = 0xD000000000000036;
    v5._object = 0x800000010068C1D0;
    v4._object = 0xEA00000000006F66;
    TTRLocalizedString(_:comment:)(v4, v5);
    v6 = 0xD000000000000041;
    v7 = 0x800000010068C210;
    v8 = 1701736260;
    v9 = 0xE400000000000000;
  }

  else
  {
    v10._countAndFlagsBits = 0x756F72472077654ELL;
    v11._countAndFlagsBits = 0xD000000000000035;
    v11._object = 0x800000010068C280;
    v10._object = 0xE900000000000070;
    TTRLocalizedString(_:comment:)(v10, v11);
    v8 = 0x657461657243;
    v6 = 0xD00000000000003ALL;
    v7 = 0x800000010068C2C0;
    v9 = 0xE600000000000000;
  }

  TTRLocalizedString(_:comment:)(*&v8, *&v6);
  v12 = [v1 navigationItem];
  v13 = String._bridgeToObjectiveC()();

  [v12 setTitle:v13];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_18;
  }

  v15 = Strong;
  v16 = String._bridgeToObjectiveC()();

  [v15 setTitle:v16];

  v17 = swift_unknownObjectWeakLoadStrong();
  if (!v17)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = v17;
  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  [v18 setTextColor:v20];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 textLabel];

  if (v23)
  {
    v24 = [v19 labelColor];
    [v23 setTextColor:v24];
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = v25;
  v27 = [v25 textLabel];

  if (v27)
  {
    v28._countAndFlagsBits = 0x6564756C636E49;
    v29._object = 0x800000010068C260;
    v28._object = 0xE700000000000000;
    v29._countAndFlagsBits = 0xD00000000000001FLL;
    TTRLocalizedString(_:comment:)(v28, v29);
    v30 = String._bridgeToObjectiveC()();

    [v27 setText:v30];
  }

  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_22;
  }

  v32 = v31;
  v33 = [v31 detailTextLabel];

  if (v33)
  {
    v34 = [v19 tableCellGrayTextColor];
    [v33 setTextColor:v34];
  }
}

void sub_10054161C()
{
  sub_10014EFDC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = Strong;
  v2 = String._bridgeToObjectiveC()();
  [v1 setText:v2];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 detailTextLabel];

  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();

    [v5 setText:v6];
  }

  else
  {
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = [v7 text];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = String.validatedListName()();
    isValid = v14.isValid;
  }

  else
  {
    isValid = 0;
  }

  v11 = swift_unknownObjectWeakLoadStrong();
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = v11;
  [v11 setEnabled:isValid];
}

void sub_100541864(char a1)
{
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewDidAppear:", a1 & 1);
  [v1 becomeFirstResponder];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = Strong;
  v5 = [Strong text];

  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
LABEL_6:
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_1001AAB2C();
      UITextInput<>.ttrBeginEditing()();

      return;
    }

LABEL_10:
    __break(1u);
  }
}

void sub_100541DBC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong text];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0xE000000000000000;
    }

    sub_10014F30C(v3, v5);

    sub_10014F630();
  }

  else
  {
    __break(1u);
  }
}

void sub_100541EC4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return;
  }

  v1 = Strong;
  v2 = [Strong text];

  if (v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = String.validatedListName()();
    isValid = v7.isValid;
  }

  else
  {
    isValid = 0;
  }

  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  [v4 setEnabled:isValid];
}