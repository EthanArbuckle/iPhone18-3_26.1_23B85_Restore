uint64_t sub_1004D6764()
{
  v1 = type metadata accessor for Track();
  v59 = *(v1 - 8);
  v2 = __chkstk_darwin(v1);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v64 = &v56 - v5;
  v60 = sub_10010FC20(&unk_10118C0B0);
  __chkstk_darwin(v60);
  v61 = &v56 - v6;
  v67 = type metadata accessor for Album();
  v66 = *(v67 - 1);
  __chkstk_darwin(v67);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v56 - v10;
  v12 = sub_10010FC20(&unk_1011842D0);
  v13 = __chkstk_darwin(v12 - 8);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v56 - v15;
  v68 = sub_10010FC20(&unk_1011841D0);
  v69 = *(v68 - 8);
  v17 = __chkstk_darwin(v68);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v63 = &v56 - v19;
  v20 = type metadata accessor for MusicPropertySource();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v56 - v25;
  static ApplicationCapabilities.shared.getter(v71);
  sub_100014984(v71);
  if ((BYTE1(v71[0]) & 1) == 0)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent))
  {
    return 0;
  }

  v57 = v4;
  v58 = v1;
  v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  (*(v21 + 16))(v26, v0 + v27, v20);
  (*(v21 + 104))(v24, enum case for MusicPropertySource.library(_:), v20);
  LOBYTE(v27) = static MusicPropertySource.== infix(_:_:)();
  v28 = *(v21 + 8);
  v28(v24, v20);
  v28(v26, v20);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

  v29 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v0 + v29, v11, &unk_101184730);
  v30 = v66;
  v31 = v67;
  if ((*(v66 + 48))(v11, 1, v67))
  {
    sub_1000095E8(v11, &unk_101184730);
    (*(v69 + 56))(v16, 1, 1, v68);
LABEL_7:
    v35 = v16;
LABEL_8:
    sub_1000095E8(v35, &unk_1011842D0);
    return 0;
  }

  (*(v30 + 16))(v8, v11, v31);
  sub_1000095E8(v11, &unk_101184730);
  Album.tracks.getter();
  (*(v30 + 8))(v8, v31);
  v32 = v69;
  v33 = *(v69 + 48);
  v34 = v68;
  if (v33(v16, 1, v68) == 1)
  {
    goto LABEL_7;
  }

  v37 = *(v32 + 32);
  v38 = v63;
  v37(v63, v16, v34);
  v39 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v40 = v0 + v39;
  v41 = v62;
  sub_1000089F8(v40, v62, &unk_1011842D0);
  if (v33(v41, 1, v34) == 1)
  {
    (*(v32 + 8))(v38, v34);
    v35 = v41;
    goto LABEL_8;
  }

  v42 = v65;
  v37(v65, v41, v34);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v43 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v43 == dispatch thunk of Collection.distance(from:to:)())
  {
    v44 = v61;
    (*(v32 + 16))(v61, v38, v34);
    v45 = *(v60 + 36);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v46 = v58;
    v47 = v57;
    if (*(v44 + v45) == v70[0])
    {
LABEL_17:
      sub_1000095E8(v44, &unk_10118C0B0);
      v53 = *(v69 + 8);
      v53(v65, v34);
      v53(v63, v34);
      return 0;
    }

    v67 = (v59 + 16);
    v48 = (v59 + 32);
    v66 = v59 + 8;
    while (1)
    {
      v49 = dispatch thunk of Collection.subscript.read();
      v50 = v34;
      v51 = v64;
      (*v67)(v64);
      v49(v70, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v52 = (*v48)(v47, v51, v46);
      __chkstk_darwin(v52);
      *(&v56 - 2) = v47;
      if (!sub_10044ADDC(sub_1004E5B00, (&v56 - 4)))
      {
        break;
      }

      (*v66)(v47, v46);
      dispatch thunk of Collection.endIndex.getter();
      v34 = v50;
      if (*(v44 + v45) == v70[0])
      {
        goto LABEL_17;
      }
    }

    sub_1000095E8(v44, &unk_10118C0B0);
    v55 = *(v69 + 8);
    v55(v65, v50);
    v55(v63, v50);
    (*v66)(v47, v46);
  }

  else
  {
    v54 = *(v32 + 8);
    v54(v42, v34);
    v54(v38, v34);
  }

  return 1;
}

uint64_t sub_1004D71E8()
{
  type metadata accessor for Track();
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1004D7280()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v2 - 8);
  v61 = &v55 - v3;
  v4 = sub_10010FC20(&qword_101183A20);
  v5 = __chkstk_darwin(v4 - 8);
  v60 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v59 = &v55 - v8;
  __chkstk_darwin(v7);
  v64 = &v55 - v9;
  v65 = type metadata accessor for ContainerDetail.Source(0);
  v10 = __chkstk_darwin(v65);
  v57 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v58 = &v55 - v13;
  __chkstk_darwin(v12);
  v63 = &v55 - v14;
  v15 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = type metadata accessor for Album();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v55 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v55 - v27;
  __chkstk_darwin(v26);
  v30 = &v55 - v29;
  v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v31, v17, &unk_101184730);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1000095E8(v17, &unk_101184730);
  }

  (*(v19 + 32))(v30, v17, v18);
  v33 = *(v19 + 16);
  v55 = v28;
  v56 = v30;
  v33(v28, v30, v18);
  v34 = v63;
  *v63 = 1;
  v35 = v34;
  swift_storeEnumTagMultiPayload();
  v36 = type metadata accessor for URL();
  v37 = v25;
  v38 = v64;
  (*(*(v36 - 8) + 56))();
  v33(v37, v28, v18);
  v39 = v58;
  sub_1004E40DC(v35, v58, type metadata accessor for ContainerDetail.Source);
  v65 = v19;
  v40 = v59;
  sub_1000089F8(v38, v59, &qword_101183A20);
  v33(v22, v37, v18);
  v41 = v57;
  sub_1004E40DC(v39, v57, type metadata accessor for ContainerDetail.Source);
  v42 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v43 = v61;
  (*(*(v42 - 8) + 56))(v61, 1, 1, v42);
  v44 = v60;
  sub_1000089F8(v40, v60, &qword_101183A20);
  v45 = sub_1004E34D0(v22, v41, v43, v44);
  sub_1000095E8(v40, &qword_101183A20);
  sub_1004E414C(v39, type metadata accessor for ContainerDetail.Source);
  v46 = *(v65 + 8);
  v65 += 8;
  v46(v37, v18);
  v47 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
  v48 = sub_100137F64(v45, v47);
  sub_1000095E8(v64, &qword_101183A20);
  sub_1004E414C(v63, type metadata accessor for ContainerDetail.Source);
  v46(v55, v18);
  v49 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  v50 = v62;
  swift_beginAccess();
  sub_1000089F8(v50 + v49, v66, &unk_1011926C0);
  if (v67)
  {

    sub_1000095E8(v66, &unk_1011926C0);
    v51 = v56;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v66, &unk_1011926C0);
    if (Strong)
    {
      sub_1000089F8(v62 + v49, v66, &unk_1011926C0);
      if (v67)
      {
        v53 = 0;
      }

      else
      {
        v53 = swift_unknownObjectWeakLoadStrong();
      }

      v54 = v56;
      sub_1000095E8(v66, &unk_1011926C0);
      [Strong showViewController:v48 sender:v53];

      v51 = v54;
    }

    else
    {

      v51 = v56;
    }
  }

  return (v46)(v51, v18);
}

void sub_1004D7980()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 7)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
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
        *(v10 + 16) = sub_1004E5AC8;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF2B0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

BOOL sub_1004D7B68()
{
  v36 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v33 = *(v34 - 8);
  v3 = __chkstk_darwin(v34);
  v32 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v32 - v5;
  v7 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v7 - 8);
  v9 = &v32 - v8;
  v10 = type metadata accessor for Album();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v14, v9, &unk_101184730);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &unk_101184730);
    return 0;
  }

  (*(v11 + 32))(v13, v9, v10);
  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v15, v37, &unk_1011926C0);
  if (BYTE8(v37[0]))
  {
    sub_1000095E8(v37, &unk_1011926C0);
    v16 = v6;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v37, &unk_1011926C0);
    v16 = v6;
    if (Strong)
    {
      v18 = [Strong traitCollection];

      v19 = [v18 userInterfaceIdiom];
      if (v19 == 6)
      {
        goto LABEL_17;
      }
    }
  }

  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v20 = *Player.state<A>(for:)(v13);
  (*(v20 + 256))();

  v21 = v35;
  v22 = v36;
  if ((*(v35 + 88))(v2, v36) != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v11 + 8))(v13, v10);
    (*(v21 + 8))(v2, v22);
    return 0;
  }

  (*(v21 + 96))(v2, v22);
  v23 = v2;
  v24 = v33;
  v25 = v34;
  (*(v33 + 32))(v16, v23, v34);
  v26 = v32;
  (*(v24 + 104))(v32, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v25);
  v27 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
  v28 = *(v24 + 8);
  v28(v26, v25);
  if ((v27 & 1) == 0)
  {
LABEL_16:
    v28(v16, v25);
LABEL_17:
    (*(v11 + 8))(v13, v10);
    return 0;
  }

  static ApplicationCapabilities.shared.getter(v37);
  v29 = v38;
  if ((sub_10048BBDC(5, v38) & 1) == 0)
  {
    sub_100014984(v37);
    goto LABEL_16;
  }

  v30 = sub_10048BBDC(0, v29);
  sub_100014984(v37);
  v28(v16, v25);
  (*(v11 + 8))(v13, v10);
  return (v30 & 1) != 0;
}

void sub_1004D8158()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 8)
    {
      if (v2 == ++v3)
      {
        return;
      }
    }

    v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
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
        *(v10 + 16) = sub_1004E5A90;
        *(v10 + 24) = v9;
        v17 = sub_100029B94;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF238;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D8340(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a3();
  v7 = *a4;
  if (v6)
  {
    if (*(a1 + *a4))
    {
      return;
    }

    *(a1 + v7) = 1;
    v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v8, v14, &unk_1011926C0);
    if ((v15 & 1) == 0)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v14, &unk_1011926C0);
      if (!Strong)
      {
        return;
      }

      v10 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v10 insertItemsAtIndexPaths:v11.super.isa];
      goto LABEL_11;
    }

LABEL_8:
    sub_1000095E8(v14, &unk_1011926C0);
    return;
  }

  if (!*(a1 + *a4))
  {
    return;
  }

  *(a1 + v7) = 0;
  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v12, v14, &unk_1011926C0);
  if (v15)
  {
    goto LABEL_8;
  }

  v13 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v14, &unk_1011926C0);
  if (!v13)
  {
    return;
  }

  v10 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v11.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 deleteItemsAtIndexPaths:v11.super.isa];
LABEL_11:
}

uint64_t sub_1004D8654(uint64_t a1, uint64_t a2)
{
  v3[36] = a2;
  v3[37] = v2;
  v3[35] = a1;
  v4 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v3[38] = v4;
  v3[39] = *(v4 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v5 = type metadata accessor for Album();
  v3[43] = v5;
  v3[44] = *(v5 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v6 = type metadata accessor for Track();
  v3[48] = v6;
  v3[49] = *(v6 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  v3[54] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v7 = type metadata accessor for IndexPath();
  v3[57] = v7;
  v3[58] = *(v7 - 8);
  v3[59] = swift_task_alloc();
  v3[60] = sub_10010FC20(&unk_10118BCE0);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v3[67] = v8;
  v3[68] = *(v8 - 8);
  v3[69] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[70] = v9;
  v3[71] = *(v9 - 8);
  v3[72] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[73] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[74] = v11;
  v3[75] = v10;

  return _swift_task_switch(sub_1004D8A7C, v11, v10);
}

uint64_t sub_1004D8A7C()
{
  v1 = v0;
  v2 = *(v0 + 296);
  v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v3, v1 + 240, &unk_1011926C0);
  if (*(v1 + 248))
  {

    sub_1000095E8(v1 + 240, &unk_1011926C0);
LABEL_15:
    (*(*(v1 + 568) + 56))(*(v1 + 280), 1, 1, *(v1 + 560));

    v24 = *(v1 + 8);

    return v24();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v1 + 608) = Strong;
  sub_1000095E8(v1 + 240, &unk_1011926C0);
  if (!Strong)
  {

    goto LABEL_15;
  }

  v5 = *(v1 + 576);
  v6 = *(v1 + 288);
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 152) = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(Strong, v1 + 112, v1 + 16);
  sub_1004DB58C(v6, v5);
  v7 = *(v1 + 504);
  v8 = *(v1 + 456);
  v9 = *(v1 + 464);
  sub_1000089F8(*(v1 + 288), v7, &unk_10118BCE0);
  v10 = (*(v9 + 48))(v7, 1, v8);
  if (v10 == 1)
  {
    (*(*(v1 + 544) + 56))(*(v1 + 528), 1, 1, *(v1 + 536));
  }

  else
  {
    v11 = *(v1 + 528);
    (*(*(v1 + 464) + 32))(*(v1 + 472), *(v1 + 504), *(v1 + 456));
    sub_1004DA36C(v11);
    (*(*(v1 + 464) + 8))(*(v1 + 472), *(v1 + 456));
  }

  v12 = *(v1 + 544);
  v13 = *(v1 + 536);
  v14 = *(v1 + 528);
  if ((*(v12 + 48))(v14, 1, v13) == 1)
  {
    v15 = *(v1 + 448);
    v16 = *(v1 + 296);
    sub_1000095E8(v14, &unk_101183960);
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v16 + v17, v15, &unk_101184730);
    v25 = sub_1004DAEC4;
    v18 = swift_task_alloc();
    *(v1 + 624) = v18;
    *v18 = v1;
    v18[1] = sub_1004DA040;
    v19 = *(v1 + 448);
  }

  else
  {
    v20 = *(v1 + 552);
    v21 = *(v1 + 520);
    (*(v12 + 32))(v20, v14, v13);
    (*(v12 + 16))(v21, v20, v13);
    (*(v12 + 56))(v21, 0, 1, v13);
    v25 = sub_1004DA740;
    v22 = swift_task_alloc();
    *(v1 + 616) = v22;
    *v22 = v1;
    v22[1] = sub_1004D9CF0;
    v19 = *(v1 + 520);
  }

  return v25(v19, v1 + 16);
}

uint64_t sub_1004D9CF0()
{
  v1 = *v0;
  v2 = *(*v0 + 520);

  sub_1000095E8(v2, &unk_101183960);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);

  return _swift_task_switch(sub_1004D9E44, v4, v3);
}

uint64_t sub_1004D9E44()
{
  v1 = v0[76];
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[67];

  (*(v3 + 8))(v2, v4);
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[35];
  sub_10012BA6C((v0 + 2));
  sub_1004E59E0(v5, v8, type metadata accessor for PlaybackIntentDescriptor);
  (*(v6 + 56))(v8, 0, 1, v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004DA040()
{
  v1 = *v0;
  v2 = *(*v0 + 448);

  sub_1000095E8(v2, &unk_101184730);
  v3 = *(v1 + 600);
  v4 = *(v1 + 592);

  return _swift_task_switch(sub_1004DA194, v4, v3);
}

uint64_t sub_1004DA194()
{
  v1 = v0[76];

  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[35];
  sub_10012BA6C((v0 + 2));
  sub_1004E59E0(v2, v5, type metadata accessor for PlaybackIntentDescriptor);
  (*(v3 + 56))(v5, 0, 1, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004DA36C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v6 - 8);
  v8 = v21 - v7;
  v9 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v9 - 8);
  v11 = v21 - v10;
  sub_1004DEB38(v8);
  v12 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) == 1)
  {
    v13 = &unk_101192800;
    v14 = v8;
LABEL_5:
    sub_1000095E8(v14, v13);
    v15 = type metadata accessor for Song();
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  sub_10049FB9C(v11);
  sub_1004E414C(v8, type metadata accessor for AlbumDetailDataSource.CellType);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    v13 = &qword_10118A530;
    v14 = v11;
    goto LABEL_5;
  }

  (*(v3 + 16))(v5, v11, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for Track.song(_:))
  {
    (*(v3 + 96))(v5, v2);
    v17 = type metadata accessor for Song();
    v18 = *(v17 - 8);
    (*(v18 + 32))(a1, v5, v17);
    (*(v18 + 56))(a1, 0, 1, v17);
    return (*(v3 + 8))(v11, v2);
  }

  else
  {
    v19 = type metadata accessor for Song();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    v20 = *(v3 + 8);
    v20(v5, v2);
    return (v20)(v11, v2);
  }
}

uint64_t sub_1004DA740(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MusicLibrary.UpgradeOnPlayAction();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_101192828);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Song();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_1004DA940, v7, v6);
}

uint64_t sub_1004DA940()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1000089F8(v0[2], v3, &unk_101183960);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];

    sub_1000095E8(v4, &unk_101183960);
LABEL_6:

    v15 = v0[1];

    return v15();
  }

  v5 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  static MusicLibraryAction<>.upgradeOnPlayAction.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 32))(v21, v5, v6);
  v11 = (*(v7 + 88))(v21, v6);
  v12 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v7 + 8))(v21, v6);
  if (v11 != v12 || (v13 = [objc_opt_self() standardUserDefaults], v14 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter(), v13, (v14 & 1) != 0))
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_6;
  }

  v17 = v0[3];
  v18 = static MainActor.shared.getter();
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  *(v19 + 16) = v17;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_1004DACA8;

  return withCheckedContinuation<A>(isolation:function:_:)(v20, v18, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E4E2F0, sub_1004E5A88, v19, &type metadata for () + 8);
}

uint64_t sub_1004DACA8()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004DAE08, v3, v2);
}

uint64_t sub_1004DAE08()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004DAEC4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MusicLibrary.UpgradeOnPlayAction();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_101192828);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for Album();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v7;
  v2[18] = v6;

  return _swift_task_switch(sub_1004DB0C4, v7, v6);
}

uint64_t sub_1004DB0C4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_1000089F8(v0[2], v3, &unk_101184730);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[11];

    sub_1000095E8(v4, &unk_101184730);
LABEL_6:

    v15 = v0[1];

    return v15();
  }

  v5 = v0[10];
  v21 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  (*(v0[13] + 32))(v0[14], v0[11], v0[12]);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  static MusicLibraryAction<>.upgradeOnPlayAction.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();

  (*(v8 + 8))(v9, v10);
  (*(v7 + 32))(v21, v5, v6);
  v11 = (*(v7 + 88))(v21, v6);
  v12 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  (*(v7 + 8))(v21, v6);
  if (v11 != v12 || (v13 = [objc_opt_self() standardUserDefaults], v14 = NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter(), v13, (v14 & 1) != 0))
  {
    (*(v0[13] + 8))(v0[14], v0[12]);

    goto LABEL_6;
  }

  v17 = v0[3];
  v18 = static MainActor.shared.getter();
  v0[19] = v18;
  v19 = swift_task_alloc();
  v0[20] = v19;
  *(v19 + 16) = v17;
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_1004DB42C;

  return withCheckedContinuation<A>(isolation:function:_:)(v20, v18, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x8000000100E4E2F0, sub_1004EA724, v19, &type metadata for () + 8);
}

uint64_t sub_1004DB42C()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004EA71C, v3, v2);
}

