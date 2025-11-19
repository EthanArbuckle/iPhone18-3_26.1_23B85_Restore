id sub_100064B8C(char a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 isViewLoaded];
  if (result)
  {
    sub_1000652DC(&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter], v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    swift_storeEnumTagMultiPayload();
    v11 = sub_100065344(v9);
    result = sub_10000BBC4(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v11)
    {
      v12 = &v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString];
      v13 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8];
      v14 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString] & 0xFFFFFFFFFFFFLL;
      if ((v13 & 0x2000000000000000) != 0)
      {
        v14 = HIBYTE(v13) & 0xF;
      }

      if (v14)
      {
        v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchComplete] = 0;
        sub_100F373E0();
        v15 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_boardSearchHelper];
        v16 = *(v12 + 1);
        v31 = *v12;
        v29 = v16;
        v17 = swift_allocObject();
        *(v17 + 16) = v2;
        v18 = a1 & 1;
        *(v17 + 24) = v18;
        v19 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        *(v20 + 24) = v18;
        *(v20 + 32) = v19;
        v30 = v19;
        v21 = v2;

        sub_1008A0F80();
        v22 = type metadata accessor for TaskPriority();
        v23 = *(*(v22 - 8) + 56);
        v23(v6, 1, 1, v22);
        v24 = swift_allocObject();
        v24[2] = 0;
        v24[3] = 0;
        v24[4] = v15;
        v24[5] = sub_100F77230;
        v24[6] = v17;
        v24[7] = v11;

        *(v15 + 64) = sub_100796D54(0, 0, v6, &unk_1014838B8, v24);

        TaskPriority.init(rawValue:)();
        v23(v6, 0, 1, v22);
        v25 = swift_allocObject();
        v25[2] = 0;
        v25[3] = 0;
        v26 = v31;
        v25[4] = v15;
        v25[5] = v26;
        v25[6] = v29;
        v25[7] = v11;
        v25[8] = sub_100F77230;
        v25[9] = v17;
        v25[10] = sub_100F7723C;
        v25[11] = v20;

        v27 = sub_1006E2398(0, 0, v6, &unk_1014838C0, v25);

        sub_10000CAAC(v6, &qword_1019FB750);
        *(v15 + 56) = v27;
      }

      else
      {
        sub_10006601C(v11, v1, a1 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_100064FAC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100064FE4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065024()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100065074()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000650D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006513C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000651A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006520C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000652DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065344(uint64_t a1)
{
  v63 = a1;
  v59 = _s5BoardVMa(0);
  __chkstk_darwin(v59);
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1005B981C(&unk_1019FB770);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = _s4NodeVMa(0);
  v61 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v56 - v9;
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v56 - v17;
  v19 = __chkstk_darwin(v16);
  v64 = &v56 - v20;
  v21 = __chkstk_darwin(v19);
  v57 = &v56 - v22;
  __chkstk_darwin(v21);
  v24 = &v56 - v23;
  v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v25 - 8);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000652DC(v63, v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v63 = v11;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10000BBC4(v24, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 0;
  }

  v56 = v10;
  v28 = sub_100065D50(v24, v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v29 = *&v62[OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot];
  __chkstk_darwin(v28);
  *(&v56 - 2) = v27;

  sub_10003CF3C(1, sub_100066014, (&v56 - 4), v29, v4);

  v30 = v61;
  if ((*(v61 + 48))(v4, 1, v5) == 1)
  {
    sub_10000BBC4(v27, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10000CAAC(v4, &unk_1019FB770);
    return 0;
  }

  v62 = v27;
  v32 = v4;
  v33 = v56;
  result = sub_100065D50(v32, v56, _s4NodeVMa);
  v35 = *(v33 + *(v5 + 20));
  v36 = *(v35 + 16);
  v37 = _swiftEmptyArrayStorage;
  v60 = v18;
  if (v36)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_100776764(0, v36, 0);
    v37 = v65;
    v38 = v35 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v39 = *(v30 + 72);
    do
    {
      sub_1000652DC(v38, v8, _s4NodeVMa);
      sub_1000652DC(v8, v15, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v8, _s4NodeVMa);
      v65 = v37;
      v41 = v37[2];
      v40 = v37[3];
      if (v41 >= v40 >> 1)
      {
        sub_100776764(v40 > 1, v41 + 1, 1);
        v37 = v65;
      }

      v37[2] = v41 + 1;
      result = sub_100065D50(v15, v37 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v41, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v38 += v39;
      --v36;
    }

    while (v36);
    v18 = v60;
  }

  v42 = v64;
  v43 = v62;
  v44 = v57;
  v61 = v37[2];
  if (!v61)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_27:
    sub_10000BBC4(v56, _s4NodeVMa);

    sub_10000BBC4(v43, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    return v31;
  }

  v45 = 0;
  v31 = _swiftEmptyArrayStorage;
  while (v45 < v37[2])
  {
    v46 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v47 = *(v12 + 72);
    sub_1000652DC(v37 + v46 + v47 * v45, v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1000652DC(v44, v42, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000BBC4(v42, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_21:
      sub_100065D50(v44, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100776764(0, v31[2] + 1, 1);
        v31 = v65;
      }

      v54 = v31[2];
      v53 = v31[3];
      if (v54 >= v53 >> 1)
      {
        sub_100776764(v53 > 1, v54 + 1, 1);
        v31 = v65;
      }

      v31[2] = v54 + 1;
      v55 = v31 + v46 + v54 * v47;
      v18 = v60;
      result = sub_100065D50(v60, v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v42 = v64;
      goto LABEL_15;
    }

    v48 = v42;
    v49 = v58;
    sub_100065D50(v48, v58, _s5BoardVMa);
    v50 = *(v49 + *(v59 + 52));
    v51 = v49;
    v42 = v64;
    sub_10000BBC4(v51, _s5BoardVMa);
    if ((v50 & 1) == 0)
    {
      goto LABEL_21;
    }

    result = sub_10000BBC4(v44, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_15:
    ++v45;
    v43 = v62;
    if (v61 == v45)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100065AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065BB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065C80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065CE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065D50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065DB8(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003CAC4(a1, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003DF68(v14, v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_10003E264(v8);
    sub_10003E264(v6);
    v15 = static UUID.== infix(_:_:)();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v16(v8, v2);
    sub_10000BA44(v11, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  }

  else
  {
    sub_10000BA44(v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10006601C(int64_t a1, uint64_t a2, int a3)
{
  v52 = a3;
  v56 = a1;
  v4 = sub_1005B981C(&unk_101A23860);
  v54 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v53 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = v48 - v7;
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A23C00);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v48 - v15;
  v17 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 1);
  v18 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions);
  if (*(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions))
  {
    v19 = *(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__persistedSortOptions + 2);
  }

  else
  {
    v19 = 0;
  }

  sub_1000652DC(a2 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v10, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  swift_storeEnumTagMultiPayload();
  sub_100066620(v56, v10, v18, v19, v17, v16);
  sub_10000BBC4(v10, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v20 = v54;
  (*(v54 + 56))(v16, 0, 1, v4);
  v21 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10002C638(v16, a2 + v21, &unk_101A23C00);
  swift_endAccess();
  sub_10000BE14(a2 + v21, v14, &unk_101A23C00);
  if ((*(v20 + 48))(v14, 1, v4) == 1)
  {
    return sub_10000CAAC(v14, &unk_101A23C00);
  }

  v23 = *(v20 + 32);
  v24 = v53;
  v50 = v20 + 32;
  v49 = v23;
  v23(v53, v14, v4);
  v56 = v4;
  v25 = v24;
  v26 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v27 = *(v26 + 16);
  v48[1] = v26;
  if (!v27)
  {
    v30 = _swiftEmptyArrayStorage;
LABEL_27:

    v46 = v56;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v30);

    v47 = v51;
    v49(v51, v25, v46);
    sub_100069924(v47, v52 & 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0);
    sub_10006ACC8();
    return (*(v54 + 8))(v47, v46);
  }

  v28 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  v29 = v26 + 32;
  swift_beginAccess();
  v30 = _swiftEmptyArrayStorage;
  v55 = v28;
  while (1)
  {
    v31 = *v29;
    v32 = *(v29 + 16);
    v33 = *(v29 + 32);
    v62 = *(v29 + 48);
    v60 = v32;
    v61 = v33;
    v59 = v31;
    v34 = *(a2 + v28);
    sub_1000693DC(&v59, v57);

    v35 = sub_100069438(&v59, v34);

    if ((v35 & 1) == 0)
    {
      sub_1000698D0(&v59);
      goto LABEL_9;
    }

    v57[0] = v59;
    v57[1] = v60;
    v57[2] = v61;
    v58 = v62;
    v36 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    result = sub_1000698D0(&v59);
    v37 = *(v36 + 16);
    v38 = v30[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v39 <= v30[3] >> 1)
    {
      if (*(v36 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v38 <= v39)
      {
        v45 = v38 + v37;
      }

      else
      {
        v45 = v38;
      }

      v30 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v45, 1, v30);
      if (*(v36 + 16))
      {
LABEL_15:
        v41 = (v30[3] >> 1) - v30[2];
        result = type metadata accessor for UUID();
        if (v41 < v37)
        {
          goto LABEL_30;
        }

        swift_arrayInitWithCopy();

        if (v37)
        {
          v42 = v30[2];
          v43 = __OFADD__(v42, v37);
          v44 = v42 + v37;
          if (v43)
          {
            goto LABEL_31;
          }

          v30[2] = v44;
        }

        v28 = v55;
        goto LABEL_9;
      }
    }

    v28 = v55;
    if (v37)
    {
      goto LABEL_29;
    }

LABEL_9:
    v29 += 56;
    if (!--v27)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100066620@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v230 = a5;
  v223 = a4;
  v241 = a2;
  v220 = a6;
  v8 = sub_1005B981C(&qword_1019F33D0);
  __chkstk_darwin(v8 - 8);
  v226 = &v213 - v9;
  v236 = _s5BoardVMa(0);
  v10 = __chkstk_darwin(v236);
  v235 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v215 = &v213 - v12;
  v239 = type metadata accessor for Date();
  v229 = *(v239 - 8);
  v13 = __chkstk_darwin(v239);
  v238 = (&v213 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v217 = &v213 - v15;
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v243 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v224 = &v213 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v227 = &v213 - v20;
  v21 = __chkstk_darwin(v19);
  v234 = &v213 - v22;
  v23 = __chkstk_darwin(v21);
  v231 = &v213 - v24;
  v25 = __chkstk_darwin(v23);
  v228 = &v213 - v26;
  v27 = __chkstk_darwin(v25);
  v245 = &v213 - v28;
  v29 = __chkstk_darwin(v27);
  v237 = &v213 - v30;
  v31 = __chkstk_darwin(v29);
  v240 = &v213 - v32;
  __chkstk_darwin(v31);
  v34 = &v213 - v33;
  v35 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v36 = __chkstk_darwin(v35 - 8);
  v38 = &v213 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v40 = &v213 - v39;
  v232 = sub_1005B981C(&unk_101A23860);
  v219 = *(v232 - 8);
  __chkstk_darwin(v232);
  v42 = &v213 - v41;
  v253 = a1;
  v225 = a3;
  v222 = a3 != 0;
  type metadata accessor for UUID();
  sub_100068328();
  sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID);

  v233 = v42;
  v43 = v241;
  NSDiffableDataSourceSnapshot.init()();
  sub_1000652DC(v43, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v244 = v16;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v47 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v48 = v34;
LABEL_6:
    sub_10000BBC4(v48, v47);
    v218 = 0;
    v46 = v232;
    goto LABEL_7;
  }

  sub_100065D50(v34, v40, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v44 = sub_1005B981C(&qword_1019F3480);
  (*(*(v44 - 8) + 56))(v38, 5, 5, v44);
  v45 = sub_100068604(v40, v38);
  sub_10000BBC4(v38, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (!v45)
  {
    v47 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    v48 = v40;
    goto LABEL_6;
  }

  v46 = v232;
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101874750);
  sub_10000BBC4(v40, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v218 = 1;
LABEL_7:
  v49 = v243;
  v50 = v231;
  v51 = v245;
  v52 = sub_10005C1A0(a1);
  v242 = v52;
  v53 = v52[2];
  if (!v53)
  {
    v221 = 0;
    goto LABEL_41;
  }

  v216 = v52[2];
  v54 = sub_1005B981C(&qword_1019F3480);
  v55 = v240;
  (*(*(v54 - 8) + 56))(v240, 4, 5, v54);
  swift_storeEnumTagMultiPayload();
  v56 = sub_100F91CB8(v43, v55);
  sub_10000BBC4(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (v56)
  {
    goto LABEL_11;
  }

  v241 = objc_opt_self();
  LODWORD(rawValue) = [v241 _atomicIncrementAssertCount];
  *&v254 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v254);
  StaticString.description.getter();
  v221 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v58 = String._bridgeToObjectiveC()();

  v59 = [v58 lastPathComponent];

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v213 = v61;
  v214 = v60;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_127;
  }

  while (1)
  {
    v62 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = rawValue;
    v64 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v64;
    v65 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v65;
    v66 = v221;
    *(inited + 72) = v221;
    *(inited + 136) = &type metadata for String;
    v67 = sub_1000053B0();
    v68 = v213;
    *(inited + 112) = v214;
    *(inited + 120) = v68;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v67;
    *(inited + 152) = 174;
    v69 = v254;
    *(inited + 216) = v64;
    *(inited + 224) = v65;
    *(inited + 192) = v69;
    v70 = v66;
    v71 = v69;
    v72 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v72, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v73 = static os_log_type_t.error.getter();
    sub_100005404(v62, &_mh_execute_header, v73, "Board invitation items should only appear in the Shared folder.", 63, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v74 = swift_allocObject();
    v74[2] = 8;
    v74[3] = 0;
    v74[4] = 0;
    v74[5] = 0;
    v75 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v76 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v77 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v78 = String._bridgeToObjectiveC()();

    [v241 handleFailureInFunction:v76 file:v77 lineNumber:174 isFatal:0 format:v78 args:v75];

    v50 = v231;
    v46 = v232;
LABEL_11:
    v79 = v242;
    v80 = v242;
    sub_100068988(v242, v225, v230 & 1);
    v81 = v80;
    NSDiffableDataSourceSnapshot.appendSections(_:)(&off_101874858);
    *&v254 = _swiftEmptySetSingleton;
    v82 = sub_100F35F5C(v81, &v254);

    v255 = 0u;
    v256 = 0u;
    v254 = 0u;
    v257 = -2;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
    rawValue = v79;

    v83 = sub_100F7475C(a1, v79);
    v221 = 0;
    if (v84)
    {
      v85 = *(a1 + 16);
    }

    else
    {
      v86 = (v83 + 1);
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_129;
      }

      v241 = v83;
      while (1)
      {
        v88 = (a1 + 16);
        v87 = *(a1 + 16);
        if (v86 == v87)
        {
          break;
        }

        if (v86 >= v87)
        {
          goto LABEL_116;
        }

        v89 = (*(v243 + 80) + 32) & ~*(v243 + 80);
        v51 = a1;
        v90 = a1 + v89;
        a1 = *(v243 + 72);
        v91 = a1 * v86;
        v92 = v240;
        sub_1000652DC(v90 + a1 * v86, v240, type metadata accessor for CRLBoardLibraryViewModel.Item);
        LODWORD(rawValue) = sub_1012CD6CC(v92, rawValue);
        sub_10000BBC4(v92, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (rawValue)
        {
          a1 = v51;
          v51 = v245;
          rawValue = v242;
          ++v86;
        }

        else
        {
          v93 = v241;
          if (v86 == v241)
          {
            a1 = v51;
            v51 = v245;
            rawValue = v242;
          }

          else
          {
            if ((v241 & 0x8000000000000000) != 0)
            {
              goto LABEL_119;
            }

            v94 = *v88;
            if (v241 >= v94)
            {
              goto LABEL_120;
            }

            rawValue = a1 * v241;
            sub_1000652DC(v90 + a1 * v241, v227, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v86 >= v94)
            {
              goto LABEL_121;
            }

            v95 = v90 + v91;
            v96 = v224;
            sub_1000652DC(v95, v224, type metadata accessor for CRLBoardLibraryViewModel.Item);
            a1 = v51;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a1 = sub_10113CEA8(v51);
            }

            v51 = v245;
            v97 = a1 + v89;
            sub_100F7724C(v96, v97 + rawValue);
            if (v86 >= *(a1 + 16))
            {
              goto LABEL_122;
            }

            sub_100F7724C(v227, v97 + v91);
            v93 = v241;
            rawValue = v242;
          }

          v241 = v93 + 1;
          ++v86;
        }
      }

      v50 = v231;
      v46 = v232;
      v85 = v241;
    }

    v98 = *(a1 + 16);
    if (v85 > v98)
    {
      goto LABEL_124;
    }

    if (v85 < 0)
    {
      goto LABEL_125;
    }

    LODWORD(rawValue) = v85;
    if (!__OFADD__(v98, v85 - v98))
    {
      break;
    }

LABEL_126:
    __break(1u);
LABEL_127:
    swift_once();
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v253 = a1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v85 > *(a1 + 24) >> 1)
  {
    if (v98 <= v85)
    {
      v100 = v85;
    }

    else
    {
      v100 = v98;
    }

    a1 = sub_100B3648C(isUniquelyReferenced_nonNull_native, v100, 1, a1);
    v253 = a1;
  }

  sub_10067D040(v85, v98, 0);
  v253 = a1;
  v49 = v243;
  v53 = v216;
LABEL_41:
  v240 = a1;
  if ((v223 & v222 & 1) == 0)
  {

    sub_100068988(a1, v225, v230 & 1);
    v140 = a1;
    if ((v218 & 1) == 0)
    {
      sub_1005B981C(&qword_101A11CE0);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_10146C6B0;
      if (v53)
      {
        v142 = [objc_opt_self() mainBundle];
        v143 = String._bridgeToObjectiveC()();
        v144 = String._bridgeToObjectiveC()();
        v145 = [v142 localizedStringForKey:v143 value:v144 table:0];

        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v147 = v146;
      }

      else
      {
        v147 = 0;
      }

      *(v141 + 32) = v53;
      *(v141 + 40) = v147;
      *(v141 + 48) = 0u;
      *(v141 + 64) = 0u;
      *(v141 + 80) = 0;
      NSDiffableDataSourceSnapshot.appendSections(_:)(v141);
    }

    *&v254 = _swiftEmptySetSingleton;
    sub_100F35F5C(v140, &v254);

    v255 = 0u;
    v256 = 0u;
    v254 = 0u;
    v257 = -2;
    v158 = v233;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    v159 = &off_1018747A8;
LABEL_114:
    NSDiffableDataSourceSnapshot.appendSections(_:)(v159);
    (*(v219 + 32))(v220, v158, v46);
  }

  LODWORD(rawValue) = v225;

  if (rawValue != 2)
  {
    v148 = *(a1 + 16);
    if (v148)
    {
      v149 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v150 = *(v49 + 72);
      v151 = v228;
      v152 = (v229 + 16);
      v245 = (v229 + 32);
      v82 = _swiftEmptyArrayStorage;
      v153 = v215;
      v154 = v237;
      do
      {
        sub_1000652DC(v149, v154, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100065D50(v154, v151, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_100065D50(v151, v153, _s5BoardVMa);
          (*v152)(v238, v153 + *(v236 + 32), v239);
          sub_10000BBC4(v153, _s5BoardVMa);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_100B376F0(0, v82[2] + 1, 1, v82);
          }

          v156 = v82[2];
          v155 = v82[3];
          if (v156 >= v155 >> 1)
          {
            v82 = sub_100B376F0(v155 > 1, v156 + 1, 1, v82);
          }

          v82[2] = v156 + 1;
          (*(v229 + 32))(v82 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v156, v238, v239);
          a1 = v240;
          v151 = v228;
        }

        else
        {
          sub_10000BBC4(v151, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v149 += v150;
        --v148;
      }

      while (v148);
      v157 = *(a1 + 16);
    }

    else
    {
      v157 = 0;
      v82 = _swiftEmptyArrayStorage;
    }

    if (v82[2] == v157)
    {
      goto LABEL_89;
    }

    v245 = objc_opt_self();
    LODWORD(v79) = [v245 _atomicIncrementAssertCount];
    *&v254 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v254);
    StaticString.description.getter();
    v244 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v160 = String._bridgeToObjectiveC()();

    v161 = [v160 lastPathComponent];

    v243 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v162;

    if (qword_1019F20A0 == -1)
    {
LABEL_88:
      v163 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v164 = swift_allocObject();
      *(v164 + 16) = xmmword_10146CA70;
      *(v164 + 56) = &type metadata for Int32;
      *(v164 + 64) = &protocol witness table for Int32;
      *(v164 + 32) = v79;
      v165 = sub_100006370(0, &qword_1019F4D30);
      *(v164 + 96) = v165;
      v166 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v164 + 104) = v166;
      v167 = v244;
      *(v164 + 72) = v244;
      *(v164 + 136) = &type metadata for String;
      v168 = sub_1000053B0();
      *(v164 + 112) = v243;
      *(v164 + 120) = v51;
      *(v164 + 176) = &type metadata for UInt;
      *(v164 + 184) = &protocol witness table for UInt;
      *(v164 + 144) = v168;
      *(v164 + 152) = 216;
      v169 = v254;
      *(v164 + 216) = v165;
      *(v164 + 224) = v166;
      *(v164 + 192) = v169;
      v170 = v167;
      v171 = v169;
      v172 = static os_log_type_t.error.getter();
      sub_100005404(v163, &_mh_execute_header, v172, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v164);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v173 = static os_log_type_t.error.getter();
      sub_100005404(v163, &_mh_execute_header, v173, "Mismatched dates! Most likely, this is caused by one or more of the folder items being something other than a board. Items may appear in the wrong section.", 155, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v174 = swift_allocObject();
      v174[2] = 8;
      v174[3] = 0;
      v174[4] = 0;
      v174[5] = 0;
      v175 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v176 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v177 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v178 = String._bridgeToObjectiveC()();

      [v245 handleFailureInFunction:v176 file:v177 lineNumber:216 isFatal:0 format:v178 args:v175];

LABEL_89:

      v180 = sub_100AC5CF4(v179, v82);

      v181 = sub_100640A7C(v180);

      v182 = v217;
      static Date.now.getter();
      v242 = sub_100D2C0A8(v181, v182);

      (*(v229 + 8))(v182, v239);
      goto LABEL_90;
    }

LABEL_129:
    swift_once();
    goto LABEL_88;
  }

  v101 = sub_100BD64FC(_swiftEmptyArrayStorage);
  v102 = *(a1 + 16);
  v242 = v101;
  if (v102)
  {
    v103 = 0;
    v228 = ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v229 = v102;
    v104 = &v228[a1];
    v227 = &v228[a1];
    while (1)
    {
      if (v103 >= *(a1 + 16))
      {
        goto LABEL_117;
      }

      v241 = *(v49 + 72);
      sub_1000652DC(v104 + v241 * v103, v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000652DC(v51, v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      rawValue = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000BBC4(v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
      if (v102 == ++v103)
      {
        goto LABEL_90;
      }
    }

    v105 = v235;
    sub_100065D50(v50, v235, _s5BoardVMa);
    v106 = v226;
    sub_10000BE14(v105 + *(v236 + 80), v226, &qword_1019F33D0);
    v107 = _s5BoardV13ShareMetadataVMa(0);
    if ((*(*(v107 - 8) + 48))(v106, 1, v107) == 1)
    {
      sub_10000CAAC(v106, &qword_1019F33D0);
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      v51 = 0;
      v113 = 192;
    }

    else
    {
      v114 = v106 + *(v107 + 32);
      v108 = *v114;
      v115 = *(v114 + 8);
      v117 = *(v114 + 16);
      v116 = *(v114 + 24);
      v118 = *(v114 + 32);
      v51 = *(v114 + 40);
      v119 = *(v114 + 48);

      sub_10000BBC4(v106, _s5BoardV13ShareMetadataVMa);
      v112 = v118;
      v111 = v116;
      v110 = v117;
      v109 = v115;
      v113 = *&v119 | 0xFFFFFF80;
    }

    v120 = v108;
    *&v254 = v108;
    *(&v254 + 1) = v109;
    v121 = v109;
    a1 = v110;
    *&v255 = v110;
    *(&v255 + 1) = v111;
    v122 = v111;
    v238 = v51;
    v239 = v112;
    *&v256 = v112;
    *(&v256 + 1) = v51;
    LODWORD(v237) = v113;
    v257 = v113;
    sub_1000652DC(v245, v234, type metadata accessor for CRLBoardLibraryViewModel.Item);
    rawValue = v242;
    v123 = swift_isUniquelyReferenced_nonNull_native();
    v246._rawValue = rawValue;
    v125 = sub_10002D980(&v254);
    v126 = *(rawValue + 16);
    v127 = (v124 & 1) == 0;
    v128 = v126 + v127;
    if (__OFADD__(v126, v127))
    {
      goto LABEL_118;
    }

    v51 = v124;
    if (*(rawValue + 24) < v128)
    {
      sub_100A8FD00(v128, v123);
      v129 = sub_10002D980(&v254);
      if ((v51 & 1) != (v130 & 1))
      {
        goto LABEL_131;
      }

      v125 = v129;
      rawValue = v246._rawValue;
      if ((v51 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_59:
      sub_1000771BC(v120, v121, a1, v122, v239, v238, v237);
LABEL_63:
      v242 = rawValue;
      v135 = *(rawValue + 56);
      rawValue = *(v135 + 8 * v125);
      v136 = swift_isUniquelyReferenced_nonNull_native();
      *(v135 + 8 * v125) = rawValue;
      a1 = v240;
      v50 = v231;
      v51 = v245;
      if ((v136 & 1) == 0)
      {
        rawValue = sub_100B3648C(0, *(rawValue + 16) + 1, 1, rawValue);
        *(v135 + 8 * v125) = rawValue;
      }

      v138 = *(rawValue + 16);
      v137 = *(rawValue + 24);
      if (v138 >= v137 >> 1)
      {
        *(v135 + 8 * v125) = sub_100B3648C(v137 > 1, v138 + 1, 1, rawValue);
      }

      sub_10000BBC4(v235, _s5BoardVMa);
      sub_10000BBC4(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v139 = *(v135 + 8 * v125);
      *(v139 + 16) = v138 + 1;
      sub_100065D50(v234, &v228[v139 + v138 * v241], type metadata accessor for CRLBoardLibraryViewModel.Item);
      v49 = v243;
      v102 = v229;
      v104 = v227;
      goto LABEL_46;
    }

    if (v123)
    {
      rawValue = v246._rawValue;
      if (v124)
      {
        goto LABEL_59;
      }
    }

    else
    {
      sub_100AA8130();
      rawValue = v246._rawValue;
      if (v51)
      {
        goto LABEL_59;
      }
    }

LABEL_61:
    *(rawValue + 8 * (v125 >> 6) + 64) |= 1 << v125;
    v131 = *(rawValue + 48) + 56 * v125;
    *v131 = v254;
    *(v131 + 16) = v255;
    *(v131 + 32) = v256;
    *(v131 + 48) = v257;
    *(*(rawValue + 56) + 8 * v125) = _swiftEmptyArrayStorage;
    v132 = *(rawValue + 16);
    v133 = __OFADD__(v132, 1);
    v134 = v132 + 1;
    if (v133)
    {
      goto LABEL_123;
    }

    *(rawValue + 16) = v134;
    goto LABEL_63;
  }

LABEL_90:
  if ((v230 & 1) == 0)
  {
LABEL_94:
    v186 = v242;
    v187 = v242[2];
    if (v187)
    {
      v51 = sub_100B39E04(v242[2], 0);
      v188 = sub_100B3AEB4(&v246, v51 + 32, v187, v186);
      swift_bridgeObjectRetain_n();
      sub_100035F90();
      if (v188 != v187)
      {
        __break(1u);
        goto LABEL_97;
      }
    }

    else
    {

      v51 = _swiftEmptyArrayStorage;
    }

    v46 = v232;
    LODWORD(rawValue) = v233;
    v189 = v221;
    v246._rawValue = v51;
    v190 = sub_100F69024;
    v191 = sub_100F670AC;
    goto LABEL_101;
  }

  v183 = v242;
  v184 = v242[2];
  if (!v184)
  {
LABEL_97:

    v51 = _swiftEmptyArrayStorage;
    goto LABEL_98;
  }

  v51 = sub_100B39E04(v242[2], 0);
  v185 = sub_100B3AEB4(&v246, v51 + 32, v184, v183);
  swift_bridgeObjectRetain_n();
  sub_100035F90();
  if (v185 != v184)
  {
    __break(1u);
    goto LABEL_94;
  }

LABEL_98:
  v46 = v232;
  LODWORD(rawValue) = v233;
  v189 = v221;
  v246._rawValue = v51;
  v190 = sub_100F6A550;
  v191 = sub_100F678D0;
LABEL_101:
  sub_100F36A44(&v246, v190, v191);
  if (v189)
  {
    goto LABEL_130;
  }

  v192 = v242;

  NSDiffableDataSourceSnapshot.appendSections(_:)(v246);

  v193 = 0;
  v194 = (v192 + 8);
  v195 = 1 << *(v192 + 32);
  v196 = -1;
  if (v195 < 64)
  {
    v196 = ~(-1 << v195);
  }

  v197 = v196 & v192[8];
  v198 = (v195 + 63) >> 6;
  v237 = v198;
  v238 = v192 + 8;
  if (!v197)
  {
LABEL_106:
    while (1)
    {
      a1 = v193 + 1;
      if (__OFADD__(v193, 1))
      {
        break;
      }

      if (a1 >= v198)
      {

        v159 = &off_101874800;
        v158 = v233;
        goto LABEL_114;
      }

      v197 = *(v194 + 8 * a1);
      ++v193;
      if (v197)
      {
        v241 = 0;
        goto LABEL_110;
      }
    }

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
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  while (1)
  {
    v241 = 0;
    a1 = v193;
LABEL_110:
    v199 = __clz(__rbit64(v197)) | (a1 << 6);
    v200 = v192[7];
    v201 = v192[6] + 56 * v199;
    v203 = *v201;
    v202 = *(v201 + 8);
    v204 = *(v201 + 16);
    v239 = *(v201 + 24);
    v205 = *(v201 + 32);
    v206 = *(v201 + 40);
    v51 = *(v201 + 48);
    v246._rawValue = *(v200 + 8 * v199);
    swift_bridgeObjectRetain_n();
    v243 = v203;
    v244 = v204;
    v207 = v203;
    v208 = v205;
    v245 = v202;
    v209 = v204;
    rawValue = v239;
    sub_100076F8C(v207, v202, v209, v239, v205, v206, v51);
    v210 = v241;
    sub_100068A70(&v246, v230 & 1);
    if (v210)
    {
      break;
    }

    v197 &= v197 - 1;

    v211 = v246._rawValue;
    v246._rawValue = _swiftEmptySetSingleton;
    sub_100F35F5C(v211, &v246);

    v246._rawValue = v243;
    v247 = v245;
    v248 = v244;
    v249 = rawValue;
    v250 = v208;
    v251 = v206;
    v252 = v51;
    v46 = v232;
    LODWORD(rawValue) = v233;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    sub_1000771A8(v246._rawValue, v247, v248, v249, v250, v251, v252);
    v193 = a1;
    v192 = v242;
    v198 = v237;
    v194 = v238;
    if (!v197)
    {
      goto LABEL_106;
    }
  }

LABEL_130:

  __break(1u);
LABEL_131:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100068328()
{
  result = qword_101A23C70;
  if (!qword_101A23C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A23C70);
  }

  return result;
}

uint64_t sub_10006837C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000683C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006840C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100068454(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10006849C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000684E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006852C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100068574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000685BC(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_100068604(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F3460);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = *(v11 + 56);
  sub_1000094E4(a1, &v20 - v12, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1000094E4(a2, &v13[v14], type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v15 = sub_1005B981C(&qword_1019F3480);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 5, v15);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      if (v16(&v13[v14], 5, v15) == 3)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v17 == 4)
      {
        if (v16(&v13[v14], 5, v15) != 4)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v16(&v13[v14], 5, v15) == 5)
      {
        goto LABEL_13;
      }
    }

LABEL_17:
    sub_10000CAAC(v13, &qword_1019F3460);
    return 0;
  }

  if (!v17)
  {
    sub_1000094E4(v13, v9, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    if (!v16(&v13[v14], 5, v15))
    {
      sub_10000CCD0(&v13[v14], v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      v18 = sub_100F92694(v9, v6);
      sub_10000CD38(v6, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10000CD38(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      sub_10000CD38(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      return v18;
    }

    sub_10000CD38(v9, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    goto LABEL_17;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v14], 5, v15) != 1)
    {
      goto LABEL_17;
    }
  }

  else if (v16(&v13[v14], 5, v15) != 2)
  {
    goto LABEL_17;
  }

LABEL_13:
  sub_10000CD38(v13, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  return 1;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_100068988(uint64_t a1, char a2, char a3)
{
  if (a2)
  {
    if (a2 == 1)
    {

      sub_100068A70(&v6, a3 & 1);
      return;
    }

    v4 = sub_10075C0E4;
    v5 = sub_10075B404;
  }

  else
  {

    v4 = sub_10075D71C;
    v5 = sub_10075BC54;
  }

  sub_10075B1E4(&v6, a3 & 1, v4, v5);
}

Swift::Int sub_100068A70(void **a1, char a2)
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_100068B28(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_100068B74(v8, a2 & 1);
  *a1 = v5;
  return result;
}

Swift::Int sub_100068B74(uint64_t *a1, char a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_100F680D8(v10, v11, a1, v6, a2 & 1);
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
    return sub_100F669A8(0, v4, 1, a1, a2 & 1);
  }

  return result;
}

uint64_t sub_100068CAC(uint64_t a1)
{
  v1 = *(a1 + 48) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 initializeWithCopy for CRLBezierPathPointData(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

Swift::Int sub_100068CE4()
{
  Hasher.init(_seed:)();
  sub_100068D24();
  return Hasher._finalize()();
}

void sub_100068D24()
{
  sub_100068F28();
  String.hash(into:)();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 48) >> 6;
  if (v4 > 1)
  {
    v5 = *(v0 + 40);
    v6 = (*(v0 + 25) << 8) | ((*(v0 + 29) | (*(v0 + 31) << 16)) << 40) | v3;
    if (v4 == 2)
    {
      if (v6)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v5)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      return;
    }

    sub_100068F28();
    String.hash(into:)();
  }

  else
  {
    if (!v4)
    {
      if (v1)
      {
        goto LABEL_21;
      }

LABEL_24:
      Hasher._combine(_:)(0);
      return;
    }

    Hasher._combine(_:)(*v0);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v1;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
    if (v3)
    {
      goto LABEL_24;
    }

    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }
}

uint64_t sub_100068F28()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 48);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (v4)
    {
      return sub_100D269E0(*v0);
    }

    if (!v1)
    {
      return 0;
    }

    return v2;
  }

  if (v4 == 2)
  {
    if ((v3 & 1) == 0)
    {
      if (v1)
      {
        v15 = objc_opt_self();

        v16 = [v15 mainBundle];
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_1005B981C(&qword_1019F54E0);
        v20 = swift_allocObject();
        *(v20 + 16) = xmmword_10146C6B0;
        *(v20 + 56) = &type metadata for String;
        *(v20 + 64) = sub_1000053B0();
        *(v20 + 32) = v2;
        *(v20 + 40) = v1;
        v14 = String.init(format:_:)();

        return v14;
      }

      v25 = [objc_opt_self() mainBundle];
      v26 = String._bridgeToObjectiveC()();
      v27 = String._bridgeToObjectiveC()();
      v13 = [v25 localizedStringForKey:v26 value:v27 table:0];

LABEL_17:
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v14;
    }

LABEL_16:
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v13 = [v10 localizedStringForKey:v11 value:v12 table:0];

    goto LABEL_17;
  }

  v6 = v0[4];
  v7 = v0[2] | v1;
  v8 = v0[3] | v0[5];
  if (v3 == 192 && (v7 | v2 | v6 | v8) == 0)
  {
    v21 = [objc_opt_self() mainBundle];
    v22 = String._bridgeToObjectiveC()();
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v14;
  }

  result = 0;
  if (v3 == 192 && v2 == 1 && !(v7 | v6 | v8))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_100069388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 49))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 48) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 48) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100069438(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  sub_100068D24();
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v45 = ~v5;
    do
    {
      v8 = *(a2 + 48) + 56 * v6;
      v10 = *(v8 + 16);
      v9 = *(v8 + 32);
      v11 = *v8;
      v50 = *(v8 + 48);
      v48 = v10;
      v49 = v9;
      v47 = v11;
      sub_1000693DC(&v47, v46);
      v12 = sub_100068F28();
      v14 = v13;
      if (v12 == sub_100068F28() && v14 == v15)
      {
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v17 = v48;
      v18 = BYTE8(v48);
      v19 = v50;
      v20 = v50 >> 6;
      if (v20 > 1)
      {
        v23 = v49;
        v24 = (*(&v48 + 9) << 8) | ((*(&v48 + 13) | (HIBYTE(v48) << 16)) << 40);
        if (v20 == 2)
        {
          v25 = *(a1 + 48);
          if ((v25 & 0xC0) != 0x80)
          {
            goto LABEL_6;
          }

          v26 = *(a1 + 8);
          v27 = *(a1 + 16);
          v29 = *(a1 + 24);
          v28 = *(a1 + 32);
          v30 = *(a1 + 40);
          if (*(&v47 + 1))
          {
            if (!v26)
            {
              goto LABEL_6;
            }

            if (v47 != *a1)
            {
              v43 = *(a1 + 32);
              v44 = *(a1 + 40);
              v41 = *(a1 + 16);
              v42 = *(a1 + 24);
              v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v27 = v41;
              v29 = v42;
              v28 = v43;
              v30 = v44;
              if ((v31 & 1) == 0)
              {
                goto LABEL_6;
              }
            }
          }

          else if (v26)
          {
            goto LABEL_6;
          }

          if (v24 | v18)
          {
            if (!v29 || (v17 != v27 || (v24 | v18) != v29) && (v32 = v30, v33 = v28, v34 = _stringCompareWithSmolCheck(_:_:expecting:)(), v28 = v33, v30 = v32, (v34 & 1) == 0))
            {
LABEL_6:
              sub_1000698D0(&v47);
              goto LABEL_7;
            }
          }

          else if (v29)
          {
            goto LABEL_6;
          }

          if (*(&v23 + 1))
          {
            if (!v30)
            {
              goto LABEL_6;
            }

            if (v23 == __PAIR128__(v30, v28))
            {
              sub_1000698D0(&v47);
              if (((v19 ^ v25) & 1) == 0)
              {
                return 1;
              }
            }

            else
            {
              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_1000698D0(&v47);
              if ((v19 ^ v25) & 1) == 0 && (v40)
              {
                return 1;
              }
            }
          }

          else
          {
            v39 = v30;
            sub_1000698D0(&v47);
            if (!v39 && ((v19 ^ v25) & 1) == 0)
            {
              return 1;
            }
          }
        }

        else
        {
          v35 = v24 | BYTE8(v48);
          v36 = v48 | *(&v47 + 1);
          if (v50 != 192 || v36 | v47 | v49 | *(&v49 + 1) | v35)
          {
            if (v50 == 192 && v47 == 1 && !(v36 | v49 | *(&v49 + 1) | v35))
            {
              if (*(a1 + 48) != 192 || *a1 != 1)
              {
                goto LABEL_7;
              }
            }

            else if (*(a1 + 48) != 192 || *a1 != 2)
            {
              goto LABEL_7;
            }

            v38 = vorrq_s8(*(a1 + 16), *(a1 + 32));
            if (!(*&vorr_s8(*v38.i8, *&vextq_s8(v38, v38, 8uLL)) | *(a1 + 8)))
            {
              return 1;
            }
          }

          else if (*(a1 + 48) == 192)
          {
            v37 = vorrq_s8(*(a1 + 16), *(a1 + 32));
            if (!(*&vorr_s8(*v37.i8, *&vextq_s8(v37, v37, 8uLL)) | *(a1 + 8) | *a1))
            {
              return 1;
            }
          }
        }
      }

      else if (v20)
      {
        if ((*(a1 + 48) & 0xC0) == 0x40 && *a1 == v47 && *(a1 + 8) == *(&v47 + 1))
        {
          if (BYTE8(v48))
          {
            if (*(a1 + 24))
            {
              return 1;
            }
          }

          else if ((*(a1 + 24) & 1) == 0 && *(a1 + 16) == *&v48)
          {
            return 1;
          }
        }
      }

      else
      {
        if (*(a1 + 48) >= 0x40u)
        {
          goto LABEL_6;
        }

        v21 = *(a1 + 8);
        if (*(&v47 + 1))
        {
          if (!v21)
          {
            goto LABEL_6;
          }

          if (v47 == *a1)
          {
            sub_1000698D0(&v47);
            return 1;
          }

          v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1000698D0(&v47);
          if (v22)
          {
            return 1;
          }
        }

        else
        {
          sub_1000698D0(&v47);
          if (!v21)
          {
            return 1;
          }
        }
      }

LABEL_7:
      v6 = (v6 + 1) & v45;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return 0;
}

uint64_t sub_100069924(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v88 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s5BoardVMa(0);
  __chkstk_darwin(v9 - 8);
  v107 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s4NodeVMa(0);
  v93 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v92 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v98 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v89 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v95 = &v80 - v17;
  v18 = __chkstk_darwin(v16);
  v104 = &v80 - v19;
  v20 = __chkstk_darwin(v18);
  v91 = &v80 - v21;
  __chkstk_darwin(v20);
  v97 = &v80 - v22;
  v105 = type metadata accessor for UUID();
  v102 = *(v105 - 8);
  __chkstk_darwin(v105);
  v94 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1005B981C(&unk_101A23860);
  __chkstk_darwin(v24);
  v82 = v25;
  v26 = *(v25 + 16);
  v81 = &v80 - v27;
  v106 = a1;
  v87 = v28;
  v26();
  v29 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_pendingBoardIdentifiersToRefresh;
  swift_beginAccess();
  v30 = *(v4 + v29);
  v31 = qword_1019F2128;

  if (v31 != -1)
  {
LABEL_53:
    swift_once();
  }

  v32 = static OS_os_log.crlFolderUI;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v34 = v4;
  v35 = sub_10006A888();
  v37 = v36;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v35;
  *(inited + 40) = v37;
  v38 = *(v30 + 16);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v38;
  v39 = static os_log_type_t.default.getter();
  sub_100005404(v32, &_mh_execute_header, v39, "Filter view (%@) updating snapshot with %d board identifiers to refresh", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v40 = *(v30 + 16);
  v83 = v34;
  if (v40)
  {
    v108 = v30;
    *(v34 + v29) = _swiftEmptySetSingleton;

    v41 = *(v34 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider);
    v4 = v106;
    v42 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
    v43 = *(v42 + 16);
    v90 = v13;
    if (v43)
    {
      v44 = (v41 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
      v101 = *(v102 + 16);
      v45 = (*(v102 + 80) + 32) & ~*(v102 + 80);
      v80 = v42;
      v46 = v42 + v45;
      v100 = *(v102 + 72);
      v102 += 16;
      v99 = (v102 - 8);
      v47 = _swiftEmptyArrayStorage;
      v48 = v94;
      v96 = v8;
      while (1)
      {
        v106 = v47;
        v101(v48, v46, v105);
        v4 = v44[3];
        if (*(v4 + 16))
        {
          v49 = *v44;

          v103 = v49;

          v50 = sub_10003E994(v48);
          if (v51)
          {
            v52 = v92;
            sub_1000652DC(*(v4 + 56) + *(v93 + 72) * v50, v92, _s4NodeVMa);
            (*v99)(v48, v105);

            v53 = v91;
            sub_1000652DC(v52, v91, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000BBC4(v52, _s4NodeVMa);
            sub_100065D50(v53, v97, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v47 = v106;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = sub_100B3648C(0, v47[2] + 1, 1, v47);
            }

            v4 = v47[2];
            v54 = v47[3];
            v8 = v96;
            v48 = v94;
            if (v4 >= v54 >> 1)
            {
              v47 = sub_100B3648C(v54 > 1, v4 + 1, 1, v47);
            }

            v47[2] = v4 + 1;
            sub_100065D50(v97, v47 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
            goto LABEL_7;
          }

          v8 = v96;
        }

        else
        {
        }

        (*v99)(v48, v105);
        v47 = v106;
LABEL_7:
        v46 += v100;
        if (!--v43)
        {

          v13 = v90;
          goto LABEL_19;
        }
      }
    }

    v47 = _swiftEmptyArrayStorage;
LABEL_19:
    v29 = v107;
    v57 = v98;
    v58 = v95;
    v101 = v47[2];
    if (v101)
    {
      v59 = 0;
      v30 = v108 + 56;
      v100 = _swiftEmptyArrayStorage;
      v106 = v47;
      while (1)
      {
        if (v59 >= v47[2])
        {
          __break(1u);
          goto LABEL_53;
        }

        v103 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v102 = *(v57 + 72);
        v4 = v104;
        sub_1000652DC(v47 + v103 + v102 * v59, v104, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000652DC(v4, v58, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000BBC4(v58, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_22;
        }

        sub_100065D50(v58, v29, _s5BoardVMa);
        v60 = v108;
        if (!*(v108 + 16))
        {
          sub_10000BBC4(v29, _s5BoardVMa);
          goto LABEL_42;
        }

        Hasher.init(_seed:)();
        sub_10006852C(&qword_1019FB870, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        v61 = type metadata accessor for CRLBoardIdentifierStorage(0);
        v62 = (v29 + *(v61 + 20));
        v64 = *v62;
        v63 = v62[1];
        String.hash(into:)();
        v4 = v109;
        v65 = Hasher._finalize()();
        v66 = -1 << *(v60 + 32);
        v67 = v65 & ~v66;
        if (((*(v30 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
LABEL_41:
          sub_10000BBC4(v29, _s5BoardVMa);
          v13 = v90;
          v57 = v98;
          v58 = v95;
LABEL_42:
          v47 = v106;
LABEL_22:
          sub_10000BBC4(v104, type metadata accessor for CRLBoardLibraryViewModel.Item);
          goto LABEL_23;
        }

        v68 = ~v66;
        v69 = *(v88 + 72);
        while (1)
        {
          sub_1000652DC(*(v108 + 48) + v69 * v67, v8, type metadata accessor for CRLBoardIdentifier);
          if ((static UUID.== infix(_:_:)() & 1) == 0)
          {
            sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
            goto LABEL_30;
          }

          v70 = &v8[*(v61 + 20)];
          if (*v70 == v64 && *(v70 + 1) == v63)
          {
            break;
          }

          v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
          if (v4)
          {
            goto LABEL_44;
          }

LABEL_30:
          v67 = (v67 + 1) & v68;
          if (((*(v30 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
          {
            v29 = v107;
            goto LABEL_41;
          }
        }

        sub_10000BBC4(v8, type metadata accessor for CRLBoardIdentifier);
LABEL_44:
        v29 = v107;
        sub_10000BBC4(v107, _s5BoardVMa);
        sub_100065D50(v104, v89, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v72 = v100;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v110 = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v4 = &v110;
          sub_100776764(0, *(v72 + 16) + 1, 1);
          v72 = v110;
        }

        v13 = v90;
        v57 = v98;
        v58 = v95;
        v75 = *(v72 + 16);
        v74 = *(v72 + 24);
        v76 = v72;
        if (v75 >= v74 >> 1)
        {
          v4 = &v110;
          sub_100776764(v74 > 1, v75 + 1, 1);
          v76 = v110;
        }

        *(v76 + 16) = v75 + 1;
        v100 = v76;
        sub_100065D50(v89, v76 + v103 + v75 * v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v47 = v106;
LABEL_23:
        if (++v59 == v101)
        {
          goto LABEL_50;
        }
      }
    }

    v100 = _swiftEmptyArrayStorage;
LABEL_50:

    v109[0] = _swiftEmptySetSingleton;
    v77 = sub_100F35F5C(v100, v109);

    v55 = v87;
    v56 = v81;
    NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v77);
  }

  else
  {

    v55 = v87;
    v56 = v81;
  }

  v78 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v82 + 8))(v56, v55);
}

void sub_10006A7C8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBA0, &qword_101AD5B48);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

uint64_t sub_10006A888()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v1, v7, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v8 = sub_1005B981C(&qword_1019F3480);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 != 3 && v9 != 4)
    {
      v16 = [objc_opt_self() mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = String._bridgeToObjectiveC()();
      v14 = [v16 localizedStringForKey:v17 value:v18 table:0];

      goto LABEL_9;
    }

LABEL_3:
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = String._bridgeToObjectiveC()();
    v14 = [v10 localizedStringForKey:v11 value:v12 table:0];

LABEL_9:
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v13;
  }

  if (v9)
  {
    goto LABEL_3;
  }

  sub_10000CCD0(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v13 = *&v4[*(v2 + 24)];

  sub_10000CD38(v4, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  return v13;
}

void sub_10006ACC8()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A23C00);
  __chkstk_darwin(v2 - 8);
  v4 = &v63 - v3;
  v5 = sub_1005B981C(&unk_101A23860);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v68 = &v63 - v11;
  __chkstk_darwin(v10);
  v69 = &v63 - v12;
  v13 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10000BE14(&v1[v13], v4, &unk_101A23C00);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &unk_101A23C00);
    v14 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
    v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = 1;
    sub_10006C670(v14);
    return;
  }

  v64 = v6;
  v15 = *(v6 + 32);
  v67 = v6 + 32;
  v66 = v15;
  v15(v9, v4, v5);
  v70 = v5;
  v16 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v17 = *(v16 + 16);
  v65 = v16;
  if (v17)
  {
    v18 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
    v19 = v16 + 32;
    swift_beginAccess();
    v20 = _swiftEmptyArrayStorage;
    while (1)
    {
      v21 = *v19;
      v22 = *(v19 + 16);
      v23 = *(v19 + 32);
      v76 = *(v19 + 48);
      v74 = v22;
      v75 = v23;
      v73 = v21;
      v24 = *&v1[v18];
      sub_1000693DC(&v73, v71);

      v25 = sub_100069438(&v73, v24);

      if ((v25 & 1) == 0)
      {
        sub_1000698D0(&v73);
        goto LABEL_6;
      }

      v71[0] = v73;
      v71[1] = v74;
      v71[2] = v75;
      v72 = v76;
      v26 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
      sub_1000698D0(&v73);
      v27 = *(v26 + 16);
      v28 = v20[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v29 <= v20[3] >> 1)
      {
        if (!*(v26 + 16))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v35 = v28 + v27;
        }

        else
        {
          v35 = v28;
        }

        v20 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v35, 1, v20);
        if (!*(v26 + 16))
        {
LABEL_20:

          if (v27)
          {
            __break(1u);
            break;
          }

          goto LABEL_6;
        }
      }

      v31 = (v20[3] >> 1) - v20[2];
      type metadata accessor for UUID();
      if (v31 < v27)
      {
        goto LABEL_40;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v32 = v20[2];
        v33 = __OFADD__(v32, v27);
        v34 = v32 + v27;
        if (v33)
        {
          goto LABEL_41;
        }

        v20[2] = v34;
      }

LABEL_6:
      v19 += 56;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }
  }

  v20 = _swiftEmptyArrayStorage;
LABEL_23:

  v36 = v70;
  NSDiffableDataSourceSnapshot.deleteItems(_:)(v20);

  v37 = v68;
  v38 = v66;
  v66(v68, v9, v36);
  v38(v69, v37, v36);
  sub_10006B778();
  v40 = v39;
  v41 = objc_opt_self();
  v42 = [v41 sharedApplication];
  v43 = [v42 delegate];

  if (!v43)
  {
    goto LABEL_42;
  }

  type metadata accessor for CRLiOSAppDelegate();
  swift_dynamicCastClassUnconditional();

  swift_unknownObjectRelease();
  v44 = sub_10000A05C();

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v71[0]) = v44;

  static Published.subscript.setter();

  v45 = sub_10006BFF8();
  v46 = 0;
  if ((v45 & 1) == 0)
  {
    v47 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    v46 = v47 == 0;
  }

  v48 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView;
  v49 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
  v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView] = v46;
  sub_10006C670(v49);
  v50 = v64;
  if (v1[v48] == 1 && (v51 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint]) != 0 && *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight] == 0.0)
  {
    v52 = v51;
    v53 = [v41 sharedApplication];
    v54 = [v53 delegate];

    if (!v54)
    {
      goto LABEL_43;
    }

    swift_dynamicCastClassUnconditional();
    v55 = sub_10006D030();
    swift_unknownObjectRelease();
    if (v55)
    {
      v56 = -102.0;
    }

    else
    {
      v56 = 0.0;
    }

    [v52 constant];
    if (v56 == v57)
    {
      (*(v50 + 8))(v69, v70);
    }

    else
    {
      [v52 setConstant:v56];
      v58 = [v1 view];
      v59 = v70;
      if (!v58)
      {
        goto LABEL_44;
      }

      v60 = v58;
      [v58 setNeedsUpdateConstraints];

      v61 = [v1 view];
      if (v61)
      {
        v62 = v61;
        [v61 setNeedsLayout];

        (*(v50 + 8))(v69, v59);
      }

      else
      {
LABEL_45:
        __break(1u);
      }
    }
  }

  else
  {
    (*(v64 + 8))(v69, v70);
  }
}

uint64_t sub_10006B46C(uint64_t *a1, int8x16_t *a2)
{
  v4 = sub_100068F28();
  v6 = v5;
  if (v4 == sub_100068F28() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v9 = 0;
    if ((v8 & 1) == 0)
    {
      return v9 & 1;
    }
  }

  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 24);
  v14 = *(a1 + 48);
  v15 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    v18 = *(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32);
    v20 = a1[4];
    v19 = a1[5];
    if (v15 != 2)
    {
      v23 = v13 | (v18 << 8);
      v24 = *&v12 | *&v11;
      if (v14 != 192 || v24 | *&v10 | v20 | v19 | v23)
      {
        if (v14 == 192 && *&v10 == 1 && !(v24 | v20 | v19 | v23))
        {
          if (a2[3].u8[0] != 192 || a2->i64[0] != 1)
          {
            goto LABEL_42;
          }
        }

        else if (a2[3].u8[0] != 192 || a2->i64[0] != 2)
        {
          goto LABEL_42;
        }

        v26 = vorrq_s8(a2[1], a2[2]);
        if (*&vorr_s8(*v26.i8, *&vextq_s8(v26, v26, 8uLL)) | a2->i64[1])
        {
LABEL_42:
          v9 = 0;
          return v9 & 1;
        }
      }

      else
      {
        if (a2[3].u8[0] != 192)
        {
          goto LABEL_42;
        }

        v25 = vorrq_s8(a2[1], a2[2]);
        if (*&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | a2->i64[1] | a2->i64[0])
        {
          goto LABEL_42;
        }
      }

LABEL_41:
      v9 = 1;
      return v9 & 1;
    }

    v21 = a2[3].i8[0];
    if ((v21 & 0xC0) != 0x80)
    {
      goto LABEL_42;
    }

    v27[0] = *a1;
    *&v27[1] = v11;
    *&v27[2] = v12;
    v28 = v13;
    v29 = v18;
    v31 = BYTE6(v18);
    v30 = WORD2(v18);
    v32 = v20;
    v33 = v19;
    v34 = v14 & 1;
    v22 = a2[1];
    v35[0] = *a2;
    v35[1] = v22;
    v35[2] = a2[2];
    v36 = v21 & 1;
    v9 = sub_101302EF4(v27, v35);
    return v9 & 1;
  }

  if (v15)
  {
    if ((a2[3].i8[0] & 0xC0) != 0x40)
    {
      goto LABEL_42;
    }

    v9 = 0;
    if (a2->i8[0] != LOBYTE(v10) || *&a2->i64[1] != v11)
    {
      return v9 & 1;
    }

    if (v13)
    {
      if ((a2[1].i8[8] & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if ((a2[1].i8[8] & 1) != 0 || *a2[1].i64 != v12)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (a2[3].u8[0] > 0x3Fu)
  {
    goto LABEL_42;
  }

  v16 = a2->i64[1];
  v9 = (*&v11 | v16) == 0;
  if (v11 == 0.0 || !v16)
  {
    return v9 & 1;
  }

  if (*&v10 == a2->i64[0] && *&v11 == v16)
  {
    goto LABEL_41;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_10006B778()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController;
  v5 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController);
  if (v5)
  {
    goto LABEL_4;
  }

  v6 = v0;
  sub_1000652DC(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v7 = [objc_opt_self() sharedApplication];
  v8 = [v7 delegate];

  if (v8)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();

    swift_unknownObjectRelease();
    v9 = sub_10000A05C();

    v10 = v6;
    v11 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString);
    v12 = *(v6 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_searchString + 8);
    objc_allocWithZone(type metadata accessor for CRLiOSEmptyFolderViewController());

    v13 = sub_10006BD80(v3, v9, v11, v12);
    v14 = *(v10 + v4);
    *(v10 + v4) = v13;
    v13;

    v5 = 0;
LABEL_4:
    v15 = v5;
    return;
  }

  __break(1u);
}

uint64_t type metadata accessor for CRLiOSEmptyFolderViewController()
{
  result = qword_101A11EB0;
  if (!qword_101A11EB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B984()
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
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

uint64_t type metadata accessor for CRLEmptyFolderView()
{
  result = qword_101A066E8;
  if (!qword_101A066E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006BA74()
{
  type metadata accessor for CRLBoardLibraryViewModel.Filter(319);
  if (v0 <= 0x3F)
  {
    sub_10006BB44();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for CRLEmptyFolderViewDataSource()
{
  result = qword_1019FB350;
  if (!qword_1019FB350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006BB44()
{
  if (!qword_101A066F8)
  {
    type metadata accessor for CRLEmptyFolderViewDataSource();
    sub_10006BD28();
    v0 = type metadata accessor for StateObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101A066F8);
    }
  }
}

void sub_10006BBA8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10006BBF4()
{
  sub_10006BBA8(319, &qword_1019FB360);
  if (v0 <= 0x3F)
  {
    sub_10006BBA8(319, &qword_1019FB368);
    if (v1 <= 0x3F)
    {
      sub_10006BBA8(319, &qword_1019FB370);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_10006BD28()
{
  result = qword_101A06700;
  if (!qword_101A06700)
  {
    type metadata accessor for CRLEmptyFolderViewDataSource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06700);
  }

  return result;
}

uint64_t sub_10006BD80(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CRLEmptyFolderView();
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BF38(a1, v4 + qword_101AD7510);
  type metadata accessor for CRLEmptyFolderViewDataSource();
  v13 = swift_allocObject();
  v20 = 0;
  Published.init(initialValue:)();
  swift_beginAccess();
  LOBYTE(v18) = a2;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_beginAccess();
  v18 = a3;
  v19 = a4;
  Published.init(initialValue:)();
  swift_endAccess();
  *(v4 + qword_101A11EA8) = v13;
  sub_10006BF38(a1, v12);
  v14 = &v12[*(v10 + 28)];
  *v14 = CRLAsyncStreamProperty.projectedValue.getter;
  *(v14 + 1) = v13;
  v14[16] = 0;

  v15 = UIHostingController.init(rootView:)();
  sub_10006BF9C(a1);
  return v15;
}

uint64_t sub_10006BF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006BF9C(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006BFF8()
{
  v1 = sub_1005B981C(&unk_101A23C00);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v55 - v5;
  v7 = sub_1005B981C(&unk_101A23860);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v60 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v56 = v55 - v12;
  v13 = __chkstk_darwin(v11);
  v57 = v55 - v14;
  __chkstk_darwin(v13);
  v16 = v55 - v15;
  v17 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController__currentSnapshotWithExpandedSections;
  swift_beginAccess();
  sub_10000BE14(v0 + v17, v6, &unk_101A23C00);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    sub_10000CAAC(v6, &unk_101A23C00);
    return 0;
  }

  v19 = *(v8 + 32);
  v19(v16, v6, v7);
  sub_10000BE14(v0 + v17, v4, &unk_101A23C00);
  if (v18(v4, 1, v7) == 1)
  {
    sub_10000CAAC(v4, &unk_101A23C00);
    (*(v8 + 8))(v16, v7);
    return 0;
  }

  v20 = v0;
  v55[2] = v8 + 32;
  v19(v60, v4, v7);
  v59 = v7;
  v21 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v22 = *(v21 + 16);
  v55[1] = v21;
  if (!v22)
  {
    v62._rawValue = _swiftEmptyArrayStorage;
LABEL_26:

    v46 = v59;
    v47 = v60;
    NSDiffableDataSourceSnapshot.deleteItems(_:)(v62);

    v48 = v56;
    v19(v56, v47, v46);
    v49 = v57;
    v19(v57, v48, v46);
    v50 = *(NSDiffableDataSourceSnapshot.itemIdentifiers.getter() + 16);

    if (!v50)
    {
      v52 = NSDiffableDataSourceSnapshot.itemIdentifiers.getter();
      v53 = *(v8 + 8);
      v53(v49, v46);
      v53(v16, v46);
      v54 = *(v52 + 16);

      return v54 != 0;
    }

    v51 = *(v8 + 8);
    v51(v49, v46);
    v51(v16, v46);
    return 0;
  }

  v23 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
  v24 = v21 + 32;
  swift_beginAccess();
  v62._rawValue = _swiftEmptyArrayStorage;
  v58 = v20;
  v61 = v19;
  while (1)
  {
    v26 = *v24;
    v27 = *(v24 + 16);
    v28 = *(v24 + 32);
    v68 = *(v24 + 48);
    v66 = v27;
    v67 = v28;
    v65 = v26;
    v29 = *(v20 + v23);
    sub_1000693DC(&v65, v63);

    v30 = sub_100069438(&v65, v29);

    if ((v30 & 1) == 0)
    {
      sub_1000698D0(&v65);
LABEL_23:
      v19 = v61;
      goto LABEL_8;
    }

    v31 = v16;
    v32 = v8;
    v63[0] = v65;
    v63[1] = v66;
    v63[2] = v67;
    v64 = v68;
    v33 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    sub_1000698D0(&v65);
    v34 = *(v33 + 16);
    result = v62._rawValue;
    v35 = *(v62._rawValue + 2);
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    rawValue = v62._rawValue;
    if (!isUniquelyReferenced_nonNull_native || v36 > *(v62._rawValue + 3) >> 1)
    {
      if (v35 <= v36)
      {
        v39 = v35 + v34;
      }

      else
      {
        v39 = v35;
      }

      rawValue = sub_100B356D0(isUniquelyReferenced_nonNull_native, v39, 1, v62._rawValue);
    }

    v8 = v32;
    v40 = *(v33 + 16);
    v62._rawValue = rawValue;
    if (v40)
    {
      v41 = (rawValue[3] >> 1) - rawValue[2];
      v42 = rawValue;
      result = type metadata accessor for UUID();
      if (v41 < v34)
      {
        goto LABEL_33;
      }

      swift_arrayInitWithCopy();

      if (!v34)
      {
        v8 = v32;
        v16 = v31;
        v20 = v58;
        goto LABEL_23;
      }

      v43 = v42[2];
      v44 = __OFADD__(v43, v34);
      v45 = v43 + v34;
      v19 = v61;
      if (v44)
      {
        goto LABEL_34;
      }

      v8 = v32;
      v42[2] = v45;
      v16 = v31;
      v20 = v58;
    }

    else
    {

      v16 = v31;
      v20 = v58;
      v19 = v61;
      if (v34)
      {
        goto LABEL_32;
      }
    }

LABEL_8:
    v24 += 56;
    if (!--v22)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_10006C670(char a1)
{
  v2 = v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_showsEmptyFolderView];
  if (v2 == (a1 & 1))
  {
    return;
  }

  sub_10006B778();
  v4 = v3;
  v5 = [v3 view];

  if (v2)
  {
    if (!v5)
    {
      return;
    }

    v6 = [v5 bottomAnchor];
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 bottomAnchor];

      v10 = [v6 constraintEqualToAnchor:v9 constant:-*&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_keyboardHeight]];
      v11 = String._bridgeToObjectiveC()();
      [v10 setIdentifier:v11];

      v12 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint;
      v13 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint];
      *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_emptyFolderBottomConstraint] = v10;

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v1 view];
      if (v14)
      {
        v15 = v14;
        [v14 addSubview:v5];

        [v1 addChildViewController:*&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController]];
        sub_1005B981C(&unk_1019F4D60);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10146E8A0;
        v17 = [v5 leadingAnchor];
        v18 = [v1 view];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 leadingAnchor];

          v21 = [v17 constraintEqualToAnchor:v20];
          v22 = String._bridgeToObjectiveC()();
          [v21 setIdentifier:v22];

          *(v16 + 32) = v21;
          v23 = [v5 trailingAnchor];
          v24 = [v1 view];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 trailingAnchor];

            v27 = [v23 constraintEqualToAnchor:v26];
            v28 = String._bridgeToObjectiveC()();
            [v27 setIdentifier:v28];

            *(v16 + 40) = v27;
            v29 = [v5 topAnchor];
            v30 = [v1 view];
            if (v30)
            {
              v31 = v30;
              v32 = [v30 safeAreaLayoutGuide];

              v33 = [v32 topAnchor];
              v34 = [v29 constraintEqualToAnchor:v33];

              v35 = String._bridgeToObjectiveC()();
              [v34 setIdentifier:v35];

              *(v16 + 48) = v34;
              v49 = v16;
              v36 = *&v1[v12];
              if (v36)
              {
                v37 = v36;
LABEL_17:
                v46 = v37;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v47 = objc_opt_self();
                sub_100006370(0, &qword_1019F4D70);
                isa = Array._bridgeToObjectiveC()().super.isa;

                [v47 activateConstraints:isa];

                return;
              }

              v39 = [v5 bottomAnchor];
              v40 = [v1 view];
              if (v40)
              {
                v41 = v40;
                v42 = [v40 safeAreaLayoutGuide];

                v43 = [v42 bottomAnchor];
                v44 = [v39 constraintEqualToAnchor:v43];

                v45 = String._bridgeToObjectiveC()();
                [v44 setIdentifier:v45];

                v37 = v44;
                goto LABEL_17;
              }

LABEL_27:
              __break(1u);
              return;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_22;
  }

  [v5 removeFromSuperview];

  v38 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___emptyFolderViewController];

  [v38 removeFromParentViewController];
}

void sub_10006CCAC(void *a1)
{
  v1 = a1;
  sub_10006CCF4();
}

void sub_10006CCF4()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLiOSEmptyFolderViewController();
  v17.receiver = v0;
  v17.super_class = v4;
  objc_msgSendSuper2(&v17, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = v5;
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];

  v8 = objc_opt_self();
  v9 = [v8 defaultCenter];
  if (qword_1019F14A0 != -1)
  {
    swift_once();
  }

  [v9 addObserver:v0 selector:? name:? object:?];

  v10 = qword_101AD7510;
  v11 = sub_1005B981C(&qword_1019F3480);
  (*(*(v11 - 8) + 56))(v3, 4, 5, v11);
  LOBYTE(v10) = sub_100068604(v0 + v10, v3);
  sub_10006BF9C(v3);
  if (v10)
  {
    v12 = [v8 defaultCenter];
    if (qword_1019F1F48 != -1)
    {
      swift_once();
    }

    v13 = qword_101AD7950;
    v14 = [objc_opt_self() sharedApplication];
    v15 = [v14 delegate];

    if (v15)
    {
      type metadata accessor for CRLiOSAppDelegate();
      v16 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_iCloudStatus);

      swift_unknownObjectRelease();
      [v12 addObserver:v0 selector:"updateICloudOnlineWithNotification:" name:v13 object:v16];

      return;
    }

LABEL_11:
    __break(1u);
  }
}

NSString sub_10006CFF8()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD61F0 = result;
  return result;
}

uint64_t sub_10006D030()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_syncDriver);
  if (v1)
  {
    if (*(v1 + 136))
    {
      return 1;
    }

    else
    {
      return *(v1 + 137);
    }
  }

  else
  {
    v3 = objc_opt_self();
    v4 = [v3 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 215;
    v16 = v26;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Asking for fetch status before the sync driver exists.", 54, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v23 file:v24 lineNumber:215 isFatal:0 format:v25 args:v22];

    return 0;
  }
}

void sub_10006D41C()
{
  v1 = v0;
  sub_10006A888();
  v2 = String._bridgeToObjectiveC()();

  [v0 setTitle:v2];

  v3 = [v0 navigationItem];
  [v3 setStyle:0];

  sub_10006D850();
  v4 = [objc_allocWithZone(UISearchController) init];
  if (_UISolariumEnabled())
  {
    v5 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController];
    *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController] = v4;
    v6 = v4;
  }

  [v4 setSearchResultsUpdater:v1];
  [v4 setDelegate:v1];
  v7 = [v4 searchBar];
  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v7 setLargeContentTitle:v11];

  v12 = [v4 searchBar];
  [v12 setShowsLargeContentViewer:1];

  v13 = [v1 navigationItem];
  [v13 setSearchController:v4];

  v14 = [v1 navigationItem];
  [v14 setHidesSearchBarWhenScrolling:0];

  v15 = [v1 navigationItem];
  [v15 setLargeTitleDisplayMode:1];

  v16 = [v1 navigationController];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 navigationBar];

    if (v18)
    {
      v19 = v18;
      [v19 setPrefersLargeTitles:1];
      sub_1005B981C(&unk_101A11100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v21 = NSForegroundColorAttributeName;
      sub_10006E0EC();
      v23 = v22;
      *(inited + 64) = sub_100006370(0, &qword_101A11110);
      *(inited + 40) = v23;
      sub_10006E310(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_101A0DE70);
      type metadata accessor for Key(0);
      sub_10006852C(&qword_1019F34A0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v19 setLargeTitleTextAttributes:isa];
    }
  }

  sub_10006E75C();
}

void sub_10006D850()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:5 target:0 action:0];
  if (![v1 isEditing])
  {
    if (_UISolariumEnabled())
    {
      v13 = [v1 navigationItem];
      v14 = *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_cachedSearchController];
      [v13 setSearchController:v14];
    }

    v15 = [v1 navigationItem];
    v16 = [v15 searchController];

    if (v16)
    {
      v17 = [v16 searchBar];

      [v17 _setEnabled:1];
    }

    sub_10006A888();
    v18 = String._bridgeToObjectiveC()();

    [v1 setTitle:v18];

    if (v3 == 1)
    {
      v19 = objc_opt_self();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = 257;
      aBlock[4] = sub_100F771B4;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100646688;
      aBlock[3] = &unk_1018A9488;
      v22 = _Block_copy(aBlock);

      v12 = [v19 elementWithUncachedProvider:v22];
      _Block_release(v22);
      if ((_UISolariumEnabled() & 1) == 0)
      {
        sub_1005B981C(&unk_1019F4D60);
        v33 = swift_allocObject();
        v49 = xmmword_101465920;
        *(v33 + 16) = xmmword_101465920;
        sub_100006370(0, &unk_101A012C0);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_101465920;
        *(v34 + 32) = sub_10006F798();
        v35 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

        *(v33 + 32) = v35;
      }
    }

    else
    {
      sub_1005B981C(&unk_1019F4D60);
      v28 = swift_allocObject();
      v49 = xmmword_10146CE00;
      *(v28 + 16) = xmmword_10146CE00;
      sub_100006370(0, &unk_101A012C0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_101465920;
      *(v29 + 32) = sub_10006F798();
      v30 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      *(v28 + 32) = v30;
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10146CE00;
      if (_UISolariumEnabled())
      {
        v32 = sub_100F3F19C();
      }

      else
      {
        v32 = sub_10005D5F8();
      }

      *(v31 + 32) = v32;
      *(v31 + 40) = sub_100F3ED14(1);
      v36 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
LABEL_34:

      v12 = 0;
      *(v28 + 40) = v36;
    }

    goto LABEL_35;
  }

  sub_100F3FA30();
  if (v3 == 1)
  {
    sub_1005B981C(&unk_1019F4D60);
    v5 = swift_allocObject();
    v49 = xmmword_101465920;
    *(v5 + 16) = xmmword_101465920;
    sub_100006370(0, &unk_101A012C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101465920;
    *(v6 + 32) = sub_100F3CD2C();
    v7 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    *(v5 + 32) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_101465920;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146E8A0;
    *(v9 + 32) = sub_10005D5F8();
    *(v9 + 40) = sub_100F3D0F8();
    *(v9 + 48) = v4;
    v10 = v4;
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v12 = 0;
    *(v8 + 32) = v11;
LABEL_35:
    v44 = [v1 navigationItem];
    [v44 setAdditionalOverflowItems:v12];

    v45 = [v1 navigationItem];
    sub_100006370(0, &unk_101A012C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setLeadingItemGroups:isa];

    v47 = [v1 navigationItem];
    v48 = Array._bridgeToObjectiveC()().super.isa;

    [v47 setTrailingItemGroups:v48];

    return;
  }

  v23 = [v1 collectionView];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100911C48();

    v26 = *(v25 + 16);

    if (v26)
    {
      v27 = sub_100F3CD2C();
    }

    else
    {
      v27 = 0;
    }

    v50[4] = v27;
    if (_UISolariumEnabled())
    {
      v37 = sub_100F3F19C();
    }

    else
    {
      v37 = sub_10005D5F8();
    }

    v50[5] = v37;
    v38 = 0;
    v50[6] = sub_100F3D0F8();
    aBlock[0] = _swiftEmptyArrayStorage;
LABEL_24:
    if (v38 <= 3)
    {
      v39 = 3;
    }

    else
    {
      v39 = v38;
    }

    while (1)
    {
      if (v38 == 3)
      {
        sub_1005B981C(&unk_1019F6BE0);
        swift_arrayDestroy();
        sub_1005B981C(&unk_1019F4D60);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_10146CE00;
        sub_100006370(0, &unk_101A012C0);
        v42 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

        *(v28 + 32) = v42;
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_101465920;
        *(v43 + 32) = sub_100F3ED14(0);
        v36 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
        goto LABEL_34;
      }

      if (v39 == v38)
      {
        break;
      }

      v40 = v50[v38++ + 4];
      if (v40)
      {
        v41 = v40;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10006E0EC()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000094E4(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v4 = sub_1005B981C(&qword_1019F3480);
  v5 = (*(*(v4 - 8) + 48))(v3, 5, v4);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [objc_opt_self() systemRedColor];
    }

    else if (v5 == 4)
    {
      v6 = [objc_opt_self() systemBlueColor];
    }

    else
    {
      v6 = [objc_opt_self() systemGrayColor];
    }
  }

  else
  {
    if (!v5)
    {
      v7 = String._bridgeToObjectiveC()();
      v8 = [objc_opt_self() colorNamed:v7];

      if (v8)
      {
        sub_10000CD38(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    if (v5 == 1)
    {
      v6 = [objc_opt_self() systemCyanColor];
    }

    else
    {
      v6 = [objc_opt_self() systemOrangeColor];
    }
  }

  v9 = v6;
}

unint64_t sub_10006E310(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F050);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, &v11, &unk_101A0DE70);
      v5 = v11;
      result = sub_10006E4C8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10000BF3C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10006E438(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10006E610(a1, v2);
}

id sub_10006E4D0(xmlDoc *a1, void *a2)
{
  v3 = a2;
  v4 = xmlXPathNewContext(a1);
  if (!v4)
  {
    NSLog(@"Unable to create XPath context.");
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v5 = v4;
  xmlXPathRegisterNs(v4, "svg", "http://www.w3.org/2000/svg");
  v6 = xmlXPathEvalExpression([v3 cStringUsingEncoding:4], v5);
  if (!v6)
  {
    NSLog(@"Unable to evaluate XPath.");
    goto LABEL_13;
  }

  v7 = v6;
  p_nodeNr = &v6->nodesetval->nodeNr;
  if (!p_nodeNr)
  {
    NSLog(@"Nodes was nil.");
    goto LABEL_13;
  }

  v9 = +[NSMutableArray array];
  if (*p_nodeNr >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_10006FE30(*(*(p_nodeNr + 1) + 8 * v10), 0);
      if (v11)
      {
        [v9 addObject:v11];
      }

      ++v10;
    }

    while (v10 < *p_nodeNr);
  }

  xmlXPathFreeObject(v7);
  xmlXPathFreeContext(v5);
LABEL_14:

  return v9;
}

unint64_t sub_10006E610(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_10006E75C()
{
  v1 = [v0 navigationController];
  if (v1)
  {
    v2 = v1;
    v13 = [v1 parentViewController];

    if (v13)
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 navigationBar];
        if (v5)
        {
          v6 = v5;
          [v6 setPrefersLargeTitles:1];
          sub_1005B981C(&unk_101A11100);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          *(inited + 32) = NSForegroundColorAttributeName;
          v8 = NSForegroundColorAttributeName;
          sub_10006E0EC();
          v10 = v9;
          *(inited + 64) = sub_100006370(0, &qword_101A11110);
          *(inited + 40) = v10;
          sub_10006E310(inited);
          swift_setDeallocating();
          sub_10000CAAC(inited + 32, &unk_101A0DE70);
          type metadata accessor for Key(0);
          sub_10006852C(&qword_1019F34A0, type metadata accessor for Key);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          [v6 setLargeTitleTextAttributes:isa];
        }

        v12 = [v4 navigationItem];
        [v12 setLargeTitleDisplayMode:1];
      }

      else
      {
      }
    }
  }
}

void sub_10006E9B4()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v7 = String._bridgeToObjectiveC()();
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 localizedStringForKey:v7 value:v8 table:0];

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100006370(0, &qword_1019F6190);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  LOBYTE(v6) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6BF0);
  v13.value._countAndFlagsBits = v10;
  v13.value._object = v12;
  v76.value.super.isa = 0;
  v76.is_nil = v6;
  v81.value.super.super.isa = 0;

  v14 = [v1 traitCollection];
  v15 = [v14 horizontalSizeClass];

  if (!_UISolariumEnabled() || v15 != 1)
  {
    v37 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v38 = sub_1005B981C(&qword_1019F3480);
    (*(*(v38 - 8) + 56))(v4, 5, 5, v38);
    LOBYTE(v37) = sub_100068604(v1 + v37, v4);
    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1005B981C(&unk_1019F4D60);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10146E8A0;
    if (v37)
    {
      v40 = [v5 mainBundle];
      v41 = String._bridgeToObjectiveC()();
      v42 = String._bridgeToObjectiveC()();
      v43 = [v40 localizedStringForKey:v41 value:v42 table:0];

      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v78.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v47.value._countAndFlagsBits = v44;
      v47.value._object = v46;
      v78.value.super.isa = 0;
      v83.value.super.super.isa = 0;
      v48.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v47, v78, v83, v88).super.super.isa;
    }

    else
    {
      v48.super.super.isa = sub_100F3CE70();
    }

    *(v39 + 32) = v48;
    *(v39 + 40) = [objc_opt_self() flexibleSpaceItem];
    v49 = [v5 mainBundle];
    v50 = String._bridgeToObjectiveC()();
    v51 = String._bridgeToObjectiveC()();
    v52 = [v49 localizedStringForKey:v50 value:v51 table:0];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v79.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v56.value._countAndFlagsBits = v53;
    v56.value._object = v55;
    v79.value.super.isa = 0;
    v84.value.super.super.isa = 0;
    *(v39 + 48) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v56, v79, v84, v89);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setToolbarItems:isa];

    v58 = [v1 collectionView];
    if (v58)
    {
      v59 = v58;
      v60 = [v58 isEditing];

      v61 = [v1 navigationController];
      [v61 setToolbarHidden:v60 ^ 1];
LABEL_30:

      return;
    }

    goto LABEL_33;
  }

  v16 = [v1 collectionView];
  if (!v16)
  {
LABEL_34:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 isEditing];

  if (v18)
  {
    v19 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter;
    v20 = sub_1005B981C(&qword_1019F3480);
    (*(*(v20 - 8) + 56))(v4, 5, 5, v20);
    LOBYTE(v19) = sub_100068604(v1 + v19, v4);
    sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1005B981C(&unk_1019F4D60);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10146E8A0;
    if (v19)
    {
      v22 = [v5 mainBundle];
      v23 = String._bridgeToObjectiveC()();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      swift_allocObject();
      swift_unknownObjectWeakInit();
      v77.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v29.value._countAndFlagsBits = v26;
      v29.value._object = v28;
      v77.value.super.isa = 0;
      v82.value.super.super.isa = 0;
      *(v21 + 32) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v29, v77, v82, v87);
    }

    else
    {
      *(v21 + 32) = sub_100F3CE70();
    }

    *(v21 + 40) = [objc_opt_self() flexibleSpaceItem];
    v30 = [v5 mainBundle];
    v31 = String._bridgeToObjectiveC()();
    v32 = String._bridgeToObjectiveC()();
    v33 = [v30 localizedStringForKey:v31 value:v32 table:0];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v80.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v70.value._countAndFlagsBits = v34;
    v70.value._object = v36;
    v80.value.super.isa = 0;
    v85.value.super.super.isa = 0;
    *(v21 + 48) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v70, v80, v85, v90);
    v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
    goto LABEL_26;
  }

  if (_UISolariumEnabled())
  {
    v62 = [v1 navigationItem];
    v63 = [v62 searchBarPlacementBarButtonItem];

    v75[5] = v63;
    v64 = objc_opt_self();
    v65 = v63;
    v75[6] = [v64 flexibleSpaceItem];
    v66 = 0;
    v75[7] = sub_10006F798();
    v75[0] = _swiftEmptyArrayStorage;
LABEL_14:
    if (v66 <= 3)
    {
      v67 = 3;
    }

    else
    {
      v67 = v66;
    }

    while (1)
    {
      if (v66 == 3)
      {
        sub_1005B981C(&unk_1019F6BE0);
        swift_arrayDestroy();
        v73 = Array._bridgeToObjectiveC()().super.isa;

        [v1 setToolbarItems:v73];

        goto LABEL_28;
      }

      if (v67 == v66)
      {
        break;
      }

      v68 = v75[v66++ + 5];
      if (v68)
      {
        v69 = v68;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  sub_1005B981C(&unk_1019F4D60);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_10146CE00;
  *(v72 + 32) = [objc_opt_self() flexibleSpaceItem];
  *(v72 + 40) = sub_10006F798();
  v71.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_26:

  [v1 setToolbarItems:v71.super.isa];

LABEL_28:
  v74 = [v1 navigationController];
  if (v74)
  {
    v61 = v74;
    [v74 setToolbarHidden:0];
    goto LABEL_30;
  }
}

uint64_t sub_10006F658(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = v10[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10002D4C8;

  return sub_100F5095C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

objc_class *sub_10006F798()
{
  v1 = v0;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___toolbarItemToAddBoard);
  }

  else
  {
    v8 = [objc_opt_self() mainBundle];
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v16 = [objc_opt_self() systemImageNamed:v15];

    sub_100006370(0, &qword_1019F6190);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0);
    v18 = v16;
    v19 = v17;
    v20.value._countAndFlagsBits = v12;
    v20.value._object = v14;
    v28.value.super.isa = v16;
    v28.is_nil = v17;
    v29.value.super.super.isa = 0;
    v21.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v20, v28, v29, v30).super.super.isa;
    sub_1000652DC(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_filter, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v22 = sub_1005B981C(&qword_1019F3480);
    v23 = (*(*(v22 - 8) + 48))(v4, 5, v22);
    if (v23 != 5)
    {
      sub_10000BBC4(v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    }

    [(objc_class *)v21.super.super.isa setEnabled:v23 != 5];

    v24 = *(v1 + v5);
    *(v1 + v5) = v21;
    v7 = v21.super.super.isa;

    v6 = 0;
  }

  v25 = v6;
  return v7;
}

void sub_10006FAD4()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  if (qword_1019F2748 != -1)
  {
    swift_once();
  }

  [v3 addObserver:v1 selector:? name:? object:?];

  if (qword_1019F14B0 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD6200;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 mainQueue];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CRLiOSFolderGridViewController.NotificationObserver();
  v9 = swift_allocObject();
  sub_100070160(v6, v17, v7, sub_100F78F18, v8);
  *(v1 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver) = v9;

  v10 = [v2 defaultCenter];
  [v10 addObserver:v1 selector:"reloadAllItems" name:NSCurrentLocaleDidChangeNotification object:0];

  v11 = [v2 defaultCenter];
  [v11 addObserver:v1 selector:"reloadAllItems" name:NSSystemClockDidChangeNotification object:0];

  v12 = [v2 defaultCenter];
  v13 = [v5 mainQueue];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = sub_100F78F20;
  v17[5] = v14;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = *"";
  v17[2] = sub_100059694;
  v17[3] = &unk_1018AA108;
  v15 = _Block_copy(v17);

  v16 = [v12 addObserverForName:NSCalendarDayChangedNotification object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();
}

id sub_10006FE30(void *a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableDictionary dictionary];
  v5 = a1[2];
  if (v5)
  {
    v6 = [NSString stringWithCString:v5 encoding:4];
    [v4 setObject:v6 forKey:@"nodeName"];
  }

  if ((a1[10] + 1) >= 2)
  {
    v20 = [NSString stringWithCString:"stringWithCString:encoding:" encoding:?];
    v21 = [v4 objectForKey:@"nodeName"];
    v22 = [v21 isEqual:@"text"];

    if (v3 && v22)
    {
      v23 = +[NSCharacterSet whitespaceAndNewlineCharacterSet];
      v24 = [v20 stringByTrimmingCharactersInSet:v23];

      v25 = [v3 objectForKey:@"nodeContent"];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 stringByAppendingString:v24];
      }

      else
      {
        v27 = v24;
      }

      v28 = v27;
      [v3 setObject:v27 forKey:@"nodeContent"];

      v18 = 0;
      goto LABEL_22;
    }

    [v4 setObject:v20 forKey:@"nodeContent"];
  }

  v7 = a1[11];
  if (v7)
  {
    v29 = v3;
    v8 = +[NSMutableDictionary dictionary];
    do
    {
      v9 = +[NSMutableDictionary dictionary];
      v10 = [NSString stringWithCString:v7[2] encoding:4];
      v11 = v7[3];
      if (v11)
      {
        v12 = sub_10006FE30(v11, v9);
      }

      if (v10)
      {
        v13 = [v9 objectForKey:@"nodeContent"];

        if (v13)
        {
          v14 = [v9 objectForKey:@"nodeContent"];
          [v8 setObject:v14 forKey:v10];
        }
      }

      v7 = v7[6];
    }

    while (v7);
    [v4 setObject:v8 forKey:@"nodeAttributes"];

    v3 = v29;
  }

  v15 = a1[3];
  if (v15)
  {
    v16 = +[NSMutableArray array];
    do
    {
      v17 = sub_10006FE30(v15, v4);
      if (v17)
      {
        [v16 addObject:v17];
      }

      v15 = *(v15 + 48);
    }

    while (v15);
    if ([v16 count])
    {
      [v4 setObject:v16 forKey:@"nodeChildArray"];
    }
  }

  v18 = v4;
LABEL_22:

  return v18;
}

void *sub_100070160(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = _swiftEmptyArrayStorage;
  v12 = [objc_opt_self() defaultCenter];
  v37 = a2;
  sub_10000BE14(a2, &aBlock, &unk_1019F4D00);
  v13 = v41;
  if (v41)
  {
    v14 = sub_100020E58(&aBlock, v41);
    v36 = &v36;
    v15 = v12;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    v19 = *(v13 - 1);
    __chkstk_darwin(v14);
    v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v21);
    v22 = a1;
    v23 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v19 + 8))(v21, v13);
    a5 = v18;
    a4 = v17;
    a3 = v16;
    v12 = v15;
    sub_100005070(&aBlock);
  }

  else
  {
    v24 = a1;
    v23 = 0;
  }

  v25 = swift_allocObject();
  swift_weakInit();
  v42 = sub_100F78F28;
  v43 = v25;
  aBlock = _NSConcreteStackBlock;
  v39 = *"";
  v40 = sub_100059694;
  v41 = &unk_1018AA158;
  v26 = _Block_copy(&aBlock);

  v27 = [v12 addObserverForName:a1 object:v23 queue:a3 usingBlock:v26];
  _Block_release(v26);

  swift_unknownObjectRelease();
  v6[3] = v27;
  swift_unknownObjectRelease();
  aBlock = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  aBlock = 0xD00000000000001ALL;
  v39 = 0x80000001015B41A0;
  v28._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.append(_:)(v28);

  v29._countAndFlagsBits = 34;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);

  v30 = aBlock;
  v31 = v39;
  sub_10000CAAC(v37, &unk_1019F4D00);
  v32 = swift_allocObject();
  swift_weakInit();

  v33 = swift_allocObject();
  v33[2] = v32;
  v33[3] = a4;
  v33[4] = a5;
  type metadata accessor for CRLiOSFolderGridViewController.RefreshLimiter();
  v34 = swift_allocObject();
  *(v34 + 32) = 0;
  *(v34 + 40) = 1;
  *(v34 + 72) = 0;
  *(v34 + 88) = 0;
  *(v34 + 96) = 0;
  *(v34 + 80) = 0;
  *(v34 + 16) = v30;
  *(v34 + 24) = v31;
  *(v34 + 48) = _swiftEmptySetSingleton;
  *(v34 + 56) = sub_100F78F84;
  *(v34 + 64) = v33;
  v6[2] = v34;

  return v6;
}

uint64_t sub_100070538()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10007060C(char a1)
{
  v2 = v1;
  v78.receiver = v2;
  v78.super_class = type metadata accessor for CRLiOSFolderGridViewController();
  objc_msgSendSuper2(&v78, "viewWillAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 isRunningTest];

  if (v6)
  {
    v7 = [v4 sharedApplication];
    v8 = [v7 delegate];

    if (!v8)
    {
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
    v9 = qword_101AD75D0;
    if (qword_101AD75D0)
    {
      v10 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      aBlock = v9;
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(v2, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  v13 = [v2 navigationController];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 navigationBar];

    if (v15)
    {
      v16 = v15;
      [v16 setPrefersLargeTitles:1];
      sub_1005B981C(&unk_101A11100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v18 = NSForegroundColorAttributeName;
      sub_10006E0EC();
      v20 = v19;
      *(inited + 64) = sub_100006370(0, &qword_101A11110);
      *(inited + 40) = v20;
      sub_10006E310(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_101A0DE70);
      type metadata accessor for Key(0);
      sub_10006852C(&qword_1019F34A0, type metadata accessor for Key);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v16 setLargeTitleTextAttributes:isa];
    }
  }

  sub_10006E75C();
  v22 = *(sub_100070F30() + 48);

  if (*(v22 + 16) && (Hasher.init(_seed:)(), Hasher._combine(_:)(3uLL), v23 = Hasher._finalize()(), v24 = -1 << *(v22 + 32), v25 = v23 & ~v24, ((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
  {
    v26 = ~v24;
    while (1)
    {
      v27 = *(v22 + 48) + 16 * v25;
      if (*(v27 + 8) >= 3u && *v27 == 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v22 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v38 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter];

    sub_100F5FB78(0, 3u, 0);
    v39 = *(v38 + 48);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(3uLL);
    v40 = Hasher._finalize()();
    v41 = -1 << *(v39 + 32);
    v42 = v40 & ~v41;
    if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = *(v39 + 48) + 16 * v42;
        if (*(v44 + 8) >= 3u && *v44 == 0)
        {
          break;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      aBlock = v39;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        sub_100E85E84();
        v39 = aBlock;
      }

      v53 = *(v39 + 48) + 16 * v42;
      v54 = *v53;
      v55 = *(v53 + 8);
      sub_100F65BD4(v42);
      sub_1007A98C8(v54, v55);
      v39 = aBlock;
    }

    else
    {
LABEL_35:
    }

    v56 = *(v38 + 48);

    sub_100F5DE4C(v39);
    *(v38 + 48) = v39;

    sub_100F5E170(v56);
  }

  else
  {
LABEL_16:
  }

  v29 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_imageCacheObserver];
  if (v29)
  {
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v30 + 48);
      if (*(v31 + 16))
      {
        Hasher.init(_seed:)();
        Hasher._combine(_:)(3uLL);
        v32 = Hasher._finalize()();
        v33 = -1 << *(v31 + 32);
        v34 = v32 & ~v33;
        if ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
        {
          v35 = ~v33;
          while (1)
          {
            v36 = *(v31 + 48) + 16 * v34;
            if (*(v36 + 8) >= 3u && *v36 == 0)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          sub_100F5FB78(0, 3u, 0);
          v46 = *(v30 + 48);
          Hasher.init(_seed:)();
          Hasher._combine(_:)(3uLL);
          v47 = Hasher._finalize()();
          v48 = -1 << *(v46 + 32);
          v49 = v47 & ~v48;
          if ((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
          {
            v50 = ~v48;
            while (1)
            {
              v51 = *(v46 + 48) + 16 * v49;
              if (*(v51 + 8) >= 3u && *v51 == 0)
              {
                break;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v46 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            aBlock = v46;
            if (!swift_isUniquelyReferenced_nonNull_native())
            {
              sub_100E85E84();
              v46 = aBlock;
            }

            v57 = *(v46 + 48) + 16 * v49;
            v58 = *v57;
            v59 = *(v57 + 8);
            sub_100F65BD4(v49);
            sub_1007A98C8(v58, v59);
            v46 = aBlock;
          }

          else
          {
LABEL_43:
          }

          v60 = *(v30 + 48);

          sub_100F5DE4C(v46);
          *(v30 + 48) = v46;

          sub_100F5E170(v60);
        }
      }
    }
  }

LABEL_52:
  v61 = objc_opt_self();
  v62 = [v61 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v63 = qword_101AD86A0;
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100F78D40;
  v77 = v64;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_1018AA068;
  v65 = _Block_copy(&aBlock);

  v66 = [v62 addObserverForName:v63 object:0 queue:0 usingBlock:v65];
  _Block_release(v65);

  *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidBeginObserver] = v66;
  swift_unknownObjectRelease();
  v67 = [v61 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v68 = qword_101AD8698;
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = sub_100F78D78;
  v77 = v69;
  aBlock = _NSConcreteStackBlock;
  v73 = *"";
  v74 = sub_100059694;
  v75 = &unk_1018AA090;
  v70 = _Block_copy(&aBlock);

  v71 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v70];
  _Block_release(v70);

  *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_syncDidEndObserver] = v71;
  swift_unknownObjectRelease();
}

uint64_t sub_100070F30()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter;
  if (*(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController____lazy_storage___libraryProviderRefreshLimiter);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for CRLiOSFolderGridViewController.RefreshLimiter();
    v2 = swift_allocObject();
    *(v2 + 32) = 0;
    *(v2 + 40) = 1;
    *(v2 + 72) = 0;
    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    *(v2 + 80) = 0;
    *(v2 + 16) = 0xD00000000000001DLL;
    *(v2 + 24) = 0x80000001015B39B0;
    *(v2 + 48) = _swiftEmptySetSingleton;
    *(v2 + 56) = sub_100F772B8;
    *(v2 + 64) = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

NSString sub_100071020()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD86A0 = result;
  return result;
}

NSString sub_10007105C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD8698 = result;
  return result;
}

uint64_t sub_1000710F8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    v12 = [v11 collectionView];

    if (v12)
    {
      v13 = v12;
      [v13 bounds];
      v15 = v14;
      v17 = v16;

      if (v15 != a3 || v17 != a4)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  v20.receiver = v4;
  v20.super_class = ObjectType;
  return objc_msgSendSuper2(&v20, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
}

void sub_100071220()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v2 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardLibraryCommandController);
    if (v2)
    {
      v3 = v2;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = objc_opt_self();
      v4 = [v26 _atomicIncrementAssertCount];
      v27 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v27);
      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v5 = String._bridgeToObjectiveC()();

      v6 = [v5 lastPathComponent];

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v9 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v11 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v11;
      v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v12;
      *(inited + 72) = v25;
      *(inited + 136) = &type metadata for String;
      v13 = sub_1000053B0();
      *(inited + 112) = v24;
      *(inited + 120) = v8;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v13;
      *(inited + 152) = 56;
      v14 = v27;
      *(inited + 216) = v11;
      *(inited + 224) = v12;
      *(inited + 192) = v14;
      v15 = v25;
      v16 = v14;
      v17 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v18 = static os_log_type_t.error.getter();
      sub_100005404(v9, &_mh_execute_header, v18, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v19 = swift_allocObject();
      v19[2] = 8;
      v19[3] = 0;
      v19[4] = 0;
      v19[5] = 0;
      v20 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v21 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v22 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v23 = String._bridgeToObjectiveC()();

      [v26 handleFailureInFunction:v21 file:v22 lineNumber:56 isFatal:0 format:v23 args:v20];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000716D0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000717B4(const CGPath *a1)
{
  info = 0;
  CGPathApply(a1, &info, sub_1000718C0);
  return info;
}

uint64_t sub_100071834()
{
  type metadata accessor for ScrollView();

  return swift_getWitnessTable();
}

CGPath *sub_10007187C(const CGPath *a1, const CGAffineTransform *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, a2, a1);
  return Mutable;
}

uint64_t storeEnumTagSinglePayload for CRLRectData(uint64_t result, int a2, int a3)
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

uint64_t sub_100071910@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLEmptyFolderViewDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100071950@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100071E40(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLEmptyFolderView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100071EA8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for CRLEmptyFolderView);
  *a2 = sub_100072318;
  a2[1] = v7;
  return result;
}

uint64_t sub_100071A64()
{
  v1 = v0;
  v2 = *(type metadata accessor for CRLEmptyFolderView() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v1 + v4;
  v7 = sub_1005B981C(&qword_1019F3480);
  if (!(*(*(v7 - 8) + 48))(v1 + v4, 5, v7))
  {
    v22 = v1;
    v23 = v5;
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 8);
    v9(v6, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v6 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v9(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v6 + v13, v14);
    v15(v6 + v10[9], v14);
    v16 = v6 + v10[14];
    v17 = _s5BoardV13ShareMetadataVMa(0);
    v1 = v22;
    v5 = v23;
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v18 = *(v17 + 20);
      v19 = type metadata accessor for URL();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v16 + v18, 1, v19))
      {
        (*(v20 + 8))(v16 + v18, v19);
      }

      v5 = v23;
    }
  }

  sub_1008B531C();

  return _swift_deallocObject(v1, v4 + v5, v3 | 7);
}

uint64_t sub_100071E40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100071EA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

char *sub_100071F10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

__n128 sub_100072118@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A06730);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_1005B981C(&qword_101A06738);
  sub_10007246C(a1, &v6[*(v7 + 44)]);
  GeometryProxy.size.getter();
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v6, a2, &qword_101A06730);
  v8 = a2 + *(sub_1005B981C(&qword_101A06740) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

double sub_100072318@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CRLEmptyFolderView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_100072118(v4, a1).n128_u64[0];
  return result;
}

__n128 sub_10007246C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_101A06748);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = sub_1005B981C(&qword_101A06750);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v20 - v9;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = sub_1005B981C(&qword_101A06758);
  sub_100072758(a1, &v6[*(v11 + 44)]);
  GeometryProxy.size.getter();
  sub_100074ECC();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v6, v10, &qword_101A06748);
  v12 = &v10[*(v8 + 44)];
  v13 = v20[5];
  *(v12 + 4) = v20[4];
  *(v12 + 5) = v13;
  *(v12 + 6) = v20[6];
  v14 = v20[1];
  *v12 = v20[0];
  *(v12 + 1) = v14;
  v15 = v20[3];
  *(v12 + 2) = v20[2];
  *(v12 + 3) = v15;
  GeometryProxy.size.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003DFF8(v10, a2, &qword_101A06750);
  v16 = a2 + *(sub_1005B981C(&qword_101A06760) + 36);
  v17 = v20[12];
  *(v16 + 64) = v20[11];
  *(v16 + 80) = v17;
  *(v16 + 96) = v20[13];
  v18 = v20[8];
  *v16 = v20[7];
  *(v16 + 16) = v18;
  result = v20[10];
  *(v16 + 32) = v20[9];
  *(v16 + 48) = result;
  return result;
}

uint64_t sub_100072758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = sub_1005B981C(&qword_101A06768);
  v4 = __chkstk_darwin(v3 - 8);
  v128 = v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v124 = v117 - v6;
  v129 = sub_1005B981C(&qword_101A06770);
  v7 = __chkstk_darwin(v129);
  v126 = v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v123 = v117 - v9;
  v122 = sub_1005B981C(&qword_101A06778);
  v10 = __chkstk_darwin(v122);
  v125 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v131 = v117 - v12;
  v13 = sub_1005B981C(&qword_101A06780);
  v14 = __chkstk_darwin(v13 - 8);
  v132 = v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v117 - v16;
  v133 = a1;
  sub_1000733A0();
  v130 = Image.init(systemName:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = v144;
  v19 = v145;
  v20 = v147;
  v120 = v148;
  v121 = v146;
  v119 = v149;
  if (qword_1019F18C8 != -1)
  {
    swift_once();
  }

  v21 = qword_101A06638;
  KeyPath = swift_getKeyPath();
  LOBYTE(v150[0]) = v19;
  LOBYTE(v134) = v20;
  v23 = qword_1019F18D0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_101A06640;
  v25 = swift_getKeyPath();

  v26 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v143 = 0;
  *&v134 = v130;
  *(&v134 + 1) = v18;
  LOBYTE(v135) = v19;
  *(&v135 + 1) = v121;
  LOBYTE(v136) = v20;
  *(&v136 + 1) = v120;
  *&v137 = v119;
  *(&v137 + 1) = KeyPath;
  *&v138 = v21;
  *(&v138 + 1) = v25;
  *&v139 = v24;
  BYTE8(v139) = v26;
  *&v140 = v27;
  *(&v140 + 1) = v28;
  *&v141 = v29;
  *(&v141 + 1) = v30;
  v142 = 0;
  sub_1005B981C(&qword_101A06788);
  sub_1000739E4();
  View.accessibilityHidden(_:)();
  v150[6] = v140;
  v150[7] = v141;
  v151 = v142;
  v150[2] = v136;
  v150[3] = v137;
  v150[4] = v138;
  v150[5] = v139;
  v150[0] = v134;
  v150[1] = v135;
  sub_10000CAAC(v150, &qword_101A06788);
  *&v134 = sub_100073BAC();
  *(&v134 + 1) = v31;
  v121 = sub_100017CD8();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  if (qword_1019F18D8 != -1)
  {
    swift_once();
  }

  v37 = Text.font(_:)();
  v39 = v38;
  v41 = v40;
  sub_10007441C(v32, v34, v36 & 1);

  if (qword_1019F18E0 != -1)
  {
    swift_once();
  }

  v130 = v17;
  v42 = Text.fontWeight(_:)();
  v44 = v43;
  v46 = v45;
  sub_10007441C(v37, v39, v41 & 1);

  if (qword_1019F18E8 != -1)
  {
    swift_once();
  }

  v117[0] = Text.foregroundColor(_:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10007441C(v42, v44, v46 & 1);

  v53 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v50 & 1;
  LOBYTE(v134) = v50 & 1;
  v143 = 0;
  v63 = swift_getKeyPath();
  v64 = v131;
  v65 = (v131 + *(v129 + 36));
  v120 = sub_1005B981C(&qword_101A067D8);
  v66 = *(v120 + 28);
  v67 = enum case for Text.TruncationMode.middle(_:);
  v68 = type metadata accessor for Text.TruncationMode();
  v69 = *(v68 - 8);
  v118 = *(v69 + 104);
  v119 = v68;
  v117[1] = v69 + 104;
  v118(v65 + v66, v67);
  *v65 = swift_getKeyPath();
  *v64 = v117[0];
  *(v64 + 8) = v48;
  *(v64 + 16) = v62;
  *(v64 + 24) = v52;
  *(v64 + 32) = v53;
  *(v64 + 40) = v55;
  *(v64 + 48) = v57;
  *(v64 + 56) = v59;
  *(v64 + 64) = v61;
  *(v64 + 72) = 0;
  *(v64 + 80) = v63;
  *(v64 + 88) = 1;
  v70 = swift_getKeyPath();
  v71 = v64 + *(v122 + 36);
  *v71 = v70;
  *(v71 + 8) = 3;
  *(v71 + 16) = 0;
  *&v134 = sub_100074460();
  *(&v134 + 1) = v72;
  v73 = Text.init<A>(_:)();
  v75 = v74;
  v77 = v76;
  if (qword_1019F18F0 != -1)
  {
    swift_once();
  }

  v78 = Text.font(_:)();
  v80 = v79;
  v82 = v81;
  sub_10007441C(v73, v75, v77 & 1);

  if (qword_1019F18F8 != -1)
  {
    swift_once();
  }

  v83 = Text.fontWeight(_:)();
  v85 = v84;
  v87 = v86;
  sub_10007441C(v78, v80, v82 & 1);

  if (qword_1019F1900 != -1)
  {
    swift_once();
  }

  v88 = Text.foregroundColor(_:)();
  v90 = v89;
  v92 = v91;
  v94 = v93;
  sub_10007441C(v83, v85, v87 & 1);

  v95 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v92 & 1;
  LOBYTE(v134) = v92 & 1;
  v143 = 0;
  v105 = swift_getKeyPath();
  v106 = v123;
  v107 = &v123[*(v129 + 36)];
  (v118)(v107 + *(v120 + 28), enum case for Text.TruncationMode.tail(_:), v119);
  *v107 = swift_getKeyPath();
  *v106 = v88;
  *(v106 + 8) = v90;
  *(v106 + 16) = v104;
  *(v106 + 24) = v94;
  *(v106 + 32) = v95;
  *(v106 + 40) = v97;
  *(v106 + 48) = v99;
  *(v106 + 56) = v101;
  *(v106 + 64) = v103;
  *(v106 + 72) = 0;
  *(v106 + 80) = v105;
  *(v106 + 88) = 1;
  v108 = v124;
  sub_100074B2C(v124);
  v109 = v132;
  sub_10000BE14(v130, v132, &qword_101A06780);
  v110 = v131;
  v111 = v125;
  sub_10000BE14(v131, v125, &qword_101A06778);
  v112 = v126;
  sub_10000BE14(v106, v126, &qword_101A06770);
  v113 = v128;
  sub_10000BE14(v108, v128, &qword_101A06768);
  v114 = v127;
  sub_10000BE14(v109, v127, &qword_101A06780);
  v115 = sub_1005B981C(&qword_101A067E0);
  sub_10000BE14(v111, v114 + v115[12], &qword_101A06778);
  sub_10000BE14(v112, v114 + v115[16], &qword_101A06770);
  sub_10000BE14(v113, v114 + v115[20], &qword_101A06768);
  sub_10000CAAC(v108, &qword_101A06768);
  sub_10000CAAC(v106, &qword_101A06770);
  sub_10000CAAC(v110, &qword_101A06778);
  sub_10000CAAC(v130, &qword_101A06780);
  sub_10000CAAC(v113, &qword_101A06768);
  sub_10000CAAC(v112, &qword_101A06770);
  sub_10000CAAC(v111, &qword_101A06778);
  return sub_10000CAAC(v132, &qword_101A06780);
}

uint64_t sub_100073238@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000732C8@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_10007332C(void *a1, const char *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        return [a1 lineToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
      }
    }

    else
    {
      return [a1 moveToPoint:{**(a2 + 1), *(*(a2 + 1) + 8)}];
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return [a1 curveToPoint:*(*(a2 + 1) + 16) controlPoint:{*(*(a2 + 1) + 24), **(a2 + 1), *(*(a2 + 1) + 8)}];
      case 3:
        v3 = *(a2 + 1);
        return [a1 curveToPoint:v3[4] controlPoint1:v3[5] controlPoint2:{*v3, v3[1], v3[2], v3[3]}];
      case 4:
        return [a1 closePath];
    }
  }

  return a1;
}

uint64_t sub_1000733A0()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2 = __chkstk_darwin(v1 - 8);
  v19 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  type metadata accessor for CRLEmptyFolderView();
  v20 = v0;
  type metadata accessor for CRLEmptyFolderViewDataSource();
  v6 = sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v21;
  v7 = v22;

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    return 0x697966696E67616DLL;
  }

  v18[1] = v6;
  v11 = sub_1005B981C(&qword_1019F3480);
  v12 = *(v11 - 8);
  (*(v12 + 56))(v5, 4, 5, v11);
  v13 = v20;
  v14 = sub_100068604(v20, v5);
  sub_10005105C(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v14)
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v21 != 1)
    {
      return 0xD00000000000001BLL;
    }
  }

  v15 = v19;
  sub_100071E40(v13, v19, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v16 = (*(v12 + 48))(v15, 5, v11);
  if (v16 <= 2)
  {
    if (!v16)
    {
      sub_10005105C(v15, type metadata accessor for CRLBoardLibraryViewModel.Folder);
      return 0x7265646C6F66;
    }

    if (v16 == 1)
    {
      return 0xD000000000000020;
    }

    v17 = 0x2E6B636F6C63;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v16 == 3)
  {
    v17 = 0x2E7472616568;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6966000000000000;
  }

  if (v16 == 4)
  {
    return 0x322E6E6F73726570;
  }

  else
  {
    return 0x69662E6873617274;
  }
}

uint64_t sub_100073788()
{
  v0 = sub_1005B981C(qword_101A067F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  static Font.Weight.bold.getter();
  v3 = enum case for Font.Design.rounded(_:);
  v4 = type metadata accessor for Font.Design();
  v5 = *(v4 - 8);
  (*(v5 + 104))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = static Font.system(size:weight:design:)();
  result = sub_10000CAAC(v2, qword_101A067F0);
  qword_101A06638 = v6;
  return result;
}

uint64_t sub_1000738D0(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = Color.init(_:)();
  *a3 = result;
  return result;
}

unint64_t sub_10007392C()
{
  result = qword_101A06798;
  if (!qword_101A06798)
  {
    sub_1005C4E5C(&qword_101A067A0);
    sub_100073A70();
    sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06798);
  }

  return result;
}

unint64_t sub_1000739E4()
{
  result = qword_101A06790;
  if (!qword_101A06790)
  {
    sub_1005C4E5C(&qword_101A06788);
    sub_10007392C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A06790);
  }

  return result;
}

