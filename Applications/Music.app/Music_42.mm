uint64_t sub_1004B6064(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v2 - 8);
  v82 = (&v78 - v3);
  v4 = type metadata accessor for Album();
  v86 = *(v4 - 8);
  v87 = v4;
  __chkstk_darwin(v4);
  v83 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v6 - 8);
  v8 = &v78 - v7;
  v9 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v9 - 8);
  v89 = &v78 - v10;
  v88 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v90 = *(v88 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v88);
  v81 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v80 = &v78 - v13;
  __chkstk_darwin(v14);
  v79 = &v78 - v15;
  __chkstk_darwin(v16);
  v85 = &v78 - v17;
  v18 = sub_10010FC20(&unk_101192868);
  __chkstk_darwin(v18 - 8);
  v20 = &v78 - v19;
  v21 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v21 - 8);
  v23 = &v78 - v22;
  v24 = type metadata accessor for Artist();
  v25 = *(v24 - 8);
  v93 = v24;
  v94 = v25;
  __chkstk_darwin(v24);
  v84 = &v78 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v92 = &v78 - v28;
  swift_beginAccess();
  v91 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v30 = &unk_100EBC000;
  if (!Strong)
  {
    goto LABEL_15;
  }

  v31 = Strong;
  v32 = sub_1004CAC5C();

  swift_getKeyPath();
  *&v105[0] = v32;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v30 = &unk_100EBC000;

  v33 = *(v32 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);

  if (v33 != 1)
  {
    goto LABEL_15;
  }

  Album.artists.getter();
  v34 = sub_10010FC20(&qword_101193B90);
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v20, 1, v34) == 1)
  {
    sub_1000095E8(v20, &unk_101192868);
    (*(v94 + 56))(v23, 1, 1, v93);
LABEL_6:
    sub_1000095E8(v23, &unk_101184930);
    v30 = &unk_100EBC000;
LABEL_15:
    v50 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_16;
  }

  sub_10034DA48(v23);
  (*(v35 + 8))(v20, v34);
  v37 = v93;
  v36 = v94;
  if ((*(v94 + 48))(v23, 1, v93) == 1)
  {
    goto LABEL_6;
  }

  v38 = v92;
  (*(v36 + 32))(v92, v23, v37);
  swift_beginAccess();
  v39 = swift_unknownObjectWeakLoadStrong();
  v30 = &unk_100EBC000;
  if (!v39)
  {
    (*(v36 + 8))(v38, v37);
    v45 = v89;
    (*(v90 + 56))(v89, 1, 1, v88);
LABEL_14:
    sub_1000095E8(v45, &qword_101192860);
    goto LABEL_15;
  }

  v40 = v39;
  v41 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v40 + v41, v8, &unk_101184730);
  v42 = v86;
  v43 = v87;
  v44 = (*(v86 + 48))(v8, 1, v87);
  v45 = v89;
  if (v44)
  {

    sub_1000095E8(v8, &unk_101184730);
    (*(v90 + 56))(v45, 1, 1, v88);
    v46 = v92;
LABEL_13:
    (*(v94 + 8))(v46, v37);
    goto LABEL_14;
  }

  v47 = v83;
  (*(v42 + 16))(v83, v8, v43);
  sub_1000095E8(v8, &unk_101184730);
  sub_1004CA938(v45);

  (*(v42 + 8))(v47, v43);
  v48 = v90;
  v49 = (*(v90 + 48))(v45, 1, v88) == 1;
  v46 = v92;
  if (v49)
  {
    goto LABEL_13;
  }

  v55 = v92;
  v56 = v85;
  sub_1004E59E0(v45, v85, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v94 + 16))(v84, v55, v37);
  v57 = v79;
  sub_1004E40DC(v56, v79, type metadata accessor for ContainerDetail.AttributionItem);
  swift_beginAccess();
  v58 = swift_unknownObjectWeakLoadStrong();
  if (v58)
  {
    v59 = v58;
    v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v59 + v60, v105, &unk_1011926C0);
    if (BYTE8(v105[0]) != 1)
    {
      v62 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v105, &unk_1011926C0);
      if (v62)
      {
        v89 = sub_10003169C();
      }

      else
      {
        v89 = 0;
      }

      v61 = v82;
      v48 = v90;
      goto LABEL_25;
    }

    sub_1000095E8(v105, &unk_1011926C0);
  }

  v89 = 0;
  v61 = v82;
LABEL_25:
  swift_beginAccess();
  v63 = swift_unknownObjectWeakLoadStrong();
  if (v63)
  {
    v64 = v63;
    sub_1004E0268(v61);
  }

  else
  {
    v65 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v65 - 8) + 56))(v61, 1, 1, v65);
  }

  v66 = v80;
  sub_1004E40DC(v57, v80, type metadata accessor for ContainerDetail.AttributionItem);
  v67 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v68 = v67 + v11;
  v69 = swift_allocObject();
  sub_1004E59E0(v66, v69 + v67, type metadata accessor for ContainerDetail.AttributionItem);
  v70 = v81;
  sub_1004E59E0(v57, v81, type metadata accessor for ContainerDetail.AttributionItem);
  v71 = (v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v72 = swift_allocObject();
  sub_1004E59E0(v70, v72 + v67, type metadata accessor for ContainerDetail.AttributionItem);
  *(v72 + v71) = v89;
  v73 = v93;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v84, 0, 0, sub_1004E9A64, v69, &unk_100ECFFC0, v72, v61, v104, v93, &protocol witness table for Artist);
  static Actions.GoToArtist.action(context:)(v104, v105);
  v106 = v104[0];
  sub_1000095E8(&v106, &qword_1011815E0);

  v99 = v105[4];
  v100 = v105[5];
  v101 = v105[6];
  v102 = v105[7];
  v95 = v105[0];
  v96 = v105[1];
  v97 = v105[2];
  v98 = v105[3];
  v74 = static ActionBuilder.buildExpression<A, B>(_:)(&v95, &type metadata for Actions.GoToArtist.Context, &type metadata for () + 8, &protocol witness table for Actions.GoToArtist.Context);
  v103[4] = v99;
  v103[5] = v100;
  v103[6] = v101;
  v103[7] = v102;
  v103[0] = v95;
  v103[1] = v96;
  v103[2] = v97;
  v103[3] = v98;
  sub_1000095E8(v103, &unk_101183950);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  v30 = &unk_100EBC000;
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v74;
  v76 = inited + 32;
  v77 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v76, &unk_10118AB80);
  v50 = static ActionBuilder.buildIf(_:)(v77);

  sub_1004E414C(v85, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v94 + 8))(v92, v73);
LABEL_16:
  sub_10010FC20(&unk_101183940);
  v51 = swift_initStackObject();
  *(v51 + 16) = v30[107];
  *(v51 + 32) = v50;
  v52 = v51 + 32;
  v53 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v52, &unk_10118AB80);
  return v53;
}

void *sub_1004B6CD8()
{
  v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v1, &v12, &unk_1011926C0);
  if (v13)
  {
    sub_1000095E8(&v12, &unk_1011926C0);
    return _swiftEmptyArrayStorage;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v12, &unk_1011926C0);
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v16 = xmmword_100EBCEF0;
  v3 = Strong;
  PresentationSource.init(viewController:position:)(v3, v14, &v12);
  v4 = sub_1004B4C54(&v12);
  sub_10012BA6C(&v12);
  sub_10010FC20(&unk_1011845C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBC6B0;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  v7._countAndFlagsBits = 0x676E6F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  if (v4)
  {
    v9 = [v4 children];
    sub_100009F78(0, &qword_10118CDE0);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v5 + 32) = v8;
    *(v5 + 40) = xmmword_100ECF4D0;
    *(v5 + 56) = v10;
  }

  else
  {

    *(v5 + 32) = 0u;
    *(v5 + 48) = 0u;
  }

  return v5;
}

uint64_t sub_1004B6F0C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_actionableStateController) = a1;

  v2 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v5, &unk_1011926C0);
  if (v5[8])
  {

    return sub_1000095E8(v5, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v5, &unk_1011926C0);
    if (Strong)
    {
      sub_10069F67C();
    }
  }
}

uint64_t sub_1004B6FF4(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = sub_10010FC20(&qword_101181C50);
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v5 = sub_10010FC20(&unk_101192970);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_10118A320);
  v3[39] = v6;
  v3[40] = *(v6 - 8);
  v3[41] = swift_task_alloc();
  v7 = sub_10010FC20(&unk_10118A310);
  v3[42] = v7;
  v3[43] = *(v7 - 8);
  v3[44] = swift_task_alloc();
  v8 = type metadata accessor for MusicVideo();
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118D1A0);
  v3[53] = v9;
  v3[54] = *(v9 - 8);
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  sub_10010FC20(&unk_101183960);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_101192980);
  v3[60] = v10;
  v3[61] = *(v10 - 8);
  v3[62] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181AB8);
  v3[63] = v11;
  v3[64] = *(v11 - 8);
  v3[65] = swift_task_alloc();
  sub_10010FC20(&unk_101192990);
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v12 = type metadata accessor for Song();
  v3[72] = v12;
  v3[73] = *(v12 - 8);
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_1011815C0);
  v3[81] = v13;
  v3[82] = *(v13 - 8);
  v3[83] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();
  v3[94] = swift_task_alloc();
  v3[95] = swift_task_alloc();
  v14 = sub_10010FC20(&unk_1011929A0);
  v3[96] = v14;
  v3[97] = *(v14 - 8);
  v3[98] = swift_task_alloc();
  v15 = sub_10010FC20(&qword_101181B20);
  v3[99] = v15;
  v3[100] = *(v15 - 8);
  v3[101] = swift_task_alloc();
  v16 = type metadata accessor for Album();
  v3[102] = v16;
  v3[103] = *(v16 - 8);
  v3[104] = swift_task_alloc();
  v3[105] = type metadata accessor for AlbumDetailDataSource.LoadingSource(0);
  v3[106] = swift_task_alloc();
  v3[107] = swift_task_alloc();
  v17 = type metadata accessor for MusicPropertySource();
  v3[108] = v17;
  v3[109] = *(v17 - 8);
  v3[110] = swift_task_alloc();
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();
  v3[113] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[114] = static MainActor.shared.getter();
  v19 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[115] = v19;
  v3[116] = v18;

  return _swift_task_switch(sub_1004B7890, v19, v18);
}

uint64_t sub_1004B7890()
{
  v111 = v0;
  v1 = *(v0 + 904);
  v2 = *(v0 + 872);
  v3 = *(v0 + 864);
  v4 = *(v0 + 240);
  v5 = *(v2 + 16);
  *(v0 + 936) = v5;
  *(v0 + 944) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  v6 = *(v2 + 88);
  *(v0 + 952) = v6;
  *(v0 + 960) = (v2 + 88) & 0xFFFFFFFFFFFFLL | 0xA3B5000000000000;
  v7 = v6(v1, v3);
  v8 = enum case for MusicPropertySource.catalog(_:);
  *(v0 + 1280) = enum case for MusicPropertySource.catalog(_:);
  if (v7 == v8)
  {
    sub_1004E40DC(*(v0 + 232), *(v0 + 848), type metadata accessor for AlbumDetailDataSource.LoadingSource);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v10 = *(v0 + 848);
          v11 = *v10;
          *(v0 + 1144) = *v10;
          v12 = v10[1];
          *(v0 + 1152) = v12;
          swift_getKeyPath();
          *(v0 + 88) = v11;
          *(v0 + 96) = v12;
          sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song);

          MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
          sub_10010FC20(&qword_101183990);
          v13 = swift_allocObject();
          *(v13 + 16) = xmmword_100EBC6C0;
          sub_10010FC20(&qword_10118BFD8);
          *(v13 + 32) = static PartialMusicProperty<A>.albums.getter();
          MusicCatalogResourceRequest.properties.setter();
          v14 = swift_task_alloc();
          *(v0 + 1160) = v14;
          *v14 = v0;
          v14[1] = sub_1004BD8F8;
          v15 = *(v0 + 328);
          v16 = *(v0 + 336);
LABEL_56:

          return MusicCatalogResourceRequest.response()(v15, v16);
        }

        (*(*(v0 + 368) + 32))(*(v0 + 400), *(v0 + 848), *(v0 + 360));
        sub_10010FC20(&qword_101183990);
        v58 = swift_allocObject();
        *(v0 + 1176) = v58;
        *(v58 + 16) = xmmword_100EBC6C0;
        sub_10010FC20(&unk_1011929B0);
        *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
        v62 = swift_task_alloc();
        *(v0 + 1184) = v62;
        v60 = sub_1004E41B4(&qword_101181CF8, &type metadata accessor for MusicVideo);
        *v62 = v0;
        v62[1] = sub_1004BE5E0;
        v61 = *(v0 + 392);
        goto LABEL_42;
      }

      (*(*(v0 + 584) + 32))(*(v0 + 616), *(v0 + 848), *(v0 + 576));
      sub_10010FC20(&qword_101183990);
      v58 = swift_allocObject();
      *(v0 + 1120) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_10118BFD8);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v59 = swift_task_alloc();
      *(v0 + 1128) = v59;
      v60 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song);
      *v59 = v0;
      v59[1] = sub_1004BCD48;
      v61 = *(v0 + 608);
LABEL_40:
      v83 = *(v0 + 576);
      v84 = *(v0 + 240);
      v85 = &protocol witness table for Song;
      v86 = &protocol witness table for Song;
LABEL_43:

      return MusicItem<>.with(_:preferredSource:)(v61, v58, v84, v83, v85, v86, v60);
    }

    v41 = (v0 + 848);
    if (EnumCaseMultiPayload)
    {
      v42 = *v41;
      v44 = *v42;
      v43 = v42[1];
LABEL_33:
      *(v0 + 1200) = v43;
      v67 = *(v0 + 248);
      swift_getKeyPath();
      *(v0 + 72) = v44;
      *(v0 + 80) = v43;
      sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v68 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v68(v0 + 16, 0);
      sub_10010FC20(&qword_101183990);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_100EBEE70;
      sub_10010FC20(&qword_101192878);
      *(v69 + 32) = static PartialMusicProperty<A>.tracks.getter();
      *(v69 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
      *(v69 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
      *(v69 + 56) = static PartialMusicProperty<A>.artists.getter();
      *(v69 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
      *(v69 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
      MusicCatalogResourceRequest.properties.setter();
      v70 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
      *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
      if (*(v67 + v70) == 1)
      {
        sub_10010FC20(&qword_1011929C8);
        v71 = type metadata accessor for MusicCatalogResourceRequestOption();
        v72 = *(v71 - 8);
        v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_100EBC6B0;
        (*(v72 + 104))(v74 + v73, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v71);
        MusicCatalogResourceRequest.options.setter();
      }

      v75 = *(v0 + 1280);
      v76 = *(v0 + 952);
      v77 = *(v0 + 936);
      v78 = *(v0 + 880);
      v79 = *(v0 + 864);
      v80 = *(v0 + 240);
      MusicCatalogResourceRequest.prewarmForPlayback.setter();
      v77(v78, v80, v79);
      v81 = v76(v78, v79);
      if (v81 != v75)
      {
        if (v81 == enum case for MusicPropertySource.library(_:))
        {
          sub_1004C5930();
        }

        else
        {
          if (qword_10117FC48 != -1)
          {
            swift_once();
          }

          v92 = *(v0 + 248);
          v93 = type metadata accessor for Logger();
          sub_1000060E4(v93, qword_1012193F8);
          v94 = v92;
          v95 = Logger.logObject.getter();
          v96 = static os_log_type_t.fault.getter();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = *(v0 + 936);
            v98 = *(v0 + 888);
            v99 = *(v0 + 864);
            v100 = *(v0 + 248);
            v101 = swift_slowAlloc();
            v102 = swift_slowAlloc();
            v110[0] = v102;
            *v101 = 136446210;
            v103 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
            swift_beginAccess();
            v97(v98, v100 + v103, v99);
            v104 = String.init<A>(describing:)();
            v106 = sub_1000105AC(v104, v105, v110);

            *(v101 + 4) = v106;
            _os_log_impl(&_mh_execute_header, v95, v96, "Unknown source: %{public}s", v101, 0xCu);
            sub_10000959C(v102);
          }

          (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
        }
      }

      v107 = swift_task_alloc();
      *(v0 + 1216) = v107;
      *v107 = v0;
      v107[1] = sub_1004BF18C;
      v15 = *(v0 + 280);
      v16 = *(v0 + 288);
      goto LABEL_56;
    }

    goto LABEL_32;
  }

  if (v7 != enum case for MusicPropertySource.library(_:))
  {

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 896);
    v25 = *(v0 + 864);
    v26 = *(v0 + 240);
    v27 = type metadata accessor for Logger();
    sub_1000060E4(v27, qword_1012193F8);
    v5(v24, v26, v25);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 896);
    if (v30)
    {
      v32 = *(v0 + 888);
      v109 = v29;
      v33 = *(v0 + 872);
      v34 = *(v0 + 864);
      v35 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v110[0] = v108;
      *v35 = 136446210;
      v5(v32, v31, v34);
      v36 = String.init<A>(describing:)();
      v38 = v37;
      v39 = *(v33 + 8);
      v39(v31, v34);
      v40 = sub_1000105AC(v36, v38, v110);

      *(v35 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v28, v109, "Unknown pageSource: %{public}s", v35, 0xCu);
      sub_10000959C(v108);

      v39(*(v0 + 904), *(v0 + 864));
    }

    else
    {
      v45 = *(v0 + 872);
      v46 = *(v0 + 864);

      v47 = *(v45 + 8);
      v47(v31, v46);
      v47(*(v0 + 904), *(v0 + 864));
    }

LABEL_18:
    v48 = *(v0 + 888);
    v49 = *(v0 + 872);
    v50 = *(v0 + 864);
    (*(v49 + 104))(v48, *(v0 + 1280), v50);
    v51 = static MusicPropertySource.== infix(_:_:)();
    (*(v49 + 8))(v48, v50);
    if (v51)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v52 = type metadata accessor for Logger();
      sub_1000060E4(v52, qword_1012193F8);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v55, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v56 = *(v0 + 8);

    return v56();
  }

  sub_1004E40DC(*(v0 + 232), *(v0 + 856), type metadata accessor for AlbumDetailDataSource.LoadingSource);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 1)
  {
    if (!v17)
    {
      v41 = (v0 + 856);
LABEL_32:
      v63 = *(v0 + 832);
      v64 = *(v0 + 824);
      v65 = *(v0 + 816);
      (*(v64 + 32))(v63, *v41, v65);
      v44 = Album.catalogID.getter();
      v43 = v66;
      (*(v64 + 8))(v63, v65);
      if (v43)
      {
        goto LABEL_33;
      }

      goto LABEL_18;
    }

    v88 = *(v0 + 856);
    v89 = *v88;
    *(v0 + 968) = *v88;
    v90 = v88[1];
    *(v0 + 976) = v90;
    MusicLibraryRequest.init()();
    swift_getKeyPath();
    *(v0 + 120) = v89;
    *(v0 + 128) = v90;
    MusicLibraryRequest.filter<A>(matching:equalTo:)();

    v91 = swift_task_alloc();
    *(v0 + 984) = v91;
    *v91 = v0;
    v91[1] = sub_1004B8C64;
    v23 = *(v0 + 792);
    v22 = *(v0 + 784);
  }

  else
  {
    if (v17 == 2)
    {
      (*(*(v0 + 584) + 32))(*(v0 + 640), *(v0 + 856), *(v0 + 576));
      sub_10010FC20(&qword_101183990);
      v58 = swift_allocObject();
      *(v0 + 1000) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&qword_10118BFD8);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v82 = swift_task_alloc();
      *(v0 + 1008) = v82;
      v60 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song);
      *v82 = v0;
      v82[1] = sub_1004B98B8;
      v61 = *(v0 + 632);
      goto LABEL_40;
    }

    if (v17 != 3)
    {
      (*(*(v0 + 368) + 32))(*(v0 + 416), *(v0 + 856), *(v0 + 360));
      sub_10010FC20(&qword_101183990);
      v58 = swift_allocObject();
      *(v0 + 1096) = v58;
      *(v58 + 16) = xmmword_100EBC6C0;
      sub_10010FC20(&unk_1011929B0);
      *(v58 + 32) = static PartialMusicProperty<A>.albums.getter();
      v87 = swift_task_alloc();
      *(v0 + 1104) = v87;
      v60 = sub_1004E41B4(&qword_101181CF8, &type metadata accessor for MusicVideo);
      *v87 = v0;
      v87[1] = sub_1004BC0E8;
      v61 = *(v0 + 408);
LABEL_42:
      v83 = *(v0 + 360);
      v84 = *(v0 + 240);
      v85 = &protocol witness table for MusicVideo;
      v86 = &protocol witness table for MusicVideo;
      goto LABEL_43;
    }

    v18 = *(v0 + 856);
    v19 = *v18;
    *(v0 + 1024) = *v18;
    v20 = v18[1];
    *(v0 + 1032) = v20;
    MusicLibraryRequest.init()();
    swift_getKeyPath();
    *(v0 + 104) = v19;
    *(v0 + 112) = v20;
    MusicLibraryRequest.filter<A>(matching:equalTo:)();

    v21 = swift_task_alloc();
    *(v0 + 1040) = v21;
    *v21 = v0;
    v21[1] = sub_1004BA51C;
    v22 = *(v0 + 496);
    v23 = *(v0 + 504);
  }

  return MusicLibraryRequest.response()(v22, v23);
}

uint64_t sub_1004B8C64()
{
  v2 = *v1;
  *(*v1 + 992) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BF694;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004B8D88;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004B8D88()
{
  v75 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 664);
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  MusicLibraryResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v4);
  v5 = sub_1004C4124(v1);
  v6 = *(v0 + 800);
  if (!v5)
  {
    v20 = *(v0 + 808);
    v21 = *(v0 + 792);
    v22 = *(v0 + 784);
    v23 = *(v0 + 776);
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);

    sub_1000095E8(v25, &unk_101184730);
    (*(v23 + 8))(v22, v24);
    (*(v6 + 8))(v20, v21);
LABEL_19:

    v51 = *(v0 + 8);

    return v51();
  }

  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v9 = *(v0 + 776);
  v10 = *(v0 + 752);
  sub_1000089F8(*(v0 + 760), v10, &unk_101184730);
  v11 = (*(v7 + 48))(v10, 1, v8);
  v12 = (v9 + 8);
  v13 = (v6 + 8);
  v14 = *(v0 + 808);
  v15 = *(v0 + 792);
  v16 = *(v0 + 784);
  v17 = *(v0 + 768);
  v18 = *(v0 + 760);
  v19 = *(v0 + 752);
  if (v11 == 1)
  {

    sub_1000095E8(v18, &unk_101184730);
    (*v12)(v16, v17);
    (*v13)(v14, v15);
    sub_1000095E8(v19, &unk_101184730);
    goto LABEL_12;
  }

  v26 = *(v0 + 824);
  v73 = *(v0 + 816);
  v71 = Album.catalogID.getter();
  v72 = v27;
  sub_1000095E8(v18, &unk_101184730);
  (*v12)(v16, v17);
  (*v13)(v14, v15);
  (*(v26 + 8))(v19, v73);
  if (!v72)
  {

LABEL_12:
    v43 = *(v0 + 888);
    v44 = *(v0 + 872);
    v45 = *(v0 + 864);
    (*(v44 + 104))(v43, *(v0 + 1280), v45);
    v46 = static MusicPropertySource.== infix(_:_:)();
    (*(v44 + 8))(v43, v45);
    if (v46)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_1000060E4(v47, qword_1012193F8);
      v48 = Logger.logObject.getter();
      v49 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&_mh_execute_header, v48, v49, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v50, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_19;
  }

  *(v0 + 1200) = v72;
  v28 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v71;
  *(v0 + 80) = v72;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v29 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v29(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v30 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v30 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v30 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v30 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v30 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v30 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v28 + v31))
  {
    sub_10010FC20(&qword_1011929C8);
    v32 = type metadata accessor for MusicCatalogResourceRequestOption();
    v33 = *(v32 - 8);
    v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_100EBC6B0;
    (*(v33 + 104))(v35 + v34, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v32);
    MusicCatalogResourceRequest.options.setter();
  }

  v36 = *(v0 + 1280);
  v37 = *(v0 + 952);
  v38 = *(v0 + 936);
  v39 = *(v0 + 880);
  v40 = *(v0 + 864);
  v41 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v38(v39, v41, v40);
  v42 = v37(v39, v40);
  if (v42 != v36)
  {
    if (v42 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v53 = *(v0 + 248);
      v54 = type metadata accessor for Logger();
      sub_1000060E4(v54, qword_1012193F8);
      v55 = v53;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = *(v0 + 936);
        v59 = *(v0 + 888);
        v60 = *(v0 + 864);
        v61 = *(v0 + 248);
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v74 = v63;
        *v62 = 136446210;
        v64 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v58(v59, v61 + v64, v60);
        v65 = String.init<A>(describing:)();
        v67 = sub_1000105AC(v65, v66, &v74);

        *(v62 + 4) = v67;
        _os_log_impl(&_mh_execute_header, v56, v57, "Unknown source: %{public}s", v62, 0xCu);
        sub_10000959C(v63);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v68 = swift_task_alloc();
  *(v0 + 1216) = v68;
  *v68 = v0;
  v68[1] = sub_1004BF18C;
  v69 = *(v0 + 280);
  v70 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v69, v70);
}

