void sub_100848148(uint64_t a1, uint64_t a2)
{
  v96 = type metadata accessor for Playlist.Entry();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v95 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v94 = &v82 - v6;
  v7 = type metadata accessor for IndexPath();
  v100 = *(v7 - 8);
  __chkstk_darwin(v7);
  v97 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v99 = &v82 - v10;
  __chkstk_darwin(v11);
  v98 = &v82 - v12;
  v13 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v13 - 8);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v82 - v17;
  v19 = sub_10010FC20(&qword_10118C2B0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v82 - v23;
  sub_1000089F8(a1, v18, &qword_10119A808);
  v25 = *(v20 + 48);
  if (v25(v18, 1, v19) == 1)
  {
    v26 = &qword_10119A808;
    v27 = v18;
LABEL_5:
    sub_1000095E8(v27, v26);
    return;
  }

  v92 = v7;
  v28 = *(v20 + 32);
  v28(v24, v18, v19);
  sub_1000089F8(a2, v15, &qword_10119A808);
  v29 = v19;
  if (v25(v15, 1, v19) == 1)
  {
    (*(v20 + 8))(v24, v19);
    v26 = &qword_10119A808;
    v27 = v15;
    goto LABEL_5;
  }

  v30 = v101;
  v28(v101, v15, v19);
  v31 = *(v102 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_16;
  }

  v33 = 0;
  v34 = v31 + 32;
  while (*(v34 + v33) != 2)
  {
    if (v32 == ++v33)
    {
      goto LABEL_16;
    }
  }

  v35 = sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v36 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v36 != dispatch thunk of Collection.distance(from:to:)())
  {
LABEL_16:
    v43 = *(v20 + 8);
    v43(v30, v29);
    v44 = v24;
    v45 = v29;
LABEL_17:
    v43(v44, v45);
    return;
  }

  v91 = v29;
  v37 = v102;
  v38 = sub_100849C78();
  v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v37 + v39, &v103, &unk_1011926C0);
  if (v104)
  {
    v40 = *(v20 + 8);
    v41 = v91;
    v40(v30, v91);
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v103, &unk_1011926C0);
  if (!Strong || (v85 = v39, v47 = sub_1006A6078(), Strong, v48 = [v47 numberOfItemsInSection:v33], v47, v38 != v48))
  {
    v43 = *(v20 + 8);
    v41 = v91;
    v43(v30, v91);
LABEL_23:
    v44 = v24;
    v45 = v41;
    goto LABEL_17;
  }

  v82 = v35;
  sub_1000089F8(v102 + v85, &v103, &unk_1011926C0);
  v41 = v91;
  if (v104)
  {
    v40 = *(v20 + 8);
    v40(v30, v91);
LABEL_14:
    v42 = v24;
LABEL_15:
    v40(v42, v41);
    v26 = &unk_1011926C0;
    v27 = &v103;
    goto LABEL_5;
  }

  v49 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v103, &unk_1011926C0);
  if (!v49)
  {
    v43 = *(v20 + 8);
    v43(v30, v41);
    goto LABEL_23;
  }

  v50 = sub_1006A6078();

  v51 = [v50 _indexPathsForPreparedItems];
  v52 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v53 = *(v52 + 16);
  v86 = v24;
  v89 = v53;
  if (!v53)
  {
    v90 = _swiftEmptyArrayStorage;
    v56 = v102;
LABEL_38:

    v66 = v90;
    v99 = v90[2];
    if (v99)
    {
      v67 = 0;
      v98 = (v100 + 16);
      v89 = v93 + 1;
      v68 = &unk_1011926C0;
      v93 = (v100 + 8);
      while (1)
      {
        if (v99 == v67)
        {

          v81 = *(v20 + 8);
          v81(v101, v41);
          v81(v86, v41);
          return;
        }

        if (v67 >= v66[2])
        {
          goto LABEL_60;
        }

        (*(v100 + 16))(v97, v66 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v67, v92);
        sub_1000089F8(v56 + v85, &v103, v68);
        if (v104)
        {

          (*v93)(v97, v92);
          v40 = *(v20 + 8);
          v40(v101, v41);
          v42 = v86;
          goto LABEL_15;
        }

        v69 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v103, v68);
        if (!v69)
        {
LABEL_51:

          (*v93)(v97, v92);
          goto LABEL_52;
        }

        v70 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v72 = [v70 cellForItemAtIndexPath:isa];

        if (!v72)
        {

          goto LABEL_57;
        }

        _s13TracklistCellCMa();
        if (!swift_dynamicCastClass())
        {
          break;
        }

        v73 = IndexPath.item.getter();
        v41 = v91;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v73 >= dispatch thunk of Collection.distance(from:to:)())
        {
          goto LABEL_51;
        }

        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v73 >= dispatch thunk of Collection.distance(from:to:)())
        {
          goto LABEL_51;
        }

        v74 = v68;
        v75 = v94;
        MusicItemCollection.subscript.getter();
        v76 = v95;
        MusicItemCollection.subscript.getter();
        sub_100866F00(&unk_1011A4730, &type metadata accessor for Playlist.Entry);
        v77 = v96;
        v78 = static MusicItem<>.==~ infix(_:_:)();
        v79 = *v89;
        (*v89)(v76, v77);
        v80 = v75;
        v68 = v74;
        v79(v80, v77);
        (*v93)(v97, v92);
        ++v67;
        v56 = v102;
        v66 = v90;
        if ((v78 & 1) == 0)
        {

LABEL_52:
          v43 = *(v20 + 8);
          v43(v101, v41);
          goto LABEL_58;
        }
      }

LABEL_57:
      (*v93)(v97, v92);
      v43 = *(v20 + 8);
      v41 = v91;
      v43(v101, v91);
LABEL_58:
      v44 = v86;
      v45 = v41;
      goto LABEL_17;
    }

    v43 = *(v20 + 8);
    v43(v101, v41);
    goto LABEL_23;
  }

  v54 = 0;
  v87 = v100 + 16;
  v83 = (v100 + 8);
  v88 = (v100 + 32);
  v90 = _swiftEmptyArrayStorage;
  v55 = v98;
  v84 = v52;
  while (v54 < *(v52 + 16))
  {
    v57 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v58 = *(v100 + 72);
    v59 = v92;
    (*(v100 + 16))(v55, v52 + v57 + v58 * v54, v92);
    if (IndexPath.section.getter() == v33)
    {
      v60 = *v88;
      (*v88)(v99, v55, v59);
      v61 = v90;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v61;
      v103 = v61;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066CB48(0, v61[2] + 1, 1);
        v63 = v103;
      }

      v56 = v102;
      v65 = v63[2];
      v64 = v63[3];
      if (v65 >= v64 >> 1)
      {
        sub_10066CB48(v64 > 1, v65 + 1, 1);
        v56 = v102;
        v63 = v103;
      }

      v63[2] = v65 + 1;
      v90 = v63;
      v60(v63 + v57 + v65 * v58, v99, v59);
      v24 = v86;
      v55 = v98;
      v52 = v84;
    }

    else
    {
      (*v83)(v55, v59);
      v56 = v102;
    }

    ++v54;
    v41 = v91;
    if (v89 == v54)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_100848DE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v42 = a2;
  v39 = _s7ContextVMa(0);
  __chkstk_darwin(v39);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s7ContextV6SourceOMa(0);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v15, v10, &unk_1011814D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(v10, &unk_1011814D0);
    v16 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v42;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v19 = *(sub_10010FC20(&qword_101183AD8) + 48);
    v20 = type metadata accessor for Playlist.Entry();
    (*(*(v20 - 8) + 16))(v7, v41, v20);
    (*(v12 + 16))(&v7[v19], v14, v11);
    swift_storeEnumTagMultiPayload();
    v21 = Playlist.hasJoinedCollaboration.getter();
    v22 = v42;
    if (v21)
    {
      v23 = sub_10082EF78();
      v24 = *(v23 + 24);
      if (v24 == 255)
      {
      }

      else
      {
        v25 = *(v23 + 16);

        sub_100252894(v7, v25, v24 & 1);
        v41 = v26;
        v37 = v27;
        v28 = ~v27;

        v29 = v25;
        v22 = v42;
        sub_1000D9134(v29, v24);
        if (v28)
        {
          v30 = v40;
          sub_10086772C(v7, v40, _s7ContextV6SourceOMa);
          (*(v38 + 56))(v30, 0, 1, v5);
          v31 = v39;
          v32 = &v30[*(v39 + 20)];
          *v32 = v41;
          v32[8] = v37;
          *&v30[v31[6]] = 0;
          v30[v31[7]] = 0;
          v30[v31[8]] = 1;
          v33 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___reactionController);

          sub_100867794(v7, _s7ContextV6SourceOMa);
          (*(v12 + 8))(v14, v11);
          *v22 = v33;
          v34 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
          sub_100869470(v30, v22 + *(v34 + 20), _s7ContextVMa);
          return (*(*(v34 - 8) + 56))(v22, 0, 1, v34);
        }
      }
    }

    sub_100867794(v7, _s7ContextV6SourceOMa);
    (*(v12 + 8))(v14, v11);
    v16 = type metadata accessor for Tracklist.ReactionsConfiguration(0);
    v17 = *(*(v16 - 8) + 56);
    v18 = v22;
  }

  return v17(v18, 1, 1, v16);
}

void sub_10084931C(char *a1)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for Track();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = v51 - v7;
  v8 = sub_10010FC20(&qword_1011928D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v52 = (v51 - v10);
  v11 = sub_10010FC20(&qword_1011928D8);
  __chkstk_darwin(v11 - 8);
  v13 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v61 = v51 - v15;
  v16 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v16 - 8);
  v18 = v51 - v17;
  v19 = sub_10010FC20(&qword_10118C2B0);
  v60 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v51 - v20;
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  if (*(*(v2 + v22) + 16))
  {
    v57 = v9;
    v59 = v8;
    v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v2 + v23, v18, &qword_10119A808);
    v24 = *(v60 + 48);
    if (v24(v18, 1, v19) == 1)
    {
      type metadata accessor for Playlist.Entry();
      MusicItemCollection.init(arrayLiteral:)();
      v25 = v24(v18, 1, v19);
      v26 = v60;
      if (v25 != 1)
      {
        sub_1000095E8(v18, &qword_10119A808);
      }
    }

    else
    {
      v26 = v60;
      (*(v60 + 32))(v21, v18, v19);
    }

    v27 = sub_1008687D8(v58, v21);
    (*(v26 + 8))(v21, v19);
    v63 = v27;
    v28 = *(v2 + v22);
    v51[1] = v54 + 16;
    v60 = *(v28 + 16);
    v29 = v57;
    v57 += 6;
    v58 = (v29 + 7);
    v56 = (v54 + 32);
    v30 = (v54 + 8);
    v53 = v28;

    v31 = 0;
    v32 = _swiftEmptyArrayStorage;
    while (1)
    {
      v33 = v59;
      v34 = v61;
      if (v31 == v60)
      {
        v35 = 1;
        v31 = v60;
      }

      else
      {
        if ((v31 & 0x8000000000000000) != 0)
        {
          goto LABEL_27;
        }

        if (v31 >= *(v53 + 16))
        {
          goto LABEL_28;
        }

        v55 = v31 + 1;
        v36 = v54;
        v37 = v53 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31;
        v38 = *(v59 + 48);
        v39 = v13;
        v40 = v52;
        *v52 = v31;
        (*(v36 + 16))(&v40[v38], v37, v3);
        v41 = v40;
        v13 = v39;
        v34 = v61;
        sub_10003D17C(v41, v13, &qword_1011928D0);
        v35 = 0;
        v31 = v55;
      }

      (*v58)(v13, v35, 1, v33);
      sub_10003D17C(v13, v34, &qword_1011928D8);
      if ((*v57)(v34, 1, v33) == 1)
      {
        break;
      }

      v55 = *v34;
      (*v56)(v62, &v34[*(v33 + 48)], v3);
      v42 = Track.catalogID.getter();
      if (v43 && (sub_100195A08(v42, v43), v45 = v44, , v45))
      {

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_1004995E0(0, *(v32 + 2) + 1, 1, v32);
        }

        v47 = *(v32 + 2);
        v46 = *(v32 + 3);
        if (v47 >= v46 >> 1)
        {
          v32 = sub_1004995E0((v46 > 1), v47 + 1, 1, v32);
        }

        (*v30)(v62, v3);
        *(v32 + 2) = v47 + 1;
        *&v32[8 * v47 + 32] = v55;
      }

      else
      {
        (*v30)(v62, v3);
      }
    }

    v48 = *(v32 + 2);
    if (!v48)
    {
LABEL_24:

      return;
    }

    while (v48 <= *(v32 + 2))
    {
      v49 = v48 - 1;
      v50 = *&v32[8 * v48 + 24];
      swift_beginAccess();
      sub_1004F42B8(v50, v5);
      (*v30)(v5, v3);
      swift_endAccess();
      sub_10084A954();
      v48 = v49;
      if (!v49)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }
}

uint64_t sub_100849A08()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - v4;
  v6 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10119A808);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000095E8(v8, &qword_10119A808);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000095E8(v8, &qword_10119A808);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v3 + 8))(v5, v2);
    if (v13[2] != v13[1])
    {
LABEL_5:
      LOBYTE(v11) = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) ^ 1;
      return v11 & 1;
    }
  }

  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  v11 = *(*(v1 + v10) + 16);
  if (v11)
  {
    goto LABEL_5;
  }

  return v11 & 1;
}

uint64_t sub_100849C78()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - v5;
  v6 = type metadata accessor for MusicPropertySource();
  v58 = *(v6 - 8);
  v59 = v6;
  v7 = __chkstk_darwin(v6);
  v57 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_10010FC20(&qword_10119A808);
  v12 = __chkstk_darwin(v11 - 8);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_10010FC20(&qword_10118C2B0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v55 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  v23 = v1;
  sub_1000089F8(v1 + v22, v15, &qword_10119A808);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &qword_10119A808);
    return 0;
  }

  (*(v17 + 32))(v21, v15, v16);
  v26 = v17;
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) == 1)
  {
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v27 = dispatch thunk of Collection.distance(from:to:)();
    (*(v26 + 8))(v21, v16);
    return v27;
  }

  v50 = v17;
  v49 = v21;
  v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v30 = v58;
  v29 = v59;
  (*(v58 + 16))(v10, v1 + v28, v59);
  v31 = v57;
  (*(v30 + 104))(v57, enum case for MusicPropertySource.catalog(_:), v29);
  LOBYTE(v28) = static MusicPropertySource.== infix(_:_:)();
  v32 = *(v30 + 8);
  v32(v31, v29);
  v32(v10, v29);
  if ((v28 & 1) == 0)
  {
LABEL_11:
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    v44 = v49;
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v27 = dispatch thunk of Collection.distance(from:to:)();
    (*(v50 + 8))(v44, v16);
    return v27;
  }

  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
  swift_beginAccess();
  v34 = v56;
  sub_1000089F8(v23 + v33, v56, &qword_10119A808);
  if (v24(v34, 1, v16))
  {
    sub_1000095E8(v34, &qword_10119A808);
    goto LABEL_11;
  }

  v35 = v50;
  v36 = v55;
  (*(v50 + 16))(v55, v34, v16);
  sub_1000095E8(v34, &qword_10119A808);
  v37 = MusicItemCollection.hasNextBatch.getter();
  v38 = *(v35 + 8);
  v38(v36, v16);
  if ((v37 & 1) == 0)
  {
    goto LABEL_11;
  }

  v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  v40 = v52;
  sub_1000089F8(v23 + v39, v52, &unk_1011814D0);
  v42 = v53;
  v41 = v54;
  if ((*(v53 + 48))(v40, 1, v54))
  {
    sub_1000095E8(v40, &unk_1011814D0);
    v43 = v49;
  }

  else
  {
    v45 = v51;
    (*(v42 + 16))(v51, v40, v41);
    sub_1000095E8(v40, &unk_1011814D0);
    v46 = Playlist.trackCount.getter();
    v48 = v47;
    (*(v42 + 8))(v45, v41);
    v43 = v49;
    if ((v48 & 1) == 0)
    {
      v38(v49, v16);
      return v46;
    }
  }

  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v27 = dispatch thunk of Collection.distance(from:to:)();
  v38(v43, v16);
  return v27;
}

void sub_10084A45C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 6)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_10086817C;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010C1FA0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084A644(uint64_t a1)
{
  if (sub_100849A08())
  {
    if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection))
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 1;
    v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v2, v8, &unk_1011926C0);
    if ((v9 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v8, &unk_1011926C0);
      if (!Strong)
      {
        return;
      }

      v4 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 insertItemsAtIndexPaths:v5.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v8, &unk_1011926C0);
    return;
  }

  if (!*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 0;
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v6, v8, &unk_1011926C0);
  if (v9)
  {
    goto LABEL_8;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v8, &unk_1011926C0);
  if (!v7)
  {
    return;
  }

  v4 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 deleteItemsAtIndexPaths:v5.super.isa];
LABEL_11:
}

void sub_10084A954()
{
  v1 = v0;
  v23 = type metadata accessor for IndexPath();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  v5 = sub_100849C78();
  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  v7 = *(*(v1 + v6) + 16);
  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v24 = v8;
    v25 = 0;
    static Published.subscript.setter();
    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v9, v26, &unk_1011926C0);
    if (v26[8])
    {
      sub_1000095E8(v26, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v26, &unk_1011926C0);
      if (Strong)
      {
        v11 = sub_1006A6078();

        v12 = [v11 indexPathsForVisibleItems];
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v14 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = v14 + 32;
          while (*(v17 + v16) != 6)
          {
            if (v15 == ++v16)
            {
              goto LABEL_9;
            }
          }

          v18 = 0;
          v19 = *(v13 + 16);
          v22 = v2 + 16;
          v20 = v23;
          while (v19 != v18)
          {
            if (v18 >= *(v13 + 16))
            {
              __break(1u);
              goto LABEL_18;
            }

            (*(v2 + 16))(v4, v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v18++, v20);
            v21 = IndexPath.section.getter();
            (*(v2 + 8))(v4, v20);
            if (v21 == v16)
            {

              sub_10084AC50();
              return;
            }
          }
        }

LABEL_9:
      }
    }

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsDurationUpdate) = 1;
  }
}

uint64_t sub_10084AC50()
{
  v1 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2];
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v4, v14, &unk_1011926C0);
  if (v14[8])
  {
    v5 = &unk_1011926C0;
    v6 = v14;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1000095E8(v14, &unk_1011926C0);
    if (!Strong)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v9, v3, &qword_10119A808);
    v15[0] = v3;
    v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    v13 = *(v0 + v10);
    v15[1] = &v13;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10080686C(v15, sub_100867F64, v11);

    v6 = v3;
    v5 = &qword_10119A808;
  }

  return sub_1000095E8(v6, v5);
}