unint64_t sub_100073A70()
{
  result = qword_101A067A8;
  if (!qword_101A067A8)
  {
    sub_1005C4E5C(&qword_101A067B0);
    sub_100073B28();
    sub_10001A2F8(&qword_101A067C8, &qword_101A067D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A067A8);
  }

  return result;
}

unint64_t sub_100073B28()
{
  result = qword_101A067B8;
  if (!qword_101A067B8)
  {
    sub_1005C4E5C(&qword_101A067C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A067B8);
  }

  return result;
}

uint64_t sub_100073BAC()
{
  v34 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v34);
  v33 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLEmptyFolderView();
  v35 = v0;
  type metadata accessor for CRLEmptyFolderViewDataSource();
  sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = v36;
  v5 = v37;

  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v11 = v33;
    v10 = v34;
    sub_100071E40(v35, v4, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v12 = sub_1005B981C(&qword_1019F3480);
    v13 = (*(*(v12 - 8) + 48))(v4, 5, v12);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        goto LABEL_17;
      }

      if (v13 != 4)
      {
        return 0;
      }

      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v36 != 1)
      {
LABEL_17:
        v28 = [objc_opt_self() mainBundle];
        v29 = String._bridgeToObjectiveC()();
        v30 = String._bridgeToObjectiveC()();
        v31 = [v28 localizedStringForKey:v29 value:v30 table:0];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        return v22;
      }

      v24 = [objc_opt_self() mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];
    }

    else
    {
      if (!v13)
      {
        sub_100071EA8(v4, v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v22 = *(v11 + *(v10 + 24));

        sub_10005105C(v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        return v22;
      }

      v14 = [objc_opt_self() mainBundle];
      v15 = String._bridgeToObjectiveC()();
      v16 = String._bridgeToObjectiveC()();
      v27 = [v14 localizedStringForKey:v15 value:v16 table:0];
    }

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v22;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = [objc_opt_self() mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v8 localizedStringForKey:v9 value:v17 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1005B981C(&qword_1019F54E0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10146C6B0;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v20 = v36;
  v21 = v37;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_1000053B0();
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v22 = String.init(format:_:)();

  return v22;
}

uint64_t sub_1000743EC()
{
  result = static Font.title2.getter();
  qword_101A06648 = result;
  return result;
}

uint64_t sub_10007441C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10007442C()
{
  result = static Font.Weight.bold.getter();
  qword_101A06650 = v1;
  return result;
}

uint64_t sub_100074460()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRLEmptyFolderView();
  type metadata accessor for CRLEmptyFolderViewDataSource();
  sub_10006BD28();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v25;
  v4 = v26;

  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    sub_100071E40(v0, v3, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v11 = sub_1005B981C(&qword_1019F3480);
    v12 = (*(*(v11 - 8) + 48))(v3, 5, v11);
    if (v12 <= 1)
    {
      if (!v12)
      {
        sub_10005105C(v3, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        return 0;
      }
    }

    else
    {
      if ((v12 - 2) < 2 || v12 != 4)
      {
        return 0;
      }

      StateObject.wrappedValue.getter();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v25 != 1)
      {
        v27 = &type metadata for CRLAppleAccountFeatureFlags;
        v28 = sub_1008B57B8();
        isFeatureEnabled(_:)();
        sub_100005070(&v25);
        v18 = [objc_opt_self() mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];
        goto LABEL_19;
      }
    }

    v18 = [objc_opt_self() mainBundle];
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [v18 localizedStringForKey:v19 value:v20 table:0];
LABEL_19:
    v22 = v21;

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v17;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v25 == 1)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1005B981C(&qword_1019F54E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C6B0;
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v15 = v25;
  v16 = v26;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000053B0();
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = String.init(format:_:)();

  return v17;
}

uint64_t sub_100074AD8()
{
  result = static Font.footnote.getter();
  qword_101A06660 = result;
  return result;
}

uint64_t sub_100074AF8()
{
  result = static Font.Weight.regular.getter();
  qword_101A06668 = v1;
  return result;
}

uint64_t sub_100074B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100071E40(v1, v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v6 = sub_1005B981C(&qword_1019F3480);
  if ((*(*(v6 - 8) + 48))(v5, 5, v6) == 4)
  {
    type metadata accessor for CRLEmptyFolderView();
    type metadata accessor for CRLEmptyFolderViewDataSource();
    sub_10006BD28();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (LOBYTE(v16[0]) == 1)
    {
      goto LABEL_6;
    }

    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v8 = v16[0];
    v7 = v16[1];

    v9 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
LABEL_6:
      v10 = sub_1005B981C(&qword_1019FEA78);
      return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
    }

    else
    {
      if (qword_1019F1908 != -1)
      {
        swift_once();
      }

      v13 = sub_1005B981C(&qword_1019FEA78);
      v14 = sub_1005EB3DC(v13, qword_101A06678);
      v15 = *(v13 - 8);
      (*(v15 + 16))(a1, v14, v13);
      return (*(v15 + 56))(a1, 0, 1, v13);
    }
  }

  else
  {
    v12 = sub_1005B981C(&qword_1019FEA78);
    (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
    return sub_10005105C(v5, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  }
}

uint64_t sub_100074ECC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_10000CAAC(v9, &unk_1019F4D00);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v3 = 0;
    return v3 & 1;
  }

  if (v5 == 0x737961776C41 && v6 == 0xE600000000000000)
  {

    v3 = 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v3 & 1;
}

uint64_t sub_100075034(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

uint64_t sub_1000752FC()
{
  static Axis.Set.vertical.getter();
  ScrollView.init(_:showsIndicators:content:)();
  Axis.Set.init(rawValue:)();
  type metadata accessor for ScrollView();
  return ScrollView._alwaysBounceAxes.setter();
}

uint64_t sub_100075394(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100075470(v4);
  sub_100075470(v6);
  return (*(v3 + 8))(v6, a2);
}

void sub_100075478(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = _s13ItemViewModelVMa();
  v24 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = _swiftEmptyArrayStorage;
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_1009AD564(a3 + v14 + v15 * v12, v11, _s13ItemViewModelVMa);
      v16 = a1(v11);
      if (v3)
      {
        sub_1009AD6B8(v11, _s13ItemViewModelVMa);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_1009ACC04(v11, v23, _s13ItemViewModelVMa);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776C44(0, v13[2] + 1, 1);
          v13 = v25;
        }

        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_100776C44(v18 > 1, v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_1009ACC04(v23, v13 + v14 + v19 * v15, _s13ItemViewModelVMa);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_1009AD6B8(v11, _s13ItemViewModelVMa);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1000757A8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *(a2 + 56) = &off_101883FA8;
  swift_unknownObjectWeakAssign();
  v7 = *(a1 + OBJC_IVAR____TtC8Freeform36CRLCollectionViewCompositionalLayout_footerViewHeight);
  *(a2 + 24) = v7;
  *(a2 + 16) = v7 > 0.0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v10.receiver = a3;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "prepareLayout");
  sub_10007722C();
  *(a2 + 32) = v8;
  *(a2 + 40) = v9;
}

id sub_100075840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

id sub_1000758BC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1005B981C(&unk_101A23860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v125 - v11;
  v138 = sub_100076898(a2);
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
  v137 = v9;
  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_93;
  }

  v14 = *(v13 + 16);
  if (v14 <= a1)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v139 = v12;
  v135 = v10;
  v136 = a4;
  v126 = a2;
  v15 = v13 + 32 + 56 * a1;
  v16 = *v15;
  v17 = *(v15 + 16);
  v18 = *(v15 + 32);
  v149 = *(v15 + 48);
  v147 = v17;
  v148 = v18;
  v146 = v16;
  if (a1 + 1 >= v14)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v9 = 0;
    v25 = -2;
  }

  else
  {
    v19 = v13 + 32 + 56 * (a1 + 1);
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    v9 = *(v19 + 40);
    v25 = *(v19 + 48);
    sub_100076F8C(*v19, v21, v22, v23, v24, v9, v25);
  }

  v133 = v21;
  v134 = v20;
  v144[0] = v20;
  v144[1] = v21;
  v131 = v24;
  v132 = v22;
  v144[2] = v22;
  v144[3] = v23;
  v144[4] = v24;
  v144[5] = v9;
  v130 = v9;
  v145 = v25;
  sub_1000693DC(&v146, &v140);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  a1 = v23;
  LOBYTE(v9) = v25;
  if (Strong)
  {
    result = [Strong view];
    if (!result)
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v28 = result;
    [result directionalLayoutMargins];
    leading = v29;
    trailing = v30;
    swift_unknownObjectRelease();
  }

  else
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
  }

  swift_beginAccess();
  v31 = swift_unknownObjectWeakLoadStrong();
  if (!v31)
  {
    goto LABEL_22;
  }

  result = [v31 view];
  if (!result)
  {
    goto LABEL_96;
  }

  v32 = result;
  v33 = [result insetsLayoutMarginsFromSafeArea];
  swift_unknownObjectRelease();

  if (!v33)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
    goto LABEL_22;
  }

  result = [v34 view];
  if (!result)
  {
LABEL_97:
    __break(1u);
    return result;
  }

  v35 = result;
  [result safeAreaInsets];
  v37 = v36;
  v39 = v38;
  swift_unknownObjectRelease();

  if (sub_100076BAC())
  {
    v40 = v37;
  }

  else
  {
    v40 = v39;
  }

  leading = leading - v40;
  if (sub_100076BAC())
  {
    v41 = v39;
  }

  else
  {
    v41 = v37;
  }

  trailing = trailing - v41;
LABEL_22:
  if (v149 >= 0xC0u)
  {
    v42 = vorrq_s8(v147, v148);
    v43 = *&vorr_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL)) | *(&v146 + 1);
    if (v149 != 192 || v43 | v146)
    {
      if (v149 == 192 && v146 == 1 && !v43)
      {
        v44 = 0;
        v46 = 0;
        v45 = 1;
        LOBYTE(a2) = 1;
        goto LABEL_39;
      }

      v45 = 0;
      if (v149 == 192 && v146 == 2 && !v43)
      {
        v44 = 1;
        LOBYTE(a2) = 0;
        v46 = 0;
        goto LABEL_39;
      }

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    goto LABEL_38;
  }

  v44 = 0;
  if (v149 > 0x3Fu || (v45 = 0, LOBYTE(a2) = 0, v46 = 0, *(&v146 + 1)))
  {
LABEL_38:
    LOBYTE(a2) = 0;
    v46 = v44;
    v45 = 1;
    v44 = 0;
  }

