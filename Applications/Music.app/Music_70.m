uint64_t sub_1007CCC78()
{
  v0 = [*(sub_1007BD9B0() + 32) searchBar];
  [v0 resignFirstResponder];

  RequestResponse.Controller.isPaused.setter(1);
  return RequestResponse.Controller.isPaused.setter(1);
}

unint64_t sub_1007CCD0C(void *a1, void *a2)
{
  v63 = a2;
  v4 = sub_10010FC20(&qword_1011A3890);
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = v50 - v5;
  v6 = sub_10010FC20(&qword_1011A3898);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = v50 - v7;
  v8 = sub_10010FC20(&qword_1011A3870);
  __chkstk_darwin(v8 - 8);
  v10 = v50 - v9;
  v11 = sub_10010FC20(&qword_1011A3878);
  v60 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v50 - v12;
  v62 = type metadata accessor for TVShow();
  v59 = *(v62 - 8);
  v14 = *(v59 + 64);
  __chkstk_darwin(v62);
  v53 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v51 = v50 - v16;
  __chkstk_darwin(v17);
  v61 = v50 - v18;
  v19 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v19 - 8);
  v21 = v50 - v20;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  *&v24 = __chkstk_darwin(v22).n128_u64[0];
  v26 = v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v27 = swift_dynamicCast();
  v28 = *(v23 + 56);
  if ((v27 & 1) == 0)
  {
    v28(v21, 1, 1, v22);
    sub_1000095E8(v21, &unk_10118BCE0);
    return [v63 setPreferredCommitStyle:0];
  }

  v28(v21, 0, 1, v22);
  (*(v23 + 32))(v26, v21, v22);
  if (*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) == 1)
  {
LABEL_11:
    (*(v23 + 8))(v26, v22);
    return [v63 setPreferredCommitStyle:0];
  }

  v50[1] = v2;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v29 = sub_10010FC20(&qword_1011A3888);
  if ((*(*(v29 - 8) + 48))(v10, 1, v29) == 1)
  {
    sub_1000095E8(v10, &qword_1011A3870);
    goto LABEL_11;
  }

  v30 = v60;
  (*(v60 + 16))(v13, v10, v11);
  sub_1000095E8(v10, &qword_1011A3888);
  v31 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v31)
  {
    (*(v30 + 8))(v13, v11);
    goto LABEL_11;
  }

  v32 = MusicLibrarySectionedResponse.sections.getter();
  (*(v30 + 8))(v13, v11);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v32 + 16))
  {
    v35 = v54;
    v34 = v55;
    v36 = v52;
    (*(v54 + 16))(v52, v32 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * result, v55);

    v37 = v56;
    MusicLibrarySection.items.getter();
    (*(v35 + 8))(v36, v34);
    IndexPath.item.getter();
    v38 = v51;
    v39 = v58;
    MusicItemCollection.subscript.getter();
    (*(v57 + 8))(v37, v39);
    v40 = v59;
    v60 = *(v59 + 32);
    v41 = v61;
    v42 = v38;
    v43 = v62;
    (v60)(v61, v42, v62);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = v53;
    (*(v40 + 16))(v53, v41, v43);
    v46 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v44;
    v48 = v62;
    (v60)(v47 + v46, v45, v62);
    aBlock[4] = sub_1007CD7A0;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010C0030;
    v49 = _Block_copy(aBlock);

    [v63 addAnimations:v49];
    _Block_release(v49);
    (*(v40 + 8))(v61, v48);
    return (*(v23 + 8))(v26, v22);
  }

  __break(1u);
  return result;
}

void sub_1007CD524()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&qword_1011A37C8);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  v5 = sub_10010FC20(&unk_10118A650);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  v7 = sub_10010FC20(&qword_1011A37D8);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  v9 = sub_10010FC20(&unk_1011A37E8);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView) = 0;
  v10 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController;
  v11 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v10) = sub_10003AAD8(0xD000000000000024, 0x8000000100E578C0);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController) = 0;
  v12 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  v13 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007CD7A0()
{
  v1 = *(type metadata accessor for TVShow() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1007C8D4C(v2, v3);
}

unint64_t sub_1007CD804(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1007C7C14(a1, v7, v1 + 24, v1 + v4, v8);
}

uint64_t sub_1007CD8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007CD954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007CD9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007CDA40(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicMovie() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1007C1C70(a1, v4, v5, v6);
}

uint64_t sub_1007CDB28(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1007CDB70()
{
  sub_10003920C(319, &qword_1011A39E0, &unk_10118D0D0);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &unk_1011A39E8, &qword_1011A3878);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

id sub_1007CDC40()
{
  v1 = v0[5];
  if (v1)
  {

    v1(v2);
    sub_100020438(v1);
    v3 = v0[5];
  }

  else
  {
    v3 = 0;
  }

  v0[5] = 0;
  v0[6] = 0;
  sub_100020438(v3);
  v4 = v0[2];

  return [v4 removeFromSuperview];
}

uint64_t sub_1007CDCC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74754F65646166;
  }

  else
  {
    v3 = 0x6E4965646166;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74754F65646166;
  }

  else
  {
    v5 = 0x6E4965646166;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007CDD6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007CDDEC()
{
  String.hash(into:)();
}

Swift::Int sub_1007CDE58()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1007CDED4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109C4B0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1007CDF34(uint64_t *a1@<X8>)
{
  v2 = 0x6E4965646166;
  if (*v1)
  {
    v2 = 0x74754F65646166;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1007CDF70(char a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000060E4(v25, qword_101218A98);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "| ❌ Device does not support Metal", v28, 2u);
    }

    goto LABEL_19;
  }

  v5 = v4;
  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218A98);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x74754F65646166;
    }

    else
    {
      v11 = 0x6E4965646166;
    }

    if (a1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1000105AC(v11, v12, &v30);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "| Creating an ArtworkSmartTransition Mask with style=%s", v9, 0xCu);
    sub_10000959C(v10);
  }

  v14 = a1 & 1;
  *(v2 + 32) = a1 & 1;
  v15 = [objc_allocWithZone(MTKView) initWithFrame:v5 device:{0.0, 0.0, 0.0, 0.0}];
  [v15 setAutoresizingMask:18];
  [v15 setClearColor:{1.0, 0.0, 0.0, 1.0}];
  v16 = [v15 layer];
  [v16 setOpaque:0];

  [v15 setPreferredFramesPerSecond:30];
  *(v2 + 16) = v15;
  objc_allocWithZone(_s8RendererCMa());
  v17 = v15;
  v18 = swift_unknownObjectRetain();
  sub_10017240C(v18, v14);
  if (!v19)
  {
    swift_unknownObjectRelease();

    v26 = *(v2 + 16);
LABEL_19:

    sub_100020438(*(v2 + 40));
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v19;
  [v17 setDelegate:v19];

  swift_unknownObjectRelease();
  *(v2 + 24) = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = &v20[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler];
  v23 = *&v20[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler];
  *v22 = sub_1007CE50C;
  v22[1] = v21;
  v24 = v20;

  sub_100020438(v23);

  return v2;
}

uint64_t sub_1007CE38C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007CDC40();
  }

  return result;
}

id sub_1007CE3E4()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1058977874;
  LODWORD(v2) = 1061997773;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1012195D0 = result;
  return result;
}

uint64_t sub_1007CE438()
{
  sub_100020438(*(v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_1007CE4B8()
{
  result = qword_1011A3AE0;
  if (!qword_1011A3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3AE0);
  }

  return result;
}

uint64_t sub_1007CE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 animatedArtworkItemIdentifierFromSourceIdentifier:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_10010FC20(&unk_1011972C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v17;
  *(inited + 48) = v13;
  v38 = v13;
  *(inited + 56) = v15;

  v18 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &unk_1011927D0);
  if (!a3)
  {
    goto LABEL_5;
  }

  v19 = sub_1007CE8D8();
  if (!v20)
  {

LABEL_5:
    v24 = 0;
    v26 = 0;
    goto LABEL_6;
  }

  v21 = v20;
  v37 = v19;
  VideoArtwork.url.getter();
  v22 = URL.absoluteString.getter();
  v23 = v7;
  v24 = v22;
  v35 = v5;
  v26 = v25;
  (*(v23 + 8))(v9, v6);
  v36 = sub_1007D3168();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a3;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a3;
  v30[4] = v35;

  v31 = v36;
  v32 = MPMediaItemAnimatedArtwork.init(artworkID:previewImageRequestHandler:videoAssetFileURLRequestHandler:)();
  v42 = v31;
  *&v41 = v32;
  sub_100016270(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v18;
  sub_1006C5E68(v40, v37, v21, isUniquelyReferenced_nonNull_native);

  v18 = v39;
LABEL_6:
  sub_1007D1D30(v38, v15, v24, v26, v18);
}

uint64_t sub_1007CE8D8()
{
  v1 = type metadata accessor for EditorialVideoArtworkFlavor();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  (*(v2 + 16))(&v12 - v6, v0 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v1);
  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  sub_1007D35B8(&qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v5, v1);
  if (v8)
  {
    v9(v7, v1);
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9(v5, v1);
  v9(v7, v1);
  if (v10)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 0;
}

uint64_t sub_1007CEAD8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10010FC20(&unk_101181520);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return _swift_task_switch(sub_1007CEBAC, v4, v3);
}

uint64_t sub_1007CEBAC()
{
  v16 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = v0[11];
    v3 = v0[10];
    v4 = *(Strong + 24);

    v4(v5);

    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v3;
    v9 = sub_1001F6054(0, 0, v2, &unk_100EE3C50, v8);
    v0[17] = v9;
    type metadata accessor for AnyCancellable();
    swift_allocObject();

    v10 = AnyCancellable.init(_:)();
    swift_beginAccess();
    sub_1003B32C0(&v15, v10);
    swift_endAccess();

    v11 = swift_task_alloc();
    v0[18] = v11;
    v12 = sub_10010FC20(&qword_101184460);
    *v11 = v0;
    v11[1] = sub_1007CEE34;

    return Task<>.value.getter(v0 + 8, v9, v12);
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1007CEE34()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1007CEF54, v3, v2);
}

uint64_t sub_1007CEF54()
{

  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1007CEFD8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1007CF088;

  return sub_1007CF238();
}

uint64_t sub_1007CF088(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007CF1CC, v3, v2);
}

uint64_t sub_1007CF1CC()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1007CF238()
{
  v1[8] = v0;
  v2 = sub_10010FC20(&qword_1011A3BD8);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011979F0);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A3BE0);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v7;
  v1[24] = v6;

  return _swift_task_switch(sub_1007CF468, v7, v6);
}

uint64_t sub_1007CF468()
{
  v24 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446210;
    VideoArtwork.url.getter();
    sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keyframe image for %{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  swift_beginAccess();
  sub_10010FC20(&qword_101197A00);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_101197A08, &qword_1011979F0);
  Publisher<>.values.getter();
  (*(v14 + 8))(v13, v16);
  AsyncPublisher.makeAsyncIterator()();
  (*(v18 + 8))(v15, v17);
  v0[26] = static MainActor.shared.getter();
  v19 = sub_100020674(&qword_1011A3BE8, &qword_1011A3BE0);
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  v20[1] = sub_1007CF7F0;
  v21 = v0[15];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v21, v19);
}

uint64_t sub_1007CF7F0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1007CFF70;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1007CF988;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1007CF988()
{

  *(v0 + 232) = *(v0 + 40);
  *(v0 + 49) = *(v0 + 48);
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_1007CF9FC, v1, v2);
}

uint64_t sub_1007CF9FC()
{
  v42 = v0;
  v1 = *(v0 + 49);
  if (v1 == 254)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 144);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v41 = v11;
      *v10 = 136446210;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
      v12 = dispatch thunk of CustomStringConvertible.description.getter();
      v14 = v13;
      (*(v8 + 8))(v7, v9);
      v15 = sub_1000105AC(v12, v14, &v41);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v5, v6, "Keyframe image fetch cancelled for %{public}s", v10, 0xCu);
      sub_10000959C(v11);
    }

    v16 = 0;
  }

  else
  {
    if (v1 == 255)
    {
      *(v0 + 208) = static MainActor.shared.getter();
      v2 = sub_100020674(&qword_1011A3BE8, &qword_1011A3BE0);
      v3 = swift_task_alloc();
      *(v0 + 216) = v3;
      *v3 = v0;
      v3[1] = sub_1007CF7F0;
      v4 = *(v0 + 120);

      return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 40, v4, v2);
    }

    v17 = *(v0 + 232);

    sub_1007D3590(v17, v1);

    sub_1007D3590(v17, v1);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    sub_1007D35A4(v17, v1);
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 232);
    if (v20)
    {
      v23 = *(v0 + 152);
      v22 = *(v0 + 160);
      v24 = *(v0 + 144);
      v38 = *(v0 + 128);
      v39 = *(v0 + 120);
      v40 = *(v0 + 136);
      v36 = *(v0 + 49);
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v25 = 136446466;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = sub_1000105AC(v26, v28, &v41);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2114;
      *(v25 + 14) = v21;
      *v35 = v21;
      sub_10004ADE8(v21, v36);
      _os_log_impl(&_mh_execute_header, v18, v19, "Fetched keyframe image for %{public}s: %{public}@", v25, 0x16u);
      sub_1000095E8(v35, &unk_101183D70);

      sub_10000959C(v37);

      sub_1007D35A4(v21, v36);
      (*(v38 + 8))(v40, v39);
    }

    else
    {
      v31 = *(v0 + 128);
      v30 = *(v0 + 136);
      v32 = *(v0 + 120);
      sub_1007D35A4(*(v0 + 232), *(v0 + 49));

      (*(v31 + 8))(v30, v32);
    }

    v16 = *(v0 + 232);
  }

  v33 = *(v0 + 8);

  return v33(v16);
}

uint64_t sub_1007CFF70()
{
  *(v0 + 56) = *(v0 + 224);
  sub_10010FC20(&qword_1011824A0);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1007CFFFC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 64) = a1;
  sub_10010FC20(&unk_101181520);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = sub_10010FC20(&qword_101183A20);
  *(v5 + 120) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = type metadata accessor for MainActor();
  *(v5 + 176) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 184) = v9;
  *(v5 + 192) = v8;

  return _swift_task_switch(sub_1007D0184, v9, v8);
}

uint64_t sub_1007D0184()
{
  v30 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {

    goto LABEL_7;
  }

  if (qword_10117FD68 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = sub_1000060E4(v0[14], qword_1011A3AE8);
  sub_1004890B8(v5, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[15];

    sub_1000095E8(v6, &qword_101183A20);
LABEL_7:
    (*(v0[17] + 56))(v0[8], 1, 1, v0[16]);

    v7 = v0[1];

    return v7();
  }

  v9 = v0[20];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v28 = v13;
  v16 = v0[9];
  v15 = v0[10];
  v17 = *(v12 + 32);
  v17(v9, v0[15], v11);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = v10;
  (*(v12 + 16))(v10, v9, v11);

  v20 = static MainActor.shared.getter();
  v21 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v14;
  *(v22 + 5) = v16;
  *(v22 + 6) = v15;
  v17(&v22[v21], v19, v11);
  v23 = sub_1001F6328(0, 0, v28, &unk_100EE3C28, v22);
  v0[26] = v23;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v24 = AnyCancellable.init(_:)();
  swift_beginAccess();
  sub_1003B32C0(&v29, v24);
  swift_endAccess();

  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_1007D0554;
  v26 = v0[14];
  v27 = v0[8];

  return Task<>.value.getter(v27, v23, v26);
}

uint64_t sub_1007D0554()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_1007D0674, v3, v2);
}

uint64_t sub_1007D0674()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007D0740(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1001AB600;

  return sub_1007D0820(a1, a7, a2, a3);
}

uint64_t sub_1007D0820(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 48) = a1;
  v6 = type metadata accessor for URL.DirectoryHint();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  sub_10010FC20(&qword_1011A3BC0);
  *(v5 + 136) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 216) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 224) = v9;
  *(v5 + 232) = v10;

  return _swift_task_switch(sub_1007D0A88, v9, v10);
}

uint64_t sub_1007D0A88()
{
  v17 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = v0[18];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    VideoArtwork.url.getter();
    sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v4, v5);
    v12 = sub_1000105AC(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching asset URL for %{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v0[31] = type metadata accessor for MotionCache();
  type metadata accessor for MotionCacheActor();
  v0[32] = static MotionCacheActor.shared.getter();
  sub_1007D35B8(&qword_1011A3BC8, &type metadata accessor for MotionCacheActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007D0D4C, v14, v13);
}

uint64_t sub_1007D0D4C()
{

  v0[33] = static MotionCache.shared.getter();
  v1 = v0[28];
  v2 = v0[29];

  return _swift_task_switch(sub_1007D0DE4, v1, v2);
}

uint64_t sub_1007D0DE4()
{
  v1 = v0[17];
  v0[34] = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  VideoArtwork.url.getter();
  v2 = type metadata accessor for MCUILoggingContext();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_1007D0F28;
  v4 = v0[26];
  v5 = v0[17];
  v6.n128_u64[0] = v0[7];
  v7.n128_u64[0] = v0[8];

  return MotionCache.fetchAsset(url:presentationResolution:cacheBucketID:loggingContext:)(v4, 0, 0, v5, v6, v7);
}

uint64_t sub_1007D0F28(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v7 = *(*v1 + 136);
  v3[36] = a1;

  sub_1000095E8(v7, &qword_1011A3BC0);
  v8 = *(v5 + 8);
  v3[37] = v8;
  v3[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[29];
  v10 = v2[28];

  return _swift_task_switch(sub_1007D1144, v10, v9);
}

uint64_t sub_1007D1144()
{
  v131 = v0;

  if (static Task<>.isCancelled.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[37];
      v127 = v0[36];
      v4 = v0[26];
      v5 = v0[18];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v129 = v7;
      *v6 = 136446210;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      v3(v4, v5);
      v11 = sub_1000105AC(v8, v10, &v129);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v1, v2, "Asset URL fetch cancelled for %{public}s", v6, 0xCu);
      sub_10000959C(v7);
    }

    else
    {
      v66 = v0[36];
    }
  }

  else
  {
    v12 = v0[36];
    if (v12)
    {
      v13 = v0[24];
      v14 = v0[25];
      v15 = v0[18];
      v16 = v0[19];
      v18 = v0[15];
      v17 = v0[16];
      v19 = v0[14];
      v20 = v0[12];
      v119 = v0[13];
      v121 = v0[11];
      v128 = v0[36];
      v21 = [v12 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v14;
      v23 = *(v16 + 32);
      v23(v22, v13, v15);
      v24 = [objc_opt_self() defaultManager];
      UUID.init()();
      sub_1007D35B8(&qword_1011A3BD0, &type metadata accessor for UUID);
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v25;
      v26 = v19;
      v27 = v24;
      (*(v18 + 8))(v17, v26);
      v28._countAndFlagsBits = 95;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = URL.lastPathComponent.getter();
      String.append(_:)(v29);

      v30 = v130;
      v0[2] = v129;
      v0[3] = v30;
      (*(v20 + 104))(v119, enum case for URL.DirectoryHint.notDirectory(_:), v121);
      sub_100009838();
      URL.appending<A>(path:directoryHint:)();
      (*(v20 + 8))(v119, v121);

      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      v0[4] = 0;
      LODWORD(v20) = [v27 moveItemAtURL:v33 toURL:v35 error:v0 + 4];

      v37 = v0[4];
      if (v20)
      {
        v122 = v23;
        v38 = v0[25];
        v39 = v0[21];
        v40 = v0[18];
        v41 = *(v0[19] + 16);
        v41(v0[22], v0[23], v40);
        v41(v39, v38, v40);

        v42 = v37;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        log = v43;
        v45 = os_log_type_enabled(v43, v44);
        v46 = v0[37];
        if (v45)
        {
          v117 = v44;
          v47 = v0[26];
          v120 = v0[25];
          v48 = v0[22];
          v118 = v0[21];
          v49 = v0[18];
          v50 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *v50 = 136446722;
          VideoArtwork.url.getter();
          sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v27;
          v53 = v52;
          v46(v47, v49);
          v54 = sub_1000105AC(v51, v53, &v129);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2082;
          v55 = v48;
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          v46(v55, v49);
          v59 = sub_1000105AC(v56, v58, &v129);

          *(v50 + 14) = v59;
          *(v50 + 22) = 2082;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v46(v118, v49);
          v63 = sub_1000105AC(v60, v62, &v129);

          *(v50 + 24) = v63;
          _os_log_impl(&_mh_execute_header, log, v117, "Fetched asset URL for %{public}s: %{public}s. Original: %{public}s", v50, 0x20u);
          swift_arrayDestroy();

          v64 = v120;
          v65 = v49;
        }

        else
        {
          v99 = v0[25];
          v101 = v0[21];
          v100 = v0[22];
          v102 = v0[18];

          v46(v101, v102);
          v46(v100, v102);
          v64 = v99;
          v65 = v102;
        }

        v46(v64, v65);
        v103 = v0[18];
        v104 = v0[19];
        v105 = v0[6];
        v122(v105, v0[23], v103);
        (*(v104 + 56))(v105, 0, 1, v103);
        goto LABEL_21;
      }

      v126 = v27;
      v78 = v0[37];
      v79 = v0[25];
      v80 = v0[23];
      v81 = v0[19];
      v82 = v0[20];
      v83 = v0[18];
      v84 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v78(v80, v83);
      (*(v81 + 16))(v82, v79, v83);
      swift_errorRetain();
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      v87 = os_log_type_enabled(v85, v86);
      v88 = v0[37];
      v89 = v0[20];
      v90 = v0[18];
      if (v87)
      {
        v91 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v129 = v92;
        *v91 = 138543618;
        swift_errorRetain();
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 4) = v93;
        *v123 = v93;
        *(v91 + 12) = 2082;
        sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v88(v89, v90);
        v97 = sub_1000105AC(v94, v96, &v129);

        *(v91 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v85, v86, "Error moving asset file: %{public}@. Original: %{public}s", v91, 0x16u);
        sub_1000095E8(v123, &unk_101183D70);

        sub_10000959C(v92);
      }

      else
      {

        v88(v89, v90);
      }

      URL._bridgeToObjectiveC()(v98);
      v107 = v106;
      v0[5] = 0;
      v108 = [v126 removeItemAtURL:v106 error:v0 + 5];

      v109 = v0[5];
      v110 = v0[37];
      v111 = v0[25];
      v112 = v0[18];
      if (v108)
      {
        v113 = v109;
        v110(v111, v112);
      }

      else
      {
        v114 = v109;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v110(v111, v112);
      }
    }

    else
    {

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v0[37];
        v70 = v0[26];
        v71 = v0[18];
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v129 = v73;
        *v72 = 136446210;
        VideoArtwork.url.getter();
        sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        v69(v70, v71);
        v77 = sub_1000105AC(v74, v76, &v129);

        *(v72 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v67, v68, "No asset URL available for %{public}s", v72, 0xCu);
        sub_10000959C(v73);
      }
    }
  }

  (*(v0[19] + 56))(v0[6], 1, 1, v0[18]);