uint64_t sub_10084AE68()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10084AF0C()
{
  v1 = type metadata accessor for Playlist.EditableComponents();
  v74 = *(v1 - 8);
  v75 = v1;
  __chkstk_darwin(v1);
  v71 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v3 - 8);
  v73 = &v67 - v4;
  v84 = type metadata accessor for Playlist.Variant();
  v80 = *(v84 - 8);
  __chkstk_darwin(v84);
  v76 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v78);
  v82 = &v67 - v6;
  v81 = type metadata accessor for Playlist();
  v83 = *(v81 - 8);
  v7 = __chkstk_darwin(v81);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v67 - v9;
  v11 = sub_10010FC20(&unk_1011814D0);
  v12 = __chkstk_darwin(v11 - 8);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v67 - v14;
  v16 = sub_10010FC20(&unk_10119EF50);
  v17 = __chkstk_darwin(v16 - 8);
  v79 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v67 - v20;
  __chkstk_darwin(v19);
  v23 = &v67 - v22;
  v24 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v24 - 8);
  v26 = &v67 - v25;
  v27 = sub_10010FC20(&qword_10118C2B0);
  v86 = *(v27 - 8);
  __chkstk_darwin(v27);
  v85 = &v67 - v28;
  v29 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v29 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    if ((v29 >> 62) - 1 >= 2)
    {
      if (v29 >> 62)
      {
        goto LABEL_7;
      }

      sub_10011896C(*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState));
    }

    result = v29;
    if ((v29 & 1) == 0)
    {
      return result;
    }

    sub_1004E5BA4(v29);
  }

LABEL_7:
  if ((*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v31, v26, &qword_10119A808);
    v32 = v86;
    if ((*(v86 + 48))(v26, 1, v27) == 1)
    {
      v33 = &qword_10119A808;
LABEL_10:
      sub_1000095E8(v26, v33);
      return 0x3FFFFFEF8;
    }

    v34 = v0;
    v35 = v85;
    (*(v32 + 32))();
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v87 != v88)
    {
      (*(v32 + 8))(v35, v27);
      return 0x3FFFFFEF8;
    }

    if (*(v34 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) == 1)
    {
      (*(v86 + 8))(v35, v27);
      return 0x3FFFFFEFALL;
    }

    v36 = v34;
    v37 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v70 = v37;
    sub_1000089F8(v34 + v37, v15, &unk_1011814D0);
    v38 = v83;
    v39 = *(v83 + 48);
    v40 = v81;
    v69 = v83 + 48;
    v68 = v39;
    if (v39(v15, 1, v81))
    {
      sub_1000095E8(v15, &unk_1011814D0);
      v41 = v80;
      v42 = v84;
      (*(v80 + 56))(v23, 1, 1, v84);
    }

    else
    {
      (*(v38 + 16))(v10, v15, v40);
      sub_1000095E8(v15, &unk_1011814D0);
      Playlist.variant.getter();
      v36 = v34;
      (*(v38 + 8))(v10, v40);
      v42 = v84;
      v41 = v80;
    }

    (*(v41 + 104))(v21, enum case for Playlist.Variant.favoriteSongs(_:), v42);
    (*(v41 + 56))(v21, 0, 1, v42);
    v43 = *(v78 + 48);
    v44 = v82;
    sub_1000089F8(v23, v82, &unk_10119EF50);
    v45 = v84;
    v46 = v44;
    sub_1000089F8(v21, v44 + v43, &unk_10119EF50);
    v47 = *(v41 + 48);
    if (v47(v46, 1, v45) == 1)
    {
      sub_1000095E8(v21, &unk_10119EF50);
      v48 = v82;
      sub_1000095E8(v23, &unk_10119EF50);
      v49 = v47(v48 + v43, 1, v45);
      v50 = v85;
      if (v49 == 1)
      {
        sub_1000095E8(v48, &unk_10119EF50);
LABEL_29:
        (*(v86 + 8))(v50, v27);
        return 0x3FFFFFEFELL;
      }
    }

    else
    {
      sub_1000089F8(v46, v79, &unk_10119EF50);
      if (v47(v46 + v43, 1, v45) != 1)
      {
        v54 = v80;
        v55 = v46 + v43;
        v56 = v76;
        (*(v80 + 32))(v76, v55, v45);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
        v57 = v45;
        v36 = v34;
        LODWORD(v78) = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v54 + 8);
        v58(v56, v57);
        sub_1000095E8(v21, &unk_10119EF50);
        sub_1000095E8(v23, &unk_10119EF50);
        v58(v79, v57);
        sub_1000095E8(v46, &unk_10119EF50);
        v51 = v83;
        v50 = v85;
        if (v78)
        {
          goto LABEL_29;
        }

LABEL_26:
        v52 = v77;
        sub_1000089F8(v36 + v70, v77, &unk_1011814D0);
        v53 = v81;
        if (v68(v52, 1, v81))
        {
          (*(v86 + 8))(v50, v27);
          sub_1000095E8(v52, &unk_1011814D0);
          return 0x3FFFFFEF8;
        }

        v59 = v72;
        (*(v51 + 16))(v72, v52, v53);
        sub_1000095E8(v52, &unk_1011814D0);
        v26 = v73;
        Playlist.editableComponents.getter();
        (*(v51 + 8))(v59, v53);
        v61 = v74;
        v60 = v75;
        v62 = (*(v74 + 48))(v26, 1, v75);
        v63 = v86;
        if (v62 != 1)
        {
          v64 = v71;
          static Playlist.EditableComponents.tracklist.getter();
          sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
          v65 = dispatch thunk of SetAlgebra.isSuperset(of:)();
          v66 = *(v61 + 8);
          v66(v64, v60);
          (*(v63 + 8))(v85, v27);
          v66(v26, v60);
          if ((v65 & 1) == 0)
          {
            return 0x3FFFFFEFCLL;
          }

          return 0x3FFFFFEF8;
        }

        (*(v86 + 8))(v85, v27);
        v33 = &unk_10118D240;
        goto LABEL_10;
      }

      sub_1000095E8(v21, &unk_10119EF50);
      v48 = v82;
      sub_1000095E8(v23, &unk_10119EF50);
      (*(v80 + 8))(v79, v45);
      v50 = v85;
    }

    sub_1000095E8(v48, &unk_1011A4670);
    v51 = v83;
    goto LABEL_26;
  }

  return 0x3FFFFFEF8;
}

void sub_10084BBB4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 4)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0);
    if (v14)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();

        v9 = swift_allocObject();
        *(v9 + 16) = v7;
        *(v9 + 24) = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867F5C;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010C1ED8;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084BD9C(uint64_t a1)
{
  v2 = sub_10084AF0C();
  if ((v2 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) != 1)
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) = 0;
    v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v3, v9, &unk_1011926C0);
    if ((v10 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v9, &unk_1011926C0);
      if (!Strong)
      {
        return;
      }

      v5 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 deleteItemsAtIndexPaths:v6.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v9, &unk_1011926C0);
    return;
  }

  sub_1004E5B40(v2);
  if (*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingNoContentSection) = 1;
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v7, v9, &unk_1011926C0);
  if (v10)
  {
    goto LABEL_8;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v9, &unk_1011926C0);
  if (!v8)
  {
    return;
  }

  v5 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 insertItemsAtIndexPaths:v6.super.isa];
LABEL_11:
}

BOOL sub_10084C0D4()
{
  v1 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v1 - 8);
  v37 = &v36 - v2;
  v3 = type metadata accessor for Playlist.EditableComponents();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v11 - 8);
  v39 = &v36 - v12;
  v13 = type metadata accessor for MusicPropertySource();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v14 + 16))(v19, v0 + v20, v13);
  (*(v14 + 104))(v17, enum case for MusicPropertySource.library(_:), v13);
  LOBYTE(v20) = static MusicPropertySource.== infix(_:_:)();
  v21 = *(v14 + 8);
  v21(v17, v13);
  v21(v19, v13);
  if (v20 & 1) == 0 || (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v22, v10, &unk_1011814D0);
  v23 = v42;
  if ((*(v42 + 48))(v10, 1, v5))
  {
    v24 = &unk_1011814D0;
LABEL_7:
    sub_1000095E8(v10, v24);
    return 0;
  }

  (*(v23 + 16))(v7, v10, v5);
  sub_1000095E8(v10, &unk_1011814D0);
  v10 = v39;
  Playlist.editableComponents.getter();
  (*(v23 + 8))(v7, v5);
  v26 = v40;
  v25 = v41;
  if ((*(v40 + 48))(v10, 1, v41) == 1)
  {
    v24 = &unk_10118D240;
    goto LABEL_7;
  }

  v28 = v38;
  static Playlist.EditableComponents.tracklist.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v30 = *(v26 + 8);
  v30(v28, v25);
  v30(v10, v25);
  if ((v29 & 1) != 0 && (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
  {
    v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    v32 = v0 + v31;
    v33 = v37;
    sub_1000089F8(v32, v37, &qword_10119A808);
    v34 = sub_10010FC20(&qword_10118C2B0);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34) != 1;
    sub_1000095E8(v33, &qword_10119A808);
    return v35;
  }

  return 0;
}

void sub_10084C6A4()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 5)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0);
    if (v15)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();
        v9 = swift_allocObject();
        v9[2] = v0;
        v9[3] = Strong;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867F20;
        *(v10 + 24) = v9;
        v18 = sub_10018A020;
        v19 = v10;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_100029B9C;
        v17 = &unk_1010C1E60;
        v11 = _Block_copy(&aBlock);
        v12 = v7;
        v13 = Strong;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

uint64_t sub_10084C8A0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v3[13] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[19] = v8;
  v3[20] = v7;

  return _swift_task_switch(sub_10084CAA0, v8, v7);
}

uint64_t sub_10084CAA0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_1000089F8(v0[5], v3, &unk_1011814D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[13];

    sub_1000095E8(v4, &unk_1011814D0);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = v0[8];
    v17 = v0[9];
    v8 = v0[7];
    v9 = v0[4];
    (*(v0[15] + 32))(v0[17], v0[13], v0[14]);
    type metadata accessor for MusicLibrary();
    v0[21] = static MusicLibrary.shared.getter();
    v0[2] = v9;
    type metadata accessor for Track();

    sub_10010FC20(&qword_10119ED90);
    sub_100020674(&qword_101192820, &qword_10119ED90);
    MusicItemCollection.init<A>(_:)();
    (*(v7 + 104))(v17, enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.includeDuplicates(_:), v8);
    v10 = swift_task_alloc();
    v0[22] = v10;
    v11 = sub_100020674(&unk_10118C0A0, &unk_1011841D0);
    *v10 = v0;
    v10[1] = sub_10084CD64;
    v12 = v0[16];
    v13 = v0[17];
    v14 = v0[12];
    v15 = v0[9];
    v16 = v0[10];

    return MusicLibrary.add<A>(_:to:duplicatePolicy:importAllowedHandler:)(v12, v14, v13, v15, 0, 0, v16, v11);
  }
}

uint64_t sub_10084CD64()
{
  v2 = *v1;
  v16 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  *(*v1 + 184) = v0;

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v16, v4);
  if (v0)
  {
    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_10084D1E4;
  }

  else
  {
    v12 = v2[15];
    v11 = v2[16];
    v13 = v2[14];
    v14 = *(v12 + 8);
    v2[24] = v14;
    v2[25] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v11, v13);
    v8 = v2[19];
    v9 = v2[20];
    v10 = sub_10084CF88;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10084CF88()
{
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  *v1 = v0;
  v1[1] = sub_10084D018;

  return sub_10081BB60();
}

uint64_t sub_10084D018()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_10084D138, v3, v2);
}

uint64_t sub_10084D138()
{
  v1 = v0[24];
  v2 = v0[17];
  v3 = v0[14];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10084D1E4()
{
  v18 = v0;

  if (qword_10117FE30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219770);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  if (v4)
  {
    v16 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v13 = sub_1000105AC(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to add new picker selections to playlist with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v16, v8);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_10084D420()
{
  v1 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = type metadata accessor for Playlist();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel];
  if (v12)
  {
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(&v0[v13], v6, &unk_1011814D0);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1000095E8(v6, &unk_1011814D0);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      (*(v8 + 16))(v3, v11, v7);
      swift_storeEnumTagMultiPayload();
      v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(&v0[v14], v31, &unk_1011926C0);
      v27 = v11;
      if (BYTE8(v31[0]))
      {

        sub_1000095E8(v31, &unk_1011926C0);
        v15 = 0;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(v31, &unk_1011926C0);
        v15 = Strong;
      }

      v33 = 0;
      memset(v32, 0, sizeof(v32));
      v34 = xmmword_100EBCEF0;
      PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v15, v32, 0, 0, 0, 0, v30);
      sub_10010FC20(&qword_1011A4710);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = v0;
      *(inited + 40) = &off_1010C1978;
      type metadata accessor for SuggestedSongsDataSource(0);
      v18 = swift_allocObject();
      v19 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers;
      v20 = sub_100009F78(0, &qword_101197A30);
      v26 = v0;
      *(v18 + v19) = WeakArray.init(_:)(_swiftEmptyArrayStorage, v20);
      *(v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_pendingImpressionCellTags) = &_swiftEmptySetSingleton;
      *(v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_impressedSongs) = &_swiftEmptySetSingleton;
      *(v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_hasNetworkConnectivityDidChangeNotificationObserver) = 0;
      *(v18 + 16) = v12;
      sub_10086772C(v3, v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement, type metadata accessor for SuggestedSongsDataSource.Placement);
      sub_10012B7A8(v30, v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_presentationSource);

      v21 = sub_10018DB5C(inited);
      swift_setDeallocating();

      *(v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_updateReceivers) = WeakArray.init(_:)(v21, v20);

      swift_beginAccess();
      v29 = 0;
      Published.init(initialValue:)();
      swift_endAccess();
      static ApplicationCapabilities.shared.getter(v31);
      sub_100014984(v31);
      LOBYTE(v21) = BYTE1(v31[0]);
      swift_beginAccess();
      v28 = v21;
      Published.init(initialValue:)();
      swift_endAccess();
      v22 = *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor();
      v23 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
      v24 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();

      v25 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v22, v23, 1, 1, sub_100867F18, v24);

      sub_10012BA6C(v30);
      sub_100867794(v3, type metadata accessor for SuggestedSongsDataSource.Placement);

      *(v18 + OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_hasNetworkConnectivityDidChangeNotificationObserver) = v25;

      (*(v8 + 8))(v27, v7);
      *&v26[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource] = v18;
    }
  }

  return result;
}

uint64_t sub_10084DA1C()
{
  v1 = type metadata accessor for Playlist.EditableComponents();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Playlist();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v9 - 8);
  v33 = &v31 - v10;
  v11 = type metadata accessor for MusicPropertySource();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v12 + 16))(v17, v0 + v18, v11);
  (*(v12 + 104))(v15, enum case for MusicPropertySource.library(_:), v11);
  LOBYTE(v18) = static MusicPropertySource.== infix(_:_:)();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v19(v17, v11);
  if (v18 & 1) == 0 || (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v20, v8, &unk_1011814D0);
  v22 = v36;
  v21 = v37;
  if ((*(v36 + 48))(v8, 1, v37))
  {
    v23 = &unk_1011814D0;
LABEL_7:
    sub_1000095E8(v8, v23);
    return 0;
  }

  v24 = v0;
  (*(v22 + 16))(v5, v8, v21);
  sub_1000095E8(v8, &unk_1011814D0);
  v8 = v33;
  Playlist.editableComponents.getter();
  (*(v22 + 8))(v5, v21);
  v26 = v34;
  v25 = v35;
  if ((*(v34 + 48))(v8, 1, v35) == 1)
  {
    v23 = &unk_10118D240;
    goto LABEL_7;
  }

  v28 = v32;
  static Playlist.EditableComponents.tracklist.getter();
  sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
  v29 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v30 = *(v26 + 8);
  v30(v28, v25);
  v30(v8, v25);
  if (v29)
  {
    static ApplicationCapabilities.shared.getter(v38);
    sub_100014984(v38);
    if (BYTE1(v38[0]))
    {
      static ApplicationCapabilities.shared.getter(v39);
      sub_100014984(v39);
      if ((BYTE8(v39[0]) & 1) != 0 && *(v24 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10084DF2C()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v3, &unk_1011814D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000095E8(v3, &unk_1011814D0);
  }

  (*(v5 + 32))(v10, v3, v4);
  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel;
  if (!*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel))
  {
    type metadata accessor for MusicSuggestedSongsViewModel();
    (*(v5 + 16))(v8, v10, v4);
    *(v0 + v13) = MusicSuggestedSongsViewModel.__allocating_init(playlist:)();

    sub_10084D420();
  }

  return (*(v5 + 8))(v10, v4);
}

void sub_10084E17C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 9)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v0[v5], &aBlock, &unk_1011926C0);
    if (v15)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v7 = v0;
        v8 = sub_1006A6078();
        v9 = swift_allocObject();
        v9[2] = v0;
        v9[3] = Strong;
        v9[4] = v3;
        v10 = swift_allocObject();
        *(v10 + 16) = sub_100867EDC;
        *(v10 + 24) = v9;
        v18 = sub_100029B94;
        v19 = v10;
        aBlock = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_100029B9C;
        v17 = &unk_1010C1DC0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;
        v13 = Strong;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_10084E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v7 = a4();
  v8 = *a5;
  if (v7)
  {
    if (*(a1 + v8))
    {
      return;
    }

    sub_10084DF2C();
    if (!*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel))
    {
      return;
    }

    v9 = &selRef_insertItemsAtIndexPaths_;
    v10 = 1;
  }

  else
  {
    if (!*(a1 + v8))
    {
      return;
    }

    v10 = 0;
    v9 = &selRef_deleteItemsAtIndexPaths_;
  }

  *(a1 + v8) = v10;
  v11 = sub_1006A6078();
  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 *v9];
}

void sub_10084E514(void *a1)
{
  v3 = type metadata accessor for Song();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A46F8);
  __chkstk_darwin(v7 - 8);
  v9 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsCell);
  if (v9)
  {
    v10 = a1 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
    if (v11)
    {
      v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource;
      v55 = &v47 - v8;
      v50 = v6;
      v51 = v3;
      v12 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_pendingImpressionCellTags;
      swift_beginAccess();
      v13 = *(v11 + v12);
      v14 = v13 + 56;
      v15 = 1 << *(v13 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(v13 + 56);
      v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      v53 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel;
      swift_bridgeObjectRetain_n();
      v60 = v9;
      v19 = a1;
      v57 = v18;
      swift_beginAccess();
      v20 = 0;
      v21 = (v15 + 63) >> 6;
      v49 = (v4 + 16);
      v58 = v19;
      v59 = v13;
      while (v17)
      {
LABEL_15:
        v23 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v24 = *(*(v13 + 48) + ((v20 << 9) | (8 * v23)));
        v25 = [v60 viewWithTag:v24];
        if (v25)
        {
          v26 = v25;
          type metadata accessor for TaggedViewResolver.View(0);
          v27 = swift_dynamicCastClass();
          if (v27)
          {
            v28 = v27;
            [v27 frame];
            v56 = v28;
            [v28 convertRect:v19 toCoordinateSpace:?];
            v30 = v29;
            v32 = v31;
            v34 = v33;
            v36 = v35;
            sub_1000089F8(v1 + v57, v61, &unk_1011926C0);
            if (v61[8])
            {
              sub_1000095E8(v61, &unk_1011926C0);
              v37 = 0.0;
            }

            else
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(v61, &unk_1011926C0);
              if (Strong)
              {
                v39 = [Strong view];

                if (!v39)
                {
                  goto LABEL_34;
                }

                [v39 directionalLayoutMargins];
                v37 = v40;
              }

              else
              {
                v37 = 0.0;
              }

              v19 = v58;
            }

            v62.origin.x = v30;
            v62.origin.y = v32;
            v62.size.width = v34;
            v62.size.height = v36;
            MinY = CGRectGetMinY(v62);
            [v19 bounds];
            if (MinY < CGRectGetMaxY(v63) - v37)
            {
              v42 = v54;
              if (*(v1 + v54) && (swift_beginAccess(), , v52 = v1, sub_100195918(v24), v1 = v52, swift_endAccess(), , *(v1 + v42)))
              {
                v48 = sub_10010FC20(&unk_1011A4700);
                v47 = *(v48 + 48);
                v43 = v50;
                (*v49)(v50, v56 + OBJC_IVAR____TtCV5Music18TaggedViewResolver4View_song, v51);
                swift_beginAccess();

                v44 = v55;
                v45 = sub_1003B37D0(&v55[v47], v43);
                v1 = v52;
                LOBYTE(v43) = v45;
                swift_endAccess();

                *v44 = v43 & 1;
                (*(*(v48 - 8) + 56))(v44, 0, 1);
              }

              else
              {
                v46 = sub_10010FC20(&unk_1011A4700);
                v44 = v55;
                (*(*(v46 - 8) + 56))(v55, 1, 1, v46);
              }

              sub_1000095E8(v44, &qword_1011A46F8);
              v19 = v58;
              if (*(v1 + v53))
              {

                dispatch thunk of MusicSuggestedSongsViewModel.didImpress(_:)();
                v19 = v58;
              }
            }
          }

          v13 = v59;
        }
      }

      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v21)
        {

          return;
        }

        v17 = *(v14 + 8 * v22);
        ++v20;
        if (v17)
        {
          v20 = v22;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
    }
  }
}