LABEL_39:
  v129 = v44;
  v140 = v146;
  v141 = v147;
  v142 = v148;
  v143 = v149;
  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  LODWORD(v136) = v46;
  v128 = v45;
  if (v47)
  {
    if (qword_1019F2128 == -1)
    {
LABEL_41:
      v48 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v50 = sub_100068F28();
      v52 = v51;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v50;
      *(inited + 40) = v52;
      v53 = static os_log_type_t.error.getter();
      sub_100005404(v48, &_mh_execute_header, v53, "snapshot contains section identifier (%@) that is unknown to data source", 72, 2, inited);
      sub_1000698D0(&v146);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v54 = 0;
      v46 = v136;
      goto LABEL_43;
    }

LABEL_94:
    swift_once();
    goto LABEL_41;
  }

  v140 = v146;
  v141 = v147;
  v142 = v148;
  v143 = v149;
  v55 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
  sub_1000698D0(&v146);
  v56 = *(v55 + 16);

  v54 = v56 != 0;
LABEL_43:
  v57 = sub_100076FFC(v144);
  sub_1000771A8(v134, v133, v132, a1, v131, v130, v9);
  v127 = v57;
  if (v46)
  {
    v58 = a2;
    if (qword_1019F1368 != -1)
    {
      swift_once();
    }

    v59 = &qword_1019F7710;
  }

  else
  {
    v58 = a2;
    if (qword_1019F1360 != -1)
    {
      swift_once();
    }

    v59 = &qword_1019F7708;
  }

  v60 = *v59;
  *&v140 = _swiftEmptyArrayStorage;
  v61 = v60;
  v62 = v138;
  v63 = [v138 isAbsolute];
  v64 = objc_opt_self();
  v65 = [v64 sizeWithWidthDimension:v62 heightDimension:v61];
  v66 = [objc_opt_self() itemWithLayoutSize:v65];

  if (v63)
  {
    v67 = objc_opt_self();
    v68 = objc_opt_self();
    v69 = [v68 fractionalWidthDimension:1.0];
    v70 = [v64 sizeWithWidthDimension:v69 heightDimension:v61];

    sub_1005B981C(&unk_1019F4D60);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_101465920;
    *(v71 + 32) = v66;
    sub_100006370(0, &qword_1019F77C8);
    v72 = v66;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v74 = [v67 horizontalGroupWithLayoutSize:v70 subitems:isa];

    v75 = [objc_opt_self() flexibleSpacing:16.0];
    [v74 setInterItemSpacing:v75];

    v76 = [objc_opt_self() sectionWithGroup:v74];
    v77 = v136;
    if (v136)
    {
      v78 = 18.0;
    }

    else
    {
      v78 = 32.0;
    }

    v79 = v76;
    [v79 setInterGroupSpacing:v78];
    v80 = v58 | v77;
    v81 = v128;
    if ((v80 & 1) == 0 && qword_1019F1390 != -1)
    {
      swift_once();
    }

    if (qword_1019F1388 != -1)
    {
      swift_once();
    }

    [v79 setContentInsets:{*&qword_1019F7730, leading}];
    v82 = [v68 fractionalWidthDimension:1.0];
    v83 = v139;
  }

  else
  {
    [v66 setContentInsets:{0.0, 8.0, 0.0, 8.0}];
    v84 = objc_opt_self();
    v85 = objc_opt_self();
    v86 = [v85 fractionalWidthDimension:1.0];
    v87 = [v64 sizeWithWidthDimension:v86 heightDimension:v61];

    sub_1005B981C(&unk_1019F4D60);
    v88 = swift_allocObject();
    *(v88 + 16) = xmmword_101465920;
    *(v88 + 32) = v66;
    sub_100006370(0, &qword_1019F77C8);
    v89 = v66;
    v90 = Array._bridgeToObjectiveC()().super.isa;

    v74 = [v84 horizontalGroupWithLayoutSize:v87 subitems:v90];

    v91 = [objc_opt_self() sectionWithGroup:v74];
    v92 = v136;
    v93 = 18.0;
    if (v136)
    {
      v94 = 18.0;
    }

    else
    {
      v94 = 32.0;
    }

    v79 = v91;
    [v79 setInterGroupSpacing:v94];
    if (qword_1019F1388 != -1)
    {
      swift_once();
    }

    v95 = leading + -8.0;
    v96 = trailing + -8.0;
    v97 = *&qword_1019F7730;
    v98 = v126;
    if ((v92 & 1) == 0)
    {
      if (qword_1019F1390 != -1)
      {
        v124 = qword_1019F7730;
        swift_once();
        v97 = *&v124;
      }

      v93 = *&qword_1019F7738;
    }

    [v79 setContentInsets:{v97, v95, v93, v96}];
    [objc_msgSend(v98 "container")];
    v100 = v99;
    swift_unknownObjectRelease();
    v101 = 1.0;
    if (v100 != 0.0)
    {
      v101 = (v100 - (v96 + v95)) / v100;
    }

    v82 = [v85 fractionalWidthDimension:v101];
    v83 = v139;
    v81 = v128;
  }

  v102 = v54 && v127;
  v103 = v82;

  if (v81)
  {
    if (qword_1019F1370 != -1)
    {
      swift_once();
    }

    v104 = qword_1019F7718;
    v105 = objc_opt_self();
    v106 = v104;
    v107 = [v105 sizeWithWidthDimension:v103 heightDimension:v106];
    v108 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v107 elementKind:UICollectionElementKindSectionHeader alignment:1];

    v109 = v108;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    if (!v102)
    {
      goto LABEL_85;
    }

    goto LABEL_80;
  }

  if (v102)
  {
LABEL_80:
    v110 = qword_1019F1378;
    v111 = v103;
    if (v110 != -1)
    {
      swift_once();
    }

    v112 = [objc_opt_self() sizeWithWidthDimension:v111 heightDimension:qword_1019F7720];

    v113 = String._bridgeToObjectiveC()();
    v114 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v112 elementKind:v113 alignment:5];

    [v114 setPinToVisibleBounds:0];
    v115 = v114;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