uint64_t sub_1004DB58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v246 = a1;
  v213 = a2;
  v211 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v211);
  v226 = &v201 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v237 = *(v4 - 8);
  v238 = v4;
  __chkstk_darwin(v4);
  v212 = &v201 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011927E0);
  __chkstk_darwin(v6 - 8);
  v205 = &v201 - v7;
  v207 = sub_10010FC20(&qword_101188E88);
  v209 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = &v201 - v8;
  v9 = type metadata accessor for MusicPlaybackSource();
  v221 = *(v9 - 8);
  v222 = v9;
  __chkstk_darwin(v9);
  v228 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101188910);
  __chkstk_darwin(v11 - 8);
  v223 = &v201 - v12;
  v232 = sub_10010FC20(&qword_101192810);
  __chkstk_darwin(v232);
  v234 = &v201 - v13;
  v14 = sub_10010FC20(&unk_10118CDB0);
  v15 = __chkstk_darwin(v14 - 8);
  v225 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v204 = &v201 - v18;
  v19 = __chkstk_darwin(v17);
  v215 = &v201 - v20;
  v21 = __chkstk_darwin(v19);
  v210 = &v201 - v22;
  __chkstk_darwin(v21);
  v243 = &v201 - v23;
  v244 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v242 = *(v244 - 8);
  v24 = __chkstk_darwin(v244);
  v231 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v230 = &v201 - v27;
  __chkstk_darwin(v26);
  v241 = &v201 - v28;
  v29 = type metadata accessor for Track();
  v30 = *(v29 - 8);
  v248 = v29;
  v249 = v30;
  __chkstk_darwin(v29);
  v240 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&qword_10118A530);
  v33 = __chkstk_darwin(v32 - 8);
  v224 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v203 = &v201 - v36;
  v37 = __chkstk_darwin(v35);
  v214 = &v201 - v38;
  v39 = __chkstk_darwin(v37);
  v216 = &v201 - v40;
  v41 = __chkstk_darwin(v39);
  v239 = &v201 - v42;
  __chkstk_darwin(v41);
  v253 = &v201 - v43;
  v252 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v261 = *(v252 - 8);
  v44 = __chkstk_darwin(v252);
  v229 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v227 = &v201 - v46;
  v47 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v47 - 8);
  v245 = &v201 - v48;
  v49 = type metadata accessor for IndexPath();
  v250 = *(v49 - 8);
  v251 = v49;
  __chkstk_darwin(v49);
  v236 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10010FC20(&unk_101192800);
  v52 = __chkstk_darwin(v51 - 8);
  v208 = (&v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __chkstk_darwin(v52);
  v218 = (&v201 - v55);
  v56 = __chkstk_darwin(v54);
  v235 = &v201 - v57;
  __chkstk_darwin(v56);
  v59 = &v201 - v58;
  v60 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v60 - 8);
  v62 = &v201 - v61;
  v63 = type metadata accessor for Album();
  v64 = *(v63 - 8);
  v65 = __chkstk_darwin(v63);
  v219 = &v201 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v68 = (&v201 - v67);
  v69 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v247 = v2;
  sub_1000089F8(&v2[v69], v62, &unk_101184730);
  if ((*(v64 + 48))(v62, 1, v63) == 1)
  {
    sub_1000095E8(v62, &unk_101184730);
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v217 = v64;
  (*(v64 + 32))(v68, v62, v63);
  v71 = *(v261 + 56);
  v72 = v252;
  v71(v59, 1, 1, v252);
  v73 = v245;
  sub_1000089F8(v246, v245, &unk_10118BCE0);
  v74 = (*(v250 + 48))(v73, 1, v251);
  v75 = v59;
  v246 = v63;
  v233 = v59;
  if (v74 == 1)
  {
    sub_1000095E8(v73, &unk_10118BCE0);
    v76 = *(v261 + 48);
    v77 = (v261 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  }

  else
  {
    v201 = v71;
    v78 = v236;
    (*(v250 + 32))(v236, v73, v251);
    v79 = v235;
    sub_1004DEB38(v235);
    v80 = v79;
    v81 = v261 + 48;
    v76 = *(v261 + 48);
    if (v76(v80, 1, v252) == 1)
    {
      sub_1000095E8(v80, &unk_101192800);
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      v83 = v250;
      v82 = v251;
      (*(v250 + 16))(v84, v78, v251);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v83 + 8))(v78, v82);
      (*(v217 + 8))(v68, v63);
      v85 = v233;
      return sub_1000095E8(v85, &unk_101192800);
    }

    v77 = v81 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    (*(v250 + 8))(v78, v251);
    v86 = v227;
    sub_1004E59E0(v80, v227, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_1000095E8(v75, &unk_101192800);
    v72 = v252;
    sub_1004E59E0(v86, v75, type metadata accessor for AlbumDetailDataSource.CellType);
    v201(v75, 0, 1, v72);
  }

  v251 = v76;
  v87 = v76(v75, 1, v72);
  v88 = v253;
  v90 = v248;
  v89 = v249;
  v91 = v239;
  v261 = v77;
  if (v87)
  {
    (*(v249 + 56))(v253, 1, 1, v248);
  }

  else
  {
    v92 = v229;
    sub_1004E40DC(v75, v229, type metadata accessor for AlbumDetailDataSource.CellType);
    sub_10049FB9C(v88);
    sub_1004E414C(v92, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  sub_1000089F8(v88, v91, &qword_10118A530);
  v250 = *(v89 + 48);
  v93 = (v250)(v91, 1, v90);
  v202 = v68;
  if (v93 == 1)
  {
    sub_1000095E8(v91, &qword_10118A530);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v245 = qword_101218AC8;
    v94 = *Player.state<A>(for:)(v68);
    v95 = v231;
    (*(v94 + 256))();

    v96 = v241;
    v97 = v242;
    v98 = v244;
    v242[13](v241, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v244);
    v99 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v100 = v97[1];
    v100(v96, v98);
    if ((v99 & 1) == 0)
    {
      v261 = type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      v128 = v127;
      v129 = *(sub_10010FC20(&qword_101192818) + 48);
      v130 = v217;
      (*(v217 + 16))(v128, v202, v246);
      v131 = (v128 + v129);
      v132 = v244;
      (v97)[2](v131, v95, v244);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v100(v95, v132);
      sub_1000095E8(v253, &qword_10118A530);
      (*(v130 + 8))(v202, v246);
LABEL_59:
      v85 = v233;
      return sub_1000095E8(v85, &unk_101192800);
    }

    v100(v95, v98);
  }

  else
  {
    v236 = (v89 + 48);
    v101 = *(v89 + 32);
    v102 = v240;
    v101(v240, v91, v90);
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v245 = qword_101218AC8;
    v103 = Player.state<A>(for:)(v102);
    v104 = v241;
    (*(*v103 + 256))();
    v105 = v242;
    v106 = v230;
    v107 = v244;
    v242[13](v230, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v244);
    v108 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v109 = v105[1];
    v109(v106, v107);
    v109(v104, v107);
    if ((v108 & 1) == 0)
    {
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      v134 = v133;
      v135 = *(sub_10010FC20(&unk_1011927F0) + 48);
      v136 = v249;
      v137 = v240;
      (*(v249 + 16))(v134, v240, v90);
      *(v134 + v135) = v103;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      (*(v136 + 8))(v137, v90);
LABEL_27:
      sub_1000095E8(v253, &qword_10118A530);
      (*(v217 + 8))(v202, v246);
      goto LABEL_59;
    }

    (*(v249 + 8))(v240, v90);
  }

  v110 = *(v237 + 56);
  v244 = v237 + 56;
  v242 = v110;
  (v110)(v243, 1, 1, v238);
  v111 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  v112 = v247;
  swift_beginAccess();
  v113 = *(v232 + 48);
  v114 = type metadata accessor for MusicPropertySource();
  v115 = *(v114 - 8);
  v116 = &v112[v111];
  v117 = v234;
  (*(v115 + 16))(v234, v116, v114);
  sub_1000089F8(v233, v117 + v113, &unk_101192800);
  v118 = (*(v115 + 88))(v117, v114);
  if (v118 == enum case for MusicPropertySource.catalog(_:))
  {
    v119 = v251(v117 + v113, 1, v252);
    v120 = v253;
    v121 = v217;
    if (v119 != 1)
    {
      v261 = v113;
      sub_1000089F8(v117 + v113, v218, &unk_101192800);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v252 = *v218;
        v257[0] = *(v252 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
        (*(v121 + 16))(v219, v202, v246);
        sub_1000089F8(v120, v216, &qword_10118A530);
        v147 = v221;
        v148 = v222;
        v149 = v223;
        (*(v221 + 104))(v223, enum case for MusicPlaybackSource.catalog(_:), v222);
        (*(v147 + 56))(v149, 0, 1, v148);

        sub_10010FC20(&qword_10119ED90);
        sub_100020674(&qword_101192820, &qword_10119ED90);
        v126 = v210;
        MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();

        goto LABEL_35;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v257[0] = v218[1];
        (*(v121 + 16))(v219, v202, v246);
        sub_1000089F8(v120, v216, &qword_10118A530);
        v124 = v221;
        v123 = v222;
        v125 = v223;
        (*(v221 + 104))(v223, enum case for MusicPlaybackSource.catalog(_:), v222);
        (*(v124 + 56))(v125, 0, 1, v123);
        v252 = sub_10010FC20(&qword_10119ED90);
        sub_100020674(&qword_101192820, &qword_10119ED90);
        v126 = v210;
        MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();
LABEL_35:
        v150 = v117;
        v151 = v243;
        sub_1000095E8(v243, &unk_10118CDB0);
        v152 = v238;
        (v242)(v126, 0, 1, v238);
        v153 = v126;
        v154 = v217;
        sub_10003D17C(v153, v151, &unk_10118CDB0);
        sub_1000095E8(v150 + v261, &unk_101192800);
        (*(v115 + 8))(v150, v114);
        v155 = v152;
        v156 = v202;
        v157 = v237;
LABEL_49:
        v172 = v225;
        sub_1000089F8(v151, v225, &unk_10118CDB0);
        v173 = (*(v157 + 48))(v172, 1, v155);
        v174 = v224;
        if (v173 == 1)
        {
          sub_1000095E8(v172, &unk_10118CDB0);
          type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
          sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          v175 = v151;
        }

        else
        {
          v176 = v212;
          (*(v157 + 32))(v212, v172, v155);
          (*(v157 + 16))(v226, v176, v155);
          swift_storeEnumTagMultiPayload();
          sub_1000089F8(v253, v174, &qword_10118A530);
          v177 = v248;
          if ((v250)(v174, 1, v248) == 1)
          {
            sub_1000095E8(v174, &qword_10118A530);
            v178 = v246;
            v258 = v246;
            v259 = &protocol witness table for Album;
            v179 = sub_10001C8B8(v257);
            (*(v154 + 16))(v179, v156, v178);
          }

          else
          {
            *(&v255 + 1) = v177;
            v256 = &protocol witness table for Track;
            v180 = sub_10001C8B8(&v254);
            (*(v249 + 32))(v180, v174, v177);
            sub_100059A8C(&v254, v257);
          }

          v181 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
          v182 = v247;
          swift_beginAccess();
          sub_1000089F8(&v182[v181], &v254, &unk_1011926C0);
          if (BYTE8(v254))
          {
            sub_1000095E8(&v254, &unk_1011926C0);
            Strong = 0;
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v254, &unk_1011926C0);
          }

          *(&v255 + 1) = type metadata accessor for AlbumDetailDataSource(0);
          v256 = &off_1010AEFD0;
          *&v254 = v247;
          v184 = v247;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v226, v257, 3, 0, 0, 1, 0, 1, v213, Strong, &v254);
          (*(v157 + 8))(v176, v155);
          v175 = v243;
        }

        sub_1000095E8(v175, &unk_10118CDB0);
        sub_1000095E8(v253, &qword_10118A530);
        (*(v154 + 8))(v156, v246);
        goto LABEL_59;
      }

      (*(v249 + 8))(v218, v248);
      v113 = v261;
    }

    sub_1000095E8(v117 + v113, &unk_101192800);
    (*(v115 + 8))(v117, v114);
    static ApplicationCapabilities.shared.getter(v260);
    sub_100014984(v260);
    if (BYTE8(v260[0]))
    {
      v163 = &enum case for MusicPlaybackSource.catalog(_:);
      v161 = v202;
      v155 = v238;
      v159 = v221;
      v158 = v222;
      v162 = v214;
    }

    else
    {
      v155 = v238;
      v159 = v221;
      v158 = v222;
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v160 = (*(*v245 + 528))();
      v161 = v202;
      v162 = v214;
      if (v160)
      {

        v163 = &enum case for MusicPlaybackSource.catalog(_:);
      }

      else
      {
        v163 = &enum case for MusicPlaybackSource.library(_:);
      }
    }

    (*(v159 + 104))(v228, *v163, v158);
    v164 = v246;
    v258 = v246;
    v259 = &protocol witness table for Album;
    v165 = sub_10001C8B8(v257);
    (*(v121 + 16))(v165, v161, v164);
    sub_1000089F8(v253, v162, &qword_10118A530);
    v166 = v248;
    v167 = v121;
    if ((v250)(v162, 1, v248) == 1)
    {
      sub_1000095E8(v162, &qword_10118A530);
      v254 = 0u;
      v255 = 0u;
      v256 = 0;
    }

    else
    {
      *(&v255 + 1) = v166;
      v256 = &protocol witness table for Track;
      v168 = sub_10001C8B8(&v254);
      (*(v249 + 32))(v168, v162, v166);
    }

    v169 = v223;
    v170 = v228;
    (*(v159 + 16))(v223, v228, v158);
    (*(v159 + 56))(v169, 0, 1, v158);
    v171 = v215;
    MusicPlaybackIntentDescriptor.init(container:startingAt:playbackSource:)();
    (*(v159 + 8))(v170, v158);
    v151 = v243;
    sub_1000095E8(v243, &unk_10118CDB0);
    (v242)(v171, 0, 1, v155);
    sub_10003D17C(v171, v151, &unk_10118CDB0);
    v154 = v167;
    v157 = v237;
LABEL_48:
    v156 = v202;
    goto LABEL_49;
  }

  v138 = v253;
  if (v118 != enum case for MusicPropertySource.library(_:))
  {
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000095E8(v243, &unk_10118CDB0);
    sub_1000095E8(v138, &qword_10118A530);
    (*(v217 + 8))(v202, v246);
    sub_1000095E8(v117, &qword_101192810);
    goto LABEL_59;
  }

  v139 = v251(v117 + v113, 1, v252);
  v140 = v217;
  v141 = v248;
  if (v139 != 1)
  {
    sub_1000089F8(v117 + v113, v208, &unk_101192800);
    v142 = swift_getEnumCaseMultiPayload();
    if (!v142)
    {
      v261 = *v208;
      v257[0] = *(v261 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks);
      (*(v140 + 16))(v219, v202, v246);
      sub_1000089F8(v253, v216, &qword_10118A530);
      v186 = v221;
      v185 = v222;
      v187 = v223;
      (*(v221 + 104))(v223, enum case for MusicPlaybackSource.library(_:), v222);
      (*(v186 + 56))(v187, 0, 1, v185);

      sub_10010FC20(&qword_10119ED90);
      sub_100020674(&qword_101192820, &qword_10119ED90);
      v146 = v210;
      MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();

      goto LABEL_62;
    }

    v141 = v248;
    if (v142 == 1)
    {
      v257[0] = v208[1];
      (*(v140 + 16))(v219, v202, v246);
      sub_1000089F8(v253, v216, &qword_10118A530);
      v144 = v221;
      v143 = v222;
      v145 = v223;
      (*(v221 + 104))(v223, enum case for MusicPlaybackSource.library(_:), v222);
      (*(v144 + 56))(v145, 0, 1, v143);
      v261 = sub_10010FC20(&qword_10119ED90);
      sub_100020674(&qword_101192820, &qword_10119ED90);
      v146 = v210;
      MusicPlaybackIntentDescriptor.init<A, B, C>(items:of:startingAt:playbackSource:)();
LABEL_62:
      v151 = v243;
      sub_1000095E8(v243, &unk_10118CDB0);
      (v242)(v146, 0, 1, v238);
      v188 = v146;
      v154 = v217;
      v157 = v237;
      sub_10003D17C(v188, v151, &unk_10118CDB0);
      v189 = v234;
      sub_1000095E8(&v234[v113], &unk_101192800);
      (*(v115 + 8))(v189, v114);
      v155 = v238;
      goto LABEL_48;
    }

    (*(v249 + 8))(v208, v248);
  }

  sub_1000095E8(v117 + v113, &unk_101192800);
  (*(v115 + 8))(v117, v114);
  v190 = v205;
  sub_1004C50FC(1, v205);
  v191 = v209;
  v192 = v207;
  if ((*(v209 + 48))(v190, 1, v207) == 1)
  {
    sub_1000095E8(v190, &qword_1011927E0);
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000095E8(v243, &unk_10118CDB0);
    goto LABEL_27;
  }

  v193 = v206;
  (*(v191 + 32))(v206, v190, v192);
  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  v258 = v192;
  v259 = sub_100020674(&qword_101188E90, &qword_101188E88);
  v194 = sub_10001C8B8(v257);
  (*(v191 + 16))(v194, v193, v192);
  v195 = v203;
  sub_1000089F8(v253, v203, &qword_10118A530);
  v196 = (v250)(v195, 1, v141);
  v197 = v141;
  v156 = v202;
  if (v196 == 1)
  {
    sub_1000095E8(v195, &qword_10118A530);
    v254 = 0u;
    v255 = 0u;
    v256 = 0;
  }

  else
  {
    *(&v255 + 1) = v197;
    v256 = &protocol witness table for Track;
    v198 = sub_10001C8B8(&v254);
    (*(v249 + 32))(v198, v195, v197);
  }

  v155 = v238;
  v151 = v243;
  v199 = v204;
  v200 = v220;
  MusicPlaybackIntentDescriptor.init(request:startingAt:)();
  v220 = v200;
  v157 = v237;
  if (!v200)
  {
    (*(v209 + 8))(v206, v192);
    sub_1000095E8(v151, &unk_10118CDB0);
    (v242)(v199, 0, 1, v155);
    sub_10003D17C(v199, v151, &unk_10118CDB0);
    v154 = v217;
    goto LABEL_49;
  }

  (*(v209 + 8))(v206, v192);
  sub_1000095E8(v151, &unk_10118CDB0);
  sub_1000095E8(v253, &qword_10118A530);
  (*(v217 + 8))(v156, v246);
  return sub_1000095E8(v233, &unk_101192800);
}

uint64_t sub_1004DDAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v4 - 8);
  v6 = v16 - v5;
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004DEB38(v6);
  v11 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_1000095E8(v6, &unk_101192800);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1004DDD64(v10, a2);
      return (*(v8 + 8))(v10, v7);
    }

    sub_1004E414C(v6, type metadata accessor for AlbumDetailDataSource.CellType);
  }

  type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
  swift_allocError();
  v14 = v13;
  v15 = type metadata accessor for IndexPath();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1004DDD64@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v80 = a2;
  v77 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v77);
  v79 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v92 = *(v95 - 8);
  __chkstk_darwin(v95);
  v78 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011927E0);
  __chkstk_darwin(v7 - 8);
  v84 = &v77 - v8;
  v86 = sub_10010FC20(&qword_101188E88);
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v77 - v9;
  v97 = type metadata accessor for Track();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v88 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MusicPropertySource();
  v94 = *(v90 - 8);
  __chkstk_darwin(v90);
  v93 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v12 - 8);
  v83 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v77 - v15;
  __chkstk_darwin(v16);
  v87 = &v77 - v17;
  __chkstk_darwin(v18);
  v104 = &v77 - v19;
  v20 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v77 - v25;
  v27 = a1;
  v28 = Track.id.getter();
  v30 = v29;
  v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
  swift_beginAccess();
  v91 = v3;
  v32 = *&v3[v31];
  if (*(v32 + 16) && (, v33 = sub_100019C10(v28, v30), v35 = v34, , (v35 & 1) != 0))
  {
    v36 = *(*(v32 + 56) + 8 * v33);

    v38 = v97;
  }

  else
  {

    v38 = v97;
    if (qword_10117F5F8 != -1)
    {
      swift_once();
    }

    v37 = Player.state<A>(for:)(v27);
    v36 = v37;
  }

  (*(*v36 + 256))(v37);
  (*(v21 + 104))(v23, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v20);
  v39 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v40 = *(v21 + 8);
  v40(v23, v20);
  v40(v26, v20);
  if ((v39 & 1) == 0)
  {
    type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
    sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
    swift_allocError();
    v53 = v52;
    v54 = *(sub_10010FC20(&unk_1011927F0) + 48);
    (*(v96 + 16))(v53, v27, v38);
    *(v53 + v54) = v36;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v41 = *(v92 + 56);
  v41(v104, 1, 1, v95);
  v42 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  v43 = v91;
  swift_beginAccess();
  v44 = v94;
  v45 = &v43[v42];
  v46 = v93;
  v47 = v90;
  (*(v94 + 16))(v93, v45, v90);
  v48 = (*(v44 + 88))(v46, v47);
  if (v48 != enum case for MusicPropertySource.catalog(_:))
  {
    if (v48 != enum case for MusicPropertySource.library(_:))
    {
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_1000095E8(v104, &unk_10118CDB0);
      return (*(v94 + 8))(v93, v47);
    }

    v55 = v84;
    sub_1004C50FC(1, v84);
    v56 = v55;
    v57 = v85;
    v58 = v55;
    v59 = v86;
    if ((*(v85 + 48))(v58, 1, v86) == 1)
    {
      sub_1000095E8(v56, &qword_1011927E0);
      type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
      sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      v60 = v81;
      (*(v57 + 32))(v81, v56, v59);
      MusicLibrarySectionedRequest<>.filterItems(equalTo:)();
      v102 = v59;
      v103 = sub_100020674(&qword_101188E90, &qword_101188E88);
      v61 = sub_10001C8B8(v101);
      (*(v57 + 16))(v61, v60, v59);
      v100 = 0;
      v98 = 0u;
      v99 = 0u;
      v62 = v89;
      MusicPlaybackIntentDescriptor.init(request:startingAt:)();
      if (!v62)
      {
        (*(v57 + 8))(v60, v59);
        sub_1000095E8(v104, &unk_10118CDB0);
        v49 = v82;
        goto LABEL_19;
      }

      (*(v57 + 8))(v60, v59);
    }

LABEL_25:
    v68 = v104;
    return sub_1000095E8(v68, &unk_10118CDB0);
  }

  (*(v96 + 16))(v88, v27, v38);
  v49 = v87;
  v50 = v89;
  MusicPlaybackIntentDescriptor.init<A>(item:)();
  sub_1000095E8(v104, &unk_10118CDB0);
  if (v50)
  {
  }

LABEL_19:
  v63 = v95;
  v41(v49, 0, 1, v95);
  v64 = v104;
  sub_10003D17C(v49, v104, &unk_10118CDB0);
  v65 = v64;
  v66 = v83;
  sub_1000089F8(v65, v83, &unk_10118CDB0);
  v67 = v92;
  if ((*(v92 + 48))(v66, 1, v63) != 1)
  {
    v69 = v78;
    v70 = v95;
    (*(v67 + 32))(v78, v66, v95);
    v71 = v79;
    (*(v67 + 16))(v79, v69, v70);
    swift_storeEnumTagMultiPayload();
    v72 = v97;
    v102 = v97;
    v103 = &protocol witness table for Track;
    v73 = sub_10001C8B8(v101);
    (*(v96 + 16))(v73, v27, v72);
    v74 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v43[v74], &v98, &unk_1011926C0);
    if (BYTE8(v98))
    {
      sub_1000095E8(&v98, &unk_1011926C0);
      Strong = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v98, &unk_1011926C0);
    }

    *(&v99 + 1) = type metadata accessor for AlbumDetailDataSource(0);
    v100 = &off_1010AEFD0;
    *&v98 = v43;
    v76 = v43;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v71, v101, 3, 0, 0, 1, 0, 1, v80, Strong, &v98);

    (*(v67 + 8))(v69, v95);
    goto LABEL_25;
  }

  sub_1000095E8(v66, &unk_10118CDB0);
  type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError(0);
  sub_1004E41B4(&qword_1011927E8, type metadata accessor for AlbumDetailDataSource.PlaybackIntentCreationError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v68 = v104;
  return sub_1000095E8(v68, &unk_10118CDB0);
}

unint64_t sub_1004DEB38@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (*(v6 + v5) != 2)
    {
      if (v4 == ++v5)
      {
        goto LABEL_5;
      }
    }

    if (IndexPath.section.getter() == v5)
    {
      v13 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
      if (v13)
      {

        if (IndexPath.item.getter() < *(v13 + 16))
        {
          result = IndexPath.item.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else
          {
            v14 = result;
            if (result < *(v13 + 16))
            {
              v15 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v16 = *(v15 - 8);
              sub_1004E40DC(v13 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v14, a1, type metadata accessor for AlbumDetailDataSource.CellType);

              v8 = *(v16 + 56);
              v10 = a1;
              v11 = 0;
              v9 = v15;
              goto LABEL_7;
            }
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  else
  {
LABEL_5:
    IndexPath.section.getter();
  }

  v7 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v8 = *(*(v7 - 8) + 56);
  v9 = v7;
  v10 = a1;
  v11 = 1;
LABEL_7:

  return v8(v10, v11, 1, v9);
}

uint64_t sub_1004DECFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v6 = type metadata accessor for Track();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v30 - v15;
  v37 = a2;
  if (a2 && (v17 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections), (v18 = *(v17 + 16)) != 0))
  {
    v19 = 0;
    v20 = v17 + 32;
    while (*(v20 + v19) != 2)
    {
      if (v18 == ++v19)
      {
        goto LABEL_6;
      }
    }

    v31 = a3;
    v24 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
    if (v24 && (v35 = *(v24 + 16)) != 0)
    {
      v34 = v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v32 = (v7 + 8);
      v33 = (v7 + 32);

      v25 = 0;
      while (v25 < *(v24 + 16))
      {
        sub_1004E40DC(v34 + *(v11 + 72) * v25, v16, type metadata accessor for AlbumDetailDataSource.CellType);
        sub_1004E40DC(v16, v14, type metadata accessor for AlbumDetailDataSource.CellType);
        if (swift_getEnumCaseMultiPayload() < 2)
        {
          sub_1004E414C(v16, type metadata accessor for AlbumDetailDataSource.CellType);
          result = sub_1004E414C(v14, type metadata accessor for AlbumDetailDataSource.CellType);
        }

        else
        {
          (*v33)(v9, v14, v6);
          v26 = MusicItem.contains(_:)();
          (*v32)(v9, v6);
          result = sub_1004E414C(v16, type metadata accessor for AlbumDetailDataSource.CellType);
          if (v26)
          {

            v27 = v31;
            IndexPath.init(item:section:)();
            v28 = type metadata accessor for IndexPath();
            return (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
          }
        }

        if (v35 == ++v25)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_19:
      v29 = type metadata accessor for IndexPath();
      return (*(*(v29 - 8) + 56))(v31, 1, 1, v29);
    }
  }

  else
  {
LABEL_6:
    v21 = type metadata accessor for IndexPath();
    v22 = *(*(v21 - 8) + 56);

    return v22(a3, 1, 1, v21);
  }

  return result;
}

uint64_t sub_1004DF100@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v5 - 8);
  v7 = &v24[-v6];
  v8 = type metadata accessor for Track();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000089F8(a1, v7, &qword_10118A530);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_10118A530);
LABEL_8:
    v17 = type metadata accessor for IndexPath();
    return (*(*(v17 - 8) + 56))(a2, 1, 1, v17);
  }

  v12 = (*(v9 + 32))(v11, v7, v8);
  v13 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_7:
    (*(v9 + 8))(v11, v8);
    goto LABEL_8;
  }

  v15 = 0;
  v16 = v13 + 32;
  while (*(v16 + v15) != 2)
  {
    if (v14 == ++v15)
    {
      goto LABEL_7;
    }
  }

  v19 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (v19 && (__chkstk_darwin(v12), *&v24[-16] = v11, , sub_100735698(sub_1004E5A48, &v24[-32], v19), v21 = v20, , (v21 & 1) == 0))
  {
    IndexPath.init(item:section:)();
    v23 = type metadata accessor for IndexPath();
    (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }

  else
  {
    v22 = type metadata accessor for IndexPath();
    (*(*(v22 - 8) + 56))(a2, 1, 1, v22);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004DF438(uint64_t a1)
{
  v2 = type metadata accessor for Track();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E40DC(a1, v8, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
    v9 = static MusicItem<>.==~ infix(_:_:)();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_1004E414C(v8, type metadata accessor for AlbumDetailDataSource.CellType);
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1004DF62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for Track();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v17 - v12);
  sub_1000089F8(a1, &v17 - v12, &qword_1011846D0);
  v14 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  if ((*(*(v14 - 8) + 48))(v13, 1, v14) == 1)
  {
    v15 = type metadata accessor for IndexPath();
    return (*(*(v15 - 8) + 56))(a2, 1, 1, v15);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v13, v7);
    (*(v8 + 16))(v6, v10, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_1004DF100(v6, a2);
    sub_1000095E8(v6, &qword_10118A530);
    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_1004DECFC(*v13, v13[1], a2);
  }
}

uint64_t sub_1004DF8FC@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v39 - v5;
  v6 = type metadata accessor for MusicPropertySource();
  v42 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v16, v11, &unk_101184730);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_101184730);
    v17 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v17 - 8) + 56))(v43, 1, 1, v17);
  }

  (*(v13 + 32))(v15, v11, v12);
  v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v20 = v42;
  (*(v42 + 16))(v8, v1 + v19, v6);
  v21 = (*(v20 + 88))(v8, v6);
  if (v21 == enum case for MusicPropertySource.catalog(_:))
  {
    v22 = v1;
    v23 = Album.catalogID.getter();
    if (v24)
    {
      v25 = v24;
      v42 = v23;
    }

    else
    {
      v42 = Album.id.getter();
      v25 = v29;
    }

    v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
    swift_beginAccess();
    v31 = v40;
    sub_1000089F8(v22 + v30, v40, &qword_101183A20);
    v32 = type metadata accessor for URL();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v31, 1, v32) == 1)
    {
      v35 = v41;
      Album.url.getter();
      v36 = v35;
      (*(v13 + 8))(v15, v12);
      v37 = v34(v31, 1, v32);
      v27 = v43;
      if (v37 != 1)
      {
        sub_1000095E8(v31, &qword_101183A20);
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      v36 = v41;
      (*(v33 + 32))(v41, v31, v32);
      (*(v33 + 56))(v36, 0, 1, v32);
      v27 = v43;
    }

    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v42, v25, 0x6D75626C41, 0xE500000000000000, v36, 0, 0, 0, v27, 1, 0, 0, 2);
  }

  else
  {
    if (v21 != enum case for MusicPropertySource.library(_:))
    {
      (*(v13 + 8))(v15, v12);
      v28 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v28 - 8) + 56))(v43, 1, 1, v28);
      return (*(v20 + 8))(v8, v6);
    }

    v26 = MetricsEvent.Page.libraryAlbumDetail.unsafeMutableAddressor();
    v27 = v43;
    sub_1004E40DC(v26, v43, type metadata accessor for MetricsEvent.Page);
    (*(v13 + 8))(v15, v12);
  }

  v38 = type metadata accessor for MetricsEvent.Page(0);
  return (*(*(v38 - 8) + 56))(v27, 0, 1, v38);
}

unint64_t sub_1004DFF28()
{
  v1 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = type metadata accessor for Album();
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
  *(inited + 144) = 0x6D75626C61;
  *(inited + 152) = 0xE500000000000000;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 216) = &type metadata for Int;
  *(inited + 184) = 0x8000000100E4E2D0;
  *(inited + 192) = 0;
  v9 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_10010FC20(&unk_1011927D0);
  swift_arrayDestroy();
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v3, &unk_101184730);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_101184730);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v11 = Album.title.getter();
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