uint64_t sub_10084EB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = type metadata accessor for IndexPath();
  v4[23] = v5;
  v6 = *(v5 - 8);
  v4[24] = v6;
  v4[25] = *(v6 + 64);
  v4[26] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_1011841D0);
  v4[27] = v7;
  v8 = *(v7 - 8);
  v4[28] = v8;
  v4[29] = *(v8 + 64);
  v4[30] = swift_task_alloc();
  type metadata accessor for Locale();
  v4[31] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[32] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for Playlist();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[37] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[38] = v11;
  v4[39] = v10;

  return _swift_task_switch(sub_10084ED90, v11, v10);
}

uint64_t sub_10084ED90()
{
  v1 = v0[34];
  v2 = v0[35];
  v3 = v0[33];
  v4 = v0[22];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[33];

    sub_1000095E8(v6, &unk_1011814D0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[35] + 32))(v0[36], v0[33], v0[34]);
    type metadata accessor for MusicLibrary();
    v9 = static MusicLibrary.shared.getter();
    v0[40] = v9;
    v10 = swift_task_alloc();
    v0[41] = v10;
    *v10 = v0;
    v10[1] = sub_10084EF70;
    v11 = v0[19];

    return Playlist.numberOfDuplicateTracks(_:library:)(v11, v9);
  }
}

uint64_t sub_10084EF70(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 336) = a1;

  v3 = *(v2 + 312);
  v4 = *(v2 + 304);

  return _swift_task_switch(sub_10084F0BC, v4, v3);
}

uint64_t sub_10084F0BC()
{
  if (v0[42] < 1)
  {
    v17 = swift_task_alloc();
    v0[43] = v17;
    *v17 = v0;
    v17[1] = sub_10084F828;
    v19 = v0[19];
    v18 = v0[20];

    return sub_1008501A8(v19, v18, 0);
  }

  else
  {
    v1 = v0[30];
    v32 = v0[29];
    v2 = v0[27];
    v3 = v0[28];
    v4 = v0[26];
    v39 = v0[24];
    v37 = v0[23];
    v5 = v0[22];
    v7 = v0[19];
    v6 = v0[20];
    v34 = v6;
    v38 = v7;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35 = *(v3 + 16);
    v35(v1, v7, v2);
    v33 = *(v39 + 16);
    v33(v4, v6, v37);
    v30 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v27 = (v32 + *(v39 + 80) + v30) & ~*(v39 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    v31 = *(v3 + 32);
    v31(v8 + v30, v1, v2);
    v39 += 32;
    v29 = *v39;
    (*v39)(v8 + v27, v4, v37);
    v9 = v5;
    v10 = String._bridgeToObjectiveC()();

    v0[6] = sub_100867814;
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_10027D328;
    v0[5] = &unk_1010C1CA8;
    v11 = _Block_copy(v0 + 2);

    v28 = objc_opt_self();
    v36 = [v28 actionWithTitle:v10 style:0 handler:v11];
    _Block_release(v11);

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v35(v1, v38, v2);
    v33(v4, v34, v37);
    v12 = swift_allocObject();
    *(v12 + 16) = v9;
    v31(v12 + v30, v1, v2);
    v29(v12 + v27, v4, v37);
    v13 = v9;
    v14 = String._bridgeToObjectiveC()();

    v0[12] = sub_100867990;
    v0[13] = v12;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_10027D328;
    v0[11] = &unk_1010C1CF8;
    v15 = _Block_copy(v0 + 8);

    v16 = [v28 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    dispatch thunk of Collection.distance(from:to:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v22 = v0[35];
    v21 = v0[36];
    v23 = v0[34];
    String.init(localized:table:bundle:locale:comment:)();
    v24 = String._bridgeToObjectiveC()();

    v25 = [objc_opt_self() alertControllerWithTitle:v24 message:0 preferredStyle:1];

    [v25 addAction:v36];
    [v25 addAction:v16];
    [v25 setPreferredAction:v16];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v25, 1, 1, 0, 0);

    (*(v22 + 8))(v21, v23);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_10084F828()
{
  v1 = *v0;

  v2 = *(v1 + 312);
  v3 = *(v1 + 304);

  return _swift_task_switch(sub_10084F948, v3, v2);
}

uint64_t sub_10084F948()
{
  v1 = v0[36];
  v2 = v0[34];
  v3 = v0[35];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10084FA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_10084FA34, 0, 0);
}

uint64_t sub_10084FA34()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10084FB34;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1008501A8(v4, v3, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10084FB34()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_10086E3A4, 0, 0);
}

uint64_t sub_10084FC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a5;
  v32 = a6;
  v28 = a4;
  v29 = a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v30 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011841D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v27 = &v27 - v14;
  v16 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  TaskPriority.init(rawValue:)();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(v15, a3, v11);
  v21 = v10;
  v22 = v7;
  (*(v8 + 16))(v10, v28, v7);
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = (v13 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v20;
  (*(v12 + 32))(&v25[v23], v27, v11);
  (*(v8 + 32))(&v25[v24], v21, v22);
  sub_10035EDD0(0, 0, v18, v32, v25);

  return sub_1000095E8(v18, &unk_101181520);
}

uint64_t sub_10084FF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  return _swift_task_switch(sub_10084FF6C, 0, 0);
}

uint64_t sub_10084FF6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 72) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_10085006C;
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    return sub_1008501A8(v4, v3, 1);
  }

  else
  {
    **(v0 + 40) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_10085006C()
{
  v1 = *(*v0 + 72);

  return _swift_task_switch(sub_100850180, 0, 0);
}

uint64_t sub_1008501A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 232) = a2;
  *(v4 + 240) = v3;
  *(v4 + 588) = a3;
  *(v4 + 224) = a1;
  sub_10010FC20(&qword_101191570);
  *(v4 + 248) = swift_task_alloc();
  v5 = sub_10010FC20(&unk_1011841D0);
  *(v4 + 256) = v5;
  *(v4 + 264) = *(v5 - 8);
  *(v4 + 272) = swift_task_alloc();
  v6 = type metadata accessor for Track();
  *(v4 + 280) = v6;
  *(v4 + 288) = *(v6 - 8);
  *(v4 + 296) = swift_task_alloc();
  *(v4 + 304) = swift_task_alloc();
  *(v4 + 312) = swift_task_alloc();
  *(v4 + 320) = sub_10010FC20(&unk_10118C0B0);
  *(v4 + 328) = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  *(v4 + 336) = v7;
  *(v4 + 344) = *(v7 - 8);
  *(v4 + 352) = swift_task_alloc();
  sub_10010FC20(&qword_101186E00);
  *(v4 + 360) = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  *(v4 + 368) = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0);
  *(v4 + 376) = swift_task_alloc();
  v8 = type metadata accessor for Playlist();
  *(v4 + 384) = v8;
  *(v4 + 392) = *(v8 - 8);
  *(v4 + 400) = swift_task_alloc();
  *(v4 + 408) = swift_task_alloc();
  *(v4 + 416) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v4 + 424) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 432) = v10;
  *(v4 + 440) = v9;

  return _swift_task_switch(sub_100850510, v10, v9);
}

id sub_100850510()
{
  v1 = v0[48];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[30];
  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_1011814D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[47];

    sub_1000095E8(v6, &unk_1011814D0);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[51];
    v10 = v0[52];
    v11 = v0[48];
    v12 = v0[49];
    v13 = v0[46];
    v14 = v0[45];
    v15 = v0[30];
    (*(v12 + 32))(v10, v0[47], v11);
    type metadata accessor for MusicLibraryPlaylistEditViewModel();
    (*(v12 + 16))(v9, v10, v11);
    v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v15 + v16, v13, &qword_10119A808);
    v17 = type metadata accessor for SocialProfile();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    v0[56] = type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    sub_10010FC20(&qword_10118C2B0);
    sub_100020674(&unk_10119F050, &qword_10118C2B0);
    v0[57] = MusicLibraryPlaylistEditViewModel.__allocating_init<A>(_:entries:author:library:)();
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v18 = result;
      [result cloudAddToPlaylistBehavior];

      dispatch thunk of MusicLibraryPlaylistEditViewModel.addInsertedEntriesToLibrary.setter();
      v20 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.beginEditing());
      v19 = swift_task_alloc();
      v0[58] = v19;
      *v19 = v0;
      v19[1] = sub_1008508D0;

      return v20();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1008508D0()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_10085230C;
  }

  else
  {
    v5 = sub_100850A0C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100850A0C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  (*(*(v0 + 344) + 16))(*(v0 + 352), *(v0 + 232), *(v0 + 336));
  *(v0 + 200) = &_swiftEmptySetSingleton;
  (*(v4 + 16))(v1, v5, v3);
  v6 = *(v2 + 36);
  *(v0 + 584) = v6;
  *(v0 + 480) = sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v6) == *(v0 + 208))
  {
LABEL_2:
    sub_1000095E8(*(v0 + 328), &unk_10118C0B0);

    v51 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v7 = swift_task_alloc();
    *(v0 + 552) = v7;
    *v7 = v0;
    v7[1] = sub_10085207C;
    v8 = *(v0 + 400);

    return v51(v8);
  }

  v10 = v0 + 16;
  while (1)
  {
    v13 = *(v0 + 312);
    v50 = *(v0 + 304);
    v15 = *(v0 + 280);
    v14 = *(v0 + 288);
    v52 = *(v0 + 588);
    v16 = dispatch thunk of Collection.subscript.read();
    v17 = *(v14 + 16);
    *(v0 + 488) = v17;
    *(v0 + 496) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v49 = v17;
    (v17)(v13);
    v16(v10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v14 + 32))(v50, v13, v15);
    swift_beginAccess();
    *(v0 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v52 != 1)
    {
      break;
    }

    v18 = *(v0 + 200);
    v19 = Track.id.getter();
    v21 = v20;
    if (!*(v18 + 16) || (v22 = v19, Hasher.init(_seed:)(), String.hash(into:)(), v23 = Hasher._finalize()(), v24 = -1 << *(v18 + 32), v25 = v23 & ~v24, ((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0))
    {
LABEL_17:
      v29 = *(v0 + 304);
      v31 = *(v0 + 280);
      v30 = *(v0 + 288);

      sub_10010FC20(&qword_101193E80);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_100EBC6B0;
      v49(v33 + v32, v29, v31);
      MusicItemCollection.init(arrayLiteral:)();
      v34 = static MusicLibrary.shared.getter();
      *(v0 + 512) = v34;
      v35 = swift_task_alloc();
      *(v0 + 520) = v35;
      *v35 = v0;
      v35[1] = sub_1008510A8;
      v36 = *(v0 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v36, v34);
    }

    v26 = ~v24;
    while (1)
    {
      v27 = (*(v18 + 48) + 16 * v25);
      v28 = *v27 == v22 && v27[1] == v21;
      if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
      if (((*(v18 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v11 = *(v0 + 584);
    v12 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v10 = v0 + 16;
    if (*(v12 + v11) == *(v0 + 208))
    {
      goto LABEL_2;
    }
  }

  v37 = *(v0 + 504);
  if (v37 == -1)
  {
    v43 = *(v0 + 248);
    v44 = type metadata accessor for Playlist.Entry();
    (*(*(v44 - 8) + 56))(v43, 1, 1, v44);
    goto LABEL_25;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  v38 = result;
  v39 = *(v0 + 504);
  if (v39 >= *(result + 16))
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v40 = *(v0 + 248);
  v41 = type metadata accessor for Playlist.Entry();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v40, v38 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39, v41);

  (*(v42 + 56))(v40, 0, 1, v41);
LABEL_25:
  v53 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v45 = swift_task_alloc();
  *(v0 + 536) = v45;
  *v45 = v0;
  v45[1] = sub_100851878;
  v46 = *(v0 + 304);
  v47 = *(v0 + 280);
  v48 = *(v0 + 248);

  return v53(v46, v48, v47, &protocol witness table for Track);
}

uint64_t sub_1008510A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  v5 = *(*v1 + 256);
  *(*v1 + 528) = a1;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 440);
  v7 = *(v2 + 432);

  return _swift_task_switch(sub_100851250, v7, v6);
}

uint64_t sub_100851250()
{
  if (*(v0 + 528) > 0)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
    v1 = *(v0 + 584);
    v2 = *(v0 + 328);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v2 + v1) == *(v0 + 208))
    {
LABEL_3:
      sub_1000095E8(*(v0 + 328), &unk_10118C0B0);

      v47 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
      v3 = swift_task_alloc();
      *(v0 + 552) = v3;
      *v3 = v0;
      v3[1] = sub_10085207C;
      v4 = *(v0 + 400);

      return v47(v4);
    }

    v6 = v0 + 16;
    while (1)
    {
      v9 = *(v0 + 312);
      v46 = *(v0 + 304);
      v11 = *(v0 + 280);
      v10 = *(v0 + 288);
      v48 = *(v0 + 588);
      v12 = dispatch thunk of Collection.subscript.read();
      v13 = *(v10 + 16);
      *(v0 + 488) = v13;
      *(v0 + 496) = (v10 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v45 = v13;
      (v13)(v9);
      v12(v6, 0);
      dispatch thunk of Collection.formIndex(after:)();
      (*(v10 + 32))(v46, v9, v11);
      swift_beginAccess();
      *(v0 + 504) = IndexPath.item.getter();
      swift_endAccess();
      if (v48 != 1)
      {
        break;
      }

      v14 = *(v0 + 200);
      v15 = Track.id.getter();
      v17 = v16;
      if (!*(v14 + 16) || (v18 = v15, Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v14 + 32), v21 = v19 & ~v20, ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0))
      {
LABEL_18:
        v25 = *(v0 + 304);
        v27 = *(v0 + 280);
        v26 = *(v0 + 288);

        sub_10010FC20(&qword_101193E80);
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_100EBC6B0;
        v45(v29 + v28, v25, v27);
        MusicItemCollection.init(arrayLiteral:)();
        v30 = static MusicLibrary.shared.getter();
        *(v0 + 512) = v30;
        v31 = swift_task_alloc();
        *(v0 + 520) = v31;
        *v31 = v0;
        v31[1] = sub_1008510A8;
        v32 = *(v0 + 272);

        return Playlist.numberOfDuplicateTracks(_:library:)(v32, v30);
      }

      v22 = ~v20;
      while (1)
      {
        v23 = (*(v14 + 48) + 16 * v21);
        v24 = *v23 == v18 && v23[1] == v17;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v7 = *(v0 + 584);
      v8 = *(v0 + 328);
      (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

      dispatch thunk of Collection.endIndex.getter();
      v6 = v0 + 16;
      if (*(v8 + v7) == *(v0 + 208))
      {
        goto LABEL_3;
      }
    }
  }

  v33 = *(v0 + 504);
  if (v33 == -1)
  {
    v39 = *(v0 + 248);
    v40 = type metadata accessor for Playlist.Entry();
    (*(*(v40 - 8) + 56))(v39, 1, 1, v40);
    goto LABEL_26;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v33 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v34 = result;
  v35 = *(v0 + 504);
  if (v35 >= *(result + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v36 = *(v0 + 248);
  v37 = type metadata accessor for Playlist.Entry();
  v38 = *(v37 - 8);
  (*(v38 + 16))(v36, v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, v37);

  (*(v38 + 56))(v36, 0, 1, v37);
LABEL_26:
  v49 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v41 = swift_task_alloc();
  *(v0 + 536) = v41;
  *v41 = v0;
  v41[1] = sub_100851878;
  v42 = *(v0 + 304);
  v43 = *(v0 + 280);
  v44 = *(v0 + 248);

  return v49(v42, v44, v43, &protocol witness table for Track);
}

uint64_t sub_100851878()
{
  v2 = *v1;
  *(*v1 + 544) = v0;

  v3 = *(v2 + 440);
  v4 = *(v2 + 432);
  if (v0)
  {
    v5 = sub_1008525BC;
  }

  else
  {
    v5 = sub_1008519B4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1008519B4()
{
  v1 = Track.id.getter();
  sub_1003B3B90((v0 + 176), v1, v2);

  swift_beginAccess();
  result = IndexPath.item.modify();
  if (__OFADD__(*v4, 1))
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 280);
  v7 = *(v0 + 288);
  v8 = *(v0 + 248);
  ++*v4;
  (result)(v0 + 48, 0);
  swift_endAccess();
  sub_1000095E8(v8, &qword_101191570);
  (*(v7 + 8))(v5, v6);
  v9 = *(v0 + 584);
  v10 = *(v0 + 328);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v10 + v9) == *(v0 + 208))
  {
LABEL_3:
    sub_1000095E8(*(v0 + 328), &unk_10118C0B0);

    v54 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v11 = swift_task_alloc();
    *(v0 + 552) = v11;
    *v11 = v0;
    v11[1] = sub_10085207C;
    v12 = *(v0 + 400);

    return v54(v12);
  }

  v13 = v0 + 16;
  while (1)
  {
    v16 = *(v0 + 312);
    v53 = *(v0 + 304);
    v18 = *(v0 + 280);
    v17 = *(v0 + 288);
    v55 = *(v0 + 588);
    v19 = dispatch thunk of Collection.subscript.read();
    v20 = *(v17 + 16);
    *(v0 + 488) = v20;
    *(v0 + 496) = (v17 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52 = v20;
    (v20)(v16);
    v19(v13, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v17 + 32))(v53, v16, v18);
    swift_beginAccess();
    *(v0 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v55 != 1)
    {
      break;
    }

    v21 = *(v0 + 200);
    v22 = Track.id.getter();
    v24 = v23;
    if (!*(v21 + 16) || (v25 = v22, Hasher.init(_seed:)(), String.hash(into:)(), v26 = Hasher._finalize()(), v27 = -1 << *(v21 + 32), v28 = v26 & ~v27, ((*(v21 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
    {
LABEL_18:
      v32 = *(v0 + 304);
      v34 = *(v0 + 280);
      v33 = *(v0 + 288);

      sub_10010FC20(&qword_101193E80);
      v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100EBC6B0;
      v52(v36 + v35, v32, v34);
      MusicItemCollection.init(arrayLiteral:)();
      v37 = static MusicLibrary.shared.getter();
      *(v0 + 512) = v37;
      v38 = swift_task_alloc();
      *(v0 + 520) = v38;
      *v38 = v0;
      v38[1] = sub_1008510A8;
      v39 = *(v0 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v39, v37);
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(v21 + 48) + 16 * v28);
      v31 = *v30 == v25 && v30[1] == v24;
      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v21 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v14 = *(v0 + 584);
    v15 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v13 = v0 + 16;
    if (*(v15 + v14) == *(v0 + 208))
    {
      goto LABEL_3;
    }
  }

  v40 = *(v0 + 504);
  if (v40 == -1)
  {
    v46 = *(v0 + 248);
    v47 = type metadata accessor for Playlist.Entry();
    (*(*(v47 - 8) + 56))(v46, 1, 1, v47);
    goto LABEL_26;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v40 < 0)
  {
    goto LABEL_30;
  }

  v41 = result;
  v42 = *(v0 + 504);
  if (v42 >= *(result + 16))
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v43 = *(v0 + 248);
  v44 = type metadata accessor for Playlist.Entry();
  v45 = *(v44 - 8);
  (*(v45 + 16))(v43, v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v42, v44);

  (*(v45 + 56))(v43, 0, 1, v44);
LABEL_26:
  v56 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v48 = swift_task_alloc();
  *(v0 + 536) = v48;
  *v48 = v0;
  v48[1] = sub_100851878;
  v49 = *(v0 + 304);
  v50 = *(v0 + 280);
  v51 = *(v0 + 248);

  return v56(v49, v51, v50, &protocol witness table for Track);
}

uint64_t sub_10085207C()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_100852E84;
  }

  else
  {
    v7 = v2[49];
    v6 = v2[50];
    v8 = v2[48];
    v9 = *(v7 + 8);
    v2[71] = v9;
    v2[72] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v8);
    v3 = v2[54];
    v4 = v2[55];
    v5 = sub_1008521B8;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1008521B8()
{
  v1 = v0[71];
  v2 = v0[52];
  v3 = v0[48];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];

  v1(v2, v3);
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10085230C()
{
  v19 = v0;

  v1 = v0[59];
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012186C8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[52];
  v8 = v0[48];
  v7 = v0[49];
  if (v5)
  {
    v17 = v0[48];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    v0[24] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v11 = String.init<A>(describing:)();
    v16 = v6;
    v13 = sub_1000105AC(v11, v12, &v18);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to insert tracks in playlist with error=%{public}s", v9, 0xCu);
    sub_10000959C(v10);

    (*(v7 + 8))(v16, v17);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1008525BC()
{
  v82 = v0;
  sub_1000095E8(*(v0 + 248), &qword_101191570);
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012186C8);
  v1(v2, v3, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 544);
  if (v8)
  {
    v77 = *(v0 + 304);
    v76 = v7;
    v11 = *(v0 + 288);
    v10 = *(v0 + 296);
    v12 = *(v0 + 280);
    v13 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v13 = 136446722;
    v14 = Track.title.getter();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v10, v12);
    v18 = sub_1000105AC(v14, v16, v81);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = sub_1000105AC(v19, v20, v81);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2082;
    *(v0 + 216) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v22 = String.init<A>(describing:)();
    v24 = sub_1000105AC(v22, v23, v81);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v6, v76, "Failed to insert track=%{public}s into playlist at indexPath=%{public}s with error=%{public}s", v13, 0x20u);
    swift_arrayDestroy();

    v17(v77, v12);
  }

  else
  {
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = *(v0 + 280);
    v28 = *(v0 + 288);

    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
  }

  v30 = *(v0 + 584);
  v31 = *(v0 + 328);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v31 + v30) == *(v0 + 208))
  {
LABEL_7:
    sub_1000095E8(*(v0 + 328), &unk_10118C0B0);

    v78 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save() + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.save());
    v32 = swift_task_alloc();
    *(v0 + 552) = v32;
    *v32 = v0;
    v32[1] = sub_10085207C;
    v33 = *(v0 + 400);

    return v78(v33);
  }

  v35 = v0 + 16;
  while (1)
  {
    v38 = *(v0 + 312);
    v75 = *(v0 + 304);
    v40 = *(v0 + 280);
    v39 = *(v0 + 288);
    v79 = *(v0 + 588);
    v41 = dispatch thunk of Collection.subscript.read();
    v42 = *(v39 + 16);
    *(v0 + 488) = v42;
    *(v0 + 496) = (v39 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v74 = v42;
    (v42)(v38);
    v41(v35, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*(v39 + 32))(v75, v38, v40);
    swift_beginAccess();
    *(v0 + 504) = IndexPath.item.getter();
    swift_endAccess();
    if (v79 != 1)
    {
      break;
    }

    v43 = *(v0 + 200);
    v44 = Track.id.getter();
    v46 = v45;
    if (!*(v43 + 16) || (v47 = v44, Hasher.init(_seed:)(), String.hash(into:)(), v48 = Hasher._finalize()(), v49 = -1 << *(v43 + 32), v50 = v48 & ~v49, ((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_22:
      v54 = *(v0 + 304);
      v56 = *(v0 + 280);
      v55 = *(v0 + 288);

      sub_10010FC20(&qword_101193E80);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_100EBC6B0;
      v74(v58 + v57, v54, v56);
      MusicItemCollection.init(arrayLiteral:)();
      v59 = static MusicLibrary.shared.getter();
      *(v0 + 512) = v59;
      v60 = swift_task_alloc();
      *(v0 + 520) = v60;
      *v60 = v0;
      v60[1] = sub_1008510A8;
      v61 = *(v0 + 272);

      return Playlist.numberOfDuplicateTracks(_:library:)(v61, v59);
    }

    v51 = ~v49;
    while (1)
    {
      v52 = (*(v43 + 48) + 16 * v50);
      v53 = *v52 == v47 && v52[1] == v46;
      if (v53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v43 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v36 = *(v0 + 584);
    v37 = *(v0 + 328);
    (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));

    dispatch thunk of Collection.endIndex.getter();
    v35 = v0 + 16;
    if (*(v37 + v36) == *(v0 + 208))
    {
      goto LABEL_7;
    }
  }

  v62 = *(v0 + 504);
  if (v62 == -1)
  {
    v68 = *(v0 + 248);
    v69 = type metadata accessor for Playlist.Entry();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    goto LABEL_30;
  }

  result = dispatch thunk of MusicLibraryPlaylistEditViewModel.entries.getter();
  if (v62 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v63 = result;
  v64 = *(v0 + 504);
  if (v64 >= *(result + 16))
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v65 = *(v0 + 248);
  v66 = type metadata accessor for Playlist.Entry();
  v67 = *(v66 - 8);
  (*(v67 + 16))(v65, v63 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v64, v66);

  (*(v67 + 56))(v65, 0, 1, v66);
LABEL_30:
  v80 = (&async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:) + async function pointer to dispatch thunk of MusicLibraryPlaylistEditViewModel.insert<A>(_:after:));
  v70 = swift_task_alloc();
  *(v0 + 536) = v70;
  *v70 = v0;
  v70[1] = sub_100851878;
  v71 = *(v0 + 304);
  v72 = *(v0 + 280);
  v73 = *(v0 + 248);

  return v80(v71, v73, v72, &protocol witness table for Track);
}

uint64_t sub_100852E84()
{
  v22 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];

  (*(v2 + 8))(v1, v3);
  v4 = v0[70];
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012186C8);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[52];
  v11 = v0[48];
  v10 = v0[49];
  if (v8)
  {
    v20 = v0[48];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v0[24] = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v14 = String.init<A>(describing:)();
    v19 = v9;
    v16 = sub_1000105AC(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to insert tracks in playlist with error=%{public}s", v12, 0xCu);
    sub_10000959C(v13);

    (*(v10 + 8))(v19, v20);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = v0[1];

  return v17();
}

id sub_100853154()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___filterKeyCommand);
  }

  else
  {
    sub_100009F78(0, &qword_1011A46F0);
    v4 = v0;
    v5 = sub_100853B54();
    v6 = static UIKeyCommand.findKeyCommand(affecting:)();

    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1008531F0()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v5 + 16))(v10, &v0[v11], v4);
  (*(v5 + 104))(v7, enum case for MusicPropertySource.catalog(_:), v4);
  LOBYTE(v11) = static MusicPropertySource.== infix(_:_:)();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    sub_100844A18();
    if (v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] == 1)
    {
      v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch] = 0;
      sub_100842788();
    }
  }

  else
  {
    v13 = *&v0[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
    if ((v13 & 0x8000000000000000) == 0)
    {
      v14 = type metadata accessor for TaskPriority();
      (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
      type metadata accessor for MainActor();
      sub_100869670(v13);
      sub_100869670(v13);
      v15 = v0;
      v16 = static MainActor.shared.getter();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = &protocol witness table for MainActor;
      v17[4] = v13;
      v17[5] = v15;
      sub_10086E3AC(0, 0, v3, &unk_100EE5238, v17);
      sub_1004E6028(v13);
    }
  }
}

uint64_t sub_1008534B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100853550, v7, v6);
}

uint64_t sub_100853550()
{
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  swift_unknownObjectWeakInit();
  v4 = (&async function pointer to dispatch thunk of MusicAutoupdatingResponse.update(waitForReload:_:) + async function pointer to dispatch thunk of MusicAutoupdatingResponse.update(waitForReload:_:));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100853640;

  return v4(1, &unk_100EE5248, v1);
}

uint64_t sub_100853640()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1008537E0;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_10085375C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10085375C()
{
  v1 = *(v0 + 24);

  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) == 1)
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) = 0;
    sub_100842788();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1008537E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100853850(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_10010FC20(&unk_1011A46C0);
  v2[7] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_10118A3B0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100853988, v5, v4);
}