LABEL_85:
  v116 = v135;
  if (v129)
  {
    v117 = qword_1019F1398;
    v118 = v103;
    if (v117 != -1)
    {
      swift_once();
    }

    v119 = [objc_opt_self() sizeWithWidthDimension:v118 heightDimension:qword_1019F7740];

    v120 = String._bridgeToObjectiveC()();
    v121 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v119 elementKind:v120 alignment:5];

    v122 = v121;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006370(0, &qword_1019F6768);
  v123 = Array._bridgeToObjectiveC()().super.isa;

  [v79 setBoundarySupplementaryItems:v123];

  (*(v116 + 8))(v83, v137);
  return v79;
}

id sub_100076898(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [a1 container];
  [v3 effectiveContentSize];
  v5 = v4;
  if (qword_1019F13B0 != -1)
  {
    swift_once();
  }

  v6 = *&qword_101AD5FB0;
  v7 = qword_101AD5FC0;
  if (sub_100076BAC())
  {
    v8 = v6;
  }

  else
  {
    v8 = *&v7;
  }

  if (sub_100076BAC())
  {
    v9 = *&v7;
  }

  else
  {
    v9 = v6;
  }

  if (sub_100076BAC())
  {
    v10 = v6;
  }

  else
  {
    v10 = *&v7;
  }

  if (sub_100076BAC())
  {
    v11 = *&v7;
  }

  else
  {
    v11 = v6;
  }

  if (v8 + 169.0 + v9 + 16.0 + v10 + 169.0 + v11 > v5)
  {
    v12 = objc_opt_self();
    v13 = "fractionalWidthDimension:";
    goto LABEL_17;
  }

  if (([v2 crl_isCompactWidth] & 1) == 0 && !objc_msgSend(v2, "crl_isCompactHeight"))
  {
    if (sub_100076BAC())
    {
      v21 = v6;
    }

    else
    {
      v21 = *&v7;
    }

    if (sub_100076BAC())
    {
      v6 = *&v7;
    }

    v12 = objc_opt_self();
    v14 = v21 + 169.0 + v6;
    v13 = "absoluteDimension:";
    goto LABEL_30;
  }

  [v3 effectiveContentSize];
  v16 = v15;
  [v3 effectiveContentSize];
  if (v17 >= v16)
  {
    [v3 effectiveContentSize];
    v20 = v19;
    v12 = objc_opt_self();
    v13 = "fractionalWidthDimension:";
    if (v20 > 590.0)
    {
      v14 = 0.333333333;
      goto LABEL_30;
    }

LABEL_17:
    v14 = 0.5;
LABEL_30:
    v18 = [v12 v13];
    goto LABEL_31;
  }

  v18 = [objc_opt_self() fractionalWidthDimension:0.25];
LABEL_31:
  v22 = v18;
  swift_unknownObjectRelease();

  return v22;
}