uint64_t sub_1004E0274@<X0>(__n128 *a1@<X8>, __n128 a2@<Q0>)
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
  sub_1004DF8FC(v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000095E8(v11, &unk_1011838F0);
    v16 = type metadata accessor for Actions.MetricsReportingContext();
    return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
  }

  else
  {
    sub_1004E59E0(v11, v15, type metadata accessor for MetricsEvent.Page);
    sub_1004E40DC(v15, v8, type metadata accessor for MetricsEvent.Page);
    v18 = *(v13 + 56);
    v18(v8, 0, 1, v12);
    sub_10010FC20(&unk_1011927C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100EBC6B0;
    *(v19 + 32) = sub_1004DFF28();
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
    sub_1004E414C(v15, type metadata accessor for MetricsEvent.Page);
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

uint64_t sub_1004E06A0(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v4, v6, &unk_1011926C0);
  swift_beginAccess();
  sub_1002190E0(a1, v3 + v4, &unk_1011926C0);
  swift_endAccess();
  sub_1004AB7A8(v6);
  sub_1000095E8(a1, &unk_1011926C0);
  return sub_1000095E8(v6, &unk_1011926C0);
}

uint64_t sub_1004E0774()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);

  return v1;
}

uint64_t sub_1004E07FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  return sub_1000089F8(v3 + v4, a1, &unk_10118BCE0);
}

uint64_t sub_1004E0944@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v5 = type metadata accessor for MusicPropertySource();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1004E09D0()
{
  v0 = *AccessibilityIdentifier.albumView.unsafeMutableAddressor();

  return v0;
}

uint64_t sub_1004E0A20()
{
  if (qword_10117F6F8 != -1)
  {
    swift_once();
  }

  v0 = qword_101218CA8;

  return v0;
}

uint64_t sub_1004E0AD0()
{
  if (*(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection))
  {
    return 1;
  }

  else
  {
    return *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection);
  }
}

uint64_t sub_1004E0B34()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
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

void sub_1004E0DC4(uint64_t a1)
{
  v3 = type metadata accessor for MusicPropertySource();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652) && (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback) & 1) != 0)
  {
    v9 = v5;
    (*(v4 + 104))(v8, enum case for MusicPropertySource.library(_:), v5, v6);
    v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v4 + 40))(v1 + v10, v8, v9);
    swift_endAccess();
    sub_1004AF430();
  }
}

uint64_t sub_1004E0F38()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v19, "AlbumDetail(");
  BYTE5(v19[1]) = 0;
  HIWORD(v19[1]) = -5120;
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v4, &unk_101184730);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_101184730);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    _StringGuts.grow(_:)(33);
    v10._object = 0x8000000100E4E2B0;
    v10._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v10);
    type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v18);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18._countAndFlagsBits = 3826793;
    v18._object = 0xE300000000000000;
    Album.id.getter();
    v11 = MusicItemID.description.getter();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    String.append(_:)(v18);

    (*(v6 + 8))(v8, v5);
  }

  v15._countAndFlagsBits = 41;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  return v19[0];
}

uint64_t Album.mappingContent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Album();
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101192210);
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_1004E12C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004E41B4(&qword_101192B90, &type metadata accessor for Album);

  return MusicLibraryMappingItem<>.mappingID.getter(a1, a2, v4);
}

uint64_t sub_1004E134C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 - 8) + 16))(a2, v2, a1);
  v4 = enum case for MusicLibraryMapping.ItemContent.fetchedCatalogItem<A>(_:);
  v5 = sub_10010FC20(&qword_101192210);
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

void sub_1004E1428()
{
  sub_10003920C(319, &qword_101192410, &qword_101192418);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_101192420, &qword_101192428);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_101192430, &qword_101192438);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_101192440, &qword_1011A4520);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &unk_101192450, &unk_1011A4B80);
          if (v4 <= 0x3F)
          {
            sub_10003920C(319, &qword_101184580, &qword_101184588);
            if (v5 <= 0x3F)
            {
              sub_1004E1AA0();
              if (v6 <= 0x3F)
              {
                sub_10003920C(319, &unk_101192470, &unk_1011A4560);
                if (v7 <= 0x3F)
                {
                  sub_1004E1B18(319, &unk_101192480, &type metadata accessor for IndexPath);
                  if (v8 <= 0x3F)
                  {
                    sub_1004E1B18(319, &qword_1011A4570, &type metadata accessor for Artwork);
                    if (v9 <= 0x3F)
                    {
                      sub_1004E1B18(319, &qword_101192490, &type metadata accessor for Album);
                      if (v10 <= 0x3F)
                      {
                        type metadata accessor for MusicPropertySource();
                        if (v11 <= 0x3F)
                        {
                          type metadata accessor for AlbumDetailDataSource.LoadingSource(319);
                          if (v12 <= 0x3F)
                          {
                            sub_1004E1B18(319, &qword_10118F1D8, _s6AlbumsV5ScopeOMa);
                            if (v13 <= 0x3F)
                            {
                              sub_1004E1B18(319, &qword_1011814C0, &type metadata accessor for URL);
                              if (v14 <= 0x3F)
                              {
                                sub_10003920C(319, &qword_10118F6F8, &unk_1011841D0);
                                if (v15 <= 0x3F)
                                {
                                  sub_1004E1B18(319, &qword_101192498, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
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

void sub_1004E1AA0()
{
  if (!qword_101192460)
  {
    sub_100009F78(255, &unk_101184750);
    type metadata accessor for RelatedContentSpacing.Data(255);
    v0 = type metadata accessor for UICollectionView.CellRegistration();
    if (!v1)
    {
      atomic_store(v0, &qword_101192460);
    }
  }
}

void sub_1004E1B18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1004E1B98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1004E1BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1004E1C78()
{
  result = type metadata accessor for Album();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Song();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for MusicVideo();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1004E1D68()
{
  if (!qword_101192670)
  {
    sub_1001109D0(&qword_10119ED90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192670);
    }
  }
}

void sub_1004E1DE0()
{
  if (!qword_101192680[0])
  {
    type metadata accessor for Track();
    sub_1001109D0(&qword_101184A70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_101192680);
    }
  }
}

uint64_t sub_1004E1E60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001EBFF0;
  *(v7 + 24) = v6;
  v10[4] = sub_1002CF914;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1002B8A68;
  v10[3] = &unk_1010AF8F0;
  v8 = _Block_copy(v10);

  [a1 setUniversalStoreIdentifiersWithBlock:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E1FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = sub_10010FC20(&unk_101192790);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = (&v23 - v13);
  v15 = (&v23 + *(v12 + 56) - v13);
  sub_1004E40DC(a1, &v23 - v13, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  sub_1004E40DC(a2, v15, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = *(v5 + 32);
      v16(v10, v14, v4);
      v16(v8, v15, v4);
      sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
      v17 = static MusicItem<>.==~ infix(_:_:)();
      v18 = *(v5 + 8);
      v18(v8, v4);
      v18(v10, v4);
      return v17 & 1;
    }

    (*(v5 + 32))(v10, v14, v4);
    v17 = MusicItem.contains(_:)();
LABEL_7:

    (*(v5 + 8))(v10, v4);
    return v17 & 1;
  }

  v20 = *v14;
  v19 = v14[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v10, v15, v4);
    v17 = MusicItem.contains(_:)();
    goto LABEL_7;
  }

  if (v20 == *v15 && v19 == v15[1])
  {

    v17 = 1;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v17 & 1;
}

uint64_t sub_1004E2338(uint64_t a1, uint64_t a2)
{
  v116 = _s6AlbumsV5ScopeOMa(0);
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v112 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_10010FC20(&qword_101192758);
  __chkstk_darwin(v114);
  v117 = &v111 - v5;
  v6 = sub_10010FC20(&unk_1011926F0);
  v7 = __chkstk_darwin(v6 - 8);
  v113 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v111 - v9;
  v10 = sub_10010FC20(&unk_101184730);
  v11 = __chkstk_darwin(v10 - 8);
  v128 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v129 = &v111 - v14;
  v15 = __chkstk_darwin(v13);
  v127 = &v111 - v16;
  v17 = __chkstk_darwin(v15);
  v130 = &v111 - v18;
  v19 = __chkstk_darwin(v17);
  v121 = &v111 - v20;
  __chkstk_darwin(v19);
  v125 = &v111 - v21;
  v135 = type metadata accessor for Album();
  v133 = *(v135 - 8);
  v22 = __chkstk_darwin(v135);
  v122 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v124 = &v111 - v25;
  v26 = __chkstk_darwin(v24);
  v120 = &v111 - v27;
  v28 = __chkstk_darwin(v26);
  v126 = &v111 - v29;
  v30 = __chkstk_darwin(v28);
  v119 = &v111 - v31;
  __chkstk_darwin(v30);
  v123 = &v111 - v32;
  v33 = type metadata accessor for MusicPropertySource();
  v34 = *(v33 - 8);
  v35 = __chkstk_darwin(v33);
  v132 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v111 - v38;
  __chkstk_darwin(v37);
  v41 = &v111 - v40;
  v42 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v43 = *(v34 + 16);
  v134 = a1;
  v43(v41, a1 + v42, v33);
  v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v131 = a2;
  v43(v39, a2 + v44, v33);
  LOBYTE(a2) = static MusicPropertySource.== infix(_:_:)();
  v45 = *(v34 + 8);
  v45(v39, v33);
  v45(v41, v33);
  if ((a2 & 1) == 0)
  {
    goto LABEL_15;
  }

  v46 = v134;
  v47 = v132;
  v43(v132, v134 + v42, v33);
  v48 = (*(v34 + 88))(v47, v33);
  v49 = v46;
  if (v48 != enum case for MusicPropertySource.catalog(_:))
  {
    v57 = v133;
    v58 = v135;
    if (v48 != enum case for MusicPropertySource.library(_:))
    {
      v45(v47, v33);
      goto LABEL_15;
    }

    v59 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    v60 = v125;
    sub_1000089F8(v46 + v59, v125, &unk_101184730);
    v61 = *(v57 + 48);
    if (v61(v60, 1, v58) == 1)
    {
LABEL_9:
      sub_1000095E8(v60, &unk_101184730);
LABEL_15:
      v74 = 0;
      return v74 & 1;
    }

    v62 = *(v57 + 32);
    v63 = v123;
    v62(v123, v60, v58);
    v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v65 = v131;
    swift_beginAccess();
    v66 = v65 + v64;
    v60 = v121;
    sub_1000089F8(v66, v121, &unk_101184730);
    if (v61(v60, 1, v58) == 1)
    {
      (*(v57 + 8))(v63, v58);
      goto LABEL_9;
    }

    v82 = v119;
    v62(v119, v60, v58);
    sub_1004E41B4(&unk_101192760, &type metadata accessor for Album);
    if ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
    {
      v102 = *(v57 + 8);
      v102(v82, v58);
      v102(v63, v58);
      goto LABEL_15;
    }

    v83 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v84 = v134;
    swift_beginAccess();
    v85 = v84 + v83;
    v86 = v118;
    sub_1000089F8(v85, v118, &unk_1011926F0);
    v87 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v88 = v131;
    swift_beginAccess();
    v89 = *(v114 + 48);
    v90 = v117;
    sub_1000089F8(v86, v117, &unk_1011926F0);
    sub_1000089F8(v88 + v87, v90 + v89, &unk_1011926F0);
    v91 = *(v115 + 48);
    v92 = v116;
    if (v91(v90, 1, v116) == 1)
    {
      sub_1000095E8(v86, &unk_1011926F0);
      v93 = *(v57 + 8);
      v94 = v135;
      v93(v119, v135);
      v93(v123, v94);
      if (v91(v90 + v89, 1, v92) == 1)
      {
        sub_1000095E8(v90, &unk_1011926F0);
        goto LABEL_49;
      }
    }

    else
    {
      v103 = v113;
      sub_1000089F8(v90, v113, &unk_1011926F0);
      if (v91(v90 + v89, 1, v92) != 1)
      {
        v106 = v90 + v89;
        v107 = v112;
        sub_1004E59E0(v106, v112, _s6AlbumsV5ScopeOMa);
        v108 = sub_10028C5F4(v103, v107);
        sub_1004E414C(v107, _s6AlbumsV5ScopeOMa);
        sub_1000095E8(v118, &unk_1011926F0);
        v109 = *(v57 + 8);
        v110 = v135;
        v109(v119, v135);
        v109(v123, v110);
        v88 = v131;
        sub_1004E414C(v103, _s6AlbumsV5ScopeOMa);
        sub_1000095E8(v90, &unk_1011926F0);
        if ((v108 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_49:
        v74 = *(v134 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) ^ *(v88 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) ^ 1;
        return v74 & 1;
      }

      sub_1000095E8(v118, &unk_1011926F0);
      v104 = *(v57 + 8);
      v105 = v135;
      v104(v119, v135);
      v104(v123, v105);
      sub_1004E414C(v103, _s6AlbumsV5ScopeOMa);
    }

    sub_1000095E8(v90, &qword_101192758);
    goto LABEL_15;
  }

  v50 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v51 = v130;
  sub_1000089F8(v46 + v50, v130, &unk_101184730);
  v52 = v133;
  v53 = *(v133 + 48);
  v54 = v135;
  if (v53(v51, 1, v135) == 1)
  {
    v55 = v51;
    v56 = v131;
  }

  else
  {
    v67 = *(v52 + 32);
    v68 = v126;
    v67(v126, v51, v54);
    v69 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v56 = v131;
    swift_beginAccess();
    v70 = v56 + v69;
    v54 = v135;
    v71 = v127;
    sub_1000089F8(v70, v127, &unk_101184730);
    if (v53(v71, 1, v54) != 1)
    {
      v80 = v120;
      v67(v120, v71, v54);
      sub_1004E41B4(&unk_101192760, &type metadata accessor for Album);
      v74 = static MusicItem<>.==~ infix(_:_:)();
      v81 = *(v52 + 8);
      v81(v80, v54);
      v81(v68, v54);
      return v74 & 1;
    }

    (*(v52 + 8))(v68, v54);
    v49 = v134;
    v55 = v71;
  }

  sub_1000095E8(v55, &unk_101184730);
  v72 = v49 + v50;
  v73 = v129;
  sub_1000089F8(v72, v129, &unk_101184730);
  if (v53(v73, 1, v54) == 1)
  {
    sub_1000095E8(v73, &unk_101184730);
  }

  else
  {
    v76 = v124;
    (*(v52 + 32))(v124, v73, v54);
    if (*(v56 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
    {
      goto LABEL_22;
    }

    (*(v52 + 8))(v76, v54);
  }

  v77 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v78 = v56 + v77;
  v79 = v128;
  sub_1000089F8(v78, v128, &unk_101184730);
  if (v53(v79, 1, v54) != 1)
  {
    v76 = v122;
    (*(v52 + 32))(v122, v79, v54);
    if (!*(v49 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8))
    {
      (*(v52 + 8))(v76, v54);
      goto LABEL_29;
    }

LABEL_22:

    v74 = MusicItem.contains(_:)();

    (*(v52 + 8))(v76, v54);
    return v74 & 1;
  }

  sub_1000095E8(v79, &unk_101184730);
LABEL_29:
  v95 = *(v49 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
  if (v95)
  {
    v96 = *(v56 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
    if (v96)
    {
      if (*(v49 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID) != *(v56 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID) || v95 != v96)
      {
        v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
        return v74 & 1;
      }

LABEL_41:
      v74 = 1;
      return v74 & 1;
    }
  }

  v97 = sub_10049FE90();
  v99 = v98;
  v100 = sub_10049FE90();
  if (!v99)
  {
    if (!v101)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (!v101)
  {
LABEL_40:

    goto LABEL_15;
  }

  if (v97 == v100 && v99 == v101)
  {

    v74 = 1;
  }

  else
  {
    v74 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v74 & 1;
}

void sub_1004E3320(void *a1)
{
  v3 = type metadata accessor for PlacementID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  if (!a1)
  {
    v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v7, v13, &unk_1011926C0);
    if (v13[8])
    {
      sub_1000095E8(v13, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v13, &unk_1011926C0);
      if (Strong)
      {
        v9 = sub_1006A4900();

        if (v9)
        {
          static PlacementID.BubbleTip.showInClassicalAppButton.getter();
          dispatch thunk of PopoverProvider.removeRegistration(for:)();

          (*(v4 + 8))(v6, v3);
        }
      }
    }
  }

  v10 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_openInClassicalBarButtonItem) = a1;
  v11 = a1;

  sub_1004B21F8();
}

id sub_1004E34D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v105 = a4;
  v106 = a3;
  v108 = a2;
  v96 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v96);
  v95 = &v92 - v5;
  v6 = type metadata accessor for Album();
  v107 = *(v6 - 8);
  v7 = v107;
  v8 = __chkstk_darwin(v6);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v100 = &v92 - v10;
  v11 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v11 - 8);
  v98 = &v92 - v12;
  v13 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v13 - 8);
  v97 = &v92 - v14;
  v15 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v15 - 8);
  v17 = &v92 - v16;
  v18 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v92 - v19;
  v94 = type metadata accessor for ContainerDetail.Source(0);
  v21 = __chkstk_darwin(v94);
  v99 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v92 - v23;
  v25 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v25);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v7 + 16);
  v28(v27, a1, v6);
  swift_storeEnumTagMultiPayload();
  v29 = Album.catalogID.getter();
  v31 = v30;
  sub_1004E40DC(v108, v24, type metadata accessor for ContainerDetail.Source);
  sub_1000089F8(v106, v20, &qword_1011846D0);
  sub_1000089F8(v105, v17, &qword_101183A20);
  v32 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v33 = v31;
  v93 = v24;
  v34 = a1;
  v35 = sub_1004A0128(v27, v29, v33, v24, v20, v17);
  v36 = v97;
  v103 = v28;
  v104 = v7 + 16;
  v28(v97, a1, v6);
  v37 = v36;
  (*(v107 + 56))(v36, 0, 1, v6);
  v38 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v39 = v35;
  sub_10006B010(v37, v35 + v38, &unk_101184730);
  swift_endAccess();
  v40 = v98;
  Album.tracks.getter();
  v41 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_10006B010(v40, v39 + v41, &unk_1011842D0);
  swift_endAccess();
  sub_1004B2C94();
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000060E4(v42, qword_1012193F8);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "╭ Creating album detail data source", v45, 2u);
  }

  v46 = v100;
  v103(v100, v34, v6);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v6;
  v102 = v34;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v112[0] = v52;
    *v51 = 136446210;
    sub_1004E41B4(&unk_1011926D0, &type metadata accessor for Album);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v56 = v46;
    v57 = v50;
    v100 = *(v107 + 8);
    (v100)(v56, v50);
    v58 = sub_1000105AC(v53, v55, v112);

    *(v51 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v47, v48, "| Album: %{public}s", v51, 0xCu);
    sub_10000959C(v52);
  }

  else
  {

    v59 = v46;
    v57 = v6;
    v100 = *(v107 + 8);
    (v100)(v59, v6);
  }

  v60 = v99;
  sub_1004E40DC(v108, v99, type metadata accessor for ContainerDetail.Source);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v101;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v112[0] = v66;
    *v65 = 136446210;
    sub_1004E40DC(v60, v93, type metadata accessor for ContainerDetail.Source);
    v67 = String.init<A>(describing:)();
    v68 = v60;
    v69 = v67;
    v71 = v70;
    sub_1004E414C(v68, type metadata accessor for ContainerDetail.Source);
    v72 = sub_1000105AC(v69, v71, v112);

    *(v65 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v61, v62, "| Source: %{public}s", v65, 0xCu);
    sub_10000959C(v66);
  }

  else
  {

    sub_1004E414C(v60, type metadata accessor for ContainerDetail.Source);
  }

  v73 = v102;
  v103(v64, v102, v57);
  v74 = v39;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v111 = v78;
    *v77 = 136446210;
    v79 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v74 + v79, &v109, &unk_1011926C0);
    if (v110)
    {
      sub_1000095E8(&v109, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v109, &unk_1011926C0);
      if (Strong)
      {
        v82 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        v83 = v95;
        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v84 = 0;
LABEL_18:
        v85 = type metadata accessor for MusicLibrary.AddStatus();
        (*(*(v85 - 8) + 56))(v83, v84, 1, v85);
        v86 = String.init<A>(describing:)();
        v88 = v87;
        v89 = v100;
        (v100)(v101, v57);
        v90 = sub_1000105AC(v86, v88, &v111);

        *(v77 + 4) = v90;
        _os_log_impl(&_mh_execute_header, v75, v76, "╰ Add Status: %{public}s", v77, 0xCu);
        sub_10000959C(v78);

        sub_1000095E8(v105, &qword_101183A20);
        sub_1000095E8(v106, &qword_1011846D0);
        sub_1004E414C(v108, type metadata accessor for ContainerDetail.Source);
        v89(v102, v57);
        return v74;
      }
    }

    v84 = 1;
    v83 = v95;
    goto LABEL_18;
  }

  sub_1000095E8(v105, &qword_101183A20);
  sub_1000095E8(v106, &qword_1011846D0);
  sub_1004E414C(v108, type metadata accessor for ContainerDetail.Source);
  v80 = v100;
  (v100)(v73, v57);
  v80(v64, v57);
  return v74;
}

uint64_t sub_1004E40DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E414C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004E41B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004E425C()
{
  result = qword_101192740;
  if (!qword_101192740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192740);
  }

  return result;
}

char *sub_1004E42B0(char *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v5 = type metadata accessor for MusicVideo();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v11 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v6;
  v20 = *(v6 + 16);
  v20(v19, a1, v5);
  swift_storeEnumTagMultiPayload();
  v45 = a2;
  sub_1004E40DC(a2, v16, type metadata accessor for ContainerDetail.Source);
  v20(v13, a1, v5);
  v21 = enum case for Track.musicVideo(_:);
  v22 = type metadata accessor for Track();
  (*(*(v22 - 8) + 104))(v13, v21, v22);
  v23 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v23 - 8) + 56))(v13, 0, 1, v23);
  sub_1000089F8(v46, v10, &qword_101183A20);
  v24 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v25 = sub_1004A0128(v19, 0, 0, v16, v13, v10);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000060E4(v26, qword_1012193F8);
  v27 = v43;
  v20(v43, a1, v5);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v42 = a1;
    v31 = v25;
    v32 = v30;
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136446210;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v27;
    v37 = v36;
    v38 = *(v44 + 8);
    v38(v35, v5);
    v39 = sub_1000105AC(v34, v37, &v47);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating album detail data source from musicVideo: %{public}s", v32, 0xCu);
    sub_10000959C(v33);

    v25 = v31;

    sub_1000095E8(v46, &qword_101183A20);
    sub_1004E414C(v45, type metadata accessor for ContainerDetail.Source);
    v38(v42, v5);
  }

  else
  {

    sub_1000095E8(v46, &qword_101183A20);
    sub_1004E414C(v45, type metadata accessor for ContainerDetail.Source);
    v40 = *(v44 + 8);
    v40(a1, v5);
    v40(v27, v5);
  }

  return v25;
}

char *sub_1004E484C(char *a1, uint64_t a2, uint64_t a3)
{
  v48 = a3;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v42 - v12);
  v14 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v17);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v6;
  v20 = *(v6 + 16);
  v45 = v5;
  v20(v19, a1, v5);
  swift_storeEnumTagMultiPayload();
  v46 = a2;
  sub_1004E40DC(a2, v16, type metadata accessor for ContainerDetail.Source);
  *v13 = Song.id.getter();
  v13[1] = v21;
  v22 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  sub_1000089F8(v48, v10, &qword_101183A20);
  v23 = objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  v24 = sub_1004A0128(v19, 0, 0, v16, v13, v10);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_1000060E4(v25, qword_1012193F8);
  v26 = v44;
  v27 = v45;
  v20(v44, a1, v45);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v43 = a1;
    v31 = v30;
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136446210;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v26;
    v35 = v27;
    v37 = v36;
    v38 = *(v47 + 8);
    v38(v34, v35);
    v39 = sub_1000105AC(v33, v37, &v49);

    *(v31 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Creating album detail data source from song: %{public}s", v31, 0xCu);
    sub_10000959C(v32);

    sub_1000095E8(v48, &qword_101183A20);
    sub_1004E414C(v46, type metadata accessor for ContainerDetail.Source);
    v38(v43, v35);
  }

  else
  {

    sub_1000095E8(v48, &qword_101183A20);
    sub_1004E414C(v46, type metadata accessor for ContainerDetail.Source);
    v40 = *(v47 + 8);
    v40(a1, v27);
    v40(v26, v27);
  }

  return v24;
}

char *sub_1004E4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v40 - v13);
  v15 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v15);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v40 - v22;
  v44 = a3;
  sub_1004E40DC(a3, &v40 - v22, type metadata accessor for ContainerDetail.Source);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v24 = a1;
    v25 = a2;
  }

  else
  {
    sub_1000095E8(v23, &unk_1011926F0);
    v24 = 0;
    v25 = 0;
  }

  *v17 = a1;
  v17[1] = a2;
  swift_storeEnumTagMultiPayload();
  sub_1004E40DC(v44, v20, type metadata accessor for ContainerDetail.Source);
  v26 = v42;
  v27 = v43;
  if (v42)
  {
    *v14 = v41;
    v14[1] = v26;
    v28 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  }

  else
  {
    v29 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
  }

  sub_1000089F8(v27, v11, &qword_101183A20);
  objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));

  v30 = sub_1004A0128(v17, v24, v25, v20, v14, v11);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_1000060E4(v31, qword_1012193F8);

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v46 = v25;
    v47 = v35;
    *v34 = 136446210;
    v45 = v24;
    sub_10010FC20(&unk_1011A49A0);
    v36 = String.init<A>(describing:)();
    v38 = sub_1000105AC(v36, v37, &v47);

    *(v34 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v33, "Creating album detail data source with album id: %{public}s", v34, 0xCu);
    sub_10000959C(v35);
  }

  else
  {
  }

  sub_1000095E8(v27, &qword_101183A20);
  sub_1004E414C(v44, type metadata accessor for ContainerDetail.Source);
  return v30;
}