uint64_t sub_1004B98B8()
{
  v2 = *v1;
  *(*v1 + 1016) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BFCF0;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004B99DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004B99DC()
{
  v74 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 632);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 568);
  Song.albums.getter();
  v7 = *(v4 + 8);
  v7(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    v8 = *(v0 + 824);
    v9 = *(v0 + 816);
    v10 = *(v0 + 744);
    sub_1000095E8(*(v0 + 568), &unk_101192990);
    (*(v8 + 56))(v10, 1, 1, v9);
  }

  else
  {
    v11 = *(v0 + 656);
    v12 = *(v0 + 648);
    v13 = *(v0 + 568);
    sub_10034DA18(*(v0 + 744));
    (*(v11 + 8))(v13, v12);
  }

  if (!sub_1004C4124(*(v0 + 744)))
  {
    v22 = *(v0 + 744);
    v23 = *(v0 + 640);
    v24 = *(v0 + 576);

    sub_1000095E8(v22, &unk_101184730);
    v7(v23, v24);
LABEL_22:

    v52 = *(v0 + 8);

    return v52();
  }

  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 736);
  sub_1000089F8(*(v0 + 744), v16, &unk_101184730);
  v17 = (*(v14 + 48))(v16, 1, v15);
  v18 = *(v0 + 744);
  v19 = *(v0 + 736);
  v20 = *(v0 + 640);
  v21 = *(v0 + 576);
  if (v17 == 1)
  {

    sub_1000095E8(v18, &unk_101184730);
    v7(v20, v21);
    sub_1000095E8(v19, &unk_101184730);
    goto LABEL_15;
  }

  v25 = *(v0 + 824);
  v26 = *(v0 + 816);
  v72 = Album.catalogID.getter();
  v28 = v27;
  sub_1000095E8(v18, &unk_101184730);
  v7(v20, v21);
  (*(v25 + 8))(v19, v26);
  if (!v28)
  {

LABEL_15:
    v44 = *(v0 + 888);
    v45 = *(v0 + 872);
    v46 = *(v0 + 864);
    (*(v45 + 104))(v44, *(v0 + 1280), v46);
    v47 = static MusicPropertySource.== infix(_:_:)();
    (*(v45 + 8))(v44, v46);
    if (v47)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_1000060E4(v48, qword_1012193F8);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v51, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_22;
  }

  *(v0 + 1200) = v28;
  v29 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v72;
  *(v0 + 80) = v28;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v30 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v30(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v31 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v31 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v31 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v31 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v31 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v31 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v32 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v29 + v32))
  {
    sub_10010FC20(&qword_1011929C8);
    v33 = type metadata accessor for MusicCatalogResourceRequestOption();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBC6B0;
    (*(v34 + 104))(v36 + v35, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v33);
    MusicCatalogResourceRequest.options.setter();
  }

  v37 = *(v0 + 1280);
  v38 = *(v0 + 952);
  v39 = *(v0 + 936);
  v40 = *(v0 + 880);
  v41 = *(v0 + 864);
  v42 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v39(v40, v42, v41);
  v43 = v38(v40, v41);
  if (v43 != v37)
  {
    if (v43 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 248);
      v55 = type metadata accessor for Logger();
      sub_1000060E4(v55, qword_1012193F8);
      v56 = v54;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 936);
        v60 = *(v0 + 888);
        v61 = *(v0 + 864);
        v62 = *(v0 + 248);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v73 = v64;
        *v63 = 136446210;
        v65 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v59(v60, v62 + v65, v61);
        v66 = String.init<A>(describing:)();
        v68 = sub_1000105AC(v66, v67, &v73);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unknown source: %{public}s", v63, 0xCu);
        sub_10000959C(v64);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v69 = swift_task_alloc();
  *(v0 + 1216) = v69;
  *v69 = v0;
  v69[1] = sub_1004BF18C;
  v70 = *(v0 + 280);
  v71 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v70, v71);
}

uint64_t sub_1004BA51C()
{
  v2 = *v1;
  *(*v1 + 1048) = v0;

  v3 = *(v2 + 928);
  v4 = *(v2 + 920);
  if (v0)
  {
    v5 = sub_1004C03E4;
  }

  else
  {
    v5 = sub_1004BA658;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BA658()
{
  v93 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 472);
  v4 = *(v0 + 464);
  v5 = *(v0 + 448);
  v6 = *(v0 + 424);
  v7 = *(v0 + 432);
  MusicLibraryResponse.items.getter();
  sub_10034DD6C(v3);
  (*(v7 + 8))(v5, v6);
  sub_1000089F8(v3, v4, &unk_101183960);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v8 = *(v0 + 464);

    sub_1000095E8(v8, &unk_101183960);
    (*(*(v0 + 824) + 56))(*(v0 + 728), 1, 1, *(v0 + 816));
    v9 = sub_1004C4124(*(v0 + 728));
    v10 = *(v0 + 728);
    if (!v9)
    {
      v28 = *(v0 + 520);
      v29 = *(v0 + 504);
      v30 = *(v0 + 512);
      v32 = *(v0 + 488);
      v31 = *(v0 + 496);
      v34 = *(v0 + 472);
      v33 = *(v0 + 480);

      sub_1000095E8(v10, &unk_101184730);
      sub_1000095E8(v34, &unk_101183960);
      (*(v32 + 8))(v31, v33);
      (*(v30 + 8))(v28, v29);
LABEL_22:

      v68 = *(v0 + 8);

      return v68();
    }

    v11 = *(v0 + 824);
    v12 = *(v0 + 816);
    v13 = *(v0 + 720);
    sub_1000089F8(*(v0 + 728), v13, &unk_101184730);
    if ((*(v11 + 48))(v13, 1, v12) == 1)
    {
      v14 = *(v0 + 720);
      v15 = *(v0 + 520);
      v16 = *(v0 + 504);
      v17 = *(v0 + 512);
      v19 = *(v0 + 488);
      v18 = *(v0 + 496);
      v21 = *(v0 + 472);
      v20 = *(v0 + 480);
      sub_1000095E8(*(v0 + 728), &unk_101184730);
      sub_1000095E8(v21, &unk_101183960);
      (*(v19 + 8))(v18, v20);
      (*(v17 + 8))(v15, v16);
      sub_1000095E8(v14, &unk_101184730);
      goto LABEL_15;
    }

    v35 = *(v0 + 824);
    v36 = *(v0 + 728);
    v37 = *(v0 + 720);
    v90 = *(v0 + 520);
    v91 = *(v0 + 816);
    v38 = *(v0 + 512);
    v89 = *(v0 + 504);
    v39 = *(v0 + 488);
    v40 = *(v0 + 496);
    v41 = *(v0 + 472);
    v42 = *(v0 + 480);
    v88 = Album.catalogID.getter();
    v44 = v43;
    sub_1000095E8(v36, &unk_101184730);
    sub_1000095E8(v41, &unk_101183960);
    (*(v39 + 8))(v40, v42);
    (*(v38 + 8))(v90, v89);
    (*(v35 + 8))(v37, v91);
    if (!v44)
    {
LABEL_15:

      v60 = *(v0 + 888);
      v61 = *(v0 + 872);
      v62 = *(v0 + 864);
      (*(v61 + 104))(v60, *(v0 + 1280), v62);
      v63 = static MusicPropertySource.== infix(_:_:)();
      (*(v61 + 8))(v60, v62);
      if (v63)
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v64 = type metadata accessor for Logger();
        sub_1000060E4(v64, qword_1012193F8);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v67, 2u);
        }

        sub_1004C49FC(0);
      }

      else
      {
        sub_1004C5930();
      }

      goto LABEL_22;
    }

    *(v0 + 1200) = v44;
    v45 = *(v0 + 248);
    swift_getKeyPath();
    *(v0 + 72) = v88;
    *(v0 + 80) = v44;
    sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v46 = MusicCatalogResourceRequest.configuration.modify();
    MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
    v46(v0 + 16, 0);
    sub_10010FC20(&qword_101183990);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100EBEE70;
    sub_10010FC20(&qword_101192878);
    *(v47 + 32) = static PartialMusicProperty<A>.tracks.getter();
    *(v47 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
    *(v47 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
    *(v47 + 56) = static PartialMusicProperty<A>.artists.getter();
    *(v47 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
    *(v47 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
    MusicCatalogResourceRequest.properties.setter();
    v48 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
    *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
    if (*(v45 + v48))
    {
      sub_10010FC20(&qword_1011929C8);
      v49 = type metadata accessor for MusicCatalogResourceRequestOption();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_100EBC6B0;
      (*(v50 + 104))(v52 + v51, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v49);
      MusicCatalogResourceRequest.options.setter();
    }

    v53 = *(v0 + 1280);
    v54 = *(v0 + 952);
    v55 = *(v0 + 936);
    v56 = *(v0 + 880);
    v57 = *(v0 + 864);
    v58 = *(v0 + 240);
    MusicCatalogResourceRequest.prewarmForPlayback.setter();
    v55(v56, v58, v57);
    v59 = v54(v56, v57);
    if (v59 != v53)
    {
      if (v59 == enum case for MusicPropertySource.library(_:))
      {
        sub_1004C5930();
      }

      else
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v69 = *(v0 + 248);
        v70 = type metadata accessor for Logger();
        sub_1000060E4(v70, qword_1012193F8);
        v71 = v69;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v0 + 936);
          v75 = *(v0 + 888);
          v76 = *(v0 + 864);
          v77 = *(v0 + 248);
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v92 = v79;
          *v78 = 136446210;
          v80 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
          swift_beginAccess();
          v74(v75, v77 + v80, v76);
          v81 = String.init<A>(describing:)();
          v83 = sub_1000105AC(v81, v82, &v92);

          *(v78 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v72, v73, "Unknown source: %{public}s", v78, 0xCu);
          sub_10000959C(v79);
        }

        (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
      }
    }

    v84 = swift_task_alloc();
    *(v0 + 1216) = v84;
    *v84 = v0;
    v84[1] = sub_1004BF18C;
    v85 = *(v0 + 280);
    v86 = *(v0 + 288);

    return MusicCatalogResourceRequest.response()(v85, v86);
  }

  else
  {
    sub_10010FC20(&qword_101183990);
    v22 = swift_allocObject();
    *(v0 + 1056) = v22;
    *(v22 + 16) = xmmword_100EBC6C0;
    sub_10010FC20(&qword_10118BFD8);
    *(v22 + 32) = static PartialMusicProperty<A>.albums.getter();
    v23 = swift_task_alloc();
    *(v0 + 1064) = v23;
    v24 = sub_1004E41B4(&unk_1011929D0, &type metadata accessor for Song);
    *v23 = v0;
    v23[1] = sub_1004BB380;
    v25 = *(v0 + 624);
    v26 = *(v0 + 576);
    v27 = *(v0 + 240);

    return MusicItem<>.with(_:preferredSource:)(v25, v22, v27, v26, &protocol witness table for Song, &protocol witness table for Song, v24);
  }
}

uint64_t sub_1004BB380()
{
  v2 = *v1;
  *(*v1 + 1072) = v0;

  if (v0)
  {
    v3 = v2[116];
    v4 = v2[115];
    v5 = sub_1004C0A38;
  }

  else
  {
    v6 = v2[73];
    v7 = v2[72];
    v8 = v2[58];

    v9 = *(v6 + 8);
    v2[135] = v9;
    v2[136] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v8, v7);
    v3 = v2[116];
    v4 = v2[115];
    v5 = sub_1004BB4FC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BB4FC()
{
  v87 = v0;
  v1 = *(v0 + 1080);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 624);
  v5 = *(v0 + 576);
  v6 = *(v0 + 560);
  Song.albums.getter();
  v1(v4, v5);
  if ((*(v2 + 48))(v6, 1, v3) == 1)
  {
    sub_1000095E8(*(v0 + 560), &unk_101192990);
    (*(*(v0 + 824) + 56))(*(v0 + 728), 1, 1, *(v0 + 816));
  }

  else
  {
    v7 = *(v0 + 656);
    v8 = *(v0 + 648);
    v9 = *(v0 + 560);
    sub_10034DA18(*(v0 + 728));
    (*(v7 + 8))(v9, v8);
  }

  if (!sub_1004C4124(*(v0 + 728)))
  {
    v21 = *(v0 + 728);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 512);
    v26 = *(v0 + 488);
    v25 = *(v0 + 496);
    v28 = *(v0 + 472);
    v27 = *(v0 + 480);

    sub_1000095E8(v21, &unk_101184730);
    sub_1000095E8(v28, &unk_101183960);
    (*(v26 + 8))(v25, v27);
    (*(v24 + 8))(v22, v23);
LABEL_21:

    v62 = *(v0 + 8);

    return v62();
  }

  v10 = *(v0 + 824);
  v11 = *(v0 + 816);
  v12 = *(v0 + 720);
  sub_1000089F8(*(v0 + 728), v12, &unk_101184730);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v13 = *(v0 + 720);
    v14 = *(v0 + 520);
    v15 = *(v0 + 504);
    v16 = *(v0 + 512);
    v18 = *(v0 + 488);
    v17 = *(v0 + 496);
    v20 = *(v0 + 472);
    v19 = *(v0 + 480);
    sub_1000095E8(*(v0 + 728), &unk_101184730);
    sub_1000095E8(v20, &unk_101183960);
    (*(v18 + 8))(v17, v19);
    (*(v16 + 8))(v14, v15);
    sub_1000095E8(v13, &unk_101184730);
    goto LABEL_14;
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 728);
  v31 = *(v0 + 720);
  v84 = *(v0 + 520);
  v85 = *(v0 + 816);
  v32 = *(v0 + 512);
  v83 = *(v0 + 504);
  v33 = *(v0 + 488);
  v34 = *(v0 + 496);
  v35 = *(v0 + 472);
  v36 = *(v0 + 480);
  v82 = Album.catalogID.getter();
  v38 = v37;
  sub_1000095E8(v30, &unk_101184730);
  sub_1000095E8(v35, &unk_101183960);
  (*(v33 + 8))(v34, v36);
  (*(v32 + 8))(v84, v83);
  (*(v29 + 8))(v31, v85);
  if (!v38)
  {
LABEL_14:

    v54 = *(v0 + 888);
    v55 = *(v0 + 872);
    v56 = *(v0 + 864);
    (*(v55 + 104))(v54, *(v0 + 1280), v56);
    v57 = static MusicPropertySource.== infix(_:_:)();
    (*(v55 + 8))(v54, v56);
    if (v57)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_1000060E4(v58, qword_1012193F8);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v61, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_21;
  }

  *(v0 + 1200) = v38;
  v39 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v82;
  *(v0 + 80) = v38;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v40 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v40(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v41 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v41 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v41 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v41 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v41 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v41 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v42 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v39 + v42))
  {
    sub_10010FC20(&qword_1011929C8);
    v43 = type metadata accessor for MusicCatalogResourceRequestOption();
    v44 = *(v43 - 8);
    v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_100EBC6B0;
    (*(v44 + 104))(v46 + v45, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v43);
    MusicCatalogResourceRequest.options.setter();
  }

  v47 = *(v0 + 1280);
  v48 = *(v0 + 952);
  v49 = *(v0 + 936);
  v50 = *(v0 + 880);
  v51 = *(v0 + 864);
  v52 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v49(v50, v52, v51);
  v53 = v48(v50, v51);
  if (v53 != v47)
  {
    if (v53 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v64 = *(v0 + 248);
      v65 = type metadata accessor for Logger();
      sub_1000060E4(v65, qword_1012193F8);
      v66 = v64;
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = *(v0 + 936);
        v70 = *(v0 + 888);
        v71 = *(v0 + 864);
        v72 = *(v0 + 248);
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v86 = v74;
        *v73 = 136446210;
        v75 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v69(v70, v72 + v75, v71);
        v76 = String.init<A>(describing:)();
        v78 = sub_1000105AC(v76, v77, &v86);

        *(v73 + 4) = v78;
        _os_log_impl(&_mh_execute_header, v67, v68, "Unknown source: %{public}s", v73, 0xCu);
        sub_10000959C(v74);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v79 = swift_task_alloc();
  *(v0 + 1216) = v79;
  *v79 = v0;
  v79[1] = sub_1004BF18C;
  v80 = *(v0 + 280);
  v81 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v80, v81);
}

uint64_t sub_1004BC0E8()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C10EC;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BC20C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BC20C()
{
  v74 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 552);
  v4 = *(v0 + 408);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  MusicVideo.albums.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 824);
    v9 = *(v0 + 816);
    v10 = *(v0 + 712);
    sub_1000095E8(*(v0 + 552), &unk_101192990);
    (*(v8 + 56))(v10, 1, 1, v9);
  }

  else
  {
    v11 = *(v0 + 656);
    v12 = *(v0 + 648);
    v13 = *(v0 + 552);
    sub_10034DA18(*(v0 + 712));
    (*(v11 + 8))(v13, v12);
  }

  if (!sub_1004C4124(*(v0 + 712)))
  {
    v22 = *(v0 + 712);
    v23 = *(v0 + 416);
    v24 = *(v0 + 360);

    sub_1000095E8(v22, &unk_101184730);
    v7(v23, v24);
LABEL_22:

    v52 = *(v0 + 8);

    return v52();
  }

  v14 = *(v0 + 824);
  v15 = *(v0 + 816);
  v16 = *(v0 + 704);
  sub_1000089F8(*(v0 + 712), v16, &unk_101184730);
  v17 = (*(v14 + 48))(v16, 1, v15);
  v18 = *(v0 + 712);
  v19 = *(v0 + 704);
  v20 = *(v0 + 416);
  v21 = *(v0 + 360);
  if (v17 == 1)
  {

    sub_1000095E8(v18, &unk_101184730);
    v7(v20, v21);
    sub_1000095E8(v19, &unk_101184730);
    goto LABEL_15;
  }

  v25 = *(v0 + 824);
  v26 = *(v0 + 816);
  v72 = Album.catalogID.getter();
  v28 = v27;
  sub_1000095E8(v18, &unk_101184730);
  v7(v20, v21);
  (*(v25 + 8))(v19, v26);
  if (!v28)
  {

LABEL_15:
    v44 = *(v0 + 888);
    v45 = *(v0 + 872);
    v46 = *(v0 + 864);
    (*(v45 + 104))(v44, *(v0 + 1280), v46);
    v47 = static MusicPropertySource.== infix(_:_:)();
    (*(v45 + 8))(v44, v46);
    if (v47)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_1000060E4(v48, qword_1012193F8);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v51, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    goto LABEL_22;
  }

  *(v0 + 1200) = v28;
  v29 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v72;
  *(v0 + 80) = v28;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v30 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v30(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v31 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v31 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v31 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v31 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v31 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v31 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v32 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v29 + v32))
  {
    sub_10010FC20(&qword_1011929C8);
    v33 = type metadata accessor for MusicCatalogResourceRequestOption();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_100EBC6B0;
    (*(v34 + 104))(v36 + v35, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v33);
    MusicCatalogResourceRequest.options.setter();
  }

  v37 = *(v0 + 1280);
  v38 = *(v0 + 952);
  v39 = *(v0 + 936);
  v40 = *(v0 + 880);
  v41 = *(v0 + 864);
  v42 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v39(v40, v42, v41);
  v43 = v38(v40, v41);
  if (v43 != v37)
  {
    if (v43 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v54 = *(v0 + 248);
      v55 = type metadata accessor for Logger();
      sub_1000060E4(v55, qword_1012193F8);
      v56 = v54;
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 936);
        v60 = *(v0 + 888);
        v61 = *(v0 + 864);
        v62 = *(v0 + 248);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v73 = v64;
        *v63 = 136446210;
        v65 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v59(v60, v62 + v65, v61);
        v66 = String.init<A>(describing:)();
        v68 = sub_1000105AC(v66, v67, &v73);

        *(v63 + 4) = v68;
        _os_log_impl(&_mh_execute_header, v57, v58, "Unknown source: %{public}s", v63, 0xCu);
        sub_10000959C(v64);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v69 = swift_task_alloc();
  *(v0 + 1216) = v69;
  *v69 = v0;
  v69[1] = sub_1004BF18C;
  v70 = *(v0 + 280);
  v71 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v70, v71);
}

uint64_t sub_1004BCD48()
{
  v2 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C17D8;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BCE6C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BCE6C()
{
  v68 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 608);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v6 = *(v0 + 544);
  Song.albums.getter();
  v7 = *(v4 + 8);
  v7(v3, v5);
  if ((*(v1 + 48))(v6, 1, v2) == 1)
  {
    v8 = *(v0 + 544);
    v7(*(v0 + 616), *(v0 + 576));

    v9 = &unk_101192990;
LABEL_5:
    sub_1000095E8(v8, v9);
LABEL_6:
    v19 = *(v0 + 888);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    (*(v20 + 104))(v19, *(v0 + 1280), v21);
    v22 = static MusicPropertySource.== infix(_:_:)();
    (*(v20 + 8))(v19, v21);
    if (v22)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000060E4(v23, qword_1012193F8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v26, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v27 = *(v0 + 8);

    return v27();
  }

  v10 = *(v0 + 824);
  v11 = *(v0 + 816);
  v12 = *(v0 + 696);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 544);
  sub_10034DA18(v12);
  (*(v13 + 8))(v15, v14);
  v16 = (*(v10 + 48))(v12, 1, v11);
  v8 = *(v0 + 696);
  v17 = *(v0 + 616);
  v18 = *(v0 + 576);
  if (v16 == 1)
  {
    v7(*(v0 + 616), *(v0 + 576));

    v9 = &unk_101184730;
    goto LABEL_5;
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 816);
  v31 = Album.catalogID.getter();
  v33 = v32;
  v7(v17, v18);
  (*(v29 + 8))(v8, v30);
  if (!v33)
  {

    goto LABEL_6;
  }

  *(v0 + 1200) = v33;
  v34 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v31;
  *(v0 + 80) = v33;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v35 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v35(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v36 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v36 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v36 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v36 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v36 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v36 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v37 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v34 + v37))
  {
    sub_10010FC20(&qword_1011929C8);
    v38 = type metadata accessor for MusicCatalogResourceRequestOption();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBC6B0;
    (*(v39 + 104))(v41 + v40, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v38);
    MusicCatalogResourceRequest.options.setter();
  }

  v42 = *(v0 + 1280);
  v43 = *(v0 + 952);
  v44 = *(v0 + 936);
  v45 = *(v0 + 880);
  v46 = *(v0 + 864);
  v47 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v44(v45, v47, v46);
  v48 = v43(v45, v46);
  if (v48 != v42)
  {
    if (v48 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 248);
      v50 = type metadata accessor for Logger();
      sub_1000060E4(v50, qword_1012193F8);
      v51 = v49;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 936);
        v55 = *(v0 + 888);
        v56 = *(v0 + 864);
        v57 = *(v0 + 248);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67 = v59;
        *v58 = 136446210;
        v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v54(v55, v57 + v60, v56);
        v61 = String.init<A>(describing:)();
        v63 = sub_1000105AC(v61, v62, &v67);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v52, v53, "Unknown source: %{public}s", v58, 0xCu);
        sub_10000959C(v59);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v64 = swift_task_alloc();
  *(v0 + 1216) = v64;
  *v64 = v0;
  v64[1] = sub_1004BF18C;
  v65 = *(v0 + 280);
  v66 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v65, v66);
}