LABEL_21:

  v115 = v0[1];

  return v115();
}

uint64_t sub_1007D1D30(char *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v107 = a1;
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10);
  v12 = &v95 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v106 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v95 - v17;
  if (qword_10117FD68 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v19 = sub_1000060E4(v10, qword_1011A3AE8);
    sub_1004890B8(v19, v12);
    if (v14[6](v12, 1, v13) == 1)
    {
      return sub_1000095E8(v12, &qword_101183A20);
    }

    v101 = v14;
    v102 = v18;
    v14[4](v18, v12, v13);
    v18 = *(v5 + 5);
    v21 = *(v5 + 6);
    v22 = *(v5 + 7);
    v23 = *(v5 + 8);
    v104 = v5;
    if (!v21)
    {
      if (!a2)
      {
        return v101[1](v102, v13);
      }

LABEL_15:
      v99 = a2 == 0;
      v24 = v107;
      sub_1007D3600(v107, a2);
      sub_1007D3600(v18, v21);
      sub_1007D3124(v18, v21);
      v25 = v24;
      v26 = a2;
      goto LABEL_16;
    }

    if (!a2)
    {
      goto LABEL_15;
    }

    v99 = 0;
    if ((v18 != v107 || v21 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_35;
    }

    if (!v23)
    {
      if (!a4)
      {
        return v101[1](v102, v13);
      }

LABEL_35:
      sub_1007D3600(v107, a2);
      sub_1007D3600(v18, v21);

      v25 = v18;
      v26 = v21;
LABEL_16:
      sub_1007D3124(v25, v26);
      goto LABEL_17;
    }

    if (a4)
    {
      if (v22 == a3 && v23 == a4)
      {
        sub_1007D3600(v107, a2);
        sub_1007D3600(v18, v21);

        sub_1007D3124(v18, v21);
        return v101[1](v102, v13);
      }

      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1007D3600(v107, a2);
      sub_1007D3600(v18, v21);

      sub_1007D3124(v18, v21);
      if (v42)
      {
        return v101[1](v102, v13);
      }
    }

LABEL_17:
    v27 = v104;
    v28 = *(v104 + 6);
    v105 = v13;
    v100 = a2;
    v98 = a3;
    if (v28)
    {
      v18 = *(v104 + 7);
      v29 = *(v104 + 8);
      v30 = a2 ? a3 : 0;
      v31 = a2 ? a4 : 0;

      v32 = a5;
      if (v29)
      {
        if (v31)
        {
          if (v18 == v30 && v29 == v31)
          {

LABEL_68:
            v27 = v104;
            goto LABEL_76;
          }

          v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v27 = v104;
          if (v33)
          {
            goto LABEL_76;
          }
        }

        else
        {

          v27 = v104;
        }
      }

      else
      {
        v27 = v104;
        if (!v31)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      v32 = a5;
      if (!a2)
      {
        v99 = 1;
        goto LABEL_76;
      }

      v99 = 0;
      if (!a4)
      {
        goto LABEL_76;
      }
    }

    swift_beginAccess();
    v34 = *(v27 + 9);
    if ((v34 & 0xC000000000000001) != 0)
    {

      v35 = __CocoaSet.count.getter();
    }

    else
    {
      v35 = *(v34 + 16);
    }

    v97 = v32;
    if (v35)
    {
      if (qword_10117F548 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000060E4(v36, static Logger.NowPlaying.motion);
      v37 = v107;
      sub_1007D3600(v107, a2);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      sub_1007D3124(v37, a2);
      if (os_log_type_enabled(v38, v39))
      {
        v18 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v112 = v103;
        *v18 = 134349570;
        v40 = *(v27 + 9);
        if ((v40 & 0xC000000000000001) != 0)
        {

          v41 = __CocoaSet.count.getter();
        }

        else
        {
          v41 = *(v40 + 16);
        }

        v43 = v39;
        *(v18 + 4) = v41;
        v44 = v104;

        *(v18 + 6) = 2082;
        if (*(v44 + 6))
        {
          v45 = *(v44 + 7);
        }

        else
        {
          v45 = 0;
          v46 = 0;
        }

        v108 = v45;
        v109 = v46;
        sub_10010FC20(&qword_1011815E0);
        v47 = String.init<A>(describing:)();
        v49 = sub_1000105AC(v47, v48, &v112);

        *(v18 + 14) = v49;
        *(v18 + 11) = 2082;
        if (v99)
        {
          v50 = 0;
          v51 = 0;
        }

        else
        {

          v50 = a3;
          v51 = a4;
        }

        v108 = v50;
        v109 = v51;
        v52 = String.init<A>(describing:)();
        v54 = sub_1000105AC(v52, v53, &v112);

        *(v18 + 3) = v54;
        _os_log_impl(&_mh_execute_header, v38, v43, "Cancelling fetches (%{public}ld) as artwork ID changed. %{public}s -> %{public}s", v18, 0x20u);
        swift_arrayDestroy();

        v32 = v97;
        a2 = v100;
        v27 = v104;
      }

      else
      {
      }

      *(v27 + 9) = &_swiftEmptySetSingleton;
    }

    v55 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v56);
    v58 = v57;
    v108 = 0;
    v103 = v55;
    v14 = [v55 contentsOfDirectoryAtURL:v57 includingPropertiesForKeys:0 options:0 error:&v108];

    v5 = v108;
    if (!v14)
    {
      break;
    }

    v96 = a4;
    a2 = v101;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v5;

    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_67:

      a4 = v96;
      a3 = v98;
      v32 = v97;
      a2 = v100;
      goto LABEL_68;
    }

    a5 = 0;
    a3 = (a2 + 16);
    a4 = a2 + 8;
    while (a5 < *(v10 + 16))
    {
      v61 = v105;
      v60 = v106;
      (*(a2 + 16))(v106, v10 + ((*(a2 + 80) + 32) & ~*(a2 + 80)) + *(a2 + 72) * a5, v105);
      URL._bridgeToObjectiveC()(v62);
      v18 = v63;
      (*(a2 + 8))(v60, v61);
      v108 = 0;
      v14 = [v103 removeItemAtURL:v18 error:&v108];

      v5 = v108;
      if (!v14)
      {
        v65 = v108;

        a4 = v96;
        v32 = v97;
        a2 = v100;
        goto LABEL_71;
      }

      ++a5;
      v64 = v108;
      if (v12 == a5)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_89:
    swift_once();
  }

  v65 = v108;
LABEL_71:
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v27 = v104;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_1000060E4(v66, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  v69 = os_log_type_enabled(v67, v68);
  a3 = v98;
  if (v69)
  {
    v70 = v32;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v71 = 138543362;
    swift_errorRetain();
    v73 = _swift_stdlib_bridgeErrorToNSError();
    *(v71 + 4) = v73;
    *v72 = v73;
    _os_log_impl(&_mh_execute_header, v67, v68, "Error removing old asset files: %{public}@", v71, 0xCu);
    sub_1000095E8(v72, &unk_101183D70);

    v32 = v70;
    a2 = v100;
  }

  else
  {
  }

LABEL_76:
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_1000060E4(v74, static Logger.NowPlaying.motion);
  v75 = v107;
  sub_1007D3600(v107, a2);

  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  sub_1007D3124(v75, a2);

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    *v78 = 136446466;
    v79 = v32;
    if (v99)
    {
      v80 = 0xE300000000000000;
      v81 = 7104878;
    }

    else
    {
      v112 = 0;
      v113 = 0xE000000000000000;
      v108 = v107;
      v109 = v100;
      v110 = a3;
      v111 = a4;
      _print_unlocked<A, B>(_:_:)();
      v81 = v112;
      v80 = v113;
    }

    v82 = sub_1000105AC(v81, v80, &v114);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2082;
    v83 = Dictionary.description.getter();
    v85 = sub_1000105AC(v83, v84, &v114);

    *(v78 + 14) = v85;
    _os_log_impl(&_mh_execute_header, v76, v77, "Publishing animated artwork through MPNowPlayingInfoCenter. publishedIDs: %{public}s, nowPlayingInfo: %{public}s", v78, 0x16u);
    swift_arrayDestroy();

    a3 = v98;
    v27 = v104;
  }

  else
  {

    v79 = v32;
  }

  v86 = *(v27 + 5);
  v87 = *(v27 + 6);
  v88 = v107;
  v89 = v100;
  *(v27 + 5) = v107;
  *(v27 + 6) = v89;
  *(v27 + 7) = a3;
  *(v27 + 8) = a4;
  sub_1007D3600(v88, v89);
  sub_1007D3124(v86, v87);
  v90 = *(v27 + 2);
  if (*(v79 + 2))
  {
    v91.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v91.super.isa = 0;
  }

  v92 = v105;
  v94 = v101;
  v93 = v102;
  [v90 setNowPlayingInfo:v91.super.isa];

  return v94[1](v93, v92);
}

uint64_t sub_1007D2AEC(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1007D2B8C()
{
  v0 = sub_10010FC20(&qword_101183A20);
  sub_100006080(v0, qword_1011A3AE8);
  v1 = sub_1000060E4(v0, qword_1011A3AE8);
  return sub_1007D2BE4(v1);
}

uint64_t sub_1007D2BE4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = [objc_opt_self() defaultManager];
  v36[0] = 0;
  v14 = [v13 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v36];
  v15 = v36[0];
  if (v14)
  {
    v35 = a1;
    v16 = v14;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v15;

    v36[0] = 0xD00000000000001ALL;
    v36[1] = 0x8000000100E57A30;
    (*(v3 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v2);
    sub_100009838();
    URL.appending<A>(path:directoryHint:)();
    (*(v3 + 8))(v5, v2);
    v18 = *(v7 + 8);
    v18(v10, v6);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v36[0] = 0;
    v22 = [v13 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:v36];

    if (v22)
    {
      v23 = v36[0];

      a1 = v35;
      (*(v7 + 32))(v35, v12, v6);
      v24 = 0;
      return (*(v7 + 56))(a1, v24, 1, v6);
    }

    v26 = v36[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v18(v12, v6);
    a1 = v35;
  }

  else
  {
    v25 = v36[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000060E4(v27, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138543362;
    swift_errorRetain();
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v32;
    *v31 = v32;
    _os_log_impl(&_mh_execute_header, v28, v29, "Unable to create artwork asset directory: %{public}@", v30, 0xCu);
    sub_1000095E8(v31, &unk_101183D70);
  }

  else
  {
  }

  v24 = 1;
  return (*(v7 + 56))(a1, v24, 1, v6);
}

uint64_t sub_1007D309C()
{

  sub_1007D3124(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1007D3124(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1007D3168()
{
  result = qword_1011A3BB8;
  if (!qword_1011A3BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A3BB8);
  }

  return result;
}

uint64_t sub_1007D31B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F6C0C;

  return sub_1007CEAD8(v2, v3);
}

uint64_t sub_1007D3264(uint64_t a1, double a2, double a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100008F30;

  return sub_1007CFFFC(a1, v8, v9, a2, a3);
}

uint64_t sub_1007D3330(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_1007D0740(a1, v9, v10, v6, v7, v8, v1 + v5);
}

void sub_1007D343C()
{
  sub_10010FC20(&qword_101183A20);

  Task.cancel()();
}

uint64_t sub_1007D348C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1007CEFD8(a1);
}

void sub_1007D3540()
{
  sub_10010FC20(&qword_101184460);

  Task.cancel()();
}

id sub_1007D3590(id result, char a2)
{
  if (a2 != 254)
  {
    return sub_10004ADE8(result, a2);
  }

  return result;
}

void sub_1007D35A4(id a1, char a2)
{
  if (a2 != 254)
  {
    sub_10004ADFC(a1, a2);
  }
}

uint64_t sub_1007D35B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007D3600(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1007D3644(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = sub_1007D44C4(sub_1007D4200);
    v3 = sub_1007D44C4(sub_1007D469C);
  }

  else
  {
    v4 = 1;
  }

  v5 = [v2 playingItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 queueItemIdentifier];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v4 == 1)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (v4 == 1)
    {
      goto LABEL_16;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = v4;
  if (!v4)
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_1007D41BC(v4, v3);
    return -1;
  }

  v12 = v11;
  v13 = [v11 queueItemIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v10)
  {
    if (v14 == v8 && v10 == v16)
    {

LABEL_19:
      sub_1007D41BC(v4, v3);

      return -1;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_21:
  v19 = v3;
  if (!v3)
  {
    sub_1007D41BC(v4, 0);
    if (!v10)
    {
      return 1;
    }

LABEL_29:

    return 0;
  }

  v20 = v19;
  v21 = [v19 queueItemIdentifier];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!v10)
  {
    sub_1007D41BC(v4, v3);
    goto LABEL_29;
  }

  if (v22 == v8 && v10 == v24)
  {
    sub_1007D41BC(v4, v3);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1007D41BC(v4, v3);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1007D38FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(**(v2 + 16) + 432))();
  v19 = v6;
  if (v6)
  {
    v7 = [v6 tracklist];
    v8 = sub_1007D44C4(sub_1007D4200);
    v9 = sub_1007D44C4(sub_1007D469C);

    v10 = v8;
    v11 = [v19 tracklist];
    v12 = v8;
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 1;
  }

  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_100112878(v14);
  sub_100112878(v14);
  NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v8, v11, v14, v13, a1);
  if (v12 == 1)
  {
    v15 = 0;
    v16 = v19;
    if (v19)
    {
LABEL_6:
      v17 = [v16 tracklist];
      goto LABEL_9;
    }
  }

  else
  {
    v18 = v9;
    v15 = v9;
    v16 = v19;
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_9:
  NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v15, v17, v14, v13, a2);
  sub_1007D41BC(v12, v9);
}

uint64_t sub_1007D3AB4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_1007D3B4C, v4, v3);
}

uint64_t sub_1007D3B4C()
{
  v1 = *(v0[12] + 16);
  v0[17] = v1;
  if (v1)
  {
    v2 = v0[13];
    v3 = *(v2 + 16);
    v0[5] = &type metadata for Player.ChangeCommand;
    v0[6] = &protocol witness table for Player.ChangeCommand;
    v0[2] = v1;
    v0[10] = _s19GlissandoDataSourceCMa();
    v0[11] = &off_1010C0528;
    v0[7] = v2;
    v4 = v1;

    v5 = Player.CommandOptions.init()();
    v7 = v6;
    v9 = v8;
    v0[18] = v8;
    v13 = (*(*v3 + 784) + **(*v3 + 784));
    v10 = swift_task_alloc();
    v0[19] = v10;
    *v10 = v0;
    v10[1] = sub_1007D3D78;

    return v13(v0 + 2, v5, v7 & 1, v9, v0 + 7);
  }

  else
  {

    sub_1007D4168();
    swift_allocError();
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1007D3D78(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1007D3F38;
  }

  else
  {
    v8 = *(v4 + 144);

    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1007D3ECC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1007D3ECC()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007D3F38()
{
  v1 = *(v0 + 136);

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007D3FC4()
{

  sub_100020438(*(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1007D4044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1007D3AB4(a1);
}

uint64_t sub_1007D40D8()
{
  v1 = *(*v0 + 40);

  return v1;
}

unint64_t sub_1007D4110()
{
  result = qword_10119C108;
  if (!qword_10119C108)
  {
    type metadata accessor for NowPlaying.TrackMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C108);
  }

  return result;
}

unint64_t sub_1007D4168()
{
  result = qword_1011A3CE8;
  if (!qword_1011A3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3CE8);
  }

  return result;
}

void sub_1007D41BC(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1007D4200@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v25 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - v9;
  __chkstk_darwin(v8);
  v12 = &v24 - v11;
  v13 = [v2 playingItemIndexPath];
  if (v13)
  {
    v24 = a1;
    v14 = v13;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v25 + 32);
    v15(v12, v10, v4);
    v16 = [v2 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 globalIndexForIndexPath:isa];

    if (v18 >= 1 && (v19 = [v2 items], v20 = objc_msgSend(v19, "indexPathForGlobalIndex:", v18 - 1), v19, v20))
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v25 + 8))(v12, v4);
      v21 = v24;
      v15(v24, v7, v4);
      return (*(v25 + 56))(v21, 0, 1, v4);
    }

    else
    {
      (*(v25 + 8))(v12, v4);
      return (*(v25 + 56))(v24, 1, 1, v4);
    }
  }

  else
  {
    v23 = *(v25 + 56);

    return v23(a1, 1, 1, v4);
  }
}

id sub_1007D44C4(void (*a1)(uint64_t))
{
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_10118BCE0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v12 = [v1 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v14 = [v12 itemAtIndexPath:isa];

    (*(v7 + 8))(v10, v6);
    return v14;
  }
}

uint64_t sub_1007D469C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v27 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v26 - v9;
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = [v2 playingItemIndexPath];
  if (v13)
  {
    v26 = a1;
    v14 = v13;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = *(v27 + 32);
    v15(v12, v10, v4);
    v16 = [v2 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v18 = [v16 globalIndexForIndexPath:isa];

    v19 = [v2 items];
    v20 = [v19 totalItemCount];

    if (v18 < v20 && (v21 = [v2 items], v22 = objc_msgSend(v21, "indexPathForGlobalIndex:", v18 + 1), v21, v22))
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v27 + 8))(v12, v4);
      v23 = v26;
      v15(v26, v7, v4);
      return (*(v27 + 56))(v23, 0, 1, v4);
    }

    else
    {
      (*(v27 + 8))(v12, v4);
      return (*(v27 + 56))(v26, 1, 1, v4);
    }
  }

  else
  {
    v25 = *(v27 + 56);

    return v25(a1, 1, 1, v4);
  }
}

unint64_t sub_1007D49A0()
{
  result = qword_1011A3CF0;
  if (!qword_1011A3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3CF0);
  }

  return result;
}

uint64_t sub_1007D49F4(void *a1, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v4 - 8);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&qword_1011A3D20);
  __chkstk_darwin(v6 - 8);
  v54 = &v50 - v7;
  v8 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v8 - 8);
  v58 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v50 - v11;
  __chkstk_darwin(v13);
  v57 = &v50 - v14;
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  __chkstk_darwin(v18);
  v20 = &v50 - v19;
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  *&v25 = __chkstk_darwin(v24).n128_u64[0];
  v27 = &v50 - v26;
  v28 = [a1 isFocused];
  v56 = v17;
  if ((v28 & 1) != 0 || ([a1 isSelected] & 1) != 0 || objc_msgSend(a1, "isHighlighted"))
  {
    static UIButton.Configuration.prominentGlass()();
    v29 = 1;
  }

  else
  {
    static UIButton.Configuration.glass()();
    v29 = 0;
  }

  v30 = type metadata accessor for UIButton.Configuration();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v27, 0, 1, v30);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v59 = *(v31 + 48);
  if (v59(v23, 1, v30))
  {
    sub_1005ED588(v23, v20);
    UIButton.configuration.setter();
    sub_1005ED5F8(v23);
  }

  else
  {
    sub_1007D5304();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v33 = [ObjCClassFromMetadata configurationWithScale:1];
    v51 = v33;
    v34 = [ObjCClassFromMetadata configurationWithWeight:5];
    v35 = [v33 configurationByApplyingConfiguration:v34];
    v52 = v29;

    v29 = v52;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v36 = v56;
  UIButton.configuration.getter();
  v37 = v59(v36, 1, v30);
  v38 = v57;
  if (v37)
  {
    sub_1005ED588(v36, v20);
    UIButton.configuration.setter();
    sub_1005ED5F8(v36);
  }

  else
  {
    *(swift_allocObject() + 16) = v29;
    v39 = v54;
    UIConfigurationColorTransformer.init(_:)();
    v40 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
    UIButton.Configuration.imageColorTransformer.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v59(v38, 1, v30))
  {
    sub_1005ED588(v38, v20);
    UIButton.configuration.setter();
    sub_1005ED5F8(v38);
  }

  else
  {
    v41 = String._bridgeToObjectiveC()();
    v42 = [objc_opt_self() systemImageNamed:v41];

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v59(v12, 1, v30))
  {
    sub_1005ED588(v12, v20);
    UIButton.configuration.setter();
    sub_1005ED5F8(v12);
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
    UIButton.Configuration.background.setter();
    UIButton.configuration.setter();
  }

  v43 = v58;
  UIButton.configuration.getter();
  if (v59(v43, 1, v30))
  {
    v44 = v58;
    sub_1005ED588(v58, v20);
    UIButton.configuration.setter();
    return sub_1005ED5F8(v44);
  }

  else
  {
    v46 = objc_opt_self();
    v47 = &selRef__carSystemFocusColor;
    if (!v29)
    {
      v47 = &selRef_clearColor;
    }

    v48 = [v46 *v47];
    v49 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v49(v60, 0);
    return UIButton.configuration.setter();
  }
}