uint64_t sub_100853988()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  if (Strong)
  {
    v5 = Strong;
    sub_1008260A0(v0[7]);

    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v7 = v0[9];
      v6 = v0[10];
      v9 = v0[7];
      v8 = v0[8];
      (*(v7 + 8))(v0[5], v8);
      v10 = *(v7 + 32);
      v10(v6, v9, v8);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v3 + 56))(v0[7], 1, 1, v0[8]);
  }

  v11 = v0[9];
  v12 = v0[7];
  v13 = v0[8];
  v10 = *(v11 + 32);
  v10(v0[10], v0[5], v13);
  if ((*(v11 + 48))(v12, 1, v13) != 1)
  {
    sub_1000095E8(v0[7], &unk_1011A46C0);
  }

LABEL_7:
  v10(v0[5], v0[10], v0[8]);

  v14 = v0[1];

  return v14();
}

id sub_100853B74(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_100853BD8(uint64_t a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = [objc_allocWithZone(UISearchController) initWithSearchResultsController:0];
  [v4 setSearchResultsUpdater:a1];
  v5 = [v4 searchBar];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setPlaceholder:v6];

  v7 = [v4 searchBar];
  [v7 setReturnKeyType:9];

  [v4 setObscuresBackgroundDuringPresentation:0];
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v12, &unk_1011926C0);
  if (v12[8])
  {
    sub_1000095E8(v12, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v12, &unk_1011926C0);
    if (Strong)
    {
      v10 = [Strong navigationItem];

      if (v10)
      {
        [v10 setHidesSearchBarWhenScrolling:1];
        [v10 setPreferredSearchBarPlacement:2];
      }
    }
  }

  return v4;
}

uint64_t sub_100853E70(uint64_t result)
{
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching;
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != (result & 1))
  {
    if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
    {
      goto LABEL_11;
    }

    sub_1008395B0();
    v3 = (v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
    v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
    *v3 = 0;
    v3[1] = 0;
    if (v4)
    {
      sub_100842788();
    }

    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v5, v15, &unk_1011926C0);
    if (v15[8])
    {
      sub_1000095E8(v15, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v15, &unk_1011926C0);
      if (Strong)
      {
        v7 = [Strong contentScrollViewForEdge:1];

        if (v7)
        {
          [v7 setKeyboardDismissMode:1];
        }
      }
    }

    if ((*(v1 + v2) & 1) == 0)
    {
LABEL_11:
      v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v8, v13, &unk_1011926C0);
      if (v13[8])
      {
        sub_1000095E8(v13, &unk_1011926C0);
      }

      else
      {
        v9 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0);
        if (v9)
        {
          v10 = v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork];
          v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = 0;
          if (v10)
          {
            [*&v9[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer] setAlpha:1.0];
          }
        }
      }
    }

    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v11, v14, &unk_1011926C0);
    if (v14[8])
    {
      sub_1000095E8(v14, &unk_1011926C0);
    }

    else
    {
      v12 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0);
      if (v12)
      {
        v12[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
      }
    }

    sub_100841720();
    return sub_100844A18();
  }

  return result;
}

uint64_t sub_10085411C()
{
  v52 = type metadata accessor for Playlist.Variant();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v46 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v49);
  v51 = &v45 - v2;
  v3 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v3 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v54 = &v45 - v6;
  __chkstk_darwin(v7);
  v55 = &v45 - v8;
  v9 = sub_10010FC20(&qword_10118C2B0);
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v48 = &v45 - v10;
  v11 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v11 - 8);
  v13 = &v45 - v12;
  v14 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v21, v16, &unk_1011814D0);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v24 = *(v18 + 32);
    v45 = v17;
    v24(v20, v16, v17);
    v25 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1000089F8(v0 + v25, v13, &qword_10119A808);
    v26 = v53;
    if ((*(v53 + 48))(v13, 1, v9))
    {
      sub_1000095E8(v13, &qword_10119A808);
      v27 = v54;
      v28 = v55;
    }

    else
    {
      v33 = v48;
      (*(v26 + 16))(v48, v13, v9);
      sub_1000095E8(v13, &qword_10119A808);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v34 = dispatch thunk of Collection.distance(from:to:)();
      (*(v26 + 8))(v33, v9);
      v27 = v54;
      v28 = v55;
      if (v34 > 0)
      {
        goto LABEL_11;
      }
    }

    v29 = sub_100853B54();
    v30 = [v29 isActive];

    if (!v30)
    {
      (*(v18 + 8))(v20, v45);
      goto LABEL_8;
    }

LABEL_11:
    Playlist.variant.getter();
    v35 = v50;
    v36 = v52;
    (*(v50 + 104))(v27, enum case for Playlist.Variant.genius(_:), v52);
    (*(v35 + 56))(v27, 0, 1, v36);
    v37 = *(v49 + 48);
    v38 = v51;
    sub_1000089F8(v28, v51, &unk_10119EF50);
    v53 = v37;
    sub_1000089F8(v27, v38 + v37, &unk_10119EF50);
    v39 = *(v35 + 48);
    if (v39(v38, 1, v36) == 1)
    {
      sub_1000095E8(v27, &unk_10119EF50);
      sub_1000095E8(v55, &unk_10119EF50);
      (*(v18 + 8))(v20, v45);
      if (v39(v38 + v53, 1, v36) == 1)
      {
        v22 = &unk_10119EF50;
        v23 = v38;
        goto LABEL_3;
      }
    }

    else
    {
      v49 = v20;
      v40 = v47;
      sub_1000089F8(v38, v47, &unk_10119EF50);
      v41 = v53;
      if (v39(v38 + v53, 1, v36) != 1)
      {
        v42 = v46;
        (*(v35 + 32))(v46, v38 + v41, v36);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
        v43 = dispatch thunk of static Equatable.== infix(_:_:)();
        v44 = *(v35 + 8);
        v44(v42, v36);
        sub_1000095E8(v54, &unk_10119EF50);
        sub_1000095E8(v55, &unk_10119EF50);
        (*(v18 + 8))(v49, v45);
        v44(v40, v36);
        sub_1000095E8(v38, &unk_10119EF50);
        v31 = v43 ^ 1;
        return v31 & 1;
      }

      sub_1000095E8(v54, &unk_10119EF50);
      sub_1000095E8(v55, &unk_10119EF50);
      (*(v18 + 8))(v49, v45);
      (*(v35 + 8))(v40, v36);
    }

    sub_1000095E8(v38, &unk_1011A4670);
    v31 = 1;
    return v31 & 1;
  }

  v22 = &unk_1011814D0;
  v23 = v16;
LABEL_3:
  sub_1000095E8(v23, v22);
LABEL_8:
  v31 = 0;
  return v31 & 1;
}

void sub_1008549A8(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled) != (a1 & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearchEnabled))
    {
      v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v2, v13, &unk_1011926C0);
      if (v14)
      {
        sub_1000095E8(v13, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0);
        if (Strong)
        {
          v5 = sub_100853154();
          [Strong addKeyCommand:v5];
        }
      }

      sub_1000089F8(v1 + v2, v13, &unk_1011926C0);
      if ((v14 & 1) == 0)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v13, &unk_1011926C0);
        if (v6)
        {
          v7 = [v6 navigationItem];

          v8 = sub_100853B54();
          [v7 setSearchController:v8];
        }

        return;
      }

LABEL_15:
      sub_1000095E8(v13, &unk_1011926C0);
      return;
    }

    v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v3, v13, &unk_1011926C0);
    if (v14)
    {
      sub_1000095E8(v13, &unk_1011926C0);
    }

    else
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0);
      if (v9)
      {
        v10 = sub_100853154();
        [v9 removeKeyCommand:v10];
      }
    }

    sub_1000089F8(v1 + v3, v13, &unk_1011926C0);
    if (v14)
    {
      goto LABEL_15;
    }

    v11 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v13, &unk_1011926C0);
    if (v11)
    {
      v12 = [v11 navigationItem];

      [v12 setSearchController:0];
    }
  }
}

uint64_t sub_100854C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  v16 = type metadata accessor for Playlist.Entry();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1000089F8(a1, v5, &unk_10118BCE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_10118BCE0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_10085939C(v12);
    (*(v7 + 8))(v9, v6);
    sub_1000095E8(v15, &qword_101191570);
    sub_10003D17C(v12, v15, &qword_101191570);
  }

  sub_100854F30(v15, v19);
  return sub_1000095E8(v15, &qword_101191570);
}

void sub_100854F30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47 = a1;
  v39 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v39);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v40 = *(v6 - 8);
  __chkstk_darwin(v6);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v42 = v28 - v9;
  __chkstk_darwin(v10);
  v38 = v28 - v11;
  v45 = type metadata accessor for Playlist();
  v37 = *(v45 - 8);
  __chkstk_darwin(v45);
  __chkstk_darwin(v12);
  v41 = v28 - v13;
  __chkstk_darwin(v14);
  v30 = v28 - v15;
  v16 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v16 - 8);
  v31 = v28 - v17;
  v34 = type metadata accessor for Playlist.Entry.InternalItem();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v19 - 8);
  v36 = v28 - v20;
  v44 = type metadata accessor for Playlist.Entry();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  __chkstk_darwin(v21);
  v46 = v28 - v22;
  v23 = type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
  __chkstk_darwin(v23);
  v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v48 = v3;
  sub_1000089F8(v3 + v24, v49, &unk_1011926C0);
  if (v49[8])
  {
    sub_1000095E8(v49, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v49, &unk_1011926C0);
    if (Strong)
    {
      v28[1] = v6;
      v29 = Strong;
      sub_10085678C(v47, a2);
      v27 = type metadata accessor for PlaybackIntentDescriptor(0);
      (*(*(v27 - 8) + 56))(a2, 0, 1, v27);

      return;
    }
  }

  v26 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
}