uint64_t sub_1004BD8F8()
{
  v2 = *v1;
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C1ECC;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BDA1C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BDA1C()
{
  v91 = v0;
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 456);
  v5 = *(v0 + 432);
  v4 = *(v0 + 440);
  v6 = *(v0 + 424);
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v3);
  (*(v5 + 8))(v4, v6);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v7 = *(v0 + 456);
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);

    (*(v13 + 8))(v11, v12);
    (*(v9 + 8))(v8, v10);
    v14 = &unk_101183960;
LABEL_7:
    sub_1000095E8(v7, v14);
LABEL_8:
    v42 = *(v0 + 888);
    v43 = *(v0 + 872);
    v44 = *(v0 + 864);
    (*(v43 + 104))(v42, *(v0 + 1280), v44);
    v45 = static MusicPropertySource.== infix(_:_:)();
    (*(v43 + 8))(v42, v44);
    if (v45)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v46 = type metadata accessor for Logger();
      sub_1000060E4(v46, qword_1012193F8);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v49, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v50 = *(v0 + 8);

    return v50();
  }

  v15 = *(v0 + 656);
  v16 = *(v0 + 648);
  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = *(v0 + 536);
  v20 = *(v0 + 456);
  Song.albums.getter();
  (*(v17 + 8))(v20, v18);
  if ((*(v15 + 48))(v19, 1, v16) == 1)
  {
    v7 = *(v0 + 536);
    v22 = *(v0 + 344);
    v21 = *(v0 + 352);
    v24 = *(v0 + 328);
    v23 = *(v0 + 336);
    v25 = *(v0 + 312);
    v26 = *(v0 + 320);

    (*(v26 + 8))(v24, v25);
    (*(v22 + 8))(v21, v23);
    v14 = &unk_101192990;
    goto LABEL_7;
  }

  v27 = *(v0 + 824);
  v28 = *(v0 + 816);
  v29 = *(v0 + 688);
  v30 = *(v0 + 656);
  v31 = *(v0 + 648);
  v32 = *(v0 + 536);
  v33 = *(v0 + 344);
  v34 = *(v0 + 320);
  sub_10034DA18(v29);
  (*(v30 + 8))(v32, v31);
  v35 = (*(v27 + 48))(v29, 1, v28);
  v36 = (v34 + 8);
  v37 = (v33 + 8);
  v7 = *(v0 + 688);
  v38 = *(v0 + 352);
  v40 = *(v0 + 328);
  v39 = *(v0 + 336);
  v41 = *(v0 + 312);
  if (v35 == 1)
  {

    (*v36)(v40, v41);
    (*v37)(v38, v39);
    v14 = &unk_101184730;
    goto LABEL_7;
  }

  v52 = *(v0 + 824);
  v89 = *(v0 + 816);
  v88 = Album.catalogID.getter();
  v54 = v53;
  (*v36)(v40, v41);
  (*v37)(v38, v39);
  (*(v52 + 8))(v7, v89);
  if (!v54)
  {

    goto LABEL_8;
  }

  *(v0 + 1200) = v54;
  v55 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v88;
  *(v0 + 80) = v54;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v56 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v56(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v57 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v57 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v57 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v57 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v57 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v57 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v58 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v55 + v58))
  {
    sub_10010FC20(&qword_1011929C8);
    v59 = type metadata accessor for MusicCatalogResourceRequestOption();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_100EBC6B0;
    (*(v60 + 104))(v62 + v61, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v59);
    MusicCatalogResourceRequest.options.setter();
  }

  v63 = *(v0 + 1280);
  v64 = *(v0 + 952);
  v65 = *(v0 + 936);
  v66 = *(v0 + 880);
  v67 = *(v0 + 864);
  v68 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v65(v66, v68, v67);
  v69 = v64(v66, v67);
  if (v69 != v63)
  {
    if (v69 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v70 = *(v0 + 248);
      v71 = type metadata accessor for Logger();
      sub_1000060E4(v71, qword_1012193F8);
      v72 = v70;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = *(v0 + 936);
        v76 = *(v0 + 888);
        v77 = *(v0 + 864);
        v78 = *(v0 + 248);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v90 = v80;
        *v79 = 136446210;
        v81 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v75(v76, v78 + v81, v77);
        v82 = String.init<A>(describing:)();
        v84 = sub_1000105AC(v82, v83, &v90);

        *(v79 + 4) = v84;
        _os_log_impl(&_mh_execute_header, v73, v74, "Unknown source: %{public}s", v79, 0xCu);
        sub_10000959C(v80);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v85 = swift_task_alloc();
  *(v0 + 1216) = v85;
  *v85 = v0;
  v85[1] = sub_1004BF18C;
  v86 = *(v0 + 280);
  v87 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v86, v87);
}

uint64_t sub_1004BE5E0()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C2524;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BE704;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BE704()
{
  v68 = v0;
  v1 = *(v0 + 656);
  v2 = *(v0 + 648);
  v3 = *(v0 + 528);
  v4 = *(v0 + 392);
  v5 = *(v0 + 360);
  v6 = *(v0 + 368);
  MusicVideo.albums.getter();
  v7 = *(v6 + 8);
  v7(v4, v5);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 528);
    v7(*(v0 + 400), *(v0 + 360));

    v9 = &unk_101192990;
LABEL_5:
    sub_1000095E8(v8, v9);
LABEL_6:
    v19 = *(v0 + 888);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    (*(v20 + 104))(v19, *(v0 + 1280), v21);
    v22 = static MusicPropertySource.== infix(_:_:)();
    (*(v20 + 8))(v19, v21);
    if (v22)
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000060E4(v23, qword_1012193F8);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v26, 2u);
      }

      sub_1004C49FC(0);
    }

    else
    {
      sub_1004C5930();
    }

    v27 = *(v0 + 8);

    return v27();
  }

  v10 = *(v0 + 824);
  v11 = *(v0 + 816);
  v12 = *(v0 + 680);
  v13 = *(v0 + 656);
  v14 = *(v0 + 648);
  v15 = *(v0 + 528);
  sub_10034DA18(v12);
  (*(v13 + 8))(v15, v14);
  v16 = (*(v10 + 48))(v12, 1, v11);
  v8 = *(v0 + 680);
  v17 = *(v0 + 400);
  v18 = *(v0 + 360);
  if (v16 == 1)
  {
    v7(*(v0 + 400), *(v0 + 360));

    v9 = &unk_101184730;
    goto LABEL_5;
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 816);
  v31 = Album.catalogID.getter();
  v33 = v32;
  v7(v17, v18);
  (*(v29 + 8))(v8, v30);
  if (!v33)
  {

    goto LABEL_6;
  }

  *(v0 + 1200) = v33;
  v34 = *(v0 + 248);
  swift_getKeyPath();
  *(v0 + 72) = v31;
  *(v0 + 80) = v33;
  sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);

  MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
  v35 = MusicCatalogResourceRequest.configuration.modify();
  MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
  v35(v0 + 16, 0);
  sub_10010FC20(&qword_101183990);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100EBEE70;
  sub_10010FC20(&qword_101192878);
  *(v36 + 32) = static PartialMusicProperty<A>.tracks.getter();
  *(v36 + 40) = static PartialMusicProperty<A>.recordLabels.getter();
  *(v36 + 48) = static PartialMusicProperty<A>.tracksPopularity.getter();
  *(v36 + 56) = static PartialMusicProperty<A>.artists.getter();
  *(v36 + 64) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
  *(v36 + 72) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
  MusicCatalogResourceRequest.properties.setter();
  v37 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  *(v0 + 1208) = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeEquivalents;
  if (*(v34 + v37))
  {
    sub_10010FC20(&qword_1011929C8);
    v38 = type metadata accessor for MusicCatalogResourceRequestOption();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100EBC6B0;
    (*(v39 + 104))(v41 + v40, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v38);
    MusicCatalogResourceRequest.options.setter();
  }

  v42 = *(v0 + 1280);
  v43 = *(v0 + 952);
  v44 = *(v0 + 936);
  v45 = *(v0 + 880);
  v46 = *(v0 + 864);
  v47 = *(v0 + 240);
  MusicCatalogResourceRequest.prewarmForPlayback.setter();
  v44(v45, v47, v46);
  v48 = v43(v45, v46);
  if (v48 != v42)
  {
    if (v48 == enum case for MusicPropertySource.library(_:))
    {
      sub_1004C5930();
    }

    else
    {
      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v49 = *(v0 + 248);
      v50 = type metadata accessor for Logger();
      sub_1000060E4(v50, qword_1012193F8);
      v51 = v49;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 936);
        v55 = *(v0 + 888);
        v56 = *(v0 + 864);
        v57 = *(v0 + 248);
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v67 = v59;
        *v58 = 136446210;
        v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
        swift_beginAccess();
        v54(v55, v57 + v60, v56);
        v61 = String.init<A>(describing:)();
        v63 = sub_1000105AC(v61, v62, &v67);

        *(v58 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v52, v53, "Unknown source: %{public}s", v58, 0xCu);
        sub_10000959C(v59);
      }

      (*(*(v0 + 872) + 8))(*(v0 + 880), *(v0 + 864));
    }
  }

  v64 = swift_task_alloc();
  *(v0 + 1216) = v64;
  *v64 = v0;
  v64[1] = sub_1004BF18C;
  v65 = *(v0 + 280);
  v66 = *(v0 + 288);

  return MusicCatalogResourceRequest.response()(v65, v66);
}

uint64_t sub_1004BF18C()
{
  v2 = *v1;
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C2C10;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004BF2B0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004BF2B0()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[37];
  v12 = v0[38];
  v5 = v0[35];
  v10 = v0[81];
  v11 = v0[36];
  v7 = v0[32];
  v6 = v0[33];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v10);
  sub_1004C4524(v1);
  sub_1000095E8(v1, &unk_101184730);
  (*(v6 + 8))(v5, v7);
  (*(v4 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004BF694()
{
  v28 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);

  (*(v2 + 8))(v1, v3);
  v4 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012193F8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 992);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = MusicItemID.description.getter();
    v13 = v12;

    v14 = sub_1000105AC(v11, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 224) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v27);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve library album from id %{public}s with error=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v4 = &unk_10117F000;
  }

  else
  {
  }

  v18 = *(v0 + 888);
  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  (*(v19 + 104))(v18, *(v0 + 1280), v20);
  v21 = static MusicPropertySource.== infix(_:_:)();
  (*(v19 + 8))(v18, v20);
  if (v21)
  {
    if (v4[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v5, qword_1012193F8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v24, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1004BFCF0()
{
  v37 = v0;

  v1 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 640);
  v3 = *(v0 + 600);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1016);
  v10 = *(v0 + 640);
  v11 = *(v0 + 600);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 216) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve library album from the initializing song %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = &unk_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C03E4()
{
  v27 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 1048);
  v5 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_1012193F8);

  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v26[0] = swift_slowAlloc();
    *v9 = 136446466;
    v10 = MusicItemID.description.getter();
    v12 = v11;

    v13 = sub_1000105AC(v10, v12, v26);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    *(v0 + 208) = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v14 = String.init<A>(describing:)();
    v16 = sub_1000105AC(v14, v15, v26);

    *(v9 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to retrieve library album from the initializing song ID %{public}s with error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    v5 = &unk_10117F000;
  }

  else
  {
  }

  v17 = *(v0 + 888);
  v18 = *(v0 + 872);
  v19 = *(v0 + 864);
  (*(v18 + 104))(v17, *(v0 + 1280), v19);
  v20 = static MusicPropertySource.== infix(_:_:)();
  (*(v18 + 8))(v17, v19);
  if (v20)
  {
    if (v5[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v6, qword_1012193F8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v23, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1004C0A38()
{
  v34 = v0;
  v1 = *(v0 + 584);
  v32 = *(v0 + 576);
  v2 = *(v0 + 520);
  v3 = *(v0 + 504);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 496);
  v8 = *(v0 + 472);
  v7 = *(v0 + 480);
  v9 = *(v0 + 464);

  sub_1000095E8(v8, &unk_101183960);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v2, v3);
  (*(v1 + 8))(v9, v32);
  v10 = *(v0 + 1072);
  v11 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1012193F8);

  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v15 = 136446466;
    v16 = MusicItemID.description.getter();
    v18 = v17;

    v19 = sub_1000105AC(v16, v18, v33);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    *(v0 + 208) = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v33);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to retrieve library album from the initializing song ID %{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
    v11 = &unk_10117F000;
  }

  else
  {
  }

  v23 = *(v0 + 888);
  v24 = *(v0 + 872);
  v25 = *(v0 + 864);
  (*(v24 + 104))(v23, *(v0 + 1280), v25);
  v26 = static MusicPropertySource.== infix(_:_:)();
  (*(v24 + 8))(v23, v25);
  if (v26)
  {
    if (v11[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v12, qword_1012193F8);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v29, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1004C10EC()
{
  v37 = v0;

  v1 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 416);
  v3 = *(v0 + 384);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 416);
  v11 = *(v0 + 384);
  v12 = *(v0 + 360);
  v13 = *(v0 + 368);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 200) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve library album from the initializing musicVideo %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = &unk_10117F000;

    v18(v34, v12);
  }

  else
  {

    v23 = *(v13 + 8);
    v23(v11, v12);
    v23(v10, v12);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C17D8()
{
  v37 = v0;

  v1 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 616);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v4 + 16))(v3, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 616);
  v11 = *(v0 + 592);
  v12 = *(v0 + 584);
  v13 = *(v0 + 576);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_101183F40, &type metadata accessor for Song);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 192) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve catalog album from the initializing song %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = &unk_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C1ECC()
{
  v28 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);

  (*(v2 + 8))(v1, v3);
  v4 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000060E4(v5, qword_1012193F8);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1168);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v10 = 136446466;
    v11 = MusicItemID.description.getter();
    v13 = v12;

    v14 = sub_1000105AC(v11, v13, v27);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    *(v0 + 184) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v15 = String.init<A>(describing:)();
    v17 = sub_1000105AC(v15, v16, v27);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to retrieve catalog album from the initializing song id %{public}s with error=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    v4 = &unk_10117F000;
  }

  else
  {
  }

  v18 = *(v0 + 888);
  v19 = *(v0 + 872);
  v20 = *(v0 + 864);
  (*(v19 + 104))(v18, *(v0 + 1280), v20);
  v21 = static MusicPropertySource.== infix(_:_:)();
  (*(v19 + 8))(v18, v20);
  if (v21)
  {
    if (v4[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v5, qword_1012193F8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v24, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1004C2524()
{
  v37 = v0;

  v1 = &unk_10117F000;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 400);
  v3 = *(v0 + 368);
  v4 = *(v0 + 376);
  v5 = *(v0 + 360);
  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_1012193F8);
  (*(v3 + 16))(v4, v2, v5);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1192);
  v10 = *(v0 + 400);
  v12 = *(v0 + 368);
  v11 = *(v0 + 376);
  v13 = *(v0 + 360);
  if (v8)
  {
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136446466;
    sub_1004E41B4(&unk_1011927B0, &type metadata accessor for MusicVideo);
    v33 = v7;
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v10;
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v11, v13);
    v19 = sub_1000105AC(v15, v17, v36);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    *(v0 + 136) = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v20 = String.init<A>(describing:)();
    v22 = sub_1000105AC(v20, v21, v36);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v33, "Failed to retrieve catalog album from the initializing musicVideo %{public}s with error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();

    v1 = &unk_10117F000;

    v18(v34, v13);
  }

  else
  {

    v23 = *(v12 + 8);
    v23(v11, v13);
    v23(v10, v13);
  }

  v24 = *(v0 + 888);
  v25 = *(v0 + 872);
  v26 = *(v0 + 864);
  (*(v25 + 104))(v24, *(v0 + 1280), v26);
  v27 = static MusicPropertySource.== infix(_:_:)();
  (*(v25 + 8))(v24, v26);
  if (v27)
  {
    if (v1[393] != -1)
    {
      swift_once();
    }

    sub_1000060E4(v35, qword_1012193F8);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Source is catalog, but there is no catalog ID. Cannot display album detail page., privacy: .public)", v30, 2u);
    }

    sub_1004C49FC(0);
  }

  else
  {
    sub_1004C5930();
  }

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1004C2C10()
{
  v70 = v0;
  *(v0 + 144) = *(v0 + 1224);
  swift_errorRetain();
  *(v0 + 1232) = sub_10010FC20(&qword_1011824A0);
  *(v0 + 1240) = sub_100009F78(0, &qword_1011929C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_22;
  }

  v1 = *(v0 + 1208);
  v2 = *(v0 + 248);
  v3 = *(v0 + 152);
  *(v0 + 1248) = v3;
  if (*(v2 + v1))
  {
    v4 = v3;
LABEL_15:
    v32 = *(v0 + 1280);
    v33 = *(v0 + 888);
    v34 = *(v0 + 872);
    v35 = *(v0 + 864);

    (*(v34 + 104))(v33, v32, v35);
    v36 = static MusicPropertySource.== infix(_:_:)();
    (*(v34 + 8))(v33, v35);
    if (v36)
    {

      if (qword_10117FC48 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_1000060E4(v37, qword_1012193F8);
      v38 = v3;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v69[0] = v42;
        *v41 = 136446210;
        v43 = v38;
        v44 = [v43 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_1000105AC(v45, v47, v69);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve catalog album with error=%{public}s", v41, 0xCu);
        sub_10000959C(v42);
      }

      v50 = *(v0 + 296);
      v49 = *(v0 + 304);
      v51 = *(v0 + 288);
      v52 = v38;
      sub_1004C49FC(v38);

      (*(v50 + 8))(v49, v51);

LABEL_27:

      v66 = *(v0 + 8);

      return v66();
    }

LABEL_22:

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_1012193F8);
    swift_errorRetain();
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();

    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 1224);
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v60 = *(v0 + 288);
    if (v56)
    {
      v68 = *(v0 + 304);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v69[0] = v62;
      *v61 = 136446210;
      *(v0 + 160) = v57;
      swift_errorRetain();
      v63 = String.init<A>(describing:)();
      v65 = sub_1000105AC(v63, v64, v69);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to retrieve catalog album with error=%{public}s", v61, 0xCu);
      sub_10000959C(v62);

      (*(v58 + 8))(v68, v60);
    }

    else
    {

      (*(v58 + 8))(v59, v60);
    }

    goto LABEL_27;
  }

  v5 = *(v0 + 888);
  v6 = *(v0 + 872);
  v7 = *(v0 + 864);
  (*(v6 + 104))(v5, *(v0 + 1280), v7);
  v8 = v3;
  v9 = static MusicPropertySource.== infix(_:_:)();
  (*(v6 + 8))(v5, v7);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  *(v0 + 1256) = sub_1000060E4(v10, qword_1012193F8);
  v11 = v8;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v69[0] = v15;
    *v14 = 136446210;
    v16 = v11;
    v17 = [v16 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = sub_1000105AC(v18, v20, v69);

    *(v14 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Failed to retrieve catalog album with error=%{public}s", v14, 0xCu);
    sub_10000959C(v15);
  }

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Attempting request including equivalents.", v24, 2u);
  }

  sub_10010FC20(&qword_1011929C8);
  v25 = type metadata accessor for MusicCatalogResourceRequestOption();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  (*(v26 + 104))(v28 + v27, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v25);
  MusicCatalogResourceRequest.options.setter();
  v29 = swift_task_alloc();
  *(v0 + 1264) = v29;
  *v29 = v0;
  v29[1] = sub_1004C36F0;
  v30 = *(v0 + 288);
  v31 = *(v0 + 272);

  return MusicCatalogResourceRequest.response()(v31, v30);
}

uint64_t sub_1004C36F0()
{
  v2 = *v1;
  *(*v1 + 1272) = v0;

  if (v0)
  {
    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C3C18;
  }

  else
  {

    v3 = *(v2 + 928);
    v4 = *(v2 + 920);
    v5 = sub_1004C3820;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004C3820()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[82];
  v10 = v0[81];
  v11 = v0[156];
  v4 = v0[37];
  v12 = v0[36];
  v13 = v0[38];
  v5 = v0[33];
  v6 = v0[34];
  v7 = v0[32];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v1);
  (*(v3 + 8))(v2, v10);
  sub_1004C4524(v1);

  sub_1000095E8(v1, &unk_101184730);
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1004C3C18()
{
  v20 = v0;
  *(v0 + 168) = *(v0 + 1272);
  swift_errorRetain();
  result = swift_dynamicCast();
  if (result)
  {

    v2 = *(v0 + 176);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v19 = v6;
      *v5 = 136446210;
      v7 = v2;
      v8 = [v7 description];
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_1000105AC(v9, v11, &v19);

      *(v5 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve catalog album when attempting to include equivalents with error=%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    v13 = *(v0 + 1248);
    v15 = *(v0 + 296);
    v14 = *(v0 + 304);
    v16 = *(v0 + 288);
    v17 = v2;
    sub_1004C49FC(v2);

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

BOOL sub_1004C4124(uint64_t a1)
{
  v3 = type metadata accessor for MusicPropertySource();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(a1, v13, &unk_101184730);
  v18 = (*(v15 + 48))(v13, 1, v14);
  if (v18 == 1)
  {
    sub_1000095E8(v13, &unk_101184730);
    if (*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback) == 1)
    {
      v26 = v31;
      v25 = v32;
      v27 = v33;
      (*(v32 + 104))(v31, enum case for MusicPropertySource.catalog(_:), v33);
      v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
      swift_beginAccess();
      (*(v25 + 40))(v1 + v28, v26, v27);
      swift_endAccess();
      sub_1004AEA08();
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    (*(v15 + 16))(v10, v17, v14);
    (*(v15 + 56))(v10, 0, 1, v14);
    v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(v1 + v19, v7, &unk_101184730);
    swift_beginAccess();
    sub_1002190E0(v10, v1 + v19, &unk_101184730);
    swift_endAccess();
    sub_1004B2480(v7);
    sub_1000095E8(v7, &unk_101184730);
    sub_1000095E8(v10, &unk_101184730);
    v20 = Album.catalogID.getter();
    v21 = (v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
    v22 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
    v23 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
    *v21 = v20;
    v21[1] = v24;
    sub_1004ABC24(v22, v23);

    (*(v15 + 8))(v17, v14);
  }

  return v18 != 1;
}

void sub_1004C4524(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for MusicPropertySource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v32 = &v29 - v6;
  v7 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v29 - v11;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v30 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000089F8(v29, v15, &unk_101184730);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &unk_101184730);
    v19 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v20 = v32;
    (*(v3 + 16))(v32, v1 + v19, v2);
    v21 = v31;
    (*(v3 + 104))(v31, enum case for MusicPropertySource.catalog(_:), v2);
    LOBYTE(v19) = static MusicPropertySource.== infix(_:_:)();
    v22 = *(v3 + 8);
    v22(v21, v2);
    v22(v20, v2);
    if (v19)
    {
      sub_1004C49FC(0);
    }
  }

  else
  {
    v23 = v30;
    (*(v17 + 32))(v30, v15, v16);
    (*(v17 + 16))(v12, v23, v16);
    (*(v17 + 56))(v12, 0, 1, v16);
    v24 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v1 + v24, v9, &unk_101184730);
    swift_beginAccess();
    sub_1002190E0(v12, v1 + v24, &unk_101184730);
    swift_endAccess();
    sub_1004D53B8(v9);
    sub_1000095E8(v9, &unk_101184730);
    sub_1000095E8(v12, &unk_101184730);
    v25 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    v26 = v32;
    (*(v3 + 16))(v32, v1 + v25, v2);
    v27 = v31;
    (*(v3 + 104))(v31, enum case for MusicPropertySource.catalog(_:), v2);
    LOBYTE(v25) = static MusicPropertySource.== infix(_:_:)();
    v28 = *(v3 + 8);
    v28(v27, v2);
    v28(v26, v2);
    if (v25)
    {
      sub_1004ADB28(0);
      sub_1004C5930();
    }

    (*(v17 + 8))(v30, v16);
  }
}

void sub_1004C49FC(void *a1)
{
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_1012193F8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Displaying catalog album error view.", v5, 2u);
  }

  if (a1)
  {
    v6 = a1;
    v7 = [v6 userInfo];
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v8 + 16))
    {
      v11 = sub_100019C10(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_10000DD18(*(v8 + 56) + 32 * v11, v17);

        if ((swift_dynamicCast() & 1) != 0 && (v16 - 400) <= 0x63)
        {
          sub_1004C4C94(0xC000000000000001, 0, 0);
LABEL_17:

          return;
        }

LABEL_16:
        v14 = sub_1004AD6D0();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1004C4C94(v14 & 1, sub_1004E9958, v15);

        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_1004C4C94(0xC000000000000001, 0, 0);
}

void sub_1004C4C94(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v8 - 8);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v3 + v11, v10, &unk_101184730);
  v12 = type metadata accessor for Album();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_1000095E8(v10, &unk_101184730);
  if (v11 != 1)
  {
LABEL_7:
    sub_10011896C(a1);
    goto LABEL_8;
  }

  v13 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v13 == 2)
    {
      a2 = 0;
      a3 = 0;
      a1 = 0x8000000000000001;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v13)
  {
    a2 = 0;
    a3 = 0;
    a1 = a1 & 0x100 | 0x4000000000000001;
  }

  else
  {

    a1 = 1;
  }