id sub_1007D5164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayAccessoryButton();
  v11.receiver = objc_allocWithZone(v4);
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 36.0, 36.0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1007D529C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10027D328;
  v10[3] = &unk_1010C05F0;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 setConfigurationUpdateHandler:v7];
  _Block_release(v7);

  [v8 setNeedsUpdateConfiguration];
  return v8;
}

id sub_1007D52A4()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = &selRef__carSystemFocusLabelColor;
  if (!v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

unint64_t sub_1007D5304()
{
  result = qword_1011A3D28;
  if (!qword_1011A3D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A3D28);
  }

  return result;
}

void sub_1007D53D4(uint64_t a1, void (*a2)(char *, char *, uint64_t), int a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), void *a7, void *a8, void (*a9)(_OWORD *__return_ptr, uint64_t), uint64_t a10, uint64_t a11)
{
  v235 = a8;
  v256 = a7;
  v246 = a5;
  v247 = a6;
  v245 = a4;
  v254 = a3;
  v261 = a1;
  v262 = a2;
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v226 = &v211 - v12;
  v219 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v219);
  v220 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlaybackIntentDescriptor(0);
  v222 = *(v14 - 8);
  __chkstk_darwin(v14 - 8);
  v223 = v15;
  v224 = &v211 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v225 = &v211 - v17;
  v18 = type metadata accessor for Logger();
  v227 = *(v18 - 8);
  v228 = v18;
  __chkstk_darwin(v18);
  v238 = &v211 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v20 - 8);
  v234 = &v211 - v21;
  v22 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v236 = *(v22 - 8);
  v237 = v22;
  __chkstk_darwin(v22);
  v221 = &v211 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v24 = *(v241 - 8);
  __chkstk_darwin(v241);
  v240 = &v211 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v242 = &v211 - v27;
  v28 = sub_10010FC20(&unk_10119F3A0);
  __chkstk_darwin(v28 - 8);
  v243 = &v211 - v29;
  v30 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v30 - 8);
  v250 = &v211 - v31;
  v32 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v32 - 8);
  v249 = &v211 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v255 = &v211 - v35;
  __chkstk_darwin(v36);
  v266 = &v211 - v37;
  v252 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v252);
  v248 = &v211 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v253 = &v211 - v40;
  __chkstk_darwin(v41);
  v265 = &v211 - v42;
  v213 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin(v213);
  v214 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for TVSeason();
  v216 = *(v44 - 8);
  v217 = v44;
  __chkstk_darwin(v44);
  v215 = &v211 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for Playlist();
  v231 = *(v239 - 8);
  __chkstk_darwin(v239);
  v229 = &v211 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v230 = &v211 - v48;
  __chkstk_darwin(v49);
  v264 = &v211 - v50;
  v251 = type metadata accessor for Album();
  v260 = *(v251 - 8);
  __chkstk_darwin(v251);
  v244 = &v211 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v258 = &v211 - v53;
  __chkstk_darwin(v54);
  v259 = &v211 - v55;
  __chkstk_darwin(v56);
  v268 = &v211 - v57;
  v263 = type metadata accessor for RecentlyAddedMusicItem();
  v267 = *(v263 - 8);
  __chkstk_darwin(v263);
  v212 = &v211 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v218 = &v211 - v60;
  __chkstk_darwin(v61);
  v257 = &v211 - v62;
  v63 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v63 - 8);
  v233 = &v211 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v67 = &v211 - v66;
  v68 = type metadata accessor for IndexPath();
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68);
  v71 = &v211 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v74 = &v211 - v73;
  sub_1000089F8(v262, v67, &unk_10118BCE0);
  v75 = (*(v69 + 48))(v67, 1, v68);
  v232 = v69;
  if (v75 == 1)
  {
    sub_1000095E8(v67, &unk_10118BCE0);
    v262 = 0;
  }

  else
  {
    v262 = *(v69 + 32);
    v262(v74, v67, v68);
    v211 = sub_100009F78(0, &qword_101184710);
    v76 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v77 = swift_allocObject();
    v245 = v24;
    v78 = v77;
    swift_unknownObjectWeakInit();
    (*(v69 + 16))(v71, v74, v68);
    v79 = (*(v69 + 80) + 24) & ~*(v69 + 80);
    v80 = swift_allocObject();
    *(v80 + 16) = v78;
    v262((v80 + v79), v71, v68);

    v262 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    (*(v69 + 8))(v74, v68);
    v24 = v245;
  }

  v81 = v267;
  v82 = v257;
  v83 = v261;
  v84 = v263;
  v247 = *(v267 + 16);
  v247(v257, v261, v263);
  v85 = (*(v81 + 88))(v82, v84);
  v86 = v264;
  v87 = v268;
  if (v85 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v81 + 96))(v82, v84);
    v88 = v260;
    v89 = v251;
    (*(v260 + 32))(v87, v82, v251);
    v90 = [v269 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v91 = sub_10049CB78();

    LOBYTE(v90) = v91 | v254;
    v92 = *(v88 + 16);
    v93 = v259;
    v92(v259, v87, v89);
    v94 = sub_10010FC20(&qword_10118A430);
    v95 = *(v94 + 64);
    v96 = v265;
    *(v265 + *(v94 + 48)) = v90 & 1;
    v97 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
    v98 = v96;
    *(v96 + v95) = 0;
    swift_storeEnumTagMultiPayload();
    v99 = type metadata accessor for URL();
    v100 = v266;
    (*(*(v99 - 8) + 56))(v266, 1, 1, v99);
    v101 = v258;
    v92(v258, v93, v89);
    v102 = v98;
    v103 = v253;
    sub_1007E82DC(v102, v253, type metadata accessor for ContainerDetail.Source);
    v104 = v100;
    v105 = v255;
    sub_1000089F8(v104, v255, &qword_101183A20);
    v106 = v244;
    v92(v244, v101, v89);
    v107 = v248;
    sub_1007E82DC(v103, v248, type metadata accessor for ContainerDetail.Source);
    v108 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v109 = v250;
    (*(*(v108 - 8) + 56))(v250, 1, 1, v108);
    v110 = v249;
    sub_1000089F8(v105, v249, &qword_101183A20);
    v111 = sub_1004E34D0(v106, v107, v109, v110);
    v112 = v105;
    v113 = v262;
    sub_1000095E8(v112, &qword_101183A20);
    sub_1007E8344(v103, type metadata accessor for ContainerDetail.Source);
    v114 = *(v260 + 8);
    v114(v258, v89);
    v115 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v116 = sub_100137F64(v111, v115);
    sub_1000095E8(v266, &qword_101183A20);
    sub_1007E8344(v265, type metadata accessor for ContainerDetail.Source);
    v114(v259, v89);
    v117 = v269;
    *&v116[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v269[*v256] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    [v116 setPreferredTransition:v113];
    v118 = [v117 navigationController];
    if (v118)
    {
      v119 = v118;
      v120 = v243;
      UIViewController.traitOverrides.getter();
      v121 = type metadata accessor for UITraitOverrides();
      (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
      UINavigationController.push(_:traitOverrides:animated:)(v116, v120, 1);

      sub_1000095E8(v120, &unk_10119F3A0);
      v114(v268, v89);
      return;
    }

    v114(v268, v89);

    goto LABEL_13;
  }

  v122 = v269;
  if (v85 == enum case for RecentlyAddedMusicItem.musicMovie(_:) || v85 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
LABEL_18:
    v161 = *(v81 + 8);
    v267 = v81 + 8;
    v268 = v161;
    (v161)(v82, v84);
    v162 = v242;
    sub_100121C08(v83, v242);
    v164 = v240;
    v163 = v241;
    (*(v24 + 104))(v240, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v241);
    v165 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v168 = *(v24 + 8);
    v166 = v24 + 8;
    v167 = v168;
    (v168)(v164, v163);
    if (v165)
    {
      v245 = v166;
      v169 = v269;
      v170 = *(*&v269[*v235] + 48);
      swift_beginAccess();
      v171 = *(v170 + 80);
      v274[3] = *(v170 + 64);
      v274[4] = v171;
      v274[5] = *(v170 + 96);
      v275 = *(v170 + 112);
      v172 = *(v170 + 32);
      v274[0] = *(v170 + 16);
      v274[1] = v172;
      v274[2] = *(v170 + 48);
      sub_10003D868(v274, v271);
      v173 = v234;
      sub_100455348(v83, v234);
      sub_10003D90C(v274);
      v174 = v236;
      v175 = v237;
      if ((*(v236 + 48))(v173, 1, v237) == 1)
      {
        sub_1000095E8(v173, &unk_10118CDB0);
        v176 = Logger.playbackController.unsafeMutableAddressor();
        v177 = v227;
        v178 = v228;
        (*(v227 + 16))(v238, v176, v228);
        v179 = v218;
        v180 = v83;
        v181 = v263;
        v182 = v247;
        v247(v218, v180, v263);
        v183 = Logger.logObject.getter();
        LODWORD(v269) = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v183, v269))
        {
          v184 = swift_slowAlloc();
          v185 = swift_slowAlloc();
          v271[0] = v185;
          *v184 = 136315138;
          v182(v212, v179, v181);
          v186 = v167;
          v187 = String.init<A>(describing:)();
          v189 = v188;
          (v268)(v179, v181);
          v190 = sub_1000105AC(v187, v189, v271);

          *(v184 + 4) = v190;
          _os_log_impl(&_mh_execute_header, v183, v269, "Could not play recently added item=%s", v184, 0xCu);
          sub_10000959C(v185);

          (*(v227 + 8))(v238, v228);
          v186(v242, v241);
        }

        else
        {

          (v268)(v179, v181);
          (*(v177 + 8))(v238, v178);
          (v167)(v242, v163);
        }
      }

      else
      {
        v267 = a11;
        v195 = *(v174 + 32);
        v268 = v167;
        v196 = v221;
        v195(v221, v173, v175);
        v197 = v220;
        (*(v174 + 16))(v220, v196, v175);
        swift_storeEnumTagMultiPayload();
        v198 = v174;
        sub_10048CE30(v271);
        v270[0] = v169;
        v199 = v169;
        v200 = String.init<A>(reflecting:)();
        v270[3] = &type metadata for Player.CommandIssuerIdentity;
        v270[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v270[0] = v200;
        v270[1] = v201;
        v202 = v199;
        v210 = v169;
        v203 = v225;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v197, v271, 3, 0, 0, 1, 0, 1, v225, v210, v270);
        v204 = type metadata accessor for TaskPriority();
        v205 = v226;
        (*(*(v204 - 8) + 56))(v226, 1, 1, v204);
        v206 = v224;
        sub_1007E82DC(v203, v224, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v207 = static MainActor.shared.getter();
        v208 = (*(v222 + 80) + 32) & ~*(v222 + 80);
        v209 = swift_allocObject();
        *(v209 + 16) = v207;
        *(v209 + 24) = &protocol witness table for MainActor;
        sub_1007E7C44(v206, v209 + v208, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v205, v267, v209);

        sub_1007E8344(v203, type metadata accessor for PlaybackIntentDescriptor);
        (*(v198 + 8))(v196, v175);
        (v268)(v242, v241);
      }
    }

    else
    {
      sub_10048CE30(v271);
      v191 = v233;
      (*(v232 + 56))(v233, 1, 1, v68);
      a9(v274, v191);
      sub_1000095E8(v191, &unk_10118BCE0);
      v192 = v272;
      v193 = v273;
      v194 = sub_10000954C(v271, v272);
      sub_10053A5D0(v162, v194, v274, v192, v193);

      sub_10012BA6C(v274);
      (v167)(v162, v163);
      sub_10000959C(v271);
    }

    return;
  }

  if (v85 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v81 + 96))(v82, v84);
    v123 = v122;
    v124 = v231;
    v125 = v239;
    (*(v231 + 32))(v86, v82, v239);
    v126 = v86;
    v127 = [v123 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    LOBYTE(v123) = sub_10049CB78();

    LOBYTE(v127) = v123 | v254;
    v128 = *(v124 + 16);
    v129 = v230;
    v128(v230, v126, v125);
    v130 = sub_10010FC20(&qword_10118A430);
    v131 = *(v130 + 64);
    v132 = v265;
    *(v265 + *(v130 + 48)) = v127 & 1;
    v133 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
    *(v132 + v131) = 0;
    swift_storeEnumTagMultiPayload();
    v134 = type metadata accessor for URL();
    v135 = v266;
    (*(*(v134 - 8) + 56))(v266, 1, 1, v134);
    v136 = v229;
    v128(v229, v129, v125);
    v137 = v253;
    sub_1007E82DC(v132, v253, type metadata accessor for ContainerDetail.Source);
    v138 = v255;
    sub_1000089F8(v135, v255, &qword_101183A20);
    v139 = sub_100866288(v136, v137, 0, 0, v138, 0);
    v140 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v116 = sub_100137F48(v139, v140);
    sub_1000095E8(v135, &qword_101183A20);
    sub_1007E8344(v132, type metadata accessor for ContainerDetail.Source);
    v141 = *(v124 + 8);
    v142 = v129;
    v143 = v239;
    v141(v142, v239);
    v144 = v269;
    *&v116[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v269[*v256] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    v145 = v262;
    [v116 setPreferredTransition:v262];
    v146 = [v144 navigationController];
    if (v146)
    {
      v147 = v146;
      v148 = v243;
      UIViewController.traitOverrides.getter();
      v149 = type metadata accessor for UITraitOverrides();
      (*(*(v149 - 8) + 56))(v148, 0, 1, v149);
      UINavigationController.push(_:traitOverrides:animated:)(v116, v148, 1);

      sub_1000095E8(v148, &unk_10119F3A0);
      v141(v264, v143);
      return;
    }

    v141(v264, v143);

    goto LABEL_13;
  }

  if (v85 != enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    if (v85 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {

      (*(v81 + 8))(v82, v84);
      return;
    }

    goto LABEL_18;
  }

  (*(v81 + 96))(v82, v84);
  v151 = v215;
  v150 = v216;
  v152 = v217;
  (*(v216 + 32))(v215, v82, v217);
  v153 = v214;
  (*(v150 + 16))(v214, v151, v152);
  swift_storeEnumTagMultiPayload();
  v154 = [v122 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v155 = sub_10049CB78();

  v156 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController());
  v116 = sub_10061A47C(v153, v155 & 1);
  v157 = [v122 navigationController];
  if (!v157)
  {
    (*(v150 + 8))(v151, v152);

LABEL_13:
    return;
  }

  v158 = v157;
  v159 = v243;
  UIViewController.traitOverrides.getter();
  v160 = type metadata accessor for UITraitOverrides();
  (*(*(v160 - 8) + 56))(v159, 0, 1, v160);
  UINavigationController.push(_:traitOverrides:animated:)(v116, v159, 1);

  sub_1000095E8(v159, &unk_10119F3A0);
  (*(v150 + 8))(v151, v152);
}

id sub_1007D7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = a4();

  v8 = sub_1005FF72C();
  return v8;
}

void sub_1007D70E4(uint64_t a1, void *a2, int a3)
{
  v39 = a2;
  v38 = a3;
  v4 = type metadata accessor for MusicVideo();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v37 = &v34 - v7;
  v8 = type metadata accessor for RecentlyAddedMusicItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = *(v9 + 16);
  v16(&v34 - v14, a1, v8, v13);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 == enum case for RecentlyAddedMusicItem.album(_:))
  {
LABEL_2:
    (*(v9 + 8))(v15, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (v16)(v11, a1, v8);
    v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v20 = v19 + v10;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v9 + 32))(v21 + v19, v11, v8);
    *(v21 + v20) = v38 & 1;
    v44 = sub_1007E7F8C;
    v45 = v21;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10002BC98;
    v43 = &unk_1010C0C78;
    v22 = _Block_copy(&aBlock);

    [v39 addAnimations:v22];
    _Block_release(v22);
    return;
  }

  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    goto LABEL_4;
  }

  if (v17 != enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    if (v17 == enum case for RecentlyAddedMusicItem.playlist(_:) || v17 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      goto LABEL_2;
    }

LABEL_4:
    (*(v9 + 8))(v15, v8);
    return;
  }

  (*(v9 + 96))(v15, v8);
  v24 = v35;
  v23 = v36;
  v25 = *(v35 + 32);
  v26 = v37;
  v25(v37, v15, v36);
  swift_beginAccess();

  MusicLibrary.state<A>(for:)();

  if ((MusicVideo.supportsContainerNavigation(itemState:)() & 1) != 0 && (v27 = sub_10003169C()) != 0)
  {
    v28 = v27;
    v29 = v34;
    (*(v24 + 16))(v34, v26, v23);
    v30 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    v25((v31 + v30), v29, v23);
    v44 = sub_1007E84D0;
    v45 = v31;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10002BC98;
    v43 = &unk_1010C0C00;
    v32 = _Block_copy(&aBlock);

    [v39 addAnimations:v32];

    _Block_release(v32);

    (*(v24 + 8))(v37, v23);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
  }
}

void sub_1007D7658(uint64_t a1, void *a2, int a3)
{
  v39 = a2;
  v38 = a3;
  v4 = type metadata accessor for MusicVideo();
  v35 = *(v4 - 8);
  v36 = v4;
  v5 = *(v35 + 64);
  __chkstk_darwin(v4);
  __chkstk_darwin(v6);
  v37 = &v34 - v7;
  v8 = type metadata accessor for RecentlyAddedMusicItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = *(v9 + 16);
  v16(&v34 - v14, a1, v8, v13);
  v17 = (*(v9 + 88))(v15, v8);
  if (v17 == enum case for RecentlyAddedMusicItem.album(_:))
  {
LABEL_2:
    (*(v9 + 8))(v15, v8);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (v16)(v11, a1, v8);
    v19 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v20 = v19 + v10;
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v9 + 32))(v21 + v19, v11, v8);
    *(v21 + v20) = v38 & 1;
    v44 = sub_1007E7A38;
    v45 = v21;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10002BC98;
    v43 = &unk_1010C0778;
    v22 = _Block_copy(&aBlock);

    [v39 addAnimations:v22];
    _Block_release(v22);
    return;
  }

  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v17 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    goto LABEL_4;
  }

  if (v17 != enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    if (v17 == enum case for RecentlyAddedMusicItem.playlist(_:) || v17 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      goto LABEL_2;
    }

LABEL_4:
    (*(v9 + 8))(v15, v8);
    return;
  }

  (*(v9 + 96))(v15, v8);
  v24 = v35;
  v23 = v36;
  v25 = *(v35 + 32);
  v26 = v37;
  v25(v37, v15, v36);
  swift_beginAccess();

  MusicLibrary.state<A>(for:)();

  if ((MusicVideo.supportsContainerNavigation(itemState:)() & 1) != 0 && (v27 = sub_10003169C()) != 0)
  {
    v28 = v27;
    v29 = v34;
    (*(v24 + 16))(v34, v26, v23);
    v30 = (*(v24 + 80) + 24) & ~*(v24 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v28;
    v25((v31 + v30), v29, v23);
    v44 = sub_1007E7A34;
    v45 = v31;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10002BC98;
    v43 = &unk_1010C0700;
    v32 = _Block_copy(&aBlock);

    [v39 addAnimations:v32];

    _Block_release(v32);

    (*(v24 + 8))(v37, v23);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
  }
}

uint64_t sub_1007D7BCC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v11 - v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1007D53D4(a2, v7, a3 & 1, &unk_1010C0C38, &unk_1010C0CD8, sub_1007E81F8, &OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController, &OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController, sub_100376BCC, &unk_1010C0CB0, &unk_100EE3EB0);

    return sub_1000095E8(v7, &unk_10118BCE0);
  }

  return result;
}

uint64_t sub_1007D7D50(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v7 = (&v11 - v6);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_1007D53D4(a2, v7, a3 & 1, &unk_1010C0738, &unk_1010C07D8, sub_1007E7A50, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController, sub_100376F5C, &unk_1010C07B0, &unk_100ECA700);

    return sub_1000095E8(v7, &unk_10118BCE0);
  }

  return result;
}