char *sub_1004E5248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v32 - v12);
  v14 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  __chkstk_darwin(v17);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a1;
  v19[1] = a2;
  swift_storeEnumTagMultiPayload();
  v32 = a3;
  sub_1004E40DC(a3, v16, type metadata accessor for ContainerDetail.Source);
  *v13 = a1;
  v13[1] = a2;
  v20 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  sub_1000089F8(a4, v10, &qword_101183A20);
  objc_allocWithZone(type metadata accessor for AlbumDetailDataSource(0));
  swift_bridgeObjectRetain_n();
  v21 = sub_1004A0128(v19, 0, 0, v16, v13, v10);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_1012193F8);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136446210;
    v27 = MusicItemID.description.getter();
    v29 = v28;

    v30 = sub_1000105AC(v27, v29, &v33);

    *(v25 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v23, v24, "Creating album detail data source from song id: %{public}s", v25, 0xCu);
    sub_10000959C(v26);
  }

  else
  {
  }

  sub_1000095E8(a4, &qword_101183A20);
  sub_1004E414C(v32, type metadata accessor for ContainerDetail.Source);
  return v21;
}

uint64_t sub_1004E562C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Track();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = sub_10010FC20(&qword_1011927A0);
  __chkstk_darwin(v11 - 8);
  v13 = (&v31 - v12);
  v15 = (&v31 + *(v14 + 56) - v12);
  sub_1004E40DC(a1, &v31 - v12, type metadata accessor for AlbumDetailDataSource.CellType);
  sub_1004E40DC(a2, v15, type metadata accessor for AlbumDetailDataSource.CellType);
  type metadata accessor for AlbumDetailDataSource.CellType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v13;
    v22 = swift_getEnumCaseMultiPayload();
    if (!v22)
    {
      v20 = sub_1003D0B1C(v21, *v15);

      return v20 & 1;
    }

    if (v22 != 1)
    {

LABEL_14:
      (*(v5 + 8))(v15, v4);
      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v17 = *v13;

    v18 = swift_getEnumCaseMultiPayload();
    if (v18)
    {
      if (v18 == 1)
      {
        v19 = *v15;

        v20 = v17 == v19;
        return v20 & 1;
      }

      goto LABEL_14;
    }

LABEL_9:
    sub_1004E414C(v15, type metadata accessor for AlbumDetailDataSource.CellType);
LABEL_15:
    v20 = 0;
    return v20 & 1;
  }

  v23 = *(sub_10010FC20(&qword_1011927A8) + 48);
  v24 = *(v13 + v23);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_1004E414C(v15, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v5 + 8))(v13, v4);
    goto LABEL_15;
  }

  v32 = *(v13 + v23 + 8);
  v31 = *(v15 + v23);
  v26 = *(v15 + v23 + 8);
  v27 = *(v5 + 32);
  v27(v10, v13, v4);
  v27(v7, v15, v4);
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
  v28 = static MusicItem<>.==~ infix(_:_:)();
  v29 = *(v5 + 8);
  v29(v7, v4);
  v29(v10, v4);
  v30 = (v24 == v31) & ~v26;
  if (v32)
  {
    v30 = v28 & v26;
  }

  if (v28)
  {
    v20 = v30;
  }

  else
  {
    v20 = v28 & v26;
  }

  return v20 & 1;
}

uint64_t sub_1004E59E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1004E5B40(unint64_t result)
{
  if ((result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEF8)
  {
    return sub_1004E5B60(result);
  }

  return result;
}

unint64_t sub_1004E5B60(unint64_t result)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    return sub_1004E5B90(result);
  }

  return result;
}

unint64_t sub_1004E5B90(unint64_t result)
{
  if (!(result >> 62))
  {
  }

  return result;
}

unint64_t sub_1004E5BA4(unint64_t result)
{
  if ((result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    return sub_1004E5B90(result);
  }

  return result;
}

uint64_t sub_1004E5BE4(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1004E5BF8(a1, a2);
  }

  return a1;
}

uint64_t sub_1004E5BF8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  if (!(a2 >> 62))
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1004E5C14(uint64_t a1, unint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_1004E5C28(a1, a2);
  }

  return a1;
}

uint64_t sub_1004E5C28(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 == 1)
  {
  }

  if (!(a2 >> 62))
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C48(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Album() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_10010FC20(&unk_1011841D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1004CF084(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

void sub_1004E5DB4(uint64_t a1, char *a2, void *a3)
{
  if ((a2 - 1) >= 2)
  {
    v4 = a3;

    v5 = a2;
  }
}

void sub_1004E5DFC(uint64_t a1, char *a2, void *a3)
{
  if ((a2 - 1) >= 2)
  {
  }
}

void sub_1004E5E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_100030444(a3);
  }
}

void sub_1004E5E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    sub_100020438(a3);
  }
}

uint64_t sub_1004E5EDC(uint64_t a1, char a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100008F30;

  return sub_1004CB0F8(a1, a2, v2);
}

uint64_t sub_1004E6028(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1004E6050()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004C873C();
}

uint64_t sub_1004E6104(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1004CD4B4(a1, v4, v5, v6);
}

uint64_t sub_1004E61B8(unint64_t a1)
{
  v3 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4 + 16;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v6 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  if (*(v6 + 16) <= a1)
  {
    goto LABEL_42;
  }

  v7 = *(v6 + a1 + 32);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
      }

      v8 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
      if ((v8 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL || v8 >> 62 != 3 && (v8 & 1) == 0)
      {
        v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        sub_1000089F8(v1 + v9, v5, &unk_101184730);
        v10 = type metadata accessor for Album();
        v11 = (*(*(v10 - 8) + 48))(v5, 1, v10) != 1;
        sub_1000095E8(v5, &unk_101184730);
        return v11;
      }

      return 0;
    }

    if (v7 == 2)
    {
      v13 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
      if (v13)
      {
        return *(v13 + 16);
      }

      return 0;
    }

    if (v7 == 4)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection);
    }

    goto LABEL_44;
  }

  if (v7 <= 7)
  {
    if (v7 == 6)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
    }

    if (v7 == 7)
    {
      return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingShowCompleteAlbumSection);
    }

    goto LABEL_44;
  }

  if (v7 == 8)
  {
    return *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingStoreNavigationSection);
  }

  if (v7 != 10)
  {
LABEL_44:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v20, &unk_1011926C0);
  if (v21)
  {
    sub_1000095E8(v20, &unk_1011926C0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v20, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent];

  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1000089F8(v1 + v14, v20, &unk_1011926C0);
  if (v21)
  {
    sub_1000095E8(v20, &unk_1011926C0);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v20, &unk_1011926C0);
    if (v17)
    {
      v18 = sub_1006A3A7C();

      if (v18)
      {
        if (v18 >> 62)
        {
          goto LABEL_43;
        }

        v18 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_36;
      }

      goto LABEL_38;
    }
  }

  v18 = 0;
LABEL_38:
  while (1)
  {
    result = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      break;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_36:
  }

  return result;
}

BOOL sub_1004E65AC()
{
  v1 = IndexPath.section.getter();
  v2 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  v4 = (v2 + 32);
  while (1)
  {
    v5 = *v4++;
    if (v5 == 2)
    {
      break;
    }

    --v1;
    if (!--v3)
    {
      return 0;
    }
  }

  return v1 == 0;
}

id sub_1004E6614(uint64_t a1)
{
  v3 = type metadata accessor for Track();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v65 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v64 = &v52 - v7;
  __chkstk_darwin(v8);
  v67 = &v52 - v9;
  v10 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v52 - v18;
  v19 = type metadata accessor for IndexPath();
  __chkstk_darwin(v19);
  v25 = __chkstk_darwin(v20);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v62 = v3;
  v63 = v14;
  v60 = v4;
  v61 = v16;
  v59 = v24;
  v68 = v23;
  v69 = v22;
  v26 = *(v23 + 16);
  v27 = v1;
  v28 = *(v23 + 80);
  v29 = &v52 - v21;
  v26(&v52 - v21, a1 + ((v28 + 32) & ~v28), v22, v25);
  v70 = v29;
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, &aBlock);
  if (aBlock != 2)
  {
    (*(v68 + 8))(v70, v69);
    return 0;
  }

  v58 = v28;
  v56 = v26;
  v31 = v70;
  v57 = v27;
  sub_1004DEB38(v12);
  if ((*(v63 + 48))(v12, 1, v13) == 1)
  {
    (*(v68 + 8))(v31, v69);
    sub_1000095E8(v12, &unk_101192800);
    return 0;
  }

  v32 = v66;
  sub_1004E59E0(v12, v66, type metadata accessor for AlbumDetailDataSource.CellType);
  v33 = v61;
  sub_1004E40DC(v32, v61, type metadata accessor for AlbumDetailDataSource.CellType);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1004E414C(v32, type metadata accessor for AlbumDetailDataSource.CellType);
    (*(v68 + 8))(v70, v69);
    sub_1004E414C(v33, type metadata accessor for AlbumDetailDataSource.CellType);
    return 0;
  }

  v63 = ~v58;
  v34 = v60;
  v35 = *(v60 + 32);
  v36 = v67;
  v37 = v62;
  v35(v67, v33, v62);
  v55 = v35;
  v53 = *(v34 + 16);
  v38 = v64;
  v53(v64, v36, v37);
  v39 = *(v34 + 80);
  v54 = v39 | 7;
  v61 = swift_allocObject();
  v40 = v62;
  v35(&v61[(v39 + 16) & ~v39], v38, v62);
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v65;
  v53(v65, v67, v40);
  v42 = v59;
  v43 = v69;
  v56(v59, v70, v69);
  v44 = (v39 + 24) & ~v39;
  v45 = (v5 + v58 + v44) & v63;
  v46 = swift_allocObject();
  *(v46 + 16) = v64;
  v55(v46 + v44, v41, v40);
  v47 = v68;
  (*(v68 + 32))(v46 + v45, v42, v43);
  v48 = objc_opt_self();
  v75 = sub_1004EA30C;
  v76 = v61;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_100747E6C;
  v74 = &unk_1010AFB48;
  v49 = _Block_copy(&aBlock);

  v75 = sub_1004EA710;
  v76 = v46;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_100747EBC;
  v74 = &unk_1010AFB70;
  v50 = _Block_copy(&aBlock);

  v51 = [v48 configurationWithIdentifier:0 previewProvider:v49 actionProvider:v50];

  _Block_release(v50);
  _Block_release(v49);
  (*(v60 + 8))(v67, v62);
  sub_1004E414C(v66, type metadata accessor for AlbumDetailDataSource.CellType);
  (*(v47 + 8))(v70, v69);

  return v51;
}

void sub_1004E6DBC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v7 = IndexPath.section.getter();
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v7 >= *(v6 + 16))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v8 = *(v6 + v7 + 32);
  if (v8 == 6)
  {
    if (*(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) == 1)
    {
      *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) = 0;

      sub_1004D4938();
    }
  }

  else if (v8 == 2)
  {
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v9, v11, &unk_1011926C0);
    if (v11[8])
    {
      sub_1000095E8(v11, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v11, &unk_1011926C0);
      if (Strong)
      {
        sub_1006A44A0();

        sub_100804470(a1, a2);
      }
    }
  }

  else if (!*(v6 + v7 + 32))
  {

    sub_1004CCA54();
  }
}

unint64_t sub_1004E6F54(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v4 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v4 + result + 32) == 2)
  {
    v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v6, v8, &unk_1011926C0);
    if (v8[8])
    {
      return sub_1000095E8(v8, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1000095E8(v8, &unk_1011926C0);
      if (Strong)
      {
        sub_1006A44A0();

        sub_100868184(a1);
      }
    }
  }

  return result;
}

uint64_t sub_1004E7068(uint64_t a1, uint64_t a2)
{
  v2[49] = a1;
  v2[50] = a2;
  v3 = sub_10010FC20(&qword_1011928D0);
  v2[51] = v3;
  v2[52] = *(v3 - 8);
  v2[53] = swift_task_alloc();
  sub_10010FC20(&qword_1011928D8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  sub_10010FC20(&qword_1011928E0);
  v2[56] = swift_task_alloc();
  v2[57] = sub_10010FC20(&qword_1011928E8);
  v2[58] = swift_task_alloc();
  v4 = type metadata accessor for Song();
  v2[59] = v4;
  v2[60] = *(v4 - 8);
  v2[61] = swift_task_alloc();
  v5 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  v2[62] = v5;
  v2[63] = *(v5 - 8);
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v2[71] = swift_task_alloc();
  sub_10010FC20(&unk_101192800);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = sub_10010FC20(&unk_10118C0B0);
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_1011928F0);
  v2[78] = v6;
  v2[79] = *(v6 - 8);
  v2[80] = swift_task_alloc();
  sub_10010FC20(&qword_10118A530);
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v2[83] = v7;
  v2[84] = *(v7 - 8);
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = swift_task_alloc();
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();
  v2[91] = swift_task_alloc();
  v2[92] = swift_task_alloc();
  v2[93] = swift_task_alloc();
  v2[94] = swift_task_alloc();
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v2[97] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v2[98] = swift_task_alloc();
  v8 = sub_10010FC20(&unk_1011841D0);
  v2[99] = v8;
  v2[100] = *(v8 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v2[103] = swift_task_alloc();
  v9 = type metadata accessor for Album();
  v2[104] = v9;
  v2[105] = *(v9 - 8);
  v2[106] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[107] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004E769C, v11, v10);
}