uint64_t sub_1008564D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v18 - v14;
  v16 = type metadata accessor for Playlist.Entry();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1000089F8(a1, v5, &unk_10118BCE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_10118BCE0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    sub_10085939C(v12);
    (*(v7 + 8))(v9, v6);
    sub_1000095E8(v15, &qword_101191570);
    sub_10003D17C(v12, v15, &qword_101191570);
  }

  sub_10085678C(v15, v18);
  return sub_1000095E8(v15, &qword_101191570);
}

uint64_t sub_10085678C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a1;
  v162 = a2;
  v160 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v160);
  v161 = &v145 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v168 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_1011A46C0);
  __chkstk_darwin(v5 - 8);
  v157 = &v145 - v6;
  v159 = sub_10010FC20(&qword_10118A3B0);
  v163 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v145 - v7;
  v8 = sub_10010FC20(&unk_101188910);
  __chkstk_darwin(v8 - 8);
  v166 = &v145 - v9;
  v175 = type metadata accessor for MusicPropertySource();
  v178 = *(v175 - 8);
  __chkstk_darwin(v175);
  v177 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118CDB0);
  v12 = __chkstk_darwin(v11 - 8);
  v167 = &v145 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v184 = &v145 - v15;
  v16 = __chkstk_darwin(v14);
  v165 = &v145 - v17;
  v18 = __chkstk_darwin(v16);
  v153 = &v145 - v19;
  __chkstk_darwin(v18);
  v169 = &v145 - v20;
  v183 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v182 = *(v183 - 8);
  v21 = __chkstk_darwin(v183);
  v174 = &v145 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v173 = &v145 - v24;
  __chkstk_darwin(v23);
  v181 = &v145 - v25;
  v26 = sub_10010FC20(&qword_101191570);
  v27 = __chkstk_darwin(v26 - 8);
  v176 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v155 = &v145 - v30;
  v31 = __chkstk_darwin(v29);
  v164 = &v145 - v32;
  v33 = __chkstk_darwin(v31);
  v152 = &v145 - v34;
  __chkstk_darwin(v33);
  v185 = (&v145 - v35);
  v188 = type metadata accessor for Playlist.Entry();
  v190 = *(v188 - 8);
  __chkstk_darwin(v188);
  v180 = &v145 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_10010FC20(&qword_10118C2B0);
  v186 = *(v187 - 8);
  v37 = __chkstk_darwin(v187);
  v151 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v154 = &v145 - v40;
  __chkstk_darwin(v39);
  v172 = &v145 - v41;
  v42 = sub_10010FC20(&qword_10119A808);
  v43 = __chkstk_darwin(v42 - 8);
  v156 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v46 = &v145 - v45;
  v47 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v47 - 8);
  v49 = &v145 - v48;
  v50 = type metadata accessor for Playlist();
  v51 = *(v50 - 8);
  __chkstk_darwin(v50);
  v53 = (&v145 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v2[v54], v49, &unk_1011814D0);
  v197 = v51;
  if ((*(v51 + 48))(v49, 1, v50) == 1)
  {
    sub_1000095E8(v49, &unk_1011814D0);
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v197 + 32))(v53, v49, v50);
  v56 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  v150 = v2;
  swift_beginAccess();
  sub_1000089F8(&v2[v56], v46, &qword_10119A808);
  v57 = v186;
  v58 = *(v186 + 48);
  v59 = v187;
  v148 = v186 + 48;
  v147 = v58;
  if (v58(v46, 1, v187))
  {
    sub_1000095E8(v46, &qword_10119A808);
    v60 = v189;
    v61 = v185;
    goto LABEL_7;
  }

  v62 = v172;
  (*(v57 + 16))(v172, v46, v59);
  sub_1000095E8(v46, &qword_10119A808);
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v57 + 8))(v62, v59);
  v60 = v189;
  v61 = v185;
  if (v194 != v191)
  {
LABEL_7:
    v65 = v50;
    sub_1000089F8(v60, v61, &qword_101191570);
    v66 = v190;
    v67 = *(v190 + 48);
    v68 = v188;
    v172 = (v190 + 48);
    v185 = v67;
    if (v67(v61, 1, v188) == 1)
    {
      sub_1000095E8(v61, &qword_101191570);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v69 = v65;
      v70 = *Player.state<A>(for:)(v53);
      v71 = v174;
      (*(v70 + 256))();

      v72 = v182;
      v73 = v181;
      v74 = v183;
      (*(v182 + 104))(v181, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v183);
      v75 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v76 = v53;
      v77 = *(v72 + 8);
      v77(v73, v74);
      if ((v75 & 1) == 0)
      {
        v190 = type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
        sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
        v179 = swift_allocError();
        v101 = v74;
        v103 = v102;
        v104 = *(sub_10010FC20(&unk_1011A46D0) + 48);
        v146 = v69;
        v105 = v197;
        (*(v197 + 16))(v103, v53, v69);
        (*(v72 + 16))(v103 + v104, v71, v101);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v77(v71, v101);
        return (*(v105 + 8))(v53, v146);
      }

      v78 = v184;
      v77(v71, v74);
      v50 = v69;
      v79 = v150;
      v80 = v188;
    }

    else
    {
      v149 = v53;
      v81 = v180;
      (*(v66 + 32))(v180, v61, v68);
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v82 = Player.state<A>(for:)(v81);
      v83 = v181;
      (*(*v82 + 256))();
      v84 = v182;
      v85 = v173;
      v86 = v183;
      (*(v182 + 104))(v173, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v183);
      v87 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
      v88 = *(v84 + 8);
      v88(v85, v86);
      v88(v83, v86);
      v50 = v65;
      v78 = v184;
      if ((v87 & 1) == 0)
      {
        type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
        sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
        swift_allocError();
        v107 = v106;
        v108 = *(sub_10010FC20(&qword_1011A46A8) + 48);
        v109 = v190;
        v110 = v180;
        (*(v190 + 16))(v107, v180, v68);
        *(v107 + v108) = v82;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v109 + 8))(v110, v68);
        goto LABEL_44;
      }

      (*(v190 + 8))(v180, v68);

      v76 = v149;
      v80 = v68;
      v79 = v150;
    }

    v89 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v90 = v178;
    v91 = &v79[v89];
    v92 = v177;
    v93 = v175;
    (*(v178 + 16))(v177, v91, v175);
    v94 = (*(v90 + 88))(v92, v93);
    v95 = v176;
    if (v94 == enum case for MusicPropertySource.catalog(_:))
    {
      v96 = v79[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching] == 1;
      v149 = v76;
      if (!v96)
      {
        goto LABEL_30;
      }

      v97 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      v98 = &v79[v97];
      v99 = v156;
      sub_1000089F8(v98, v156, &qword_10119A808);
      v100 = v187;
      if (v147(v99, 1, v187) == 1)
      {
        sub_1000095E8(v99, &qword_10119A808);
LABEL_29:
        v95 = v176;
LABEL_30:
        v195 = v50;
        v196 = &protocol witness table for Playlist;
        v116 = sub_10001C8B8(&v194);
        (*(v197 + 16))(v116, v76, v50);
        v117 = v164;
        sub_1000089F8(v189, v164, &qword_101191570);
        if (v185(v117, 1, v80) == 1)
        {
          sub_1000095E8(v117, &qword_101191570);
          v191 = 0u;
          v192 = 0u;
          v193 = 0;
        }

        else
        {
          *(&v192 + 1) = v80;
          v193 = &protocol witness table for Playlist.Entry;
          v118 = sub_10001C8B8(&v191);
          (*(v190 + 32))(v118, v117, v80);
        }

        v119 = v170;
        v120 = v169;
        v121 = enum case for MusicPlaybackSource.catalog(_:);
        v122 = type metadata accessor for MusicPlaybackSource();
        v123 = *(v122 - 8);
        v124 = v166;
        (*(v123 + 104))(v166, v121, v122);
        (*(v123 + 56))(v124, 0, 1, v122);
        v125 = v165;
        MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
        v126 = v171;
LABEL_34:
        (*(v119 + 56))(v125, 0, 1, v126);
        sub_10003D17C(v125, v120, &unk_10118CDB0);
        v127 = v167;
        sub_1000089F8(v120, v167, &unk_10118CDB0);
        if ((*(v119 + 48))(v127, 1, v126) == 1)
        {
          sub_1000095E8(v127, &unk_10118CDB0);
          type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
          sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v128 = v120;
        }

        else
        {
          v129 = v168;
          (*(v119 + 32))(v168, v127, v126);
          v130 = v161;
          (*(v119 + 16))(v161, v129, v126);
          swift_storeEnumTagMultiPayload();
          sub_1000089F8(v189, v95, &qword_101191570);
          v131 = v188;
          if (v185(v95, 1, v188) == 1)
          {
            sub_1000095E8(v95, &qword_101191570);
            v195 = v50;
            v196 = &protocol witness table for Playlist;
            v132 = sub_10001C8B8(&v194);
            (*(v197 + 16))(v132, v149, v50);
          }

          else
          {
            *(&v192 + 1) = v131;
            v193 = &protocol witness table for Playlist.Entry;
            v133 = sub_10001C8B8(&v191);
            (*(v190 + 32))(v133, v95, v131);
            sub_100059A8C(&v191, &v194);
          }

          v134 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          v135 = v150;
          swift_beginAccess();
          sub_1000089F8(v135 + v134, &v191, &unk_1011926C0);
          if (BYTE8(v191))
          {
            sub_1000095E8(&v191, &unk_1011926C0);
            Strong = 0;
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v191, &unk_1011926C0);
          }

          *(&v192 + 1) = type metadata accessor for PlaylistDetailDataSource(0);
          v193 = &off_1010C1940;
          *&v191 = v135;
          v137 = v135;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v130, &v194, 3, 0, 0, 1, 0, 1, v162, Strong, &v191);
          (*(v119 + 8))(v168, v126);
          v128 = v120;
        }

        sub_1000095E8(v128, &unk_10118CDB0);
        goto LABEL_44;
      }

      v114 = v186;
      v115 = v154;
      (*(v186 + 32))(v154, v99, v100);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      if (v194 == v191)
      {
        (*(v114 + 8))(v115, v100);
        goto LABEL_29;
      }

      (*(v114 + 16))(v151, v115, v100);
      sub_1000089F8(v189, v152, &qword_101191570);
      sub_100020674(&unk_10119F050, &qword_10118C2B0);
      v125 = v153;
      v142 = v179;
      MusicPlaybackIntentDescriptor.init<A, B>(items:startingAt:)();
      if (!v142)
      {
        (*(v114 + 8))(v115, v100);
        v126 = v171;
        v119 = v170;
        v120 = v169;
        v95 = v176;
        goto LABEL_34;
      }

      (*(v114 + 8))(v115, v100);
LABEL_50:
      v63 = *(v197 + 8);
      v64 = v76;
      return v63(v64, v50);
    }

    if (v94 != enum case for MusicPropertySource.library(_:))
    {
      type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
      sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v197 + 8))(v76, v50);
      return (*(v178 + 8))(v177, v93);
    }

    v111 = v157;
    sub_1008260A0(v157);
    v112 = v163;
    v113 = v159;
    if ((*(v163 + 48))(v111, 1, v159) == 1)
    {
      sub_1000095E8(v111, &unk_1011A46C0);
      type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
      sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_50;
    }

    v149 = v76;
    v138 = v158;
    (*(v112 + 32))(v158, v111, v113);
    MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
    v139 = v163;
    v195 = v113;
    v196 = sub_100020674(&qword_1011831B8, &qword_10118A3B0);
    v140 = sub_10001C8B8(&v194);
    (*(v139 + 16))(v140, v138, v113);
    v141 = v155;
    sub_1000089F8(v189, v155, &qword_101191570);
    if (v185(v141, 1, v80) == 1)
    {
      sub_1000095E8(v141, &qword_101191570);
      v191 = 0u;
      v192 = 0u;
      v193 = 0;
    }

    else
    {
      *(&v192 + 1) = v80;
      v193 = &protocol witness table for Playlist.Entry;
      v143 = sub_10001C8B8(&v191);
      (*(v190 + 32))(v143, v141, v80);
    }

    v144 = v179;
    v126 = v171;
    v119 = v170;
    v120 = v169;
    MusicPlaybackIntentDescriptor.init(request:startingAt:)();
    if (!v144)
    {
      (*(v139 + 8))(v158, v113);
      v125 = v78;
      goto LABEL_34;
    }

    (*(v139 + 8))(v158, v113);
LABEL_44:
    v63 = *(v197 + 8);
    v64 = v149;
    return v63(v64, v50);
  }

  type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
  sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v63 = *(v197 + 8);
  v64 = v53;
  return v63(v64, v50);
}

uint64_t sub_100858450@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v90 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v90);
  v92 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v106 = *(v110 - 8);
  __chkstk_darwin(v110);
  v91 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10010FC20(&unk_1011A4690);
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v103 = &v89 - v5;
  v109 = type metadata accessor for MusicPropertySource();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v7 - 8);
  v100 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v97 = &v89 - v10;
  __chkstk_darwin(v11);
  v102 = &v89 - v12;
  __chkstk_darwin(v13);
  v111 = &v89 - v14;
  v112 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v112 - 1);
  __chkstk_darwin(v112);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v89 - v19;
  v21 = type metadata accessor for Playlist.Entry.InternalItem();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v95 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v101 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  v113 = a1;
  Playlist.Entry.internalItem.getter();
  v29 = Playlist.Entry.InternalItem.id.getter();
  v31 = v30;
  v32 = *(v22 + 8);
  v104 = v21;
  v96 = v22 + 8;
  v94 = v32;
  v32(v28, v21);
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  v34 = v121;
  swift_beginAccess();
  v35 = *&v34[v33];
  if (*(v35 + 16) && (, v36 = sub_100019C10(v29, v31), v38 = v37, , (v38 & 1) != 0))
  {
    v39 = *(*(v35 + 56) + 8 * v36);

    v41 = v113;
  }

  else
  {

    v41 = v113;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for Playlist.Entry();
    v40 = Player.state<A>(for:)(v41);
    v39 = v40;
  }

  (*(*v39 + 256))(v40);
  v42 = v112;
  (*(v15 + 104))(v17, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v112);
  v43 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v44 = *(v15 + 8);
  v44(v17, v42);
  v44(v20, v42);
  if ((v43 & 1) == 0)
  {
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    v57 = v41;
    v59 = v58;
    v60 = *(sub_10010FC20(&qword_1011A46A8) + 48);
    v61 = type metadata accessor for Playlist.Entry();
    (*(*(v61 - 8) + 16))(v59, v57, v61);
    *(v59 + v60) = v39;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v45 = v106;
  v46 = v111;
  v112 = *(v106 + 56);
  (v112)(v111, 1, 1, v110);
  v47 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  v48 = v121;
  swift_beginAccess();
  v49 = v108;
  v50 = &v48[v47];
  v51 = v107;
  v52 = v109;
  (*(v108 + 16))(v107, v50, v109);
  v53 = (*(v49 + 88))(v51, v52);
  if (v53 == enum case for MusicPropertySource.catalog(_:))
  {
    Playlist.Entry.internalItem.getter();
    sub_100866F00(&qword_1011A46B8, &type metadata accessor for Playlist.Entry.InternalItem);
    v54 = v102;
    v55 = v105;
    MusicPlaybackIntentDescriptor.init<A>(item:)();
    sub_1000095E8(v46, &unk_10118CDB0);
    if (v55)
    {
    }

    v64 = v54;
    goto LABEL_23;
  }

  if (v53 != enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000095E8(v46, &unk_10118CDB0);
    return (*(v108 + 8))(v107, v109);
  }

  type metadata accessor for Track();
  MusicLibraryRequest.init()();
  v62 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  v63 = v121;
  swift_beginAccess();
  sub_1000089F8(&v63[v62], &v117, &unk_1011926C0);
  if (v118)
  {
    sub_1000095E8(&v117, &unk_1011926C0);
LABEL_19:
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_20;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v117, &unk_1011926C0);
  if (!Strong)
  {
    goto LABEL_19;
  }

  v66 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

LABEL_20:
  v67 = v99;
  v68 = v103;
  MusicLibraryRequest.library.setter();
  MusicLibraryRequest.includeNonLibraryAddedContent.setter();
  swift_getKeyPath();
  v69 = v95;
  v70 = v67;
  Playlist.Entry.internalItem.getter();
  v71 = Playlist.Entry.InternalItem.id.getter();
  v73 = v72;
  v94(v69, v104);
  v117 = v71;
  v118 = v73;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  v119 = v70;
  v120 = sub_100020674(&qword_1011A46B0, &unk_1011A4690);
  v74 = sub_10001C8B8(&v117);
  v75 = v98;
  (*(v98 + 16))(v74, v68, v70);
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v64 = v97;
  v76 = v105;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  if (v76)
  {

    (*(v75 + 8))(v68, v70);
    return sub_1000095E8(v111, &unk_10118CDB0);
  }

  (*(v75 + 8))(v68, v70);
  sub_1000095E8(v111, &unk_10118CDB0);
  v45 = v106;
LABEL_23:
  v77 = v110;
  (v112)(v64, 0, 1, v110);
  v78 = v64;
  v79 = v111;
  sub_10003D17C(v78, v111, &unk_10118CDB0);
  v80 = v100;
  sub_1000089F8(v79, v100, &unk_10118CDB0);
  if ((*(v45 + 48))(v80, 1, v77) == 1)
  {
    sub_1000095E8(v80, &unk_10118CDB0);
    type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError(0);
    sub_100866F00(&qword_1011A46A0, type metadata accessor for PlaylistDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    return sub_1000095E8(v79, &unk_10118CDB0);
  }

  else
  {
    v81 = v91;
    (*(v45 + 32))(v91, v80, v77);
    v82 = v92;
    (*(v45 + 16))(v92, v81, v77);
    swift_storeEnumTagMultiPayload();
    v83 = type metadata accessor for Playlist.Entry();
    v119 = v83;
    v120 = &protocol witness table for Playlist.Entry;
    v84 = sub_10001C8B8(&v117);
    (*(*(v83 - 8) + 16))(v84, v113, v83);
    v85 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    v86 = v121;
    swift_beginAccess();
    sub_1000089F8(&v86[v85], &v114, &unk_1011926C0);
    if (BYTE8(v114))
    {
      sub_1000095E8(&v114, &unk_1011926C0);
      v87 = 0;
    }

    else
    {
      v87 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v114, &unk_1011926C0);
    }

    *(&v115 + 1) = type metadata accessor for PlaylistDetailDataSource(0);
    v116 = &off_1010C1940;
    *&v114 = v121;
    v88 = v121;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v82, &v117, 3, 0, 0, 1, 0, 1, v93, v87, &v114);

    (*(v45 + 8))(v81, v77);
    return sub_1000095E8(v79, &unk_10118CDB0);
  }
}