unint64_t sub_1007D7F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *__return_ptr, char *), uint64_t a8, uint64_t a9)
{
  v126 = a8;
  v115 = a5;
  v116 = a7;
  v124 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v127 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_1011838D0);
  v122 = *(v13 - 8);
  v123 = *(v122 + 64);
  __chkstk_darwin(v13 - 8);
  v125 = &v107 - v14;
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v107 - v16;
  v18 = sub_10010FC20(&unk_1011845D0);
  v119 = *(v18 - 8);
  __chkstk_darwin(v18 - 8);
  v120 = v19;
  v121 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v130 = &v107 - v21;
  v22 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v107 - v23;
  v25 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v25 - 8);
  v117 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v118 = &v107 - v28;
  __chkstk_darwin(v29);
  v31 = &v107 - v30;
  __chkstk_darwin(v32);
  v34 = &v107 - v33;
  v35 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v35 - 8);
  v128 = &v107 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v129 = &v107 - v38;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v40 = Strong;
  v113 = v11;
  v114 = v10;
  sub_10010FC20(&unk_101183900);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100EBC6B0;
  v42 = v40;
  sub_10048CE30((v41 + 32));
  v43 = [v42 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v112 = v145[0];
  sub_1000089F8(a4, v24, &unk_10118CDB0);
  PlaybackIntentDescriptor.IntentType.init(_:)(v24, v34);
  memset(v145, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v44 = qword_101218AD8;
  sub_1000089F8(v34, v31, &unk_1011838E0);
  v45 = v44;
  v46 = UIViewController.playActivityInformation.getter();
  v110 = v47;
  v111 = v46;
  v49 = v48;
  v51 = v50;
  sub_1000089F8(v145, &v137, &unk_101183910);
  v109 = v45;
  if (*(&v138 + 1))
  {
    sub_100059A8C(&v137, &v141);
  }

  else
  {
    *&v146 = v42;
    sub_100009F78(0, &qword_101183D40);
    v53 = v42;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v149, &v141);
    }

    else
    {
      v151 = 0;
      v149 = 0u;
      v150 = 0u;
      *&v141 = v53;
      v54 = v53;
      v55 = String.init<A>(reflecting:)();
      v142 = &type metadata for Player.CommandIssuerIdentity;
      v143 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v141 = v55;
      *(&v141 + 1) = v56;
      if (*(&v150 + 1))
      {
        sub_1000095E8(&v149, &unk_101183910);
      }
    }

    v45 = v109;
    if (*(&v138 + 1))
    {
      sub_1000095E8(&v137, &unk_101183910);
    }
  }

  v57 = v129;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v45, v31, v111, v110, v49, v51, &v141, v129);

  sub_1000095E8(v145, &unk_101183910);
  sub_1000095E8(v34, &unk_1011838E0);
  v58 = type metadata accessor for Actions.PlaybackContext();
  v59 = *(v58 - 8);
  (*(v59 + 56))(v57, 0, 1, v58);
  v60 = type metadata accessor for PlaylistContext();
  (*(*(v60 - 8) + 56))(v130, 1, 1, v60);
  v61 = type metadata accessor for IndexPath();
  v62 = *(v61 - 8);
  (*(v62 + 16))(v17, v115, v61);
  (*(v62 + 56))(v17, 0, 1, v61);
  v116(v145, v17);
  sub_1000095E8(v17, &unk_10118BCE0);
  sub_100008FE4(v41 + 32, v144);

  sub_1000089F8(v145, &v137, &unk_1011845E0);
  if (v140 == 1)
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v152 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v42, &v149, &v141);
    v63 = v128;
    if (v140 != 1)
    {
      sub_1000095E8(&v137, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v137, &v141);
    v63 = v128;
  }

  swift_getObjectType();
  v64 = swift_conformsToProtocol2();
  if (v64)
  {
    v110 = v64;
    v65 = v42;
    v116 = v42;
  }

  else
  {
    v116 = 0;
    v110 = 0;
  }

  v111 = a9;
  v115 = swift_allocBox();
  v67 = v66;
  sub_1000089F8(v129, v63, &unk_10118AB20);
  v68 = *(v59 + 48);
  if (v68(v63, 1, v58) == 1)
  {
    v69 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v70 = v118;
    (*(*(v69 - 8) + 56))(v118, 1, 1, v69);
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    sub_1000089F8(v70, v117, &unk_1011838E0);
    v71 = v109;
    v72 = UIViewController.playActivityInformation.getter();
    v108 = v74;
    v109 = v73;
    v76 = v75;
    sub_1000089F8(&v137, &v135, &unk_101183910);
    if (v136)
    {
      sub_100059A8C(&v135, &v146);
    }

    else
    {
      v107 = v71;
      v134 = v42;
      sub_100009F78(0, &qword_101183D40);
      v77 = v42;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v131, &v146);
        v63 = v128;
      }

      else
      {
        v133 = 0;
        v131 = 0u;
        v132 = 0u;
        *&v146 = v77;
        v78 = v77;
        v79 = String.init<A>(reflecting:)();
        *(&v147 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v148 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v146 = v79;
        *(&v146 + 1) = v80;
        v63 = v128;
        if (*(&v132 + 1))
        {
          sub_1000095E8(&v131, &unk_101183910);
        }
      }

      v71 = v107;
      if (v136)
      {
        sub_1000095E8(&v135, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v71, v117, v72, v109, v76, v108, &v146, v67);
    sub_1000095E8(&v137, &unk_101183910);
    sub_1000095E8(v118, &unk_1011838E0);
    if (v68(v63, 1, v58) != 1)
    {
      sub_1000095E8(v63, &unk_10118AB20);
    }
  }

  else
  {
    sub_1007E7C44(v63, v67, type metadata accessor for Actions.PlaybackContext);
  }

  v81 = *(v58 + 28);
  sub_1000089F8(&v67[v81], &v146, &unk_101183910);
  if (*(&v147 + 1))
  {
    sub_100059A8C(&v146, &v137);
  }

  else
  {
    *&v137 = v42;
    v82 = v42;
    v83 = String.init<A>(reflecting:)();
    *(&v138 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v139 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v137 = v83;
    *(&v137 + 1) = v84;
    if (*(&v147 + 1))
    {
      sub_1000095E8(&v146, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_100EBDC20;
  *(v85 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v85 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v85 + 32) = 0x4D747865746E6F43;
  *(v85 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v137, v85 + 72);
  v86 = static Player.CommandIssuer<>.combining(_:)();
  v88 = v87;

  sub_10000959C(&v137);
  *(&v138 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v139 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v137 = v86;
  *(&v137 + 1) = v88;
  sub_10006B010(&v137, &v67[v81], &unk_101183910);
  sub_100008FE4(v144, &v137);
  sub_10010FC20(&unk_10118AB50);
  v128 = String.init<A>(describing:)();
  v118 = v89;
  v117 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v144, &v135);
  sub_10012B7A8(&v141, &v137);
  v90 = v125;
  sub_1000089F8(v124, v125, &unk_1011838D0);
  v91 = v121;
  sub_1000089F8(v130, v121, &unk_1011845D0);
  v92 = (*(v122 + 80) + 160) & ~*(v122 + 80);
  v93 = (v123 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = (*(v119 + 80) + v94 + 8) & ~*(v119 + 80);
  v123 = (v95 + v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = v42;
  v96 = (v95 + v120 + 31) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  sub_100059A8C(&v135, v97 + 16);
  *(v97 + 56) = v112;
  sub_10012B828(&v137, v97 + 64);
  sub_10003D17C(v90, v97 + v92, &unk_1011838D0);
  *(v97 + v93) = v117;
  *(v97 + v94) = v115;
  sub_10003D17C(v91, v97 + v95, &unk_1011845D0);
  v98 = v97 + v123;
  v99 = v110;
  *v98 = v116;
  *(v98 + 8) = v99;
  *(v98 + 16) = 2;
  v100 = (v97 + v96);
  *v100 = variable initialization expression of Library.Context.playlistVariants;
  v100[1] = 0;
  swift_unknownObjectRetain();

  v101 = v127;
  UUID.init()();
  v102 = UUID.uuidString.getter();
  v104 = v103;
  (*(v113 + 8))(v101, v114);
  v153._countAndFlagsBits = v128;
  v153._object = v118;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v153, v102, v104, v111, v97, &v146);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v141);
  sub_10000959C(v144);

  v52 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v141 = v146;
  sub_100015BB0(&v141);
  v137 = v147;
  sub_100015BB0(&v137);

  v105 = v124;

  sub_1000095E8(v145, &unk_1011845E0);
  sub_1000095E8(v130, &unk_1011845D0);
  sub_1000095E8(v129, &unk_10118AB20);
  return v52;
}

uint64_t sub_1007D8F40@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v105 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v104 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for UIContentUnavailableConfiguration();
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118F670);
  __chkstk_darwin(v7 - 8);
  v103 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v94 - v10;
  __chkstk_darwin(v11);
  v101 = &v94 - v12;
  __chkstk_darwin(v13);
  v102 = &v94 - v14;
  v15 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v15);
  v96 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = &v94 - v18;
  __chkstk_darwin(v19);
  v100 = &v94 - v20;
  __chkstk_darwin(v21);
  v106 = &v94 - v22;
  __chkstk_darwin(v23);
  v25 = &v94 - v24;
  __chkstk_darwin(v26);
  v28 = &v94 - v27;
  v107 = v1;
  v29 = *(v1 + 48);
  v30 = *(*v29 + 96);
  swift_beginAccess();
  sub_1007E82DC(v29 + v30, v28, _s9PlaylistsVMa);
  v31 = &v28[v15[9]];
  v33 = *v31;
  v32 = *(v31 + 1);

  sub_1007E8344(v28, _s9PlaylistsVMa);

  if ((v32 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v32) & 0xF;
  }

  else
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v110);
  v35 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v29 + v30, v25, _s9PlaylistsVMa);
  v36 = *&v25[v15[10]];

  sub_1007E8344(v25, _s9PlaylistsVMa);
  v37 = *(v36 + 16);

  if (!v37)
  {
    v106 = v30;
    v107 = v15;
    v44 = v103;
    if (v34)
    {
      static UIContentUnavailableConfiguration.search()();
LABEL_11:

      return sub_100014984(v110);
    }

    v50 = v106;
    sub_1007E82DC(v29 + v106, v25, _s9PlaylistsVMa);
    v51 = v25[8];
    sub_1007E8344(v25, _s9PlaylistsVMa);
    if (v51)
    {
      v109[3] = v107;
      v109[4] = sub_1007E83AC(&qword_1011A3E48, _s9PlaylistsVMa);
      v52 = sub_10001C8B8(v109);
      sub_1007E82DC(v29 + v50, v52, _s9PlaylistsVMa);
      sub_100446B3C(v109, v108);

      sub_100014984(v110);
      return sub_10000959C(v109);
    }

    sub_1007E82DC(v29 + v50, v25, _s9PlaylistsVMa);
    v53 = *v25;

    sub_1007E8344(v25, _s9PlaylistsVMa);
    v109[0] = v53;
    type metadata accessor for MusicLibrary();
    v109[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v54 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v54 & 1) == 0)
    {
      v55 = v29 + v50;
      v56 = v100;
      sub_1007E82DC(v55, v100, _s9PlaylistsVMa);
      v57 = (v56 + *(v107 + 32));
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v58 = _s9PlaylistsV5ScopeVMa(0);
      v59 = sub_1000060E4(v58, qword_101218730);
      v60 = sub_1001982EC(v57, v59);
      v61 = v101;
      if (v60)
      {
        sub_1007E8344(v56, _s9PlaylistsVMa);
      }

      else
      {
        sub_1000089F8(v57 + *(v58 + 20), v101, &unk_10118F670);
        sub_1007E8344(v56, _s9PlaylistsVMa);
        v64 = type metadata accessor for Playlist.Folder();
        (*(*(v64 - 8) + 48))(v61, 1, v64);
        sub_1000095E8(v61, &unk_10118F670);
      }

      sub_100448498(v108);
      goto LABEL_11;
    }

    LODWORD(v102) = v111;
    if (v111 == 2)
    {

      v63 = v107;
    }

    else
    {
      v63 = v107;
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v65 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if ((BYTE9(v110[0]) & 1) != 0 && (BYTE2(v110[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v90 = v98;
      v91 = sub_1000060E4(v98, qword_101218D08);
      (*(v99 + 16))(v108, v91, v90);
      goto LABEL_11;
    }

LABEL_31:
    v66 = (*(*v35 + 328))(v62);
    if (v66 >> 30 == 1 || v66 >> 30 == 2 && v66 == 2147483652)
    {
      v67 = v98;
      v68 = v99;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v69 = sub_1000060E4(v67, qword_101218D20);
      (*(v68 + 16))(v108, v69, v67);
      goto LABEL_11;
    }

    v70 = v97;
    sub_1007E82DC(v29 + v50, v97, _s9PlaylistsVMa);
    v71 = (v70 + *(v63 + 32));
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v72 = _s9PlaylistsV5ScopeVMa(0);
    v73 = sub_1000060E4(v72, qword_101218730);
    if (sub_1001982EC(v71, v73))
    {
      sub_1007E8344(v70, _s9PlaylistsVMa);
      v74 = 6;
    }

    else
    {
      v75 = v95;
      sub_1000089F8(v71 + *(v72 + 20), v95, &unk_10118F670);
      sub_1007E8344(v70, _s9PlaylistsVMa);
      v76 = type metadata accessor for Playlist.Folder();
      v77 = (*(*(v76 - 8) + 48))(v75, 1, v76);
      sub_1000095E8(v75, &unk_10118F670);
      if (v77 == 1)
      {
        v74 = 9;
      }

      else
      {
        v74 = 4;
      }
    }

    if (sub_10045EC58(v74) == 0x646956636973756DLL && v78 == 0xEB00000000736F65)
    {
    }

    else
    {
      v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v79 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v80 = [objc_opt_self() sharedRestrictionsMonitor];
    v81 = [v80 allowsMusicVideos];

    if ((v81 & 1) == 0)
    {
      v85 = v94;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v108);
      (*(v99 + 8))(v85, v98);
      v86 = String._bridgeToObjectiveC()();
      v87 = [objc_opt_self() _systemImageNamed:v86];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v88 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v88(v109, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v89 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v89(v109, 0);
      goto LABEL_11;
    }

LABEL_49:
    v82 = v96;
    sub_1007E82DC(v29 + v106, v96, _s9PlaylistsVMa);
    v83 = (v82 + *(v107 + 32));
    if (sub_1001982EC(v83, v73))
    {
      sub_1007E8344(v82, _s9PlaylistsVMa);
      v84 = 6;
    }

    else
    {
      sub_1000089F8(v83 + *(v72 + 20), v44, &unk_10118F670);
      sub_1007E8344(v82, _s9PlaylistsVMa);
      v92 = type metadata accessor for Playlist.Folder();
      v93 = (*(*(v92 - 8) + 48))(v44, 1, v92);
      sub_1000095E8(v44, &unk_10118F670);
      if (v93 == 1)
      {
        v84 = 9;
      }

      else
      {
        v84 = 4;
      }
    }

    sub_10044894C(v102, v84, v108);
    goto LABEL_11;
  }

  v38 = v29 + v30;
  v39 = v106;
  sub_1007E82DC(v38, v106, _s9PlaylistsVMa);
  v40 = (v39 + v15[8]);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v41 = _s9PlaylistsV5ScopeVMa(0);
  v42 = sub_1000060E4(v41, qword_101218730);
  if (sub_1001982EC(v40, v42))
  {
    sub_1007E8344(v39, _s9PlaylistsVMa);
    v43 = 6;
  }

  else
  {
    v46 = v102;
    sub_1000089F8(v40 + *(v41 + 20), v102, &unk_10118F670);
    sub_1007E8344(v39, _s9PlaylistsVMa);
    v47 = type metadata accessor for Playlist.Folder();
    v48 = (*(*(v47 - 8) + 48))(v46, 1, v47);
    sub_1000095E8(v46, &unk_10118F670);
    if (v48 == 1)
    {
      v43 = 9;
    }

    else
    {
      v43 = 4;
    }
  }

  v49 = swift_allocObject();
  swift_weakInit();

  sub_100447A3C(v43, v34 != 0, sub_1007E83A4, v49, v108);

  sub_100014984(v110);
}

uint64_t sub_1007DA098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *, uint64_t *)@<X5>, uint64_t a7@<X8>)
{
  v53 = a6;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v57 = a1;
  v58 = a2;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for UIContentUnavailableConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v7 + 48);
  swift_beginAccess();
  v18 = *(v17 + 48);
  if ((v18 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v18) & 0xF;
  }

  else
  {
    v19 = *(v17 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v63);
  v20 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v17 + 88) + 16))
  {
    v21 = *(v17 + 16);
    v22 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v21, v19 != 0, v58, v22, a7);

    sub_100014984(v63);
  }

  v57 = v16;
  v58 = v14;
  if (!v19)
  {
    v24 = a7;
    if (*(v17 + 32))
    {
      v60[3] = v54;
      v60[4] = v55();
      v25 = swift_allocObject();
      v26 = *(v17 + 16);
      v27 = *(v17 + 32);
      v28 = *(v17 + 48);
      v29 = *(v17 + 64);
      v30 = *(v17 + 96);
      v61[4] = *(v17 + 80);
      v61[5] = v30;
      v60[0] = v25;
      v62 = *(v17 + 112);
      v61[2] = v28;
      v61[3] = v29;
      v61[0] = v26;
      v61[1] = v27;
      memmove((v25 + 16), (v17 + 16), 0x68uLL);
      v53(v61, v59);
      sub_100446B3C(v60, a7);
      sub_100014984(v63);
      return sub_10000959C(v60);
    }

    v31 = v13;
    *&v61[0] = *(v17 + 24);
    v32 = v20;
    type metadata accessor for MusicLibrary();

    v59[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v33 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v33 & 1) == 0)
    {
      sub_100448498(v24);
LABEL_35:

      return sub_100014984(v63);
    }

    v56 = v24;
    v34 = v64;
    if (v64 > 1u)
    {
      v35 = v11;
      if (v64 == 2)
      {

        v37 = v31;
LABEL_17:
        if ((BYTE9(v63[0]) & 1) != 0 && (BYTE2(v63[0]) & 1) == 0)
        {
          v51 = v58;
          if (qword_10117F730 != -1)
          {
            swift_once();
          }

          v52 = sub_1000060E4(v37, qword_101218D08);
          (*(v51 + 16))(v56, v52, v37);
          goto LABEL_35;
        }

LABEL_19:
        v39 = (*(*v32 + 328))(v36);
        v40 = v58;
        if (v39 >> 30 == 1 || v39 >> 30 == 2 && v39 == 2147483652)
        {
          if (qword_10117F738 != -1)
          {
            swift_once();
          }

          v41 = sub_1000060E4(v37, qword_101218D20);
          (*(v40 + 16))(v56, v41, v37);
          goto LABEL_35;
        }

        v55 = v35;
        if (sub_10045EC58(*(v17 + 16)) == 0x646956636973756DLL && v42 == 0xEB00000000736F65)
        {
        }

        else
        {
          v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v43 & 1) == 0)
          {
LABEL_30:
            sub_10044894C(v34, *(v17 + 16), v56);
            goto LABEL_35;
          }
        }

        v44 = [objc_opt_self() sharedRestrictionsMonitor];
        v45 = [v44 allowsMusicVideos];

        if ((v45 & 1) == 0)
        {
          v46 = v57;
          static UIContentUnavailableConfiguration.empty()();
          sub_100446820(v56);
          (*(v40 + 8))(v46, v37);
          v47 = String._bridgeToObjectiveC()();
          v48 = [objc_opt_self() _systemImageNamed:v47];

          UIContentUnavailableConfiguration.image.setter();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          UIContentUnavailableConfiguration.secondaryText.setter();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v49 = UIContentUnavailableConfiguration.button.modify();
          UIButton.Configuration.title.setter();
          v49(v61, 0);
          sub_100009F78(0, &qword_1011839A0);
          UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v50 = UIContentUnavailableConfiguration.buttonProperties.modify();
          UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
          v50(v61, 0);
          goto LABEL_35;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v35 = v11;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v37 = v31;
    if ((v38 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v63);
}

uint64_t sub_1007DA8D8@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v62 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UIContentUnavailableConfiguration();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v63 = v1;
  v16 = *(v1 + 48);
  v17 = *(*v16 + 96);
  swift_beginAccess();
  sub_1007E82DC(v16 + v17, v15, _s11MusicVideosVMa);
  v18 = &v15[*(v7 + 32)];
  v20 = *v18;
  v19 = *(v18 + 1);

  sub_1007E8344(v15, _s11MusicVideosVMa);

  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v66);
  v22 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v16 + v17, v12, _s11MusicVideosVMa);
  v23 = *&v12[*(v7 + 36)];

  sub_1007E8344(v12, _s11MusicVideosVMa);
  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = v21 != 0;
    sub_1007E82DC(v16 + v17, v12, _s11MusicVideosVMa);
    v26 = *v12;
    sub_1007E8344(v12, _s11MusicVideosVMa);
    v27 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v26, v25, sub_1007E8290, v27, v64);

    sub_100014984(v66);
  }

  v57 = v9;
  v63 = v17;
  v29 = v64;
  if (v21)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_8:

    return sub_100014984(v66);
  }

  v30 = v63;
  v31 = v16;
  sub_1007E82DC(v16 + v63, v12, _s11MusicVideosVMa);
  v32 = v12[16];
  sub_1007E8344(v12, _s11MusicVideosVMa);
  if ((v32 & 1) == 0)
  {
    sub_1007E82DC(v16 + v30, v12, _s11MusicVideosVMa);
    v34 = *(v12 + 1);

    sub_1007E8344(v12, _s11MusicVideosVMa);
    v65[0] = v34;
    type metadata accessor for MusicLibrary();
    v35 = v30;
    v65[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v36 & 1) == 0)
    {
      sub_1007E82DC(v16 + v35, v12, _s11MusicVideosVMa);
      sub_1007E8344(v12, _s11MusicVideosVMa);
      sub_100448498(v29);
      goto LABEL_8;
    }

    v37 = v67;
    if (v67 == 2)
    {

      v39 = v61;
    }

    else
    {
      v39 = v61;
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((BYTE9(v66[0]) & 1) != 0 && (BYTE2(v66[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v42 = qword_101218D08;
      goto LABEL_35;
    }

LABEL_19:
    v41 = (*(*v22 + 328))(v38);
    if (v41 >> 30 == 1 || v41 >> 30 == 2 && v41 == 2147483652)
    {
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v42 = qword_101218D20;
LABEL_35:
      v55 = sub_1000060E4(v39, v42);
      (*(v60 + 16))(v29, v55, v39);
      goto LABEL_8;
    }

    v43 = v57;
    sub_1007E82DC(v31 + v63, v57, _s11MusicVideosVMa);
    v44 = *v43;
    sub_1007E8344(v43, _s11MusicVideosVMa);
    if (sub_10045EC58(v44) == 0x646956636973756DLL && v45 == 0xEB00000000736F65)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
LABEL_30:
        sub_1007E82DC(v31 + v63, v12, _s11MusicVideosVMa);
        v49 = *v12;
        sub_1007E8344(v12, _s11MusicVideosVMa);
        sub_10044894C(v37, v49, v29);
        goto LABEL_8;
      }
    }

    v47 = [objc_opt_self() sharedRestrictionsMonitor];
    v48 = [v47 allowsMusicVideos];

    if ((v48 & 1) == 0)
    {
      v50 = v59;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v29);
      (*(v60 + 8))(v50, v39);
      v51 = String._bridgeToObjectiveC()();
      v52 = [objc_opt_self() _systemImageNamed:v51];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v53 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v53(v65, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v54 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v54(v65, 0);
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v65[3] = v7;
  v65[4] = sub_1007E83AC(&qword_1011A3E40, _s11MusicVideosVMa);
  v33 = sub_10001C8B8(v65);
  sub_1007E82DC(v16 + v30, v33, _s11MusicVideosVMa);
  sub_100446B3C(v65, v29);

  sub_100014984(v66);
  return sub_10000959C(v65);
}

uint64_t sub_1007DB404@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  swift_beginAccess();
  v10 = *(v9 + 5);
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = *(v9 + 4) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v41);
  v12 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v9 + 6) + 16))
  {
    v13 = v9[80];
    v14 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v13, v11 != 0, sub_1007E8288, v14, a1);

    sub_100014984(v41);
  }

  v36 = v6;
  if (!v11)
  {
    if (v9[24])
    {
      v38[3] = &_s5SongsVN;
      v38[4] = sub_1003BEC68();
      v38[0] = swift_allocObject();
      v16 = *(v9 + 2);
      v17 = *(v9 + 4);
      v39[2] = *(v9 + 3);
      v39[3] = v17;
      v40 = v9[80];
      v39[1] = v16;
      v39[0] = *(v9 + 1);
      memmove((v38[0] + 16), v9 + 16, 0x41uLL);
      sub_10021817C(v39, v37);
      sub_100446B3C(v38, a1);
      sub_100014984(v41);
      return sub_10000959C(v38);
    }

    v35 = a1;
    *&v39[0] = *(v9 + 2);
    v18 = v12;
    type metadata accessor for MusicLibrary();

    v37[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v19 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      sub_100448498(v35);
LABEL_34:

      return sub_100014984(v41);
    }

    v20 = v42;
    if (v42 == 2)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((BYTE9(v41[0]) & 1) != 0 && (BYTE2(v41[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v34 = sub_1000060E4(v5, qword_101218D08);
      (*(v36 + 16))(v35, v34, v5);
      goto LABEL_34;
    }

LABEL_18:
    v23 = (*(*v18 + 328))(v21);
    if (v23 >> 30 == 1 || v23 >> 30 == 2 && v23 == 2147483652)
    {
      v24 = v36;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v25 = sub_1000060E4(v5, qword_101218D20);
      (*(v24 + 16))(v35, v25, v5);
      goto LABEL_34;
    }

    if (sub_10045EC58(v9[80]) == 0x646956636973756DLL && v26 == 0xEB00000000736F65)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v20, v9[80], v35);
        goto LABEL_34;
      }
    }

    v28 = [objc_opt_self() sharedRestrictionsMonitor];
    v29 = [v28 allowsMusicVideos];

    if ((v29 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v35);
      (*(v36 + 8))(v8, v5);
      v30 = String._bridgeToObjectiveC()();
      v31 = [objc_opt_self() _systemImageNamed:v30];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v32 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v32(v39, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v33 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v33(v39, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v41);
}

uint64_t sub_1007DBC74@<X0>(uint64_t a1@<X8>)
{
  v64 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v62 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UIContentUnavailableConfiguration();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  v63 = v1;
  v16 = *(v1 + 48);
  v17 = *(*v16 + 96);
  swift_beginAccess();
  sub_1007E82DC(v16 + v17, v15, _s10TVEpisodesVMa);
  v18 = &v15[v7[8]];
  v20 = *v18;
  v19 = *(v18 + 1);

  sub_1007E8344(v15, _s10TVEpisodesVMa);

  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v66);
  v22 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v16 + v17, v12, _s10TVEpisodesVMa);
  v23 = *&v12[v7[12]];

  sub_1007E8344(v12, _s10TVEpisodesVMa);
  v24 = *(v23 + 16);

  if (v24)
  {
    v25 = v21 != 0;
    sub_1007E82DC(v16 + v17, v12, _s10TVEpisodesVMa);
    v26 = *v12;
    sub_1007E8344(v12, _s10TVEpisodesVMa);
    v27 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v26, v25, sub_1007E7E58, v27, v64);

    sub_100014984(v66);
  }

  v57 = v9;
  v63 = v17;
  v29 = v64;
  if (v21)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_8:

    return sub_100014984(v66);
  }

  v30 = v63;
  v31 = v16;
  sub_1007E82DC(v16 + v63, v12, _s10TVEpisodesVMa);
  v32 = v12[v7[7]];
  sub_1007E8344(v12, _s10TVEpisodesVMa);
  if ((v32 & 1) == 0)
  {
    sub_1007E82DC(v16 + v30, v12, _s10TVEpisodesVMa);
    v34 = *(v12 + 1);

    sub_1007E8344(v12, _s10TVEpisodesVMa);
    v65[0] = v34;
    type metadata accessor for MusicLibrary();
    v35 = v30;
    v65[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v36 & 1) == 0)
    {
      sub_1007E82DC(v16 + v35, v12, _s10TVEpisodesVMa);
      sub_1007E8344(v12, _s10TVEpisodesVMa);
      sub_100448498(v29);
      goto LABEL_8;
    }

    v37 = v67;
    if (v67 == 2)
    {

      v39 = v61;
    }

    else
    {
      v39 = v61;
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((BYTE9(v66[0]) & 1) != 0 && (BYTE2(v66[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v42 = qword_101218D08;
      goto LABEL_35;
    }

LABEL_19:
    v41 = (*(*v22 + 328))(v38);
    if (v41 >> 30 == 1 || v41 >> 30 == 2 && v41 == 2147483652)
    {
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v42 = qword_101218D20;
LABEL_35:
      v55 = sub_1000060E4(v39, v42);
      (*(v60 + 16))(v29, v55, v39);
      goto LABEL_8;
    }

    v43 = v57;
    sub_1007E82DC(v31 + v63, v57, _s10TVEpisodesVMa);
    v44 = *v43;
    sub_1007E8344(v43, _s10TVEpisodesVMa);
    if (sub_10045EC58(v44) == 0x646956636973756DLL && v45 == 0xEB00000000736F65)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
LABEL_30:
        sub_1007E82DC(v31 + v63, v12, _s10TVEpisodesVMa);
        v49 = *v12;
        sub_1007E8344(v12, _s10TVEpisodesVMa);
        sub_10044894C(v37, v49, v29);
        goto LABEL_8;
      }
    }

    v47 = [objc_opt_self() sharedRestrictionsMonitor];
    v48 = [v47 allowsMusicVideos];

    if ((v48 & 1) == 0)
    {
      v50 = v59;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v29);
      (*(v60 + 8))(v50, v39);
      v51 = String._bridgeToObjectiveC()();
      v52 = [objc_opt_self() _systemImageNamed:v51];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v53 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v53(v65, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v54 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v54(v65, 0);
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v65[3] = v7;
  v65[4] = sub_1007E83AC(&qword_10118D060, _s10TVEpisodesVMa);
  v33 = sub_10001C8B8(v65);
  sub_1007E82DC(v16 + v30, v33, _s10TVEpisodesVMa);
  sub_100446B3C(v65, v29);

  sub_100014984(v66);
  return sub_10000959C(v65);
}

uint64_t sub_1007DC7A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v96 = a1;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v91 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v90 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UIContentUnavailableConfiguration();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v95);
  v82 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v83 = &v82 - v10;
  __chkstk_darwin(v11);
  v87 = &v82 - v12;
  __chkstk_darwin(v13);
  v93 = &v82 - v14;
  v15 = _s6AlbumsVMa(0);
  __chkstk_darwin(v15);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v82 - v18;
  __chkstk_darwin(v19);
  v21 = &v82 - v20;
  __chkstk_darwin(v22);
  v92 = &v82 - v23;
  __chkstk_darwin(v24);
  v26 = &v82 - v25;
  __chkstk_darwin(v27);
  v29 = &v82 - v28;
  v94 = v2;
  v30 = *(v2 + 48);
  v31 = *(*v30 + 96);
  swift_beginAccess();
  sub_1007E82DC(v30 + v31, v29, _s6AlbumsVMa);
  v32 = &v29[v15[7]];
  v34 = *v32;
  v33 = *(v32 + 1);

  sub_1007E8344(v29, _s6AlbumsVMa);

  if ((v33 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v33) & 0xF;
  }

  else
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v98);
  v36 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v30 + v31, v26, _s6AlbumsVMa);
  v37 = *&v26[v15[8]];

  sub_1007E8344(v26, _s6AlbumsVMa);
  v38 = *(v37 + 16);

  if (v38)
  {
    v39 = v92;
    sub_1007E82DC(v30 + v31, v92, _s6AlbumsVMa);
    v40 = v39 + v15[6];
    v41 = v93;
    sub_1007E82DC(v40, v93, _s6AlbumsV5ScopeOMa);
    sub_1007E8344(v39, _s6AlbumsVMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 3)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v49 = 3;
LABEL_13:
        v44 = swift_allocObject();
        swift_weakInit();

        sub_100447A3C(v49, v35 != 0, sub_1007E7E50, v44, v96);

        sub_100014984(v98);
      }
    }

    else
    {
      sub_1007E8344(v41, _s6AlbumsV5ScopeOMa);
    }

    v49 = 0;
    goto LABEL_13;
  }

  v93 = v21;
  v94 = v31;
  if (v35)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_9:

    return sub_100014984(v98);
  }

  v45 = v15;
  v46 = v94;
  sub_1007E82DC(v30 + v94, v26, _s6AlbumsVMa);
  v47 = v26[8];
  sub_1007E8344(v26, _s6AlbumsVMa);
  if ((v47 & 1) == 0)
  {
    sub_1007E82DC(v30 + v46, v26, _s6AlbumsVMa);
    v50 = *v26;

    sub_1007E8344(v26, _s6AlbumsVMa);
    v97[0] = v50;
    type metadata accessor for MusicLibrary();
    v97[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v51 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v51 & 1) == 0)
    {
      v54 = v93;
      sub_1007E82DC(v30 + v46, v93, _s6AlbumsVMa);
      v55 = v87;
      sub_1007E82DC(v54 + *(v45 + 24), v87, _s6AlbumsV5ScopeOMa);
      sub_1007E8344(v54, _s6AlbumsVMa);
      if (swift_getEnumCaseMultiPayload() < 3)
      {
        sub_1007E8344(v55, _s6AlbumsV5ScopeOMa);
      }

      sub_100448498(v96);
      goto LABEL_9;
    }

    v52 = v45;
    LODWORD(v93) = v99;
    if (v99 > 1u)
    {
      v53 = v88;
      if (v99 == 2)
      {

        v57 = v89;
LABEL_25:
        if ((BYTE9(v98[0]) & 1) != 0 && (BYTE2(v98[0]) & 1) == 0)
        {
          if (qword_10117F730 != -1)
          {
            swift_once();
          }

          v79 = v86;
          v80 = sub_1000060E4(v86, qword_101218D08);
          (*(v85 + 16))(v96, v80, v79);
          goto LABEL_9;
        }

LABEL_27:
        v59 = (*(*v36 + 328))(v56);
        if (v59 >> 30 == 1 || v59 >> 30 == 2 && v59 == 2147483652)
        {
          v60 = v86;
          v61 = v85;
          if (qword_10117F738 != -1)
          {
            swift_once();
          }

          v62 = sub_1000060E4(v60, qword_101218D20);
          (*(v61 + 16))(v96, v62, v60);
          goto LABEL_9;
        }

        sub_1007E82DC(v30 + v94, v53, _s6AlbumsVMa);
        v63 = v83;
        sub_1007E82DC(v53 + *(v52 + 24), v83, _s6AlbumsV5ScopeOMa);
        sub_1007E8344(v53, _s6AlbumsVMa);
        v64 = swift_getEnumCaseMultiPayload();
        if (v64 >= 3)
        {
          if (v64 != 3)
          {
            v81 = 3;
LABEL_38:
            if (sub_10045EC58(v81) == 0x646956636973756DLL && v65 == 0xEB00000000736F65)
            {

              v66 = v84;
            }

            else
            {
              v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v66 = v84;
              if ((v67 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            v68 = [objc_opt_self() sharedRestrictionsMonitor];
            v69 = [v68 allowsMusicVideos];

            if ((v69 & 1) == 0)
            {
              static UIContentUnavailableConfiguration.empty()();
              sub_100446820(v96);
              (*(v85 + 8))(v57, v86);
              v75 = String._bridgeToObjectiveC()();
              v76 = [objc_opt_self() _systemImageNamed:v75];

              UIContentUnavailableConfiguration.image.setter();
              String.LocalizationValue.init(stringLiteral:)();
              static Locale.current.getter();
              String.init(localized:table:bundle:locale:comment:)();
              UIContentUnavailableConfiguration.secondaryText.setter();
              String.LocalizationValue.init(stringLiteral:)();
              static Locale.current.getter();
              String.init(localized:table:bundle:locale:comment:)();
              v77 = UIContentUnavailableConfiguration.button.modify();
              UIButton.Configuration.title.setter();
              v77(v97, 0);
              sub_100009F78(0, &qword_1011839A0);
              UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
              v78 = UIContentUnavailableConfiguration.buttonProperties.modify();
              UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
              v78(v97, 0);
              goto LABEL_9;
            }

LABEL_43:
            sub_1007E82DC(v30 + v94, v66, _s6AlbumsVMa);
            v70 = v82;
            sub_1007E82DC(v66 + *(v52 + 24), v82, _s6AlbumsV5ScopeOMa);
            sub_1007E8344(v66, _s6AlbumsVMa);
            v71 = swift_getEnumCaseMultiPayload();
            v72 = v71 == 3;
            if (v71 >= 3)
            {
              v73 = v96;
              v74 = v93;
              if (!v72)
              {
                sub_10044894C(v93, 3, v96);
                goto LABEL_9;
              }
            }

            else
            {
              sub_1007E8344(v70, _s6AlbumsV5ScopeOMa);
              v73 = v96;
              v74 = v93;
            }

            sub_10044894C(v74, 0, v73);
            goto LABEL_9;
          }
        }

        else
        {
          sub_1007E8344(v63, _s6AlbumsV5ScopeOMa);
        }

        v81 = 0;
        goto LABEL_38;
      }
    }

    else
    {
      v53 = v88;
    }

    v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v57 = v89;
    if ((v58 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v97[3] = v45;
  v97[4] = sub_1007E83AC(&qword_10118CE80, _s6AlbumsVMa);
  v48 = sub_10001C8B8(v97);
  sub_1007E82DC(v30 + v46, v48, _s6AlbumsVMa);
  sub_100446B3C(v97, v96);

  sub_100014984(v98);
  return sub_10000959C(v97);
}

uint64_t sub_1007DD678@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  swift_beginAccess();
  v10 = *(v9 + 48);
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = *(v9 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v42);
  v12 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v9 + 56) + 16))
  {
    v13 = *(v9 + 16);
    v14 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v13, v11 != 0, sub_1007E7DD0, v14, a1);

    sub_100014984(v42);
  }

  v38 = v6;
  if (!v11)
  {
    if (*(v9 + 32))
    {
      v40[3] = &_s7ArtistsVN;
      v40[4] = sub_1003BEAB8();
      v40[0] = swift_allocObject();
      v16 = *(v9 + 32);
      v17 = *(v9 + 48);
      v18 = *(v9 + 80);
      v41[3] = *(v9 + 64);
      v41[4] = v18;
      v41[1] = v16;
      v41[2] = v17;
      v41[0] = *(v9 + 16);
      memmove((v40[0] + 16), (v9 + 16), 0x50uLL);
      sub_10030DC78(v41, v39);
      sub_100446B3C(v40, a1);
      sub_100014984(v42);
      return sub_10000959C(v40);
    }

    v37 = a1;
    *&v41[0] = *(v9 + 24);
    v19 = v12;
    type metadata accessor for MusicLibrary();

    v39[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      sub_100448498(v37);
LABEL_34:

      return sub_100014984(v42);
    }

    v21 = v43;
    if (v43 == 2)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((BYTE9(v42[0]) & 1) != 0 && (BYTE2(v42[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v35 = sub_1000060E4(v5, qword_101218D08);
      (*(v38 + 16))(v37, v35, v5);
      goto LABEL_34;
    }

LABEL_18:
    v24 = (*(*v19 + 328))(v22);
    if (v24 >> 30 == 1 || v24 >> 30 == 2 && v24 == 2147483652)
    {
      v25 = v38;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v26 = sub_1000060E4(v5, qword_101218D20);
      (*(v25 + 16))(v37, v26, v5);
      goto LABEL_34;
    }

    if (sub_10045EC58(*(v9 + 16)) == 0x646956636973756DLL && v27 == 0xEB00000000736F65)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v21, *(v9 + 16), v37);
        goto LABEL_34;
      }
    }

    v29 = [objc_opt_self() sharedRestrictionsMonitor];
    v30 = [v29 allowsMusicVideos];

    if ((v30 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v37);
      (*(v38 + 8))(v8, v5);
      v31 = String._bridgeToObjectiveC()();
      v32 = [objc_opt_self() _systemImageNamed:v31];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v33 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v33(v41, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v34(v41, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v42);
}

uint64_t sub_1007DDEE4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for UIContentUnavailableConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 48);
  swift_beginAccess();
  v10 = *(v9 + 48);
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = *(v9 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v44);
  v12 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v9 + 80) + 16))
  {
    v13 = *(v9 + 16);
    v14 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v13, v11 != 0, sub_1007E7DC8, v14, a1);

    sub_100014984(v44);
  }

  v40 = v6;
  if (!v11)
  {
    if (*(v9 + 32))
    {
      v42[3] = &_s6MoviesVN;
      v42[4] = sub_1003BEDFC();
      v42[0] = swift_allocObject();
      v16 = *(v9 + 16);
      v17 = *(v9 + 32);
      v18 = *(v9 + 48);
      v19 = *(v9 + 64);
      v20 = *(v9 + 96);
      v43[4] = *(v9 + 80);
      v43[5] = v20;
      v43[2] = v18;
      v43[3] = v19;
      v43[0] = v16;
      v43[1] = v17;
      memmove((v42[0] + 16), (v9 + 16), 0x60uLL);
      sub_1001103E0(v43, v41);
      sub_100446B3C(v42, a1);
      sub_100014984(v44);
      return sub_10000959C(v42);
    }

    v39 = a1;
    *&v43[0] = *(v9 + 24);
    v21 = v12;
    type metadata accessor for MusicLibrary();

    v41[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v22 & 1) == 0)
    {
      sub_100448498(v39);
LABEL_34:

      return sub_100014984(v44);
    }

    v23 = v45;
    if (v45 == 2)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((BYTE9(v44[0]) & 1) != 0 && (BYTE2(v44[0]) & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v37 = sub_1000060E4(v5, qword_101218D08);
      (*(v40 + 16))(v39, v37, v5);
      goto LABEL_34;
    }

LABEL_18:
    v26 = (*(*v21 + 328))(v24);
    if (v26 >> 30 == 1 || v26 >> 30 == 2 && v26 == 2147483652)
    {
      v27 = v40;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v28 = sub_1000060E4(v5, qword_101218D20);
      (*(v27 + 16))(v39, v28, v5);
      goto LABEL_34;
    }

    if (sub_10045EC58(*(v9 + 16)) == 0x646956636973756DLL && v29 == 0xEB00000000736F65)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v23, *(v9 + 16), v39);
        goto LABEL_34;
      }
    }

    v31 = [objc_opt_self() sharedRestrictionsMonitor];
    v32 = [v31 allowsMusicVideos];

    if ((v32 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v39);
      (*(v40 + 8))(v8, v5);
      v33 = String._bridgeToObjectiveC()();
      v34 = [objc_opt_self() _systemImageNamed:v33];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v35 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v35(v43, 0);
      sub_100009F78(0, &qword_1011839A0);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v36 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v36(v43, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v44);
}