uint64_t sub_1004E769C()
{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[49];

  sub_1000089F8(v4, v3, &unk_101184730);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v5 = v0[103];
    v6 = &unk_101184730;
LABEL_5:
    sub_1000095E8(v5, v6);
    v304 = 0;
    goto LABEL_6;
  }

  v7 = v0[100];
  v8 = v0[99];
  v9 = v0[98];
  v10 = v0[50];
  (*(v0[105] + 32))(v0[106], v0[103], v0[104]);
  sub_1000089F8(v10, v9, &unk_1011842D0);
  if ((*(v7 + 48))(v9, 1, v8) == 1)
  {
    v11 = v0[98];
    (*(v0[105] + 8))(v0[106], v0[104]);
    v6 = &unk_1011842D0;
    v5 = v11;
    goto LABEL_5;
  }

  v14 = *(v0[100] + 32);
  v14(v0[102], v0[98], v0[99]);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v0[42] == v0[43])
  {
    v15 = v0[106];
    v16 = v0[105];
    v17 = v0[104];
    (*(v0[100] + 8))(v0[102], v0[99]);
    (*(v16 + 8))(v15, v17);
    v304 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v18 = v0[84];
  v19 = v0[83];
  v20 = v0[82];
  sub_10034DEEC(v20);
  v21 = *(v18 + 48);
  if (v21(v20, 1, v19) == 1)
  {
    sub_1000095E8(v0[82], &qword_10118A530);
LABEL_19:
    v52 = v0[83];
    v53 = v0[81];
    sub_10034DEEC(v53);
    v306 = v14;
    if (v21(v53, 1, v52) == 1)
    {
      sub_1000095E8(v0[81], &qword_10118A530);
      v262 = 0;
      v285 = enum case for Track.song(_:);
      v287 = 1;
    }

    else
    {
      v54 = v0[93];
      v55 = v0[84];
      v56 = v0[83];
      (*(v55 + 16))(v54, v0[81], v56);
      v57 = (*(v55 + 88))(v54, v56);
      v58 = v0[93];
      v59 = v0[84];
      v60 = v0[83];
      v285 = enum case for Track.song(_:);
      if (v57 == enum case for Track.song(_:))
      {
        v62 = v0[60];
        v61 = v0[61];
        v63 = v0[59];
        (*(v59 + 96))(v58, v60);
        (*(v62 + 32))(v61, v58, v63);
        v262 = Song.discNumber.getter();
        v287 = v64;
        (*(v62 + 8))(v61, v63);
        (*(v59 + 8))(v0[81], v0[83]);
      }

      else
      {
        v65 = *(v59 + 8);
        v65(v58, v60);
        v262 = 0;
        v287 = 1;
        v65(v0[81], v0[83]);
      }
    }

    v66 = v0[101];
    v67 = v0[99];
    v68 = v0[84];
    v69 = v0[75];
    v257 = v0[63];
    v70 = v0[60];
    v71 = v0[58];
    v301 = v0[57];
    v72 = v0[56];
    v73 = v0[52];
    v280 = v0[51];
    v239 = (v0[100] + 16);
    v237 = *v239;
    (*v239)(v72, v0[102], v67);
    v306(v66, v72, v67);
    sub_100020674(&unk_10118C0A0, &unk_1011841D0);
    dispatch thunk of Sequence.makeIterator()();
    v272 = 0;
    v245 = *(v301 + 36);
    *(v71 + v245) = 0;
    v296 = v68 + 32;
    v302 = (v68 + 16);
    v238 = v69;
    v276 = *(v69 + 36);
    v74 = v71;
    v267 = (v73 + 56);
    v260 = (v73 + 48);
    v283 = (v68 + 88);
    v292 = (v68 + 8);
    v254 = (v70 + 32);
    v256 = (v68 + 96);
    v253 = (v70 + 8);
    v42 = _swiftEmptyArrayStorage;
    v248 = v74;
    while (1)
    {
      dispatch thunk of Collection.endIndex.getter();
      if (*(v74 + v276) == v0[44])
      {
        v75 = 1;
      }

      else
      {
        v307 = v42;
        v76 = v0[92];
        v77 = v0[83];
        v78 = v0[53];
        v42 = v276;
        v79 = dispatch thunk of Collection.subscript.read();
        (*v302)(v76);
        v79(v0 + 2, 0);
        v74 = v248;
        dispatch thunk of Collection.formIndex(after:)();
        v80 = *(v280 + 48);
        *v78 = v272;
        (*v296)(&v78[v80], v76, v77);
        v81 = v272 + 1;
        if (__OFADD__(v272, 1))
        {
          goto LABEL_123;
        }

        v82 = v0[53];
        v83 = v0[54];
        ++v272;
        *(v248 + v245) = v81;
        sub_10003D17C(v82, v83, &qword_1011928D0);
        v75 = 0;
        v42 = v307;
      }

      v84 = v0[54];
      v85 = v0[55];
      v86 = v0[51];
      (*v267)(v84, v75, 1, v86);
      sub_10003D17C(v84, v85, &qword_1011928D8);
      if ((*v260)(v85, 1, v86) == 1)
      {
        sub_1000095E8(v0[58], &qword_1011928E8);

        v115 = v262;
        if (v287)
        {
          v115 = 1;
        }

LABEL_95:
        v178 = v0[102];
        v179 = v0[99];
        v180 = v0[76];
        sub_10010FC20(&qword_101192020);
        v181 = (*(v257 + 80) + 32) & ~*(v257 + 80);
        v261 = *(v257 + 72);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_100EBC6B0;
        v259 = v181;
        v183 = (v182 + v181);
        v265 = v115;
        *v183 = v115;
        v183[1] = _swiftEmptyArrayStorage;
        swift_storeEnumTagMultiPayload();
        v237(v180, v178, v179);
        v184 = *(v238 + 36);
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v304 = v182;
        if (*(v180 + v184) == v0[45])
        {
          v244 = 0;
          v282 = _swiftEmptyArrayStorage;
        }

        else
        {
          v244 = 0;
          v247 = v0[84];
          v240 = v0[65];
          v242 = v0[66];
          v282 = _swiftEmptyArrayStorage;
          v249 = v184;
          v251 = v180;
          do
          {
            v193 = v0[88];
            v270 = v193;
            v289 = v0[87];
            v279 = v0[86];
            v194 = v0[83];
            v195 = dispatch thunk of Collection.subscript.read();
            v196 = *v302;
            (*v302)(v193);
            v195(v0 + 6, 0);
            dispatch thunk of Collection.formIndex(after:)();
            v42 = *v296;
            v197 = v289;
            (*v296)(v289, v270, v194);
            v290 = v196;
            (v196)(v279, v197, v194);
            v198 = (*v283)(v279, v194);
            v199 = v0[86];
            v200 = v0[83];
            if (v198 == v285)
            {
              v201 = v0[61];
              v202 = v0[59];
              (*v256)(v0[86], v200);
              (*v254)(v201, v199, v202);
              v203 = Song.discNumber.getter();
              v205 = v204;
              (*v253)(v201, v202);
              v206 = v282;
              if (v205)
              {
                v207 = v304;
              }

              else
              {
                v207 = v304;
                if (v265 != v203)
                {
                  *v0[66] = v265;
                  *(v242 + 8) = v282;
                  swift_storeEnumTagMultiPayload();
                  if (v244 >= *(v304 + 16))
                  {
                    goto LABEL_124;
                  }

                  v208 = v0[65];
                  sub_1004E98EC(v0[66], v304 + v259 + v244 * v261);
                  *v208 = v203;
                  *(v240 + 8) = _swiftEmptyArrayStorage;
                  swift_storeEnumTagMultiPayload();
                  v210 = *(v304 + 16);
                  v209 = *(v304 + 24);
                  v211 = v210 + 1;
                  if (v210 >= v209 >> 1)
                  {
                    v225 = *(v304 + 16);
                    v226 = sub_10049A60C(v209 > 1, v210 + 1, 1, v304);
                    v210 = v225;
                    v207 = v226;
                  }

                  v212 = v0[65];
                  v207[2] = v211;
                  v244 = v210;
                  sub_1004E59E0(v212, v207 + v259 + v210 * v261, type metadata accessor for AlbumDetailDataSource.CellType);
                  v265 = v203;
                  v206 = _swiftEmptyArrayStorage;
                }
              }
            }

            else
            {
              (*v292)(v0[86], v200);
              v207 = v304;
              v206 = v282;
            }

            (v290)(v0[85], v0[87], v0[83]);
            v309 = v207;
            v213 = v42;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v206 = sub_100499798(0, v206[2] + 1, 1, v206);
            }

            v215 = v206[2];
            v214 = v206[3];
            if (v215 >= v214 >> 1)
            {
              v206 = sub_100499798(v214 > 1, v215 + 1, 1, v206);
            }

            v216 = v0[87];
            v217 = v0[85];
            v218 = v0[83];
            v219 = v0[64];
            v206[2] = v215 + 1;
            v282 = v206;
            v213(v206 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v215, v217, v218);
            v220 = v219 + *(sub_10010FC20(&qword_1011927A8) + 48);
            (v290)(v219, v216, v218);
            *v220 = 0;
            *(v220 + 8) = 1;
            swift_storeEnumTagMultiPayload();
            v221 = v309;
            v223 = v309[2];
            v222 = v309[3];
            if (v223 >= v222 >> 1)
            {
              v221 = sub_10049A60C(v222 > 1, v223 + 1, 1, v309);
            }

            v224 = v0[64];
            (*v292)(v0[87], v0[83]);
            *(v221 + 16) = v223 + 1;
            v304 = v221;
            sub_1004E59E0(v224, v221 + v259 + v223 * v261, type metadata accessor for AlbumDetailDataSource.CellType);
            dispatch thunk of Collection.endIndex.getter();
          }

          while (*(v251 + v249) != v0[45]);
        }

        v185 = v0[106];
        v186 = v0[105];
        v187 = v0[104];
        v188 = v0[102];
        v189 = v0[100];
        v190 = v0[99];
        v191 = v0[66];
        sub_1000095E8(v0[76], &unk_10118C0B0);
        *v191 = v265;
        v191[1] = v282;
        swift_storeEnumTagMultiPayload();
        (*(v189 + 8))(v188, v190);
        v192 = *(v186 + 8);
        v42 = v186 + 8;
        v192(v185, v187);
        if (v244 < *(v304 + 16))
        {
          sub_1004E98EC(v0[66], v304 + v259 + v244 * v261);
          goto LABEL_6;
        }

LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v87 = v0[55];
      v308 = *v87;
      (*v296)(v0[91], &v87[*(v280 + 48)], v0[83]);
      v88 = *v302;
      if (v287)
      {
        v89 = v0[90];
        v90 = v0[83];
        (v88)(v89, v0[91], v90);
        if ((*v283)(v89, v90) != v285)
        {
          v95 = v42;
          v262 = 0;
          v287 = 1;
          v104 = v0 + 90;
          goto LABEL_40;
        }

        v91 = v0[90];
        v92 = v0[61];
        v93 = v0[59];
        (*v256)(v91, v0[83]);
        (*v254)(v92, v91, v93);
        v262 = Song.discNumber.getter();
        LOBYTE(v91) = v94;
        (*v253)(v92, v93);
        if (v91)
        {
          v95 = v42;
          v287 = 1;
          goto LABEL_41;
        }
      }

      v96 = v0[89];
      v97 = v0[83];
      (v88)(v96, v0[91], v97);
      if ((*v283)(v96, v97) != v285)
      {
        v95 = v42;
        v287 = 0;
        v104 = v0 + 89;
LABEL_40:
        (*v292)(*v104, v0[83]);
        goto LABEL_41;
      }

      v98 = v0[89];
      v99 = v0[61];
      v100 = v0[59];
      (*v256)(v98, v0[83]);
      (*v254)(v99, v98, v100);
      v101 = Song.discNumber.getter();
      v103 = v102;
      (*v253)(v99, v100);
      v287 = 0;
      if ((v103 & 1) == 0 && v101 != v262)
      {
        v177 = v0[58];
        (*v292)(v0[91], v0[83]);
        sub_1000095E8(v177, &qword_1011928E8);

        v115 = v262;
        goto LABEL_95;
      }

      v95 = v42;
LABEL_41:
      v105 = v0[91];
      v106 = v0[83];
      v107 = v0[67];
      v108 = v107 + *(sub_10010FC20(&qword_1011927A8) + 48);
      (v88)(v107, v105, v106);
      *v108 = 0;
      *(v108 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v42 = v95;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_10049A60C(0, v95[2] + 1, 1, v95);
      }

      v110 = *(v42 + 16);
      v109 = *(v42 + 24);
      if (v110 >= v109 >> 1)
      {
        v42 = sub_10049A60C(v109 > 1, v110 + 1, 1, v42);
      }

      v111 = v0[91];
      v112 = v0[83];
      v113 = v0[67];
      *(v42 + 16) = v110 + 1;
      sub_1004E59E0(v113, v42 + ((*(v257 + 80) + 32) & ~*(v257 + 80)) + *(v257 + 72) * v110, type metadata accessor for AlbumDetailDataSource.CellType);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v114 = dispatch thunk of Collection.distance(from:to:)();
      (*v292)(v111, v112);
      if (__OFSUB__(v114, 1))
      {
        __break(1u);
        goto LABEL_122;
      }

      if (v308 == v114 - 1)
      {
        v116 = v0[106];
        v117 = v0[105];
        v118 = v0[104];
        v119 = v0[102];
        v120 = v0[100];
        v121 = v0[99];
        sub_1000095E8(v0[58], &qword_1011928E8);
        (*(v120 + 8))(v119, v121);
        (*(v117 + 8))(v116, v118);
        v304 = v42;
        goto LABEL_6;
      }
    }
  }

  v22 = *(v0[84] + 32);
  v22(v0[97], v0[82], v0[83]);
  v23 = Track.workName.getter();
  if (!v24)
  {
    (*(v0[84] + 8))(v0[97], v0[83]);
    goto LABEL_19;
  }

  v25 = v24;
  v250 = v22;
  v286 = v0[100];
  v295 = v0[99];
  v299 = v0[102];
  v26 = v0[80];
  v27 = v0[79];
  v266 = v0[78];
  v252 = v0[77];
  v291 = v0[75];
  v28 = v0[63];
  v305 = v23;
  sub_10010FC20(&qword_101192020);
  v253 = *(v28 + 72);
  v254 = ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  v275 = Track.composerName.getter();
  v271 = v30;
  type metadata accessor for ClassicalAlbumSection(0);
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v0[20] = 0;
  v0[21] = 0;
  sub_10010FC20(&qword_1011815E0);
  Published.init(initialValue:)();
  v33 = *(v27 + 32);
  v33(v31 + v32, v26, v266);
  v34 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
  v0[22] = 0;
  v0[23] = 0;
  Published.init(initialValue:)();
  v236 = v33;
  v33(v31 + v34, v26, v266);
  v35 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
  *(v31 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
  v36 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
  *(v31 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
  swift_beginAccess();
  v0[24] = v305;
  v0[25] = v25;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[26] = v275;
  v0[27] = v271;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v0[28] = 0;
  v0[29] = 0;

  static Published.subscript.setter();
  *(v31 + v35) = _swiftEmptyArrayStorage;

  *(v31 + v36) = 0;
  *(v254 + v29) = v31;
  v304 = v29;
  swift_storeEnumTagMultiPayload();
  v255 = Track.artistName.getter();
  v284 = v37;
  (*(v286 + 16))(v252, v299, v295);
  v38 = *(v291 + 36);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (*(v252 + v38) == v0[48])
  {
    v296 = 0;
    v300 = _swiftEmptyArrayStorage;
LABEL_16:
    v39 = v0[72];
    v40 = v0[62];
    v41 = v0[63];
    sub_1000095E8(v0[77], &unk_10118C0B0);
    v42 = v304;
    Array.subscript.getter(v40, v39);
    if ((*(v41 + 48))(v39, 1, v40) == 1)
    {
      v43 = v0[106];
      v44 = v0[105];
      v45 = v0[104];
      v46 = v0[102];
      v47 = v0[100];
      v48 = v0[99];
      v49 = v0[97];
      v50 = v0[84];
      v51 = v0[83];
      v297 = v0[72];

      (*(v50 + 8))(v49, v51);
      (*(v47 + 8))(v46, v48);
      (*(v44 + 8))(v43, v45);

      sub_1000095E8(v297, &unk_101192800);
    }

    else
    {
      v167 = v0[72];
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v169 = v0[106];
      if (!EnumCaseMultiPayload)
      {
        v227 = v0[68];
        v228 = sub_1004CE4F4(*v167, v255, v284, v300);

        *v227 = v228;
        swift_storeEnumTagMultiPayload();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_129;
        }

        goto LABEL_118;
      }

      v170 = v0[105];
      v298 = v0[104];
      v171 = v0[102];
      v172 = v0[100];
      v173 = v0[99];
      v174 = v0[97];
      v175 = v0[84];
      v176 = v0[83];

      (*(v175 + 8))(v174, v176);
      (*(v172 + 8))(v171, v173);
      (*(v170 + 8))(v169, v298);

      sub_1004E414C(v167, type metadata accessor for AlbumDetailDataSource.CellType);
    }

LABEL_6:

    v12 = v0[1];

    return v12(v304);
  }

  v296 = 0;
  v293 = (v0[84] + 16);
  v246 = (v0[63] + 48);
  v241 = v0[84];
  v281 = 1;
  v300 = _swiftEmptyArrayStorage;
  v122 = v250;
  v243 = v38;
  while (1)
  {
    v123 = v0[96];
    v263 = v0[95];
    v258 = v0[83];
    v268 = v0[74];
    v277 = v0[73];
    v273 = v0[62];
    v124 = dispatch thunk of Collection.subscript.read();
    v288 = *v293;
    (*v293)(v123);
    v124(v0 + 10, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v122(v263, v123, v258);
    v125 = v296;
    Array.subscript.getter(v273, v268);
    sub_1000089F8(v268, v277, &unk_101192800);
    v126 = (*v246)(v277, 1, v273);
    v127 = v0[73];
    if (v126 == 1)
    {
      sub_1000095E8(v0[73], &unk_101192800);
      v128 = v281;
      v42 = v304;
LABEL_54:
      v129 = v284;
      goto LABEL_64;
    }

    v42 = v304;
    v129 = v284;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1004E414C(v127, type metadata accessor for AlbumDetailDataSource.CellType);
      v128 = v281;
      goto LABEL_64;
    }

    v130 = *v127;
    v131 = Track.workName.getter();
    if (v132)
    {
      break;
    }

LABEL_63:

    v128 = v281;
LABEL_64:
    v135 = Track.artistName.getter();
    v296 = v125;
    if (!v129)
    {
      goto LABEL_71;
    }

    if (v255 == v135 && v129 == v136)
    {
      v284 = v129;
    }

    else
    {
      v137 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v137 & 1) == 0)
      {
LABEL_71:

        v255 = 0;
        v284 = 0;
        goto LABEL_72;
      }

      v284 = v129;
    }

LABEL_72:
    v138 = v0[95];
    v139 = v0[83];
    v140 = v0[69];
    v141 = v140 + *(sub_10010FC20(&qword_1011927A8) + 48);
    (v288)(v140, v138, v139);
    *v141 = v125;
    *(v141 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_10049A60C(0, *(v42 + 16) + 1, 1, v42);
    }

    v143 = *(v42 + 16);
    v142 = *(v42 + 24);
    if (v143 >= v142 >> 1)
    {
      v42 = sub_10049A60C(v142 > 1, v143 + 1, 1, v42);
    }

    v144 = v0[69];
    *(v42 + 16) = v143 + 1;
    sub_1004E59E0(v144, v254 + v42 + v143 * v253, type metadata accessor for AlbumDetailDataSource.CellType);
    if (__OFADD__(v128, 1))
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    (v288)(v0[94], v0[95], v0[83]);
    v304 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v300 = sub_100499798(0, v300[2] + 1, 1, v300);
    }

    v146 = v300[2];
    v145 = v300[3];
    v281 = v128 + 1;
    if (v146 >= v145 >> 1)
    {
      v300 = sub_100499798(v145 > 1, v146 + 1, 1, v300);
    }

    v147 = v0[95];
    v148 = v0[94];
    v149 = v0[83];
    sub_1000095E8(v0[74], &unk_101192800);
    (*(v241 + 8))(v147, v149);
    v300[2] = v146 + 1;
    v150 = v300 + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v146;
    v122 = v250;
    v250(v150, v148, v149);
    dispatch thunk of Collection.endIndex.getter();
    if (*(v252 + v243) == v0[48])
    {
      goto LABEL_16;
    }
  }

  v133 = v132;
  v278 = v131;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v0[30] == v278 && v133 == v0[31])
  {

LABEL_62:

    goto LABEL_63;
  }

  v134 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v134)
  {
    goto LABEL_62;
  }

  v151 = v0[71];
  v152 = sub_1004CE4F4(v130, v255, v284, v300);

  *v151 = v152;
  swift_storeEnumTagMultiPayload();

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((v296 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v42 = sub_100501548(v304);
    if ((v296 & 0x8000000000000000) != 0)
    {
      goto LABEL_126;
    }
  }

  if (v296 < *(v42 + 16))
  {
    v153 = v0[80];
    v154 = v0[78];
    v274 = v0[70];
    v296 = v0[62];
    sub_1004E98EC(v0[71], v254 + v42 + v125 * v253);
    v155 = Track.composerName.getter();
    v264 = v156;
    v269 = v155;
    v157 = swift_allocObject();
    v158 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
    v0[32] = 0;
    v0[33] = 0;
    Published.init(initialValue:)();
    v236(v157 + v158, v153, v154);
    v159 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
    v0[34] = 0;
    v0[35] = 0;
    Published.init(initialValue:)();
    v236(v157 + v159, v153, v154);
    v160 = v42;
    v161 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
    *(v157 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
    v162 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
    *(v157 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
    swift_beginAccess();
    v0[36] = v278;
    v0[37] = v133;
    Published.init(initialValue:)();
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[38] = v269;
    v0[39] = v264;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    v0[40] = 0;
    v0[41] = 0;

    static Published.subscript.setter();
    *(v157 + v161) = _swiftEmptyArrayStorage;
    v42 = v160;

    *(v157 + v162) = 0;
    v255 = Track.artistName.getter();
    v284 = v163;
    *v274 = v157;
    swift_storeEnumTagMultiPayload();
    v164 = v160[2];
    v165 = v160[3];

    if (v164 >= v165 >> 1)
    {
      v42 = sub_10049A60C(v165 > 1, v164 + 1, 1, v160);
    }

    v125 = v281;
    v166 = v0[70];
    *(v42 + 16) = v164 + 1;
    sub_1004E59E0(v166, v254 + v42 + v164 * v253, type metadata accessor for AlbumDetailDataSource.CellType);

    v128 = v281 + 1;
    if (__OFADD__(v281, 1))
    {
      goto LABEL_128;
    }

    v300 = _swiftEmptyArrayStorage;
    goto LABEL_54;
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  v304 = sub_100501548(v42);
LABEL_118:
  v303 = v0[106];
  v229 = v0[105];
  v294 = v0[104];
  v230 = v0[102];
  v231 = v0[100];
  v232 = v0[99];
  v233 = v0[97];
  v234 = v0[84];
  v235 = v0[83];

  (*(v234 + 8))(v233, v235);
  (*(v231 + 8))(v230, v232);
  result = (*(v229 + 8))(v303, v294);
  if ((v296 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v296 < *(v304 + 16))
  {
    sub_1004E98EC(v0[68], v254 + v304 + v296 * v253);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004E98EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlbumDetailDataSource.CellType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E99A8@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  result = a2(v5, v6);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_1004E9A00()
{
  type metadata accessor for Album();
  v1 = *(v0 + 16);

  return sub_1004B6064(v1);
}

unint64_t sub_1004E9A64()
{
  type metadata accessor for ContainerDetail.AttributionItem(0);

  return sub_1006A86F0();
}

uint64_t sub_1004E9AC4()
{
  v2 = *(type metadata accessor for ContainerDetail.AttributionItem(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008F30;

  return sub_1006A8738(v0 + v3, v4);
}

uint64_t sub_1004E9BC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_1004B3DD8(a1, v4, v5, v7, v6);
}

uint64_t sub_1004E9CA0()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v0 + v4);
  v9 = *(v0 + v4 + 8);

  return sub_10072B51C(v0 + v2, v6, v7, v8, v9);
}

uint64_t sub_1004E9D88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1004AEFB0(a1, v4, v5, v6);
}

void sub_1004E9E3C()
{
  v0 = sub_1006A6078();
  [v0 setAlpha:1.0];
}

uint64_t sub_1004E9EA4(uint64_t a1)
{
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1004A99A8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_1004E9FE8()
{
  result = qword_101192A60;
  if (!qword_101192A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192A60);
  }

  return result;
}

unint64_t sub_1004EA114()
{
  result = qword_101192A80;
  if (!qword_101192A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192A80);
  }

  return result;
}

unint64_t sub_1004EA174(unint64_t result)
{
  if ((result & 0xFFFFFFFFFFFFFEFCLL) != 0x3FFFFFEFCLL && (result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFALL)
  {
    return sub_10011896C(result);
  }

  return result;
}

unint64_t sub_1004EA1AC(uint64_t a1)
{
  v3 = *(type metadata accessor for Track() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  return sub_1004D214C(a1, *(v1 + 16), (v1 + v4), v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

__n128 sub_1004EA2D8@<Q0>(__n128 *a1@<X8>)
{
  v2 = (*(v1 + 32) + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation);
  v3 = v2[1].n128_u8[0];
  result = *v2;
  *a1 = *v2;
  a1[1].n128_u8[0] = v3;
  return result;
}

uint64_t sub_1004EA30C()
{
  v1 = *(type metadata accessor for Track() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1004AB2F4(v2);
}

uint64_t sub_1004EA36C()
{
  v1 = type metadata accessor for Track();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1004EA4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1004EA5A0()
{
  if (!qword_101192C18)
  {
    type metadata accessor for Track();
    sub_1001109D0(&qword_10118A600);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192C18);
    }
  }
}

void sub_1004EA61C()
{
  if (!qword_101192C20)
  {
    type metadata accessor for Album();
    type metadata accessor for MusicPlayer.PlayabilityStatus();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_101192C20);
    }
  }
}

unint64_t sub_1004EA730()
{
  result = qword_101192C50;
  if (!qword_101192C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C50);
  }

  return result;
}

unint64_t sub_1004EA788()
{
  result = qword_101192C58;
  if (!qword_101192C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C58);
  }

  return result;
}

uint64_t type metadata accessor for GenericMusicItemEntity()
{
  result = qword_101192CE8;
  if (!qword_101192CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004EA828()
{
  v0 = sub_10010FC20(&qword_101182C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100006080(v5, qword_101218EB0);
  sub_1000060E4(v5, qword_101218EB0);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004EA998@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for GenericMusicItemEntity();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (GenericMusicItem.hasSiriRepresentation.getter())
  {
    (*(v5 + 32))(v11, a1, v4);
    sub_1004F22C8(v11, a2);
    v12 = 0;
  }

  else
  {
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    (*(v5 + 16))(v7, a1, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = a2;
      v17 = v16;
      v32 = swift_slowAlloc();
      v34 = v8;
      v35 = v32;
      *v17 = 136446466;
      sub_10010FC20(&qword_101192DB8);
      v18 = String.init<A>(describing:)();
      v20 = sub_1000105AC(v18, v19, &v35);
      v30 = v15;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2082;
      sub_1004F23EC(&qword_101186698, &type metadata accessor for GenericMusicItem);
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v31 = v8;
      v25 = *(v5 + 8);
      v25(v7, v4);
      v26 = sub_1000105AC(v22, v24, &v35);

      *(v17 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v14, v30, "%{public}s – %{public}s has no Siri representation, failing init", v17, 0x16u);
      swift_arrayDestroy();

      a2 = v33;

      v25(a1, v4);
      v8 = v31;
    }

    else
    {

      v27 = *(v5 + 8);
      v27(a1, v4);
      v27(v7, v4);
    }

    v12 = 1;
  }

  return (*(v9 + 56))(a2, v12, 1, v8);
}

uint64_t sub_1004EAD74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_101192DC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  GenericMusicItem.optional_siriRepresentation.getter();
  v5 = type metadata accessor for MusicSiriRepresentation();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    return (*(v6 + 32))(a1, v4, v5);
  }

  sub_1000095E8(v4, &qword_101192DC0);
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(43);
  v12 = type metadata accessor for GenericMusicItemEntity();
  sub_10010FC20(&qword_101192DB8);
  v8 = String.init<A>(describing:)();
  v10 = v9;

  v12 = v8;
  v13 = v10;
  v11._object = 0x8000000100E4E510;
  v11._countAndFlagsBits = 0x1000000000000029;
  String.append(_:)(v11);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1004EAF40(uint64_t a1)
{
  sub_1004EAFA4(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1004EAFA4@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v1 - 8);
  v14[1] = v14 - v2;
  v3 = type metadata accessor for IntentMediaItem.ItemType();
  __chkstk_darwin(v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicSiriRepresentation.Kind();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicSiriRepresentation();
  v10 = *(v15 - 8);
  __chkstk_darwin(v15);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAD74(v12);
  v14[0] = MusicSiriRepresentation.id.getter();
  MusicSiriRepresentation.title.getter();
  MusicSiriRepresentation.kind.getter();
  sub_10013A49C(v5);
  (*(v7 + 8))(v9, v6);
  MusicSiriRepresentation.authorName.getter();
  MusicSiriRepresentation.url.getter();
  IntentMediaItem.init(identifier:title:type:image:artist:url:)();
  return (*(v10 + 8))(v12, v15);
}

uint64_t sub_1004EB228()
{
  v0 = type metadata accessor for MusicSiriRepresentation();
  __chkstk_darwin(v0);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v8 = type metadata accessor for GenericMusicItemEntity();
  sub_10010FC20(&qword_101192DB8);
  v8 = String.init<A>(describing:)();
  v9 = v3;
  v4._object = 0x8000000100E4E540;
  v4._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v4);
  sub_1004EAD74(v2);
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t sub_1004EB348@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MusicSiriRepresentation();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EAD74(v5);
  v6 = MusicSiriRepresentation.id.getter();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_1004EB428@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F7D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000060E4(v2, qword_101218EB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004EB4D0(uint64_t a1)
{
  v2 = sub_1004F23EC(&qword_101192C60, type metadata accessor for GenericMusicItemEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1004EB54C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_10010FC20(&qword_101192DC8);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = sub_10010FC20(&qword_101182C20);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for MusicSiriRepresentation();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  sub_1004EAD74(v10);
  MusicSiriRepresentation.title.getter();
  (*(v8 + 8))(v10, v7);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v12 + 56))(v6, 1, 1, v11);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1004EB7D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_1004EB88C(a1, a2);
}

uint64_t sub_1004EB88C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_10010FC20(&qword_101182C20);
  v3[5] = swift_task_alloc();
  sub_10010FC20(&unk_101195200);
  v3[6] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v3[7] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v3[8] = swift_task_alloc();
  v4 = type metadata accessor for Artwork();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for DisplayRepresentation.Components();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  sub_10010FC20(&qword_101192DC8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = type metadata accessor for MusicSiriRepresentation();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1004EBBA0, 0, 0);
}

uint64_t sub_1004EBBA0()
{
  v1 = v0[20];
  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v35 = v0[16];
  sub_1004EAD74(v1);
  MusicSiriRepresentation.title.getter();
  v34 = *(v2 + 8);
  v34(v1, v3);
  LocalizedStringResource.init(stringLiteral:)();
  v7 = type metadata accessor for DisplayRepresentation.Image();
  v0[25] = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v0[26] = v9;
  v0[27] = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v9(v35, 1, 1, v7);
  static DisplayRepresentation.Components.image.getter();
  sub_1004F23EC(&qword_101192DD0, &type metadata accessor for DisplayRepresentation.Components);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v5 + 8))(v4, v6);
  if ((v10 & 1) == 0)
  {
LABEL_4:
    v16 = v0[24];
    v17 = v0[21];
    v18 = v0[22];
    v19 = v0[15];
    v20 = v0[16];
    v21 = v0[5];
    (*(v18 + 16))(v0[23], v16, v17);
    (*(v18 + 56))(v21, 1, 1, v17);
    sub_1004EF154(v20, v19);
    DisplayRepresentation.init(title:subtitle:image:)();
    sub_1000095E8(v20, &qword_101192DC8);
    (*(v18 + 8))(v16, v17);

    v22 = v0[1];

    return v22();
  }

  v11 = v0[19];
  v12 = v0[17];
  v13 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  sub_1004EAD74(v11);
  MusicSiriRepresentation.artwork.getter();
  v34(v11, v12);
  if ((*(v14 + 48))(v15, 1, v13) == 1)
  {
    sub_1000095E8(v0[8], &unk_101188920);
    goto LABEL_4;
  }

  v24 = v0[6];
  v25 = v0[7];
  (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
  v26 = type metadata accessor for Artwork.CropStyle();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  v27 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  v28 = swift_task_alloc();
  v0[28] = v28;
  *v28 = v0;
  v28[1] = sub_1004EC018;
  v29 = v0[6];
  v30 = v0[7];
  v31.n128_u64[0] = 0x4072C00000000000;
  v32.n128_u64[0] = 1.0;
  v33.n128_u64[0] = 0x4072C00000000000;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v30, v29, 0, 0, v31, v33, v32);
}

uint64_t sub_1004EC018(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 232) = a1;

  v4 = *(v3 + 56);
  v5 = *(v3 + 48);
  if (v1)
  {

    sub_1000095E8(v5, &unk_101195200);
    sub_1000095E8(v4, &unk_101184060);
    v6 = sub_1004EC43C;
  }

  else
  {
    sub_1000095E8(v5, &unk_101195200);
    sub_1000095E8(v4, &unk_101184060);
    v6 = sub_1004EC1CC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1004EC1CC()
{
  v1 = UIImageHEICRepresentation(*(v0 + 232));
  v2 = *(v0 + 232);
  if (v1)
  {
    v18 = *(v0 + 208);
    v17 = *(v0 + 200);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 80);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = v1;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    DisplayRepresentation.Image.init(data:isTemplate:)();
    (*(v5 + 8))(v6, v7);
    sub_1000095E8(v3, &qword_101192DC8);
    v18(v4, 0, 1, v17);
    sub_1004EF1C4(v4, v3);
  }

  else
  {
    (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  }

  v9 = *(v0 + 192);
  v10 = *(v0 + 168);
  v11 = *(v0 + 176);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  v14 = *(v0 + 40);
  (*(v11 + 16))(*(v0 + 184), v9, v10);
  (*(v11 + 56))(v14, 1, 1, v10);
  sub_1004EF154(v13, v12);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000095E8(v13, &qword_101192DC8);
  (*(v11 + 8))(v9, v10);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1004EC43C()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[15];
  v5 = v0[16];
  v6 = v0[5];
  (*(v3 + 16))(v0[23], v1, v2);
  (*(v3 + 56))(v6, 1, 1, v2);
  sub_1004EF154(v5, v4);
  DisplayRepresentation.init(title:subtitle:image:)();
  sub_1000095E8(v5, &qword_101192DC8);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1004EC5F0(uint64_t a1)
{
  v2 = sub_1004F23EC(&qword_101192D28, type metadata accessor for GenericMusicItemEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1004EC66C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10030C530;

  return sub_1004EF234(a1);
}

uint64_t sub_1004EC714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002F3F4;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1004EC7C8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10030C430;

  return (sub_1004F0070)(a1, a2);
}

unint64_t sub_1004EC880()
{
  result = qword_101192C68;
  if (!qword_101192C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C68);
  }

  return result;
}

unint64_t sub_1004EC8D8()
{
  result = qword_101192C78;
  if (!qword_101192C78)
  {
    sub_1001109D0(&qword_101192C80);
    sub_1004F23EC(&qword_101192C70, type metadata accessor for GenericMusicItemEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C78);
  }

  return result;
}

uint64_t sub_1004EC98C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1004ECAF8();
  *v5 = v2;
  v5[1] = sub_100008F30;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1004ECA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100008F30;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_1004ECAF8()
{
  result = qword_101192C88;
  if (!qword_101192C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192C88);
  }

  return result;
}

uint64_t sub_1004ECB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1004ECC04;

  return (sub_1004F1194)(a2, a3);
}

uint64_t sub_1004ECC04(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1004ECD3C()
{
  result = type metadata accessor for GenericMusicItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004ECE90(uint64_t a1)
{
  *(a1 + 8) = sub_1004F23EC(&qword_101192D40, type metadata accessor for GenericMusicItemEntity);
  result = sub_1004F23EC(&qword_101192D48, type metadata accessor for GenericMusicItemEntity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1004ECF30@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = sub_10010FC20(&qword_101192D78);
  __chkstk_darwin(v18);
  v17 = v14 - v1;
  v2 = type metadata accessor for UTType();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10010FC20(&qword_101192D80);
  v15 = *(v3 - 8);
  v4 = v15;
  __chkstk_darwin(v3);
  v6 = v14 - v5;
  v19 = sub_10010FC20(&qword_101192D88);
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = v14 - v8;
  static UTType.url.getter();
  type metadata accessor for GenericMusicItemEntity();
  v14[1] = sub_1004F23EC(&qword_101192D90, type metadata accessor for GenericMusicItemEntity);
  DataRepresentation.init(exportedContentType:exporting:)();
  sub_100020674(&qword_101192D98, &qword_101192D80);
  TransferRepresentation.exportingCondition(_:)();
  v16 = *(v4 + 8);
  v16(v6, v3);
  static UTType.text.getter();
  DataRepresentation.init(exportedContentType:exporting:)();
  v10 = v17;
  v11 = *(v18 + 48);
  v12 = v19;
  (*(v7 + 16))(v17, v9, v19);
  (*(v15 + 16))(&v10[v11], v6, v3);
  TupleTransferRepresentation.init(_:)();
  v16(v6, v3);
  return (*(v7 + 8))(v9, v12);
}

uint64_t sub_1004ED2D8(uint64_t a1)
{
  v1[10] = a1;
  sub_10010FC20(&qword_101183A20);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_1004ED3D0, 0, 0);
}

uint64_t sub_1004ED3D0()
{
  v27 = v0;
  sub_1004ED77C((v0 + 2));
  v1 = v0[5];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[11];
  if (v1)
  {
    v5 = v0[7];
    sub_10000954C(v0 + 2, v0[5]);
    (*(v5 + 16))(v1, v5);
    sub_10000959C((v0 + 2));
    if ((*(v3 + 48))(v4, 1, v2) != 1)
    {
      v7 = v0[13];
      v6 = v0[14];
      v8 = v0[12];
      (*(v7 + 32))(v6, v0[11], v8);
      v9 = URL.dataRepresentation.getter();
      v11 = v10;
      (*(v7 + 8))(v6, v8);

      v12 = v0[1];

      return v12(v9, v11);
    }
  }

  else
  {
    sub_1000095E8((v0 + 2), &qword_101192DA0);
    (*(v3 + 56))(v4, 1, 1, v2);
  }

  sub_1000095E8(v0[11], &qword_101183A20);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_101218C28);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v17 = 136446466;
    v18 = type metadata accessor for GenericMusicItemEntity();
    v0[8] = v18;
    sub_10010FC20(&qword_101192DB8);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, v26);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v0[9] = v18;
    v22 = String.init<A>(describing:)();
    v24 = sub_1000105AC(v22, v23, v26);

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s – no url for entity %{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_1004EF100();
  swift_allocError();
  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1004ED77C@<X0>(uint64_t a1@<X8>)
{
  v109 = a1;
  v66 = type metadata accessor for UploadedVideo();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for UploadedAudio();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for TVShow();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for TVSeason();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVEpisode();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Station();
  v80 = *(v81 - 8);
  __chkstk_darwin(v81);
  v79 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Song();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SocialProfile();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RecordLabel();
  v89 = *(v9 - 8);
  v90 = v9;
  __chkstk_darwin(v9);
  v88 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RadioShow();
  v92 = *(v11 - 8);
  v93 = v11;
  __chkstk_darwin(v11);
  v91 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v95 = *(v13 - 8);
  v96 = v13;
  __chkstk_darwin(v13);
  v94 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicVideo();
  v98 = *(v15 - 8);
  v99 = v15;
  __chkstk_darwin(v15);
  v97 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicMovie();
  v101 = *(v17 - 8);
  v102 = v17;
  __chkstk_darwin(v17);
  v100 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Curator();
  v104 = *(v19 - 8);
  v105 = v19;
  __chkstk_darwin(v19);
  v103 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Composer();
  v106 = *(v21 - 8);
  v107 = v21;
  __chkstk_darwin(v21);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Album();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v63 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for GenericMusicItem();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = &v63 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v36, v108, v32, v34);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 == enum case for GenericMusicItem.album(_:))
  {
    (*(v33 + 96))(v36, v32);
    v38 = *(v29 + 32);
    v38(v31, v36, v28);
    v39 = v109;
    *(v109 + 24) = v28;
    v39[4] = &off_1010B2790;
    v39[5] = &protocol witness table for Album;
    v40 = sub_10001C8B8(v39);
    return (v38)(v40, v31, v28);
  }

  v42 = v109;
  if (v37 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v33 + 96))(v36, v32);
    v43 = *(v25 + 32);
    v43(v27, v36, v24);
    v42[3] = v24;
    v42[4] = &off_1010B27A0;
    v42[5] = &protocol witness table for Artist;
    v44 = sub_10001C8B8(v42);
    return (v43)(v44, v27, v24);
  }

  v45 = v109;
  if (v37 != enum case for GenericMusicItem.composer(_:))
  {
    if (v37 == enum case for GenericMusicItem.creditArtist(_:))
    {
      goto LABEL_8;
    }

    if (v37 == enum case for GenericMusicItem.curator(_:))
    {
      (*(v33 + 96))(v36, v32);
      v50 = v103;
      v47 = *(v104 + 32);
      v46 = v105;
      v47(v103, v36, v105);
      v42[3] = v46;
      v42[4] = &off_1010B27C0;
      v51 = &protocol witness table for Curator;
LABEL_11:
      v42[5] = v51;
LABEL_12:
      v48 = sub_10001C8B8(v42);
      v49 = v50;
      goto LABEL_13;
    }

    if (v37 == enum case for GenericMusicItem.editorialItem(_:) || v37 == enum case for GenericMusicItem.genre(_:))
    {
      goto LABEL_8;
    }

    if (v37 == enum case for GenericMusicItem.musicMovie(_:))
    {
      (*(v33 + 96))(v36, v32);
      v50 = v100;
      v47 = *(v101 + 32);
      v46 = v102;
      v47(v100, v36, v102);
      v42[3] = v46;
      v42[4] = &off_1010B27F0;
      v53 = &unk_10118E120;
      v54 = &type metadata accessor for MusicMovie;
    }

    else
    {
      if (v37 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v97;
        v47 = *(v98 + 32);
        v46 = v99;
        v47(v97, v36, v99);
        v42[3] = v46;
        v42[4] = &off_1010B27E0;
        v51 = &protocol witness table for MusicVideo;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v94;
        v47 = *(v95 + 32);
        v46 = v96;
        v47(v94, v36, v96);
        v42[3] = v46;
        v42[4] = &off_1010B2800;
        v51 = &protocol witness table for Playlist;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.playlistFolder(_:))
      {
        goto LABEL_8;
      }

      if (v37 == enum case for GenericMusicItem.radioShow(_:))
      {
        (*(v33 + 96))(v36, v32);
        v50 = v91;
        v47 = *(v92 + 32);
        v46 = v93;
        v47(v91, v36, v93);
        v42[3] = v46;
        v42[4] = &off_1010B2810;
        v51 = &protocol witness table for RadioShow;
        goto LABEL_11;
      }

      if (v37 == enum case for GenericMusicItem.recordLabel(_:))
      {
        (*(v33 + 96))(v36, v32);
        v46 = v90;
        v47 = *(v89 + 32);
        v50 = v88;
        v47(v88, v36, v90);
        v42[3] = v46;
        v42[4] = &off_1010B2820;
        v51 = &protocol witness table for RecordLabel;
        goto LABEL_11;
      }

      if (v37 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v37 != enum case for GenericMusicItem.song(_:))
        {
          if (v37 == enum case for GenericMusicItem.station(_:))
          {
            (*(v33 + 96))(v36, v32);
            v55 = *(v80 + 32);
            v56 = v79;
            v57 = v81;
            v55(v79, v36, v81);
            v42[3] = v57;
            v42[4] = &off_1010B2850;
            v42[5] = &protocol witness table for Station;
            v58 = sub_10001C8B8(v42);
            return (v55)(v58, v56, v57);
          }

          if (v37 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v77 + 32);
            v59 = v76;
            v60 = v78;
            v47(v76, v36, v78);
            v42[3] = v60;
            v42[4] = &off_1010B2880;
            v61 = &unk_10118E118;
            v62 = &type metadata accessor for TVEpisode;
          }

          else if (v37 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v74 + 32);
            v59 = v73;
            v60 = v75;
            v47(v73, v36, v75);
            v42[3] = v60;
            v42[4] = &off_1010B2890;
            v61 = &unk_10118E110;
            v62 = &type metadata accessor for TVSeason;
          }

          else if (v37 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v71 + 32);
            v59 = v70;
            v60 = v72;
            v47(v70, v36, v72);
            v42[3] = v60;
            v42[4] = &off_1010B28A0;
            v61 = &unk_10118E108;
            v62 = &type metadata accessor for TVShow;
          }

          else if (v37 == enum case for GenericMusicItem.uploadedAudio(_:))
          {
            (*(v33 + 96))(v36, v32);
            v47 = *(v68 + 32);
            v59 = v67;
            v60 = v69;
            v47(v67, v36, v69);
            v42[3] = v60;
            v42[4] = &off_1010B28B0;
            v61 = &unk_10118E100;
            v62 = &type metadata accessor for UploadedAudio;
          }

          else
          {
            if (v37 != enum case for GenericMusicItem.uploadedVideo(_:))
            {
              v45 = v109;
              if (v37 != enum case for GenericMusicItem.other(_:))
              {
                *(v109 + 16) = 0u;
                *(v42 + 2) = 0u;
                *v42 = 0u;
                return (*(v33 + 8))(v36, v32);
              }

LABEL_8:
              result = (*(v33 + 8))(v36, v32);
              v45[1] = 0u;
              v45[2] = 0u;
              *v45 = 0u;
              return result;
            }

            (*(v33 + 96))(v36, v32);
            v47 = *(v65 + 32);
            v59 = v64;
            v60 = v66;
            v47(v64, v36, v66);
            v42[3] = v60;
            v42[4] = &off_1010B28C0;
            v61 = &unk_10118E0F8;
            v62 = &type metadata accessor for UploadedVideo;
          }

          v42[5] = sub_1004F23EC(v61, v62);
          v48 = sub_10001C8B8(v42);
          v49 = v59;
          v52 = v60;
          return (v47)(v48, v49, v52);
        }

        (*(v33 + 96))(v36, v32);
        v47 = *(v83 + 32);
        v50 = v82;
        v46 = v84;
        v47(v82, v36, v84);
        v42[3] = v46;
        v42[4] = &off_1010B2860;
        v51 = &protocol witness table for Song;
        goto LABEL_11;
      }

      (*(v33 + 96))(v36, v32);
      v47 = *(v86 + 32);
      v50 = v85;
      v46 = v87;
      v47(v85, v36, v87);
      v42[3] = v46;
      v42[4] = &off_1010B2830;
      v53 = &unk_101192DA8;
      v54 = &type metadata accessor for SocialProfile;
    }

    v42[5] = sub_1004F23EC(v53, v54);
    goto LABEL_12;
  }

  (*(v33 + 96))(v36, v32);
  v46 = v107;
  v47 = *(v106 + 32);
  v47(v23, v36, v107);
  v42[3] = v46;
  v42[4] = &off_1010B27B0;
  v42[5] = sub_1004F23EC(&qword_10118E130, &type metadata accessor for Composer);
  v48 = sub_10001C8B8(v42);
  v49 = v23;