LABEL_8:
  v14 = (v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v15 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  v16 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8);
  v17 = *(v3 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  sub_10011896C(a1);
  sub_1004AC798(v15, v16, v17);
  sub_1004E5BA4(v15);
  sub_1004E5B90(a1);
  v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v18, v27, &unk_1011926C0);
  if (v28)
  {
    sub_1000095E8(v27, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v27, &unk_1011926C0);
    if (Strong)
    {
      v20 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
      [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
      v21 = *&Strong[v20];
      *&Strong[v20] = 0;
    }
  }

  v22 = *v14;
  if (*v14 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL && (v22 >> 62 == 3 || (v22))
  {
    sub_1000089F8(v4 + v18, v27, &unk_1011926C0);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0);
    }

    else
    {
      v23 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0);
      if (v23)
      {
        sub_10069F9B8();

        sub_1005587C8();
      }
    }

    *(v4 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_1004C97D0(0);
    sub_1000089F8(v4 + v18, v27, &unk_1011926C0);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0);
    }

    else
    {
      v24 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0);
      if (v24)
      {
        sub_10069F67C();
      }
    }

    sub_1000089F8(v4 + v18, v27, &unk_1011926C0);
    if (v28)
    {
      sub_1000095E8(v27, &unk_1011926C0);
    }

    else
    {
      v25 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v27, &unk_1011926C0);
      if (v25)
      {
        [v25 setNeedsUpdateContentUnavailableConfiguration];
      }
    }
  }

  else
  {
    sub_1004C97D0(0);
  }
}

uint64_t sub_1004C50FC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a1;
  v60 = a2;
  v4 = type metadata accessor for Composer();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Genre();
  v50 = *(v54 - 8);
  __chkstk_darwin(v54);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011926F0);
  v8 = __chkstk_darwin(v7 - 8);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v47 - v10;
  v11 = sub_10010FC20(&qword_101188E88);
  v59 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v47 - v12;
  v14 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v14 - 8);
  v16 = &v47 - v15;
  v17 = type metadata accessor for Album();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  v58 = v3;
  v22 = v3 + v21;
  v23 = v18;
  sub_1000089F8(v22, v16, &unk_101184730);
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    (*(v18 + 32))(v20, v16, v17);
    type metadata accessor for Track();
    MusicLibrarySectionedRequest.init()();
    swift_getKeyPath();
    v63 = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();

    MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
    v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_scope;
    v29 = v58;
    swift_beginAccess();
    v30 = v57;
    sub_1000089F8(v29 + v28, v57, &unk_1011926F0);
    v31 = _s6AlbumsV5ScopeOMa(0);
    v32 = (*(*(v31 - 8) + 48))(v30, 1, v31);
    v48 = v20;
    v27 = v11;
    if (v32 != 1)
    {
      v33 = v55;
      sub_1000089F8(v30, v55, &unk_1011926F0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        v37 = v51;
        v38 = v52;
        v39 = v13;
        v40 = v27;
        v41 = v53;
        (*(v52 + 32))(v51, v33, v53);
        swift_getKeyPath();
        MusicLibrarySectionedRequest<>.filterItems<A>(matching:contains:)();

        v42 = v41;
        v27 = v40;
        v13 = v39;
        (*(v38 + 8))(v37, v42);
      }

      else if (EnumCaseMultiPayload)
      {
        sub_1004E414C(v33, _s6AlbumsV5ScopeOMa);
      }

      else
      {
        v35 = v50;
        v36 = v49;
        (*(v50 + 32))(v49, v33, v54);
        swift_getKeyPath();
        MusicLibrarySectionedRequest.filterItems<A>(matching:contains:)();

        (*(v35 + 8))(v36, v54);
      }
    }

    sub_1000095E8(v30, &unk_1011926F0);
    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    swift_getKeyPath();
    MusicLibrarySectionedRequest.sortItems<A>(by:ascending:)();

    v43 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v29 + v43, &v61, &unk_1011926C0);
    if (v62)
    {
      sub_1000095E8(&v61, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v61, &unk_1011926C0);
      if (Strong)
      {
        v45 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

LABEL_14:
        v25 = v60;
        MusicLibrarySectionedRequest.library.setter();
        MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
        MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
        (*(v23 + 8))(v48, v17);
        v26 = v59;
        (*(v59 + 32))(v25, v13, v27);
        v24 = 0;
        return (*(v26 + 56))(v25, v24, 1, v27);
      }
    }

    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_14;
  }

  sub_1000095E8(v16, &unk_101184730);
  v24 = 1;
  v26 = v59;
  v25 = v60;
  v27 = v11;
  return (*(v26 + 56))(v25, v24, 1, v27);
}

uint64_t sub_1004C5930()
{
  v1 = type metadata accessor for MusicPropertySource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v22[-v6];
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v9 = *(v2 + 16);
  v9(v7, &v0[v8], v1);
  v10 = (*(v2 + 88))(v7, v1);
  if (v10 == enum case for MusicPropertySource.catalog(_:))
  {
    return sub_1004C5BFC();
  }

  if (v10 == enum case for MusicPropertySource.library(_:))
  {
    return sub_1004C6854();
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000060E4(v12, qword_1012193F8);
  v24 = v0;
  v13 = v0;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v15;
    v18 = v17;
    v25 = v17;
    *v16 = 136446210;
    v9(v4, &v24[v8], v1);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v25);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v23, "Unknown source: %{public}s", v16, 0xCu);
    sub_10000959C(v18);
  }

  return (*(v2 + 8))(v7, v1);
}

uint64_t sub_1004C5BFC()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v37 = v32 - v3;
  v39 = sub_10010FC20(&qword_1011928F8);
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = v32 - v4;
  v38 = sub_10010FC20(&qword_101192900);
  v41 = *(v38 - 8);
  __chkstk_darwin(v38);
  v6 = v32 - v5;
  v42 = sub_10010FC20(&qword_101192908);
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v8 = v32 - v7;
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = v32 - v10;
  v12 = type metadata accessor for Album();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v16, v11, &unk_101184730);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1000095E8(v11, &unk_101184730);
  }

  v18 = *(v13 + 32);
  v34 = v15;
  v18(v15, v11, v12);
  sub_10010FC20(&qword_101192910);
  v19 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100EBC6B0;
  (*(v13 + 16))(v20 + v19, v15, v12);
  sub_1004E41B4(&qword_101192918, &type metadata accessor for Album);
  v33 = v8;
  MusicLibraryMapping.Request.init(mappingItems:)();
  sub_100020674(&qword_101192920, &qword_101192908);
  v21 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v22 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse);
  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse) = v21 | 0x8000000000000000;
  v32[1] = v21;

  sub_1004E6028(v22);
  v23 = v35;
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  sub_100009F78(0, &qword_101182960);
  v24 = static OS_dispatch_queue.main.getter();
  v43 = v24;
  v25 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v26 = v37;
  (*(*(v25 - 8) + 56))(v37, 1, 1, v25);
  sub_100020674(&qword_101192928, &qword_1011928F8);
  v27 = v41;
  v32[0] = v1;
  sub_10001C070(&qword_101184920, &qword_101182960);
  v28 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v26, &qword_101182140);

  (*(v36 + 8))(v23, v28);
  swift_allocObject();
  v29 = v32[0];
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_101192930, &qword_101192900);
  v30 = v38;
  v31 = Publisher<>.sink(receiveValue:)();

  (*(v27 + 8))(v6, v30);
  (*(v40 + 8))(v33, v42);
  (*(v13 + 8))(v34, v12);
  *(v29 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription) = v31;
}

void sub_1004C62D4(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v34 - v8;
  v9 = sub_10010FC20(&qword_101192938);
  __chkstk_darwin(v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_10010FC20(&qword_101192940);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v16 = type metadata accessor for Album();
  v36 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v34 = v16;
    v35 = v4;
    sub_1000089F8(a1, v11, &qword_101192938);
    v24 = sub_10010FC20(&qword_101192948);
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v11, 1, v24) == 1)
    {

      sub_1000095E8(v11, &qword_101192938);
    }

    else
    {
      v26 = MusicLibraryMapping.Response.mappedItems.getter();
      (*(v25 + 8))(v11, v24);
      if (*(v26 + 16))
      {
        (*(v13 + 16))(v15, v26 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v12);

        MusicLibraryMapping.MappedItem.item.getter();
        (*(v13 + 8))(v15, v12);
        v27 = v36;
        v28 = v34;
        (*(v36 + 32))(v21, v18, v34);
        v29 = v37;
        (*(v27 + 16))(v37, v21, v28);
        (*(v27 + 56))(v29, 0, 1, v28);
        v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        v31 = v38;
        sub_1000089F8(v23 + v30, v38, &unk_101184730);
        swift_beginAccess();
        sub_1002190E0(v29, v23 + v30, &unk_101184730);
        swift_endAccess();
        sub_1004B2480(v31);
        sub_1000095E8(v31, &unk_101184730);
        sub_1000095E8(v29, &unk_101184730);
        v32 = v35;
        Album.tracks.getter();
        v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1002190E0(v32, v23 + v33, &unk_1011842D0);
        swift_endAccess();
        sub_1004CD200();
        sub_1000095E8(v32, &unk_1011842D0);
        sub_1004CE888(v21);

        (*(v27 + 8))(v21, v28);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1004C6854()
{
  v1 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v1 - 8);
  v114 = &v99 - v2;
  v115 = sub_10010FC20(&qword_101192888);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v99 - v3;
  v116 = sub_10010FC20(&qword_101192890);
  v4 = *(v116 - 8);
  __chkstk_darwin(v116);
  v6 = &v99 - v5;
  v103 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v103);
  v102 = &v99 - v7;
  v110 = type metadata accessor for Album();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v99 - v10;
  v104 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v104);
  v108 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v99 - v13;
  v15 = sub_10010FC20(&qword_1011927E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v99 - v16;
  v18 = sub_10010FC20(&qword_101188E88);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v105 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v99 - v22;
  __chkstk_darwin(v24);
  v26 = &v99 - v25;
  sub_1004C50FC(0, v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1000095E8(v17, &qword_1011927E0);
  }

  v100 = v6;
  v101 = v4;
  v111 = v19;
  v28 = *(v19 + 32);
  v118 = v18;
  v28(v26, v17, v18);
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  v119 = sub_1000060E4(v29, qword_1012193F8);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "╭ Kicking off library request", v32, 2u);
  }

  v33 = v0;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  v36 = os_log_type_enabled(v34, v35);
  v106 = v33;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v123[0] = v38;
    *v37 = 136446210;
    v39 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    swift_beginAccess();
    sub_1000089F8(&v33[v39], v14, &unk_101184730);
    v40 = String.init<A>(describing:)();
    v42 = sub_1000105AC(v40, v41, v123);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "| Album: %{public}s", v37, 0xCu);
    sub_10000959C(v38);
  }

  v43 = v111;
  v44 = *(v111 + 16);
  v45 = v118;
  v44(v23, v26, v118);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  v48 = os_log_type_enabled(v46, v47);
  v99 = v26;
  if (v48)
  {
    v49 = v45;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v123[0] = v51;
    *v50 = 136446210;
    v44(v105, v23, v49);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    v105 = *(v43 + 8);
    (v105)(v23, v49);
    v55 = sub_1000105AC(v52, v54, v123);

    *(v50 + 4) = v55;
    _os_log_impl(&_mh_execute_header, v46, v47, "| Request: %{public}s", v50, 0xCu);
    sub_10000959C(v51);
  }

  else
  {

    v105 = *(v43 + 8);
    (v105)(v23, v45);
  }

  v56 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v57 = v106;
  swift_beginAccess();
  v58 = &v57[v56];
  v59 = v108;
  sub_1000089F8(v58, v108, &unk_101184730);
  v60 = v109;
  v61 = v110;
  v62 = (*(v109 + 48))(v59, 1, v110);
  v63 = v117;
  if (v62 == 1)
  {
    sub_1000095E8(v59, &unk_101184730);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "╰ Add Status: Unknown", v66, 2u);
    }

    v67 = v99;
  }

  else
  {
    (*(v60 + 32))(v117, v59, v61);
    v68 = v107;
    (*(v60 + 16))(v107, v63, v61);
    v69 = v57;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v122 = v73;
      *v72 = 136446210;
      v74 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(&v69[v74], &v120, &unk_1011926C0);
      if (v121)
      {
        sub_1000095E8(&v120, &unk_1011926C0);
        v75 = 1;
        v76 = v102;
        v77 = v107;
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v120, &unk_1011926C0);
        v76 = v102;
        v77 = v107;
        if (Strong)
        {
          v80 = [Strong traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          MusicLibrary.state<A>(for:)();

          dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

          v75 = 0;
        }

        else
        {
          v75 = 1;
        }
      }

      v81 = type metadata accessor for MusicLibrary.AddStatus();
      (*(*(v81 - 8) + 56))(v76, v75, 1, v81);
      v82 = String.init<A>(describing:)();
      v84 = v83;
      v85 = *(v60 + 8);
      v85(v77, v61);
      v86 = sub_1000105AC(v82, v84, &v122);

      *(v72 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v70, v71, "╰ Add Status: %{public}s", v72, 0xCu);
      sub_10000959C(v73);

      v85(v117, v61);
    }

    else
    {

      v78 = *(v60 + 8);
      v78(v68, v61);
      v78(v63, v61);
    }

    v67 = v99;
    v57 = v106;
  }

  sub_100020674(&qword_101192898, &qword_101188E88);
  v87 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v88 = *&v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
  *&v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse] = v87;

  sub_1004E6028(v88);
  v89 = v112;
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  sub_100009F78(0, &qword_101182960);
  v90 = static OS_dispatch_queue.main.getter();
  v120 = v90;
  v91 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v92 = v114;
  (*(*(v91 - 8) + 56))(v114, 1, 1, v91);
  sub_100020674(&qword_1011928A0, &qword_101192888);
  sub_10001C070(&qword_101184920, &qword_101182960);
  v93 = v100;
  v94 = v115;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v92, &qword_101182140);

  (*(v113 + 8))(v89, v94);
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v96 = swift_allocObject();
  *(v96 + 16) = v95;
  *(v96 + 24) = v87;
  sub_100020674(&qword_1011928A8, &qword_101192890);

  v97 = v116;
  v98 = Publisher<>.sink(receiveValue:)();

  (*(v101 + 8))(v93, v97);
  (v105)(v67, v118);
  *&v57[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponseSubscription] = v98;
}

void sub_1004C774C(uint64_t a1)
{
  v115 = a1;
  v1 = type metadata accessor for MusicPropertySource();
  v107 = *(v1 - 8);
  v108 = v1;
  __chkstk_darwin(v1);
  v106 = &v103 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v103 - v4;
  v6 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v6 - 8);
  v111 = &v103 - v7;
  v8 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v8 - 8);
  v109 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v103 - v11;
  v13 = type metadata accessor for Album();
  v112 = *(v13 - 8);
  v113 = v13;
  __chkstk_darwin(v13);
  v110 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v103 - v16;
  __chkstk_darwin(v18);
  v20 = &v103 - v19;
  v21 = sub_10010FC20(&qword_1011928B0);
  __chkstk_darwin(v21 - 8);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v103 - v25;
  v27 = sub_10010FC20(&qword_1011928B8);
  __chkstk_darwin(v27 - 8);
  v29 = &v103 - v28;
  v116 = sub_10010FC20(&qword_1011928C0);
  v114 = *(v116 - 8);
  __chkstk_darwin(v116);
  v31 = &v103 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = Strong;
  if ((dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter() & 1) == 0)
  {

    return;
  }

  v104 = v5;
  v105 = v33;
  sub_1000089F8(v115, v26, &qword_1011928B0);
  v34 = sub_10010FC20(&qword_1011928C8);
  v35 = *(v34 - 8);
  v36 = &unk_101218000;
  if ((*(v35 + 48))(v26, 1, v34) == 1)
  {
    sub_1000095E8(v26, &qword_1011928B0);
    (*(v114 + 56))(v29, 1, 1, v116);
    v37 = v105;
  }

  else
  {
    v103 = v31;
    v38 = MusicLibrarySectionedResponse.sections.getter();
    (*(v35 + 8))(v26, v34);
    if (*(v38 + 16))
    {
      v39 = v114;
      v40 = v116;
      (*(v114 + 16))(v29, v38 + ((*(v114 + 80) + 32) & ~*(v114 + 80)), v116);
      v41 = 0;
      v42 = v105;
    }

    else
    {
      v41 = 1;
      v42 = v105;
      v40 = v116;
      v39 = v114;
    }

    (*(v39 + 56))(v29, v41, 1, v40);
    v37 = v42;
    v36 = &unk_101218000;
    if ((*(v39 + 48))(v29, 1, v40) != 1)
    {
      v62 = v103;
      (*(v39 + 32))(v103, v29, v40);
      v63 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent;
      v64 = v37;
      if (v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent] != 1 || (v65 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount, *&v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount]) || (MusicLibrarySection.item.getter(), v91 = Album.downloadedTrackCount.getter(), v93 = v92, v94 = v20, v95 = *(v112 + 8), v95(v94, v113), (v93 & 1) != 0) || v91 < 1)
      {
        v64[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] = 0;
        v66 = v116;
        MusicLibrarySection.item.getter();
        v67 = v112;
        (*(v112 + 56))(v12, 0, 1, v113);
        v68 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
        swift_beginAccess();
        v69 = v109;
        sub_1000089F8(&v64[v68], v109, &unk_101184730);
        swift_beginAccess();
        sub_1002190E0(v12, &v64[v68], &unk_101184730);
        swift_endAccess();
        sub_1004B2480(v69);
        sub_1000095E8(v69, &unk_101184730);
        sub_1000095E8(v12, &unk_101184730);
        if (v64[v63] == 1 && !*&v64[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount])
        {
          type metadata accessor for Track();
          v70 = v111;
          MusicItemCollection.init(arrayLiteral:)();
        }

        else
        {
          v70 = v111;
          MusicLibrarySection.items.getter();
        }

        v71 = sub_10010FC20(&unk_1011841D0);
        (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
        v72 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1002190E0(v70, &v64[v72], &unk_1011842D0);
        swift_endAccess();
        sub_1004CD200();
        sub_1000095E8(v70, &unk_1011842D0);
        v73 = v110;
        MusicLibrarySection.item.getter();
        sub_1004CE888(v73);
        (*(v67 + 8))(v73, v113);
        v74 = type metadata accessor for TaskPriority();
        v75 = v62;
        v76 = v104;
        (*(*(v74 - 8) + 56))(v104, 1, 1, v74);
        type metadata accessor for MainActor();
        v77 = v64;
        v78 = static MainActor.shared.getter();
        v79 = swift_allocObject();
        v79[2] = v78;
        v79[3] = &protocol witness table for MainActor;
        v79[4] = v77;
        sub_1001F4CB8(0, 0, v76, &unk_100ECFBE8, v79);

        (*(v114 + 8))(v75, v66);
      }

      else
      {
        v96 = v62;
        v97 = v116;
        MusicLibrarySection.item.getter();
        v98 = Album.downloadedTrackCount.getter();
        v100 = v99;
        v95(v17, v113);
        if (v100)
        {
          v101 = 0;
        }

        else
        {
          v101 = v98;
        }

        *&v64[v65] = v101;
        v102 = *&v64[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
        if ((~v102 & 0xF000000000000007) != 0)
        {
          if (v102 < 0)
          {

            (*(v114 + 8))(v103, v116);
          }

          else
          {
            swift_allocObject();
            swift_unknownObjectWeakInit();

            dispatch thunk of MusicAutoupdatingResponse.update(_:)();
            sub_1004E6028(v102);

            (*(v114 + 8))(v103, v116);
          }
        }

        else
        {

          (*(v114 + 8))(v96, v97);
        }
      }

      return;
    }
  }

  sub_1000095E8(v29, &qword_1011928B8);
  v43 = v37;
  if ((v37[v36[463]] & 1) != 0 && *&v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] >= 1)
  {
    *&v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_downloadedTrackCount] = 0;
    v44 = *&v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_autoupdatingResponse];
    if ((~v44 & 0xF000000000000007) != 0 && (v44 & 0x8000000000000000) == 0)
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();

      sub_1004E6028(v44);
      return;
    }

    goto LABEL_46;
  }

  if (v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_allowsCatalogFallback] == 1)
  {
    if (!*&v37[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8])
    {
      v83 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 328);

      v85 = v83(v84);

      if (v85 >> 30 == 1 || v85 >> 30 == 2 && v85 == 2147483652)
      {
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v86 = type metadata accessor for Logger();
        sub_1000060E4(v86, qword_1012193F8);
        v87 = Logger.logObject.getter();
        v88 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v87, v88, "Failed to load library album because library is loading.", v89, 2u);
        }

        v90 = sub_1004AD6D0();
        sub_1004C4C94(v90 & 1 | 0x4000000000000000, 0, 0);
      }

LABEL_46:

      return;
    }

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000060E4(v45, qword_1012193F8);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Failed to load library album — Falling back to catalog.", v48, 2u);
    }

    v50 = v106;
    v49 = v107;
    v51 = v108;
    (*(v107 + 104))(v106, enum case for MusicPropertySource.catalog(_:), v108);
    v52 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v49 + 40))(&v43[v52], v50, v51);
    swift_endAccess();
    sub_1004AF430();
  }

  else
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1000060E4(v53, qword_1012193F8);
    sub_1000089F8(v115, v23, &qword_1011928B0);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v118[0] = v57;
      *v56 = 136446210;
      v58 = sub_100805A70(v23);
      v60 = v59;
      sub_1000095E8(v23, &qword_1011928B0);
      v61 = sub_1000105AC(v58, v60, v118);

      *(v56 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v54, v55, "Popping album detail view controller with reason: %{public}s", v56, 0xCu);
      sub_10000959C(v57);
    }

    else
    {

      sub_1000095E8(v23, &qword_1011928B0);
    }

    v80 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v81 = v105;
    swift_beginAccess();
    sub_1000089F8(&v81[v80], v117, &unk_1011926C0);
    if (v117[8] == 1)
    {

      sub_1000095E8(v117, &unk_1011926C0);
    }

    else
    {
      v82 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v117, &unk_1011926C0);
      if (v82)
      {
        sub_1003FE034(1);
      }
    }
  }
}

uint64_t sub_1004C873C()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1004C87E8();
}