uint64_t sub_10085939C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_10010FC20(&qword_10118C2B0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    while (*(v13 + v12) != 2)
    {
      if (v11 == ++v12)
      {
        goto LABEL_5;
      }
    }

    v17 = v1;
    if (IndexPath.section.getter() == v12)
    {
      v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      sub_1000089F8(v17 + v18, v5, &qword_10119A808);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1000095E8(v5, &qword_10119A808);
      }

      else
      {
        (*(v7 + 32))(v9, v5, v6);
        v19 = IndexPath.item.getter();
        sub_100020674(&unk_101186ED0, &qword_10118C2B0);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        if (v19 < dispatch thunk of Collection.distance(from:to:)())
        {
          IndexPath.item.getter();
          MusicItemCollection.subscript.getter();
          (*(v7 + 8))(v9, v6);
          v14 = 0;
          goto LABEL_7;
        }

        (*(v7 + 8))(v9, v6);
      }
    }
  }

  else
  {
LABEL_5:
    IndexPath.section.getter();
  }

  v14 = 1;
LABEL_7:
  v15 = type metadata accessor for Playlist.Entry();
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1008596BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_10010FC20(&qword_10118C2B0);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v24 = &v24 - v8;
  v9 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v11, &unk_10118BCE0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_10118BCE0);
LABEL_8:
    v21 = 1;
    v20 = v26;
    goto LABEL_9;
  }

  (*(v13 + 32))(v15, v11, v12);
  v16 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v2 + v16, v6, &qword_10119A808);
  v17 = v25;
  if ((*(v25 + 48))(v6, 1, v7) == 1)
  {
    (*(v13 + 8))(v15, v12);
    sub_1000095E8(v6, &qword_10119A808);
    goto LABEL_8;
  }

  v18 = v24;
  (*(v17 + 32))(v24, v6, v7);
  v19 = IndexPath.item.getter();
  sub_100020674(&unk_101186ED0, &qword_10118C2B0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v19 >= dispatch thunk of Collection.distance(from:to:)())
  {
    (*(v17 + 8))(v18, v7);
    (*(v13 + 8))(v15, v12);
    goto LABEL_8;
  }

  IndexPath.item.getter();
  v20 = v26;
  MusicItemCollection.subscript.getter();
  (*(v17 + 8))(v18, v7);
  (*(v13 + 8))(v15, v12);
  v21 = 0;
LABEL_9:
  v22 = type metadata accessor for Playlist.Entry();
  return (*(*(v22 - 8) + 56))(v20, v21, 1, v22);
}

unint64_t sub_100859B24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_5:
    IndexPath.section.getter();
LABEL_6:
    v7 = type metadata accessor for Track();
    return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
  }

  v5 = 0;
  v6 = v3 + 32;
  while (*(v6 + v5) != 3)
  {
    if (v4 == ++v5)
    {
      goto LABEL_5;
    }
  }

  v9 = v1;
  if (IndexPath.section.getter() != v5)
  {
    goto LABEL_6;
  }

  v10 = IndexPath.item.getter();
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  if (v10 >= *(*(v1 + v11) + 16))
  {
    goto LABEL_6;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = *(v9 + v11);
    if (result < *(v13 + 16))
    {
      v14 = type metadata accessor for Track();
      v15 = *(v14 - 8);
      (*(v15 + 16))(a1, v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12, v14);
      return (*(v15 + 56))(a1, 0, 1, v14);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100859CF8@<X0>(void *a1@<X8>)
{
  v89 = a1;
  v81 = type metadata accessor for Playlist.Variant();
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v80);
  v85 = &v76 - v3;
  v4 = sub_10010FC20(&unk_10119EF50);
  v5 = __chkstk_darwin(v4 - 8);
  v79 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v82 = &v76 - v8;
  __chkstk_darwin(v7);
  v83 = &v76 - v9;
  v10 = sub_10010FC20(&qword_101183A20);
  v11 = __chkstk_darwin(v10 - 8);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v86 = &v76 - v14;
  __chkstk_darwin(v13);
  v87 = &v76 - v15;
  v16 = type metadata accessor for MusicPropertySource();
  v88 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v19 - 8);
  v21 = &v76 - v20;
  v22 = type metadata accessor for Playlist();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v26, v21, &unk_1011814D0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1000095E8(v21, &unk_1011814D0);
    v27 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v27 - 8) + 56))(v89, 1, 1, v27);
  }

  (*(v23 + 32))(v25, v21, v22);
  v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v30 = v88;
  (*(v88 + 16))(v18, v1 + v29, v16);
  v31 = (*(v30 + 88))(v18, v16);
  v32 = v22;
  if (v31 == enum case for MusicPropertySource.catalog(_:))
  {
    v33 = v1;
    v34 = v23;
    v35 = Playlist.catalogID.getter();
    if (v36)
    {
      v37 = v36;
      v88 = v35;
    }

    else
    {
      v88 = Playlist.id.getter();
      v37 = v50;
    }

    v51 = v87;
    v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sourceURL;
    swift_beginAccess();
    v53 = v33 + v52;
    v54 = v86;
    sub_1000089F8(v53, v86, &qword_101183A20);
    v55 = type metadata accessor for URL();
    v56 = *(v55 - 8);
    v57 = *(v56 + 48);
    if (v57(v54, 1, v55) == 1)
    {
      Playlist.url.getter();
      (*(v34 + 8))(v25, v32);
      if (v57(v54, 1, v55) != 1)
      {
        sub_1000095E8(v54, &qword_101183A20);
      }
    }

    else
    {
      (*(v34 + 8))(v25, v32);
      (*(v56 + 32))(v51, v54, v55);
      (*(v56 + 56))(v51, 0, 1, v55);
    }

    v58 = v89;
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v88, v37, 0x7473696C79616C50, 0xE800000000000000, v51, 0, 0, 0, v89, 1, 0, 0, 2);
    v59 = type metadata accessor for MetricsEvent.Page(0);
    v60 = *(*(v59 - 8) + 56);
    v61 = v58;
    return v60(v61, 0, 1, v59);
  }

  if (v31 != enum case for MusicPropertySource.library(_:))
  {
    (*(v23 + 8))(v25, v22);
    v49 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v49 - 8) + 56))(v89, 1, 1, v49);
    return (*(v30 + 8))(v18, v16);
  }

  v87 = v22;
  v88 = v23;
  v38 = v83;
  Playlist.variant.getter();
  v39 = v84;
  v40 = v81;
  v41 = v82;
  (*(v84 + 104))(v82, enum case for Playlist.Variant.favoriteSongs(_:), v81);
  (*(v39 + 56))(v41, 0, 1, v40);
  v42 = *(v80 + 48);
  v43 = v85;
  sub_1000089F8(v38, v85, &unk_10119EF50);
  sub_1000089F8(v41, v43 + v42, &unk_10119EF50);
  v44 = *(v39 + 48);
  if (v44(v43, 1, v40) == 1)
  {
    sub_1000095E8(v41, &unk_10119EF50);
    v45 = v85;
    sub_1000095E8(v38, &unk_10119EF50);
    v46 = v44(v45 + v42, 1, v40);
    v47 = v87;
    if (v46 == 1)
    {
      sub_1000095E8(v45, &unk_10119EF50);
      v48 = v89;
LABEL_22:
      v70 = Playlist.catalogID.getter();
      if (v71)
      {
        v72 = v70;
      }

      else
      {
        v72 = 0x657469726F766146;
      }

      if (v71)
      {
        v73 = v71;
      }

      else
      {
        v73 = 0xED000073676E6F53;
      }

      (*(v88 + 8))(v25, v47);
      v74 = type metadata accessor for URL();
      v75 = v78;
      (*(*(v74 - 8) + 56))(v78, 1, 1, v74);
      MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v72, v73, 0x7473696C79616C50, 0xE800000000000000, v75, 0, 0, 0, v48, 1, 0, 0, 2);
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v62 = v79;
  sub_1000089F8(v43, v79, &unk_10119EF50);
  if (v44(v43 + v42, 1, v40) == 1)
  {
    sub_1000095E8(v82, &unk_10119EF50);
    v45 = v85;
    sub_1000095E8(v83, &unk_10119EF50);
    (*(v84 + 8))(v62, v40);
    v47 = v87;
LABEL_19:
    sub_1000095E8(v45, &unk_1011A4670);
    v48 = v89;
    goto LABEL_20;
  }

  v64 = v62;
  v65 = v84;
  v66 = v43 + v42;
  v67 = v77;
  (*(v84 + 32))(v77, v66, v40);
  sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
  v68 = dispatch thunk of static Equatable.== infix(_:_:)();
  v69 = *(v65 + 8);
  v69(v67, v40);
  sub_1000095E8(v82, &unk_10119EF50);
  sub_1000095E8(v83, &unk_10119EF50);
  v69(v64, v40);
  sub_1000095E8(v43, &unk_10119EF50);
  v48 = v89;
  v47 = v87;
  if (v68)
  {
    goto LABEL_22;
  }

LABEL_20:
  v63 = MetricsEvent.Page.libraryPlaylistDetail.unsafeMutableAddressor();
  sub_10086772C(v63, v48, type metadata accessor for MetricsEvent.Page);
  (*(v88 + 8))(v25, v47);
LABEL_29:
  v59 = type metadata accessor for MetricsEvent.Page(0);
  v60 = *(*(v59 - 8) + 56);
  v61 = v48;
  return v60(v61, 0, 1, v59);
}

unint64_t sub_10085A8A8()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0x7365746F6ELL;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "locationType");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0x656E6961746E6F43;
  *(inited + 104) = 0xEF6C696174654472;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1684957547;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = 0x7473696C79616C70;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x8000000100E4E2D0;
  *(inited + 192) = 0;
  v9 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v3, &unk_1011814D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_1011814D0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v11 = Playlist.name.getter();
    v19 = &type metadata for String;
    *&v18 = v11;
    *(&v18 + 1) = v12;
    sub_100016270(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v9;
    sub_1006C5E68(v17, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    (*(v5 + 8))(v7, v4);
    return v16;
  }

  return v9;
}

uint64_t sub_10085ABFC@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
{
  v37 = a2;
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v33[-v7];
  __chkstk_darwin(v9);
  v11 = &v33[-v10];
  v12 = type metadata accessor for MetricsEvent.Page(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v33[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100859CF8(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011838F0);
    v16 = type metadata accessor for Actions.MetricsReportingContext();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_100869470(v11, v15, type metadata accessor for MetricsEvent.Page);
    sub_10086772C(v15, v8, type metadata accessor for MetricsEvent.Page);
    v18 = *(v13 + 56);
    v18(v8, 0, 1, v12);
    sub_10010FC20(&unk_1011927C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100EBC6B0;
    *(v19 + 32) = sub_10085A8A8();
    sub_1000089F8(v8, v5, &unk_1011838F0);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v20 = sub_10053771C();
    v35 = v21;
    v36 = v20;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v22 = qword_101218AD0;
    v34 = GroupActivitiesManager.hasJoined.getter();
    v23 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v8, &unk_1011838F0);
    sub_100867794(v15, type metadata accessor for MetricsEvent.Page);
    v24 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v25 = *(v22 + v24);
    v26 = type metadata accessor for Actions.MetricsReportingContext();
    v27 = v26[5];
    v18(a1 + v27, 1, 1, v12);
    v28 = v26[7];
    v29 = (a1 + v26[6]);
    v30 = v26[8];
    *a1 = v37;
    sub_10006B010(v5, a1 + v27, &unk_1011838F0);
    v31 = v35;
    *v29 = v36;
    v29[1] = v31;
    *(a1->n128_u64 + v28) = v19;
    *(a1->n128_u64 + v30) = 0;
    v32 = a1 + v26[9];
    *v32 = v34 & 1;
    *(v32 + 1) = v23;
    *(v32 + 2) = v25;
    return (*(*(v26 - 1) + 56))(a1, 0, 1, v26);
  }
}

uint64_t sub_10085B028(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v4, v6, &unk_1011926C0);
  swift_beginAccess();
  sub_1002190E0(a1, v3 + v4, &unk_1011926C0);
  swift_endAccess();
  sub_100814FF8(v6);
  sub_1000095E8(a1, &unk_1011926C0);
  return sub_1000095E8(v6, &unk_1011926C0);
}

uint64_t sub_10085B0FC()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID);

  return v1;
}

uint64_t sub_10085B184@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_10118BCE0);
}

uint64_t sub_10085B2F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPropertySource();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_10085B380()
{
  v0 = *AccessibilityIdentifier.playlistView.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_10085B3D0()
{
  if (qword_10117F700 != -1)
  {
    swift_once();
  }

  v0 = qword_101218CB8;

  return v0;
}

uint64_t sub_10085B4A4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v1 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    return 0;
  }

  if ((v1 >> 62) > 2)
  {
    LOBYTE(v1) = 1;
  }

  return v1 & 1;
}

uint64_t sub_10085B734(char a1)
{
  if (ActionType.rawValue.getter(a1) == 0x62694C6F54646461 && v2 == 0xEC00000079726172)
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) = 1;
  return result;
}

uint64_t sub_10085B7C8(char a1)
{
  if (ActionType.rawValue.getter(a1) == 0x62694C6F54646461 && v2 == 0xEC00000079726172)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) = 0;
  result = sub_10081FE6C();
  if (result)
  {

    return sub_10082920C();
  }

  return result;
}

uint64_t sub_10085B8A8()
{
  v1 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0x7473696C79616C50;
  v19 = 0xEF286C6961746544;
  v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v0 + v8, v3, &unk_1011814D0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_1011814D0);
    v9._object = 0x8000000100E58950;
    v9._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v9);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v17._countAndFlagsBits = 3826793;
    v17._object = 0xE300000000000000;
    Playlist.id.getter();
    v10 = MusicItemID.description.getter();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    String.append(_:)(v17);

    (*(v5 + 8))(v7, v4);
  }

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return v18;
}

uint64_t sub_10085BB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100866F00(&qword_101190E60, &type metadata accessor for Playlist.Entry);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_10085BBF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1(0);
  (*(*(v6 - 8) + 16))(a3, v3, v6);
  v7 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v8 = sub_10010FC20(a2);
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

uint64_t sub_10085BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100866F00(&unk_1011A4BD0, &type metadata accessor for Playlist);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_10085BD6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = v3;
  (*(*(a1 - 8) + 16))(a3, v5, a1);
  v7 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v8 = sub_10010FC20(a2);
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