uint64_t sub_1007DE6F8()
{
  v0 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v0);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v5 = *(*v4 + 96);
    swift_beginAccess();
    sub_1007E82DC(v4 + v5, v2, _s9PlaylistsVMa);
    v6 = *(v0 + 40);
    v7 = *&v2[v6];
    *&v2[v6] = &_swiftEmptySetSingleton;
    v8 = sub_10018FCA0(&_swiftEmptySetSingleton, v7);

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      v18[3] = sub_10010FC20(&unk_10118CD70);
      v18[4] = sub_1007E7DD8(&unk_101182910, sub_100178D84);
      v18[5] = sub_1007E7DD8(&unk_101182920, sub_100178E50);
      v18[0] = &_swiftEmptySetSingleton;
      v10 = *(v0 + 32);
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v11 = _s9PlaylistsV5ScopeVMa(0);
      v12 = sub_1000060E4(v11, qword_101218730);
      v13 = sub_1001982EC(&v2[v10], v12);
      v14 = "LibraryPlaylists";
      v15 = 0xD000000000000010;
      if (v13)
      {
        v15 = 0xD000000000000011;
      }

      else
      {
        v14 = "v32@0:8@16@24";
      }

      v17[0] = v15;
      v17[1] = v14 | 0x8000000000000000;

      v16._countAndFlagsBits = 0x704F7265746C6946;
      v16._object = 0xEC0000006E6F6974;
      String.append(_:)(v16);

      NSUserDefaults.encodeValue(_:forKey:)(v18);

      sub_10000959C(v18);
    }

    sub_1003777F4(v2);
  }

  return result;
}