uint64_t sub_1004C87E8()
{
  v1[11] = v0;
  v2 = type metadata accessor for MusicPropertySource();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for Album();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v5;
  v1[24] = v4;

  return _swift_task_switch(sub_1004C8994, v5, v4);
}

uint64_t sub_1004C8994()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[11];
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v0[25] = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v3, &unk_101184730);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = v0[17];

    sub_1000095E8(v6, &unk_101184730);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[13];
    v9 = v0[14];
    v12 = v0[11];
    v11 = v0[12];
    (*(v0[19] + 32))(v0[21], v0[17], v0[18]);
    v13 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v9, v12 + v13, v11);
    v14 = swift_task_alloc();
    v0[26] = v14;
    *v14 = v0;
    v14[1] = sub_1004C8B98;
    v15 = v0[20];
    v16 = v0[21];
    v17 = v0[14];

    return sub_1004C8ED8(v15, v16, v17);
  }
}

uint64_t sub_1004C8B98()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *(*v0 + 96);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 192);
  v6 = *(v1 + 184);

  return _swift_task_switch(sub_1004C8D1C, v6, v5);
}

uint64_t sub_1004C8D1C()
{
  v1 = v0[25];
  v11 = v0[21];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[11];

  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  sub_1000089F8(v7 + v1, v6, &unk_101184730);
  swift_beginAccess();
  sub_1002190E0(v5, v7 + v1, &unk_101184730);
  swift_endAccess();
  sub_1004B2480(v6);
  sub_1000095E8(v6, &unk_101184730);
  sub_1000095E8(v5, &unk_101184730);
  v8 = *(v3 + 8);
  v8(v2, v4);
  v8(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1004C8ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = type metadata accessor for MusicPropertySource();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[10] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[11] = v6;
  v3[12] = v5;

  return _swift_task_switch(sub_1004C8FDC, v6, v5);
}

uint64_t sub_1004C8FDC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = enum case for MusicPropertySource.library(_:);
  v5 = *(v3 + 104);
  v5(v1, enum case for MusicPropertySource.library(_:), v2);
  v6 = static MusicPropertySource.== infix(_:_:)();
  v7 = *(v3 + 8);
  v0[13] = v7;
  v0[14] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  if (v6)
  {
    v8 = v0[8];
    v9 = v0[6];
    sub_10010FC20(&qword_101183990);
    v10 = swift_allocObject();
    v0[15] = v10;
    *(v10 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&qword_101192878);
    *(v10 + 32) = static PartialMusicProperty<A>.tracks.getter();
    *(v10 + 40) = static PartialMusicProperty<A>.tracksPopularity.getter();
    v5(v8, v4, v9);
    v11 = swift_task_alloc();
    v0[16] = v11;
    v12 = type metadata accessor for Album();
    v0[17] = v12;
    v13 = sub_1004E41B4(&qword_101192880, &type metadata accessor for Album);
    *v11 = v0;
    v11[1] = sub_1004C9270;
    v14 = v0[8];
    v15 = v0[3];

    return MusicItem<>.with(_:preferredSource:)(v15, v10, v14, v12, &protocol witness table for Album, &protocol witness table for Album, v13);
  }

  else
  {
    v16 = v0[3];
    v17 = v0[4];

    v18 = type metadata accessor for Album();
    (*(*(v18 - 8) + 16))(v16, v17, v18);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1004C9270()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  v3(v4, v5);

  v6 = *(v2 + 96);
  v7 = *(v2 + 88);
  if (v0)
  {
    v8 = sub_1004C94A4;
  }

  else
  {
    v8 = sub_1004C9434;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1004C9434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004C94A4()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[18];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve library album tracks with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  (*(*(v0[17] - 8) + 16))(v0[3], v0[4]);

  v11 = v0[1];

  return v11();
}

void sub_1004C96BC()
{
  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v1 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v1, v5, &unk_1011926C0);
    if (v5[8])
    {
      sub_1000095E8(v5, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v5, &unk_1011926C0);
      if (Strong)
      {
        v3 = sub_1006A3A7C();

        if (v3)
        {
          if (v3 >> 62)
          {
            v4 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v4)
          {
            sub_1004C97D0(1);
          }
        }
      }
    }
  }
}

uint64_t sub_1004C97D0(int a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_1011841D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v77 - v6;
  v8 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v77 - v9;
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexSet.init()();
  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload;
  if (v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeHeaderOnNextReload] == 1)
  {
    v16 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 0;
      v19 = v16 + 32;
      while (*(v19 + v18))
      {
        if (v17 == ++v18)
        {
          goto LABEL_8;
        }
      }

      IndexSet.insert(_:)(v18);
      v2[v15] = 0;
    }
  }

LABEL_8:
  v20 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells];
  v83 = v12;
  v84 = v14;
  if (v20)
  {
    v78 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
    v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v2[v21], &aBlock, &unk_1011926C0);
    v81 = v21;
    v82 = v11;
    v80 = a1;
    v79 = v5;
    if (v87)
    {
      sub_1000095E8(&aBlock, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&aBlock, &unk_1011926C0);
      if (Strong)
      {
        v32 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
        [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
        v33 = *&Strong[v32];
        *&Strong[v32] = 0;
      }
    }

    v34 = &v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
    v35 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState];
    v36 = &v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 8];
    v37 = *v36;
    v38 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState + 16];
    if ((v35 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
    {
      if (v35 >> 62 == 3)
      {
        if (v35 != 0xC000000000000000 || (v35 = 0xC000000000000000, v38 | v37))
        {
LABEL_26:
          v35 = 0xC000000000000001;
          goto LABEL_27;
        }

LABEL_24:
        if (v35 == 0xC000000000000000)
        {
          v35 = 0xC000000000000000;
          if (!(v38 | v37))
          {
            goto LABEL_27;
          }
        }

        goto LABEL_26;
      }

      if ((v35 & 1) == 0)
      {
        v56 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
        swift_beginAccess();
        sub_1000089F8(&v2[v56], v10, &unk_1011842D0);
        v57 = v79;
        if ((*(v79 + 48))(v10, 1, v4))
        {
          sub_1000095E8(v10, &unk_1011842D0);
          v35 = *v34;
          v37 = v34[1];
          v38 = v34[2];
        }

        else
        {
          (*(v57 + 16))(v7, v10, v4);
          sub_1000095E8(v10, &unk_1011842D0);
          sub_100020674(&qword_1011913B0, &unk_1011841D0);
          dispatch thunk of Collection.startIndex.getter();
          dispatch thunk of Collection.endIndex.getter();
          (*(v57 + 8))(v7, v4);
          v35 = *v34;
          v37 = v34[1];
          v38 = v34[2];
          if (aBlock != v85)
          {
            goto LABEL_27;
          }
        }
      }
    }

    if ((v35 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
    {
      goto LABEL_28;
    }

    if (v35 >> 62 != 3)
    {
      if ((v35 & 1) == 0)
      {
LABEL_28:
        v5 = v81;
        v11 = v82;
        v12 = v84;
        if ((v80 & 1) != 0 || (v39 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections], (v40 = *(v39 + 16)) == 0))
        {
LABEL_33:
          sub_1004D0668();
        }

        else
        {
          v41 = 0;
          v42 = v39 + 32;
          while (*(v42 + v41) != 2)
          {
            if (v40 == ++v41)
            {
              goto LABEL_33;
            }
          }

          IndexSet.insert(_:)(v41);
        }

        sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
        if (v87)
        {
LABEL_35:
          sub_1000095E8(&aBlock, &unk_1011926C0);
          goto LABEL_76;
        }

        v43 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0);
        if (v43)
        {
          v25 = &OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload;
          v44 = v43[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload];

          if (v44)
          {
            v45 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
            v46 = *(v45 + 16);
            if (v46)
            {
              v47 = 0;
              v48 = v45 + 32;
              while (*(v48 + v47) != 10)
              {
                if (v46 == ++v47)
                {
                  goto LABEL_76;
                }
              }

              IndexSet.insert(_:)(v47);
              sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
              if (v87)
              {
                sub_1000095E8(&aBlock, &unk_1011926C0);
                goto LABEL_73;
              }

              v26 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&aBlock, &unk_1011926C0);
              if (!v26)
              {
                goto LABEL_73;
              }

              sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
              if (v87)
              {
                goto LABEL_57;
              }

              v58 = swift_unknownObjectWeakLoadStrong();
              sub_1000095E8(&aBlock, &unk_1011926C0);
              if (!v58)
              {
                goto LABEL_71;
              }

              v59 = sub_1006A3A7C();

              if (!v59)
              {
                goto LABEL_71;
              }

              if (!(v59 >> 62))
              {
                v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);

                if (!v60)
                {
                  goto LABEL_71;
                }

LABEL_62:
                v61 = *&v2[v78];
                if (!v61)
                {
                  goto LABEL_72;
                }

                sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
                if ((v87 & 1) == 0)
                {
                  v62 = swift_unknownObjectWeakLoadStrong();
                  sub_1000095E8(&aBlock, &unk_1011926C0);
                  if (v62)
                  {
                    v63 = sub_1006A3A7C();

                    if (v63)
                    {
                      if (v63 >> 62)
                      {
                        goto LABEL_86;
                      }

                      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      goto LABEL_68;
                    }
                  }

LABEL_71:
                  LOBYTE(v61) = 0;
                  goto LABEL_72;
                }

LABEL_57:
                sub_1000095E8(&aBlock, &unk_1011926C0);
                goto LABEL_71;
              }

LABEL_70:
              v65 = _CocoaArrayWrapper.endIndex.getter();

              if (!v65)
              {
                goto LABEL_71;
              }

              goto LABEL_62;
            }
          }
        }

LABEL_76:
        while (1)
        {
          v67 = objc_opt_self();
          v26 = swift_allocObject();
          v26[2] = v2;
          v26[3] = v12;
          v68 = swift_allocObject();
          *(v68 + 16) = sub_1004E6004;
          *(v68 + 24) = v26;
          v90 = sub_10018A020;
          v91 = v68;
          aBlock = _NSConcreteStackBlock;
          v87 = 1107296256;
          v88 = sub_100029B9C;
          v89 = &unk_1010AF648;
          v25 = _Block_copy(&aBlock);
          v69 = v2;

          [v67 performWithoutAnimation:v25];
          _Block_release(v25);
          LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

          if ((v67 & 1) == 0)
          {
            break;
          }

          __break(1u);
LABEL_86:
          v64 = _CocoaArrayWrapper.endIndex.getter();
LABEL_68:

          LOBYTE(v61) = v64 != 0;
LABEL_72:
          *(v26 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent) = v61;

LABEL_73:
          sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
          if (v87)
          {
            goto LABEL_35;
          }

          v66 = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&aBlock, &unk_1011926C0);
          if (v66)
          {
            v66[*v25] = 0;
          }
        }

        sub_1000089F8(&v2[v5], &aBlock, &unk_1011926C0);
        if (v87)
        {
          sub_1000095E8(&aBlock, &unk_1011926C0);
          v29 = 0;
LABEL_81:
          v55 = 0;
          v30 = 0;
          v28 = sub_1004E6004;
          goto LABEL_84;
        }

        v70 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&aBlock, &unk_1011926C0);
        if (v70)
        {
          v71 = sub_1006A6078();

          v72 = swift_allocObject();
          *(v72 + 16) = v69;
          v73 = swift_allocObject();
          v29 = sub_1004E6020;
          *(v73 + 16) = sub_1004E6020;
          *(v73 + 24) = v72;
          v90 = sub_10018A020;
          v91 = v73;
          aBlock = _NSConcreteStackBlock;
          v87 = 1107296256;
          v88 = sub_100029B9C;
          v89 = &unk_1010AF6C0;
          v74 = _Block_copy(&aBlock);
          v75 = v69;

          [v71 performBatchUpdates:v74 completion:0];
          _Block_release(v74);

          goto LABEL_81;
        }

        v28 = sub_1004E6004;
        v29 = 0;
        v55 = 0;
LABEL_83:
        v30 = 0;
        goto LABEL_84;
      }

LABEL_27:
      *v34 = 0x3FFFFFEFELL;
      *v36 = 0;
      v36[1] = 0;
      sub_1004AC798(v35, v37, v38);
      sub_1004E5BA4(v35);
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v22 = objc_opt_self();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = v14;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1004EA6D4;
  *(v24 + 24) = v23;
  v90 = sub_10018A020;
  v91 = v24;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_100029B9C;
  v89 = &unk_1010AF558;
  v25 = _Block_copy(&aBlock);
  v26 = v2;

  [v22 performWithoutAnimation:v25];
  _Block_release(v25);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
    goto LABEL_70;
  }

  v27 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v26 + v27, &aBlock, &unk_1011926C0);
  if (v87)
  {
    sub_1000095E8(&aBlock, &unk_1011926C0);
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  else
  {
    v49 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&aBlock, &unk_1011926C0);
    if (!v49)
    {
      v55 = sub_1004EA6D4;
      v28 = 0;
      v29 = 0;
      goto LABEL_83;
    }

    v50 = sub_1006A6078();

    v51 = swift_allocObject();
    *(v51 + 16) = v26;
    v52 = swift_allocObject();
    v30 = sub_1004E5FE0;
    *(v52 + 16) = sub_1004E5FE0;
    *(v52 + 24) = v51;
    v90 = sub_10018A020;
    v91 = v52;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_100029B9C;
    v89 = &unk_1010AF5D0;
    v53 = _Block_copy(&aBlock);
    v54 = v26;

    [v50 performBatchUpdates:v53 completion:0];
    _Block_release(v53);

    v28 = 0;
    v29 = 0;
  }

  v55 = sub_1004EA6D4;
LABEL_84:
  (*(v83 + 1))(v84, v11);
  sub_100020438(v28);
  sub_100020438(v29);
  sub_100020438(v55);
  return sub_100020438(v30);
}

void sub_1004CA610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v8, v15, &unk_1011926C0);
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
      v10 = sub_1006A6078();

      (*(v5 + 16))(v7, a2, v4);
      IndexSet._bridgeToObjectiveC()(v11);
      v13 = v12;
      (*(v5 + 8))(v7, v4);
      [v10 reloadSections:v13];
    }
  }
}

void sub_1004CA7B4()
{
  sub_1004D313C();
  sub_1004D365C();
  sub_1004D4D28();
  sub_1004D7980();
  sub_1004D8158();
}

uint64_t sub_1004CA7E8(char a1)
{
  v1 = a1 & 1;
  v2 = sub_1004CAC5C();
  if (*(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) == v1)
  {
    *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__shouldIncludeFloatingArtwork) = v1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1004CA938@<X0>(char *a1@<X8>)
{
  v2 = sub_10010FC20(&unk_101192868);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Artist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Album.artists.getter();
  v12 = sub_10010FC20(&qword_101193B90);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v4, 1, v12) == 1)
  {
    sub_1000095E8(v4, &unk_101192868);
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_4:
    sub_1000095E8(v7, &unk_101184930);
    v14 = type metadata accessor for ContainerDetail.AttributionItem(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  sub_10034DA48(v7);
  (*(v13 + 8))(v4, v12);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v16 = *(v9 + 32);
  v16(v11, v7, v8);
  v16(a1, v11, v8);
  v17 = type metadata accessor for ContainerDetail.AttributionItem(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v17 - 8) + 56))(a1, 0, 1, v17);
}

uint64_t sub_1004CAC5C()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v2 - 8);
  v4 = &v34[-v3];
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration;
  if (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration))
  {
    v6 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
    goto LABEL_25;
  }

  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v4, &unk_101184730);
  v8 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v35, &unk_1011926C0);
  if (v36)
  {
    sub_1000095E8(v35, &unk_1011926C0);
    v9 = 2;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v35, &unk_1011926C0);
    if (Strong && (v11 = sub_10069F9B8(), Strong, v12 = v11[5], v13 = v11[6], v14 = v11[7], sub_1004E5DB4(v12, v13, v14), , (v13 - 1) >= 2))
    {
      sub_1004E5DFC(v12, v13, v14);
      v9 = (v12 & 1) == 0;
    }

    else
    {
      v9 = 2;
    }
  }

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000089F8(v1 + v8, v35, &unk_1011926C0);
  if (v36)
  {

    sub_1000095E8(v35, &unk_1011926C0);
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v35, &unk_1011926C0);
    if (v18)
    {
      v19 = v9;
      v20 = sub_1006A6078();

      v21 = *&v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
      v22 = *&v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
      v23 = v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 26] << 16;

      v9 = v19;
      v24 = v23 == 0x20000;
      goto LABEL_14;
    }
  }

  v24 = 1;
  v21 = 0.0;
  v22 = 0.0;
LABEL_14:
  sub_1000089F8(v1 + v8, v35, &unk_1011926C0);
  if (v36)
  {
    sub_1000095E8(v35, &unk_1011926C0);
LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  v25 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v35, &unk_1011926C0);
  if (!v25)
  {
    goto LABEL_18;
  }

  v26 = v9;
  v27 = sub_1006A6078();

  [v27 adjustedContentInset];
  v29 = v28;

  v9 = v26;
LABEL_19:
  _s7MetricsCMa(0);
  v30 = swift_allocObject();
  ObservationRegistrar.init()();
  v31 = 0.0;
  if (v24)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v21;
  }

  if (!v24)
  {
    v31 = v22;
  }

  *(v30 + 16) = v32;
  *(v30 + 24) = v31;
  *(v30 + 32) = v29;
  v6 = sub_1005F94D8(v4, v9, &unk_100ECFB58, v15, sub_1004E5F88, v16, sub_1004E5F90, v17, v30);

  *(v1 + v5) = v6;

LABEL_25:

  return v6;
}

uint64_t sub_1004CB0F8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = a3;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return _swift_task_switch(sub_1004CB194, v5, v4);
}

uint64_t sub_1004CB194()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_1004CB2D4;
    v3 = *(v0 + 40);
    v4 = *(v0 + 96);

    return sub_1004CBA58(v3, v4);
  }

  else
  {
    v6 = *(v0 + 40);

    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1004CB2D4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_1004CB414, v4, v3);
}

uint64_t sub_1004CB414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004CB474()
{
  v0 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v30 = &v29 - v4;
  v5 = type metadata accessor for Album();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v12 - 8);
  v14 = &v29 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v32 = v1;
    v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v16 + v17, v11, &unk_101184730);
    if ((*(v6 + 48))(v11, 1, v5))
    {

      sub_1000095E8(v11, &unk_101184730);
      (*(v32 + 56))(v14, 1, 1, v0);
      return sub_1000095E8(v14, &qword_101192860);
    }

    (*(v6 + 16))(v8, v11, v5);
    sub_1000095E8(v11, &unk_101184730);
    sub_1004CA938(v14);

    (*(v6 + 8))(v8, v5);
    v18 = v32;
    if ((*(v32 + 48))(v14, 1, v0) == 1)
    {
      return sub_1000095E8(v14, &qword_101192860);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v22 = 0;
      goto LABEL_15;
    }

    v20 = Strong;
    v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v20 + v21, v33, &unk_1011926C0);
    if (v33[8] == 1)
    {

      sub_1000095E8(v33, &unk_1011926C0);
    }

    else
    {
      v23 = swift_unknownObjectWeakLoadStrong();

      sub_1000095E8(v33, &unk_1011926C0);
      if (v23)
      {
        v22 = sub_10003169C();

LABEL_14:
        v18 = v32;
LABEL_15:
        if (sub_10069BD04())
        {
          if (!v22)
          {
            return sub_1004E414C(v14, type metadata accessor for ContainerDetail.AttributionItem);
          }

          v24 = type metadata accessor for TaskPriority();
          v25 = v30;
          (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
          v26 = v31;
          sub_1004E40DC(v14, v31, type metadata accessor for ContainerDetail.AttributionItem);
          v27 = (*(v18 + 80) + 32) & ~*(v18 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          sub_1004E59E0(v26, v28 + v27, type metadata accessor for ContainerDetail.AttributionItem);
          *(v28 + ((v2 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
          sub_1001F4CB8(0, 0, v25, &unk_100EE4D10, v28);
        }

        return sub_1004E414C(v14, type metadata accessor for ContainerDetail.AttributionItem);
      }
    }

    v22 = 0;
    goto LABEL_14;
  }

  return result;
}

void sub_1004CB9FC(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

uint64_t sub_1004CBA58(uint64_t a1, char a2)
{
  *(v3 + 400) = a2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v2;
  sub_10010FC20(&unk_10118BCE0);
  *(v3 + 264) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  *(v3 + 296) = swift_task_alloc();
  v4 = type metadata accessor for Album();
  *(v3 + 304) = v4;
  *(v3 + 312) = *(v4 - 8);
  *(v3 + 320) = swift_task_alloc();
  *(v3 + 328) = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = swift_task_alloc();
  *(v3 + 352) = swift_task_alloc();
  *(v3 + 360) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 368) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 376) = v6;
  *(v3 + 384) = v5;

  return _swift_task_switch(sub_1004CBC6C, v6, v5);
}

uint64_t sub_1004CBC6C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 256);
  v5 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v4 + v5, v1, &unk_101184730);
  v6 = *(v3 + 48);
  v7 = v6(v1, 1, v2);
  v8 = *(v0 + 360);
  v83 = v6;
  v84 = v5;
  if (v7)
  {
    sub_1000095E8(v8, &unk_101184730);
  }

  else
  {
    v13 = *(v0 + 328);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    (*(v14 + 16))(v13, v8, v15);
    sub_1000095E8(v8, &unk_101184730);
    v16 = Album.catalogID.getter();
    v18 = v17;
    (*(v14 + 8))(v13, v15);
    if (v18)
    {
      v81 = v16;
      v82 = v18;
      goto LABEL_8;
    }
  }

  v9 = *(v0 + 352);
  v10 = *(v0 + 304);
  sub_1000089F8(v4 + v5, v9, &unk_101184730);
  v11 = v6(v9, 1, v10);
  v12 = *(v0 + 352);
  if (v11)
  {
    sub_1000095E8(*(v0 + 352), &unk_101184730);
    v81 = 0;
    v82 = 0xE000000000000000;
  }

  else
  {
    v19 = *(v0 + 312);
    v20 = *(v0 + 320);
    v21 = *(v0 + 304);
    (*(v19 + 16))(v20, *(v0 + 352), v21);
    sub_1000095E8(v12, &unk_101184730);
    v81 = Album.id.getter();
    v82 = v22;
    (*(v19 + 8))(v20, v21);
  }