void sub_10085BE50()
{
  sub_10003920C(319, &qword_1011A44D8, &qword_1011A44E0);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_1011A44E8, &qword_1011A44F0);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A44F8, &unk_1011A4500);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_10118A4F0, &unk_1011A4510);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &unk_101192440, &qword_1011A4520);
          if (v4 <= 0x3F)
          {
            sub_10003920C(319, &qword_1011A4528, &qword_1011A4530);
            if (v5 <= 0x3F)
            {
              sub_10085C5D8(319, &unk_1011A4538, &unk_101184790, UICollectionViewListCell_ptr, type metadata accessor for TracklistFooter.ViewModel);
              if (v6 <= 0x3F)
              {
                sub_10003920C(319, &qword_1011A4548, &unk_1011A4550);
                if (v7 <= 0x3F)
                {
                  sub_10085C5D8(319, &qword_101192460, &unk_101184750, UICollectionViewCell_ptr, type metadata accessor for RelatedContentSpacing.Data);
                  if (v8 <= 0x3F)
                  {
                    sub_10003920C(319, &unk_101192470, &unk_1011A4560);
                    if (v9 <= 0x3F)
                    {
                      sub_10085C650(319, &unk_101192480, &type metadata accessor for IndexPath, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        sub_10085C650(319, &qword_1011A4570, &type metadata accessor for Artwork, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
                        {
                          sub_10085C650(319, &qword_10119EDA0, &type metadata accessor for Playlist, &type metadata accessor for Optional);
                          if (v12 <= 0x3F)
                          {
                            type metadata accessor for MusicPropertySource();
                            if (v13 <= 0x3F)
                            {
                              sub_10085C650(319, &qword_1011814C0, &type metadata accessor for URL, &type metadata accessor for Optional);
                              if (v14 <= 0x3F)
                              {
                                sub_10085C650(319, &qword_1011A4578, type metadata accessor for PlaylistDetailDataSource.CollaborationDetails, &type metadata accessor for Optional);
                                if (v15 <= 0x3F)
                                {
                                  sub_10003920C(319, &unk_1011A4580, &qword_10118C2B0);
                                  if (v16 <= 0x3F)
                                  {
                                    swift_updateClassMetadata2();
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_10085C5D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_100009F78(255, a3);
    a5(255);
    v7 = type metadata accessor for UICollectionView.CellRegistration();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10085C650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10085C718()
{
  type metadata accessor for Playlist.Collaboration();
  if (v0 <= 0x3F)
  {
    sub_10085C650(319, &unk_1011A45F8, &type metadata accessor for Playlist.Collaborator, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10085C7CC()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101219770);
  sub_1000060E4(v0, qword_101219770);
  return static Logger.music(_:)();
}

uint64_t sub_10085C83C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_10085C8C4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double sub_10085C948@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10085C9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10085CA44()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10085CAC0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101192700);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_101192700);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_101192700);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_101192700);
}

double sub_10085CBF0@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_10085CC70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_10085CCEC(void **a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10059F0BC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10085CD94(v5);
  *a1 = v3;
}

void sub_10085CD94(uint64_t *a1)
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
      sub_10085D184(v8, v9, a1, v4);
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
    sub_10085CEC0(0, v2, 1, a1);
  }
}

void sub_10085CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_10085D184(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_10059F01C(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_10085DBAC(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10059F01C(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_10059EF90(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100498FCC(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100498FCC((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
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

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_10085DBAC(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10059F01C(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_10059EF90(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
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

void sub_10085DBAC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_100866F00(&unk_1011A48D0, &type metadata accessor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_10085E2BC(&v54, &v53, &v52, &type metadata accessor for IndexPath);
}

uint64_t sub_10085E1B4(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10010FC20(&unk_10118D180);
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

uint64_t sub_10085E2BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10085E3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for MusicVideo();
  v68[3] = v22;
  v68[4] = &protocol witness table for MusicVideo;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100EE55A0, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100EE5598, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE55A8, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_10085EBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Track();
  v68[3] = v22;
  v68[4] = &protocol witness table for Track;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100EE55B8, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100EE55B0, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE55C0, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_10085F3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Album();
  v68[3] = v22;
  v68[4] = &protocol witness table for Album;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100EE55D0, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100EE55C8, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE55D8, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_10085FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Song();
  v68[3] = v22;
  v68[4] = &protocol witness table for Song;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100EE5588, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100EE5580, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE5590, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_100860424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v64 = (&v58 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  __chkstk_darwin(v7);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  __chkstk_darwin(v12);
  v65 = &v58 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v58 - v18;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for TVEpisode();
  v67[3] = v22;
  v67[4] = sub_100866F00(&unk_1011996E0, &type metadata accessor for TVEpisode);
  v23 = sub_10001C8B8(v67);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v63;
    v27 = *(v63 + 32);
    v28 = v65;
    v27(v65, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v46 = v65;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v68);
        sub_100014984(v68);
        v47 = v46;
        if ((BYTE8(v68[0]) & 1) == 0)
        {
          v48 = type metadata accessor for TaskPriority();
          v49 = v64;
          (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
          sub_100008FE4(v67, v66);
          v50 = swift_allocObject();
          *(v50 + 16) = 0;
          *(v50 + 24) = 0;
          sub_100059A8C(v66, v50 + 32);
          sub_1001F4CB8(0, 0, v49, &unk_100EE5570, v50);

          (*(v26 + 8))(v46, v31);
          return sub_10000959C(v67);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v47 = v46;
      }

      v51 = type metadata accessor for TaskPriority();
      (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
      v52 = v31;
      v53 = v60;
      v29(v60, v47, v52);
      sub_10012B7A8(v61, v66);
      type metadata accessor for MainActor();
      v54 = static MainActor.shared.getter();
      v55 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = &protocol witness table for MainActor;
      v27(v56 + v55, v53, v52);
      sub_10012B828(v66, v56 + ((v8 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v64, &unk_100EE5568, v56);

      (*(v26 + 8))(v65, v52);
      return sub_10000959C(v67);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v64;
    (*(*(v32 - 8) + 56))(v64, 1, 1, v32);
    sub_100008FE4(v67, v68);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v68, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE5578, v35);

    (*(v26 + 8))(v65, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    v36(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, a1, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v68[0] = v65;
      *v41 = 136315138;
      v64 = v36;
      v24(v59, v38, v14);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      (v64)(v38, v14);
      v45 = sub_1000105AC(v42, v44, v68);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v41, 0xCu);
      sub_10000959C(v65);
    }

    else
    {

      v36(v38, v14);
    }
  }

  return sub_10000959C(v67);
}

uint64_t sub_100860C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v64 = (&v58 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v63 = *(v7 - 8);
  v8 = *(v63 + 64);
  __chkstk_darwin(v7);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  __chkstk_darwin(v12);
  v65 = &v58 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v58 - v18;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for MusicMovie();
  v67[3] = v22;
  v67[4] = sub_100866F00(&unk_10118AB60, &type metadata accessor for MusicMovie);
  v23 = sub_10001C8B8(v67);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v63;
    v27 = *(v63 + 32);
    v28 = v65;
    v27(v65, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v46 = v65;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v68);
        sub_100014984(v68);
        v47 = v46;
        if ((BYTE8(v68[0]) & 1) == 0)
        {
          v48 = type metadata accessor for TaskPriority();
          v49 = v64;
          (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
          sub_100008FE4(v67, v66);
          v50 = swift_allocObject();
          *(v50 + 16) = 0;
          *(v50 + 24) = 0;
          sub_100059A8C(v66, v50 + 32);
          sub_1001F4CB8(0, 0, v49, &unk_100EE5550, v50);

          (*(v26 + 8))(v46, v31);
          return sub_10000959C(v67);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v47 = v46;
      }

      v51 = type metadata accessor for TaskPriority();
      (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
      v52 = v31;
      v53 = v60;
      v29(v60, v47, v52);
      sub_10012B7A8(v61, v66);
      type metadata accessor for MainActor();
      v54 = static MainActor.shared.getter();
      v55 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = v54;
      *(v56 + 24) = &protocol witness table for MainActor;
      v27(v56 + v55, v53, v52);
      sub_10012B828(v66, v56 + ((v8 + v55 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v64, &unk_100EE5548, v56);

      (*(v26 + 8))(v65, v52);
      return sub_10000959C(v67);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v64;
    (*(*(v32 - 8) + 56))(v64, 1, 1, v32);
    sub_100008FE4(v67, v68);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v68, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE5558, v35);

    (*(v26 + 8))(v65, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    v36(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, a1, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      *&v68[0] = v65;
      *v41 = 136315138;
      v64 = v36;
      v24(v59, v38, v14);
      v42 = String.init<A>(describing:)();
      v44 = v43;
      (v64)(v38, v14);
      v45 = sub_1000105AC(v42, v44, v68);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v41, 0xCu);
      sub_10000959C(v65);
    }

    else
    {

      v36(v38, v14);
    }
  }

  return sub_10000959C(v67);
}

uint64_t sub_1008614CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Playlist.Entry();
  v68[3] = v22;
  v68[4] = &protocol witness table for Playlist.Entry;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100ED1BA8, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100ED1BA0, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100ED1BB0, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_100861CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v65 = (&v59 - v6);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  __chkstk_darwin(v7);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v59 - v10;
  __chkstk_darwin(v12);
  v66 = &v59 - v13;
  v14 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v59 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v62 = &v59 - v18;
  __chkstk_darwin(v19);
  v21 = &v59 - v20;
  v22 = type metadata accessor for Playlist();
  v68[3] = v22;
  v68[4] = &protocol witness table for Playlist;
  v23 = sub_10001C8B8(v68);
  (*(*(v22 - 8) + 16))(v23, a2, v22);
  v24 = *(v15 + 16);
  v63 = a1;
  v24(v21, a1, v14);
  v25 = (*(v15 + 88))(v21, v14);
  if (v25 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v15 + 96))(v21, v14);
    v26 = v64;
    v27 = *(v64 + 32);
    v28 = v66;
    v27(v66, v21, v7);
    v29 = *(v26 + 16);
    v29(v11, v28, v7);
    v30 = (*(v26 + 88))(v11, v7);
    v31 = v7;
    if (v30 != enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:))
    {
      v47 = v66;
      if (v30 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
      {
        static ApplicationCapabilities.shared.getter(v69);
        sub_100014984(v69);
        v48 = v47;
        if ((BYTE8(v69[0]) & 1) == 0)
        {
          v49 = type metadata accessor for TaskPriority();
          v50 = v65;
          (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
          sub_100008FE4(v68, v67);
          v51 = swift_allocObject();
          *(v51 + 16) = 0;
          *(v51 + 24) = 0;
          sub_100059A8C(v67, v51 + 32);
          sub_1001F4CB8(0, 0, v50, &unk_100EE4B60, v51);

          (*(v26 + 8))(v47, v31);
          return sub_10000959C(v68);
        }
      }

      else
      {
        (*(v26 + 8))(v11, v31);
        v48 = v47;
      }

      v52 = type metadata accessor for TaskPriority();
      (*(*(v52 - 8) + 56))(v65, 1, 1, v52);
      v53 = v31;
      v54 = v60;
      v29(v60, v48, v53);
      sub_10012B7A8(v61, v67);
      type metadata accessor for MainActor();
      v55 = static MainActor.shared.getter();
      v56 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = v55;
      *(v57 + 24) = &protocol witness table for MainActor;
      v27(v57 + v56, v54, v53);
      sub_10012B828(v67, v57 + ((v8 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
      sub_1001F4CB8(0, 0, v65, &unk_100EE4B58, v57);

      (*(v26 + 8))(v66, v53);
      return sub_10000959C(v68);
    }

    v32 = type metadata accessor for TaskPriority();
    v33 = v65;
    (*(*(v32 - 8) + 56))(v65, 1, 1, v32);
    sub_100008FE4(v68, v69);
    type metadata accessor for MainActor();
    v34 = static MainActor.shared.getter();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = &protocol witness table for MainActor;
    sub_100059A8C(v69, v35 + 32);
    sub_1001F4CB8(0, 0, v33, &unk_100EE4B68, v35);

    (*(v26 + 8))(v66, v7);
  }

  else if (v25 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    v36 = *(v15 + 8);
    (v36)(v21, v14);
    if (qword_10117F828 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_101218F08);
    v38 = v62;
    v24(v62, v63, v14);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v36;
      v42 = v41;
      v66 = swift_slowAlloc();
      *&v69[0] = v66;
      *v42 = 136315138;
      v24(v59, v38, v14);
      v43 = String.init<A>(describing:)();
      v45 = v44;
      (v65)(v38, v14);
      v46 = sub_1000105AC(v43, v45, v69);

      *(v42 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Unknown playabilityStatus=%s", v42, 0xCu);
      sub_10000959C(v66);
    }

    else
    {

      (v36)(v38, v14);
    }
  }

  return sub_10000959C(v68);
}

uint64_t sub_10086250C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  sub_10010FC20(&unk_101181520);
  v3[13] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_1011841D0);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for Album();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = *(v7 + 16);
  v3[26] = v8;
  v3[27] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8();
  v3[28] = type metadata accessor for MainActor();
  v3[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_100862750, v10, v9);
}

uint64_t sub_100862750()
{
  PresentationSource.windowScene.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3 && (*(v0 + 80) = v3, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      v4 = *(v0 + 40);
      if (v4)
      {
        v5 = *(*sub_10000954C((v0 + 16), v4) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(v0 + 16);
        goto LABEL_9;
      }
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_1000095E8(v0 + 16, &unk_101184EA0);
  }

  v5 = 0;
LABEL_9:
  *(v0 + 256) = v5;
  v6 = *(v0 + 192);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);
  (*(v0 + 208))(v6, *(v0 + 200), *(v0 + 176));
  *(v0 + 56) = sub_100863B84(v6);
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  sub_1000089F8(v10, v9, &unk_1011842D0);
  v13 = *(v8 + 48);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v7) == 1)
  {
    sub_1000095E8(*(v0 + 120), &unk_1011842D0);
    v14 = swift_task_alloc();
    *(v0 + 280) = v14;
    *v14 = v0;
    v14[1] = sub_100862BC4;
    v15 = *(v0 + 176);
    v16 = *(v0 + 112);

    return MusicPlaylistAddable.tracks.getter(v16, v15);
  }

  else
  {
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));

    v36 = *(v0 + 56);
    v35 = *(v0 + 72);
    v18 = *(v0 + 256);
    v19 = *(v0 + 168);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 104);
    v32 = v20;
    v33 = v24;
    v34 = *(v23 + 32);
    v34(v19);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    (*(v23 + 16))(v20, v19, v22);

    v26 = static MainActor.shared.getter();
    v27 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v18;
    (v34)(v29 + v27, v32, v22);
    v30 = v29 + v28;
    *v30 = v36;
    *(v30 + 2) = v35;
    sub_1001F4F78(0, 0, v33, &unk_100EE5628, v29);

    (*(v23 + 8))(v19, v22);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_100862BC4()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return _swift_task_switch(sub_100862D48, v6, v5);
}

uint64_t sub_100862D48()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v4 == 1)
  {
    v7 = *(v0 + 264);
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v6, 1, v5) != 1)
    {
      sub_1000095E8(*(v0 + 112), &unk_1011842D0);
    }
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 128));
  }

  v27 = *(v0 + 56);
  v26 = *(v0 + 72);
  v8 = *(v0 + 256);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 104);
  v23 = v10;
  v24 = v14;
  v25 = *(v13 + 32);
  v25(v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v13 + 16))(v10, v9, v12);

  v16 = static MainActor.shared.getter();
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v8;
  (v25)(v19 + v17, v23, v12);
  v20 = v19 + v18;
  *v20 = v27;
  *(v20 + 2) = v26;
  sub_1001F4F78(0, 0, v24, &unk_100EE5628, v19);

  (*(v13 + 8))(v9, v12);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100863048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  sub_10010FC20(&unk_101181520);
  v3[13] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_1011841D0);
  v3[16] = v4;
  v5 = *(v4 - 8);
  v3[17] = v5;
  v3[18] = *(v5 + 64);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for Playlist();
  v3[22] = v6;
  v7 = *(v6 - 8);
  v3[23] = v7;
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v8 = *(v7 + 16);
  v3[26] = v8;
  v3[27] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8();
  v3[28] = type metadata accessor for MainActor();
  v3[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[30] = v10;
  v3[31] = v9;

  return _swift_task_switch(sub_10086328C, v10, v9);
}

uint64_t sub_10086328C()
{
  PresentationSource.windowScene.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 delegate];

    if (v3 && (*(v0 + 80) = v3, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
    {
      v4 = *(v0 + 40);
      if (v4)
      {
        v5 = *(*sub_10000954C((v0 + 16), v4) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

        sub_10000959C(v0 + 16);
        goto LABEL_9;
      }
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_1000095E8(v0 + 16, &unk_101184EA0);
  }

  v5 = 0;
LABEL_9:
  *(v0 + 256) = v5;
  v6 = *(v0 + 192);
  v7 = *(v0 + 128);
  v8 = *(v0 + 136);
  v9 = *(v0 + 120);
  v10 = *(v0 + 96);
  (*(v0 + 208))(v6, *(v0 + 200), *(v0 + 176));
  *(v0 + 56) = sub_1008647BC(v6);
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  sub_1000089F8(v10, v9, &unk_1011842D0);
  v13 = *(v8 + 48);
  *(v0 + 264) = v13;
  *(v0 + 272) = (v8 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v13(v9, 1, v7) == 1)
  {
    sub_1000095E8(*(v0 + 120), &unk_1011842D0);
    v14 = swift_task_alloc();
    *(v0 + 280) = v14;
    *v14 = v0;
    v14[1] = sub_100863700;
    v15 = *(v0 + 176);
    v16 = *(v0 + 112);

    return MusicPlaylistAddable.tracks.getter(v16, v15);
  }

  else
  {
    (*(*(v0 + 184) + 8))(*(v0 + 200), *(v0 + 176));

    v36 = *(v0 + 56);
    v35 = *(v0 + 72);
    v18 = *(v0 + 256);
    v19 = *(v0 + 168);
    v21 = *(v0 + 144);
    v20 = *(v0 + 152);
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
    v24 = *(v0 + 104);
    v32 = v20;
    v33 = v24;
    v34 = *(v23 + 32);
    v34(v19);
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    (*(v23 + 16))(v20, v19, v22);

    v26 = static MainActor.shared.getter();
    v27 = (*(v23 + 80) + 40) & ~*(v23 + 80);
    v28 = (v21 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v29[2] = v26;
    v29[3] = &protocol witness table for MainActor;
    v29[4] = v18;
    (v34)(v29 + v27, v32, v22);
    v30 = v29 + v28;
    *v30 = v36;
    *(v30 + 2) = v35;
    sub_1001F4F78(0, 0, v33, &unk_100EE51D0, v29);

    (*(v23 + 8))(v19, v22);

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_100863700()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 248);
  v6 = *(v1 + 240);

  return _swift_task_switch(sub_100863884, v6, v5);
}

uint64_t sub_100863884()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  v4 = v1(v3, 1, v2);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  if (v4 == 1)
  {
    v7 = *(v0 + 264);
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    if (v7(v6, 1, v5) != 1)
    {
      sub_1000095E8(*(v0 + 112), &unk_1011842D0);
    }
  }

  else
  {
    (*(*(v0 + 136) + 32))(*(v0 + 160), *(v0 + 112), *(v0 + 128));
  }

  v27 = *(v0 + 56);
  v26 = *(v0 + 72);
  v8 = *(v0 + 256);
  v9 = *(v0 + 168);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 104);
  v23 = v10;
  v24 = v14;
  v25 = *(v13 + 32);
  v25(v9);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v13 + 16))(v10, v9, v12);

  v16 = static MainActor.shared.getter();
  v17 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v8;
  (v25)(v19 + v17, v23, v12);
  v20 = v19 + v18;
  *v20 = v27;
  *(v20 + 2) = v26;
  sub_1001F4F78(0, 0, v24, &unk_100EE51D0, v19);

  (*(v13 + 8))(v9, v12);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_100863B84(uint64_t a1)
{
  v61 = type metadata accessor for Playlist.Entry.InternalItem();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v3 - 8);
  v63 = &v57 - v4;
  v65 = type metadata accessor for Playlist.Entry();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v6 - 8);
  v68 = &v57 - v7;
  v69 = type metadata accessor for Track();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v9 - 8);
  v72 = &v57 - v10;
  v73 = type metadata accessor for MusicVideo();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v66 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v12 - 8);
  v75 = &v57 - v13;
  v76 = type metadata accessor for Song();
  v74 = *(v76 - 8);
  __chkstk_darwin(v76);
  v70 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Playlist();
  v77 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v21 - 8);
  v23 = &v57 - v22;
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79[3] = v28;
  v79[4] = &protocol witness table for Album;
  v29 = sub_10001C8B8(v79);
  v30 = *(v25 + 32);
  v30(v29, a1, v24);
  sub_100008FE4(v79, v78);
  sub_10010FC20(&qword_10118E0B0);
  v31 = swift_dynamicCast();
  v32 = *(v25 + 56);
  if (v31)
  {
    v32(v23, 0, 1, v24);
    v30(v27, v23, v24);
    Album.catalogID.getter();
    (*(v25 + 8))(v27, v24);
    sub_10000959C(v79);
    return 0;
  }

  v32(v23, 1, 1, v24);
  sub_1000095E8(v23, &unk_101184730);
  sub_100008FE4(v79, v78);
  v34 = swift_dynamicCast();
  v35 = v77;
  v36 = *(v77 + 56);
  if (v34)
  {
    v36(v17, 0, 1, v18);
    (*(v35 + 32))(v20, v17, v18);
    Playlist.catalogID.getter();
    (*(v35 + 8))(v20, v18);
    sub_10000959C(v79);
    return 1;
  }

  v36(v17, 1, 1, v18);
  sub_1000095E8(v17, &unk_1011814D0);
  sub_100008FE4(v79, v78);
  v37 = v75;
  v38 = v76;
  v39 = swift_dynamicCast();
  v40 = v74;
  v41 = *(v74 + 56);
  if (v39)
  {
    v41(v37, 0, 1, v38);
    v42 = v70;
    (*(v40 + 32))(v70, v37, v38);
    Song.catalogID.getter();
LABEL_11:
    (*(v40 + 8))(v42, v38);
    sub_10000959C(v79);
    return 2;
  }

  v41(v37, 1, 1, v38);
  sub_1000095E8(v37, &unk_101183960);
  sub_100008FE4(v79, v78);
  v43 = v72;
  v38 = v73;
  v44 = swift_dynamicCast();
  v40 = v71;
  v45 = *(v71 + 56);
  if (v44)
  {
    v45(v43, 0, 1, v38);
    v42 = v66;
    (*(v40 + 32))(v66, v43, v38);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v45(v43, 1, 1, v38);
  sub_1000095E8(v43, &unk_1011846B0);
  sub_100008FE4(v79, v78);
  v46 = v68;
  v38 = v69;
  v47 = swift_dynamicCast();
  v40 = v67;
  v48 = *(v67 + 56);
  if (v47)
  {
    v48(v46, 0, 1, v38);
    v42 = v62;
    (*(v40 + 32))(v62, v46, v38);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v48(v46, 1, 1, v38);
  sub_1000095E8(v46, &qword_10118A530);
  sub_100008FE4(v79, v78);
  v49 = v63;
  v50 = v65;
  if (swift_dynamicCast())
  {
    v51 = v64;
    (*(v64 + 56))(v49, 0, 1, v50);
    v52 = v58;
    (*(v51 + 32))(v58, v49, v50);
    v53 = v59;
    Playlist.Entry.internalItem.getter();
    v54 = v60;
    v55 = v61;
    v56 = (*(v60 + 88))(v53, v61);
    if (v56 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v56 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v54 + 8))(v53, v55);
      Playlist.Entry.catalogID.getter();
      (*(v51 + 8))(v52, v50);
      sub_10000959C(v79);
    }

    else
    {
      (*(v51 + 8))(v52, v50);
      sub_10000959C(v79);
      (*(v54 + 8))(v53, v55);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v79);
    (*(v64 + 56))(v49, 1, 1, v50);
    sub_1000095E8(v49, &qword_101191570);
    return 0;
  }
}

uint64_t sub_1008647BC(uint64_t a1)
{
  v75 = a1;
  v58 = type metadata accessor for Playlist.Entry.InternalItem();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v2 - 8);
  v60 = &v55 - v3;
  v62 = type metadata accessor for Playlist.Entry();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v55 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v5 - 8);
  v65 = &v55 - v6;
  v66 = type metadata accessor for Track();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v8 - 8);
  v69 = &v55 - v9;
  v70 = type metadata accessor for MusicVideo();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v11 - 8);
  v73 = &v55 - v12;
  v74 = type metadata accessor for Song();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v71 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v20 - 8);
  v22 = &v55 - v21;
  v23 = type metadata accessor for Album();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77[3] = v17;
  v77[4] = &protocol witness table for Playlist;
  v27 = sub_10001C8B8(v77);
  v28 = *(v18 + 32);
  v28(v27, v75, v17);
  sub_100008FE4(v77, v76);
  sub_10010FC20(&qword_10118E0B0);
  v29 = swift_dynamicCast();
  v30 = *(v24 + 56);
  if (v29)
  {
    v30(v22, 0, 1, v23);
    (*(v24 + 32))(v26, v22, v23);
    Album.catalogID.getter();
    (*(v24 + 8))(v26, v23);
    sub_10000959C(v77);
    return 0;
  }

  v30(v22, 1, 1, v23);
  sub_1000095E8(v22, &unk_101184730);
  sub_100008FE4(v77, v76);
  v32 = swift_dynamicCast();
  v33 = *(v18 + 56);
  if (v32)
  {
    v33(v16, 0, 1, v17);
    v34 = v71;
    v28(v71, v16, v17);
    Playlist.catalogID.getter();
    (*(v18 + 8))(v34, v17);
    sub_10000959C(v77);
    return 1;
  }

  v33(v16, 1, 1, v17);
  sub_1000095E8(v16, &unk_1011814D0);
  sub_100008FE4(v77, v76);
  v35 = v73;
  v36 = v74;
  v37 = swift_dynamicCast();
  v38 = v72;
  v39 = *(v72 + 56);
  if (v37)
  {
    v39(v35, 0, 1, v36);
    v40 = v67;
    (*(v38 + 32))(v67, v35, v36);
    Song.catalogID.getter();
LABEL_11:
    (*(v38 + 8))(v40, v36);
    sub_10000959C(v77);
    return 2;
  }

  v39(v35, 1, 1, v36);
  sub_1000095E8(v35, &unk_101183960);
  sub_100008FE4(v77, v76);
  v41 = v69;
  v36 = v70;
  v42 = swift_dynamicCast();
  v38 = v68;
  v43 = *(v68 + 56);
  if (v42)
  {
    v43(v41, 0, 1, v36);
    v40 = v63;
    (*(v38 + 32))(v63, v41, v36);
    MusicVideo.catalogID.getter();
    goto LABEL_11;
  }

  v43(v41, 1, 1, v36);
  sub_1000095E8(v41, &unk_1011846B0);
  sub_100008FE4(v77, v76);
  v44 = v65;
  v36 = v66;
  v45 = swift_dynamicCast();
  v38 = v64;
  v46 = *(v64 + 56);
  if (v45)
  {
    v46(v44, 0, 1, v36);
    v40 = v59;
    (*(v38 + 32))(v59, v44, v36);
    Track.catalogID.getter();
    goto LABEL_11;
  }

  v46(v44, 1, 1, v36);
  sub_1000095E8(v44, &qword_10118A530);
  sub_100008FE4(v77, v76);
  v47 = v60;
  v48 = v62;
  if (swift_dynamicCast())
  {
    v49 = v61;
    (*(v61 + 56))(v47, 0, 1, v48);
    v50 = v55;
    (*(v49 + 32))(v55, v47, v48);
    v51 = v56;
    Playlist.Entry.internalItem.getter();
    v52 = v57;
    v53 = v58;
    v54 = (*(v57 + 88))(v51, v58);
    if (v54 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v54 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v52 + 8))(v51, v53);
      Playlist.Entry.catalogID.getter();
      (*(v49 + 8))(v50, v48);
      sub_10000959C(v77);
    }

    else
    {
      (*(v49 + 8))(v50, v48);
      sub_10000959C(v77);
      (*(v52 + 8))(v51, v53);
    }

    return 0;
  }

  else
  {
    sub_10000959C(v77);
    (*(v61 + 56))(v47, 1, 1, v48);
    sub_1000095E8(v47, &qword_101191570);
    return 0;
  }
}