LABEL_13:
  v52 = v46;
  return (v47)(v48, v49, v52);
}

uint64_t sub_1004EEAE4()
{
  v0 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  sub_1004ED77C(v9);
  v3 = v10;
  if (v10)
  {
    v4 = v11;
    sub_10000954C(v9, v10);
    (*(v4 + 16))(v3, v4);
    sub_10000959C(v9);
    v5 = type metadata accessor for URL();
    v6 = 1;
    if ((*(*(v5 - 8) + 48))(v2, 1, v5) != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000095E8(v9, &qword_101192DA0);
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  }

  v6 = 0;
LABEL_6:
  sub_1000095E8(v2, &qword_101183A20);
  return v6;
}

uint64_t sub_1004EEC70(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for String.Encoding();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_1004EED30, 0, 0);
}

uint64_t sub_1004EED30()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  GenericMusicItem.title.getter();
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;

  (*(v2 + 8))(v1, v3);
  if (v6 >> 60 == 15)
  {
    v4 = 0;
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = v6;
  }

  v8 = v0[1];

  return v8(v4, v7);
}

uint64_t sub_1004EEF60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1004EEFF4;

  return sub_1004ED2D8(a1);
}

uint64_t sub_1004EEFF4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

unint64_t sub_1004EF100()
{
  result = qword_101192DB0;
  if (!qword_101192DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192DB0);
  }

  return result;
}

uint64_t sub_1004EF154(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101192DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EF1C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101192DC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004EF234(uint64_t a1)
{
  v1[4] = a1;
  sub_10010FC20(&qword_101192DD8);
  v1[5] = swift_task_alloc();
  v2 = type metadata accessor for GenericMusicItemEntity();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v1[11] = swift_task_alloc();
  v3 = type metadata accessor for GenericMusicItem();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1004EF3E4, 0, 0);
}

uint64_t sub_1004EF3E4()
{
  v1 = v0[4];
  v2 = v1[2];
  v0[16] = v2;
  if (v2)
  {
    v0[17] = 0;
    v0[18] = _swiftEmptyArrayStorage;
    v3 = v1[4];
    v0[19] = v3;
    v4 = v1[5];
    v0[20] = v4;

    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1004EF550;
    v6 = v0[11];

    return sub_10013A848(v6, v3, v4);
  }

  else
  {

    v8 = v0[1];

    return v8(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1004EF550()
{

  if (v0)
  {

    v1 = sub_1004EFD20;
  }

  else
  {
    v1 = sub_1004EF668;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004EF668()
{
  v63 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = &unk_101189DA0;
    v5 = v3;
LABEL_5:
    sub_1000095E8(v5, v4);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_101218C28);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[20];
    if (v15)
    {
      v17 = v0[19];
      v18 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v18 = 136446466;
      v0[2] = &type metadata for GenericMusicItemEntityQuery;
      sub_10010FC20(&qword_101192DE8);
      v19 = String.init<A>(describing:)();
      v21 = sub_1000105AC(v19, v20, &v62);

      *(v18 + 4) = v21;
      *(v18 + 12) = 2082;
      v22 = sub_1000105AC(v17, v16, &v62);

      *(v18 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s – Query failed for identifier %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v23 = v0[18];
    goto LABEL_20;
  }

  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];
  (*(v2 + 32))(v6, v3, v1);
  (*(v2 + 16))(v7, v6, v1);
  sub_1004EA998(v7, v10);
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = v0[5];
    (*(v0[13] + 8))(v0[15], v0[12]);
    v4 = &unk_101192DD8;
    v5 = v11;
    goto LABEL_5;
  }

  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[5];

  sub_1004F22C8(v26, v24);
  sub_1004F232C(v24, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = v0[18];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_10049A634(0, v23[2] + 1, 1, v0[18]);
  }

  v29 = v23[2];
  v28 = v23[3];
  if (v29 >= v28 >> 1)
  {
    v23 = sub_10049A634(v28 > 1, v29 + 1, 1, v23);
  }

  v30 = v0[9];
  v31 = v0[7];
  v23[2] = v29 + 1;
  sub_1004F22C8(v30, v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v29);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v32 = v0[10];
  v33 = v0[8];
  v34 = type metadata accessor for Logger();
  sub_1000060E4(v34, qword_101218C28);
  sub_1004F232C(v32, v33);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v37 = os_log_type_enabled(v35, v36);
  v38 = v0[15];
  v39 = v0[12];
  v40 = v0[13];
  v41 = v0[10];
  v42 = v0[8];
  if (v37)
  {
    v61 = v0[10];
    v43 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v43 = 136446466;
    v0[3] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8);
    v44 = String.init<A>(describing:)();
    v60 = v38;
    v59 = v39;
    v46 = sub_1000105AC(v44, v45, &v62);

    *(v43 + 4) = v46;
    *(v43 + 12) = 2082;
    v47 = sub_1004EB228();
    v49 = v48;
    sub_1004F2390(v42);
    v50 = sub_1000105AC(v47, v49, &v62);

    *(v43 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s – Query found entity %{public}s", v43, 0x16u);
    swift_arrayDestroy();

    sub_1004F2390(v61);
    (*(v40 + 8))(v60, v59);
  }

  else
  {

    sub_1004F2390(v42);
    sub_1004F2390(v41);
    (*(v40 + 8))(v38, v39);
  }

LABEL_20:
  v51 = v0[17] + 1;
  if (v51 == v0[16])
  {

    v52 = v0[1];

    return v52(v23);
  }

  else
  {
    v0[17] = v51;
    v0[18] = v23;
    v54 = v0[4] + 16 * v51;
    v55 = *(v54 + 32);
    v0[19] = v55;
    v56 = *(v54 + 40);
    v0[20] = v56;

    v57 = swift_task_alloc();
    v0[21] = v57;
    *v57 = v0;
    v57[1] = sub_1004EF550;
    v58 = v0[11];

    return sub_10013A848(v58, v55, v56);
  }
}

uint64_t sub_1004EFD20()
{
  v22 = v0;
  (*(v0[13] + 56))(v0[11], 1, 1, v0[12]);
  sub_1000095E8(v0[11], &unk_101189DA0);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218C28);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[20];
  if (v4)
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136446466;
    v0[2] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v21);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    v11 = sub_1000105AC(v6, v5, &v21);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s – Query failed for identifier %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v12 = v0[17] + 1;
  if (v12 == v0[16])
  {
    v13 = v0[18];

    v14 = v0[1];

    return v14(v13);
  }

  else
  {
    v0[17] = v12;
    v16 = v0[4] + 16 * v12;
    v17 = *(v16 + 32);
    v0[19] = v17;
    v18 = *(v16 + 40);
    v0[20] = v18;

    v19 = swift_task_alloc();
    v0[21] = v19;
    *v19 = v0;
    v19[1] = sub_1004EF550;
    v20 = v0[11];

    return sub_10013A848(v20, v17, v18);
  }
}

uint64_t sub_1004F0070(uint64_t a1, uint64_t a2)
{
  v2[5] = a2;
  sub_10010FC20(&qword_101192DC0);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for MusicSiriRepresentation();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v5 = type metadata accessor for DisplayRepresentation();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for GenericMusicItemEntity();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[21] = v7;
  *v7 = v2;
  v7[1] = sub_1004F02A8;

  return sub_1004EF234(a1);
}

uint64_t sub_1004F02A8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1004F0464, 0, 0);
  }
}