LABEL_8:
  v23 = *(v0 + 288);
  v75 = *(v0 + 272);
  v24 = *(v0 + 256);
  v25 = *(v0 + 400);
  v26 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v79 = SymbolButton.Intent.actionType.getter(v25);
  v27 = type metadata accessor for URL();
  v28 = *(v27 - 8);
  v76 = *(v28 + 56);
  v76(v23, 1, 1, v27);
  sub_10010FC20(&unk_1011927C0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  v80 = v26;
  v78 = v29;
  *(v29 + 32) = sub_1004DFF28();
  sub_10010FC20(&qword_101190BE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6D75626C61;
  *(inited + 56) = 0xE500000000000000;
  *(inited + 64) = 0x6570795479616C70;
  v31 = 7105633;
  if (v25 == 1)
  {
    v31 = 0x41656C6666756873;
  }

  v32 = 0xEA00000000006C6CLL;
  if (v25 != 1)
  {
    v32 = 0xE300000000000000;
  }

  *(inited + 72) = 0xE800000000000000;
  *(inited + 80) = v31;
  *(inited + 88) = v32;
  v77 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sourceURL;
  swift_beginAccess();
  sub_1000089F8(v24 + v33, v75, &qword_101183A20);
  v34 = *(v28 + 48);
  if (v34(v75, 1, v27) == 1)
  {
    v35 = *(v0 + 344);
    v36 = *(v0 + 304);
    v37 = v4;
    sub_1000089F8(v4 + v84, v35, &unk_101184730);
    v38 = v83(v35, 1, v36);
    v39 = *(v0 + 344);
    if (v38)
    {
      v40 = *(v0 + 280);
      sub_1000095E8(*(v0 + 344), &unk_101184730);
      v76(v40, 1, 1, v27);
    }

    else
    {
      v43 = *(v0 + 312);
      v42 = *(v0 + 320);
      v44 = *(v0 + 304);
      (*(v43 + 16))(v42, *(v0 + 344), v44);
      sub_1000095E8(v39, &unk_101184730);
      Album.url.getter();
      (*(v43 + 8))(v42, v44);
      v37 = v4;
    }

    v45 = *(v0 + 272);
    if (v34(v45, 1, v27) != 1)
    {
      sub_1000095E8(v45, &qword_101183A20);
    }
  }

  else
  {
    v41 = *(v0 + 280);
    (*(v28 + 32))(v41, *(v0 + 272), v27);
    v76(v41, 0, 1, v27);
    v37 = v4;
  }

  v46 = *(v0 + 336);
  v47 = *(v0 + 304);
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_100EBC6B0;
  *(v48 + 32) = 0x614E206D75626C41;
  *(v48 + 40) = 0xEA0000000000656DLL;
  sub_1000089F8(v37 + v84, v46, &unk_101184730);
  v49 = v83(v46, 1, v47);
  v50 = *(v0 + 336);
  if (v49)
  {
    sub_1000095E8(*(v0 + 336), &unk_101184730);
    v51 = 0;
    v52 = 0xE000000000000000;
  }

  else
  {
    v54 = *(v0 + 312);
    v53 = *(v0 + 320);
    v55 = *(v0 + 304);
    (*(v54 + 16))(v53, *(v0 + 336), v55);
    sub_1000095E8(v50, &unk_101184730);
    v51 = Album.title.getter();
    v52 = v56;
    (*(v54 + 8))(v53, v55);
  }

  v58 = *(v0 + 288);
  v57 = *(v0 + 296);
  v59 = *(v0 + 280);
  *(v48 + 48) = v51;
  *(v48 + 56) = v52;
  v60 = sub_10010C578(v48);
  swift_setDeallocating();
  sub_1000095E8(v48 + 32, &qword_101183AA0);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v81, v82, 1, v79, v58, v78, 0, 0, v57, v77, 0, 768, v81, v82, 0x6D75626C41, 0xE500000000000000, v59, v60, 1, 2, 0, 0, 0);

  v61 = sub_10053771C();
  v63 = v62;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v65 = *(v0 + 264);
  v66 = qword_101218AD0;
  v67 = GroupActivitiesManager.hasJoined.getter();
  v68 = GroupActivitiesManager.participantsCount.getter();
  v69 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v80) + 0xB8))(v64, v61, v63, v67 & 1, v68, *(v66 + v69));

  sub_1004E414C(v64, type metadata accessor for MetricsEvent.Click);
  v70 = type metadata accessor for IndexPath();
  (*(*(v70 - 8) + 56))(v65, 1, 1, v70);
  v71 = swift_task_alloc();
  *(v0 + 392) = v71;
  *v71 = v0;
  v71[1] = sub_1004CC580;
  v72 = *(v0 + 264);
  v73 = *(v0 + 248);

  return sub_1004D8654(v73, v72);
}

uint64_t sub_1004CC580()
{
  v1 = *v0;
  v2 = *(*v0 + 264);

  sub_1000095E8(v2, &unk_10118BCE0);
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);

  return _swift_task_switch(sub_1004CC6D4, v4, v3);
}

uint64_t sub_1004CC6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1004CC7C8()
{
  v1 = v0;
  v2 = sub_1004CAC5C();
  swift_getKeyPath();
  v17 = v2;
  sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description);
  v3 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 8);
  v5 = *(v2 + OBJC_IVAR____TtCV5Music6Header13Configuration__description + 16);
  sub_1004E5E44(v4, v3, v5);

  if (v3)
  {

    sub_1004E5E90(v4, v3, v5);
    v6 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v6, &v18, &unk_1011926C0);
    if (v19)
    {

      sub_1000095E8(&v18, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v18, &unk_1011926C0);
      if (Strong)
      {
        v8 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v18 = v8;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v9 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title);
        v10 = *(v8 + OBJC_IVAR____TtCV5Music6Header13Configuration__title + 8);

        v11 = type metadata accessor for DescriptionModal();
        v12 = objc_allocWithZone(v11);
        v13 = objc_allocWithZone(type metadata accessor for DescriptionModal.Content());
        v14 = sub_100702394(v9, v10, v4, v3);
        v16.receiver = v12;
        v16.super_class = v11;
        v15 = objc_msgSendSuper2(&v16, "initWithRootViewController:", v14);

        [Strong presentViewController:v15 animated:1 completion:0];
      }

      else
      {
      }
    }
  }
}

void sub_1004CCA54()
{
  v1 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v1 - 8);
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v23[-v5];
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, &v27, &unk_1011926C0);
  if (BYTE8(v27))
  {
    goto LABEL_2;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v27, &unk_1011926C0);
  if (Strong)
  {
    v10 = v0;
    v11 = sub_10069F9B8();

    v13 = v11[5];
    v12 = v11[6];
    v14 = v11[7];
    sub_1004E5DB4(v13, v12, v14);

    if ((v12 - 1) >= 2)
    {

      sub_1000089F8(v10 + v7, &v27, &unk_1011926C0);
      if (BYTE8(v27))
      {
LABEL_2:
        v8 = &unk_1011926C0;
LABEL_3:
        sub_1000095E8(&v27, v8);
        return;
      }

      v15 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v27, &unk_1011926C0);
      if (v15)
      {
        sub_10069F9B8();

        v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
        swift_beginAccess();
        sub_1000089F8(v10 + v16, v6, &unk_101184730);
        v17 = type metadata accessor for Album();
        v18 = *(v17 - 8);
        v19 = *(v18 + 48);
        if (v19(v6, 1, v17) == 1)
        {
          sub_1000095E8(v6, &unk_101184730);
          v24 = 0u;
          v25 = 0u;
          v26 = 0;
          v20 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
          swift_beginAccess();
          sub_1000089F8(v10 + v20, v3, &unk_101184730);
          if (v19(v3, 1, v17) == 1)
          {
            sub_1000095E8(v3, &unk_101184730);
            v27 = 0u;
            v28 = 0u;
            v29 = 0;
          }

          else
          {
            *(&v28 + 1) = v17;
            v29 = &off_1010B22E8;
            v22 = sub_10001C8B8(&v27);
            (*(v18 + 32))(v22, v3, v17);
          }

          if (*(&v25 + 1))
          {
            sub_1000095E8(&v24, &unk_101192850);
          }
        }

        else
        {
          *(&v25 + 1) = v17;
          v26 = &off_1010B22E8;
          v21 = sub_10001C8B8(&v24);
          (*(v18 + 32))(v21, v6, v17);
          sub_100059A8C(&v24, &v27);
        }

        if (qword_10117F6F8 != -1)
        {
          swift_once();
        }

        sub_1005588C8(&v27, qword_101218CA8, unk_101218CB0);

        v8 = &unk_101192850;
        goto LABEL_3;
      }
    }

    else
    {
      sub_1004E5DFC(v13, v12, v14);
    }
  }
}

void sub_1004CCE60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21[-v5 - 8];
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21[-v8 - 8];
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
  v11 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells);
  if (a1)
  {
    if (v11 && (*(v11 + 16) == 0) == (*(a1 + 16) == 0))
    {
      goto LABEL_10;
    }
  }

  else if (!v11)
  {
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v12, v23, &unk_1011926C0);
  if (v23[8])
  {
    sub_1000095E8(v23, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v23, &unk_1011926C0);
    if (Strong)
    {
      Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 1;
    }
  }

LABEL_10:
  v14 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  sub_1000089F8(v2 + v14, v6, &qword_1011846D0);
  sub_1004DF62C(v6, v9);
  sub_1000095E8(v6, &qword_1011846D0);
  v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  sub_10006B010(v9, v2 + v15, &unk_10118BCE0);
  swift_endAccess();
  v16 = *(v2 + v10);

  LOBYTE(v15) = sub_1004D2948(a1, v16);

  sub_1004C97D0(v15 & 1);
  sub_1004D3D70();
  v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v17, v21, &unk_1011926C0);
  if (v22)
  {
    sub_1000095E8(v21, &unk_1011926C0);
  }

  else
  {
    v18 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v21, &unk_1011926C0);
    if (v18)
    {
      sub_100503D5C();
    }
  }

  sub_1000089F8(v2 + v17, v21, &unk_1011926C0);
  if (v22)
  {
    sub_1000095E8(v21, &unk_1011926C0);
  }

  else
  {
    v19 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v21, &unk_1011926C0);
    if (v19)
    {
      [v19 setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  sub_1004B3664();
}

uint64_t sub_1004CD200()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v17[-v2];
  v4 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-v8];
  sub_1004CAC5C();
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v9, &unk_101184730);
  v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v0 + v11, v6, &unk_1011842D0);
  sub_1005F2FA0(v9, v6);

  sub_1000095E8(v6, &unk_1011842D0);
  sub_1000095E8(v9, &unk_101184730);
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;

  sub_1001F4CB8(0, 0, v3, &unk_100ECFBF8, v15);
}

uint64_t sub_1004CD4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  sub_10010FC20(&unk_1011842D0);
  v4[18] = swift_task_alloc();
  sub_10010FC20(&unk_101184730);
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v7;
  v4[22] = v6;

  return _swift_task_switch(sub_1004CD618, v7, v6);
}