void sub_100076AF0()
{
  qword_101AD5FA8 = sub_100076B60(8.0);
  qword_101AD5FB0 = v0;
  qword_101AD5FB8 = v1;
  qword_101AD5FC0 = v2;
}

BOOL sub_100076BAC()
{
  if (qword_101A351F0 != -1)
  {
    sub_100076BEC();
  }

  return (byte_101A351E8 & 1) == 0;
}

BOOL sub_100076C00()
{
  v0 = +[UIApplication sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection] == 1;

  return v1;
}

uint64_t sub_100076F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6)
  {
    if (a7 >> 6 != 2)
    {
      return result;
    }
  }
}

BOOL sub_100076FFC(uint64_t a1)
{
  if (*(a1 + 48) > 0xFDu)
  {
    return 0;
  }

  dispatch thunk of UICollectionViewDiffableDataSource.index(for:)();
  if (v2)
  {
    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.crlFolderUI;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = sub_100068F28();
    v7 = v6;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v5;
    *(inited + 40) = v7;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v3, &_mh_execute_header, v8, "snapshot contains section identifier (%@) that is unknown to data source", 72, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return 0;
  }

  else
  {
    sub_1005B981C(&unk_101A23860);
    v9 = *(NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)() + 16);

    return v9 != 0;
  }
}