unint64_t sub_1004F0464()
{
  v1 = v0[22];
  result = sub_10010D324(_swiftEmptyArrayStorage);
  v3 = *(v1 + 16);
  v0[23] = v3;
  if (v3)
  {
    v4 = v0[18];
    v0[24] = result;
    v0[25] = 0;
    v5 = v0[22];
    if (*(v5 + 16))
    {
      sub_1004F232C(v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v0[20]);
      v6 = swift_task_alloc();
      v0[26] = v6;
      *v6 = v0;
      v6[1] = sub_1004F0634;
      v7 = v0[16];
      v8 = v0[5];

      return sub_1004EB88C(v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v10 = result;

    v9 = v0[1];

    return v9(v10);
  }

  return result;
}

uint64_t sub_1004F0634()
{

  return _swift_task_switch(sub_1004F0730, 0, 0);
}

uint64_t sub_1004F0730()
{
  v82 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  GenericMusicItem.optional_siriRepresentation.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];
    sub_1000095E8(v0[6], &qword_101192DC0);
    _StringGuts.grow(_:)(43);

    v0[2] = v4;
    sub_10010FC20(&qword_101192DB8);
    v81[0] = String.init<A>(describing:)();
    v81[1] = v5;
    v6._object = 0x8000000100E4E510;
    v6._countAndFlagsBits = 0x1000000000000029;
    String.append(_:)(v6);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v8 = v0[24];
  v9 = v0[15];
  v80 = v0[16];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  (*(v14 + 32))(v12, v0[6], v13);
  v15 = MusicSiriRepresentation.id.getter();
  v17 = v16;
  v78 = *(v14 + 8);
  v78(v12, v13);
  v18 = *(v10 + 16);
  v18(v9, v80, v11);
  v19 = v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[3] = v8;
  v21 = sub_100019C10(v15, v17);
  v23 = *(v8 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  v27 = v22;
  if (*(v0[24] + 24) >= v26)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v72 = v21;
      sub_1006C9554();
      v21 = v72;
    }
  }

  else
  {
    sub_1006C2830(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_100019C10(v19, v17);
    if ((v27 & 1) != (v28 & 1))
    {

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }
  }

  v29 = v0[15];
  v30 = v0[11];
  v31 = v0[12];
  if (v27)
  {
    v32 = v21;

    v80 = v0[3];
    (*(v31 + 40))(v80[7] + *(v31 + 72) * v32, v29, v30);
  }

  else
  {
    v33 = v0[3];
    v33[(v21 >> 6) + 8] |= 1 << v21;
    v34 = (v33[6] + 16 * v21);
    *v34 = v19;
    v34[1] = v17;
    result = (*(v31 + 32))(v33[7] + *(v31 + 72) * v21, v29, v30);
    v35 = v33[2];
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v25)
    {
      __break(1u);
      goto LABEL_30;
    }

    v80 = v33;
    v33[2] = v36;
  }

  if (qword_10117F6D0 != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v37 = v0[19];
  v38 = v0[20];
  v39 = v0[16];
  v40 = v0[14];
  v41 = v0[11];
  v42 = type metadata accessor for Logger();
  sub_1000060E4(v42, qword_101218C28);
  sub_1004F232C(v38, v37);
  v18(v40, v39, v41);
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[19];
  v47 = v0[20];
  v79 = v0[16];
  v48 = v0[14];
  if (v45)
  {
    v77 = v0[12];
    v75 = v0[13];
    v76 = v0[11];
    v49 = v0[9];
    v73 = v0[7];
    v74 = v18;
    v50 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v50 = 136446722;
    v0[4] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8);
    v51 = String.init<A>(describing:)();
    v53 = sub_1000105AC(v51, v52, v81);

    *(v50 + 4) = v53;
    *(v50 + 12) = 2082;
    sub_1004EAD74(v49);
    v54 = MusicSiriRepresentation.id.getter();
    v56 = v55;
    v78(v49, v73);
    sub_1004F2390(v46);
    v57 = sub_1000105AC(v54, v56, v81);

    *(v50 + 14) = v57;
    *(v50 + 22) = 2082;
    v74(v75, v48, v76);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    v61 = *(v77 + 8);
    v61(v48, v76);
    v62 = sub_1000105AC(v58, v60, v81);

    *(v50 + 24) = v62;
    _os_log_impl(&_mh_execute_header, v43, v44, "%{public}s – Entity %{public}s has display representation %{public}s", v50, 0x20u);
    swift_arrayDestroy();

    v61(v79, v76);
  }

  else
  {
    v64 = v0[11];
    v63 = v0[12];

    v65 = *(v63 + 8);
    v65(v48, v64);
    sub_1004F2390(v46);
    v65(v79, v64);
  }

  result = sub_1004F2390(v47);
  v66 = v0[25] + 1;
  if (v66 == v0[23])
  {

    v67 = v0[1];

    return v67(v80);
  }

  v0[24] = v80;
  v0[25] = v66;
  v68 = v0[22];
  if (v66 >= *(v68 + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  sub_1004F232C(v68 + ((*(v0[18] + 80) + 32) & ~*(v0[18] + 80)) + *(v0[18] + 72) * v66, v0[20]);
  v69 = swift_task_alloc();
  v0[26] = v69;
  *v69 = v0;
  v69[1] = sub_1004F0634;
  v70 = v0[16];
  v71 = v0[5];

  return sub_1004EB88C(v70, v71);
}

uint64_t sub_1004F0EF8()
{
  sub_10010FC20(&qword_101192DF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100ED02D0;
  *(v0 + 32) = type metadata accessor for Album();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = type metadata accessor for Artist();
  *(v0 + 56) = &protocol witness table for Artist;
  *(v0 + 64) = type metadata accessor for Curator();
  *(v0 + 72) = &protocol witness table for Curator;
  v1 = type metadata accessor for EditorialItem();
  v2 = sub_1004F23EC(&qword_101192DF8, &type metadata accessor for EditorialItem);
  *(v0 + 80) = v1;
  *(v0 + 88) = v2;
  v3 = type metadata accessor for Genre();
  v4 = sub_1004F23EC(&qword_101192E00, &type metadata accessor for Genre);
  *(v0 + 96) = v3;
  *(v0 + 104) = v4;
  v5 = type metadata accessor for MusicMovie();
  v6 = sub_1004F23EC(&qword_101192E08, &type metadata accessor for MusicMovie);
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = type metadata accessor for MusicVideo();
  *(v0 + 136) = &protocol witness table for MusicVideo;
  *(v0 + 144) = type metadata accessor for Playlist();
  *(v0 + 152) = &protocol witness table for Playlist;
  *(v0 + 160) = type metadata accessor for RadioShow();
  *(v0 + 168) = &protocol witness table for RadioShow;
  *(v0 + 176) = type metadata accessor for RecordLabel();
  *(v0 + 184) = &protocol witness table for RecordLabel;
  *(v0 + 192) = type metadata accessor for Song();
  *(v0 + 200) = &protocol witness table for Song;
  *(v0 + 208) = type metadata accessor for Station();
  *(v0 + 216) = &protocol witness table for Station;
  v7 = type metadata accessor for TVEpisode();
  v8 = sub_1004F23EC(&qword_101192E10, &type metadata accessor for TVEpisode);
  *(v0 + 224) = v7;
  *(v0 + 232) = v8;
  v9 = type metadata accessor for TVShow();
  v10 = sub_1004F23EC(&qword_101192E18, &type metadata accessor for TVShow);
  *(v0 + 240) = v9;
  *(v0 + 248) = v10;
  v11 = type metadata accessor for UploadedVideo();
  v12 = sub_1004F23EC(&qword_101192E20, &type metadata accessor for UploadedVideo);
  *(v0 + 256) = v11;
  *(v0 + 264) = v12;
  return v0;
}

uint64_t sub_1004F1194(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_10010FC20(&qword_101192DD8);
  v2[6] = swift_task_alloc();
  v3 = type metadata accessor for GenericMusicItemEntity();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  sub_10010FC20(&unk_101189DA0);
  v2[11] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_10118C1D8);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v5 = type metadata accessor for GenericMusicItem();
  v2[15] = v5;
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for MusicSearchResultGroup();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  sub_10010FC20(&qword_101192DE0);
  v2[22] = swift_task_alloc();
  v7 = type metadata accessor for MusicCatalogInternalSearchResponse();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = type metadata accessor for MusicCatalogInternalSearchRequest.LyricsOption();
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  sub_10010FC20(&qword_10118E488);
  v2[29] = swift_task_alloc();
  v9 = type metadata accessor for MusicCatalogInternalSearchRequest();
  v2[30] = v9;
  v2[31] = *(v9 - 8);
  v2[32] = swift_task_alloc();

  return _swift_task_switch(sub_1004F1580, 0, 0);
}

uint64_t sub_1004F1580()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  sub_1004F0EF8();

  MusicCatalogInternalSearchRequest.init(term:types:)();
  v5 = enum case for MusicDataRequest.Source.appIntents(_:);
  v6 = type metadata accessor for MusicDataRequest.Source();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  MusicCatalogInternalSearchRequest.source.setter();
  MusicCatalogInternalSearchRequest.sparseCount.setter();
  MusicCatalogInternalSearchRequest.limit.setter();
  (*(v4 + 104))(v1, enum case for MusicCatalogInternalSearchRequest.LyricsOption.includeWithoutHighlights(_:), v3);
  MusicCatalogInternalSearchRequest.lyricsOption.setter();
  MusicCatalogInternalSearchRequest.includeImmersiveContent.setter();
  v8 = swift_task_alloc();
  v0[33] = v8;
  *v8 = v0;
  v8[1] = sub_1004F173C;
  v9 = v0[22];

  return MusicCatalogInternalSearchRequest.response()(v9);
}

uint64_t sub_1004F173C()
{

  if (v0)
  {

    v1 = sub_1004F1FE8;
  }

  else
  {
    v1 = sub_1004F1854;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004F1854()
{
  v76 = v0;
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  v5 = MusicCatalogInternalSearchResponse.resultGroups.getter();
  if (!*(v5 + 16))
  {
    (*(v0[24] + 8))(v0[25], v0[23]);

LABEL_8:
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101218C28);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v37 = v0[4];
      v36 = v0[5];
      v38 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *v38 = 136446466;
      v0[2] = &type metadata for GenericMusicItemEntityQuery;
      sub_10010FC20(&qword_101192DE8);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000105AC(v39, v40, &v75);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_1000105AC(v37, v36, &v75);
      _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s – No results for search term %{public}s", v38, 0x16u);
      swift_arrayDestroy();
    }

    v74 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v6 = v0[15];
  v7 = v0[16];
  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[11];
  v10 = v0[12];
  (*(v0[20] + 16))(v0[21], v5 + ((*(v0[20] + 80) + 32) & ~*(v0[20] + 80)), v0[19]);

  MusicSearchResultGroup.items.getter();
  sub_10034DF7C(v11);
  (*(v9 + 8))(v8, v10);
  v12 = (*(v7 + 48))(v11, 1, v6);
  v13 = v0[11];
  if (v12 == 1)
  {
    v15 = v0[24];
    v14 = v0[25];
    v16 = v0[23];
    (*(v0[20] + 8))(v0[21], v0[19]);
    (*(v15 + 8))(v14, v16);
    v17 = &unk_101189DA0;
    v18 = v13;
LABEL_7:
    sub_1000095E8(v18, v17);
    goto LABEL_8;
  }

  v20 = v0[17];
  v19 = v0[18];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[7];
  v24 = v0[8];
  v25 = v0[6];
  (*(v22 + 32))(v19, v0[11], v21);
  (*(v22 + 16))(v20, v19, v21);
  sub_1004EA998(v20, v25);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    v27 = v0[24];
    v26 = v0[25];
    v28 = v0[23];
    v30 = v0[20];
    v29 = v0[21];
    v31 = v0[19];
    v32 = v0[6];
    (*(v0[16] + 8))(v0[18], v0[15]);
    (*(v30 + 8))(v29, v31);
    (*(v27 + 8))(v26, v28);
    v17 = &qword_101192DD8;
    v18 = v32;
    goto LABEL_7;
  }

  sub_1004F22C8(v0[6], v0[10]);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v44 = v0[9];
  v45 = v0[10];
  v46 = type metadata accessor for Logger();
  sub_1000060E4(v46, qword_101218C28);
  sub_1004F232C(v45, v44);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = v0[9];
  if (v49)
  {
    v52 = v0[4];
    v51 = v0[5];
    v53 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    *v53 = 136446722;
    v0[3] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8);
    v54 = String.init<A>(describing:)();
    v56 = sub_1000105AC(v54, v55, &v75);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2082;
    *(v53 + 14) = sub_1000105AC(v52, v51, &v75);
    *(v53 + 22) = 2082;
    v57 = sub_1004EB228();
    v59 = v58;
    sub_1004F2390(v50);
    v60 = sub_1000105AC(v57, v59, &v75);

    *(v53 + 24) = v60;
    _os_log_impl(&_mh_execute_header, v47, v48, "%{public}s – Search for term %{public}s found entity %{public}s", v53, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004F2390(v50);
  }

  v61 = v0[24];
  v72 = v0[23];
  v73 = v0[25];
  v63 = v0[20];
  v62 = v0[21];
  v65 = v0[18];
  v64 = v0[19];
  v67 = v0[15];
  v66 = v0[16];
  v68 = v0[10];
  v69 = v0[8];
  sub_10010FC20(&qword_1011920A8);
  v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_100EBC6B0;
  v74 = v71;
  sub_1004F22C8(v68, v71 + v70);
  (*(v66 + 8))(v65, v67);
  (*(v63 + 8))(v62, v64);
  (*(v61 + 8))(v73, v72);
LABEL_13:
  (*(v0[31] + 8))(v0[32], v0[30]);

  v42 = v0[1];

  return v42(v74);
}

uint64_t sub_1004F1FE8()
{
  v14 = v0;
  v1 = v0[22];
  (*(v0[24] + 56))(v1, 1, 1, v0[23]);
  sub_1000095E8(v1, &qword_101192DE0);
  if (qword_10117F6D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101218C28);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 136446466;
    v0[2] = &type metadata for GenericMusicItemEntityQuery;
    sub_10010FC20(&qword_101192DE8);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1000105AC(v6, v5, &v13);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s – No results for search term %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  (*(v0[31] + 8))(v0[32], v0[30]);

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1004F22C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItemEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F232C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItemEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F2390(uint64_t a1)
{
  v2 = type metadata accessor for GenericMusicItemEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004F23EC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004F2448()
{
  result = qword_101192E38;
  if (!qword_101192E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101192E38);
  }

  return result;
}

void *sub_1004F24B0(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_10118D250);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  sub_1000089F8(a1, &v17, &qword_1011A3DD0);
  if (v18)
  {
    sub_100059A8C(&v17, v20);
    v9 = v21;
    v10 = v22;
    v11 = sub_10000954C(v20, v21);
    v18 = v9;
    v19 = *(v10 + 8);
    v12 = sub_10001C8B8(&v17);
    (*(*(v9 - 8) + 16))(v12, v11, v9);
    sub_100663984(&v17, v8);
    sub_10000959C(&v17);
    sub_1000089F8(v8, v5, &unk_10118D250);
    UIView.appEntityIdentifier.setter();
    sub_1000095E8(v8, &unk_10118D250);
    v13 = v1;
    sub_10000959C(v20);
  }

  else
  {
    sub_1000095E8(&v17, &qword_1011A3DD0);
    v14 = type metadata accessor for EntityIdentifier();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    UIView.appEntityIdentifier.setter();
    v15 = v1;
  }

  return v1;
}

uint64_t sub_1004F26A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v192 = a1;
  v3 = sub_10010FC20(&unk_1011A38A0);
  __chkstk_darwin(v3 - 8);
  v149 = &v143 - v4;
  v148 = type metadata accessor for TVShow();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_101181B78);
  __chkstk_darwin(v6 - 8);
  v153 = &v143 - v7;
  v152 = type metadata accessor for TVSeason();
  v151 = *(v152 - 8);
  __chkstk_darwin(v152);
  v146 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011996D0);
  __chkstk_darwin(v9 - 8);
  v159 = &v143 - v10;
  v156 = type metadata accessor for TVEpisode();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v150 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_1011838C0);
  __chkstk_darwin(v12 - 8);
  v160 = &v143 - v13;
  v161 = type metadata accessor for Station();
  v162 = *(v161 - 8);
  __chkstk_darwin(v161);
  v154 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v15 - 8);
  v163 = &v143 - v16;
  v164 = type metadata accessor for Song();
  v168 = *(v164 - 8);
  __chkstk_darwin(v164);
  v158 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v18 - 8);
  v165 = &v143 - v19;
  v167 = type metadata accessor for MusicVideo();
  v166 = *(v167 - 8);
  __chkstk_darwin(v167);
  v157 = &v143 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_101181BB8);
  __chkstk_darwin(v21 - 8);
  v170 = &v143 - v22;
  v171 = type metadata accessor for RecordLabel();
  v172 = *(v171 - 8);
  __chkstk_darwin(v171);
  v169 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v24 - 8);
  v174 = &v143 - v25;
  v26 = type metadata accessor for Playlist();
  v27 = *(v26 - 8);
  v175 = v26;
  v176 = v27;
  __chkstk_darwin(v26);
  v173 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10010FC20(&unk_1011803F0);
  __chkstk_darwin(v29 - 8);
  v178 = &v143 - v30;
  v31 = type metadata accessor for MusicMovie();
  v32 = *(v31 - 8);
  v179 = v31;
  v180 = v32;
  __chkstk_darwin(v31);
  v177 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&qword_10118DE80);
  __chkstk_darwin(v34 - 8);
  v183 = &v143 - v35;
  v184 = type metadata accessor for Genre();
  v182 = *(v184 - 8);
  __chkstk_darwin(v184);
  v181 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10010FC20(&unk_10118C170);
  __chkstk_darwin(v37 - 8);
  v191 = &v143 - v38;
  v39 = type metadata accessor for Curator();
  v40 = *(v39 - 8);
  v186 = v39;
  v187 = v40;
  __chkstk_darwin(v39);
  v185 = &v143 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10010FC20(&unk_10118C4F0);
  __chkstk_darwin(v42 - 8);
  v190 = &v143 - v43;
  v44 = type metadata accessor for Composer();
  v189 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v47 - 8);
  v49 = &v143 - v48;
  v50 = type metadata accessor for Artist();
  v188 = *(v50 - 8);
  __chkstk_darwin(v50);
  v52 = &v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v53 - 8);
  v55 = &v143 - v54;
  v56 = type metadata accessor for Album();
  v57 = *(v56 - 8);
  __chkstk_darwin(v56);
  v59 = &v143 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v193 = v2;
  if (!swift_dynamicCastObjCClass())
  {
    v63 = v52;
    v64 = v188;
    v144 = v46;
    v66 = v189;
    v65 = v190;
    v67 = v44;
    v68 = v191;
    objc_opt_self();
    v69 = v193;
    if (swift_dynamicCastObjCClass())
    {
      v70 = v69;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v64 + 48))(v49, 1, v50) != 1)
      {
        v80 = *(v64 + 32);
        v80(v63, v49, v50);
        v81 = v192;
        v192[3] = v50;
        v81[4] = &protocol witness table for Artist;
        v82 = sub_10001C8B8(v81);
        return (v80)(v82, v63, v50);
      }

      v61 = &unk_101184930;
      v62 = v49;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v77 = v69;
      v78 = v65;
      v79 = v67;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      if ((*(v66 + 48))(v65, 1, v67) != 1)
      {
        v87 = *(v66 + 32);
        v88 = v144;
        v87(v144, v78, v67);
        v89 = v192;
        v192[3] = v79;
        v89[4] = sub_1004F3ED8(&unk_10118C500, &type metadata accessor for Composer);
        v90 = sub_10001C8B8(v89);
        return (v87)(v90, v88, v79);
      }

      v61 = &unk_10118C4F0;
      v62 = v65;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v83 = v69;
      v84 = v68;
      v85 = v186;
      dispatch thunk of LegacyModelObjectConvertible.init(_:)();
      v86 = v187;
      if ((*(v187 + 48))(v84, 1, v85) != 1)
      {
        v95 = *(v86 + 32);
        v96 = v185;
        v95(v185, v84, v85);
        v97 = v192;
        v192[3] = v85;
        v97[4] = &protocol witness table for Curator;
        v98 = sub_10001C8B8(v97);
        return (v95)(v98, v96, v85);
      }

      v61 = &unk_10118C170;
      v62 = v84;
      goto LABEL_25;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v91 = v69;
      v92 = v183;
      Genre.init(_:)();
      v93 = v182;
      v94 = v184;
      if ((*(v182 + 48))(v92, 1, v184) == 1)
      {
        v61 = &qword_10118DE80;
LABEL_20:
        v62 = v92;
        goto LABEL_25;
      }

      v104 = *(v93 + 32);
      v105 = v181;
      v104(v181, v92, v94);
      v106 = &protocol witness table for Genre;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v99 = v69;
        v101 = v178;
        v100 = v179;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        v102 = v180;
        if ((*(v180 + 48))(v101, 1, v100) != 1)
        {
          v111 = *(v102 + 32);
          v112 = v177;
          v111(v177, v101, v100);
          v113 = v192;
          v192[3] = v100;
          v113[4] = sub_1004F3ED8(&unk_1011A38B0, &type metadata accessor for MusicMovie);
          v114 = sub_10001C8B8(v113);
          return (v111)(v114, v112, v100);
        }

        v61 = &unk_1011803F0;
        v62 = v101;
        goto LABEL_25;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v109 = v69;
        v92 = v174;
        v94 = v175;
        dispatch thunk of LegacyModelObjectConvertible.init(_:)();
        v110 = v176;
        if ((*(v176 + 48))(v92, 1, v94) == 1)
        {
          v61 = &unk_1011814D0;
          goto LABEL_20;
        }

        v104 = *(v110 + 32);
        v105 = v173;
        v104(v173, v92, v94);
        v106 = &protocol witness table for Playlist;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v115 = v69;
          v92 = v170;
          v94 = v171;
          dispatch thunk of LegacyModelObjectConvertible.init(_:)();
          v116 = v172;
          if ((*(v172 + 48))(v92, 1, v94) == 1)
          {
            v61 = &qword_101181BB8;
            goto LABEL_20;
          }

          v104 = *(v116 + 32);
          v105 = v169;
          v104(v169, v92, v94);
          v106 = &protocol witness table for RecordLabel;
        }

        else
        {
          objc_opt_self();
          v117 = swift_dynamicCastObjCClass();
          if (v117)
          {
            v118 = [v117 hasVideo];
            v119 = v69;
            if (v118)
            {
              v92 = v165;
              v94 = v167;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v120 = v166;
              if ((*(v166 + 48))(v92, 1, v94) == 1)
              {
                v61 = &unk_1011846B0;
                goto LABEL_20;
              }

              v104 = *(v120 + 32);
              v105 = v157;
              v104(v157, v92, v94);
              v106 = &protocol witness table for MusicVideo;
            }

            else
            {
              v92 = v163;
              v94 = v164;
              dispatch thunk of LegacyModelObjectConvertible.init(_:)();
              v123 = v168;
              if ((*(v168 + 48))(v92, 1, v94) == 1)
              {
                v61 = &unk_101183960;
                goto LABEL_20;
              }

              v104 = *(v123 + 32);
              v105 = v158;
              v104(v158, v92, v94);
              v106 = &protocol witness table for Song;
            }
          }

          else
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v124 = v193;
                v125 = v159;
                v126 = v156;
                dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                if ((*(v155 + 48))(v125, 1, v126) == 1)
                {
                  v61 = &unk_1011996D0;
                  v62 = v159;
                  goto LABEL_25;
                }

                v130 = *(v155 + 32);
                v131 = v150;
                v132 = v156;
                v130(v150, v159, v156);
                v133 = v192;
                v192[3] = v132;
                v134 = &unk_1011996F0;
                v135 = &type metadata accessor for TVEpisode;
              }

              else
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v127 = v193;
                  v128 = v153;
                  v129 = v152;
                  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                  if ((*(v151 + 48))(v128, 1, v129) == 1)
                  {
                    v61 = &qword_101181B78;
                    v62 = v153;
                    goto LABEL_25;
                  }

                  v71 = *(v151 + 32);
                  v140 = v146;
                  v141 = v152;
                  v71(v146, v153, v152);
                  v142 = v192;
                  v192[3] = v141;
                  v142[4] = sub_1004F3ED8(&qword_101192E48, &type metadata accessor for TVSeason);
                  v73 = sub_10001C8B8(v142);
                  v74 = v140;
                  v75 = v141;
                  return (v71)(v73, v74, v75);
                }

                objc_opt_self();
                result = swift_dynamicCastObjCClass();
                if (!result)
                {
                  goto LABEL_26;
                }

                v137 = v193;
                v138 = v149;
                v139 = v148;
                dispatch thunk of LegacyModelObjectConvertible.init(_:)();
                if ((*(v147 + 48))(v138, 1, v139) == 1)
                {
                  v61 = &unk_1011A38A0;
                  v62 = v149;
                  goto LABEL_25;
                }

                v130 = *(v147 + 32);
                v131 = v145;
                v132 = v148;
                v130(v145, v149, v148);
                v133 = v192;
                v192[3] = v132;
                v134 = &unk_101192E40;
                v135 = &type metadata accessor for TVShow;
              }

              v133[4] = sub_1004F3ED8(v134, v135);
              v136 = sub_10001C8B8(v133);
              return (v130)(v136, v131, v132);
            }

            v121 = v69;
            v92 = v160;
            v94 = v161;
            dispatch thunk of LegacyModelObjectConvertible.init(_:)();
            v122 = v162;
            if ((*(v162 + 48))(v92, 1, v94) == 1)
            {
              v61 = &unk_1011838C0;
              goto LABEL_20;
            }

            v104 = *(v122 + 32);
            v105 = v154;
            v104(v154, v92, v94);
            v106 = &protocol witness table for Station;
          }
        }
      }
    }

    v107 = v192;
    v192[3] = v94;
    v107[4] = v106;
    v108 = sub_10001C8B8(v107);
    return (v104)(v108, v105, v94);
  }

  v60 = v193;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v57 + 48))(v55, 1, v56) != 1)
  {
    v71 = *(v57 + 32);
    v71(v59, v55, v56);
    v72 = v192;
    v192[3] = v56;
    v72[4] = &protocol witness table for Album;
    v73 = sub_10001C8B8(v72);
    v74 = v59;
    v75 = v56;
    return (v71)(v73, v74, v75);
  }

  v61 = &unk_101184730;
  v62 = v55;
LABEL_25:
  result = sub_1000095E8(v62, v61);
LABEL_26:
  v103 = v192;
  v192[4] = 0;
  *v103 = 0u;
  *(v103 + 1) = 0u;
  return result;
}

uint64_t sub_1004F3ED8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F3F88(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

size_t sub_1004F401C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100501520(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Lyrics.TextLine(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_100501D04(v11, a2, type metadata accessor for Lyrics.TextLine);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1004F4150@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10050155C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1004F4228(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100501584(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1004F42E4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

double sub_1004F43FC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ScrollPosition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  _s8MetadataO5ModelCMa(0);
  sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v9;
  sub_1004F61B8();
  FocusState.init<A>()();
  LOBYTE(v28) = 0;
  State.init(wrappedValue:)();
  v10 = v29.n128_u64[1];
  *(a1 + 40) = v29.n128_u8[0];
  *(a1 + 48) = v10;
  v11 = _s8MetadataO4ViewVMa(0);
  ScrollPosition.init<A>(idType:)();
  (*(v3 + 16))(v6, v8, v2);
  State.init(wrappedValue:)();
  (*(v3 + 8))(v8, v2);
  v12 = v11[8];
  if (qword_10117F7E8 != -1)
  {
    swift_once();
  }

  v13 = (a1 + v12);
  v28 = xmmword_101192E58;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v14 = v30;
  *v13 = v29;
  v13[1].n128_u64[0] = v14;
  v15 = (a1 + v11[9]);
  *&v28 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_101193468);
  State.init(wrappedValue:)();
  v16 = v29.n128_u64[1];
  *v15 = v29.n128_u64[0];
  v15[1] = v16;
  v17 = (a1 + v11[10]);
  sub_10010FC20(&qword_101191F70);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  static PlaylistCovers.CarouselItem.picker.getter(&v29);
  v19 = v36;
  *(v18 + 128) = v35;
  *(v18 + 144) = v19;
  *(v18 + 160) = v37;
  v20 = v32;
  *(v18 + 64) = v31;
  *(v18 + 80) = v20;
  v21 = v34;
  *(v18 + 96) = v33;
  *(v18 + 112) = v21;
  v22 = v30;
  *(v18 + 32) = v29;
  *(v18 + 48) = v22;
  v27 = v18;
  sub_10010FC20(&qword_101193478);
  State.init(wrappedValue:)();
  v23 = *(&v28 + 1);
  *v17 = v28;
  v17[1] = v23;
  v24 = v11[11];
  v27 = 0;
  sub_10010FC20(&unk_101193488);
  State.init(wrappedValue:)();
  result = *&v28;
  *(a1 + v24) = v28;
  return result;
}

uint64_t sub_1004F475C(uint64_t a1, char a2)
{
  *(v3 + 2608) = v2;
  *(v3 + 2675) = a2;
  *(v3 + 2600) = a1;
  *(v3 + 2616) = type metadata accessor for MainActor();
  *(v3 + 2624) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 2632) = v5;
  *(v3 + 2640) = v4;

  return _swift_task_switch(sub_1004F4804, v5, v4);
}

uint64_t sub_1004F4804()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1 || *(v0 + 2675) != 1 || (*(v0 + 2672) = 4, v1 = sub_100025CE0(), (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v1) & 1) == 0) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , *(v0 + 2673) != 3))
  {
LABEL_17:

    goto LABEL_18;
  }

  v2 = (v0 + 936);
  v22 = (v0 + 1448);
  v3 = (v0 + 1576);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v30 = *(v0 + 504);
  v31 = *(v0 + 520);
  v32 = *(v0 + 536);
  v26 = *(v0 + 440);
  v27 = *(v0 + 456);
  v28 = *(v0 + 472);
  v29 = *(v0 + 488);
  v24 = *(v0 + 408);
  v25 = *(v0 + 424);
  *(v0 + 368) = v30;
  *(v0 + 384) = v31;
  *(v0 + 400) = v32;
  *(v0 + 304) = v26;
  *(v0 + 320) = v27;
  *(v0 + 336) = v28;
  *(v0 + 352) = v29;
  *(v0 + 272) = v24;
  *(v0 + 288) = v25;
  if (sub_1000D8FCC((v0 + 272)) == 1)
  {
    sub_100502390(v0 + 936);
  }

  else
  {
    *(v0 + 1256) = v28;
    *(v0 + 1272) = v29;
    *(v0 + 1288) = v30;
    *(v0 + 1304) = v31;
    *(v0 + 1192) = v24;
    *(v0 + 1208) = v25;
    *(v0 + 1224) = v26;
    *(v0 + 1240) = v27;
    *(v0 + 1064) = v24;
    *(v0 + 1080) = v25;
    *(v0 + 1096) = v26;
    *(v0 + 1112) = v27;
    *(v0 + 1128) = v28;
    *(v0 + 1144) = v29;
    *(v0 + 1160) = v30;
    *(v0 + 1176) = v31;
    UIScreen.Dimensions.size.getter(*&v28);
    sub_100501164(v0 + 1192, v0 + 1320);
    v4 = *(v0 + 1144);
    *(v0 + 1000) = *(v0 + 1128);
    *(v0 + 1016) = v4;
    v5 = *(v0 + 1176);
    *(v0 + 1032) = *(v0 + 1160);
    *(v0 + 1048) = v5;
    v6 = *(v0 + 1080);
    *v2 = *(v0 + 1064);
    *(v0 + 952) = v6;
    v7 = *(v0 + 1112);
    *(v0 + 968) = *(v0 + 1096);
    *(v0 + 984) = v7;
  }

  *(v0 + 640) = v30;
  *(v0 + 656) = v31;
  *(v0 + 672) = v32;
  *(v0 + 576) = v26;
  *(v0 + 592) = v27;
  *(v0 + 608) = v28;
  *(v0 + 624) = v29;
  *(v0 + 544) = v24;
  *(v0 + 560) = v25;
  sub_1000095E8(v0 + 544, &qword_1011842B0);
  sub_10001DBDC((v0 + 1704));
  v8 = *(v0 + 1784);
  *(v0 + 1640) = *(v0 + 1768);
  *(v0 + 1656) = v8;
  v9 = *(v0 + 1816);
  *(v0 + 1672) = *(v0 + 1800);
  *(v0 + 1688) = v9;
  v10 = *(v0 + 1720);
  *v3 = *(v0 + 1704);
  *(v0 + 1592) = v10;
  v11 = *(v0 + 1736);
  v12 = *(v0 + 1752);
  *(v0 + 1608) = v11;
  *(v0 + 1624) = v12;
  UIScreen.Dimensions.size.getter(*&v11);
  v13 = *(v0 + 984);
  v37 = *(v0 + 1000);
  v38 = *(v0 + 1016);
  v39 = *(v0 + 1032);
  v40 = *(v0 + 1048);
  v33 = *v2;
  v34 = *(v0 + 952);
  v14 = *v2;
  v35 = *(v0 + 968);
  v36 = v13;
  v43 = *(v0 + 1608);
  v44 = *(v0 + 1624);
  v41 = *v3;
  v42 = *(v0 + 1592);
  v47 = *(v0 + 1672);
  v48 = *(v0 + 1688);
  v45 = *(v0 + 1640);
  v46 = *(v0 + 1656);
  *(v0 + 1480) = v35;
  *(v0 + 1496) = v13;
  *v22 = v14;
  *(v0 + 1464) = v34;
  v15 = *(v0 + 1048);
  *(v0 + 1544) = v39;
  *(v0 + 1560) = v15;
  *(v0 + 1512) = v37;
  *(v0 + 1528) = v38;
  if (sub_1000D8FCC(v22) == 1)
  {
    *(v0 + 1896) = v45;
    *(v0 + 1912) = v46;
    *(v0 + 1928) = v47;
    *(v0 + 1944) = v48;
    *(v0 + 1832) = v41;
    *(v0 + 1848) = v42;
    *(v0 + 1864) = v43;
    *(v0 + 1880) = v44;
    if (sub_1000D8FCC((v0 + 1832)) == 1)
    {
      *(v0 + 2024) = v37;
      *(v0 + 2040) = v38;
      *(v0 + 2056) = v39;
      *(v0 + 2072) = v40;
      *(v0 + 1960) = v33;
      *(v0 + 1976) = v34;
      *(v0 + 1992) = v35;
      *(v0 + 2008) = v36;
      sub_1000095E8(v0 + 1960, &qword_1011935B0);
LABEL_14:
      v23 = *(v0 + 2600);
      v17 = static MainActor.shared.getter();
      *(v0 + 2648) = v17;
      v18 = swift_task_alloc();
      *(v0 + 2656) = v18;
      v18[1] = vextq_s8(v23, v23, 8uLL);
      v19 = swift_task_alloc();
      *(v0 + 2664) = v19;
      *v19 = v0;
      v19[1] = sub_1004F4E24;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2674, v17, &protocol witness table for MainActor, 0xD00000000000004ALL, 0x8000000100E4E6F0, sub_100502388, v18, &type metadata for Bool);
    }

    goto LABEL_12;
  }

  *(v0 + 2152) = v45;
  *(v0 + 2168) = v46;
  *(v0 + 2184) = v47;
  *(v0 + 2200) = v48;
  *(v0 + 2088) = v41;
  *(v0 + 2104) = v42;
  *(v0 + 2120) = v43;
  *(v0 + 2136) = v44;
  if (sub_1000D8FCC((v0 + 2088)) != 1)
  {
    *(v0 + 2408) = v45;
    *(v0 + 2424) = v46;
    *(v0 + 2440) = v47;
    *(v0 + 2456) = v48;
    *(v0 + 2344) = v41;
    *(v0 + 2360) = v42;
    *(v0 + 2376) = v43;
    *(v0 + 2392) = v44;
    *(v0 + 680) = v41;
    *(v0 + 696) = v42;
    *(v0 + 712) = v43;
    *(v0 + 728) = v44;
    *(v0 + 744) = v45;
    *(v0 + 760) = v46;
    *(v0 + 776) = v47;
    *(v0 + 792) = v48;
    *(v0 + 872) = v37;
    *(v0 + 888) = v38;
    *(v0 + 904) = v39;
    *(v0 + 920) = v40;
    *(v0 + 808) = v33;
    *(v0 + 824) = v34;
    *(v0 + 840) = v35;
    *(v0 + 856) = v36;
    sub_1000089F8(v0 + 936, v0 + 2472, &qword_1011935B0);
    v16 = static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)((v0 + 808), (v0 + 680));
    sub_1000095E8(v0 + 2344, &qword_1011935B0);
    sub_1000095E8(v0 + 936, &qword_1011935B0);
    *(v0 + 2280) = v37;
    *(v0 + 2296) = v38;
    *(v0 + 2312) = v39;
    *(v0 + 2328) = v40;
    *(v0 + 2216) = v33;
    *(v0 + 2232) = v34;
    *(v0 + 2248) = v35;
    *(v0 + 2264) = v36;
    sub_1000095E8(v0 + 2216, &qword_1011935B0);
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_12:

  *(v0 + 208) = v45;
  *(v0 + 224) = v46;
  *(v0 + 240) = v47;
  *(v0 + 256) = v48;
  *(v0 + 144) = v41;
  *(v0 + 160) = v42;
  *(v0 + 176) = v43;
  *(v0 + 192) = v44;
  *(v0 + 80) = v37;
  *(v0 + 96) = v38;
  *(v0 + 112) = v39;
  *(v0 + 128) = v40;
  *(v0 + 16) = v33;
  *(v0 + 32) = v34;
  *(v0 + 48) = v35;
  *(v0 + 64) = v36;
  sub_1000095E8(v0 + 16, &unk_10119EFE0);