uint64_t sub_1004CD618()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[23] = Strong;
  if (Strong)
  {
    v2 = v0[18];
    v3 = v0[19];
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[15];
    v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
    v8 = Strong;
    swift_beginAccess();
    sub_1000089F8(v8 + v7, v3, &unk_101184730);
    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v8 + v9, v2, &unk_1011842D0);
    v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
    swift_beginAccess();
    (*(v5 + 16))(v4, v8 + v10, v6);
    v11 = swift_task_alloc();
    v0[24] = v11;
    *v11 = v0;
    v11[1] = sub_1004CD808;
    v12 = v0[18];
    v13 = v0[19];

    return sub_1004E7068(v13, v12);
  }

  else
  {

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1004CD808(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  v5 = *(*v1 + 136);
  v6 = *(*v1 + 128);
  v7 = *(*v1 + 120);
  *(*v1 + 200) = a1;

  (*(v6 + 8))(v5, v7);
  sub_1000095E8(v4, &unk_1011842D0);
  sub_1000095E8(v3, &unk_101184730);
  v8 = *(v2 + 176);
  v9 = *(v2 + 168);

  return _swift_task_switch(sub_1004CD9F4, v9, v8);
}

uint64_t sub_1004CD9F4()
{
  v1 = v0[25];
  v2 = v0[23];

  v3 = *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells];
  *&v2[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells] = v1;
  sub_1004CCE60(v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004CDAA4(uint64_t a1)
{
  v28 = a1;
  v2 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v2 - 8);
  v27 = &v25 - v3;
  v4 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011846D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = sub_10010FC20(&qword_101192848);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  v18 = *(v14 + 56);
  sub_1000089F8(v28, v16, &qword_1011846D0);
  sub_1000089F8(v1 + v17, &v16[v18], &qword_1011846D0);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      return sub_1000095E8(v16, &qword_1011846D0);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v16, v12, &qword_1011846D0);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
LABEL_6:
    sub_1000095E8(v16, &qword_101192848);
LABEL_7:
    sub_1000089F8(v1 + v17, v10, &qword_1011846D0);
    v21 = v27;
    sub_1004DF62C(v10, v27);
    sub_1000095E8(v10, &qword_1011846D0);
    v22 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
    swift_beginAccess();
    sub_10006B010(v21, v1 + v22, &unk_10118BCE0);
    swift_endAccess();
    return sub_1004D0668();
  }

  v23 = v26;
  sub_1004E59E0(&v16[v18], v26, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  v24 = sub_1004E1FC0(v12, v23);
  sub_1004E414C(v23, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  sub_1004E414C(v12, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  result = sub_1000095E8(v16, &qword_1011846D0);
  if ((v24 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1004CDEA0(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v34 = &v33 - v6;
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v33 - v18;
  v20 = type metadata accessor for Track();
  (*(*(v20 - 8) + 16))(v19, a1, v20);
  swift_storeEnumTagMultiPayload();
  v21 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentTrackSource;
  swift_beginAccess();
  sub_1000089F8(v1 + v21, v12, &qword_1011846D0);
  v22 = *(v14 + 48);
  if (v22(v12, 1, v13) == 1)
  {
    sub_1000095E8(v12, &qword_1011846D0);
  }

  else
  {
    sub_1004E59E0(v12, v16, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    if (sub_1004E1FC0(v16, v19))
    {
      v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v1 + v23, v36, &unk_1011926C0);
      if (v37)
      {
        sub_1000095E8(v36, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v36, &unk_1011926C0);
        if (Strong)
        {
          Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
        }
      }

      sub_1000089F8(v1 + v23, v36, &unk_1011926C0);
      if (v37)
      {
        sub_1000095E8(v36, &unk_1011926C0);
      }

      else
      {
        v32 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v36, &unk_1011926C0);
        if (v32)
        {
          sub_100503D5C();
        }
      }

      sub_1004E414C(v16, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
      v30 = v19;
      return sub_1004E414C(v30, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    }

    sub_1004E414C(v16, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  }

  sub_1000089F8(v1 + v21, v9, &qword_1011846D0);
  if (v22(v9, 1, v13) != 1)
  {
    sub_1004E414C(v19, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
    return sub_1000095E8(v9, &qword_1011846D0);
  }

  sub_1000095E8(v9, &qword_1011846D0);
  v24 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v24, v36, &unk_1011926C0);
  if (v37)
  {
    sub_1000095E8(v36, &unk_1011926C0);
  }

  else
  {
    v26 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v36, &unk_1011926C0);
    if (v26)
    {
      v26[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
    }
  }

  v27 = v34;
  sub_1004E40DC(v19, v34, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
  (*(v14 + 56))(v27, 0, 1, v13);
  v28 = v35;
  sub_1000089F8(v1 + v21, v35, &qword_1011846D0);
  swift_beginAccess();
  sub_1002190E0(v27, v1 + v21, &qword_1011846D0);
  swift_endAccess();
  sub_1004CDAA4(v28);
  sub_1000095E8(v28, &qword_1011846D0);
  sub_1000095E8(v27, &qword_1011846D0);
  sub_1000089F8(v1 + v24, v36, &unk_1011926C0);
  if (v37)
  {
    sub_1000095E8(v36, &unk_1011926C0);
  }

  else
  {
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v36, &unk_1011926C0);
    if (v29)
    {
      sub_100503D5C();
    }
  }

  v30 = v19;
  return sub_1004E414C(v30, type metadata accessor for AlbumDetailDataSource.ProminentTrackSource);
}

uint64_t sub_1004CE4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v6 = sub_10010FC20(&qword_1011928F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v24 = v30;
  v25 = v29;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v22 = v30;
  v23 = v29;
  v10 = Album.artistName.getter();
  if (!a3)
  {

    goto LABEL_8;
  }

  if (v10 != a2 || v11 != a3)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_7;
    }

LABEL_8:

    v13 = a3;
    goto LABEL_9;
  }

LABEL_7:
  a2 = 0;
  v13 = 0;
LABEL_9:
  v14 = a3 == 0;
  type metadata accessor for ClassicalAlbumSection(0);
  v15 = swift_allocObject();
  v16 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__composerName;
  v29 = 0;
  v30 = 0;
  sub_10010FC20(&qword_1011815E0);
  Published.init(initialValue:)();
  v17 = *(v7 + 32);
  v17(v15 + v16, v9, v6);
  v18 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection__artistName;
  v29 = 0;
  v30 = 0;
  Published.init(initialValue:)();
  v17(v15 + v18, v9, v6);
  v19 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks;
  *(v15 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_workTracks) = _swiftEmptyArrayStorage;
  v20 = OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists;
  *(v15 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists) = 0;
  swift_beginAccess();
  v27 = v25;
  v28 = v24;
  Published.init(initialValue:)();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = v23;
  v30 = v22;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v29 = a2;
  v30 = v13;

  static Published.subscript.setter();
  *(v15 + v19) = v26;

  *(v15 + v20) = v14;
  return v15;
}

void sub_1004CE888(char *a1)
{
  v64 = a1;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v48 - v3;
  v5 = type metadata accessor for MusicLibrary.AddStatus();
  v62 = *(v5 - 8);
  v63 = v5;
  __chkstk_darwin(v5);
  v61 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v60 = &v48 - v8;
  v9 = type metadata accessor for Album();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v66 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_10010FC20(&unk_1011841D0);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v23 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity;
  if ((*(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_didSetTracksPopularity) & 1) == 0)
  {
    v57 = v22;
    v58 = v4;
    v59 = &v48 - v20;
    v65 = v21;
    v24 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    sub_1000089F8(v1 + v24, v14, &unk_101184730);
    if ((*(v10 + 48))(v14, 1, v9))
    {
      sub_1000095E8(v14, &unk_101184730);
      (*(v65 + 56))(v17, 1, 1, v18);
LABEL_5:
      sub_1000095E8(v17, &unk_1011842D0);
      return;
    }

    v56 = v1;
    v25 = v66;
    v55 = *(v10 + 16);
    v55(v66, v14, v9);
    sub_1000095E8(v14, &unk_101184730);
    Album.tracks.getter();
    (*(v10 + 8))(v25, v9);
    v26 = v65;
    if ((*(v65 + 48))(v17, 1, v18) == 1)
    {
      goto LABEL_5;
    }

    v53 = v10 + 16;
    v54 = v10;
    v29 = *(v26 + 32);
    v28 = v26 + 32;
    v27 = v29;
    v29(v59, v17, v18);
    v30 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    v31 = v56;
    swift_beginAccess();
    sub_1000089F8(v31 + v30, &v67, &unk_1011926C0);
    if (v68)
    {
      sub_1000095E8(&v67, &unk_1011926C0);
LABEL_12:
      (*(v65 + 8))(v59, v18);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v67, &unk_1011926C0);
    if (!Strong)
    {
      goto LABEL_12;
    }

    v49 = v27;
    v50 = v28;
    v33 = Strong;
    v34 = [v33 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v52 = v33;
    MusicLibrary.state<A>(for:)();

    v35 = v60;
    dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

    v36 = v61;
    v37 = v62;
    v38 = v63;
    (*(v62 + 104))(v61, enum case for MusicLibrary.AddStatus.added(_:), v63);
    v51 = static MusicLibrary.AddStatus.== infix(_:_:)();
    v39 = *(v37 + 8);
    v39(v36, v38);
    v39(v35, v38);
    if (v51)
    {
      *(v56 + v23) = 1;
      v40 = type metadata accessor for TaskPriority();
      (*(*(v40 - 8) + 56))(v58, 1, 1, v40);
      v55(v66, v64, v9);
      v41 = v65;
      (*(v65 + 16))(v57, v59, v18);
      type metadata accessor for MainActor();
      v42 = v52;
      v43 = static MainActor.shared.getter();
      v44 = v54;
      v45 = (*(v54 + 80) + 40) & ~*(v54 + 80);
      v46 = (v11 + *(v41 + 80) + v45) & ~*(v41 + 80);
      v47 = swift_allocObject();
      *(v47 + 2) = v43;
      *(v47 + 3) = &protocol witness table for MainActor;
      *(v47 + 4) = v42;
      (*(v44 + 32))(&v47[v45], v66, v9);
      v49(&v47[v46], v57, v18);
      sub_1001F4CB8(0, 0, v58, &unk_100ECFAE8, v47);

      (*(v41 + 8))(v59, v18);
    }

    else
    {
      (*(v65 + 8))(v59, v18);
    }
  }
}

uint64_t sub_1004CF084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[8] = v8;
  v6[9] = v7;

  return _swift_task_switch(sub_1004CF120, v8, v7);
}

uint64_t sub_1004CF120()
{
  v1 = [*(v0 + 32) traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  *(v0 + 80) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  v3 = sub_10010FC20(&unk_1011841D0);
  v4 = sub_100020674(&unk_10118C0A0, &unk_1011841D0);
  *v2 = v0;
  v2[1] = sub_1004CF25C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return MusicLibrary.setTrackPopularity<A>(for:correspondingCatalogTracks:)(v5, v6, v3, v4);
}

uint64_t sub_1004CF25C()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1004CF378;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1004EA728;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1004CF378()
{
  v14 = v0;

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012193F8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[12];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[3] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to set track popularity with error=%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

unint64_t sub_1004CF55C(void (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v120 = a2;
  v5 = type metadata accessor for UUID();
  v128 = *(v5 - 8);
  v129 = v5;
  __chkstk_darwin(v5);
  v127 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011838D0);
  v125 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v123 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v8;
  __chkstk_darwin(v9);
  v133 = (v109 - v10);
  v11 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v11 - 8);
  v13 = v109 - v12;
  v14 = sub_10010FC20(&unk_1011845D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v124 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v132 = v109 - v18;
  v19 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v19 - 8);
  v21 = v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v22 - 8);
  v121 = v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v122 = v109 - v25;
  __chkstk_darwin(v26);
  v28 = v109 - v27;
  __chkstk_darwin(v29);
  v31 = v109 - v30;
  v32 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v32 - 8);
  v130 = v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v131 = v109 - v35;
  v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v3 + v36, &v148, &unk_1011926C0);
  if (BYTE8(v148))
  {
    v37 = &unk_1011926C0;
LABEL_3:
    sub_1000095E8(&v148, v37);
    return 0;
  }

  v119 = v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v148, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v40 = Strong;
  Track.musicItem.getter(&v148);
  if (!v149)
  {

    v37 = &qword_10118B990;
    goto LABEL_3;
  }

  sub_100059A8C(&v148, v151);
  sub_10010FC20(&unk_101183900);
  v41 = swift_allocObject();
  v41[1] = xmmword_100EBC6B0;
  v115 = v41;
  sub_100008FE4(v151, (v41 + 2));
  v42 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v116 = v148;
  sub_1004DDD64(a1, v21);
  sub_1004E40DC(v21, v31, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_1004E414C(v21, type metadata accessor for PlaybackIntentDescriptor);
  v43 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v44 = *(v43 - 8);
  v110 = *(v44 + 56);
  v111 = v43;
  v109[1] = v44 + 56;
  (v110)(v31, 0, 1);
  v45 = type metadata accessor for AlbumDetailDataSource(0);
  v150 = &off_1010AEFD0;
  v149 = v45;
  *&v148 = v3;
  v46 = qword_10117F608;
  v47 = v3;
  v114 = v47;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = qword_101218AD8;
  sub_1000089F8(v31, v28, &unk_1011838E0);
  v49 = v48;
  v50 = UIViewController.playActivityInformation.getter();
  v117 = v51;
  v118 = v50;
  v53 = v52;
  v55 = v54;
  sub_1000089F8(&v148, &v140, &unk_101183910);
  v112 = v49;
  if (*(&v141 + 1))
  {
    sub_100059A8C(&v140, &v144);
  }

  else
  {
    *&v152 = v40;
    sub_100009F78(0, &qword_101183D40);
    v56 = v40;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v155, &v144);
    }

    else
    {
      v157 = 0;
      v155 = 0u;
      v156 = 0u;
      *&v144 = v56;
      v57 = v56;
      v58 = String.init<A>(reflecting:)();
      v145 = &type metadata for Player.CommandIssuerIdentity;
      v146 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v144 = v58;
      *(&v144 + 1) = v59;
      if (*(&v156 + 1))
      {
        sub_1000095E8(&v155, &unk_101183910);
      }
    }

    v49 = v112;
    if (*(&v141 + 1))
    {
      sub_1000095E8(&v140, &unk_101183910);
    }
  }

  v60 = v131;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v49, v28, v118, v117, v53, v55, &v144, v131);
  sub_1000095E8(v31, &unk_1011838E0);
  sub_1000095E8(&v148, &unk_101183910);
  v61 = type metadata accessor for Actions.PlaybackContext();
  v62 = *(v61 - 8);
  (*(v62 + 56))(v60, 0, 1, v61);
  v63 = type metadata accessor for PlaylistContext();
  (*(*(v63 - 8) + 56))(v132, 1, 1, v63);
  v64 = type metadata accessor for IndexPath();
  v65 = *(v64 - 8);
  (*(v65 + 16))(v13, v120, v64);
  (*(v65 + 56))(v13, 0, 1, v64);
  v66 = v40;
  sub_1006A6A74(v13, &v148);
  sub_1000095E8(v13, &unk_10118BCE0);
  sub_1004E025C(v133);
  sub_100008FE4(v115 + 32, v147);

  sub_1000089F8(&v148, &v140, &unk_1011845E0);
  if (v143 == 1)
  {
    v157 = 0;
    v155 = 0u;
    v156 = 0u;
    v158 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v40, &v155, &v144);
    v67 = v130;
    if (v143 != 1)
    {
      sub_1000095E8(&v140, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v140, &v144);
    v67 = v130;
  }

  swift_getObjectType();
  v68 = swift_conformsToProtocol2();
  if (v68)
  {
    v117 = v68;
    v69 = v40;
    v118 = v40;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v120 = swift_allocBox();
  v71 = v70;
  sub_1000089F8(v131, v67, &unk_10118AB20);
  v72 = *(v62 + 48);
  if (v72(v67, 1, v61) == 1)
  {
    v73 = v122;
    v110(v122, 1, 1, v111);
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    sub_1000089F8(v73, v121, &unk_1011838E0);
    v115 = v112;
    v114 = UIViewController.playActivityInformation.getter();
    v111 = v75;
    v112 = v74;
    v77 = v76;
    sub_1000089F8(&v140, &v138, &unk_101183910);
    if (v139)
    {
      sub_100059A8C(&v138, &v152);
      v78 = v130;
    }

    else
    {
      v137 = v40;
      sub_100009F78(0, &qword_101183D40);
      v79 = v40;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v134, &v152);
        v78 = v130;
      }

      else
      {
        v136 = 0;
        v134 = 0u;
        v135 = 0u;
        *&v152 = v79;
        v80 = v79;
        v81 = String.init<A>(reflecting:)();
        *(&v153 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v154 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v152 = v81;
        *(&v152 + 1) = v82;
        v78 = v130;
        if (*(&v135 + 1))
        {
          sub_1000095E8(&v134, &unk_101183910);
        }
      }

      v66 = v40;
      if (v139)
      {
        sub_1000095E8(&v138, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v115, v121, v114, v112, v111, v77, &v152, v71);
    sub_1000095E8(&v140, &unk_101183910);
    sub_1000095E8(v122, &unk_1011838E0);
    if (v72(v78, 1, v61) != 1)
    {
      sub_1000095E8(v78, &unk_10118AB20);
    }
  }

  else
  {
    sub_1004E59E0(v67, v71, type metadata accessor for Actions.PlaybackContext);
  }

  v83 = *(v61 + 28);
  sub_1000089F8(&v71[v83], &v152, &unk_101183910);
  if (*(&v153 + 1))
  {
    sub_100059A8C(&v152, &v140);
  }

  else
  {
    *&v140 = v66;
    v84 = v66;
    v85 = String.init<A>(reflecting:)();
    *(&v141 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v142 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v140 = v85;
    *(&v140 + 1) = v86;
    if (*(&v153 + 1))
    {
      sub_1000095E8(&v152, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_100EBDC20;
  *(v87 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v87 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v87 + 32) = 0x4D747865746E6F43;
  *(v87 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v140, v87 + 72);
  v88 = static Player.CommandIssuer<>.combining(_:)();
  v90 = v89;

  sub_10000959C(&v140);
  *(&v141 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v142 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v140 = v88;
  *(&v140 + 1) = v90;
  sub_10006B010(&v140, &v71[v83], &unk_101183910);
  sub_100008FE4(v147, &v140);
  sub_10010FC20(&unk_10118AB50);
  v130 = String.init<A>(describing:)();
  v122 = v91;
  v121 = swift_allocObject();
  v113 = v40;
  swift_unknownObjectWeakInit();
  sub_100008FE4(v147, &v138);
  sub_10012B7A8(&v144, &v140);
  v92 = v123;
  sub_1000089F8(v133, v123, &unk_1011838D0);
  v93 = v124;
  sub_1000089F8(v132, v124, &unk_1011845D0);
  v94 = (*(v125 + 80) + 160) & ~*(v125 + 80);
  v95 = (v126 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  v97 = (*(v119 + 80) + v96 + 8) & ~*(v119 + 80);
  v126 = (v97 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + v16 + 31) & 0xFFFFFFFFFFFFFFF8;
  v99 = swift_allocObject();
  sub_100059A8C(&v138, v99 + 16);
  *(v99 + 56) = v116;
  sub_10012B828(&v140, v99 + 64);
  sub_10003D17C(v92, v99 + v94, &unk_1011838D0);
  v100 = v120;
  *(v99 + v95) = v121;
  *(v99 + v96) = v100;
  sub_10003D17C(v93, v99 + v97, &unk_1011845D0);
  v101 = v99 + v126;
  v102 = v117;
  *v101 = v118;
  *(v101 + 8) = v102;
  *(v101 + 16) = 2;
  v103 = (v99 + v98);
  *v103 = variable initialization expression of Library.Context.playlistVariants;
  v103[1] = 0;
  swift_unknownObjectRetain();

  v104 = v127;
  UUID.init()();
  v105 = UUID.uuidString.getter();
  v107 = v106;
  (*(v128 + 8))(v104, v129);
  v159._countAndFlagsBits = v130;
  v159._object = v122;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v159, v105, v107, sub_100217D28, v99, &v152);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v144);
  sub_10000959C(v147);

  v108 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(&off_10109B838, 0);
  v144 = v152;
  sub_100015BB0(&v144);
  v140 = v153;
  sub_100015BB0(&v140);

  sub_1000095E8(v133, &unk_1011838D0);
  sub_1000095E8(&v148, &unk_1011845E0);
  sub_1000095E8(v132, &unk_1011845D0);
  sub_1000095E8(v131, &unk_10118AB20);
  sub_10000959C(v151);
  return v108;
}

uint64_t sub_1004D0668()
{
  v1 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v1);
  v3 = &v134 - v2;
  v4 = sub_10010FC20(&unk_10118BCE0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v134 - v8;
  v10 = sub_10010FC20(&qword_101180C90);
  v11 = __chkstk_darwin(v10 - 8);
  v170 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v169 = &v134 - v13;
  v174 = type metadata accessor for MusicPropertySource();
  v189 = *(v174 - 8);
  v14 = __chkstk_darwin(v174);
  v173 = &v134 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v172 = &v134 - v16;
  v17 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v17 - 8);
  v178 = &v134 - v18;
  v179 = type metadata accessor for Album();
  v184 = *(v179 - 8);
  __chkstk_darwin(v179);
  v177 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_101192800);
  v21 = __chkstk_darwin(v20 - 8);
  v183 = (&v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v182 = &v134 - v23;
  v180 = type metadata accessor for Track();
  v185 = *(v180 - 8);
  v24 = *(v185 + 64);
  v25 = __chkstk_darwin(v180);
  v175 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v181 = &v134 - v26;
  v27 = type metadata accessor for IndexPath();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v176 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = v30;
  __chkstk_darwin(v29);
  v32 = &v134 - v31;
  v33 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  v192 = v33;
  v34 = v0 + v33;
  v35 = v0;
  sub_1000089F8(v34, v195, &unk_1011926C0);
  if (v195[8])
  {
    return sub_1000095E8(v195, &unk_1011926C0);
  }

  v168 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  result = sub_1000095E8(v195, &unk_1011926C0);
  if (Strong)
  {
    v38 = v35;
    v162 = v7;
    v39 = sub_1006A6078();

    v40 = [v39 _indexPathsForPreparedItems];
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v42 = v41;
    v43 = *(v41 + 16);
    if (v43)
    {
      v160 = v3;
      v154 = v1;
      v167 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells;
      v44 = v38 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
      v45 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_prominentItemIndexPath;
      v46 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_playerStateCache;
      v165 = v27;
      v47 = *(v28 + 80);
      v149 = ~v47;
      v166 = v42;
      v48 = v42 + ((v47 + 32) & ~v47);
      v159 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
      swift_beginAccess();
      v153 = v44;
      swift_beginAccess();
      v152 = v45;
      v49 = v38;
      swift_beginAccess();
      v151 = v46;
      swift_beginAccess();
      v52 = *(v28 + 16);
      v50 = v28 + 16;
      v51 = v52;
      v190 = (v50 - 8);
      v158 = (v184 + 48);
      v53 = *(v50 + 56);
      v148 = (v184 + 32);
      v156 = v185 + 16;
      v150 = v47;
      v147 = v24 + v47;
      v54 = v165;
      v55 = v50;
      v56 = v53;
      v155 = (v55 + 16);
      v146 = (v189 + 16);
      v145 = enum case for MusicPropertySource.library(_:);
      v144 = (v189 + 104);
      v143 = (v189 + 8);
      v142 = (v55 + 40);
      v141 = (v55 + 32);
      v140 = (v184 + 8);
      v157 = (v185 + 8);
      *&v57 = 136446210;
      v164 = v57;
      v191 = v55;
      v186 = v38;
      v187 = v52;
      v161 = (v185 + 32);
      v188 = v53;
      v52(v32, v48, v165);
      while (1)
      {
        sub_1000089F8(v49 + v192, &v193, &unk_1011926C0);
        if (v194)
        {
          (*v190)(v32, v54);
          sub_1000095E8(&v193, &unk_1011926C0);
          goto LABEL_7;
        }

        v189 = v48;
        v58 = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(&v193, &unk_1011926C0);
        if (!v58)
        {
          (*v190)(v32, v54);
LABEL_21:
          v48 = v189;
          goto LABEL_7;
        }

        v59 = sub_1006A6078();

        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v61 = [v59 cellForItemAtIndexPath:isa];

        if (!v61)
        {
          (*v190)(v32, v54);
          v51 = v187;
          v56 = v188;
          goto LABEL_21;
        }

        _s13TracklistCellCMa();
        v62 = swift_dynamicCastClass();
        v56 = v188;
        if (!v62)
        {

          (*v190)(v32, v54);
          v51 = v187;
          goto LABEL_21;
        }

        v63 = v62;
        v64 = *(v62 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
        if ((~v64 & 0xF000000000000007) == 0)
        {
          if (qword_10117FC48 != -1)
          {
            swift_once();
          }

          v65 = type metadata accessor for Logger();
          sub_1000060E4(v65, qword_1012193F8);
          v66 = v61;
          v67 = Logger.logObject.getter();
          v68 = static os_log_type_t.default.getter();

          v69 = os_log_type_enabled(v67, v68);
          v48 = v189;
          if (v69)
          {
            v70 = swift_slowAlloc();
            v184 = swift_slowAlloc();
            v193 = v184;
            *v70 = v164;
            v71 = v66;
            LODWORD(v163) = v68;
            v72 = v71;
            v73 = [v63 description];
            v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v76 = v75;

            v77 = sub_1000105AC(v74, v76, &v193);

            *(v70 + 4) = v77;
            _os_log_impl(&_mh_execute_header, v67, v163, "Attempting to update a cell without a data object %{public}s", v70, 0xCu);
            sub_10000959C(v184);
          }

          else
          {
          }

          goto LABEL_28;
        }

        v78 = *(v62 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
        if (!(v64 >> 62))
        {
          v163 = *(v62 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8);
          type metadata accessor for TrackData();
          v184 = v78;
          v82 = swift_dynamicCastClass();
          v48 = v189;
          if (v82)
          {
            if (*(v186 + v167))
            {
              v139 = v82;
              sub_1004E5BE4(v184, v163);

              IndexPath.item.getter();
              v83 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v84 = v182;
              Array.subscript.getter(v83, v182);

              if ((*(*(v83 - 8) + 48))(v84, 1, v83) != 1)
              {
                EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
                v91 = v178;
                v92 = v179;
                v93 = v180;
                if (EnumCaseMultiPayload != 2)
                {
                  (*v190)(v32, v54);
                  sub_1004E5C14(v184, v163);

                  sub_1004E414C(v84, type metadata accessor for AlbumDetailDataSource.CellType);
                  goto LABEL_29;
                }

                v94 = v84 + *(sub_10010FC20(&qword_1011927A8) + 48);
                v137 = *v94;
                LODWORD(KeyPath) = *(v94 + 8);
                v136 = *v161;
                v136(v181, v84, v93);
                sub_1000089F8(v186 + v159, v91, &unk_101184730);
                if ((*v158)(v91, 1, v92) == 1)
                {
                  sub_1004E5C14(v184, v163);

                  (*v157)(v181, v93);
                  (*v190)(v32, v54);
                  sub_1000095E8(v91, &unk_101184730);
                  goto LABEL_29;
                }

                (*v148)(v177, v91, v92);
                v95 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v96 = v185;
                v135 = *(v185 + 16);
                v135(v175, v181, v93);
                v187(v176, v32, v54);
                v97 = (*(v96 + 80) + 24) & ~*(v96 + 80);
                v98 = (v147 + v97) & v149;
                v99 = swift_allocObject();
                *(v99 + 16) = v95;
                v136(v99 + v97, v175, v180);
                v134 = *v155;
                v134(v99 + v98, v176, v54);

                sub_100583538(v181, v177, KeyPath ^ 1, sub_1004E5C44, v99);

                v100 = v172;
                v101 = v174;
                (*v146)(v172, v153, v174);
                v102 = v173;
                (*v144)(v173, v145, v101);
                LODWORD(v136) = static MusicPropertySource.== infix(_:_:)();
                v103 = v102;
                v104 = *v143;
                (*v143)(v103, v101);
                v104(v100, v101);
                if (v136)
                {
                  v105 = sub_1004D21CC(v181);
                  if (v105 != 2)
                  {
                    v106 = v105;
                    swift_getKeyPath();
                    swift_getKeyPath();
                    LOBYTE(v193) = v106;
                    sub_1004E5BF8(v184, v163);
                    static Published.subscript.setter();
                  }
                }

                if ((sub_1004D27A0(v137, KeyPath) & 1) == 0)
                {
                  v107 = type metadata accessor for AttributedString();
                  v108 = v169;
                  (*(*(v107 - 8) + 56))(v169, 1, 1, v107);
                  KeyPath = swift_getKeyPath();
                  swift_getKeyPath();
                  sub_1000089F8(v108, v170, &qword_101180C90);
                  sub_1004E5BF8(v184, v163);
                  static Published.subscript.setter();
                  sub_1000095E8(v108, &qword_101180C90);
                }

                v109 = v168;
                v187(v168, v32, v54);
                (*v142)(v109, 0, 1, v54);
                v110 = *(v154 + 48);
                v111 = v160;
                sub_1000089F8(v186 + v152, v160, &unk_10118BCE0);
                KeyPath = v110;
                sub_1000089F8(v109, v111 + v110, &unk_10118BCE0);
                v112 = *v141;
                if ((*v141)(v111, 1, v54) == 1)
                {
                  sub_1000095E8(v109, &unk_10118BCE0);
                  v113 = v160;
                  v114 = v112(&v160[KeyPath], 1, v54) == 1;
                  v115 = v113;
                  if (v114)
                  {
                    sub_1000095E8(v113, &unk_10118BCE0);
                    v116 = 1;
                  }

                  else
                  {
LABEL_60:
                    sub_1000095E8(v115, &unk_10118B970);
                    v116 = 0;
                  }
                }

                else
                {
                  v117 = v160;
                  sub_1000089F8(v160, v162, &unk_10118BCE0);
                  if (v112(v117 + KeyPath, 1, v54) == 1)
                  {
                    sub_1000095E8(v168, &unk_10118BCE0);
                    (*v190)(v162, v54);
                    v115 = v160;
                    goto LABEL_60;
                  }

                  v134(v176, &v160[KeyPath], v54);
                  sub_1004E41B4(&qword_101192840, &type metadata accessor for IndexPath);
                  v118 = v162;
                  v116 = dispatch thunk of static Equatable.== infix(_:_:)();
                  v119 = *v190;
                  (*v190)(v176, v54);
                  sub_1000095E8(v168, &unk_10118BCE0);
                  v119(v118, v54);
                  sub_1000095E8(v160, &unk_10118BCE0);
                }

                swift_getKeyPath();
                swift_getKeyPath();
                v120 = v116 & 1;
                LOBYTE(v193) = v120;
                sub_1004E5BF8(v184, v163);
                static Published.subscript.setter();
                v121 = v63[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
                v63[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v120;
                if (v120 != v121)
                {
                  [v63 setNeedsUpdateConfiguration];
                }

                v122 = v181;
                v123 = Track.id.getter();
                v125 = v124;
                v126 = *(v186 + v151);
                if (*(v126 + 16))
                {
                  v127 = v123;

                  v128 = sub_100019C10(v127, v125);
                  LOBYTE(v127) = v129;

                  if (v127)
                  {
                    v130 = *(*(v126 + 56) + 8 * v128);

                    v131 = v175;
                    v132 = v181;
                    v133 = v180;
                    v135(v175, v181, v180);
                    (*(*v130 + 224))(v131);

                    sub_1004E5C14(v184, v163);

                    (*v140)(v177, v179);
                    (*v157)(v132, v133);
LABEL_28:
                    (*v190)(v32, v54);
LABEL_29:
                    v49 = v186;
                    v51 = v187;
                    v56 = v188;
                    goto LABEL_7;
                  }

                  v122 = v181;
                }

                else
                {
                }

                sub_1004E5C14(v184, v163);

                (*v140)(v177, v179);
                (*v157)(v122, v180);
                goto LABEL_28;
              }

              (*v190)(v32, v54);
              sub_1004E5C14(v184, v163);

              v85 = v84;
              v56 = v188;
            }

            else
            {

              (*v190)(v32, v54);
              v89 = type metadata accessor for AlbumDetailDataSource.CellType(0);
              v85 = v182;
              (*(*(v89 - 8) + 56))(v182, 1, 1, v89);
              v56 = v188;
            }

            sub_1000095E8(v85, &unk_101192800);
          }

          else
          {

            (*v190)(v32, v54);
          }

          goto LABEL_42;
        }

        v48 = v189;
        if (v64 >> 62 != 1)
        {
          (*v190)(v32, v54);

LABEL_42:
          v49 = v186;
          v51 = v187;
          goto LABEL_7;
        }

        if (*(v186 + v167))
        {
          v184 = *(v62 + OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data);
          v79 = v64;
          sub_1004E5BE4(v78, v64);

          IndexPath.item.getter();
          v80 = type metadata accessor for AlbumDetailDataSource.CellType(0);
          v81 = v183;
          Array.subscript.getter(v80, v183);

          if ((*(*(v80 - 8) + 48))(v81, 1, v80) != 1)
          {
            v87 = v184;
            v88 = swift_getEnumCaseMultiPayload();
            v56 = v188;
            if (v88)
            {
              (*v190)(v32, v54);
              sub_1004E5C14(v87, v79);

              sub_1004E414C(v81, type metadata accessor for AlbumDetailDataSource.CellType);
            }

            else
            {
              sub_1003CF3B4(*v81);
              sub_1004E5C14(v87, v79);

              v56 = v188;

              (*v190)(v32, v54);
            }

            goto LABEL_47;
          }

          (*v190)(v32, v54);
          sub_1004E5C14(v184, v79);
        }

        else
        {

          (*v190)(v32, v54);
          v86 = type metadata accessor for AlbumDetailDataSource.CellType(0);
          v81 = v183;
          (*(*(v86 - 8) + 56))(v183, 1, 1, v86);
        }

        v56 = v188;
        sub_1000095E8(v81, &unk_101192800);
LABEL_47:
        v49 = v186;
        v51 = v187;
LABEL_7:
        v48 += v56;
        if (!--v43)
        {
        }

        v51(v32, v48, v54);
      }
    }
  }

  return result;
}

unint64_t sub_1004D214C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v7 = Strong;
  v8 = sub_1004CF55C(a3, a4);

  return v8;
}

uint64_t sub_1004D21CC(uint64_t a1)
{
  v35 = a1;
  v2 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v2 - 8);
  v38 = &v32 - v3;
  v4 = type metadata accessor for Track();
  v36 = *(v4 - 8);
  v37 = v4;
  __chkstk_darwin(v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v32 - v7;
  v9 = sub_10010FC20(&unk_1011841D0);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v32 - v10;
  v11 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Album();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  sub_1000089F8(v1 + v18, v13, &unk_101184730);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v19 = &unk_101184730;
    v20 = v13;
LABEL_7:
    sub_1000095E8(v20, v19);
    return 2;
  }

  (*(v15 + 32))(v17, v13, v14);
  Album.tracks.getter();
  if ((*(v39 + 48))(v8, 1, v9) == 1)
  {
    (*(v15 + 8))(v17, v14);
    v19 = &unk_1011842D0;
    v20 = v8;
    goto LABEL_7;
  }

  v21 = v34;
  v22 = (*(v39 + 32))();
  __chkstk_darwin(v22);
  *(&v32 - 2) = v35;
  v23 = v38;
  sub_1002D8FA0(sub_1004E5BC4, (&v32 - 4), v38);
  v25 = v36;
  v24 = v37;
  if ((*(v36 + 48))(v23, 1, v37) == 1)
  {
    (*(v39 + 8))(v21, v9);
    (*(v15 + 8))(v17, v14);
    v19 = &qword_10118A530;
    v20 = v23;
    goto LABEL_7;
  }

  v27 = v21;
  v28 = v33;
  (*(v25 + 32))(v33, v23, v24);
  v29 = COERCE_DOUBLE(Album.popularity(for:)());
  v31 = v30;
  (*(v25 + 8))(v28, v24);
  (*(v39 + 8))(v27, v9);
  (*(v15 + 8))(v17, v14);
  if ((v31 & 1) == 0)
  {
    return v29 >= 0.7;
  }

  return 2;
}

uint64_t sub_1004D2708()
{
  type metadata accessor for Track();
  sub_1004E41B4(&unk_10118A620, &type metadata accessor for Track);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_1004D27A0(uint64_t a1, char a2)
{
  v4 = sub_10010FC20(&unk_101192800);
  __chkstk_darwin(v4 - 8);
  v6 = (&v11 - v5);
  if (a2)
  {
    return 1;
  }

  if (!*(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v8 = type metadata accessor for AlbumDetailDataSource.CellType(0);
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    goto LABEL_7;
  }

  v7 = type metadata accessor for AlbumDetailDataSource.CellType(0);

  Array.subscript.getter(v7, v6);

  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
LABEL_7:
    sub_1000095E8(v6, &unk_101192800);
    return 1;
  }

  if (!swift_getEnumCaseMultiPayload())
  {
    v10 = *(*v6 + OBJC_IVAR____TtC5Music21ClassicalAlbumSection_showTrackArtists);

    return v10;
  }

  sub_1004E414C(v6, type metadata accessor for AlbumDetailDataSource.CellType);
  return 1;
}

uint64_t sub_1004D2948(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  __chkstk_darwin(v7);
  v9 = v38 - v8;
  __chkstk_darwin(v10);
  v13 = v38 - v12;
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = *(v2 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
  v15 = *(v14 + 16);
  if (!v15)
  {
    return 0;
  }

  v16 = 0;
  v17 = v14 + 32;
  while (*(v17 + v16) != 2)
  {
    if (v15 == ++v16)
    {
      return 0;
    }
  }

  v39 = *(a1 + 16);
  v40 = v11;
  v18 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v18, &v48, &unk_1011926C0);
  if (v49)
  {
    sub_1000095E8(&v48, &unk_1011926C0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v48, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v42 = v6;
  v38[0] = a1;
  v38[1] = a2;
  v20 = sub_1006A6078();

  v21 = [v20 _indexPathsForPreparedItems];
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = v22;
  v47 = *(v22 + 16);
  if (v47)
  {
    v24 = 0;
    v25 = v42;
    v41 = (v42 + 8);
    v44 = (v42 + 32);
    v45 = v42 + 16;
    v26 = _swiftEmptyArrayStorage;
    v46 = v22;
    while (v24 < *(result + 16))
    {
      v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v28 = *(v25 + 72);
      (*(v25 + 16))(v13, result + v27 + v28 * v24, v5);
      if (IndexPath.section.getter() == v16)
      {
        v29 = *v44;
        (*v44)(v9, v13, v5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v26;
        v43 = v29;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10066CB48(0, *(v26 + 2) + 1, 1);
          v26 = v48;
        }

        v32 = *(v26 + 2);
        v31 = *(v26 + 3);
        v33 = v26;
        if (v32 >= v31 >> 1)
        {
          sub_10066CB48(v31 > 1, v32 + 1, 1);
          v33 = v48;
        }

        *(v33 + 2) = v32 + 1;
        v43(&v33[v27 + v32 * v28], v9, v5);
        v25 = v42;
        v26 = v33;
      }

      else
      {
        (*v41)(v13, v5);
      }

      ++v24;
      result = v46;
      if (v47 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
    v26 = _swiftEmptyArrayStorage;
    v25 = v42;
LABEL_24:

    v34 = *(v26 + 2);
    if (!v34)
    {
LABEL_31:

      return 0;
    }

    v35 = 0;
    v47 = v25 + 16;
    while (v34 != v35)
    {
      if (v35 >= *(v26 + 2))
      {
        goto LABEL_35;
      }

      v36 = v40;
      (*(v25 + 16))(v40, &v26[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v35], v5);
      v37 = IndexPath.item.getter();
      (*(v25 + 8))(v36, v5);
      if (v37 < v39)
      {
        result = type metadata accessor for AlbumDetailDataSource.CellType(0);
        if (v37 < 0)
        {
          goto LABEL_36;
        }

        sub_1004E41B4(&qword_101192838, type metadata accessor for AlbumDetailDataSource.CellType);
        result = static ApproximatelyEquatable.!=~ infix(_:_:)();
        ++v35;
        if ((result & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_31;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1004D2E64()
{
  v1 = sub_10010FC20(&unk_1011841D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - v3;
  v5 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v5 - 8);
  v7 = v11 - v6;
  result = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
  if ((result & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
  {
    if ((result >> 62) - 1 >= 2)
    {
      if (result >> 62)
      {
        goto LABEL_7;
      }

      v9 = *(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentedLoadingState);
      sub_10011896C(result);
      result = v9;
    }

    if ((result & 1) == 0)
    {
      return result;
    }

    sub_1004E5BA4(result);
  }

LABEL_7:
  v10 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(v0 + v10, v7, &unk_1011842D0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000095E8(v7, &unk_1011842D0);
  }

  else
  {
    (*(v2 + 16))(v4, v7, v1);
    sub_1000095E8(v7, &unk_1011842D0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v2 + 8))(v4, v1);
    if (v11[2] == v11[1] && (*(v0 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_includeOnlyDownloadedContent) & 1) != 0)
    {
      return 0x3FFFFFEFALL;
    }
  }

  return 0x3FFFFFEF8;
}

void sub_1004D313C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
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
        *(v10 + 16) = sub_1004E5B38;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF418;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D3324(uint64_t a1)
{
  v2 = sub_1004D2E64();
  if ((v2 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEF8)
  {
    if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) != 1)
    {
      return;
    }

    *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) = 0;
    v3 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
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
  if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection))
  {
    return;
  }

  *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingNoContentSection) = 1;
  v7 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
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

void sub_1004D365C()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
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
        *(v10 + 16) = sub_1004E5B30;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF3A0;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D3844(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011841D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - v4;
  v6 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v6 - 8);
  v8 = v17 - v7;
  v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  sub_1000089F8(a1 + v9, v8, &unk_1011842D0);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000095E8(v8, &unk_1011842D0);
    v10 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
    if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection) & 1) == 0)
    {
      return;
    }

LABEL_6:
    *v10 = 0;
    v11 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v11, &v18, &unk_1011926C0);
    if (v19)
    {
LABEL_7:
      sub_1000095E8(&v18, &unk_1011926C0);
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v18, &unk_1011926C0);
    if (Strong)
    {
      v13 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 deleteItemsAtIndexPaths:v14.super.isa];
LABEL_10:

      return;
    }

    return;
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1000095E8(v8, &unk_1011842D0);
  sub_100020674(&qword_1011913B0, &unk_1011841D0);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  (*(v3 + 8))(v5, v2);
  v10 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection);
  if (v17[0] == v18)
  {
    if (!*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection))
    {
      return;
    }

    goto LABEL_6;
  }

  if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingDetailSection) & 1) == 0)
  {
    *v10 = 1;
    v15 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(a1 + v15, &v18, &unk_1011926C0);
    if (v19)
    {
      goto LABEL_7;
    }

    v16 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v18, &unk_1011926C0);
    if (v16)
    {
      v13 = sub_1006A6078();

      sub_10010FC20(&qword_10118AC80);
      type metadata accessor for IndexPath();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      IndexPath.init(item:section:)();
      v14.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 insertItemsAtIndexPaths:v14.super.isa];
      goto LABEL_10;
    }
  }
}

void sub_1004D3D70()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v97 = *(v2 - 8);
  v98 = v2;
  __chkstk_darwin(v2);
  v96 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_101192700);
  __chkstk_darwin(v4 - 8);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v83 - v7;
  v90 = sub_10010FC20(&unk_1011841D0);
  v95 = *(v90 - 8);
  __chkstk_darwin(v90);
  v87 = &v83 - v8;
  v9 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v83 - v10;
  v12 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v12 - 8);
  v14 = &v83 - v13;
  v15 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v15 - 8);
  v91 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v83 - v18;
  __chkstk_darwin(v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for Album();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v89 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v83 - v26;
  v28 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  swift_beginAccess();
  sub_1000089F8(v1 + v28, v21, &unk_101184730);
  v29 = *(v23 + 48);
  if (v29(v21, 1, v22) == 1)
  {
    sub_1000095E8(v21, &unk_101184730);
  }

  else
  {
    v85 = v29;
    v86 = v23;
    v30 = *(v23 + 32);
    v84 = v22;
    v30(v27, v21, v22);
    v31 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel;
    v32 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel);

    *(v32 + 16) = Album.isAppleDigitalMaster.getter();

    v33 = *(v1 + v31);

    Album.releaseDate.getter();
    v34 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
    swift_beginAccess();
    sub_10006B010(v14, v33 + v34, &qword_101188C20);
    swift_endAccess();

    v35 = *(v1 + v31);
    v36 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v1 + v36, v11, &unk_1011842D0);
    v37 = v90;
    v38 = (*(v95 + 48))(v11, 1, v90);
    v92 = v27;
    if (v38)
    {

      sub_1000095E8(v11, &unk_1011842D0);
      v39 = 0;
    }

    else
    {
      v40 = v95;
      v41 = *(v95 + 16);
      v83 = v35;
      v42 = v87;
      v41(v87, v11, v37);

      sub_1000095E8(v11, &unk_1011842D0);
      sub_100020674(&qword_1011913B0, &unk_1011841D0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v39 = dispatch thunk of Collection.distance(from:to:)();
      (*(v40 + 8))(v42, v37);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v99 = v39;
    v100 = v38 != 0;
    static Published.subscript.setter();
    v43 = *(v1 + v31);

    v44 = Album.copyright.getter();
    v46 = v84;
    if (v45)
    {
      v47 = v94;
      v48 = v93;
      v49 = v85;
    }

    else
    {
      v50 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
      swift_beginAccess();
      v51 = v1 + v50;
      v52 = v88;
      sub_1000089F8(v51, v88, &unk_101184730);
      v49 = v85;
      v53 = v85(v52, 1, v46);
      v47 = v94;
      v48 = v93;
      if (v53)
      {
        sub_1000095E8(v52, &unk_101184730);
        v44 = 0;
        v45 = 0;
      }

      else
      {
        v95 = v31;
        v54 = v86;
        v55 = v89;
        (*(v86 + 16))(v89, v52, v46);
        sub_1000095E8(v52, &unk_101184730);
        v56 = Album.copyright.getter();
        v58 = v57;
        (*(v54 + 8))(v55, v46);
        v45 = v58;
        v49 = v85;
        v44 = v56;
      }
    }

    v59 = (v43 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    *v59 = v44;
    v59[1] = v45;

    v60 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
    swift_beginAccess();
    v61 = v1 + v60;
    v62 = v91;
    sub_1000089F8(v61, v91, &unk_101184730);
    if (v49(v62, 1, v46))
    {

      sub_1000095E8(v62, &unk_101184730);
      v63 = sub_10010FC20(&qword_101184C70);
      (*(*(v63 - 8) + 56))(v48, 1, 1, v63);
      v64 = v86;
    }

    else
    {
      v64 = v86;
      v65 = v89;
      (*(v86 + 16))(v89, v62, v46);

      sub_1000095E8(v62, &unk_101184730);
      Album.recordLabels.getter();
      (*(v64 + 8))(v65, v46);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v48, v47, &unk_101192700);
    static Published.subscript.setter();
    sub_1000095E8(v48, &unk_101192700);
    (*(v64 + 8))(v92, v46);
  }

  v66 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v66, v101, &unk_1011926C0);
  if (v101[8])
  {
    sub_1000095E8(v101, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v101, &unk_1011926C0);
    if (Strong)
    {
      v68 = sub_1006A6078();

      v69 = [v68 indexPathsForVisibleItems];
      v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v71 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections);
      v72 = *(v71 + 16);
      if (v72)
      {
        v73 = 0;
        v74 = v71 + 32;
        while (*(v74 + v73) != 6)
        {
          if (v72 == ++v73)
          {
            goto LABEL_22;
          }
        }

        v75 = 0;
        v76 = *(v70 + 16);
        v95 = v97 + 16;
        v77 = v97;
        while (v76 != v75)
        {
          if (v75 >= *(v70 + 16))
          {
            __break(1u);
            return;
          }

          v78 = v96;
          v79 = v98;
          (*(v77 + 16))(v96, v70 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v75++, v98);
          v80 = v1;
          v81 = IndexPath.section.getter();
          (*(v77 + 8))(v78, v79);
          v82 = v81 == v73;
          v1 = v80;
          if (v82)
          {

            sub_1004D4938();
            return;
          }
        }
      }

LABEL_22:
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_needsDurationUpdate) = 1;
}

uint64_t sub_1004D4938()
{
  v1 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-v2 - 8];
  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v4, v12, &unk_1011926C0);
  if (v12[8])
  {
    v5 = &unk_1011926C0;
    v6 = v12;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    result = sub_1000095E8(v12, &unk_1011926C0);
    if (!Strong)
    {
      return result;
    }

    v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
    swift_beginAccess();
    sub_1000089F8(v0 + v9, v3, &unk_1011842D0);
    v13 = v3;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_10080658C(&v13, sub_1004E5B28, v10);

    v6 = v3;
    v5 = &unk_1011842D0;
  }

  return sub_1000095E8(v6, v5);
}