uint64_t sub_1000771A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 0xFDu)
  {
    return sub_1000771BC(a1, a2, a3, a4, a5, a6, a7);
  }

  return a1;
}

uint64_t sub_1000771BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 >> 6)
  {
    if (a7 >> 6 != 2)
    {
      return result;
    }
  }
}

void sub_10007722C()
{
  if (*(v0 + 16) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong collectionView];
      if (v3)
      {
        v4 = v3;
        v5 = type metadata accessor for CRLCollectionViewCompositionalLayout();
        v30.receiver = v2;
        v30.super_class = v5;
        objc_msgSendSuper2(&v30, "collectionViewContentSize");
        v6 = v4;
        v7 = [v6 superview];
        [v6 bounds];
        v9 = v8;

        v29.receiver = v2;
        v29.super_class = v5;
        objc_msgSendSuper2(&v29, "collectionViewContentSize");
        v11 = v10;
        v12 = [v6 numberOfSections];
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_23:
          __break(1u);
        }

        else
        {
          v13 = v12;
          v14 = 0;
          do
          {
            v15 = v14;
            if (v13 == v14)
            {
              break;
            }

            if (__OFADD__(v14, 1))
            {
              __break(1u);
              goto LABEL_23;
            }

            v16 = [v6 numberOfItemsInSection:v14];
            v14 = v15 + 1;
          }

          while (v16 < 1);
          if (v7)
          {
            [v7 bounds];
            if (v13 == v15)
            {
              v18 = v17;
            }

            else
            {
              v18 = v11;
            }

            if (v17 < v9)
            {
              v11 = v18;
            }

            else
            {
              v11 = v17;
            }
          }

          v28.receiver = v2;
          v28.super_class = v5;
          objc_msgSendSuper2(&v28, "collectionViewContentSize");
          v20 = v19;
          [v6 _effectiveContentInset];
          v22 = v21;
          [v6 safeAreaInsets];
          v24 = v11 - (v22 + v23);
          v31.origin.x = sub_100077470();
          MinY = CGRectGetMinY(v31);
          v32.origin.x = 0.0;
          v32.origin.y = 0.0;
          v32.size.width = v20;
          v26 = v24;
          v32.size.height = v24;
          if (MinY >= CGRectGetMaxY(v32) || (v33.origin.x = sub_100077470(), MaxY = CGRectGetMaxY(v33), v34.origin.x = 0.0, v34.origin.y = 0.0, v34.size.width = v20, v34.size.height = v26, CGRectGetMaxY(v34) >= MaxY))
          {
          }

          else
          {
            v35.origin.x = sub_100077470();
            CGRectGetHeight(v35);
          }
        }
      }

      else
      {
      }
    }
  }
}