uint64_t sub_1007DE9C4(uint64_t a1, void (*a2)(_OWORD *, uint64_t *), void (*a3)(_OWORD *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    swift_beginAccess();
    v7 = *(v6 + 64);
    v17[4] = *(v6 + 80);
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    v17[5] = *(v6 + 96);
    v18 = *(v6 + 112);
    v17[2] = v10;
    v17[3] = v7;
    v17[0] = v8;
    v17[1] = v9;
    v11 = *(v6 + 16);
    v12 = *(v6 + 32);
    v13 = *(v6 + 48);
    v14 = *(v6 + 64);
    v20 = *(v6 + 80);
    v19[2] = v13;
    v19[3] = v14;
    v19[0] = v11;
    v19[1] = v12;
    v15 = *(v6 + 96);
    v23 = *(v6 + 112);
    v22 = v15;
    a2(v17, &v16);

    v21 = &_swiftEmptySetSingleton;
    a3(v19);
  }

  return result;
}

uint64_t sub_1007DEACC()
{
  v0 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v5 = *(*v4 + 96);
    swift_beginAccess();
    sub_1007E82DC(v4 + v5, v2, _s11MusicVideosVMa);
    sub_1006FE930(&_swiftEmptySetSingleton);
    sub_100377E84(v2);
  }

  return result;
}

uint64_t sub_1007DEBD0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    swift_beginAccess();
    v2 = *(v1 + 48);
    v10[1] = *(v1 + 32);
    v10[2] = v2;
    v3 = *(v1 + 64);
    v11 = *(v1 + 80);
    v10[3] = v3;
    v9 = *(v1 + 32);
    v10[0] = *(v1 + 16);
    v4 = v2;
    v8 = *(v1 + 16);
    *&v7[9] = *(v1 + 65);
    *v7 = *(v1 + 56);
    sub_10021817C(v10, &v12);
    v5 = sub_10018FCA0(&_swiftEmptySetSingleton, v4);

    if ((v5 & 1) == 0)
    {
      v6 = [objc_opt_self() standardUserDefaults];
      *(&v13 + 1) = sub_10010FC20(&unk_10118CD70);
      v14 = sub_1007E7DD8(&unk_101182910, sub_100178D84);
      *&v15[0] = sub_1007E7DD8(&unk_101182920, sub_100178E50);
      *&v12 = &_swiftEmptySetSingleton;
      NSUserDefaults.encodeValue(_:forKey:)(&v12);

      sub_10000959C(&v12);
    }

    v12 = v8;
    v13 = v9;
    v14 = &_swiftEmptySetSingleton;
    v15[0] = *v7;
    *(v15 + 9) = *&v7[9];
    sub_100379CC8(&v12);
  }

  return result;
}

uint64_t sub_1007DEDC0()
{
  v0 = _s10TVEpisodesVMa(0);
  __chkstk_darwin(v0);
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v5 = *(*v4 + 96);
    swift_beginAccess();
    sub_1007E82DC(v4 + v5, v2, _s10TVEpisodesVMa);
    v6 = *(v0 + 48);

    *&v2[v6] = &_swiftEmptySetSingleton;
    sub_10037745C(v2);
  }

  return result;
}

uint64_t sub_1007DEEE0()
{
  v0 = _s6AlbumsVMa(0);
  __chkstk_darwin(v0);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 48);
    v5 = *(*v4 + 96);
    swift_beginAccess();
    sub_1007E82DC(v4 + v5, v2, _s6AlbumsVMa);
    v6 = *(v0 + 32);
    v7 = *&v2[v6];
    *&v2[v6] = &_swiftEmptySetSingleton;
    LOBYTE(v5) = sub_10018FCA0(&_swiftEmptySetSingleton, v7);

    if ((v5 & 1) == 0)
    {
      v8 = [objc_opt_self() standardUserDefaults];
      v9[3] = sub_10010FC20(&unk_10118CD70);
      v9[4] = sub_1007E7DD8(&unk_101182910, sub_100178D84);
      v9[5] = sub_1007E7DD8(&unk_101182920, sub_100178E50);
      v9[0] = &_swiftEmptySetSingleton;
      sub_10028A59C();
      NSUserDefaults.encodeValue(_:forKey:)(v9);

      sub_10000959C(v9);
    }

    sub_100378808(v2);
  }

  return result;
}

uint64_t sub_1007DF100()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    swift_beginAccess();
    v2 = v1[3];
    v13[1] = v1[2];
    v3 = v1[5];
    v15 = v1[4];
    v16 = v3;
    v14 = v2;
    v4 = v1[2];
    v13[0] = v1[1];
    v5 = *(&v14 + 1);
    v10 = v1[1];
    v11 = v4;
    v12 = *(v1 + 6);
    v8 = v1[4];
    v9 = v1[5];
    sub_10030DC78(v13, &v17);
    v6 = sub_10018FCA0(&_swiftEmptySetSingleton, v5);

    if ((v6 & 1) == 0)
    {
      v7 = [objc_opt_self() standardUserDefaults];
      *(&v18 + 1) = sub_10010FC20(&unk_10118CD70);
      v19 = sub_1007E7DD8(&unk_101182910, sub_100178D84);
      v20 = sub_1007E7DD8(&unk_101182920, sub_100178E50);
      *&v17 = &_swiftEmptySetSingleton;
      NSUserDefaults.encodeValue(_:forKey:)(&v17);

      sub_10000959C(&v17);
    }

    v17 = v10;
    v18 = v11;
    v19 = v12;
    v20 = &_swiftEmptySetSingleton;
    v21 = v8;
    v22 = v9;
    sub_100378C30(&v17);
  }

  return result;
}

uint64_t sub_1007DF2E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 48);
    swift_beginAccess();
    v2 = *(v1 + 48);
    v3 = *(v1 + 64);
    v4 = *(v1 + 96);
    v12[4] = *(v1 + 80);
    v5 = *(v1 + 16);
    v6 = *(v1 + 32);
    v12[5] = v4;
    v12[2] = v2;
    v12[3] = v3;
    v12[1] = v6;
    v12[0] = v5;
    v7 = *(v1 + 16);
    v8 = *(v1 + 32);
    v9 = *(v1 + 64);
    v13[2] = *(v1 + 48);
    v13[3] = v9;
    v13[0] = v7;
    v13[1] = v8;
    v10 = *(v1 + 88);
    v16 = *(v1 + 104);
    v15 = v10;
    sub_1001103E0(v12, v11);

    v14 = &_swiftEmptySetSingleton;
    sub_100379614(v13);
  }

  return result;
}

uint64_t sub_1007DF3D4(uint64_t a1, void (*a2)(_OWORD *, uint64_t *), void (*a3)(_OWORD *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 48);
    swift_beginAccess();
    v7 = *(v6 + 64);
    v17[4] = *(v6 + 80);
    v8 = *(v6 + 16);
    v9 = *(v6 + 32);
    v10 = *(v6 + 48);
    v17[5] = *(v6 + 96);
    v18 = *(v6 + 112);
    v17[2] = v10;
    v17[3] = v7;
    v17[0] = v8;
    v17[1] = v9;
    v11 = *(v6 + 16);
    v12 = *(v6 + 32);
    v13 = *(v6 + 48);
    v14 = *(v6 + 64);
    v20 = *(v6 + 80);
    v19[2] = v13;
    v19[3] = v14;
    v19[0] = v11;
    v19[1] = v12;
    v15 = *(v6 + 96);
    v23 = *(v6 + 112);
    v22 = v15;
    a2(v17, &v16);

    v21 = &_swiftEmptySetSingleton;
    a3(v19);
  }

  return result;
}

id sub_1007DF4E0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  v8 = sub_10010FC20(&unk_10118A650);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  v10 = sub_10010FC20(qword_101196EA0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  v12 = sub_10010FC20(&unk_1011A3DB0);
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] = 0;
  v13 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController;
  v14 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v13] = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController] = 0;
  v15 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  type metadata accessor for MusicLibrary();
  v31[0] = 10;
  v32 = static MusicLibrary.shared.getter();
  v33 = a1;
  v34 = 0;
  v35 = 0xE000000000000000;
  v36 = 260;
  v37 = 0;
  v38 = 0xE000000000000000;
  v39 = _swiftEmptyArrayStorage;
  v40 = &_swiftEmptySetSingleton;
  v41 = 0;
  v42 = 0xE000000000000000;
  v43 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011A3DC0);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController] = sub_10003D358(v31);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController] = sub_10059A684(0xD000000000000014, 0x8000000100E57B80, 0);
  v30.receiver = v2;
  v30.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  v18 = v17;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  if (a1)
  {
    v19 = 14;
  }

  else
  {
    v19 = 13;
  }

  String.init(localized:table:bundle:locale:comment:)();
  v20 = String._bridgeToObjectiveC()();

  [v17 setTitle:v20];

  UIViewController.playActivityFeatureIdentifier.setter(v19);
  v21 = [v17 traitCollection];

  v22 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(v20) = v23;

  if ((v20 & 1) == 0)
  {
    v24 = [v17 navigationItem];
    [v24 setLargeTitleDisplayMode:v22];
  }

  sub_10010FC20(&unk_101182D80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBC6B0;
  v26 = sub_100217F14();
  *(v25 + 32) = &type metadata for LibraryFilterTrait;
  *(v25 + 40) = v26;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6B0;
  v28 = sub_100137E8C();
  *(v27 + 32) = &type metadata for MusicLibraryTrait;
  *(v27 + 40) = v28;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_1007DFA58()
{
  v1 = v0;
  v44.receiver = v0;
  v44.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v2 = sub_1007DFF78();
  v3 = sub_1007E0370();
  [v2 setCollectionViewLayout:v3];

  v4 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] setPrefetchDataSource:v5];
  v6 = *&v1[v4];
  v7 = sub_100189858();
  v9 = v8;

  v10 = (v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  *v10 = v7;
  v10[1] = v9;
  sub_100020438(v11);
  v12 = (v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  *v12 = sub_1007E0684;
  v12[1] = 0;
  sub_100020438(v13);
  LODWORD(v6) = *(*&v1[v4] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56);
  v14 = [v1 navigationItem];
  v15 = v14;
  if (v6 == 1)
  {
    [v14 setRightBarButtonItem:0];
  }

  else
  {
    sub_100009F78(0, &qword_101181580);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v17 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1007E7CDC, v16);

    [v15 setRightBarButtonItem:v17];

    v15 = v17;
  }

  v18 = *&v1[v4];
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = &v18[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v21 = *&v18[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  *v20 = sub_1007E7CE4;
  v20[1] = v19;
  v22 = v18;

  sub_100020438(v21);

  v23 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController];
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = *(v23 + 16);
  *(v23 + 16) = sub_1007E7CEC;
  *(v23 + 24) = v24;

  sub_100020438(v25);

  v26 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = *(v26 + 16);
  *(v26 + 16) = sub_1007E7CF8;
  *(v26 + 24) = v27;

  sub_100020438(v28);

  v41[3] = sub_10010FC20(&unk_10118A650);
  v29 = sub_10001C8B8(v41);
  sub_1007E1998(v29);
  v42[3] = sub_10010FC20(qword_101196EA0);
  v30 = sub_10001C8B8(v42);
  sub_1007E1C20(v30);
  v43[3] = sub_10010FC20(&unk_1011A3DB0);
  v31 = sub_10001C8B8(v43);
  sub_1007E1E98(v31);
  swift_arrayDestroy();
  v32 = *&v1[v4];
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v34 = swift_allocObject();
  *(v34 + 24) = 0u;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 72) = 0u;
  *(v34 + 88) = 1;
  *(v34 + 96) = 0;
  v35 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v36 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v36 - 8) + 56))(v34 + v35, 1, 1, v36);
  *(v34 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v34 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v34 + 16) = v32;
  *(v34 + 24) = sub_1007E7D00;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v37 = *(v34 + 56);
  *(v34 + 64) = 0;
  *(v34 + 48) = 0;
  *(v34 + 56) = 0;
  v38 = v32;
  swift_retain_n();
  sub_100020438(v37);
  v39 = *(v34 + 72);
  *(v34 + 72) = 0;
  *(v34 + 80) = 0;
  sub_100020438(v39);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController] = v34;

  return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

id sub_1007DFF78()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView];
LABEL_6:
    v43 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1u, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v45.receiver = v16;
    v45.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v45, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v44.receiver = v27;
    v44.super_class = v14;
    objc_msgSendSuper2(&v44, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];

      v41 = UIView.withAccessibilityIdentifier(_:)(v39, v40);

      v42 = *&v1[v10];
      *&v1[v10] = v41;
      v12 = v41;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1007E0370()
{
  v1 = sub_1007DFF78();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2 == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView);
    if ((*(*(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController) + 32) & 1) == 0)
    {
      v12 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
      v5 = v3;
      v6 = [v12 init];
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = static MPCPlayerCommandRequest.isAvailable(in:);
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      v23 = sub_10059B870;
      v24 = v15;
      v19 = _NSConcreteStackBlock;
      v20 = 1107296256;
      v11 = &unk_1010C0A70;
      goto LABEL_6;
    }
  }

  v4 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v5 = v3;
  v6 = [v4 init];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v9 + 80) = 0;
  *(v9 + 88) = v7;
  v10 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v23 = sub_1002193FC;
  v24 = v9;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v11 = &unk_1010C0A20;
LABEL_6:
  v21 = sub_1005A63A8;
  v22 = v11;
  v16 = _Block_copy(&v19);

  v17 = [v10 initWithSectionProvider:v16 configuration:{v6, v19, v20}];

  _Block_release(v16);

  return v17;
}

unint64_t sub_1007E0684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v4 - 8);
  v40 = &v35 - v5;
  v6 = sub_10010FC20(&unk_1011A3E20);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_101196FB0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = type metadata accessor for RecentlyAddedMusicItem();
  v36 = *(v13 - 8);
  v37 = v13;
  __chkstk_darwin(v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10010FC20(&qword_101196FA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v35 - v17;
  v19 = sub_10010FC20(&unk_101196F90);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v35 - v21;
  sub_1000089F8(a1, v43, &unk_101183F30);
  if (v44)
  {
    v23 = swift_dynamicCast();
    (*(v20 + 56))(v18, v23 ^ 1u, 1, v19);
    if ((*(v20 + 48))(v18, 1, v19) != 1)
    {
      (*(v20 + 32))(v22, v18, v19);
      v24 = MusicLibrarySectionedResponse.sections.getter();
      result = IndexPath.section.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v24 + 16))
      {
        (*(v10 + 16))(v12, v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * result, v9);

        MusicLibrarySection.items.getter();
        (*(v10 + 8))(v12, v9);
        IndexPath.item.getter();
        v26 = v39;
        MusicItemCollection.subscript.getter();
        (*(v38 + 8))(v8, v26);
        v27 = v40;
        RecentlyAddedMusicItem.artworkViewModel.getter(v40);
        (*(v36 + 8))(v15, v37);
        (*(v20 + 8))(v22, v19);
        v28 = type metadata accessor for ArtworkImage.ViewModel(0);
        if ((*(*(v28 - 8) + 48))(v27, 1, v28) != 1)
        {
          v32 = type metadata accessor for Artwork();
          v33 = *(v32 - 8);
          v34 = v42;
          (*(v33 + 16))(v42, v27, v32);
          sub_1007E8344(v27, type metadata accessor for ArtworkImage.ViewModel);
          return (*(v33 + 56))(v34, 0, 1, v32);
        }

        v29 = &unk_10118A5E0;
        v30 = v27;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1000095E8(v43, &unk_101183F30);
    (*(v20 + 56))(v18, 1, 1, v19);
  }

  v29 = &qword_101196FA0;
  v30 = v18;
LABEL_9:
  sub_1000095E8(v30, v29);
  v31 = type metadata accessor for Artwork();
  return (*(*(v31 - 8) + 56))(v42, 1, 1, v31);
}

void sub_1007E0CB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v6 = sub_1007DFF78();
      v7 = sub_1007E0370();
      sub_100189E04(v7);

      v8 = *(*&v5[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56);
      v9 = [v5 navigationItem];
      v10 = v9;
      if (v8 == 1)
      {
        [v9 setRightBarButtonItem:0];
      }

      else
      {
        sub_100009F78(0, &qword_101181580);
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v12 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1007E84CC, v11);

        [v10 setRightBarButtonItem:v12];

        v10 = v12;
      }
    }
  }
}

void sub_1007E0E3C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1007DFF78();
    v3 = sub_1007E0370();

    sub_100189E04(v3);
  }
}

uint64_t sub_1007E0EC4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = sub_10010FC20(&unk_101196F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v47 = &v43 - v7;
  v8 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v8 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = sub_10010FC20(&qword_101196FA0);
  v49 = *(v14 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v14 - 8);
  v50 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v48 = &v43 - v17;
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v22 = Strong;
  v45 = a2;
  v46 = a3;
  v51 = v20;
  RequestResponse.Revision.content.getter(v13);
  v23 = sub_10010FC20(&unk_10118D0A0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v13, 1, v23) == 1)
  {
    sub_1000095E8(v13, &unk_10118D090);
    v25 = 1;
    v26 = v51;
  }

  else
  {
    v26 = v51;
    (*(v6 + 16))(v51, v13, v5);
    sub_1000095E8(v13, &unk_10118D0A0);
    v25 = 0;
  }

  (*(v6 + 56))(v26, v25, 1, v5);
  v44 = sub_1007DFF78();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v24(v10, 1, v23) == 1)
  {
    sub_1000095E8(v10, &unk_10118D090);
    v43 = 0;
  }

  else
  {
    v28 = v47;
    (*(v6 + 16))(v47, v10, v5);
    sub_1000095E8(v10, &unk_10118D0A0);
    v43 = MusicLibrarySectionedResponse.sections.getter();
    (*(v6 + 8))(v28, v5);
  }

  v30 = v45;
  v29 = v46;
  v31 = v48;
  v32 = v51;
  sub_1000089F8(v51, v48, &qword_101196FA0);
  if ((*(v6 + 48))(v31, 1, v5) == 1)
  {
    sub_1000095E8(v31, &qword_101196FA0);
    v33 = 0;
  }

  else
  {
    v33 = MusicLibrarySectionedResponse.sections.getter();
    (*(v6 + 8))(v31, v5);
  }

  v34 = v50;
  sub_1000089F8(v32, v50, &qword_101196FA0);
  v35 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v36 = swift_allocObject();
  v36[2] = v30;
  v36[3] = v29;
  v36[4] = v22;
  sub_10003D17C(v34, v36 + v35, &qword_101196FA0);
  v37 = swift_allocObject();
  *(v37 + 16) = v22;
  v38 = v22;

  v39 = sub_10010FC20(&unk_101196FB0);
  v40 = sub_1005BF070();
  v42 = v39;
  v41 = v44;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v43, v33, 0, 0, 1, 1, sub_1007E7D08, v36, sub_1007E1690, 0, sub_10011F028, 0, sub_1007E7D7C, v37, 0, 0, v42, v40);

  return sub_1000095E8(v32, &qword_101196FA0);
}

uint64_t sub_1007E14D4(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&qword_101196FA0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  a1(v8);
  v11 = *(a3 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController);
  sub_1000089F8(a4, v10, &qword_101196FA0);
  v12 = sub_10010FC20(&unk_101196F90);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1000095E8(v10, &qword_101196FA0);
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    *(&v19 + 1) = v12;
    v14 = sub_10001C8B8(&v18);
    (*(v13 + 32))(v14, v10, v12);
  }

  v15 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v18, v11 + v15, &unk_101183F30);
  return swift_endAccess();
}

uint64_t sub_1007E1690()
{
  type metadata accessor for RecentlyAddedMusicItem();
  sub_1007E83AC(&qword_101197010, &type metadata accessor for RecentlyAddedMusicItem);
  sub_1007E83AC(&qword_101197018, &type metadata accessor for RecentlyAddedMusicItem);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

id sub_1007E1750(char *a1)
{
  v2 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&unk_101196F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v4);

  v9 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v9 - 8) + 48))(v4, 1, v9) == 1)
  {
    sub_1000095E8(v4, &unk_10118D090);
    v10 = 1;
  }

  else
  {
    (*(v6 + 16))(v8, v4, v5);
    sub_1000095E8(v4, &unk_10118D0A0);
    v11 = MusicLibrarySectionedResponse.isEmpty.getter();
    (*(v6 + 8))(v8, v5);
    v10 = !v11;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v12 = sub_1007DFF78();
  [v12 setBouncesVertically:v10 & 1];

  return [*&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v10 & 1];
}

uint64_t sub_1007E1998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118C540);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_10118C540);
  v10 = sub_10010FC20(&unk_10118A650);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_10118C540);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_10118C540);
  return swift_endAccess();
}

uint64_t sub_1007E1C20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101197170);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101197170);
  v10 = sub_10010FC20(qword_101196EA0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101197170);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &qword_101197170);
  return swift_endAccess();
}

uint64_t sub_1007E1E98@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011A3E00);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011A3E00);
  v10 = sub_10010FC20(&unk_1011A3DB0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011A3E00);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v9, &unk_1011A3E00);
  return swift_endAccess();
}