LABEL_18:
  v20 = *(v0 + 8);

  return v20(1);
}

uint64_t sub_1004F4E24()
{
  v1 = *v0;

  v2 = *(v1 + 2640);
  v3 = *(v1 + 2632);

  return _swift_task_switch(sub_1004F4F84, v3, v2);
}

uint64_t sub_1004F4F84()
{

  v1 = *(v0 + 2674);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F4FE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004F50C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004F5148()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1004F51F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1004F52C8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v9;
  *(a1 + 96) = v9;
  *(a1 + 112) = v10;
  *(a1 + 128) = v11;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1004F538C()
{
  v1 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__image;
  v2 = sub_10010FC20(&unk_101184260);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__imageSource;
  v4 = sub_10010FC20(&qword_101193760);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__artworkInfo;
  v6 = sub_10010FC20(&qword_101187EE8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__title;
  v8 = sub_10010FC20(&qword_101184258);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__description, v8);
  v10 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__isVisible;
  v11 = sub_10010FC20(&unk_101189E60);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__ownerName;
  v14 = sub_10010FC20(&qword_1011928F0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__folder;
  v16 = sub_10010FC20(&qword_101193758);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__flow;
  v18 = sub_10010FC20(&qword_101193750);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__visibleFields;
  v20 = sub_10010FC20(&qword_101193748);
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v19, v20);
  v21(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__editableFields, v20);
  v22 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__focusedField;
  v23 = sub_10010FC20(&qword_101193740);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__currentUserCarouselItem;
  v25 = sub_10010FC20(&qword_101193738);
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v24, v25);
  v27 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__coversSource;
  v28 = sub_10010FC20(&qword_101193730);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v12(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__creationInProgress, v11);
  v29 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__windowSizeClass;
  v30 = sub_10010FC20(&qword_101193728);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  v26(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__selectedCarouselItem, v25);
  return v0;
}

uint64_t sub_1004F5820()
{
  sub_1004F538C();

  return swift_deallocClassInstance();
}

void sub_1004F58A0()
{
  sub_100052C2C(319, &qword_101192F38, &qword_101184460, &unk_100EDACF0, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_100052C2C(319, &qword_101192F40, &qword_101192F48, &unk_100ED0950, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_100052C2C(319, &qword_101187AE0, &unk_10119F000, &unk_100EC31D0, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_1000053DC(319, &qword_101187AF8, &type metadata for String, &type metadata accessor for Published);
        if (v3 <= 0x3F)
        {
          sub_1000053DC(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
          if (v4 <= 0x3F)
          {
            sub_100052C2C(319, &qword_101187B08, &qword_1011815E0, &unk_100EBD050, &type metadata accessor for Published);
            if (v5 <= 0x3F)
            {
              sub_100052C2C(319, &qword_101192F50, &unk_10118F670, &unk_100EC89B0, &type metadata accessor for Published);
              if (v6 <= 0x3F)
              {
                sub_1000053DC(319, &qword_101192F58, &_s8MetadataO4FlowON, &type metadata accessor for Published);
                if (v7 <= 0x3F)
                {
                  sub_100052C2C(319, &qword_101192F60, &qword_101192F68, &unk_100ED0958, &type metadata accessor for Published);
                  if (v8 <= 0x3F)
                  {
                    sub_100052C2C(319, &qword_101192F70, &qword_101192F78, &unk_100ED0960, &type metadata accessor for Published);
                    if (v9 <= 0x3F)
                    {
                      sub_100052C2C(319, &qword_101192F80, &qword_1011842B0, &unk_100EBFE30, &type metadata accessor for Published);
                      if (v10 <= 0x3F)
                      {
                        sub_100052C2C(319, &qword_101192F88, &qword_101184230, &unk_100EDE0D0, &type metadata accessor for Published);
                        if (v11 <= 0x3F)
                        {
                          sub_100052C2C(319, &unk_101192F90, &unk_101184290, &unk_100EC0E60, &type metadata accessor for Published);
                          if (v12 <= 0x3F)
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

void sub_1004F5E90()
{
  sub_1004F6084();
  if (v0 <= 0x3F)
  {
    sub_1004F6118();
    if (v1 <= 0x3F)
    {
      sub_1000053DC(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1004F620C(319, &qword_101193458, &type metadata accessor for ScrollPosition);
        if (v3 <= 0x3F)
        {
          sub_1004F620C(319, &unk_101185EE0, type metadata accessor for CGSize);
          if (v4 <= 0x3F)
          {
            sub_100052C2C(319, &qword_101193460, &qword_101193468, &unk_100ED0988, &type metadata accessor for State);
            if (v5 <= 0x3F)
            {
              sub_100052C2C(319, &qword_101193470, &qword_101193478, &unk_100ED0990, &type metadata accessor for State);
              if (v6 <= 0x3F)
              {
                sub_100052C2C(319, &qword_101193480, &unk_101193488, &unk_100ED0998, &type metadata accessor for State);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004F6084()
{
  if (!qword_101193430)
  {
    _s8MetadataO5ModelCMa(255);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_101193430);
    }
  }
}

void sub_1004F6118()
{
  if (!qword_101193440)
  {
    sub_1001109D0(&qword_101192F78);
    sub_100500CBC(&qword_101193448, sub_1004F61B8);
    v0 = type metadata accessor for FocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_101193440);
    }
  }
}

unint64_t sub_1004F61B8()
{
  result = qword_101193450;
  if (!qword_101193450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193450);
  }

  return result;
}

void sub_1004F620C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004F627C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101193728);
  v124 = *(v2 - 8);
  v125 = v2;
  __chkstk_darwin(v2);
  v123 = &v87 - v3;
  v122 = sub_10010FC20(&unk_101184290);
  v4 = __chkstk_darwin(v122);
  v121 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &v87 - v6;
  v7 = sub_10010FC20(&qword_101193730);
  v118 = *(v7 - 8);
  v119 = v7;
  __chkstk_darwin(v7);
  v117 = &v87 - v8;
  v116 = sub_10010FC20(&qword_101184230);
  v9 = __chkstk_darwin(v116);
  v115 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v87 - v11;
  v128 = sub_10010FC20(&qword_101193738);
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v113 = &v87 - v12;
  v13 = sub_10010FC20(&qword_101193740);
  v111 = *(v13 - 8);
  v112 = v13;
  __chkstk_darwin(v13);
  v110 = &v87 - v14;
  v15 = sub_10010FC20(&qword_101193748);
  v108 = *(v15 - 8);
  v109 = v15;
  __chkstk_darwin(v15);
  v107 = &v87 - v16;
  v17 = sub_10010FC20(&qword_101193750);
  v105 = *(v17 - 8);
  v106 = v17;
  __chkstk_darwin(v17);
  v104 = &v87 - v18;
  v19 = sub_10010FC20(&qword_101193758);
  v102 = *(v19 - 8);
  v103 = v19;
  __chkstk_darwin(v19);
  v101 = &v87 - v20;
  v100 = sub_10010FC20(&unk_10118F670);
  v21 = __chkstk_darwin(v100);
  v99 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v87 - v23;
  v24 = sub_10010FC20(&qword_1011928F0);
  v96 = *(v24 - 8);
  v97 = v24;
  __chkstk_darwin(v24);
  v95 = &v87 - v25;
  v127 = sub_10010FC20(&unk_101189E60);
  v129 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v87 - v26;
  v27 = sub_10010FC20(&qword_101184258);
  v93 = *(v27 - 8);
  v94 = v27;
  __chkstk_darwin(v27);
  v92 = &v87 - v28;
  v29 = sub_10010FC20(&qword_101187EE8);
  v90 = *(v29 - 8);
  v91 = v29;
  __chkstk_darwin(v29);
  v89 = &v87 - v30;
  v88 = sub_10010FC20(&unk_10119F000);
  v31 = __chkstk_darwin(v88);
  v87 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v87 - v33;
  v35 = sub_10010FC20(&qword_101193760);
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v87 - v37;
  v39 = sub_10010FC20(&unk_101184260);
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v87 - v41;
  v43 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__image;
  *&v140 = 0;
  sub_10010FC20(&qword_101184460);
  Published.init(initialValue:)();
  (*(v40 + 32))(v1 + v43, v42, v39);
  v44 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__imageSource;
  LOBYTE(v140) = 4;
  sub_10010FC20(&qword_101192F48);
  Published.init(initialValue:)();
  (*(v36 + 32))(v1 + v44, v38, v35);
  v45 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__artworkInfo;
  v46 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v46 - 8) + 56))(v34, 1, 1, v46);
  sub_1000089F8(v34, v87, &unk_10119F000);
  v47 = v89;
  Published.init(initialValue:)();
  sub_1000095E8(v34, &unk_10119F000);
  v48 = v1;
  (*(v90 + 32))(v1 + v45, v47, v91);
  v49 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__title;
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  v50 = v92;
  Published.init(initialValue:)();
  v51 = v94;
  v52 = *(v93 + 32);
  v52(v1 + v49, v50, v94);
  v53 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__description;
  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  Published.init(initialValue:)();
  v52(v1 + v53, v50, v51);
  v54 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__isVisible;
  LOBYTE(v140) = 0;
  v55 = v126;
  Published.init(initialValue:)();
  v56 = *(v129 + 32);
  v129 += 32;
  v94 = v56;
  v56(v1 + v54, v55, v127);
  v57 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__ownerName;
  v140 = 0uLL;
  sub_10010FC20(&qword_1011815E0);
  v58 = v95;
  Published.init(initialValue:)();
  (*(v96 + 32))(v1 + v57, v58, v97);
  v59 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__folder;
  v60 = type metadata accessor for Playlist.Folder();
  v61 = v98;
  (*(*(v60 - 8) + 56))(v98, 1, 1, v60);
  sub_1000089F8(v61, v99, &unk_10118F670);
  v62 = v101;
  Published.init(initialValue:)();
  sub_1000095E8(v61, &unk_10118F670);
  (*(v102 + 32))(v48 + v59, v62, v103);
  v63 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__flow;
  LOBYTE(v140) = 0;
  v64 = v104;
  Published.init(initialValue:)();
  (*(v105 + 32))(v48 + v63, v64, v106);
  v65 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__visibleFields;
  *&v140 = sub_10066FE08(&off_101099260);
  sub_10010FC20(&qword_101192F68);
  v66 = v107;
  Published.init(initialValue:)();
  v67 = v109;
  v68 = *(v108 + 32);
  v68(v48 + v65, v66, v109);
  v69 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__editableFields;
  *&v140 = sub_10066FE08(&off_101099288);
  Published.init(initialValue:)();
  v68(v48 + v69, v66, v67);
  v70 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__focusedField;
  LOBYTE(v140) = 4;
  sub_10010FC20(&qword_101192F78);
  v71 = v110;
  Published.init(initialValue:)();
  v111[4](v48 + v70, v71, v112);
  v72 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__currentUserCarouselItem;
  sub_100501134(&v140);
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v136 = v145;
  v131 = v140;
  v132 = v141;
  v112 = sub_10010FC20(&qword_1011842B0);
  v73 = v113;
  Published.init(initialValue:)();
  v74 = *(v130 + 32);
  v130 += 32;
  v111 = v74;
  (v74)(v48 + v72, v73, v128);
  v75 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__coversSource;
  v76 = type metadata accessor for PlaylistCovers.Source();
  v77 = v114;
  (*(*(v76 - 8) + 56))(v114, 1, 1, v76);
  sub_1000089F8(v77, v115, &qword_101184230);
  v78 = v117;
  Published.init(initialValue:)();
  sub_1000095E8(v77, &qword_101184230);
  (*(v118 + 32))(v48 + v75, v78, v119);
  v79 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__creationInProgress;
  LOBYTE(v131) = 0;
  v80 = v126;
  Published.init(initialValue:)();
  v94(v48 + v79, v80, v127);
  v81 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__windowSizeClass;
  v82 = type metadata accessor for UserInterfaceSizeClass();
  v83 = v120;
  (*(*(v82 - 8) + 56))(v120, 1, 1, v82);
  sub_1000089F8(v83, v121, &unk_101184290);
  v84 = v123;
  Published.init(initialValue:)();
  sub_1000095E8(v83, &unk_101184290);
  (*(v124 + 32))(v48 + v81, v84, v125);
  v85 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__selectedCarouselItem;
  v137 = v146;
  v138 = v147;
  v139 = v148;
  v133 = v142;
  v134 = v143;
  v135 = v144;
  v136 = v145;
  v131 = v140;
  v132 = v141;
  Published.init(initialValue:)();
  (v111)(v48 + v85, v73, v128);
  return v48;
}

uint64_t sub_1004F7234@<X0>(uint64_t *a1@<X8>)
{
  _s8MetadataO5ModelCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1004F7274@<X0>(uint64_t a1@<X8>)
{
  v121 = a1;
  v131 = type metadata accessor for ScrollPosition();
  v118 = *(v131 - 8);
  __chkstk_darwin(v131);
  v115 = &v100 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10010FC20(&qword_101184230);
  __chkstk_darwin(v104);
  v103 = &v100 - v3;
  v4 = _s8MetadataO4ViewVMa(0);
  v5 = *(v4 - 8);
  v128 = v4 - 8;
  v137 = v5;
  v133 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v139 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011934D8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v100 - v9;
  v132 = sub_10010FC20(&qword_1011934E0);
  __chkstk_darwin(v132);
  v12 = &v100 - v11;
  v124 = sub_10010FC20(&qword_1011934E8);
  v105 = *(v124 - 1);
  __chkstk_darwin(v124);
  v122 = &v100 - v13;
  v14 = sub_10010FC20(&qword_1011934F0);
  v15 = *(v14 - 8);
  v106 = v14;
  v107 = v15;
  __chkstk_darwin(v14);
  v125 = &v100 - v16;
  v17 = sub_10010FC20(&qword_1011934F8);
  v18 = *(v17 - 8);
  v108 = v17;
  v109 = v18;
  __chkstk_darwin(v17);
  v126 = &v100 - v19;
  v20 = sub_10010FC20(&qword_101193500);
  v21 = *(v20 - 8);
  v110 = v20;
  v111 = v21;
  __chkstk_darwin(v20);
  v127 = &v100 - v22;
  v23 = sub_10010FC20(&qword_101193508);
  v24 = *(v23 - 8);
  v112 = v23;
  v113 = v24;
  __chkstk_darwin(v23);
  v130 = &v100 - v25;
  v26 = sub_10010FC20(&qword_101193510);
  v27 = *(v26 - 8);
  v116 = v26;
  v117 = v27;
  __chkstk_darwin(v26);
  v129 = &v100 - v28;
  v29 = sub_10010FC20(&qword_101193518);
  v30 = *(v29 - 8);
  v119 = v29;
  v120 = v30;
  __chkstk_darwin(v29);
  v114 = &v100 - v31;
  static Axis.Set.vertical.getter();
  v140 = v1;
  sub_10010FC20(&qword_101193520);
  sub_1004FF944();
  ScrollView.init(_:showsIndicators:content:)();
  v123 = *(v1 + 8);
  v134 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_100020674(&qword_101193540, &qword_1011934D8);
  v102 = v12;
  View.scrollDisabled(_:)();
  (*(v8 + 8))(v10, v7);
  v138 = _s8MetadataO4ViewVMa;
  v32 = v139;
  sub_100501D6C(v1, v139, _s8MetadataO4ViewVMa);
  v33 = (*(v137 + 80) + 16) & ~*(v137 + 80);
  v136 = *(v137 + 80);
  v34 = swift_allocObject();
  v135 = _s8MetadataO4ViewVMa;
  sub_100501D04(v32, v34 + v33, _s8MetadataO4ViewVMa);
  v35 = &v12[v132[9]];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v35 = &unk_100ED0B38;
  *(v35 + 1) = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v36 = v103;
  static Published.subscript.getter();

  v37 = v139;
  sub_100501D6C(v134, v139, v138);
  v137 = v33;
  v38 = swift_allocObject() + v33;
  v39 = v37;
  sub_100501D04(v37, v38, _s8MetadataO4ViewVMa);
  v101 = sub_1005007A0();
  v40 = sub_100500914();
  v41 = v104;
  v42 = v102;
  View.onChange<A>(of:initial:_:)();

  sub_1000095E8(v36, &qword_101184230);
  sub_1000095E8(v42, &qword_1011934E0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v142 = v151;
  v43 = v138;
  sub_100501D6C(v134, v39, v138);
  v44 = v137;
  v45 = swift_allocObject();
  sub_100501D04(v39, v45 + v44, v135);
  *&v151 = v132;
  *(&v151 + 1) = v41;
  *&v152 = v101;
  *(&v152 + 1) = v40;
  v132 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v124;
  v48 = v122;
  View.onChange<A>(of:initial:_:)();

  (*(v105 + 8))(v48, v47);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v148 = v157;
  v149 = v158;
  v150 = v159;
  v144 = v153;
  v145 = v154;
  v146 = v155;
  v147 = v156;
  v142 = v151;
  v143 = v152;
  v49 = v134;
  v50 = v139;
  sub_100501D6C(v134, v139, v43);
  v51 = v137;
  v52 = swift_allocObject() + v51;
  v53 = v50;
  v54 = v135;
  sub_100501D04(v53, v52, v135);
  v122 = sub_10010FC20(&qword_1011842B0);
  *&v151 = v124;
  *(&v151 + 1) = &type metadata for String;
  *&v152 = OpaqueTypeConformance2;
  *(&v152 + 1) = &protocol witness table for String;
  v105 = swift_getOpaqueTypeConformance2();
  v124 = &protocol conformance descriptor for <A> A?;
  v55 = sub_100500AC8(&qword_101193568, &qword_1011842B0);
  v56 = v106;
  v57 = v125;
  View.onChange<A>(of:initial:_:)();

  v157 = v148;
  v158 = v149;
  v159 = v150;
  v153 = v144;
  v154 = v145;
  v155 = v146;
  v156 = v147;
  v151 = v142;
  v152 = v143;
  sub_1000095E8(&v151, &qword_1011842B0);
  (*(v107 + 8))(v57, v56);
  v58 = (v49 + *(v128 + 48));
  v60 = *v58;
  v59 = v58[1];
  *&v142 = v60;
  *(&v142 + 1) = v59;
  sub_10010FC20(&qword_101193578);
  State.wrappedValue.getter();
  v61 = v139;
  sub_100501D6C(v49, v139, v138);
  v62 = v137;
  v63 = swift_allocObject();
  sub_100501D04(v61, v63 + v62, v54);
  v125 = sub_10010FC20(&qword_101193478);
  *&v142 = v56;
  *(&v142 + 1) = v122;
  *&v143 = v105;
  *(&v143 + 1) = v55;
  v122 = swift_getOpaqueTypeConformance2();
  v64 = sub_100500AC8(&qword_101193580, &qword_101193478);
  v65 = v126;
  v66 = v108;
  View.onChange<A>(of:initial:_:)();

  v67 = v66;
  (*(v109 + 8))(v65, v66);
  sub_10010FC20(&qword_1011933C0);
  v68 = v134;
  v69 = v115;
  State.wrappedValue.getter();
  v71 = v138;
  v70 = v139;
  sub_100501D6C(v68, v139, v138);
  v72 = v137;
  v73 = swift_allocObject() + v72;
  v74 = v135;
  sub_100501D04(v70, v73, v135);
  *&v142 = v67;
  *(&v142 + 1) = v125;
  *&v143 = v122;
  *(&v143 + 1) = v64;
  v126 = swift_getOpaqueTypeConformance2();
  v75 = sub_1005008CC(&qword_101193588, &type metadata accessor for ScrollPosition);
  v76 = v69;
  v77 = v110;
  v78 = v131;
  v79 = v127;
  View.onChange<A>(of:initial:_:)();

  (*(v118 + 8))(v76, v78);
  (*(v111 + 8))(v79, v77);
  v80 = v134;
  v81 = *(v134 + 24);
  v82 = *(v134 + 32);
  LOBYTE(v142) = *(v134 + 16);
  *(&v142 + 1) = v81;
  LOBYTE(v143) = v82;
  sub_10010FC20(&qword_101193590);
  FocusState.wrappedValue.getter();
  v83 = v139;
  sub_100501D6C(v80, v139, v71);
  v84 = v137;
  v85 = swift_allocObject();
  sub_100501D04(v83, v85 + v84, v74);
  v128 = sub_10010FC20(&qword_101192F78);
  *&v142 = v77;
  *(&v142 + 1) = v131;
  *&v143 = v126;
  *(&v143 + 1) = v75;
  v131 = swift_getOpaqueTypeConformance2();
  v127 = sub_100500CBC(&qword_101193598, sub_100500D34);
  v86 = v112;
  v87 = v130;
  View.onChange<A>(of:initial:_:)();

  (*(v113 + 8))(v87, v86);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v141 = v142;
  v88 = v139;
  sub_100501D6C(v80, v139, v138);
  v89 = v137;
  v90 = swift_allocObject();
  sub_100501D04(v88, v90 + v89, v135);
  v91 = v127;
  *&v142 = v86;
  *(&v142 + 1) = v128;
  *&v143 = v131;
  *(&v143 + 1) = v127;
  v92 = swift_getOpaqueTypeConformance2();
  v93 = v114;
  v94 = v116;
  v95 = v129;
  View.onChange<A>(of:initial:_:)();

  (*(v117 + 8))(v95, v94);
  v96 = *(v80 + 48);
  LOBYTE(v142) = *(v80 + 40);
  *(&v142 + 1) = v96;
  sub_10010FC20(&unk_101197960);
  State.wrappedValue.getter();
  sub_100501D6C(v80, v88, v138);
  v97 = swift_allocObject();
  sub_100501D04(v88, v97 + v89, v135);
  *&v142 = v94;
  *(&v142 + 1) = v128;
  *&v143 = v92;
  *(&v143 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v98 = v119;
  View.onChange<A>(of:initial:_:)();

  return (*(v120 + 8))(v93, v98);
}