double sub_100077470()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v4.receiver = Strong;
    v4.super_class = type metadata accessor for CRLCollectionViewCompositionalLayout();
    objc_msgSendSuper2(&v4, "collectionViewContentSize");
  }

  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
  }

  return 0.0;
}

void *sub_10007752C()
{
  ObjectType = swift_getObjectType();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3.receiver = result;
    v3.super_class = ObjectType;
    v2 = result;

    objc_msgSendSuper2(&v3, "collectionViewContentSize");
  }

  return result;
}

unint64_t sub_10007775C()
{
  result = qword_1019FCA68;
  if (!qword_1019FCA68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019FCA68);
  }

  return result;
}

unint64_t sub_1000777A8(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    if (*(v2 + 16) == 1)
    {
      v37 = _swiftEmptyArrayStorage;
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      if (a1 >> 62)
      {
        goto LABEL_48;
      }

      for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        v34 = v3;
        if (i)
        {
          break;
        }

        v3 = _swiftEmptyArrayStorage;
        if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

LABEL_27:
        if ((v3 & 0x4000000000000000) != 0)
        {
LABEL_49:
          v20 = _CocoaArrayWrapper.endIndex.getter();
          if (!v20)
          {
LABEL_50:

            return v34;
          }
        }

        else
        {
          v20 = *(v3 + 16);
          if (!v20)
          {
            goto LABEL_50;
          }
        }

        v21 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *(v3 + 16))
            {
              goto LABEL_47;
            }

            v30 = *(v3 + 8 * v21 + 32);
          }

          v4 = v30;
          v31 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v22 = Strong;
            v23 = type metadata accessor for CRLCollectionViewCompositionalLayout();
            v36.receiver = v22;
            v36.super_class = v23;
            objc_msgSendSuper2(&v36, "collectionViewContentSize");
            v25 = v24;
            v27 = v26;

            if (*(v2 + 32) > v25)
            {
              v28 = *(v2 + 32);
            }

            else
            {
              v28 = v25;
            }

            if (*(v2 + 40) > v27)
            {
              v29 = *(v2 + 40);
            }

            else
            {
              v29 = v27;
            }
          }

          else
          {
            v28 = 0.0;
            v29 = 0.0;
          }

          [v4 setFrame:{0.0, v29 - *(v2 + 24), v28}];

          ++v21;
          if (v31 == v20)
          {
            goto LABEL_50;
          }
        }

LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        ;
      }

      v6 = 0;
      v35 = v3 & 0xC000000000000001;
      v7 = 0x800000010155BCA0;
      while (1)
      {
        if (v35)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= v4[2])
          {
            goto LABEL_45;
          }

          v8 = *(v3 + 8 * v6 + 32);
        }

        v9 = v8;
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        v11 = [v8 representedElementKind];
        if (v11)
        {
          v12 = v11;
          v13 = v7;
          v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v16 = v15;

          v17 = v14;
          v7 = v13;
          if (v17 == 0xD00000000000001DLL && v13 == v16)
          {

LABEL_21:
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            v3 = v34;
            goto LABEL_8;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_21;
          }

          v3 = v34;
        }

        else
        {
        }

LABEL_8:
        ++v6;
        if (v10 == i)
        {
          v3 = v37;
          if ((v37 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_49;
        }
      }
    }
  }

  return v3;
}

unint64_t sub_100077AAC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&unk_101A23860);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v11 = Strong;
  v12 = sub_10005AFE0();
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  (*(v7 + 8))(v9, v6);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v13 + 16))
  {
    v15 = v13 + 56 * result;
    v16 = *(v15 + 32);
    v17 = *(v15 + 48);
    v18 = *(v15 + 64);
    v54 = *(v15 + 80);
    v53[1] = v17;
    v53[2] = v18;
    v53[0] = v16;
    v19 = *(v15 + 32);
    v51 = *(v15 + 48);
    v49 = v19;
    v20 = *(v15 + 64);
    v21 = *(v15 + 72);
    v50 = *(v15 + 80);
    sub_1000693DC(v53, v52);

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v22 == a3)
    {

      goto LABEL_8;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v23)
    {
LABEL_8:
      v24 = String._bridgeToObjectiveC()();
      v52[0] = _s13SectionHeaderCMa();
      sub_1005B981C(&qword_101A23CA8);
      String.init<A>(describing:)();
      v25 = String._bridgeToObjectiveC()();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v27 = [a1 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v25 forIndexPath:isa];

      v28 = swift_dynamicCastClass();
      v29 = v28;
      if (v28)
      {
        *(v28 + OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_delegate + 8) = &off_1018A9068;
        swift_unknownObjectWeakAssign();
        v30 = &v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
        v31 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier];
        v32 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 8];
        v33 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 16];
        v34 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 24];
        v35 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 32];
        v36 = *&v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_sectionIdentifier + 40];
        v37 = v51;
        *v30 = v49;
        *(v30 + 1) = v37;
        *(v30 + 4) = v20;
        *(v30 + 5) = v21;
        v38 = v30[48];
        v30[48] = v50;
        sub_1000693DC(v53, v52);
        sub_1000771A8(v31, v32, v33, v34, v35, v36, v38);
        sub_1005EB544();
        v39 = OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_collapsedSections;
        swift_beginAccess();
        v40 = *&v11[v39];

        LOBYTE(v32) = sub_100069438(v53, v40);

        sub_1000698D0(v53);
        v41 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle;
        v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_shouldAnimateNextCollapseStateToggle] = 0;
        v29[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController13SectionHeader_isCollapsed] = v32 & 1;
        sub_1005EB6D8();

        v29[v41] = 0;
      }

      else
      {

        sub_1000698D0(v53);
      }

      return v29;
    }

    sub_1000698D0(v53);
    if (a2 == 0xD00000000000001BLL && 0x800000010155BCC0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v42 = String._bridgeToObjectiveC()();
      v52[0] = _s13GridSeparatorCMa();
      sub_1005B981C(&qword_101A23CB0);
      String.init<A>(describing:)();
      v43 = String._bridgeToObjectiveC()();

      v44 = IndexPath._bridgeToObjectiveC()().super.isa;
      v29 = [a1 dequeueReusableSupplementaryViewOfKind:v42 withReuseIdentifier:v43 forIndexPath:v44];

      return v29;
    }

    if (a2 == 0xD00000000000001DLL && 0x800000010155BCA0 == a3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v45 = String._bridgeToObjectiveC()();
      v52[0] = _s18iCloudStatusFooterCMa();
      sub_1005B981C(&qword_101A23CB8);
      String.init<A>(describing:)();
      v46 = String._bridgeToObjectiveC()();

      v47 = IndexPath._bridgeToObjectiveC()().super.isa;
      v48 = [a1 dequeueReusableSupplementaryViewOfKind:v45 withReuseIdentifier:v46 forIndexPath:v47];

      v29 = swift_dynamicCastClass();
      if (!v29)
      {
      }

      return v29;
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_100078050(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidEndObserver] = 0;
  *&v4[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidBeginObserver] = 0;
  v57.receiver = v4;
  v57.super_class = _s18iCloudStatusFooterCMa();
  v10 = objc_msgSendSuper2(&v57, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel;
  v12 = *&v10[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_iCloudStatusLabel];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v11] setNumberOfLines:1];
  [*&v10[v11] setTextAlignment:1];
  v14 = *&v10[v11];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v16 setText:v20];

  v21 = *&v10[v11];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  [v23 setFont:v24];

  [*&v10[v11] setAdjustsFontForContentSizeCategory:1];
  v25 = *&v10[v11];
  v26 = v13;
  [v26 addSubview:v25];
  v27 = objc_opt_self();
  sub_1005B981C(&unk_1019F4D60);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146CE00;
  v29 = [v26 centerXAnchor];
  v30 = [*&v10[v11] centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 32) = v31;
  v32 = [v26 bottomAnchor];

  v33 = [*&v10[v11] lastBaselineAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:24.0];

  *(v28 + 40) = v34;
  sub_100078784();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v36 = objc_opt_self();
  v37 = [v36 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v38 = qword_101AD86A0;
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = sub_1005ED080;
  v56 = v39;
  v51 = _NSConcreteStackBlock;
  v52 = *"";
  v53 = sub_100059694;
  v54 = &unk_10187C5A0;
  v40 = _Block_copy(&v51);
  v41 = v26;

  v42 = [v37 addObserverForName:v38 object:0 queue:0 usingBlock:v40];
  _Block_release(v40);

  *&v41[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidBeginObserver] = v42;
  swift_unknownObjectRelease();
  v43 = [v36 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v44 = qword_101AD8698;
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v55 = sub_1005ED0B8;
  v56 = v45;
  v51 = _NSConcreteStackBlock;
  v52 = *"";
  v53 = sub_100059694;
  v54 = &unk_10187C5C8;
  v46 = _Block_copy(&v51);

  v47 = [v43 addObserverForName:v44 object:0 queue:0 usingBlock:v46];
  _Block_release(v46);

  *&v41[OBJC_IVAR____TtCC8Freeform30CRLiOSFolderGridViewController18iCloudStatusFooter_syncDidEndObserver] = v47;
  swift_unknownObjectRelease();
  v48 = [objc_opt_self() sharedApplication];
  v49 = [v48 delegate];

  if (v49)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();
    v50 = sub_10006D030();
    swift_unknownObjectRelease();
    [*&v10[v11] setHidden:(v50 & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100078728()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100078784()
{
  result = qword_1019F4D70;
  if (!qword_1019F4D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F4D70);
  }

  return result;
}

uint64_t sub_1000787D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v4 + 80);
    v6 = *(*(v4 + 72) + 16);
    os_unfair_lock_lock(v6);
    os_unfair_lock_unlock(v6);
    swift_endAccess();
    swift_beginAccess();
    v7 = *(*(v4 + 72) + 16);

    os_unfair_lock_lock(v7);
    *(v4 + 80) = a2;
    os_unfair_lock_unlock(v7);
    swift_endAccess();

    sub_1000788C4(v5);
  }

  return result;
}

void sub_1000788C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v20 = *(v8 - 8);
  v21 = v8;
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v2 + 80);
  v12 = *(*(v2 + 72) + 16);

  os_unfair_lock_lock(v12);
  os_unfair_lock_unlock(v12);

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v13 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v11;
  v15 = static os_log_type_t.default.getter();
  sub_100005404(v13, &_mh_execute_header, v15, "Cached device to device encryption availability: %d", 51, 2, inited);
  swift_setDeallocating();
  sub_100005070(inited + 32);
  if (v11 != a1)
  {
    sub_100006370(0, &qword_1019F2D90);
    v19 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    *(v16 + 24) = v11;
    aBlock[4] = sub_100C5DFD0;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100007638;
    aBlock[3] = &unk_10189C970;
    v17 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100006448(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
    sub_1005B981C(&unk_1019FF400);
    sub_1000067A8(&qword_1019F4D20, &unk_1019FF400);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v18 = v19;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v5 + 8))(v7, v4);
    (*(v20 + 8))(v10, v21);
    sub_100684000(v11);
  }
}