uint64_t sub_1007E2110(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for RecentlyAddedMusicItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController;

    sub_10037DB00(a1, v7);

    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      sub_1000095E8(v7, &unk_101197040);
      return 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      v15 = *(*&v13[v14] + 48);
      swift_beginAccess();
      v16 = *(v15 + 80);
      v24[3] = *(v15 + 64);
      v24[4] = v16;
      v24[5] = *(v15 + 96);
      v25 = *(v15 + 112);
      v17 = *(v15 + 32);
      v24[0] = *(v15 + 16);
      v24[1] = v17;
      v24[2] = *(v15 + 48);
      sub_10003D868(v24, &v23);
      sub_100455348(v11, v4);
      sub_10003D90C(v24);
      v18 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v4, 1, v18) == 1)
      {
        sub_1000095E8(v4, &unk_10118CDB0);
        v20 = 0;
      }

      else
      {
        v20 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v19 + 8))(v4, v18);
      }

      v21 = sub_1007989EC(v20, &off_10109C500);

      (*(v9 + 8))(v11, v8);
      return v21;
    }
  }

  return result;
}

uint64_t sub_1007E24BC(char a1)
{
  v2 = v1;
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillAppear:", a1 & 1);
  v4 = sub_1007DFF78();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (!v5)
  {
    return RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  v6 = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1007E7CD4;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1007E9F28;
  v10[3] = &unk_1010C0930;
  v8 = _Block_copy(v10);

  [v6 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1007E2640()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

uint64_t sub_1007E270C(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22.receiver = v1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidAppear:", a1 & 1, v5);
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = *(*&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController] + 48);
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = v8;

  if (v10 == 1)
  {
    v12 = MetricsEvent.Page.libraryRecentlyDownloaded.unsafeMutableAddressor();
  }

  else
  {
    v12 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
  }

  sub_1007E82DC(v12, v7, type metadata accessor for MetricsEvent.Page);

  v13 = sub_10053771C();
  v15 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v16 = qword_101218AD0;
  v17 = GroupActivitiesManager.hasJoined.getter();
  v18 = GroupActivitiesManager.participantsCount.getter();
  v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v11) + 0xA0))(v7, v13, v15, v17 & 1, v18, *(v16 + v19));

  return sub_1007E8344(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_1007E2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[0] = a1;
  v23[1] = a4;
  v4 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10010FC20(&unk_101196F90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - v9;
  v11 = sub_10010FC20(&unk_101196FB0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v23 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v20 = sub_10010FC20(&unk_10118D0A0);
    if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
    {
      sub_1000095E8(v6, &unk_10118D090);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D0A0);
    v21 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v22 = IndexPath.section.getter();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *(v21 + 16))
    {
      (*(v12 + 16))(v14, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v22, v11);

      (*(v12 + 32))(v17, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v23[2], v23[3], v24);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v17, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1007E2E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011A3DD8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_1011A3DE0);
    v11 = _s21RecentlyAddedGridCellVMa(255);
    v12 = sub_1007E83AC(&qword_101197198, _s21RecentlyAddedGridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_1011A3DF0, &qword_1011A3DD8);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007E3068(uint64_t a1)
{
  v2 = _s21RecentlyAddedGridCellVMa(0);
  __chkstk_darwin(v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  v6 = sub_1007DFF78();
  v7 = *&v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  *&v4[*(v2 + 20)] = v7;
  sub_1007E83AC(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1007E83AC(&qword_101197198, _s21RecentlyAddedGridCellVMa);

  View.artworkCaching(owner:)();

  return sub_1007E8344(v4, _s21RecentlyAddedGridCellVMa);
}

void sub_1007E3228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_1011A3E10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v17[-2] = a3;
    v17[-1] = v12;
    v13 = v12;
    sub_10010FC20(&qword_1011971B8);
    v14 = _s21RecentlyAddedListCellVMa(255);
    v15 = sub_1007E83AC(&qword_101197190, _s21RecentlyAddedListCellVMa);
    v17[0] = v14;
    v17[1] = v15;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    static Edge.Set.vertical.getter();
    v17[3] = v4;
    v17[4] = sub_100020674(&qword_1011A3E18, &qword_1011A3E10);
    sub_10001C8B8(v17);
    UIHostingConfiguration.margins(_:_:)();
    v16(v10, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007E34F8(uint64_t a1)
{
  v2 = _s21RecentlyAddedListCellVMa(0);
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  *&v4[*(v2 + 20)] = vdupq_n_s64(0x4050000000000000uLL);
  sub_1007E83AC(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_1007E83AC(&qword_101197190, _s21RecentlyAddedListCellVMa);

  View.artworkCaching(owner:)();

  return sub_1007E8344(v4, _s21RecentlyAddedListCellVMa);
}

uint64_t sub_1007E3698@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v15 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_1007E7C44(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
  sub_1007E82DC(v18, v8, type metadata accessor for MetricsEvent.Page);
  v19 = type metadata accessor for MetricsEvent.Page(0);
  v20 = v5;
  v21 = *(*(v19 - 8) + 56);
  v21(v8, 0, 1, v19);
  v40 = v20;
  sub_1000089F8(v8, v20, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v22 = sub_10053771C();
  v38 = v23;
  v39 = v22;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v24 = qword_101218AD0;
  v37 = GroupActivitiesManager.hasJoined.getter();
  v36 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v8, &unk_1011838F0);
  v25 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v26 = *(v24 + v25);
  v27 = v16[5];
  v21(&a1[v27], 1, 1, v19);
  v28 = v16[7];
  v29 = &a1[v16[6]];
  v30 = v16[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v40, &a1[v27], &unk_1011838F0);
  v31 = v38;
  *v29 = v39;
  v29[1] = v31;
  *&a1[v28] = 0;
  *&a1[v30] = 0;
  v32 = &a1[v16[9]];
  *v32 = v37 & 1;
  *(v32 + 1) = v36;
  *(v32 + 2) = v26;
  sub_1007E82DC(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

uint64_t sub_1007E3CB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10010FC20(&unk_10118A650);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v9 == a3)
  {
    goto LABEL_7;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    strcpy(v15, "Unknown kind=");
    v15[7] = -4864;
    v12._countAndFlagsBits = a2;
    v12._object = a3;
    String.append(_:)(v12);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1007E1998(v8);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v6 + 8))(v8, v5);
  return v13;
}

void *sub_1007E3FD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  v5 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v5 - 8);
  v69 = &v64 - v6;
  v7 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for UICellAccessory.DisplayedState();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_1011A3DB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - v12;
  v14 = sub_10010FC20(qword_101196EA0);
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v64 - v15;
  v17 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v17 - 8);
  v75 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v74 = (&v64 - v20);
  __chkstk_darwin(v21);
  v23 = &v64 - v22;
  __chkstk_darwin(v24);
  v73 = &v64 - v25;
  __chkstk_darwin(v26);
  v77 = &v64 - v27;
  sub_10037DB00(a2, &v64 - v27);
  v28 = sub_1007DFF78();
  v29 = v28[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v29 & 1) != 0 || (*(*&v3[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController] + 32))
  {
    v73 = v3;
    sub_1007E1E98(v13);
    v30 = v77;
    v31 = sub_1007FEBE4(v13, a2, v77);
    (*(v11 + 8))(v13, v10);
    sub_1000089F8(v30, v23, &unk_101197040);
    v32 = type metadata accessor for RecentlyAddedMusicItem();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if ((v34)(v23, 1, v32) != 1)
    {
      v36 = v74;
      sub_1000089F8(v23, v74, &unk_101197040);
      v37 = (*(v33 + 88))(v36, v32);
      if (v37 == enum case for RecentlyAddedMusicItem.album(_:))
      {
        goto LABEL_8;
      }

      if (v37 == enum case for RecentlyAddedMusicItem.musicMovie(_:) || v37 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
      {
        (*(v33 + 8))(v36, v32);
        goto LABEL_4;
      }

      if (v37 == enum case for RecentlyAddedMusicItem.playlist(_:) || v37 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
      {
LABEL_8:
        (*(v33 + 8))(v36, v32);
        sub_1000095E8(v23, &unk_101197040);
        sub_10010FC20(&unk_101184740);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_100EBC6B0;
        v74 = v34;
        v38 = v66;
        v39 = *(v66 + 104);
        v76 = v31;
        v40 = v65;
        v41 = v68;
        v39(v65, enum case for UICellAccessory.DisplayedState.always(_:), v68);
        v42 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v42 - 8) + 56))(v69, 1, 1, v42);
        v43 = v67;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        (*(v70 + 8))(v43, v71);
        v44 = v40;
        v31 = v76;
        (*(v38 + 8))(v44, v41);
        v34 = v74;
        UICollectionViewListCell.accessories.setter();
        v45 = [v73 traitCollection];
        v46 = [v45 userInterfaceIdiom];

        v47 = v46 == 6;
        v30 = v77;
        if (!v47)
        {
          v48 = v31;
          [v48 directionalLayoutMargins];
          [v48 setDirectionalLayoutMargins:?];
        }

        goto LABEL_5;
      }

      v60 = enum case for RecentlyAddedMusicItem.uploadedVideo(_:);
      v61 = v37;
      (*(v33 + 8))(v36, v32);
      if (v61 != v60)
      {
        sub_1000095E8(v23, &unk_101197040);
        goto LABEL_5;
      }
    }

LABEL_4:
    sub_1000095E8(v23, &unk_101197040);
    UICollectionViewListCell.accessories.setter();
LABEL_5:
    v35 = v75;
    sub_1000089F8(v30, v75, &unk_101197040);
    if ((v34)(v35, 1, v32) == 1)
    {
      sub_1000095E8(v35, &unk_101197040);
      v78 = 0u;
      v79 = 0u;
      v80 = 0;
    }

    else
    {
      *(&v79 + 1) = v32;
      v80 = sub_1007E83AC(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem);
      v49 = sub_10001C8B8(&v78);
      (*(v33 + 32))(v49, v35, v32);
    }

    sub_1000095E8(&v78, &qword_1011A3DD0);
    goto LABEL_22;
  }

  sub_1007E1C20(v16);
  v50 = v77;
  v51 = sub_1007FD1B8(v16, a2, v77);
  (*(v72 + 8))(v16, v14);
  v52 = Corner.medium.unsafeMutableAddressor();
  v53 = *v52;
  v54 = v52[1];
  v55 = *(v52 + 16);
  v56 = swift_allocObject();
  *(v56 + 16) = v53;
  *(v56 + 24) = v54;
  *(v56 + 32) = v55;
  UICollectionViewCell.configurationUpdateHandler.setter();
  v57 = v73;
  sub_1000089F8(v50, v73, &unk_101197040);
  v58 = type metadata accessor for RecentlyAddedMusicItem();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v57, 1, v58) == 1)
  {
    sub_1000095E8(v57, &unk_101197040);
    v78 = 0u;
    v79 = 0u;
    v80 = 0;
  }

  else
  {
    *(&v79 + 1) = v58;
    v80 = sub_1007E83AC(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem);
    v62 = sub_10001C8B8(&v78);
    (*(v59 + 32))(v62, v57, v58);
  }

  v31 = sub_1004F24B0(&v78);

  sub_1000095E8(&v78, &qword_1011A3DD0);
  v30 = v77;
LABEL_22:
  sub_1000095E8(v30, &unk_101197040);
  return v31;
}

BOOL sub_1007E4B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = UICollectionView.isDraggingCell(at:)();

  (*(v5 + 8))(v7, v4);
  return (v9 & 1) == 0;
}

id sub_1007E4F00(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a3;
  v9 = sub_10023D4E4(v7, 0, 1);

  (*(v5 + 8))(v7, v4);

  return v9;
}

uint64_t sub_1007E5060()
{
  v0 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_10010FC20(&unk_101196F90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v10 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v10 - 8) + 48))(v2, 1, v10) == 1)
  {
    sub_1000095E8(v2, &unk_10118D090);
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D0A0);
    (*(v4 + 32))(v9, v6, v3);
    if (MusicLibrarySectionedResponse.isEmpty.getter())
    {
      *(&v14 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v15 = &protocol witness table for UIContentUnavailableConfiguration;
      v11 = sub_10001C8B8(&v13);
      sub_1007DA098(byte_1010C0698, sub_1007E799C, &_s13RecentlyAddedVN, sub_1007E79E0, &unk_1010C06C0, sub_10003D868, v11);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v4 + 8))(v9, v3);
    }

    (*(v4 + 8))(v9, v3);
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

void *sub_1007E5448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  isa = sub_100597E50().super.super.isa;
  v3 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t type metadata accessor for LibraryRecentlyAddedViewController()
{
  result = qword_1011A3D98;
  if (!qword_1011A3D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007E56B4()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_101196E98, qword_101196EA0);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A3DA8, &unk_1011A3DB0);
      if (v2 <= 0x3F)
      {
        sub_1002114E8();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1007E586C(char *a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v5 = *&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v6 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v7 = sub_10049CB78();

  v8 = *(v5 + 48);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 32);
  v11 = *(v8 + 48);
  v12 = *(v8 + 64);
  v13 = *(v8 + 96);
  v28[4] = *(v8 + 80);
  v28[5] = v13;
  v29 = *(v8 + 112);
  v28[2] = v11;
  v28[3] = v12;
  v28[0] = v9;
  v28[1] = v10;
  v21 = *(v8 + 16);
  v22 = v7 & 1;
  v14 = *(v8 + 33);
  v24 = *(v8 + 49);
  v23 = v14;
  v15 = *(v8 + 65);
  v16 = *(v8 + 81);
  v17 = *(v8 + 97);
  *&v27[15] = *(v8 + 112);
  *v27 = v17;
  v26 = v16;
  v25 = v15;
  sub_10003D868(v28, &v20);
  sub_100379FBC(&v21);
  v18 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  sub_10049CB78();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v19 = String._bridgeToObjectiveC()();

  [a1 setTitle:v19];
}

uint64_t sub_1007E5B30(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_10003D868(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100379FBC(v17);
}

uint64_t sub_1007E5C38()
{
  v0 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_10010FC20(&unk_101196F90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118D090);
    return 0;
  }

  else
  {
    (*(v4 + 16))(v6, v2, v3);
    sub_1000095E8(v2, &unk_10118D0A0);
    v9 = MusicLibrarySectionedResponse.sections.getter();
    (*(v4 + 8))(v6, v3);
    v8 = *(v9 + 16);
  }

  return v8;
}

uint64_t sub_1007E5E3C(unint64_t a1)
{
  v20 = a1;
  v1 = sub_10010FC20(&unk_1011A3E20);
  v19 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_10010FC20(&unk_101196FB0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - v6;
  v8 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10010FC20(&unk_101196F90);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  v15 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1000095E8(v10, &unk_10118D090);
    return 0;
  }

  (*(v12 + 16))(v14, v10, v11);
  sub_1000095E8(v10, &unk_10118D0A0);
  v17 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v12 + 8))(v14, v11);
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v17 + 16) <= v20)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v20, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_101197060, &unk_1011A3E20);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v18 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 8))(v3, v1);
  return v18;
}

char *sub_1007E6258()
{
  v0 = sub_10010FC20(&unk_101196FB0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v29 - v2;
  v4 = sub_10010FC20(&unk_10118D090);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_10010FC20(&unk_101196F90);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v6);

  v11 = sub_10010FC20(&unk_10118D0A0);
  if ((*(*(v11 - 8) + 48))(v6, 1, v11) == 1)
  {
    sub_1000095E8(v6, &unk_10118D090);
    return 0;
  }

  else
  {
    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D0A0);
    v13 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v14 = *(v13 + 16);
    if (v14)
    {
      v16 = *(v1 + 16);
      v15 = v1 + 16;
      v17 = *(v15 + 64);
      v29 = v13;
      v18 = v13 + ((v17 + 32) & ~v17);
      v30 = *(v15 + 56);
      v31 = v16;
      v32 = v15;
      v19 = (v15 - 8);
      v12 = _swiftEmptyArrayStorage;
      v16(v3, v18, v0);
      while (1)
      {
        swift_getKeyPath();
        MusicLibrarySection.subscript.getter();

        v21 = v33;
        v20 = v34;

        v22 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v22 = v21 & 0xFFFFFFFFFFFFLL;
        }

        if (v22)
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*v19)(v3, v0);
          v24 = v33;
          v23 = v34;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_100498B7C(0, *(v12 + 2) + 1, 1, v12);
          }

          v26 = *(v12 + 2);
          v25 = *(v12 + 3);
          if (v26 >= v25 >> 1)
          {
            v12 = sub_100498B7C((v25 > 1), v26 + 1, 1, v12);
          }

          *(v12 + 2) = v26 + 1;
          v27 = &v12[16 * v26];
          *(v27 + 4) = v24;
          *(v27 + 5) = v23;
        }

        else
        {
          (*v19)(v3, v0);
        }

        v18 += v30;
        if (!--v14)
        {
          break;
        }

        v31(v3, v18, v0);
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v12;
}

uint64_t sub_1007E6680(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v18 - v4);
  v6 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RecentlyAddedMusicItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  sub_10037DB00(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000095E8(v8, &unk_101197040);
  }

  (*(v10 + 32))(v12, v8, v9);
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v5, a1, v15);
  (*(v16 + 56))(v5, 0, 1, v15);
  v17 = *(v13 + 48);
  swift_beginAccess();
  sub_1007D53D4(v12, v5, *(v17 + 32), &unk_1010C0738, &unk_1010C07D8, sub_1007E7A50, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController, sub_100376F5C, &unk_1010C07B0, &unk_100ECA700);
  sub_1000095E8(v5, &unk_10118BCE0);
  return (*(v10 + 8))(v12, v9);
}

id sub_1007E6994(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011838D0);
  v82 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v84 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v3;
  __chkstk_darwin(v4);
  v89 = &v63 - v5;
  v6 = sub_10010FC20(&unk_10118CDB0);
  v80 = *(v6 - 8);
  v7 = *(v80 + 64);
  __chkstk_darwin(v6 - 8);
  v81 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v63 - v9;
  v10 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for RecentlyAddedMusicItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v85 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  v22 = type metadata accessor for IndexPath();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v29 = __chkstk_darwin(v25);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v75 = v18;
  v76 = v28;
  v78 = v21;
  v79 = v23;
  v30 = *(v23 + 16);
  v31 = *(v23 + 80);
  v32 = &v63 - v26;
  v88 = v27;
  v74 = v30;
  (v30)(&v63 - v26, a1 + ((v31 + 32) & ~v31), v27, v29);
  v33 = *(v90 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  v87 = v32;
  sub_10037DB00(v32, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v79 + 8))(v87, v88);
    sub_1000095E8(v12, &unk_101197040);
    return 0;
  }

  v68 = v31;
  v69 = ~v31;
  v35 = v14;
  v36 = *(v14 + 32);
  v72 = v14 + 32;
  v73 = v36;
  v37 = v78;
  v77 = v13;
  v36(v78, v12, v13);
  v38 = *(v33 + 48);
  swift_beginAccess();
  v39 = *(v38 + 80);
  v97[3] = *(v38 + 64);
  v97[4] = v39;
  v97[5] = *(v38 + 96);
  v98 = *(v38 + 112);
  v40 = *(v38 + 32);
  v97[0] = *(v38 + 16);
  v97[1] = v40;
  v97[2] = *(v38 + 48);
  sub_10003D868(v97, &aBlock);
  v41 = v86;
  v66 = v7;
  v42 = v37;
  sub_100455348(v37, v86);
  sub_10003D90C(v97);
  v43 = v89;
  sub_1007E3698(v89);
  v44 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v45 = v35;
  v71 = v35;
  v64 = *(v35 + 16);
  v46 = v75;
  v47 = v77;
  v64(v75, v42, v77);
  v48 = *(v45 + 80);
  v65 = v48 | 7;
  v67 = swift_allocObject();
  v73(v67 + ((v48 + 16) & ~v48), v46, v47);
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64(v85, v42, v47);
  v49 = v81;
  sub_1000089F8(v41, v81, &unk_10118CDB0);
  v50 = v76;
  v74(v76, v87, v88);
  v51 = v84;
  sub_1000089F8(v89, v84, &unk_1011838D0);
  v52 = (v48 + 24) & ~v48;
  v53 = (v52 + v15 + *(v80 + 80)) & ~*(v80 + 80);
  v54 = (v66 + v68 + v53) & v69;
  v55 = (v24 + *(v82 + 80) + v54) & ~*(v82 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v75;
  v73(v56 + v52, v85, v77);
  sub_10003D17C(v49, v56 + v53, &unk_10118CDB0);
  v57 = v79;
  (*(v79 + 32))(v56 + v54, v50, v88);
  sub_10003D17C(v51, v56 + v55, &unk_1011838D0);
  v58 = objc_opt_self();
  v95 = sub_1005C27D8;
  v96 = v67;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100747E6C;
  v94 = &unk_1010C0840;
  v59 = _Block_copy(&aBlock);

  v95 = sub_1007E7A68;
  v96 = v56;
  aBlock = _NSConcreteStackBlock;
  v92 = 1107296256;
  v93 = sub_100747EBC;
  v94 = &unk_1010C0868;
  v60 = _Block_copy(&aBlock);

  v61 = isa;
  v62 = [v58 configurationWithIdentifier:isa previewProvider:v59 actionProvider:v60];

  _Block_release(v60);
  _Block_release(v59);
  sub_1000095E8(v89, &unk_1011838D0);
  sub_1000095E8(v86, &unk_10118CDB0);
  (*(v71 + 8))(v78, v77);
  (*(v57 + 8))(v87, v88);

  return v62;
}

id sub_1007E73F8(void *a1, void *a2)
{
  v26[0] = a2;
  v4 = sub_10010FC20(&unk_101197040);
  __chkstk_darwin(v4 - 8);
  v6 = v26 - v5;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v13 = v26 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0);
  v19 = swift_dynamicCast();
  v20 = *(v15 + 56);
  if ((v19 & 1) == 0)
  {
    v20(v13, 1, 1, v14);
    v22 = &unk_10118BCE0;
    v23 = v13;
    goto LABEL_5;
  }

  v20(v13, 0, 1, v14);
  (*(v15 + 32))(v18, v13, v14);
  v21 = *(v2 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  sub_10037DB00(v18, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v15 + 8))(v18, v14);
    v22 = &unk_101197040;
    v23 = v6;