uint64_t sub_1004D4B0C()
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

void sub_1004D4BB0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);
  if (a1)
  {
    if (v2)
    {
      v7 = *(v1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner);
      type metadata accessor for BannerProvider.Banner();
      sub_1004E41B4(&qword_101192730, &type metadata accessor for BannerProvider.Banner);

      v3 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v3)
      {
        return;
      }
    }
  }

  else if (!v2)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v4, &v7, &unk_1011926C0);
  if (v8)
  {
    sub_1000095E8(&v7, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v7, &unk_1011926C0);
    if (Strong)
    {
      v6 = [Strong isViewLoaded];

      if (v6)
      {
        sub_1004C97D0(0);
      }
    }
  }
}

void sub_1004D4D28()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music21AlbumDetailDataSource_sections];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = v1 + 32;
    while (*(v4 + v3) != 1)
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
        *(v10 + 16) = sub_1004E5B20;
        *(v10 + 24) = v9;
        v17 = sub_10018A020;
        v18 = v10;
        aBlock = _NSConcreteStackBlock;
        v14 = 1107296256;
        v15 = sub_100029B9C;
        v16 = &unk_1010AF328;
        v11 = _Block_copy(&aBlock);
        v12 = v7;

        [v8 performBatchUpdates:v11 completion:0];
        _Block_release(v11);
      }
    }
  }
}

void sub_1004D4F10(uint64_t a1)
{
  v2 = type metadata accessor for MusicPropertySource();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v18[-v7];
  static ApplicationCapabilities.shared.getter(v21);
  sub_100014984(v21);
  if (BYTE1(v21[0]) & 1) != 0 && (v9 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source, swift_beginAccess(), (*(v3 + 16))(v8, a1 + v9, v2), (*(v3 + 104))(v6, enum case for MusicPropertySource.catalog(_:), v2), LOBYTE(v9) = static MusicPropertySource.== infix(_:_:)(), v10 = *(v3 + 8), v10(v6, v2), v10(v8, v2), (v9) && *(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_presentingCells))
  {
    v11 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
    if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_banner))
    {
      if (*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection))
      {
        return;
      }

      *v11 = 1;
      v12 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(a1 + v12, v19, &unk_1011926C0);
      if ((v20 & 1) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v19, &unk_1011926C0);
        if (!Strong)
        {
          return;
        }

        v14 = sub_1006A6078();

        sub_10010FC20(&qword_10118AC80);
        type metadata accessor for IndexPath();
        *(swift_allocObject() + 16) = xmmword_100EBC6B0;
        IndexPath.init(item:section:)();
        v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v14 insertItemsAtIndexPaths:v15.super.isa];
        goto LABEL_14;
      }

LABEL_11:
      sub_1000095E8(v19, &unk_1011926C0);
      return;
    }

    if (!*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection))
    {
      return;
    }
  }

  else
  {
    v11 = (a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection);
    if ((*(a1 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_isShowingBannerSection) & 1) == 0)
    {
      return;
    }
  }

  *v11 = 0;
  v16 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1 + v16, v19, &unk_1011926C0);
  if (v20)
  {
    goto LABEL_11;
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v19, &unk_1011926C0);
  if (!v17)
  {
    return;
  }

  v14 = sub_1006A6078();

  sub_10010FC20(&qword_10118AC80);
  type metadata accessor for IndexPath();
  *(swift_allocObject() + 16) = xmmword_100EBC6B0;
  IndexPath.init(item:section:)();
  v15.super.isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 deleteItemsAtIndexPaths:v15.super.isa];
LABEL_14:
}

uint64_t sub_1004D53B8(uint64_t a1)
{
  v2 = v1;
  v151 = a1;
  v3 = sub_10010FC20(&unk_1011842D0);
  __chkstk_darwin(v3 - 8);
  v135 = &v125 - v4;
  v146 = type metadata accessor for MusicPropertySource();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v125 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v143 = &v125 - v7;
  v8 = sub_10010FC20(&unk_101192700);
  __chkstk_darwin(v8 - 8);
  v141 = &v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v140 = &v125 - v11;
  v131 = type metadata accessor for EditorialVideoArtworkFlavor();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v13 - 8);
  v133 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v139 = &v125 - v16;
  v17 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v17 - 8);
  v138 = &v125 - v18;
  v19 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v19 - 8);
  v137 = &v125 - v20;
  v21 = type metadata accessor for Album();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v132 = &v125 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v142 = &v125 - v25;
  __chkstk_darwin(v26);
  v147 = &v125 - v27;
  v28 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v28 - 8);
  v134 = &v125 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v136 = &v125 - v31;
  __chkstk_darwin(v32);
  v148 = &v125 - v33;
  __chkstk_darwin(v34);
  v36 = &v125 - v35;
  __chkstk_darwin(v37);
  v39 = &v125 - v38;
  v40 = sub_10010FC20(&unk_101192960);
  v41 = v40 - 8;
  __chkstk_darwin(v40);
  v43 = &v125 - v42;
  v44 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogAlbum;
  swift_beginAccess();
  v45 = *(v41 + 56);
  v149 = v2;
  v150 = v44;
  sub_1000089F8(v2 + v44, v43, &unk_101184730);
  sub_1000089F8(v151, &v43[v45], &unk_101184730);
  v151 = v22;
  v46 = v22 + 48;
  v47 = *(v22 + 48);
  if (v47(v43, 1, v21) == 1)
  {
    v48 = v47(&v43[v45], 1, v21);
    v49 = v21;
    if (v48 == 1)
    {
      return sub_1000095E8(v43, &unk_101184730);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v43, v39, &unk_101184730);
  if (v47(&v43[v45], 1, v21) == 1)
  {
    (*(v151 + 8))(v39, v21);
    v49 = v21;
LABEL_6:
    sub_1000095E8(v43, &unk_101192960);
    goto LABEL_7;
  }

  v57 = v151;
  v58 = *(v151 + 32);
  v128 = v22 + 48;
  v59 = v147;
  v58(v147, &v43[v45], v21);
  sub_1004E41B4(&unk_101192760, &type metadata accessor for Album);
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v57 + 8);
  v62 = v59;
  v46 = v128;
  v61(v62, v21);
  v61(v39, v21);
  result = sub_1000095E8(v43, &unk_101184730);
  v49 = v21;
  if (v60)
  {
    return result;
  }

LABEL_7:
  v51 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_album;
  v52 = v149;
  swift_beginAccess();
  v127 = v51;
  sub_1000089F8(v52 + v51, v36, &unk_101184730);
  LODWORD(v51) = v47(v36, 1, v49);
  sub_1000095E8(v36, &unk_101184730);
  if (v51 != 1)
  {
    v53 = (*(v52 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracklistFooterViewModel) + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    if (!v53[1])
    {
      v54 = v150;
      if (v47((v52 + v150), 1, v49))
      {

        v55 = 0;
        v56 = 0;
      }

      else
      {
        v63 = v151;
        v64 = *(v151 + 16);
        v128 = v46;
        v65 = v147;
        v64(v147, v52 + v54, v49);

        v55 = Album.copyright.getter();
        v56 = v66;
        v67 = v65;
        v46 = v128;
        (*(v63 + 8))(v67, v49);
      }

      *v53 = v55;
      v53[1] = v56;
    }
  }

  sub_1004C97D0(0);
  sub_1004B2C94();
  v68 = v150;
  v69 = v148;
  sub_1000089F8(v52 + v150, v148, &unk_101184730);
  if (v47(v69, 1, v49) == 1)
  {
    goto LABEL_16;
  }

  v71 = *(v151 + 32);
  v72 = v142;
  v148 = v151 + 32;
  v125 = v71;
  v71(v142, v69, v49);
  v73 = Album.catalogID.getter();
  v74 = (v52 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
  v75 = *(v52 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID);
  v76 = *(v52 + OBJC_IVAR____TtC5Music21AlbumDetailDataSource_catalogID + 8);
  *v74 = v73;
  v74[1] = v77;
  sub_1004ABC24(v75, v76);

  sub_1004CAC5C();
  v78 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (!v78)
  {
    v78 = sub_10010BDB8(_swiftEmptyArrayStorage);
  }

  sub_1005F40C8(v78);

  v79 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource____lazy_storage___headerConfiguration;

  v80 = v137;
  Album.staticDetailTallArtwork.getter();
  sub_1005F3EAC(v80);

  v81 = *(v52 + v79);
  v82 = v136;
  sub_1000089F8(v52 + v68, v136, &unk_101184730);
  if (v47(v82, 1, v49))
  {

    sub_1000095E8(v82, &unk_101184730);
    v83 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v84 = 1;
    v85 = v138;
    (*(*(v83 - 8) + 56))(v138, 1, 1, v83);
  }

  else
  {
    v86 = v151;
    v87 = v147;
    (*(v151 + 16))(v147, v82, v49);

    sub_1000095E8(v82, &unk_101184730);
    v85 = v138;
    sub_1004CA938(v138);
    (*(v86 + 8))(v87, v49);
    v88 = type metadata accessor for ContainerDetail.AttributionItem(0);
    v84 = (*(*(v88 - 8) + 48))(v85, 1, v88) == 1;
  }

  sub_1000095E8(v85, &qword_101192860);
  if (v84 == *(v81 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution))
  {
    *(v81 + OBJC_IVAR____TtCV5Music6Header13Configuration__disableAttribution) = v84;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v125 - 2) = v81;
    *(&v125 - 8) = v84;
    v152 = v81;
    sub_1004E41B4(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v90 = v139;
  v91 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v52 + v91, &v152, &unk_1011926C0);
  if (v153)
  {
    v92 = &unk_1011926C0;
LABEL_31:
    sub_1000095E8(&v152, v92);
    goto LABEL_32;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v152, &unk_1011926C0);
  if (!Strong)
  {
    goto LABEL_32;
  }

  v94 = sub_10069F9B8();

  if (*(v94 + 16))
  {

    v154 = v49;
    v155 = &off_1010B22E8;
    v95 = sub_10001C8B8(&v152);
    (*(v151 + 16))(v95, v72, v49);
    sub_10064B708(&v152);

    v92 = &unk_101192850;
    goto LABEL_31;
  }

LABEL_32:
  sub_1000089F8(v52 + v91, &v152, &unk_1011926C0);
  v128 = v46;
  v126 = v47;
  if (v153)
  {
    v96 = &unk_1011926C0;
    v97 = &v152;
LABEL_44:
    sub_1000095E8(v97, v96);
    goto LABEL_45;
  }

  v98 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v152, &unk_1011926C0);
  if (v98)
  {
    v99 = *&v98[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource];

    if (v99)
    {
      v100 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
      if (v100)
      {
        v101 = v100;
        v102 = v129;
        static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
        if (*(v101 + 16))
        {
          v103 = sub_1006BE63C(v102);
          if (v104)
          {
            v105 = v103;
            v106 = *(v101 + 56);
            v107 = v90;
            v108 = type metadata accessor for VideoArtwork();
            v109 = *(v108 - 8);
            v150 = v49;
            v110 = v109;
            (*(v109 + 16))(v107, v106 + *(v109 + 72) * v105, v108);
            (*(v130 + 8))(v102, v131);

            (*(v110 + 56))(v107, 0, 1, v108);
            v49 = v150;
LABEL_43:
            swift_getKeyPath();
            swift_getKeyPath();
            sub_1000089F8(v107, v133, &unk_101192950);
            static Published.subscript.setter();
            v97 = v107;
            v96 = &unk_101192950;
            goto LABEL_44;
          }
        }

        (*(v130 + 8))(v102, v131);
      }

      v111 = type metadata accessor for VideoArtwork();
      (*(*(v111 - 8) + 56))(v90, 1, 1, v111);
      v107 = v90;
      goto LABEL_43;
    }
  }

LABEL_45:
  v112 = v49;

  v113 = v140;
  Album.recordLabels.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v113, v141, &unk_101192700);
  static Published.subscript.setter();
  sub_1000095E8(v113, &unk_101192700);
  v114 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_source;
  swift_beginAccess();
  v115 = v145;
  v116 = v143;
  v117 = v146;
  (*(v145 + 16))(v143, v52 + v114, v146);
  v118 = v144;
  (*(v115 + 104))(v144, enum case for MusicPropertySource.library(_:), v117);
  LOBYTE(v114) = static MusicPropertySource.== infix(_:_:)();
  v119 = *(v115 + 8);
  v119(v118, v117);
  v119(v116, v117);
  if ((v114 & 1) == 0)
  {
    return (*(v151 + 8))(v72, v112);
  }

  v120 = OBJC_IVAR____TtC5Music21AlbumDetailDataSource_tracks;
  swift_beginAccess();
  v121 = v52 + v120;
  v69 = v135;
  sub_1000089F8(v121, v135, &unk_1011842D0);
  v122 = sub_10010FC20(&unk_1011841D0);
  if ((*(*(v122 - 8) + 48))(v69, 1, v122) == 1)
  {
    (*(v151 + 8))(v72, v112);
    v70 = &unk_1011842D0;
    return sub_1000095E8(v69, v70);
  }

  sub_1000095E8(v69, &unk_1011842D0);
  v69 = v134;
  sub_1000089F8(v52 + v127, v134, &unk_101184730);
  if (v126(v69, 1, v112) == 1)
  {
    (*(v151 + 8))(v72, v112);
LABEL_16:
    v70 = &unk_101184730;
    return sub_1000095E8(v69, v70);
  }

  v123 = v132;
  v125(v132, v69, v112);
  sub_1004CE888(v123);
  v124 = *(v151 + 8);
  v124(v123, v112);
  return (v124)(v72, v112);
}