uint64_t sub_100078CB0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100078D10(uint64_t a1, char a2)
{
  v4 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F48 != -1)
  {
    swift_once();
  }

  v5 = qword_101AD7950;
  sub_1005B981C(&qword_1019FB8A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for CRLiCloudConnectionStatus;
  *(inited + 72) = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 postNotificationName:v5 object:a1 userInfo:isa];
}

unint64_t sub_100078EA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1005B981C(&qword_101A0F030);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BE14(v4, v13, &unk_1019FB8B0);
      result = sub_1000640CC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10000BF3C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000791C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  sub_1005B981C(&qword_101A12AA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146D2A0;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x800000010155F8C0;
  v11 = sub_1005B981C(&unk_101A22E80);
  *(inited + 48) = a1;
  *(inited + 72) = v11;
  *(inited + 80) = 0xD000000000000022;
  *(inited + 88) = 0x80000001015971B0;
  *(inited + 96) = a2;
  *(inited + 120) = v11;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000001015A4B60;
  *(inited + 144) = a3;
  *(inited + 168) = v11;
  *(inited + 176) = 0x446C61636F4C7369;
  *(inited + 184) = 0xEF6E6F6974656C65;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = a4;

  v12 = sub_10000BCE4(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A2F5D0);
  swift_arrayDestroy();
  v13 = [objc_opt_self() defaultCenter];
  if (qword_1019F2520 != -1)
  {
    swift_once();
  }

  v14 = qword_101AD8568;
  sub_10007941C(v12);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v13 postNotificationName:v14 object:a5 userInfo:isa];
}

uint64_t sub_10007941C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0F030);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100064288(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000BF3C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000BF3C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000BF3C(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000BF3C(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000796E4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v1 = Notification.userInfo.getter();
  if (!v1)
  {

    v10 = 0u;
    v11 = 0u;
    return sub_10000CAAC(&v10, &unk_1019F4D00);
  }

  v2 = v1;
  AnyHashable.init<A>(_:)();
  if (!*(v2 + 16) || (v3 = sub_1000640CC(v9), (v4 & 1) == 0))
  {

    sub_100064234(v9);
    v10 = 0u;
    v11 = 0u;
    goto LABEL_11;
  }

  sub_100064288(*(v2 + 56) + 32 * v3, &v10);
  sub_100064234(v9);

  if (!*(&v11 + 1))
  {
LABEL_11:

    return sub_10000CAAC(&v10, &unk_1019F4D00);
  }

  sub_1005B981C(&unk_101A22E80);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v5 = v9[0];
  v6 = sub_10004B56C(_swiftEmptySetSingleton, 0);
  v7 = sub_10004B56C(v5, 1);

  v9[0] = v6;
  sub_10004B92C(v7);
  v8 = sub_10004B958(v9[0]);

  if (*(v8 + 16))
  {
    v9[0] = v8;
    PassthroughSubject.send(_:)();
  }
}

size_t sub_100079914(size_t a1, int64_t a2, char a3)
{
  result = sub_1000798EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10007995C()
{
  v1 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B150(v0, v6, type metadata accessor for CRLSpotlightManager.ChangeType);
  v7 = swift_getEnumCaseMultiPayload() == 1;
  sub_100025598(v6, v3, type metadata accessor for CRLBoardIdentifier);
  Hasher._combine(_:)(v7);
  type metadata accessor for UUID();
  sub_100042818(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  return sub_100025FC8(v3, type metadata accessor for CRLBoardIdentifier);
}

uint64_t sub_100079B0C(uint64_t a1, unint64_t a2, char a3)
{
  v58 = a1;
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v50 - v9;
  v11 = sub_1005B981C(&qword_101A00148);
  __chkstk_darwin(v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v52 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v50 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100E79E48();
    }

    else
    {
      if (v24 > v23)
      {
        sub_100E86128();
        goto LABEL_33;
      }

      sub_100E8CBD8();
    }

    v25 = *v3;
    Hasher.init(_seed:)();
    sub_10007995C();
    v26 = Hasher._finalize()();
    v27 = -1 << *(v25 + 32);
    a2 = v26 & ~v27;
    v57 = v25 + 56;
    if ((*(v25 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v51 = v10;
      v56 = ~v27;
      v28 = *(v52 + 72);
      v54 = v11;
      v55 = v28;
      do
      {
        sub_10000C83C(*(v25 + 48) + v55 * a2, v22, type metadata accessor for CRLSpotlightManager.ChangeType);
        v29 = *(v11 + 48);
        sub_10000C83C(v22, v13, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_10000C83C(v58, &v13[v29], type metadata accessor for CRLSpotlightManager.ChangeType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_10000C83C(v13, v17, type metadata accessor for CRLSpotlightManager.ChangeType);
          v30 = v17;
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v11 = v53;
            sub_100025668(&v13[v29], v53, type metadata accessor for CRLBoardIdentifier);
            if ((static UUID.== infix(_:_:)() & 1) == 0)
            {
              sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
              sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
              v44 = v17;
              goto LABEL_31;
            }

            v31 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
            v32 = *&v17[v31];
            v33 = *&v17[v31 + 8];
            v34 = (v11 + v31);
            if (v32 == *v34 && v33 == v34[1])
            {
              goto LABEL_36;
            }

            v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
            sub_100026028(v11, type metadata accessor for CRLBoardIdentifier);
            sub_100026028(v17, type metadata accessor for CRLBoardIdentifier);
            if (v36)
            {
              goto LABEL_38;
            }

LABEL_32:
            sub_100026028(v13, type metadata accessor for CRLSpotlightManager.ChangeType);
            v11 = v54;
            goto LABEL_11;
          }
        }

        else
        {
          sub_10000C83C(v13, v20, type metadata accessor for CRLSpotlightManager.ChangeType);
          v30 = v20;
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v37 = v51;
            sub_100025668(&v13[v29], v51, type metadata accessor for CRLBoardIdentifier);
            if (static UUID.== infix(_:_:)())
            {
              v38 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
              v39 = *&v20[v38];
              v40 = *&v20[v38 + 8];
              v41 = (v37 + v38);
              if (v39 == *v41 && v40 == v41[1])
              {
                goto LABEL_37;
              }

              v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
              sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
              sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
              sub_100026028(v20, type metadata accessor for CRLBoardIdentifier);
              if (v43)
              {
                goto LABEL_38;
              }

              goto LABEL_32;
            }

            sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
            sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
            v44 = v20;
LABEL_31:
            sub_100026028(v44, type metadata accessor for CRLBoardIdentifier);
            goto LABEL_32;
          }
        }

        sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_100026028(v30, type metadata accessor for CRLBoardIdentifier);
        sub_10000CAAC(v13, &qword_101A00148);
LABEL_11:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_33:
  v45 = *v50;
  *(*v50 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100025668(v58, *(v45 + 48) + *(v52 + 72) * a2, type metadata accessor for CRLSpotlightManager.ChangeType);
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_36:
    v51 = v11;
    v20 = v17;
LABEL_37:
    sub_100026028(v22, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_100026028(v51, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v20, type metadata accessor for CRLBoardIdentifier);
LABEL_38:
    sub_100026028(v13, type metadata accessor for CRLSpotlightManager.ChangeType);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v45 + 16) = v49;
  }

  return result;
}

uint64_t sub_10007A1BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002640C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10007A214()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007A274()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    sub_1006E6C8C(v0);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = v0;
    v6 = [v4 defaultCenter];
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v8 = qword_101AD8948;
    v9 = [objc_opt_self() mainQueue];
    v10 = swift_allocObject();
    v10[2] = v7;
    v10[3] = v6;
    v10[4] = sub_1006EED44;
    v10[5] = v2;
    v14[4] = sub_1006EF73C;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = *"";
    v14[2] = sub_100059694;
    v14[3] = &unk_1018824E8;
    v11 = _Block_copy(v14);

    v12 = v6;

    v13 = [v12 addObserverForName:v8 object:v1 queue:v9 usingBlock:v11];

    _Block_release(v11);

    swift_beginAccess();
    *(v7 + 16) = v13;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10007A504()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A53C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007A584()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10007A630();
}

uint64_t sub_10007A630()
{
  v1[16] = v0;
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v3;
  v1[19] = v2;

  return _swift_task_switch(sub_10007A6C8, v3, v2);
}

uint64_t sub_10007A6C8()
{
  v1 = v0[16];
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) & 1) != 0 || (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating))
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didCallStartUpdating) = 1;
    v4 = [objc_opt_self() standardUserDefaults];
    v0[14] = v4;
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

    v6 = *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver);
    *(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_userDataDeletionRequestObserver) = v5;

    v7 = swift_task_alloc();
    v0[20] = v7;
    *v7 = v0;
    v7[1] = sub_10007CD44;

    return sub_10007A9C4();
  }
}

uint64_t sub_10007A88C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10007A8C4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 CRLSyncDataWasRemovedUserDefault];
  *a2 = result;
  return result;
}

uint64_t sub_10007A9C4()
{
  v1[12] = v0;
  v1[13] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[16] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[17] = v3;
  v1[18] = v2;

  return _swift_task_switch(sub_10007AAC0, v3, v2);
}

uint64_t sub_10007AB58()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  v0[20] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[21] = v3;
  v4 = sub_1005B981C(&unk_101A22E80);
  *v3 = v0;
  v3[1] = sub_10007C3BC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 11, 0, 0, 0xD000000000000022, 0x80000001015C3080, sub_10007AD8C, v2, v4);
}

uint64_t sub_10007AE8C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4)
{
  a3();
  sub_1005B981C(a4);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10007AF24()
{
  v96 = type metadata accessor for UUID();
  v87 = *(v96 - 8);
  __chkstk_darwin(v96);
  v3 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v4 = __chkstk_darwin(v95);
  v94 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v93 = &v84 - v6;
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v8 = __chkstk_darwin(v7 - 8);
  v92 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = &v84 - v11;
  v12 = __chkstk_darwin(v10);
  v90 = &v84 - v13;
  v14 = __chkstk_darwin(v12);
  v89 = &v84 - v15;
  __chkstk_darwin(v14);
  v88 = &v84 - v16;
  v17 = type metadata accessor for DispatchPredicate();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = (&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v20 = v21;
  v23 = v18 + 104;
  v22 = *(v18 + 104);
  v99 = enum case for DispatchPredicate.onQueue(_:);
  v100 = v22;
  v22(v20);
  v24 = v21;
  LOBYTE(v21) = _dispatchPreconditionTest(_:)();
  v27 = *(v18 + 8);
  v25 = v18 + 8;
  v26 = v27;
  v27(v20, v17);
  if ((v21 & 1) == 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v104 = v26;
  v98 = v3;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, 0xD000000000000058, 0x80000001015A5500);
  v103 = v1;
  if (v1)
  {

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v32 = v103;
      swift_getErrorValue();
      v33 = Error.localizedDescription.getter();
      v35 = v34;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v33;
      *(inited + 40) = v35;
      v36 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v36, "Failed to fetch list of discardable boards with error %@", 56, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      swift_willThrow();
      v103 = v32;
      return v30;
    }

LABEL_32:
    swift_once();
    goto LABEL_4;
  }

  v37 = v29;

  v105 = _swiftEmptySetSingleton;
  v38 = *(*(v37 + 16) + 32);
  *v20 = v38;
  v39 = v99;
  v40 = v100;
  v100(v20, v99, v17);
  v41 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v42 = v104;
  v104(v20, v17);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v43[3] = 0;
  v101 = v43 + 3;
  v43[4] = 0;
  v85 = v43 + 4;
  v43[5] = 1;
  v102 = v43;
  v43[2] = v37;

  swift_beginAccess();
  v44 = *(*(v37 + 16) + 32);
  *v20 = v44;
  v40(v20, v39, v17);
  v45 = v44;
  LOBYTE(v44) = _dispatchPreconditionTest(_:)();
  v42(v20, v17);
  if ((v44 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v87 += 4;
  v97 = v25;
  v86 = v23;
  while (1)
  {
    v60 = v101;
    *v101 = 0;
    v60[1] = 0;
    v102[5] = 1;
    v61 = sqlite3_step(*(v37 + 24));
    if (v61 != 100)
    {
      break;
    }

    v62 = *(*(v37 + 16) + 32);
    *v20 = v62;
    v40(v20, v39, v17);

    v63 = v62;
    LOBYTE(v62) = _dispatchPreconditionTest(_:)();
    v64 = v104;
    v104(v20, v17);
    if ((v62 & 1) == 0)
    {
      goto LABEL_29;
    }

    v65 = *(*(v37 + 16) + 32);
    *v20 = v65;
    v40(v20, v39, v17);
    v66 = v65;
    LOBYTE(v65) = _dispatchPreconditionTest(_:)();
    v64(v20, v17);
    if ((v65 & 1) == 0)
    {
      goto LABEL_30;
    }

    if (sqlite3_column_type(*(v37 + 24), 0) == 5)
    {
      goto LABEL_17;
    }

    v67 = sqlite3_column_blob(*(v37 + 24), 0);
    if (!v67)
    {
      goto LABEL_17;
    }

    v68 = v67;
    v69 = sqlite3_column_bytes(*(v37 + 24), 0);
    v70 = sub_100024DD4(v68, v69);
    v72 = v71;
    sub_100024E98(v70, v71);
    v73 = v98;
    v74 = v103;
    sub_100024EEC(v98, v70, v72);
    if (v74)
    {

      sub_10002640C(v70, v72);
      sub_10002640C(v70, v72);
      v103 = 0;
      v39 = v99;
      v40 = v100;
LABEL_17:
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.boardStore;
      v78 = static os_log_type_t.error.getter();
      sub_100005404(v77, &_mh_execute_header, v78, "Failure reading board identifier data.", 38, 2, _swiftEmptyArrayStorage);

      goto LABEL_9;
    }

    v46 = v75;
    v47 = v76;
    v103 = 0;
    sub_10002640C(v70, v72);
    v48 = v94;
    (*v87)(v94, v73, v96);
    v49 = &v48[*(v95 + 20)];
    *v49 = v46;
    *(v49 + 1) = v47;
    v50 = v48;
    v51 = v93;
    sub_100025668(v50, v93, type metadata accessor for CRLBoardIdentifierStorage);
    v52 = v90;
    sub_100025668(v51, v90, type metadata accessor for CRLBoardIdentifierStorage);
    v53 = v52;
    v54 = v89;
    sub_100025668(v53, v89, type metadata accessor for CRLBoardIdentifier);
    v55 = v88;
    sub_100025668(v54, v88, type metadata accessor for CRLBoardIdentifier);
    v56 = v92;
    sub_10000C83C(v55, v92, type metadata accessor for CRLBoardIdentifier);
    v57 = v91;
    sub_100031F10(v91, v56);

    sub_10002640C(v70, v72);
    sub_100026028(v57, type metadata accessor for CRLBoardIdentifier);
    sub_100026028(v55, type metadata accessor for CRLBoardIdentifier);
    v39 = v99;
    v40 = v100;
LABEL_9:
    v58 = *(*(v37 + 16) + 32);
    *v20 = v58;
    v40(v20, v39, v17);
    v59 = v58;
    LOBYTE(v58) = _dispatchPreconditionTest(_:)();
    v104(v20, v17);
    if ((v58 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v61 && v61 != 101)
  {
    *v101 = v61;
    v79 = v85;
    *v85 = 0;
    v79[1] = 0;
  }

  v30 = v105;
  v80 = *(*(v37 + 16) + 32);
  *v20 = v80;
  v100(v20, v39, v17);
  v81 = v80;
  LOBYTE(v80) = _dispatchPreconditionTest(_:)();
  v104(v20, v17);
  if ((v80 & 1) == 0)
  {
LABEL_34:
    __break(1u);
  }

  v82 = *(v37 + 24);
  if (v82)
  {
    sqlite3_finalize(v82);
    *(v37 + 24) = 0;
  }

  return v30;
}

void sub_10007B9F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10007BC04(&v3);
    if (!v3)
    {
LABEL_5:

      return;
    }

    v6 = v3;
    v7 = v4;
    v8 = v5;
    if (sub_10007C308())
    {
      v10 = v6;
      sub_10000CAAC(&v10, &unk_1019FB880);
      v11 = v7;
      sub_10000CAAC(&v11, &unk_101A22E80);
      v12 = *(&v7 + 1);
      sub_10000CAAC(&v12, &unk_101A22E80);
      v13 = v8;
      sub_10000CAAC(&v13, &qword_1019FB890);
      *&v2 = *(&v8 + 1);
      sub_10000CAAC(&v2, &qword_1019FB890);
      goto LABEL_5;
    }

    PassthroughSubject.send(_:)();

    v9 = v6;
    sub_10000CAAC(&v9, &unk_1019FB880);
    v10 = v7;
    sub_10000CAAC(&v10, &unk_101A22E80);
    v11 = *(&v7 + 1);
    sub_10000CAAC(&v11, &unk_101A22E80);
    v12 = v8;
    sub_10000CAAC(&v12, &qword_1019FB890);
    v13 = *(&v8 + 1);
    sub_10000CAAC(&v13, &qword_1019FB890);
  }
}

uint64_t sub_10007BC04@<X0>(void *a1@<X8>)
{
  v2 = sub_1005B981C(&unk_1019F52D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28[-v3 - 8];
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __chkstk_darwin(v7);
  v12 = &v28[-v11 - 8];
  __chkstk_darwin(v10);
  v14 = &v28[-v13 - 8];
  result = Notification.userInfo.getter();
  if (result)
  {
    v16 = sub_10007C02C(result);

    if (v16)
    {
      v29 = &_swiftEmptySetSingleton;
      if (*(v16 + 16))
      {
        v17 = sub_10000BE7C(0xD000000000000010, 0x800000010155F8A0);
        if (v18)
        {
          sub_100064288(*(v16 + 56) + 32 * v17, v28);
          sub_1005B981C(&unk_101A22E80);
          if (swift_dynamicCast())
          {
            sub_100636CB4(v27);
          }
        }
      }

      if (*(v16 + 16) && (v19 = sub_10000BE7C(0x6564496472616F62, 0xEF7265696669746ELL), (v20 & 1) != 0))
      {
        sub_100064288(*(v16 + 56) + 32 * v19, v28);
        v21 = swift_dynamicCast();
        (*(v6 + 56))(v4, v21 ^ 1u, 1, v5);
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          sub_1006EEE5C(v4, v14, type metadata accessor for CRLBoardIdentifier);
          sub_1006EEEC4(v14, v9, type metadata accessor for CRLBoardIdentifier);
          sub_100031F10(v12, v9);
          sub_100025BA8(v12, type metadata accessor for CRLBoardIdentifier);
          sub_100025BA8(v14, type metadata accessor for CRLBoardIdentifier);
          if (!*(v16 + 16))
          {
            goto LABEL_18;
          }

LABEL_15:
          v25 = sub_10000BE7C(0xD000000000000017, 0x800000010155F8C0);
          if (v26)
          {
            sub_100064288(*(v16 + 56) + 32 * v25, v28);

            sub_1005B981C(&unk_101A22E80);
            result = swift_dynamicCast();
            if (result)
            {
              v24 = v27;
LABEL_20:
              v23 = v29;
              v22 = &_swiftEmptySetSingleton;
              goto LABEL_21;
            }

LABEL_19:
            v24 = &_swiftEmptySetSingleton;
            goto LABEL_20;
          }

LABEL_18:

          goto LABEL_19;
        }
      }

      else
      {
        (*(v6 + 56))(v4, 1, 1, v5);
      }

      sub_10000CAAC(v4, &unk_1019F52D0);
      if (!*(v16 + 16))
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
LABEL_21:
  *a1 = v22;
  a1[1] = v23;
  a1[2] = v24;
  a1[3] = v22;
  a1[4] = v22;
  return result;
}

unint64_t sub_10007C02C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1005B981C(&qword_101A0BA60);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100064110(*(a1 + 48) + 40 * v12, v27);
        sub_100064288(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_100064110(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_100064288(v25 + 8, v20);
        sub_10000CAAC(v24, &unk_101A15AE8);
        v21 = v18;
        sub_10000BF3C(v20, v22);
        v13 = v21;
        sub_10000BF3C(v22, v23);
        sub_10000BF3C(v23, &v21);
        result = sub_10000BE7C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_100005070(v10);
          result = sub_10000BF3C(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_10000BF3C(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_10000CAAC(v24, &unk_101A15AE8);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}