LABEL_5:
    sub_1000095E8(v23, v22);
    return [v26[0] setPreferredCommitStyle:0];
  }

  (*(v8 + 32))(v10, v6, v7);
  v25 = *(v21 + 48);
  swift_beginAccess();
  sub_1007D7658(v10, v26[0], *(v25 + 32));
  (*(v8 + 8))(v10, v7);
  return (*(v15 + 8))(v18, v14);
}

void sub_1007E7798()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  v5 = sub_10010FC20(qword_101196EA0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  v7 = sub_10010FC20(&unk_1011A3DB0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView) = 0;
  v8 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController;
  v9 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v8) = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController) = 0;
  v10 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  v11 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1007E79E0()
{
  result = qword_1011A3DC8;
  if (!qword_1011A3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3DC8);
  }

  return result;
}

unint64_t sub_1007E7A68(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10010FC20(&unk_1011838D0) - 8);
  return sub_1007D7F24(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, (v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80))), sub_100376F5C, &unk_1010C08C8, sub_100217D28);
}

uint64_t sub_1007E7C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007E7D08()
{
  v1 = *(sub_10010FC20(&qword_101196FA0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1007E14D4(v2, v3, v4, v5);
}

uint64_t sub_1007E7DD8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&unk_10118CD70);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1007E7E60()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10012262C(v2, v3);
}

uint64_t sub_1007E7EC4()
{
  v1 = type metadata accessor for RecentlyAddedMusicItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1007E7FA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));

  return a1(v3, v4, v5);
}

uint64_t sub_1007E803C(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_1007E812C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1007E82DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007E8344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007E83AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007E8438()
{

  return swift_deallocObject();
}

void UINavigationController.push(_:traitOverrides:animated:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_3:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
LABEL_8:
          v14 = v13;

          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        swift_once();
        goto LABEL_17;
      }

      v13 = sub_1000260B0(v12, v9, &qword_101183D40);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = sub_100037DF4(v14, a1);

  if (v15)
  {
    return;
  }

  type metadata accessor for TraitNavigationController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *((swift_isaMask & *v16) + 0x50);
    v22 = v3;
    v17(a1, a2, a3 & 1);

    return;
  }

  if (qword_10117FD80 != -1)
  {
    goto LABEL_26;
  }

LABEL_17:
  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012195E0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Pushing viewController with traitOverrides to a non TraitNavigationController, traitOverrides will be ignored.", v21, 2u);
  }

  [v4 pushViewController:a1 animated:a3 & 1];
}

void sub_1007E87C0(void *a1, uint64_t a2, uint64_t (*a3)(id), uint64_t a4, int a5)
{
  v6 = v5;
  v47 = a1;
  v10 = sub_10010FC20(&unk_10119F3A0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v46 = &v40 - v14;
  v15 = type metadata accessor for UITraitOverrides();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v41 = &v40 - v19;
  v20 = [v5 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = a5;
  v44 = v16;
  v45 = v15;
  v43 = v13;
  v48 = a2;
  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_26:

    v37 = v49 & 1;
    v38 = v47;
    v39 = v48;

    UINavigationController.push(_:traitOverrides:animated:)(v38, v39, v37);
    return;
  }

LABEL_25:
  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
    goto LABEL_26;
  }

LABEL_3:
  v23 = 0;
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = sub_1000260B0(v23, v21, &qword_101183D40);
    }

    else
    {
      if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v24 = *(v21 + 8 * v23 + 32);
    }

    v25 = v24;
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a3(v24))
    {
      break;
    }

    ++v23;
    if (v26 == v22)
    {
      goto LABEL_26;
    }
  }

  v27 = v43;
  sub_10003895C(v48, v43);
  v29 = v44;
  v28 = v45;
  v30 = *(v44 + 48);
  if (v30(v27, 1, v45) == 1)
  {
    v31 = [v5 topViewController];
    v32 = v46;
    if (v31)
    {
      v33 = v31;
      UIViewController.traitOverrides.getter();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = v49;
    (*(v29 + 56))(v32, v34, 1, v28);
    if (v30(v27, 1, v28) != 1)
    {
      sub_1000095E8(v27, &unk_10119F3A0);
    }
  }

  else
  {
    v32 = v46;
    (*(v29 + 32))(v46, v27, v28);
    (*(v29 + 56))(v32, 0, 1, v28);
    v35 = v49;
  }

  if (v30(v32, 1, v28) == 1)
  {
    sub_1000095E8(v32, &unk_10119F3A0);
  }

  else
  {
    v36 = v41;
    (*(v29 + 32))(v41, v32, v28);
    (*(v29 + 16))(v42, v36, v28);
    UIViewController.traitOverrides.setter();
    (*(v29 + 8))(v36, v28);
  }
}

uint64_t sub_1007E8C74()
{
  if (qword_10117FD78 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A3E68))
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    sub_1000095E8(v5, &unk_101183F30);
    return 3;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 3;
  }

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

id sub_1007E8FD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TraitNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007E900C()
{
  result = swift_slowAlloc();
  qword_1011A3E68 = result;
  return result;
}

uint64_t sub_1007E9034()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012195E0);
  sub_1000060E4(v0, qword_1012195E0);
  return static Logger.music(_:)();
}

uint64_t sub_1007E91D4(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for NowPlayingTransportButton();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for NowPlayingTransportButton();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57E00;
  v7._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E939C(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for MusicCarPlayBarButtonItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for MusicCarPlayBarButtonItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57DB0;
  v7._countAndFlagsBits = 0xD000000000000040;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9564(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for PresentationDonationTarget();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PresentationDonationTarget();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D90;
  v7._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E97F0(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for ImpressionTracker();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for ImpressionTracker();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D50;
  v7._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9A10(unint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v2 = _CocoaArrayWrapper.subscript.getter();
    type metadata accessor for PresentationDonationItem();
    if (swift_dynamicCastClass())
    {
      return v2;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v3 = "rget type\nExpected ";
    v4 = 0xD000000000000046;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  type metadata accessor for PresentationDonationItem();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v2;
  }

  _StringGuts.grow(_:)(82);
  v3 = "tNavigationController";
  v4 = 0xD000000000000043;
LABEL_11:
  v6 = v3 | 0x8000000000000000;
  String.append(_:)(*&v4);
  v7._object = 0x8000000100E57D70;
  v7._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x756F662074756220;
  v8._object = 0xEB0000000020646ELL;
  String.append(_:)(v8);
  swift_getObjectType();
  v9._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v9);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9C74(unint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.subscript.getter();
    a3(0);
    if (swift_dynamicCastClass())
    {
      return v8;
    }

LABEL_10:
    _StringGuts.grow(_:)(85);
    v10 = 0xD000000000000046;
    v9 = 0x8000000100E57D00;
    goto LABEL_11;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
  a3(0);
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    return v8;
  }

  _StringGuts.grow(_:)(82);
  v9 = 0x8000000100E57CB0;
  v10 = 0xD000000000000043;
LABEL_11:
  String.append(_:)(*&v10);
  v12._countAndFlagsBits = a4;
  v12._object = a5;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x756F662074756220;
  v13._object = 0xEB0000000020646ELL;
  String.append(_:)(v13);
  swift_getObjectType();
  v14._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E9F28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1007E9F88()
{
  sub_100009F78(0, &qword_101191A90);
  result = OS_os_log.init(musicCategory:)();
  qword_1011A3EA0 = result;
  return result;
}

uint64_t sub_1007EA014@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_10010FC20(&qword_1011A3FD0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v21[-v13];
  v15 = *a1;
  swift_beginAccess();
  sub_1000089F8(v4 + v15, v14, &qword_1011A3FD0);
  v16 = type metadata accessor for Signpost();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_10000C464(v14, a4);
  }

  sub_1000095E8(v14, &qword_1011A3FD0);
  if (qword_10117FD88 != -1)
  {
    swift_once();
  }

  v18 = qword_1011A3EA0;
  v19 = v4;
  Signpost.init(name:object:log:)(a2, a3, 2, v18, a4);
  sub_1000065D8(a4, v12);
  (*(v17 + 56))(v12, 0, 1, v16);
  swift_beginAccess();
  sub_1000066A4(v12, v4 + v15);
  return swift_endAccess();
}

void sub_1007EA28C(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
    if (!v4)
    {
LABEL_10:

      return;
    }

    v5 = v4;
    v6 = [v5 isReversed] | a1;
    if ([v5 isReversed])
    {
      if ((v6 & 1) != 0 && (a1 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (v6)
    {
LABEL_9:
      sub_1007EA35C(0);

      v3 = v5;
      goto LABEL_10;
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_9;
  }
}

void sub_1007EA35C(void *a1)
{
  v2 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController;
  v3 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
  *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController) = a1;
  v14 = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1007EBB80;
    *(v6 + 24) = v5;
    v7 = OBJC_IVAR____TtC5Music38PalettePresentationAnimationController_completionBlocks;
    swift_beginAccess();
    v8 = *&v4[v7];
    v9 = v4;
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v4[v7] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_10049974C(0, v8[2] + 1, 1, v8);
      *&v4[v7] = v8;
    }

    v12 = v8[2];
    v11 = v8[3];
    if (v12 >= v11 >> 1)
    {
      v8 = sub_10049974C((v11 > 1), v12 + 1, 1, v8);
    }

    v8[2] = v12 + 1;
    v13 = &v8[2 * v12];
    v13[4] = sub_100547098;
    v13[5] = v6;
    *&v4[v7] = v8;
    swift_endAccess();
  }

  else
  {
  }
}

void sub_1007EA514(void (*a1)(id), uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v5 = [Strong transitionCoordinator];
    if (v5)
    {
      v6 = v5;
      v7 = swift_allocObject();
      v7[2] = a1;
      v7[3] = a2;
      v7[4] = v11;
      aBlock[4] = sub_1007EBB50;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1007E9F28;
      aBlock[3] = &unk_1010C0EF8;
      v8 = _Block_copy(aBlock);
      sub_100030444(a1);
      v9 = v11;

      [v6 animateAlongsideTransition:0 completion:v8];

      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = v11;
      if (a1)
      {
        a1(v11);
        v10 = v11;
      }
    }
  }

  else
  {

    sub_1007EAAD8(a1, a2);
  }
}

void sub_1007EA6C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
  swift_beginAccess();
  sub_1000089F8(v2 + v5, &v49, &qword_101194670);
  if (v50)
  {
    sub_100059A8C(&v49, v51);
    v6 = *(*sub_10000954C(v51, v52) + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
    if (v6)
    {
      v7 = [v6 view];
      if (v7)
      {
        v8 = v7;
        v9 = sub_10000954C(v51, v52);
        [v8 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [a1 view];
        v19 = *(*v9 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
        if (v19 && (v20 = [v19 view]) != 0 && (v21 = v20, v22 = objc_msgSend(v20, "superview"), v21, v22))
        {
          [v22 convertRect:v18 toView:{v11, v13, v15, v17}];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;
        }

        else
        {

          v24 = 0;
          v26 = 0;
          v28 = 0;
          v30 = 0;
        }

        sub_10000959C(v51);
        goto LABEL_15;
      }
    }

    sub_10000959C(v51);
  }

  else
  {
    sub_1000095E8(&v49, &qword_101194670);
  }

  v31 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  v24 = 0;
  if (!v31)
  {
LABEL_17:
    v48 = 1;
    v26 = 0;
    v28 = 0;
    v30 = 0;
    goto LABEL_18;
  }

  v32 = v31;
  v33 = [v32 superview];
  if (!v33)
  {

    goto LABEL_17;
  }

  v34 = v33;
  [v32 frame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = [a1 view];
  [v34 convertRect:v43 toView:{v36, v38, v40, v42}];
  v24 = v44;
  v26 = v45;
  v28 = v46;
  v30 = v47;

LABEL_15:
  v48 = 0;
LABEL_18:
  *a2 = v24;
  *(a2 + 8) = v26;
  *(a2 + 16) = v28;
  *(a2 + 24) = v30;
  *(a2 + 32) = v48;
}

void sub_1007EAAD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  v5 = type metadata accessor for UIView.Corner.Radius();
  v54 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UIView.Corner();
  v53 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Signpost();
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007E9FE4(v13);
  Signpost.begin(dso:)(&_mh_execute_header);
  sub_100007908(v13);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1006CB648();
    v15 = v14;
    v52 = v16;
    swift_unknownObjectRelease();
    if (v15)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_22:

        return;
      }

      v18 = Strong;
      if (!UIAccessibilityPrefersCrossFadeTransitions())
      {
        [v15 setTransitioningDelegate:v2];
      }

      [v15 setModalPresentationStyle:2];
      v19 = [v15 presentationController];
      v51 = v18;
      if (!v19)
      {
LABEL_19:
        sub_1007E9FE4(v13);
        Signpost.end(dso:)(&_mh_execute_header);
        sub_100007908(v13);
        sub_1007E9FFC(v13);
        Signpost.begin(dso:)(&_mh_execute_header);
        sub_100007908(v13);
        v38 = [objc_opt_self() defaultCenter];
        if (qword_10117FD90 != -1)
        {
          swift_once();
        }

        [v38 postNotificationName:qword_1012195F8 object:0];

        v39 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v40 = swift_allocObject();
        v41 = v55;
        v40[2] = v39;
        v40[3] = v41;
        v40[4] = a2;
        v40[5] = v15;
        v40[6] = v52;
        v58 = sub_1007EBB40;
        v59 = v40;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002BC98;
        v57 = &unk_1010C0EA8;
        v42 = _Block_copy(aBlock);
        v43 = v15;
        sub_100030444(v41);

        [v51 presentViewController:v43 animated:1 completion:v42];
        swift_unknownObjectRelease();
        _Block_release(v42);

        swift_unknownObjectWeakAssign();
        goto LABEL_22;
      }

      v20 = v19;
      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (!v50)
      {
LABEL_18:

        goto LABEL_19;
      }

      v48 = v20;
      v49 = a2;
      v21 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
      swift_beginAccess();
      sub_1000089F8(v3 + v21, aBlock, &qword_101194670);
      v22 = v57;
      v46 = v5;
      if (v57)
      {
        v23 = sub_10000954C(aBlock, v57);
        v47 = &v44;
        v24 = *(v22 - 1);
        __chkstk_darwin(v23);
        v26 = (&v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v24 + 16))(v26);
        sub_1000095E8(aBlock, &qword_101194670);
        v27 = *(*v26 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
        if (v27)
        {
          v28 = [v27 view];
          (*(v24 + 8))(v26, v22);
          if (v28)
          {
LABEL_15:
            v45 = v28;
            v29 = [objc_allocWithZone(_UIViewGlass) initWithVariant:0 smoothness:6.0];
            v30 = [swift_unknownObjectRetain() tabBar];
            v31 = [v30 traitCollection];

            v32 = [v31 userInterfaceStyle];
            [v29 setAdaptiveStyle:v32];
            swift_unknownObjectRelease();
            v33 = v50;
            v47 = v29;
            [v50 _setNonLargeBackground:v29];
            [v33 _setWantsFullScreen:1];
            [v33 _setAllowsInteractiveDismissWhenFullScreen:1];
            [v33 _setShouldDismissWhenTappedOutside:1];
            static UIView.Corner.rounded.getter();
            UIView.Corner.radius.getter();
            (*(v53 + 8))(v10, v8);
            v34 = v45;
            if (v45)
            {
              [v45 bounds];
            }

            a2 = v49;
            v35 = v46;
            UIView.Corner.Radius.value(in:)();
            v37 = v36;
            (*(v54 + 8))(v7, v35);
            [v33 _setCornerRadiusForPresentationAndDismissal:v37];
            [v33 setSourceView:v34];

            v20 = v47;
            goto LABEL_18;
          }
        }

        else
        {
          (*(v24 + 8))(v26, v22);
        }
      }

      else
      {
        sub_1000095E8(aBlock, &qword_101194670);
      }

      v28 = [*(v3 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) superview];
      goto LABEL_15;
    }
  }
}

void sub_1007EB294(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Signpost();
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1007E9FFC(v8);

    Signpost.end(dso:)(&_mh_execute_header);
    sub_100007908(v8);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_10117FD98 != -1)
  {
    swift_once();
  }

  [v11 postNotificationName:qword_101219600 object:0];

  if (a2)
  {
    a2(a4);
  }
}

id sub_1007EB3EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PalettePresentationInteraction();
  return objc_msgSendSuper2(&v2, "dealloc");
}

BOOL sub_1007EB5CC()
{
  v1 = v0;
  sub_100009F78(0, &qword_101197A30);
  v2 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer;
  v3 = *(v0 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);
  v4 = static NSObject.== infix(_:_:)();

  v5 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
  result = (v4 ^ 1) & (v5 == 0);
  if (((v4 ^ 1) & 1) == 0 && !v5)
  {
    v7 = *(v1 + v2);
    v8 = [v7 view];
    [v7 translationInView:v8];
    v10 = v9;
    v12 = v11;

    v13 = fabs(v12);
    return v13 > 2.22044605e-16 && fabs(v10 * 0.5) < v13 && v12 < 2.22044605e-16;
  }

  return result;
}

uint64_t sub_1007EB7D0(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    v8 = *((*(v6 + 16))(v2, ObjectType, v6) + 16);

    if (v8)
    {
      v9 = [a1 presentingViewController];
      if (v9)
      {
        v10 = v9;
        sub_1007EA6C8(v9, v20);
        if ((v21 & 1) == 0)
        {
          v12 = *&v20[2];
          v11 = *&v20[3];
          v14 = *v20;
          v13 = *&v20[1];
          v15 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
          v16 = v2;
          v17 = sub_100546CA0(v16);

          v18 = v17;
          [v18 setIsReversed:1];
          [v18 setSourceFrame:{v14, v13, v12, v11}];

          v19 = v18;
          sub_1007EA35C(v18);
          swift_unknownObjectRelease();

          return v18;
        }
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return result;
}

NSString sub_1007EB9A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1012195F8 = result;
  return result;
}

NSString sub_1007EB9D8()
{
  result = String._bridgeToObjectiveC()();
  qword_101219600 = result;
  return result;
}

id sub_1007EBA10(void *a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v5 = *(v4 + 1);
  ObjectType = swift_getObjectType();
  v7 = *((*(v5 + 16))(v2, ObjectType, v5) + 16);

  if (v7 && (sub_1007EA6C8(a1, v17), (v18 & 1) == 0))
  {
    v10 = *&v17[2];
    v9 = *&v17[3];
    v12 = *v17;
    v11 = *&v17[1];
    v13 = objc_allocWithZone(type metadata accessor for PalettePresentationAnimationController());
    v14 = v2;
    v8 = sub_100546CA0(v14);

    [v8 setSourceFrame:{v12, v11, v10, v9}];
    v15 = v8;
    sub_1007EA35C(v8);
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1007EBB50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

char *sub_1007EBB90(void *a1, char a2)
{
  v3 = [a1 tabBarController];
  if (!v3 || (v4 = v3, v5 = [v3 traitCollection], v4, !v5))
  {
    v5 = [objc_opt_self() currentTraitCollection];
  }

  v6 = sub_10066BAEC(v5, a2);

  return v6;
}

uint64_t sub_1007EBC30()
{
  v1 = v0;
  v2 = 0x737465636146;
  v3 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v39 = 0x737465636146;
  v40 = 0xE600000000000000;
  aBlock = 0xD000000000000014;
  v33 = 0x8000000100E3E560;
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v8 = v7;
  v10 = v9;
  result = sub_1000095E8(v5, &unk_101182EA0);
  if (v10)
  {
    v12 = 0x8000000100E58050;
    v13 = 0xD00000000000001ALL;
    v14 = 0xE600000000000000;
  }

  else
  {
    if (v8 >> 14 > 0x18)
    {
      __break(1u);
      return result;
    }

    v12 = 0xE600000000000000;
    String.subscript.getter();
    v15 = static String._fromSubstring(_:)();
    v14 = v16;

    v13 = 0x737465636146;
    v2 = v15;
  }

  v39 = v13;
  v40 = v12;
  v41 = v2;
  v42 = v14;
  v43 = 0;
  v44 = 0xE000000000000000;
  v46 = 0;
  v47 = 0;
  v45 = 0;
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  sub_100009F78(0, &qword_101181F70);
  v19.super.isa = Array._bridgeToObjectiveC()().super.isa;
  if (v46)
  {
    v36 = v46;
    v37 = v47;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10003640C;
    v35 = &unk_1010C10C0;
    v20 = _Block_copy(&aBlock);
  }

  else
  {
    v20 = 0;
  }

  v21 = v45;
  v22 = type metadata accessor for MusicTab.Group();
  v38.receiver = v1;
  v38.super_class = v22;
  v23 = objc_msgSendSuper2(&v38, "initWithTitle:image:identifier:children:viewControllerProvider:", v17, v21, v18, v19.super.isa, v20);
  _Block_release(v20);

  sub_100036360(&v39);
  v24 = objc_allocWithZone(_s8FacetTabCMa());
  v25 = v23;
  v26 = sub_1007EC0B0(0, 0);
  [v25 setPreferredPlacement:6];
  sub_10010FC20(&qword_101183990);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100EBC6C0;
  *(v27 + 32) = v26;
  v28 = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v25 setChildren:isa];

  v30 = [v28 identifier];
  if (!v30)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = String._bridgeToObjectiveC()();
  }

  [v25 setDefaultChildIdentifier:v30];

  [v25 setAllowsHiding:0];
  [v25 setAllowsReordering:1];
  [v25 setSidebarAppearance:1];

  return v25;
}