uint64_t sub_1008653FC(uint64_t a1, uint64_t a2)
{
  v117 = a2;
  v3 = sub_10010FC20(&unk_1011814D0);
  v4 = __chkstk_darwin(v3 - 8);
  v107 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v108 = &v96 - v7;
  v8 = __chkstk_darwin(v6);
  v106 = &v96 - v9;
  v10 = __chkstk_darwin(v8);
  v109 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  v111 = &v96 - v13;
  __chkstk_darwin(v12);
  v112 = &v96 - v14;
  v113 = type metadata accessor for Playlist();
  v114 = *(v113 - 8);
  v15 = __chkstk_darwin(v113);
  v104 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v105 = &v96 - v18;
  v19 = __chkstk_darwin(v17);
  v103 = &v96 - v20;
  v21 = __chkstk_darwin(v19);
  v110 = &v96 - v22;
  v23 = __chkstk_darwin(v21);
  v101 = &v96 - v24;
  __chkstk_darwin(v23);
  v102 = &v96 - v25;
  v26 = type metadata accessor for MusicPropertySource();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v96 - v31;
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v35 = v27 + 2;
  v34 = v27[2];
  v116 = a1;
  v115 = v33;
  v118 = v34;
  v34(v32, a1 + v33, v26);
  v36 = enum case for MusicPropertySource.library(_:);
  v37 = (v27 + 13);
  v38 = v27[13];
  (v38)(v30, enum case for MusicPropertySource.library(_:), v26);
  LOBYTE(v33) = static MusicPropertySource.== infix(_:_:)();
  v41 = v27[1];
  v39 = v27 + 1;
  v40 = v41;
  v41(v30, v26);
  v41(v32, v26);
  if (v33)
  {
    v42 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    LODWORD(v100) = v36;
    v43 = v117;
    swift_beginAccess();
    v118(v32, v43 + v42, v26);
    (v38)(v30, v100, v26);
    LOBYTE(v42) = static MusicPropertySource.== infix(_:_:)();
    v40(v30, v26);
    v40(v32, v26);
    if (v42)
    {
      v98 = v39;
      v99 = v40;
      v97 = v38;
      v100 = v35;
      v44 = v37;
      v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v46 = v116;
      swift_beginAccess();
      v47 = v112;
      sub_1000089F8(v46 + v45, v112, &unk_1011814D0);
      v48 = v114;
      v49 = *(v114 + 48);
      v50 = v113;
      if (v49(v47, 1, v113) != 1)
      {
        v51 = v48 + 32;
        v52 = *(v48 + 32);
        v53 = v102;
        v112 = v51;
        v96 = v52;
        v52(v102, v47, v50);
        v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
        v55 = v49;
        v56 = v117;
        swift_beginAccess();
        v57 = v56 + v54;
        v47 = v111;
        sub_1000089F8(v57, v111, &unk_1011814D0);
        if (v55(v47, 1, v50) != 1)
        {
          v90 = v101;
          v96(v101, v47, v50);
          sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist);
          v91 = static MusicItem<>.==~ infix(_:_:)();
          v92 = *(v114 + 8);
          v92(v90, v50);
          v92(v53, v50);
          if (v91)
          {
            v82 = *(v116 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) ^ *(v117 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) ^ 1;
            return v82 & 1;
          }

          goto LABEL_34;
        }

        (*(v114 + 8))(v53, v50);
      }

      sub_1000095E8(v47, &unk_1011814D0);
      v37 = v44;
      v38 = v97;
      v40 = v99;
    }
  }

  v58 = v116;
  v59 = v115;
  v118(v32, v116 + v115, v26);
  LODWORD(v111) = enum case for MusicPropertySource.catalog(_:);
  v112 = v37;
  v38(v30);
  v60 = static MusicPropertySource.== infix(_:_:)();
  v40(v30, v26);
  v40(v32, v26);
  if ((v60 & 1) == 0)
  {
    v61 = v58 + v59;
    v62 = v118;
    v118(v32, v61, v26);
    v63 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v62(v30, v58 + v63, v26);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource);
    LOBYTE(v63) = dispatch thunk of static Equatable.== infix(_:_:)();
    v40(v30, v26);
    v40(v32, v26);
    if (v63)
    {
      goto LABEL_34;
    }
  }

  v64 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  v65 = v117;
  swift_beginAccess();
  v118(v32, v65 + v64, v26);
  (v38)(v30, v111, v26);
  v66 = static MusicPropertySource.== infix(_:_:)();
  v40(v30, v26);
  v40(v32, v26);
  if ((v66 & 1) == 0)
  {
    v67 = v65 + v64;
    v68 = v118;
    v118(v32, v67, v26);
    v69 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v68(v30, v65 + v69, v26);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource);
    LOBYTE(v69) = dispatch thunk of static Equatable.== infix(_:_:)();
    v40(v30, v26);
    v40(v32, v26);
    if (v69)
    {
      goto LABEL_34;
    }
  }

  v70 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  v71 = v116;
  swift_beginAccess();
  v72 = v109;
  sub_1000089F8(v71 + v70, v109, &unk_1011814D0);
  v73 = v114;
  v74 = *(v114 + 48);
  v75 = v113;
  if (v74(v72, 1, v113) == 1)
  {
    v76 = v117;
  }

  else
  {
    v77 = *(v73 + 32);
    v77(v110, v72, v75);
    v78 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    v76 = v117;
    swift_beginAccess();
    v79 = v76 + v78;
    v72 = v106;
    sub_1000089F8(v79, v106, &unk_1011814D0);
    if (v74(v72, 1, v75) != 1)
    {
      v83 = v103;
      v77(v103, v72, v75);
      sub_100866F00(&unk_1011A4660, &type metadata accessor for Playlist);
      v84 = v110;
      v82 = static MusicItem<>.==~ infix(_:_:)();
      v85 = *(v73 + 8);
      v85(v83, v75);
      v85(v84, v75);
      return v82 & 1;
    }

    (*(v73 + 8))(v110, v75);
  }

  sub_1000095E8(v72, &unk_1011814D0);
  v80 = v108;
  sub_1000089F8(v71 + v70, v108, &unk_1011814D0);
  if (v74(v80, 1, v75) == 1)
  {
    sub_1000095E8(v80, &unk_1011814D0);
  }

  else
  {
    v81 = v105;
    (*(v73 + 32))(v105, v80, v75);
    if (*(v76 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
    {

      v82 = MusicItem.contains(_:)();

      (*(v73 + 8))(v81, v75);
      return v82 & 1;
    }

    (*(v73 + 8))(v81, v75);
  }

  v86 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v87 = v76 + v86;
  v88 = v107;
  sub_1000089F8(v87, v107, &unk_1011814D0);
  if (v74(v88, 1, v75) == 1)
  {
    sub_1000095E8(v88, &unk_1011814D0);
  }

  else
  {
    v89 = v104;
    (*(v73 + 32))(v104, v88, v75);
    if (*(v71 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
    {

      v82 = MusicItem.contains(_:)();

      (*(v73 + 8))(v89, v75);
      return v82 & 1;
    }

    (*(v73 + 8))(v89, v75);
  }

  v93 = *(v76 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8);
  if (!v93 || (v94 = *(v71 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8)) == 0)
  {
LABEL_34:
    v82 = 0;
    return v82 & 1;
  }

  if (*(v76 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID) == *(v71 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID) && v93 == v94)
  {
    v82 = 1;
  }

  else
  {
    v82 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v82 & 1;
}

char *sub_100866288(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t), uint64_t a5, int a6)
{
  LODWORD(v111) = a6;
  v110 = a4;
  v108 = a3;
  v114 = a2;
  v102 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v102);
  v101 = &v100 - v8;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v112 = v9;
  v113 = v10;
  v11 = __chkstk_darwin(v9);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v105 = &v100 - v13;
  v14 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v14 - 8);
  v104 = &v100 - v15;
  v16 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v16 - 8);
  v18 = &v100 - v17;
  v19 = sub_10010FC20(&qword_101183A20);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v100 - v23;
  v25 = type metadata accessor for ContainerDetail.Source(0);
  v26 = __chkstk_darwin(v25);
  v106 = &v100 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v100 - v29;
  __chkstk_darwin(v28);
  v32 = &v100 - v31;
  v33 = Playlist.catalogID.getter();
  v35 = v34;
  v103 = type metadata accessor for ContainerDetail.Source;
  sub_10086772C(v114, v32, type metadata accessor for ContainerDetail.Source);
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);
  v107 = a5;
  sub_1000089F8(a5, v22, &qword_101183A20);
  v37 = objc_allocWithZone(type metadata accessor for PlaylistDetailDataSource(0));
  v38 = v35;
  v39 = v112;
  v100 = v32;
  v40 = v32;
  v41 = a1;
  v42 = sub_1008075B8(v33, v38, v40, v108, v110, v24, v22);
  v42[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork] = v111;
  v43 = v113;
  v110 = *(v113 + 16);
  v111 = v113 + 16;
  v110(v18, v41, v39);
  (*(v43 + 56))(v18, 0, 1, v39);
  v44 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v45 = v42;
  sub_10006B010(v18, &v42[v44], &unk_1011814D0);
  swift_endAccess();
  v46 = v104;
  Playlist.entries.getter();
  v47 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
  swift_beginAccess();
  sub_10006B010(v46, &v45[v47], &qword_10119A808);
  swift_endAccess();
  sub_10086772C(v114, v30, v103);
  v104 = v25;
  v48 = 0;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v48 = v30[*(sub_10010FC20(&qword_10118A430) + 48)];
    sub_1000095E8(v30, &unk_1011926F0);
  }

  v45[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] = v48;
  sub_100820758();
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000060E4(v49, qword_1012193F8);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v109;
  v54 = v105;
  if (v52)
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "╭ Creating playlist detail data source", v55, 2u);
  }

  v110(v54, v41, v39);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v108 = v41;
  if (v58)
  {
    v59 = v53;
    v60 = v54;
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v118[0] = v62;
    *v61 = 136446210;
    sub_100866F00(&qword_101184200, &type metadata accessor for Playlist);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v39;
    v66 = v65;
    v67 = v60;
    v53 = v59;
    v68 = *(v113 + 8);
    v68(v67, v64);
    v69 = sub_1000105AC(v63, v66, v118);

    *(v61 + 4) = v69;
    _os_log_impl(&_mh_execute_header, v56, v57, "| Playlist: %{public}s", v61, 0xCu);
    sub_10000959C(v62);
  }

  else
  {

    v68 = *(v113 + 8);
    v68(v54, v39);
  }

  v70 = v106;
  sub_10086772C(v114, v106, type metadata accessor for ContainerDetail.Source);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v118[0] = v74;
    *v73 = 136446210;
    sub_10086772C(v70, v100, type metadata accessor for ContainerDetail.Source);
    v75 = String.init<A>(describing:)();
    v76 = v70;
    v77 = v75;
    v79 = v78;
    sub_100867794(v76, type metadata accessor for ContainerDetail.Source);
    v80 = sub_1000105AC(v77, v79, v118);

    *(v73 + 4) = v80;
    _os_log_impl(&_mh_execute_header, v71, v72, "| Source: %{public}s", v73, 0xCu);
    sub_10000959C(v74);
  }

  else
  {

    sub_100867794(v70, type metadata accessor for ContainerDetail.Source);
  }

  v81 = v108;
  v82 = v112;
  v110(v53, v108, v112);
  v83 = v45;
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v117 = v87;
    *v86 = 136446210;
    v88 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v83[v88], &v115, &unk_1011926C0);
    if (v116)
    {
      sub_1000095E8(&v115, &unk_1011926C0);
      v89 = 1;
      v90 = v101;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v115, &unk_1011926C0);
      v90 = v101;
      if (Strong)
      {
        v92 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v89 = 0;
      }

      else
      {
        v89 = 1;
      }
    }

    v93 = type metadata accessor for MusicLibrary.AddStatus();
    (*(*(v93 - 8) + 56))(v90, v89, 1, v93);
    v94 = String.init<A>(describing:)();
    v96 = v95;
    v97 = v112;
    v68(v109, v112);
    v98 = sub_1000105AC(v94, v96, &v117);

    *(v86 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v84, v85, "╰ Add Status: %{public}s", v86, 0xCu);
    sub_10000959C(v87);

    sub_1000095E8(v107, &qword_101183A20);
    sub_100867794(v114, type metadata accessor for ContainerDetail.Source);
    v68(v108, v97);
  }

  else
  {

    sub_1000095E8(v107, &qword_101183A20);
    sub_100867794(v114, type metadata accessor for ContainerDetail.Source);
    v68(v81, v82);
    v68(v53, v82);
  }

  return v83;
}

uint64_t sub_100866F00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100866FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Album();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v7 = *(*v2 + 168);
  *(v2 + v7) = 0;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_1002190E0(a2, v2 + v5, &unk_101184730);
  swift_endAccess();
  v8 = sub_1008040A0();
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v10 = sub_100009F78(0, &qword_101189DE8);
  *(v3 + v7) = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v8, sub_10086D3DC, v9, v10);

  sub_100801CC4();
  sub_1000095E8(a2, &unk_101184730);
  return v3;
}

uint64_t sub_1008671C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  v5 = *(*v2 + 128);
  v6 = type metadata accessor for Playlist();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  *(v2 + *(*v2 + 152)) = 0;
  *(v2 + *(*v2 + 160)) = 0;
  v7 = *(*v2 + 168);
  *(v2 + v7) = 0;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  sub_1002190E0(a2, v2 + v5, &unk_1011814D0);
  swift_endAccess();
  v8 = sub_1008040A0();
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for GestureRecognizerHandler();
  swift_allocObject();
  v10 = sub_100009F78(0, &qword_101189DE8);
  *(v3 + v7) = GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v8, sub_10086ABF0, v9, v10);

  sub_1008021C4();
  sub_1000095E8(a2, &unk_1011814D0);
  return v3;
}

char *sub_100867410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v11 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v17);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v19 = 0;
  swift_storeEnumTagMultiPayload();
  v35 = a5;
  v20 = a5;
  v21 = a6;
  sub_1000089F8(v20, v16, &qword_101183A20);
  sub_1000089F8(a6, v13, &qword_101183A20);
  objc_allocWithZone(type metadata accessor for PlaylistDetailDataSource(0));

  v22 = sub_1008075B8(a1, a2, v19, a3, v34, v16, v13);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_1012193F8);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36 = v27;
    *v26 = 136446210;
    v28 = MusicItemID.description.getter();
    v30 = v29;

    v31 = sub_1000105AC(v28, v30, &v36);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "Creating playlist detail data source with playlist id: %{public}s", v26, 0xCu);
    sub_10000959C(v27);
  }

  else
  {
  }

  sub_1000095E8(v21, &qword_101183A20);
  sub_1000095E8(v35, &qword_101183A20);
  return v22;
}

uint64_t sub_10086772C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100867794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}