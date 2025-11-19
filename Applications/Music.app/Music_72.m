uint64_t sub_10080A8B0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4B48);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4B48);
  v10 = sub_10010FC20(&qword_1011A44F0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4B48);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s10HeaderCellCMa();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4B48);
  return swift_endAccess();
}

void sub_10080AB14()
{
  v0 = sub_10010FC20(&qword_1011A4B50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = __chkstk_darwin(Strong);
    v7[-2] = v5;
    v6 = v5;
    sub_10086B5F4();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    v7[3] = v0;
    v7[4] = sub_100020674(&qword_1011A4B60, &qword_1011A4B50);
    sub_10001C8B8(v7);
    UIHostingConfiguration.margins(_:_:)();
    (*(v1 + 8))(v3, v0);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10080ACDC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4AF0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___trackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4AF0);
  v10 = sub_10010FC20(&unk_1011A4500);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4AF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s13TracklistCellCMa();
  type metadata accessor for Playlist.Entry();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4AF0);
  return swift_endAccess();
}

void sub_10080AF44(_BYTE *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t))
{
  v189 = a3;
  v187 = a2;
  v178 = a1;
  v3 = sub_10010FC20(&qword_1011A4AF8);
  v170 = *(v3 - 8);
  v171 = v3;
  __chkstk_darwin(v3);
  v169 = v158 - v4;
  v5 = type metadata accessor for Playlist.EditableComponents();
  v166 = *(v5 - 8);
  v167 = v5;
  __chkstk_darwin(v5);
  v164 = v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v7 - 8);
  v165 = v158 - v8;
  v183 = type metadata accessor for Playlist.Entry.InternalItem();
  v188 = *(v183 - 1);
  v9 = __chkstk_darwin(v183);
  v175 = v158 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v174 = v158 - v12;
  __chkstk_darwin(v11);
  v177 = v158 - v13;
  v182 = type metadata accessor for Playlist.Entry();
  v176 = *(v182 - 8);
  v14 = *(v176 + 8);
  v15 = __chkstk_darwin(v182);
  v173 = v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v185 = v158 - v17;
  __chkstk_darwin(v16);
  v168 = v158 - v18;
  v181 = type metadata accessor for IndexPath();
  v186 = *(v181 - 8);
  __chkstk_darwin(v181);
  v172 = v19;
  v184 = v158 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_10118B970);
  __chkstk_darwin(v20);
  v22 = v158 - v21;
  v23 = sub_10010FC20(&unk_10118BCE0);
  v24 = __chkstk_darwin(v23 - 8);
  v26 = v158 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = v158 - v27;
  v29 = sub_10010FC20(&qword_1011A4740);
  v30 = __chkstk_darwin(v29 - 8);
  v180 = v158 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = (v158 - v32);
  v34 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v34 - 8);
  v36 = v158 - v35;
  v37 = type metadata accessor for Playlist();
  v190 = *(v37 - 8);
  v191 = v37;
  v38 = __chkstk_darwin(v37);
  v179 = v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v192 = v158 - v40;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v42 = Strong;
  v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v42[v43], &v194, &unk_1011926C0);
  if (BYTE8(v194) == 1)
  {

    sub_1000095E8(&v194, &unk_1011926C0);
    return;
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v194, &unk_1011926C0);
  v163 = v44;
  if (!v44)
  {

    return;
  }

  v161 = v22;
  v162 = v33;
  v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v42[v45], v36, &unk_1011814D0);
  v47 = v190;
  v46 = v191;
  if ((*(v190 + 48))(v36, 1, v191) == 1)
  {

    sub_1000095E8(v36, &unk_1011814D0);
    return;
  }

  v48 = v42;
  v49 = v192;
  (*(v47 + 32))(v192, v36, v46);
  v50 = *&v48[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
  if (!v50)
  {

    (*(v47 + 8))(v49, v46);
    return;
  }

  v160 = v50;
  sub_100848DE0(v189, v162);
  v51 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v52 = v186;
  v53 = v181;
  v158[0] = *(v186 + 16);
  v158[1] = v186 + 16;
  (v158[0])(v28, v187, v181);
  (*(v52 + 56))(v28, 0, 1, v53);
  v54 = *(v20 + 48);
  v55 = &v48[v51];
  v56 = v161;
  sub_1000089F8(v55, v161, &unk_10118BCE0);
  v159 = v54;
  v57 = &v54[v56];
  v58 = v53;
  sub_1000089F8(v28, v57, &unk_10118BCE0);
  v59 = *(v52 + 48);
  v60 = v48;
  if (v59(v56, 1, v58) == 1)
  {
    sub_1000095E8(v28, &unk_10118BCE0);
    v61 = v59(&v159[v56], 1, v58);
    v62 = v189;
    v63 = v191;
    v64 = v182;
    v65 = v56;
    if (v61 == 1)
    {
      sub_1000095E8(v56, &unk_10118BCE0);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_1000089F8(v56, v26, &unk_10118BCE0);
  v65 = v56;
  if (v59(&v159[v56], 1, v58) == 1)
  {
    sub_1000095E8(v28, &unk_10118BCE0);
    (*(v186 + 8))(v26, v58);
    v62 = v189;
    v63 = v191;
    v64 = v182;
LABEL_15:
    sub_1000095E8(v65, &unk_10118B970);
LABEL_16:
    LODWORD(v161) = 0;
    v66 = v176;
    goto LABEL_24;
  }

  v67 = v186;
  v68 = &v159[v56];
  v69 = v58;
  v70 = v184;
  (*(v186 + 32))(v184, v68, v69);
  sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath);
  LODWORD(v159) = dispatch thunk of static Equatable.== infix(_:_:)();
  v71 = *(v67 + 8);
  v71(v70, v69);
  sub_1000095E8(v28, &unk_10118BCE0);
  v71(v26, v69);
  sub_1000095E8(v65, &unk_10118BCE0);
  v62 = v189;
  v63 = v191;
  v64 = v182;
  if ((v159 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_18:
  v66 = v176;
  if (*&v60[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8])
  {
    v72 = v168;
    (*(v176 + 2))(v168, v62, v64);

    if (MusicItem.contains(_:)())
    {

      (*(v66 + 1))(v72, v64);
      LODWORD(v161) = 1;
    }

    else
    {
      v73 = v177;
      Playlist.Entry.internalItem.getter();
      sub_100866F00(&qword_1011A4748, &type metadata accessor for Playlist.Entry.InternalItem);
      v74 = v183;
      LODWORD(v161) = MusicItem.contains(_:)();

      v75 = v73;
      v66 = v176;
      (v188[1])(v75, v74);
      (*(v66 + 1))(v72, v64);
    }

    v63 = v191;
  }

  else
  {
    LODWORD(v161) = 0;
  }

LABEL_24:
  v76 = *(v66 + 2);
  (v76)(v185, v62, v64);
  (*(v190 + 16))(v179, v192, v63);
  sub_1000089F8(v162, v180, &qword_1011A4740);
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = v64;
  v79 = v173;
  v168 = v66 + 16;
  v159 = v76;
  (v76)(v173, v62, v78);
  v80 = v181;
  (v158[0])(v184, v187, v181);
  v81 = (v66[80] + 24) & ~v66[80];
  v176 = v60;
  v82 = v186;
  v83 = (v14 + *(v186 + 80) + v81) & ~*(v186 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = v77;
  (*(v66 + 4))(v84 + v81, v79, v78);
  (*(v82 + 32))(v84 + v83, v184, v80);
  type metadata accessor for PlaylistEntryData();
  swift_allocObject();
  v186 = sub_10026E81C(v185, v179, v180, v161 & 1, sub_10086E39C, v84);

  v85 = v174;
  Playlist.Entry.internalItem.getter();
  v86 = Playlist.Entry.InternalItem.id.getter();
  v88 = v87;
  v89 = v176;
  v90 = v188[1];
  ++v188;
  (v90)(v85, v183);
  v91 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_libraryStateCache;
  swift_beginAccess();
  v92 = *&v89[v91];
  if (*(v92 + 16) && (, v93 = sub_100019C10(v86, v88), v95 = v94, , (v95 & 1) != 0))
  {
    v184 = *(*(v92 + 56) + 8 * v93);
    swift_retain_n();

    v96 = v90;
    v97 = v176;
    v98 = v183;
  }

  else
  {

    v99 = v163;
    v100 = [v99 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v101 = MusicLibrary.state<A>(for:)();

    swift_retain_n();
    v102 = v177;
    Playlist.Entry.internalItem.getter();
    v181 = Playlist.Entry.InternalItem.id.getter();
    v104 = v103;
    v105 = v102;
    v98 = v183;
    (v90)(v105, v183);
    v96 = v90;
    v97 = v176;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = *&v97[v91];
    *&v97[v91] = 0x8000000000000000;
    v184 = v101;
    sub_1006C77AC(v101, v181, v104, isUniquelyReferenced_nonNull_native);

    *&v97[v91] = v193[0];
    swift_endAccess();
  }

  v107 = v175;
  Playlist.Entry.internalItem.getter();
  v108 = Playlist.Entry.InternalItem.id.getter();
  v110 = v109;
  v183 = v96;
  (v96)(v107, v98);
  v111 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playerStateCache;
  swift_beginAccess();
  v112 = *&v97[v111];
  if (!*(v112 + 16) || (, v113 = sub_100019C10(v108, v110), v115 = v114, , (v115 & 1) == 0))
  {

    v118 = v178;
    if (qword_10117F5F8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_32;
  }

  v116 = *(*(v112 + 56) + 8 * v113);

  v117 = v185;
  (v159)(v185, v189, v182);
  (*(*v116 + 224))(v117);

  v118 = v178;
  while (1)
  {
    v125 = sub_100849C78();
    v126 = v186;
    v111 = v161;
    if (!__OFSUB__(v125, 1))
    {
      break;
    }

    __break(1u);
LABEL_48:
    swift_once();
LABEL_32:
    v116 = Player.state<A>(for:)(v189);
    swift_retain_n();
    v119 = v177;
    Playlist.Entry.internalItem.getter();
    v120 = Playlist.Entry.InternalItem.id.getter();
    v122 = v121;
    (v183)(v119, v98);
    v123 = v176;
    swift_beginAccess();
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v193[0] = *&v123[v111];
    *&v123[v111] = 0x8000000000000000;
    sub_1006C7798(v116, v120, v122, v124);

    *&v123[v111] = v193[0];
    swift_endAccess();
  }

  if (v125 - 1 == IndexPath.item.getter() && (v127 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks, v128 = v176, swift_beginAccess(), !*(*&v128[v127] + 16)))
  {
    v148 = v165;
    Playlist.editableComponents.getter();
    v149 = v148;
    v150 = v166;
    v151 = v148;
    v152 = v167;
    if ((*(v166 + 48))(v151, 1, v167) == 1)
    {
      sub_1000095E8(v149, &unk_10118D240);
      v129 = 1;
    }

    else
    {
      v111 = v164;
      static Playlist.EditableComponents.tracklist.getter();
      sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v153 = v149;
      v154 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v155 = *(v150 + 8);
      v156 = v111;
      LOBYTE(v111) = v161;
      v155(v156, v152);
      v157 = v153;
      v126 = v186;
      v155(v157, v152);
      v129 = v154 ^ 1;
    }
  }

  else
  {
    v129 = 0;
  }

  v130 = sub_100866F00(&qword_1011A4B00, type metadata accessor for PlaylistEntryData);
  v131 = &v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
  v132 = *&v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data];
  v133 = *&v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_data + 8];
  *v131 = v126;
  v131[1] = v130;

  sub_1004E5C14(v132, v133);
  v134 = v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent];
  v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_isProminent] = v111 & 1;
  if ((v111 & 1) != v134)
  {
    [v118 setNeedsUpdateConfiguration];
  }

  v135 = v163;
  v136 = sub_1006A6078();
  v194 = *&v136[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v195 = *&v136[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v196[0] = *&v136[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v196 + 9) = *&v136[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  v188 = v158;
  v137 = &v118[OBJC_IVAR____TtCV5Music15ContainerDetail13TracklistCell_metrics];
  v138 = v195;
  *v137 = v194;
  v137[1] = v138;
  v137[2] = v196[0];
  *(v137 + 41) = *(v196 + 9);
  __chkstk_darwin(v139);
  v158[-10] = v126;
  LOBYTE(v158[-9]) = v129 & 1;
  v158[-8] = v184;
  v158[-7] = v116;
  v140 = v176;
  v141 = v189;
  v158[-6] = v176;
  v158[-5] = v141;
  v158[-4] = v192;
  v158[-3] = v135;
  v158[-2] = v160;
  sub_10010FC20(&qword_1011A4B08);
  v142 = sub_1001109D0(&qword_1011A4B10);
  v143 = sub_100020674(&qword_1011A4B18, &qword_1011A4B10);
  v193[0] = v142;
  v193[1] = v143;
  swift_getOpaqueTypeConformance2();
  v144 = v169;
  UIHostingConfiguration<>.init(content:)();

  static Edge.Set.all.getter();
  v145 = v171;
  v193[3] = v171;
  v193[4] = sub_100020674(&qword_1011A4B20, &qword_1011A4AF8);
  sub_10001C8B8(v193);
  UIHostingConfiguration.margins(_:_:)();
  (*(v170 + 8))(v144, v145);
  UICollectionViewCell.contentConfiguration.setter();
  v146 = [v135 traitCollection];
  v147 = [v146 userInterfaceIdiom];

  if (v147 == 6)
  {
    UICollectionViewCell.configurationUpdateHandler.setter();

    sub_1000095E8(v162, &qword_1011A4740);
  }

  else
  {
    sub_1000095E8(v162, &qword_1011A4740);
  }

  (*(v190 + 8))(v192, v191);
}

uint64_t sub_10080C5A4@<X0>(char a1@<W1>, uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, uint64_t a6)
{
  v22[3] = a5;
  v22[1] = a2;
  v22[2] = a6;
  v9 = sub_10010FC20(&qword_1011A4B10);
  __chkstk_darwin(v9);
  v11 = v22 - v10;
  v12 = sub_1007FF8B0(a3, a4);
  v13 = sub_1006A6078();
  v14 = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  v23 = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v24 = v14;
  v25[0] = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *(v25 + 9) = *&v13[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for PlaylistEntryData();
  sub_100866F00(&qword_101187EA8, type metadata accessor for PlaylistEntryData);

  *v11 = ObservedObject.init(wrappedValue:)();
  *(v11 + 1) = v15;
  v11[16] = a1;

  sub_10010FC20(&qword_1011A4B28);
  sub_100020674(&unk_1011A4B30, &qword_1011A4B28);
  *(v11 + 3) = ObservedObject.init(wrappedValue:)();
  *(v11 + 4) = v16;

  sub_10010FC20(&unk_1011A46E0);
  sub_100020674(&qword_1011A2888, &unk_1011A46E0);
  *(v11 + 5) = ObservedObject.init(wrappedValue:)();
  *(v11 + 6) = v17;
  *(v11 + 7) = v12;
  *(v11 + 6) = v25[0];
  *(v11 + 105) = *(v25 + 9);
  v18 = v24;
  *(v11 + 4) = v23;
  *(v11 + 5) = v18;
  v19 = *(v9 + 80);
  *&v11[v19] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v20 = *(v9 + 84);
  *&v11[v20] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100020674(&qword_1011A4B18, &qword_1011A4B10);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v11, &qword_1011A4B10);
}

uint64_t sub_10080C92C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118A5B0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___temporaryTrackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_10118A5B0);
  v10 = sub_10010FC20(&unk_1011A4510);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_10118A5B0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for Track();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_10118A5B0);
  return swift_endAccess();
}

void sub_10080CBA4(uint64_t a1, uint64_t a2, char *a3)
{
  v38 = a3;
  v4 = sub_10010FC20(&qword_1011A4AC8);
  v40 = *(v4 - 8);
  __chkstk_darwin(v4);
  v39 = &v32 - v5;
  v6 = type metadata accessor for Track();
  v37 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Playlist();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v32 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v36 = v4;
    v21 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v20 + v21, &v41, &unk_1011926C0);
    if (v42 == 1)
    {

      sub_1000095E8(&v41, &unk_1011926C0);
    }

    else
    {
      v22 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v41, &unk_1011926C0);
      if (v22)
      {
        v35 = a1;
        v23 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
        swift_beginAccess();
        sub_1000089F8(v20 + v23, v11, &unk_1011814D0);
        if ((*(v13 + 48))(v11, 1, v12) == 1)
        {

          sub_1000095E8(v11, &unk_1011814D0);
        }

        else
        {
          (*(v13 + 32))(v18, v11, v12);
          v24 = v38;
          (*(v37 + 2))(v8, v38, v6);
          v25 = *(v13 + 16);
          v37 = v18;
          v25(v16, v18, v12);
          type metadata accessor for PlaylistEntryData();
          swift_allocObject();
          v34 = sub_10026AB50(v8, v16);
          v26 = v22;
          v27 = [v26 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v28 = MusicLibrary.state<A>(for:)();

          v33 = v12;
          if (qword_10117F5F8 != -1)
          {
            swift_once();
          }

          v38 = Player.state<A>(for:)(v24);
          v29 = __chkstk_darwin(v38);
          *(&v32 - 4) = v34;
          *(&v32 - 3) = v28;
          *(&v32 - 2) = v29;
          *(&v32 - 1) = v26;
          sub_10010FC20(&qword_1011A4AD0);
          v32 = v28;
          sub_100020674(&qword_1011A4AD8, &qword_1011A4AD0);
          v30 = v39;
          UIHostingConfiguration<>.init(content:)();
          static Edge.Set.all.getter();
          v31 = v36;
          v43 = v36;
          v44 = sub_100020674(&unk_1011A4AE0, &qword_1011A4AC8);
          sub_10001C8B8(&v41);
          UIHostingConfiguration.margins(_:_:)();
          (*(v40 + 8))(v30, v31);
          UICollectionViewCell.contentConfiguration.setter();

          (*(v13 + 8))(v37, v33);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10080D1F0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1006A6078();
  v10 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v11 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v12 = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v12[9] = *&v2[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  type metadata accessor for PlaylistEntryData();
  sub_100866F00(&qword_101187EA8, type metadata accessor for PlaylistEntryData);

  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;

  sub_10010FC20(&unk_10118A5F0);
  sub_100020674(&qword_101192B40, &unk_10118A5F0);
  *(a1 + 24) = ObservedObject.init(wrappedValue:)();
  *(a1 + 32) = v4;

  sub_10010FC20(&qword_10118A600);
  sub_100020674(&qword_10118A608, &qword_10118A600);
  *(a1 + 40) = ObservedObject.init(wrappedValue:)();
  *(a1 + 48) = v5;
  *(a1 + 56) = 0;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
  *(a1 + 96) = *v12;
  *(a1 + 105) = *&v12[9];
  v6 = sub_10010FC20(&qword_1011A4AD0);
  v7 = *(v6 + 80);
  *(a1 + v7) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v8 = *(v6 + 84);
  *(a1 + v8) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080D440@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011A4AB0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___noContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011A4AB0);
  v10 = sub_10010FC20(&qword_1011A4520);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &unk_1011A4AB0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  sub_100009F78(0, &unk_101184790);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &unk_1011A4AB0);
  return swift_endAccess();
}

uint64_t sub_10080D69C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = sub_10010FC20(&unk_101192AA0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-v6];
  v8 = *(a3 + 2);
  v11 = *a3;
  v12 = v8;
  type metadata accessor for NoContentCell(0);
  sub_100866F00(&qword_1011A4AC0, type metadata accessor for NoContentCell);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v13[3] = v4;
  v13[4] = sub_100020674(&unk_101192AB0, &unk_101192AA0);
  sub_10001C8B8(v13);
  UIHostingConfiguration.margins(_:_:)();
  (*(v5 + 8))(v7, v4);
  return UICollectionViewCell.contentConfiguration.setter();
}

unint64_t sub_10080D858@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  v6 = *(type metadata accessor for NoContentCell(0) + 20);
  *(a4 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();

  return sub_1004EA174(a1);
}

uint64_t sub_10080D8F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4A68);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___emptyTrackCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4A68);
  v10 = sub_10010FC20(&qword_1011A4530);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4A68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for ContainerDetail.ViewController(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4A68);
  return swift_endAccess();
}

void sub_10080DB70(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10010FC20(&qword_1011A4A90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - v6;
  v8 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (__OFSUB__(sub_100849C78(), 1))
    {
      __break(1u);
    }

    else
    {
      v11 = IndexPath.item.getter();
      __chkstk_darwin(v11);
      LOBYTE(v13[-2]) = v12;
      v13[-1] = v8;
      type metadata accessor for Tracklist.EmptyCell(0);
      sub_100866F00(&qword_1011A4A98, type metadata accessor for Tracklist.EmptyCell);
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.all.getter();
      v13[3] = v4;
      v13[4] = sub_100020674(&unk_1011A4AA0, &qword_1011A4A90);
      sub_10001C8B8(v13);
      UIHostingConfiguration.margins(_:_:)();
      (*(v5 + 8))(v7, v4);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_10080DDB0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1006A6078();
  v9 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics];
  v10 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];
  *v11 = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];
  *&v11[9] = *&v4[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 41];

  *a2 = a1;
  *(a2 + 8) = v9;
  *(a2 + 24) = v10;
  *(a2 + 40) = *v11;
  *(a2 + 49) = *&v11[9];
  v5 = type metadata accessor for Tracklist.EmptyCell(0);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  ScaledMetric.init(wrappedValue:)();
  v6 = *(v5 + 40);
  *(a2 + v6) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v7 = *(v5 + 44);
  *(a2 + v7) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080DF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4A68);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___addMusicCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4A68);
  v10 = sub_10010FC20(&qword_1011A4530);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4A68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for ContainerDetail.ViewController(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4A68);
  return swift_endAccess();
}

void sub_10080E1C4(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = sub_10010FC20(&qword_1011A4A70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - v6;
  v8 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [v8 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 6)
    {
      if (qword_10117FB98 != -1)
      {
        swift_once();
      }

      v13 = *&qword_101219330;
    }

    else
    {
      v14 = sub_1006A6078();
      v15 = *&v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16];

      if (qword_10117FB98 != -1)
      {
        swift_once();
      }

      v13 = v15 + *&qword_101219330;
    }

    v16 = sub_1006A6078();
    v17 = *&v16[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

    __chkstk_darwin(v18);
    *&v22[-2] = v13;
    v22[-1] = v17;
    _s12AddMusicCellVMa();
    sub_100866F00(&qword_1011A4A78, _s12AddMusicCellVMa);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v22[3] = v4;
    v22[4] = sub_100020674(&unk_1011A4A80, &qword_1011A4A70);
    sub_10001C8B8(v22);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
    v19 = AccessibilityIdentifier.playlistAddMusicCell.unsafeMutableAddressor();
    v20 = *v19;
    v21 = v19[1];
    sub_100009F78(0, &unk_101184790);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v20, v21);
  }
}

uint64_t sub_10080E50C@<X0>(double *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  a1[1] = a3;
  v4 = _s12AddMusicCellVMa();
  v5 = *(v4 + 24);
  *(a1 + v5) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v6 = *(v4 + 28);
  *(a1 + v6) = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10080E5C0()
{
  v0 = sub_10010FC20(&qword_101192A78);
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v10[-1] - v5;
  sub_1004EA114();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  UIHostingConfiguration.margins(_:_:)();
  v7 = *(v1 + 8);
  v7(v4, v0);
  v10[3] = v0;
  v10[4] = sub_100020674(&qword_101192A88, &qword_101192A78);
  sub_10001C8B8(v10);
  UIHostingConfiguration.animatedSizeInvalidationDisabled()();
  v7(v6, v0);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10080E784@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_1011A4A30);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___suggestedSongsCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_1011A4A30);
  v10 = sub_10010FC20(&unk_1011A4550);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_1011A4A30);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790);
  type metadata accessor for SuggestedSongsDataSource(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_1011A4A30);
  return swift_endAccess();
}

void sub_10080E9FC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10010FC20(&qword_1011A4A38);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *&Strong[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel];
    if (v14)
    {
      v15 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(&v13[v15], &v31, &unk_1011926C0);
      if (v32)
      {

        sub_1000095E8(&v31, &unk_1011926C0);
      }

      else
      {
        v16 = swift_unknownObjectWeakLoadStrong();

        sub_1000095E8(&v31, &unk_1011926C0);
        if (v16)
        {
          v17 = *&v13[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController];
          if (v17)
          {
            v18 = v17;
            v29 = v16;
            v30 = v18;
            v19 = sub_1006A6078();
            v20 = *&v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

            swift_getKeyPath();
            swift_getKeyPath();
            v31 = v20;

            v21 = static Published.subscript.setter();
            v28 = &v28;
            __chkstk_darwin(v21);
            *(&v28 - 4) = v14;
            *(&v28 - 3) = v11;
            *(&v28 - 2) = v30;
            sub_10010FC20(&qword_1011A4A40);
            v22 = type metadata accessor for SuggestedSongsModule(255);
            v23 = sub_100866F00(&qword_1011A4A48, type metadata accessor for SuggestedSongsModule);
            v31 = v22;
            v32 = v23;
            swift_getOpaqueTypeConformance2();
            UIHostingConfiguration<>.init(content:)();
            static Edge.Set.all.getter();
            UIHostingConfiguration.margins(_:_:)();
            v24 = *(v5 + 8);
            v24(v8, v4);
            v33 = v4;
            v34 = sub_100020674(&unk_1011A4A50, &qword_1011A4A38);
            sub_10001C8B8(&v31);
            UIHostingConfiguration.animatedSizeInvalidationDisabled()();
            v24(v10, v4);
            UICollectionViewCell.contentConfiguration.setter();
            v25 = AccessibilityIdentifier.playlistSuggestedSongsView.unsafeMutableAddressor();
            v26 = *v25;
            v27 = v25[1];
            sub_100009F78(0, &unk_101184790);

            UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v26, v27);
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

    else
    {
    }
  }
}

uint64_t sub_10080EE50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SuggestedSongsModule(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v6 + *(v4 + 28);
  v15 = 0;
  State.init(wrappedValue:)();
  v8 = v14;
  *v7 = v13[0];
  *(v7 + 1) = v8;
  type metadata accessor for MusicSuggestedSongsViewModel();
  sub_100866F00(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel);

  *v6 = ObservedObject.init(wrappedValue:)();
  v6[1] = v9;
  type metadata accessor for SuggestedSongsDataSource(0);
  sub_100866F00(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource);

  v6[2] = ObservedObject.init(wrappedValue:)();
  v6[3] = v10;
  v11 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_10086772C(a2 + v11, v6 + *(v3 + 24), type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100866F00(&qword_1011A4A48, type metadata accessor for SuggestedSongsModule);

  View.artworkCaching(owner:)();

  return sub_100867794(v6, type metadata accessor for SuggestedSongsModule);
}

uint64_t sub_10080F0D4()
{
  v0 = sub_10010FC20(&qword_101192738);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6[-1] - v2;
  sub_1004E425C();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v6[3] = v0;
  v6[4] = sub_100020674(&qword_101192748, &qword_101192738);
  sub_10001C8B8(v6);
  UIHostingConfiguration.margins(_:_:)();
  (*(v1 + 8))(v3, v0);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_10080F250@<X0>(void (*a1)(void)@<X1>, unint64_t *a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  a1(0);
  sub_100866F00(a2, a3);

  result = ObservedObject.init(wrappedValue:)();
  *a4 = result;
  a4[1] = v8;
  return result;
}

uint64_t sub_10080F2CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101192A20);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___symphonyRelatedContentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &qword_101192A20);
  v10 = sub_10010FC20(&unk_1011A4560);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1000095E8(v8, &qword_101192A20);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750);
  type metadata accessor for RelatedContentProvider.Item();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_10006B010(v6, v1 + v9, &qword_101192A20);
  return swift_endAccess();
}

void sub_10080F544(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_10010FC20(&qword_101192A28);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v10[v11], &v26, &unk_1011926C0);
    if (v27 == 1)
    {

      sub_1000095E8(&v26, &unk_1011926C0);
      return;
    }

    v12 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v26, &unk_1011926C0);
    if (v12)
    {
      v13 = v12;
      v14 = sub_10003169C();

      if (v14)
      {
        v15 = *(v14[3] + 16);
        if (v15)
        {
          v16 = [v15 selectedTab];
          if (!v16 || (v24 = v16, v17 = sub_10003F0FC(), v25 = v14, v24, v17 == 7))
          {
            v17 = 1;
          }

          v18 = sub_1006BD694(v17);
          if (v18)
          {
            if (*&v10[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController])
            {
              v23 = &v23;
              v19 = __chkstk_darwin(v18);
              *(&v23 - 4) = v8;
              *(&v23 - 3) = v19;
              *(&v23 - 2) = v13;
              *(&v23 - 1) = v20;
              v25 = v19;
              v24 = v20;
              sub_10010FC20(&qword_101192A30);
              v21 = type metadata accessor for RelatedContentView();
              v22 = sub_100866F00(&qword_101192A38, &type metadata accessor for RelatedContentView);
              v26 = v21;
              v27 = v22;
              swift_getOpaqueTypeConformance2();
              UIHostingConfiguration<>.init(content:)();
              static Edge.Set.all.getter();
              v28 = v4;
              v29 = sub_100020674(&unk_101192A40, &qword_101192A28);
              sub_10001C8B8(&v26);
              UIHostingConfiguration.margins(_:_:)();
              (*(v5 + 8))(v7, v4);
              UICollectionViewCell.contentConfiguration.setter();

              return;
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

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10080F940()
{
  v0 = type metadata accessor for RelatedContentView();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  v4 = sub_1006A6078();
  v5 = type metadata accessor for HIMetricsCollectionView();
  v15.receiver = v4;
  v15.super_class = v5;
  objc_msgSendSuper2(&v15, "frame");
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  CGRectGetWidth(v16);
  RelatedContentView.init(item:stackAuthority:shelfWidth:)();
  sub_100866F00(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100866F00(&qword_101192A38, &type metadata accessor for RelatedContentView);

  View.artworkCaching(owner:)();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10080FBAC(uint64_t a1, uint64_t a2)
{
  v111 = a1;
  v92 = sub_10010FC20(&unk_1011A4560);
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v108 = &v81 - v4;
  v81 = sub_10010FC20(&unk_101192A10);
  v94 = *(v81 - 8);
  __chkstk_darwin(v81);
  v93 = &v81 - v5;
  v6 = sub_10010FC20(&unk_1011A4550);
  v106 = *(v6 - 8);
  v107 = v6;
  __chkstk_darwin(v6);
  v105 = &v81 - v7;
  v8 = sub_10010FC20(&qword_1011A4520);
  v103 = *(v8 - 8);
  v104 = v8;
  __chkstk_darwin(v8);
  v102 = &v81 - v9;
  v10 = sub_10010FC20(&qword_10118A530);
  __chkstk_darwin(v10 - 8);
  v101 = &v81 - v11;
  v12 = sub_10010FC20(&unk_1011A4510);
  v99 = *(v12 - 8);
  v100 = v12;
  __chkstk_darwin(v12);
  v98 = &v81 - v13;
  v14 = sub_10010FC20(&qword_1011A4530);
  v109 = *(v14 - 8);
  v110 = v14;
  __chkstk_darwin(v14);
  v97 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v90 = &v81 - v17;
  v89 = sub_10010FC20(&unk_1011A4500);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v81 - v18;
  v19 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v19 - 8);
  v85 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v81 - v22;
  v96 = type metadata accessor for Playlist.Entry();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v86 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_1011A44F0);
  v83 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  v28 = sub_10010FC20(&qword_1011A44E0);
  v82 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v81 - v29;
  v31 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v31 - 8);
  v33 = &v81 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v84 = &v81 - v35;
  v36 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v37 = IndexPath.section.getter();
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_49;
  }

  if (v37 >= *(v36 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = *(v36 + v37 + 32);
  if (v38 > 4)
  {
    if (*(v36 + v37 + 32) <= 6u)
    {
      if (v38 != 5)
      {
        *&v114 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_tracklistFooterViewModel);
        sub_100009F78(0, &unk_101184790);
        type metadata accessor for TracklistFooter.ViewModel(0);

        v40 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

        return v40;
      }

      v41 = v97;
      sub_10080DF4C(v97);
      v42 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      v43 = v2 + v42;
LABEL_19:
      sub_1000089F8(v43, &v112, &unk_1011926C0);
      Strong = 0;
      if ((v113 & 1) == 0)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
      }

      sub_1000095E8(&v112, &unk_1011926C0);
      v40 = sub_1007FF120(v41, a2, Strong);

      v46 = v109;
      v45 = v110;
      goto LABEL_22;
    }

    if (v38 == 9)
    {
      v41 = v105;
      sub_10080E784(v105);
      *&v114 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
      sub_100009F78(0, &unk_101184790);
      type metadata accessor for SuggestedSongsDataSource(0);

      v40 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

      v46 = v106;
      v45 = v107;
LABEL_22:
      (*(v46 + 8))(v41, v45);
      return v40;
    }

    if (v38 != 10)
    {
      goto LABEL_51;
    }

    v55 = IndexPath.item.getter();
    v56 = v108;
    if (v55)
    {
      sub_10080F2CC(v108);
      v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v57, &v112, &unk_1011926C0);
      if (v113)
      {
        sub_1000095E8(&v112, &unk_1011926C0);
LABEL_38:
        v75 = 0;
        goto LABEL_39;
      }

      v72 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v112, &unk_1011926C0);
      if (!v72)
      {
        goto LABEL_38;
      }

      v73 = sub_1006A3A7C();

      if (!v73)
      {
        goto LABEL_38;
      }

      if (!__OFSUB__(IndexPath.item.getter(), 1))
      {
        v74 = type metadata accessor for RelatedContentProvider.Item();
        Array.subscript.getter(v74, &v112);

        v75 = v112;
LABEL_39:
        v40 = sub_1007FBAE4(v56, a2, v75, &type metadata accessor for RelatedContentProvider.Item);

        (*(v91 + 8))(v56, v92);
        return v40;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v70 = v81;
    (*(v94 + 16))(v93, v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_symphonyRelatedContentSpacingCellRegistration, v81);
    v71 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v71, &v112, &unk_1011926C0);
    if (v113)
    {
      sub_1000095E8(&v112, &unk_1011926C0);
    }

    else
    {
      v77 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v112, &unk_1011926C0);
      if (v77)
      {
        v78 = sub_1006A3864();

LABEL_46:
        v79 = v93;
        v40 = sub_1007FBAE4(v93, a2, v78, type metadata accessor for RelatedContentSpacing.Data);

        (*(v94 + 8))(v79, v70);
        return v40;
      }
    }

    v78 = 0;
    goto LABEL_46;
  }

  if (*(v36 + v37 + 32) > 2u)
  {
    if (v38 != 3)
    {
      v51 = v102;
      sub_10080D440(v102);
      v52 = sub_10084AF0C();
      v40 = sub_1007FB728(v51, a2, v52, v53, v54);
      sub_1004E5B40(v52);
      (*(v103 + 8))(v51, v104);
      return v40;
    }

    v41 = v98;
    sub_10080C92C(v98);
    v44 = v101;
    sub_100859B24(v101);
    sub_100009F78(0, &unk_101184790);
    type metadata accessor for Track();
    v40 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    sub_1000095E8(v44, &qword_10118A530);
    v46 = v99;
    v45 = v100;
    goto LABEL_22;
  }

  if (*(v36 + v37 + 32))
  {
    if (v38 != 2)
    {
      goto LABEL_51;
    }

    sub_10085939C(v23);
    v47 = v95;
    v48 = v96;
    if ((*(v95 + 48))(v23, 1, v96) != 1)
    {
      v64 = v86;
      (*(v47 + 32))(v86, v23, v48);
      v65 = v87;
      sub_10080ACDC(v87);
      v66 = *(v47 + 16);
      v67 = v85;
      v66(v85, v64, v48);
      (*(v47 + 56))(v67, 0, 1, v48);
      _s13TracklistCellCMa();
      v68 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      sub_1000095E8(v67, &qword_101191570);
      (*(v88 + 8))(v65, v89);
      *(&v115 + 1) = v48;
      v116 = &protocol witness table for Playlist.Entry;
      v69 = sub_10001C8B8(&v114);
      v66(v69, v64, v48);
      v40 = sub_1004F24B0(&v114);

      (*(v47 + 8))(v64, v48);
      goto LABEL_42;
    }

    sub_1000095E8(v23, &qword_101191570);
    v41 = v90;
    sub_10080D8F8(v90);
    v49 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    v43 = v2 + v49;
    goto LABEL_19;
  }

  v39 = sub_100840F90();
  if (v39 != 2)
  {
    if (v39)
    {
      sub_10080A8B0(v27);
      LOBYTE(v114) = 0;
      _s10HeaderCellCMa();
      v40 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
      (*(v83 + 8))(v27, v25);
      return v40;
    }

    v58 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v59 = v2 + v58;
    v60 = v84;
    sub_1000089F8(v59, v84, &unk_1011814D0);
    sub_100809DE4(v30);
    v61 = sub_1007FC938(v30, a2, v60, &unk_1011814D0, &unk_100EC12A0, &type metadata accessor for Playlist, _s10HeaderCellCMa);
    (*(v82 + 8))(v30, v28);
    sub_1000089F8(v60, v33, &unk_1011814D0);
    v62 = type metadata accessor for Playlist();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v33, 1, v62) == 1)
    {
      sub_1000095E8(v33, &unk_1011814D0);
      v114 = 0u;
      v115 = 0u;
      v116 = 0;
    }

    else
    {
      *(&v115 + 1) = v62;
      v116 = &protocol witness table for Playlist;
      v76 = sub_10001C8B8(&v114);
      (*(v63 + 32))(v76, v33, v62);
    }

    v40 = sub_1004F24B0(&v114);

    sub_1000095E8(v60, &unk_1011814D0);
LABEL_42:
    sub_1000095E8(&v114, &qword_1011A3DD0);
    return v40;
  }

LABEL_51:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100810DCC(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = sub_100868730();

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_100810ECC(char *a1)
{
  v219 = a1;
  v204 = type metadata accessor for PlaybackIntentDescriptor(0);
  v206 = *(v204 - 8);
  __chkstk_darwin(v204);
  v208 = v1;
  v209 = &v190 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v207 = &v190 - v3;
  v4 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v4 - 8);
  v210 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v205 = &v190 - v7;
  v8 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v8 - 8);
  v202 = (&v190 - v9);
  v10 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v10 - 8);
  v216 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v215 = &v190 - v13;
  v14 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v14 - 8);
  *&v214 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v203 = &v190 - v17;
  v18 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v18 - 8);
  v194 = &v190 - v19;
  v197 = type metadata accessor for Playlist.Variant();
  v200 = *(v197 - 8);
  __chkstk_darwin(v197);
  v192 = &v190 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v195);
  v196 = &v190 - v21;
  v22 = type metadata accessor for Playlist();
  v217 = *(v22 - 8);
  v218 = v22;
  __chkstk_darwin(v22);
  v211 = &v190 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v24 - 8);
  v193 = &v190 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v198 = &v190 - v27;
  __chkstk_darwin(v28);
  v199 = &v190 - v29;
  v30 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v30 - 8);
  v32 = &v190 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v190 - v34;
  v36 = type metadata accessor for Playlist.Entry();
  v212 = *(v36 - 8);
  __chkstk_darwin(v36);
  v38 = &v190 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v39 - 8);
  v201 = &v190 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v213 = &v190 - v42;
  __chkstk_darwin(v43);
  v45 = &v190 - v44;
  __chkstk_darwin(v46);
  v48 = &v190 - v47;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v219 deselectItemAtIndexPath:isa animated:1];

  v50 = v220;
  IndexPath.section.getter();
  v51 = *(v50 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  Array.subscript.getter(&type metadata for ContainerDetail.Section, v224);
  if (v224[0] <= 2u)
  {
    v219 = v35;
    v213 = v45;
    *&v214 = v51;
    v216 = v32;
    v191 = v38;
    if (!v224[0])
    {
      return;
    }

    if (v224[0] != 2)
    {
LABEL_74:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v50 + v52, v48, &unk_1011814D0);
    v53 = *(v217 + 48);
    v54 = v53(v48, 1, v218);
    sub_1000095E8(v48, &unk_1011814D0);
    v55 = v220;
    if (v54 == 1)
    {
      return;
    }

    v56 = v219;
    sub_10085939C(v219);
    v57 = v212;
    v58 = v36;
    if ((*(v212 + 48))(v56, 1, v36) == 1)
    {
      v59 = &qword_101191570;
      v60 = v56;
      goto LABEL_32;
    }

    v190 = v53;
    v201 = v52;
    (*(v57 + 32))(v191, v56, v36);
    v100 = (v55 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID);
    v101 = *(v55 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentEntryID + 8);
    *v100 = 0;
    v100[1] = 0;
    if (v101)
    {
      sub_100842788();
    }

    v102 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching;
    if ((*(v55 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) == 0)
    {
      goto LABEL_67;
    }

    v103 = sub_100853B54();
    v104 = UISearchController.searchText.getter();
    v106 = v105;

    if (!v106)
    {
      goto LABEL_67;
    }

    v107 = HIBYTE(v106) & 0xF;
    if ((v106 & 0x2000000000000000) == 0)
    {
      v107 = v104 & 0xFFFFFFFFFFFFLL;
    }

    if (!v107)
    {
      goto LABEL_67;
    }

    v108 = v220;
    *(v220 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeHighlightLeavingSearch) = 1;
    v109 = *(v108 + v102);
    *(v108 + v102) = 0;
    sub_100853E70(v109);
    [*(v108 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___searchController) setActive:0];
    v110 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v108 + v110, v223, &unk_1011926C0);
    if (v223[8])
    {
      sub_1000095E8(v223, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v223, &unk_1011926C0);
      if (Strong)
      {
        Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
      }
    }

    v113 = Playlist.Entry.id.getter();
    v114 = *v100;
    v115 = v100[1];
    *v100 = v113;
    v100[1] = v112;
    v116 = v214;
    if (!v115 || (v114 != v113 || v115 != v112) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_100842788();
    }

    v117 = *(v116 + 16);
    if (!v117)
    {
LABEL_67:
      v219 = *MetricsReportingController.shared.unsafeMutableAddressor();
      v139 = MusicItem.metricsTargetIdentifier.getter(v58);
      v217 = v140;
      v218 = v139;
      v141 = type metadata accessor for URL();
      (*(*(v141 - 8) + 56))(v215, 1, 1, v141);
      sub_10010FC20(&unk_1011927C0);
      v142 = swift_allocObject();
      v214 = xmmword_100EBC6B0;
      *(v142 + 16) = xmmword_100EBC6B0;
      sub_10010FC20(&unk_1011972C0);
      v143 = v58;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBEF50;
      *(inited + 32) = 25705;
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = MusicItem.metricsTargetIdentifier.getter(v143);
      *(inited + 56) = v145;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0xD000000000000010;
      *(inited + 88) = 0x8000000100E4E2D0;
      *(inited + 96) = Playlist.Entry.position.getter();
      *(inited + 120) = &type metadata for Int;
      *(inited + 128) = 1684957547;
      *(inited + 136) = 0xE400000000000000;
      *(inited + 144) = MusicItem.metricsContentType.getter(v143);
      *(inited + 152) = v146;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 1701667182;
      *(inited + 184) = 0xE400000000000000;
      v147 = Playlist.Entry.title.getter();
      *(inited + 216) = &type metadata for String;
      *(inited + 192) = v147;
      *(inited + 200) = v148;
      v149 = sub_10010BC60(inited);
      swift_setDeallocating();
      sub_10010FC20(&unk_1011927D0);
      swift_arrayDestroy();
      *(v142 + 32) = v149;
      sub_10010FC20(&qword_10118BE78);
      v150 = swift_initStackObject();
      *(v150 + 16) = v214;
      *(v150 + 32) = MusicItem.metricsContentType.getter(v143);
      *(v150 + 40) = v151;
      *(v150 + 48) = 0;
      v152 = MetricsEvent.Click.ActionDetails.init(_:)(v150);
      v154 = v153;
      v156 = v155;
      v158 = v157;
      v159 = v202;
      sub_100859CF8(v202);
      *(&v188 + 1) = v154;
      v189 = v156;
      *&v188 = v152;
      v160 = v203;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v218, v217, 18, 31, v215, v142, 0, 5, v203, v188, v189, v158, v159, 0);
      v161 = sub_10053771C();
      v163 = v162;
      if (qword_10117F600 != -1)
      {
        swift_once();
      }

      v164 = qword_101218AD0;
      v165 = GroupActivitiesManager.hasJoined.getter();
      v166 = GroupActivitiesManager.participantsCount.getter();
      v167 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
      swift_beginAccess();
      v168 = *(v164 + v167);
      v169 = v219;
      (*((swift_isaMask & *v219) + 0xB8))(v160, v161, v163, v165 & 1, v166, v168);

      sub_100867794(v160, type metadata accessor for MetricsEvent.Click);
      v170 = v212;
      v171 = v216;
      (*(v212 + 16))(v216, v191, v143);
      (*(v170 + 56))(v171, 0, 1, v143);
      v172 = v205;
      sub_100854F30(v171, v205);
      sub_1000095E8(v171, &qword_101191570);
      v173 = v210;
      sub_1000089F8(v172, v210, &qword_1011848A0);
      v174 = v206;
      v175 = (*(v206 + 48))(v173, 1, v204);
      v176 = v209;
      v177 = v207;
      v220 = v143;
      if (v175 != 1)
      {
        v178 = type metadata accessor for TaskPriority();
        (*(*(v178 - 8) + 56))(v177, 1, 1, v178);
        sub_10086772C(v173, v176, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v179 = static MainActor.shared.getter();
        v180 = (*(v174 + 80) + 32) & ~*(v174 + 80);
        v181 = swift_allocObject();
        *(v181 + 16) = v179;
        *(v181 + 24) = &protocol witness table for MainActor;
        sub_100869470(v176, v181 + v180, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v177, &unk_100ECA700, v181);

        sub_1000095E8(v172, &qword_1011848A0);
        (*(v170 + 8))(v191, v220);
        sub_100867794(v173, type metadata accessor for PlaybackIntentDescriptor);
        return;
      }

      sub_1000095E8(v172, &qword_1011848A0);
      (*(v170 + 8))(v191, v220);
      v60 = v173;
      v59 = &qword_1011848A0;
LABEL_32:
      sub_1000095E8(v60, v59);
      return;
    }

    v118 = 0;
    while (*(v214 + 32 + v118) != 2)
    {
      if (v117 == ++v118)
      {
        goto LABEL_67;
      }
    }

    v119 = v213;
    sub_1000089F8(v220 + v201, v213, &unk_1011814D0);
    v120 = v218;
    if (v190(v119, 1, v218))
    {
      sub_1000095E8(v119, &unk_1011814D0);
      v122 = v199;
      v121 = v200;
      v123 = v197;
      (*(v200 + 56))(v199, 1, 1, v197);
      v124 = v196;
    }

    else
    {
      v125 = v217;
      v126 = v211;
      (*(v217 + 16))(v211, v119, v120);
      sub_1000095E8(v119, &unk_1011814D0);
      v122 = v199;
      Playlist.variant.getter();
      (*(v125 + 8))(v126, v120);
      v124 = v196;
      v123 = v197;
      v121 = v200;
    }

    v127 = v198;
    (*(v121 + 104))(v198, enum case for Playlist.Variant.smart(_:), v123);
    (*(v121 + 56))(v127, 0, 1, v123);
    v128 = *(v195 + 48);
    sub_1000089F8(v122, v124, &unk_10119EF50);
    v219 = v128;
    v129 = &v128[v124];
    v130 = v123;
    sub_1000089F8(v127, v129, &unk_10119EF50);
    v131 = v122;
    v132 = *(v121 + 48);
    if (v132(v124, 1, v130) == 1)
    {
      sub_1000095E8(v127, &unk_10119EF50);
      sub_1000095E8(v131, &unk_10119EF50);
      if (v132(&v219[v124], 1, v130) == 1)
      {
        sub_1000095E8(v124, &unk_10119EF50);
        goto LABEL_67;
      }
    }

    else
    {
      v133 = v193;
      sub_1000089F8(v124, v193, &unk_10119EF50);
      v134 = v219;
      if (v132(&v219[v124], 1, v130) != 1)
      {
        v182 = v200;
        v183 = &v134[v124];
        v184 = v192;
        (*(v200 + 32))(v192, v183, v130);
        sub_100866F00(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
        v185 = dispatch thunk of static Equatable.== infix(_:_:)();
        v186 = *(v182 + 8);
        v186(v184, v130);
        sub_1000095E8(v198, &unk_10119EF50);
        sub_1000095E8(v199, &unk_10119EF50);
        v186(v193, v130);
        sub_1000095E8(v124, &unk_10119EF50);
        v135 = v194;
        if (v185)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

      sub_1000095E8(v198, &unk_10119EF50);
      sub_1000095E8(v199, &unk_10119EF50);
      (*(v200 + 8))(v133, v130);
    }

    sub_1000095E8(v124, &unk_1011A4670);
    v135 = v194;
LABEL_66:
    Playlist.Entry.position.getter();
    IndexPath.init(item:section:)();
    v136 = type metadata accessor for IndexPath();
    (*(*(v136 - 8) + 56))(v135, 0, 1, v136);
    v137 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_opportunisticProminentItemIndexPath;
    v138 = v220;
    swift_beginAccess();
    sub_10006B010(v135, v138 + v137, &unk_10118BCE0);
    swift_endAccess();
    goto LABEL_67;
  }

  if (((1 << v224[0]) & 0xE58) != 0)
  {
    return;
  }

  if (v224[0] != 5)
  {
    goto LABEL_74;
  }

  v61 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v62 = type metadata accessor for URL();
  v63 = *(*(v62 - 8) + 56);
  v63(v216, 1, 1, v62);
  v64 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v219 = v64;
  v65 = &v64[v50];
  v66 = v213;
  sub_1000089F8(v65, v213, &unk_1011814D0);
  v68 = v217;
  v67 = v218;
  if ((*(v217 + 48))(v66, 1, v218))
  {
    v69 = v61;
    sub_1000095E8(v66, &unk_1011814D0);
    v70 = 0;
    v71 = 0xE000000000000000;
  }

  else
  {
    v72 = v211;
    (*(v68 + 16))(v211, v66, v67);
    v73 = v61;
    sub_1000095E8(v66, &unk_1011814D0);
    v70 = Playlist.id.getter();
    v71 = v74;
    (*(v68 + 8))(v72, v67);
  }

  v75 = v215;
  v63(v215, 1, 1, v62);
  v187 = v75;
  v76 = v214;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0x636973754D646461, 0xE800000000000000, 5, 44, v216, 0, 0, 12, v214, 0, 0, 65280, v70, v71, 0x7473696C79616C50, 0xE800000000000000, v187, 0, 1, 2, 0, 0, 0);
  v77 = sub_10053771C();
  v79 = v78;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v80 = qword_101218AD0;
  v81 = GroupActivitiesManager.hasJoined.getter();
  v82 = GroupActivitiesManager.participantsCount.getter();
  v83 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v61) + 0xB8))(v76, v77, v79, v81 & 1, v82, *(v80 + v83));

  sub_100867794(v76, type metadata accessor for MetricsEvent.Click);
  v84 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  v85 = v220;
  swift_beginAccess();
  sub_1000089F8(v85 + v84, &v221, &unk_1011926C0);
  if (v222)
  {
    sub_1000095E8(&v221, &unk_1011926C0);
  }

  else
  {
    v86 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v221, &unk_1011926C0);
    if (v86)
    {
      v87 = *&v86[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v87)
      {
        v88 = v201;
        sub_1000089F8(&v219[v85], v201, &unk_1011814D0);
        v89 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
        swift_beginAccess();
        sub_10006B010(v88, v87 + v89, &unk_1011814D0);
        swift_endAccess();
      }
    }
  }

  sub_1000089F8(v85 + v84, &v221, &unk_1011926C0);
  if (v222)
  {
    sub_1000095E8(&v221, &unk_1011926C0);
  }

  else
  {
    v90 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v221, &unk_1011926C0);
    if (v90)
    {
      v91 = *&v90[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v91)
      {
        v92 = *(v85 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsViewModel);
        swift_getKeyPath();
        swift_getKeyPath();
        v221 = v92;

        static Published.subscript.setter();
      }
    }
  }

  sub_1000089F8(v85 + v84, &v221, &unk_1011926C0);
  if (v222)
  {
    sub_1000095E8(&v221, &unk_1011926C0);
  }

  else
  {
    v93 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v221, &unk_1011926C0);
    if (v93)
    {
      v94 = *&v93[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

      if (v94)
      {
        v95 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v96 = (v94 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
        v97 = *(v94 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
        *v96 = &unk_100EE52A0;
        v96[1] = v95;

        sub_100020438(v97);
      }
    }
  }

  sub_1000089F8(v85 + v84, &v221, &unk_1011926C0);
  if (v222)
  {
    v59 = &unk_1011926C0;
    v60 = &v221;
    goto LABEL_32;
  }

  v98 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v221, &unk_1011926C0);
  if (v98)
  {
    v99 = *&v98[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource];

    if (v99)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v221) = 1;
      static Published.subscript.setter();
    }
  }
}

uint64_t sub_1008129AC(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  sub_10010FC20(&unk_1011814D0);
  v2[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_100812A7C, v4, v3);
}

uint64_t sub_100812A7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    v3 = v0[13];
    if (v2)
    {
      v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      v5 = v2;
      swift_beginAccess();
      sub_1000089F8(v5 + v4, v3, &unk_1011814D0);
    }

    else
    {
      v8 = type metadata accessor for Playlist();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    }

    v9 = swift_task_alloc();
    v0[18] = v9;
    *v9 = v0;
    v9[1] = sub_100812C34;
    v10 = v0[13];
    v11 = v0[11];

    return sub_10084C8A0(v11, v10);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100812C34()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 104);

  sub_1000095E8(v3, &unk_1011814D0);
  v4 = *(v1 + 128);
  v5 = *(v1 + 120);

  return _swift_task_switch(sub_100812DA0, v5, v4);
}

uint64_t sub_100812DA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100812FE8(uint64_t a1, uint64_t a2, char *a3)
{
  v59 = a3;
  v62 = a2;
  v65 = type metadata accessor for MusicVideo();
  v58 = *(v65 - 1);
  __chkstk_darwin(v65);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v3;
  __chkstk_darwin(v5);
  v7 = &v52 - v6;
  v60 = type metadata accessor for MusicPropertySource();
  v64 = *(v60 - 8);
  __chkstk_darwin(v60);
  v61 = v8;
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v11 = &v52 - v10;
  v56 = type metadata accessor for Song();
  v54 = *(v56 - 1);
  v12 = *(v54 + 64);
  __chkstk_darwin(v56);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = type metadata accessor for Playlist.Entry.InternalItem();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v21 = (*(v18 + 88))(v20, v17);
  if (v21 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v18 + 96))(v20, v17);
    v22 = v58;
    v56 = *(v58 + 32);
    v53 = v7;
    v23 = v65;
    (v56)(v7, v20, v65);
    v24 = type metadata accessor for TaskPriority();
    v25 = *(*(v24 - 8) + 56);
    v55 = v11;
    v25(v11, 1, 1, v24);
    (*(v22 + 16))(v4, v7, v23);
    v27 = v63;
    v26 = v64;
    v28 = v60;
    (*(v64 + 16))(v63, v59, v60);
    type metadata accessor for MainActor();
    v59 = v4;
    v29 = v62;

    v30 = static MainActor.shared.getter();
    v31 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v32 = (v57 + *(v26 + 80) + v31) & ~*(v26 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = v30;
    *(v33 + 3) = &protocol witness table for MainActor;
    *(v33 + 4) = v29;
    v34 = v65;
    (v56)(&v33[v31], v59, v65);
    (*(v26 + 32))(&v33[v32], v27, v28);
    sub_1001F4CB8(0, 0, v55, &unk_100EE5508, v33);

    return (*(v22 + 8))(v53, v34);
  }

  else
  {
    v36 = v11;
    v37 = v64;
    if (v21 == enum case for Playlist.Entry.InternalItem.song(_:))
    {
      (*(v18 + 96))(v20, v17);
      v38 = v54;
      v65 = *(v54 + 32);
      v39 = v16;
      v40 = v16;
      v52 = v16;
      v41 = v56;
      (v65)(v40, v20, v56);
      v42 = type metadata accessor for TaskPriority();
      v43 = *(*(v42 - 8) + 56);
      v55 = v36;
      v43(v36, 1, 1, v42);
      (*(v38 + 16))(v13, v39, v41);
      v44 = v60;
      (*(v37 + 16))(v63, v59, v60);
      type metadata accessor for MainActor();
      v45 = v62;

      v46 = static MainActor.shared.getter();
      v47 = (*(v38 + 80) + 40) & ~*(v38 + 80);
      v48 = (v12 + *(v37 + 80) + v47) & ~*(v37 + 80);
      v49 = swift_allocObject();
      *(v49 + 2) = v46;
      *(v49 + 3) = &protocol witness table for MainActor;
      *(v49 + 4) = v45;
      v50 = &v49[v47];
      v51 = v56;
      (v65)(v50, v13, v56);
      (*(v37 + 32))(&v49[v48], v63, v44);
      sub_1001F4CB8(0, 0, v55, &unk_100EE5518, v49);

      return (*(v38 + 8))(v52, v51);
    }

    else
    {
      return (*(v18 + 8))(v20, v17);
    }
  }
}

uint64_t sub_1008136B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Track();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_1008137A8, v9, v8);
}

uint64_t sub_1008137A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for Song();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for Track.song(_:), v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1008138D4;
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100138C84(v9, v7, v8, 0);
}

uint64_t sub_1008138D4()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 80);
  v6 = *(v1 + 72);

  return _swift_task_switch(sub_10086E280, v6, v5);
}

uint64_t sub_100813A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for Track();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[9] = v9;
  v6[10] = v8;

  return _swift_task_switch(sub_100813B50, v9, v8);
}

uint64_t sub_100813B50()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = type metadata accessor for MusicVideo();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_100708704;
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[2];

  return sub_100138C84(v9, v7, v8, 0);
}

uint64_t sub_100813D14@<X0>(char *a1@<X8>)
{
  v3 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v47 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v47 - v11;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v18, v56, &unk_1011926C0);
  if (v56[8])
  {
    sub_1000095E8(v56, &unk_1011926C0);
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v56, &unk_1011926C0);
  if (!Strong)
  {
    return (*(v7 + 56))(a1, 1, 1, v6);
  }

  v20 = v1;
  v21 = sub_1006A6078();

  v22 = [v21 indexPathsForVisibleItems];
  v23 = v20;
  v53 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((*(v20 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) & 1) != 0 && *(v20 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingSuggestedSongsSection) == 1)
  {
    v24 = *(v20 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = 0;
      v27 = v24 + 32;
      while (*(v27 + v26) != 9)
      {
        if (v25 == ++v26)
        {
          goto LABEL_19;
        }
      }

      v48 = v20;
      v49 = v5;
      v29 = v17;
      IndexPath.init(item:section:)();
      v30 = 0;
      v31 = *(v53 + 2);
      v50 = v7 + 16;
      v51 = v31;
      v52 = (v7 + 8);
      while (v51 != v30)
      {
        if (v30 >= *(v53 + 2))
        {
          goto LABEL_31;
        }

        v32 = *(v7 + 16);
        v32(v14, &v53[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30++], v6);
        v33 = static IndexPath.== infix(_:_:)();
        v34 = *(v7 + 8);
        v34(v14, v6);
        if (v33)
        {

          v32(a1, v29, v6);
          (*(v7 + 56))(a1, 0, 1, v6);
          return (v34)(v29, v6);
        }
      }

      (*v52)(v29, v6);
      v23 = v48;
      v5 = v49;
    }
  }

LABEL_19:
  v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  sub_1000089F8(v23 + v35, v5, &unk_10118BCE0);
  v36 = (*(v7 + 48))(v5, 1, v6);
  v52 = v6;
  if (v36 == 1)
  {
    sub_1000095E8(v5, &unk_10118BCE0);
LABEL_27:
    v55 = v53;

    sub_10085CCEC(&v55);

    if (*(v55 + 2))
    {
      v46 = v52;
      (*(v7 + 16))(a1, &v55[(*(v7 + 80) + 32) & ~*(v7 + 80)], v52);

      return (*(v7 + 56))(a1, 0, 1, v46);
    }

    else
    {

      return (*(v7 + 56))(a1, 1, 1, v52);
    }
  }

  else
  {
    v51 = a1;
    (*(v7 + 32))(v54, v5, v6);
    v37 = 0;
    v38 = *(v53 + 2);
    while (1)
    {
      if (v38 == v37)
      {
        (*(v7 + 8))(v54, v52);
        a1 = v51;
        goto LABEL_27;
      }

      if (v37 >= *(v53 + 2))
      {
        break;
      }

      v39 = *(v7 + 16);
      v40 = v52;
      v39(v9, &v53[((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37++], v52);
      v41 = static IndexPath.== infix(_:_:)();
      v42 = *(v7 + 8);
      v42(v9, v40);
      if (v41)
      {

        v43 = v51;
        v44 = v52;
        v45 = v54;
        v39(v51, v54, v52);
        (*(v7 + 56))(v43, 0, 1, v44);
        return (v42)(v45, v44);
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1008147A0(void *a1, uint64_t a2)
{
  v59 = a1;
  v4 = type metadata accessor for IndexPath();
  __chkstk_darwin(v4);
  __chkstk_darwin(v5);
  v7 = &v56 - v6;
  __chkstk_darwin(v8);
  v71 = &v56 - v9;
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v64 = &v56 - v12;
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - v16;
  v69 = *(a2 + 16);
  v60 = a2;
  v61 = v2;
  v57 = v18;
  v58 = v14;
  v56 = v19;
  if (v69)
  {
    v20 = 0;
    v21 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v22 = *(v21 + 16);
    v24 = *(v14 + 16);
    v23 = v14 + 16;
    v62 = (*(v23 + 64) + 32) & ~*(v23 + 64);
    v67 = a2 + v62;
    v68 = v24;
    v70 = *(v23 + 56);
    v66 = v21;
    v25 = v21 + 32;
    v63 = (v23 + 16);
    v26 = (v23 - 8);
    v65 = _swiftEmptyArrayStorage;
    do
    {
      v27 = v4;
      (v68)(v17, v67 + v70 * v20, v4, v15);
      if (v22)
      {
        v28 = 0;
        while (1)
        {
          if (*(v66 + 16) == v28)
          {
            __break(1u);
            return;
          }

          if (*(v25 + v28) == 2)
          {
            break;
          }

          if (v22 == ++v28)
          {
            goto LABEL_3;
          }
        }

        if (IndexPath.section.getter() != v28)
        {
          goto LABEL_4;
        }

        v29 = *v63;
        (*v63)(v64, v17, v27);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v30 = v65;
        }

        else
        {
          v30 = sub_100499724(0, v65[2] + 1, 1, v65);
        }

        v32 = v30[2];
        v31 = v30[3];
        v33 = (v32 + 1);
        if (v32 >= v31 >> 1)
        {
          v65 = (v32 + 1);
          v35 = sub_100499724(v31 > 1, v32 + 1, 1, v30);
          v33 = v65;
          v30 = v35;
        }

        v30[2] = v33;
        v65 = v30;
        v34 = v30 + v62 + v32 * v70;
        v4 = v27;
        v29(v34, v64, v27);
      }

      else
      {
LABEL_3:
        IndexPath.section.getter();
LABEL_4:
        v4 = v27;
        (*v26)(v17, v27);
      }

      v20 = (v20 + 1);
    }

    while (v20 != v69);
  }

  else
  {
    v65 = _swiftEmptyArrayStorage;
  }

  v36 = v65[2];
  if (v36)
  {
    v37 = v56;
    v38 = v58 + 16;
    v39 = v65 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v69 = *(v58 + 16);
    v69(v71, v39, v4, v15);
    v68 = *(v38 + 56);
    v70 = (v38 - 8);
    v40 = (v38 + 16);
    do
    {
      (v69)(v7, v39, v4);
      v41 = IndexPath.item.getter();
      v42 = IndexPath.item.getter();
      v43 = *v70;
      v44 = v42 < v41;
      if (v42 >= v41)
      {
        v45 = v71;
      }

      else
      {
        v45 = v7;
      }

      if (v44)
      {
        v46 = v71;
      }

      else
      {
        v46 = v7;
      }

      v43(v45, v4);
      v47 = *v40;
      v48 = v46;
      v49 = v71;
      (*v40)(v37, v48, v4);
      v47(v49, v37, v4);
      v39 = &v68[v39];
      --v36;
    }

    while (v36);

    v50 = v49;
    v51 = v57;
    v47(v57, v50, v4);
    v52 = v61;
    sub_1008377B0(v51);
    v43(v51, v4);
  }

  else
  {

    v52 = v61;
  }

  v53 = *(v52 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController);
  v54 = v60;
  if (v53)
  {
    v55 = v53;
    sub_10025E038(v59, v54);
  }
}

void sub_100814CE0(void *a1)
{
  v3 = [a1 isActive];
  v4 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) = v3;
  sub_100853E70(v4);
  if ([a1 isActive])
  {
    v5 = UISearchController.searchText.getter();
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  v7 = (v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  *v7 = v5;
  v7[1] = v6;

  sub_1008531F0();
}

void sub_100814DE8(void *a1)
{
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v3, v5, &unk_1011926C0);
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
      sub_1006A3684(a1);
      sub_10069F9B8();
      sub_100559BC8();
      sub_10055A988();
    }
  }

  sub_10084E514(a1);
}

void sub_100814FF8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a1, v12, &unk_1011926C0);
  sub_1000089F8(v1 + v3, &v14, &unk_1011926C0);
  if (v13)
  {
    if (v15)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1000089F8(v12, v11, &unk_1011926C0);
    if ((v15 & 1) == 0)
    {
      sub_10003D17C(&v14, &v10, &unk_101192780);
      type metadata accessor for ContainerDetail.ViewController(0);
      v9 = static WeakWrapper.== infix(_:_:)();
      sub_1000095E8(&v10, &unk_101192780);
      sub_1000095E8(v11, &unk_101192780);
      sub_1000095E8(v12, &unk_1011926C0);
      if (v9)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_1000095E8(v11, &unk_101192780);
  }

  sub_1000095E8(v12, &unk_101192770);
LABEL_7:
  sub_1000089F8(v1 + v3, v12, &unk_1011926C0);
  if (v13)
  {
LABEL_8:
    sub_1000095E8(v12, &unk_1011926C0);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0);
  if (Strong)
  {
    v5 = sub_1006A6D30();

    sub_100009F78(0, &unk_1011845F0);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v7.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v7, 0, sub_100867724, v6).super.super.isa;

    UIBarButtonItem.primaryActionKind.setter(isa, 1);
  }
}

void *sub_100815288()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v12, &unk_1011926C0);
  if (v12[8] == 1)
  {

    sub_1000095E8(v12, &unk_1011926C0);
    return _swiftEmptyArrayStorage;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0);
  if (!v3)
  {

    return _swiftEmptyArrayStorage;
  }

  v4 = sub_1006A6D30();
  v21 = v4;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  PresentationSource.Position.init(source:permittedArrowDirections:)(&v21, 15, v13);
  v17[0] = v13[0];
  v17[1] = v13[1];
  v18 = v14;
  v19 = v15;
  v20 = v16;
  v5 = v4;
  v6 = v3;
  PresentationSource.init(viewController:position:)(v6, v17, v12);
  v7 = _swiftEmptyArrayStorage;
  v8 = sub_1008213D8(v12, _swiftEmptyArrayStorage);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 children];

    sub_100009F78(0, &qword_10118CDE0);
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = v1;
    v1 = v10;
  }

  sub_10012BA6C(v12);
  return v7;
}

uint64_t sub_10081547C()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___dragDropController);
  v3 = v2;
  if (v2 == 1)
  {
    swift_unknownObjectWeakInit();
    v3 = sub_10081550C();
    swift_unknownObjectWeakDestroy();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1000D9148(v4);
  }

  sub_10000CD8C(v2);
  return v3;
}

uint64_t sub_10081550C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v2, v20, &unk_1011926C0);
  if (v20[8])
  {

    sub_1000095E8(v20, &unk_1011926C0);
    return 0;
  }

  v3 = swift_unknownObjectWeakLoadStrong();

  sub_1000095E8(v20, &unk_1011926C0);
  if (v3)
  {
    v4 = sub_1006A6078();

    v5 = swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v8 = v4;
    v9 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v8;
    v11 = swift_allocObject();

    v12 = swift_unknownObjectWeakLoadStrong();

    swift_unknownObjectWeakInit();
    v13 = v8;

    type metadata accessor for CollectionViewDragDropController(0);
    v3 = swift_allocObject();
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0u;
    *(v3 + 72) = 0u;
    *(v3 + 88) = 1;
    *(v3 + 96) = 0;
    v14 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
    v15 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    (*(*(v15 - 8) + 56))(v3 + v14, 1, 1, v15);
    *(v3 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
    *(v3 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
    *(v3 + 16) = v13;
    *(v3 + 24) = sub_10086AF00;
    *(v3 + 32) = v5;
    *(v3 + 40) = sub_10086AF5C;
    v16 = *(v3 + 56);
    *(v3 + 64) = 0;
    *(v3 + 48) = v10;
    *(v3 + 56) = 0;
    v17 = v13;

    sub_100020438(v16);
    v18 = *(v3 + 72);
    *(v3 + 72) = sub_10086AF64;
    *(v3 + 80) = v11;

    sub_100020438(v18);
    sub_100321DD8();
    sub_100322048();
  }

  return v3;
}

uint64_t sub_10081585C()
{
  v0 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  v6 = type metadata accessor for Playlist.Entry();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    IndexPath.section.getter();
    Array.subscript.getter(&type metadata for ContainerDetail.Section, &v16);
    if (v16 == 2)
    {
      sub_10085939C(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v9, v5, v6);
        v12 = sub_100858450(v9, v2);
        v13 = PlaybackIntentDescriptor.intent.getter(v12);
        sub_100867794(v2, type metadata accessor for PlaybackIntentDescriptor);
        v14 = sub_1007991E0(v13, _swiftEmptyArrayStorage);

        (*(v7 + 8))(v9, v6);
        return v14;
      }

      sub_1000095E8(v5, &qword_101191570);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_100815B0C(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination(0);
  v118 = *(v6 - 8);
  v119 = v6;
  __chkstk_darwin(v6);
  v121 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v104 - v9;
  v11 = type metadata accessor for Playlist();
  v12 = *(v11 - 8);
  v122 = v11;
  v123 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v117 = (&v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v120 = &v104 - v15;
  v16 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v16 - 8);
  v18 = &v104 - v17;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v125 = v19;
  v126 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v116 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v104 - v23;
  __chkstk_darwin(v25);
  v124 = &v104 - v26;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v28 = Strong;
  if ([a2 hasActiveDrag])
  {

LABEL_21:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  sub_1000089F8(a1, v18, &unk_10118BCE0);
  v30 = v125;
  v29 = v126;
  if ((*(v126 + 48))(v18, 1, v125) == 1)
  {

    sub_1000095E8(v18, &unk_10118BCE0);
    goto LABEL_21;
  }

  v115 = a3;
  v31 = v124;
  v113 = *(v29 + 32);
  v114 = v29 + 32;
  v113(v124, v18, v30);
  v32 = v29;
  v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v28[v33], v129, &unk_1011926C0);
  if (v129[8] == 1)
  {

    (*(v32 + 8))(v31, v30);
    sub_1000095E8(v129, &unk_1011926C0);
    a3 = v115;
    goto LABEL_21;
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v129, &unk_1011926C0);
  if (!v34)
  {
    (*(v126 + 8))(v124, v30);

    a3 = v115;
    goto LABEL_21;
  }

  v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v28[v35], v10, &unk_1011814D0);
  v37 = v122;
  v36 = v123;
  v38 = (*(v123 + 48))(v10, 1, v122);
  a3 = v115;
  if (v38 == 1)
  {
    (*(v126 + 8))(v124, v125);

    sub_1000095E8(v10, &unk_1011814D0);
    goto LABEL_21;
  }

  v39 = v36 + 32;
  v40 = *(v36 + 32);
  v41 = v120;
  v111 = v40;
  v112 = v39;
  v40(v120, v10, v37);
  IndexPath.section.getter();
  Array.subscript.getter(&type metadata for ContainerDetail.Section, v129);
  if (v129[0] != 5 && v129[0] != 2)
  {

    (*(v123 + 8))(v41, v37);
    (*(v126 + 8))(v124, v125);
    goto LABEL_21;
  }

  memset(v130, 0, sizeof(v130));
  v131 = 0;
  v132 = xmmword_100EBCEF0;
  v110 = v34;
  v42 = PresentationSource.init(viewController:position:)(v110, v130, v129);
  v43 = v121;
  v104 = *(v123 + 16);
  v105 = v123 + 16;
  (v104)(v121, v41, v37, v42);
  v44 = v119;
  v45 = *(v126 + 56);
  v106 = *(v119 + 20);
  v107 = v45;
  v108 = v126 + 56;
  v45(v43 + v106, 1, 1, v125);
  v46 = *&v28[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController];
  v109 = (v43 + *(v44 + 24));
  if (!v46)
  {
    v51 = 512;
    goto LABEL_27;
  }

  v47 = (v46 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_currentTrackListSort);
  swift_beginAccess();
  v48 = v47[1];
  if (v48)
  {
    v49 = 256;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49 | *v47;
  if (!*v47)
  {

    v52 = v126;
    if (v48)
    {
      goto LABEL_26;
    }

LABEL_24:
    v51 = v50;
    goto LABEL_27;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v54 = v53 & v48;
  v52 = v126;
  if ((v54 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v51 = v50;
  if (!sub_10081789C())
  {
    v79 = v124;
    if (qword_10117F268 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_1000060E4(v80, qword_1012186C8);
    v81 = v52 + 16;
    v82 = v125;
    v117 = *(v52 + 16);
    v117(v24, v79, v125);
    v83 = v52;
    v84 = Logger.logObject.getter();
    LODWORD(v111) = static os_log_type_t.default.getter();
    v85 = os_log_type_enabled(v84, v111);
    v112 = v81;
    if (v85)
    {
      v86 = swift_slowAlloc();
      v104 = v86;
      v105 = swift_slowAlloc();
      v128[0] = v105;
      *v86 = 136446210;
      sub_100866F00(&unk_101197050, &type metadata accessor for IndexPath);
      v87 = v83;
      v88 = dispatch thunk of CustomStringConvertible.description.getter();
      v90 = v89;
      (*(v87 + 8))(v24, v82);
      v91 = sub_1000105AC(v88, v90, v128);
      v79 = v124;

      v92 = v104;
      *(v104 + 1) = v91;
      _os_log_impl(&_mh_execute_header, v84, v111, "Playlist drop operation=.at(indexPath=%{public}s)", v92, 0xCu);
      sub_10000959C(v105);
    }

    else
    {

      (*(v83 + 8))(v24, v82);
    }

    v93 = v121;
    v94 = v106;
    sub_100867794(v121 + v106, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
    v95 = v79;
    v96 = v79;
    v97 = v117;
    v117((v93 + v94), v95, v82);
    v107(v93 + v94, 0, 1, v82);
    v98 = v116;
    v97(v116, v96, v82);
    sub_10012B7A8(v129, v128);
    v99 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v100 = (v21 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    v113((v101 + v99), v98, v82);
    *(v101 + v100) = v28;
    sub_10012B828(v128, v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8));
    v102 = v109;
    *v109 = &unk_100EE5228;
    v102[1] = v101;
    v103 = v28;
    v68 = v122;
    v65 = v82;
    v67 = v120;
    goto LABEL_32;
  }

LABEL_27:
  if (qword_10117F268 != -1)
  {
    swift_once();
  }

  v55 = type metadata accessor for Logger();
  sub_1000060E4(v55, qword_1012186C8);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v128[0] = v59;
    *v58 = 136446210;
    v127 = v51;
    sub_10010FC20(&unk_1011A4A20);
    v60 = String.init<A>(describing:)();
    v62 = sub_1000105AC(v60, v61, v128);

    *(v58 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v56, v57, "Playlist drop operation=.into sort=%{public}s", v58, 0xCu);
    sub_10000959C(v59);
  }

  v63 = v121;
  v64 = v106;
  sub_100867794(v121 + v106, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination.OperationKind);
  v65 = v125;
  v107(v63 + v64, 1, 1, v125);
  v66 = v117;
  v67 = v120;
  v68 = v122;
  (v104)(v117, v120, v122);
  sub_10012B7A8(v129, v128);
  v69 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v70 = swift_allocObject();
  v111(v70 + v69, v66, v68);
  sub_10012B828(v128, v70 + ((v13 + v69 + 7) & 0xFFFFFFFFFFFFFFF8));
  v71 = v109;
  *v109 = &unk_100EE5210;
  v71[1] = v70;
LABEL_32:
  v72 = v110;
  v73 = [v110 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  (*(v123 + 8))(v67, v68);
  (*(v126 + 8))(v124, v65);
  v74 = v128[0];
  v75 = type metadata accessor for DragDropToPlaylist.Destination(0);
  *(a3 + 24) = v75;
  *(a3 + 32) = sub_100866F00(&unk_10118D3A0, type metadata accessor for DragDropToPlaylist.Destination);
  v76 = sub_10001C8B8(a3);
  v77 = *(v75 + 20);
  v78 = v121;
  sub_10086772C(v121, v76 + v77, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
  (*(v118 + 56))(v76 + v77, 0, 1, v119);
  *v76 = v74;
  sub_10012B828(v129, v76 + *(v75 + 24));
  sub_100867794(v78, type metadata accessor for DragDropToPlaylist.Destination.PlaylistDestination);
}

uint64_t sub_100816908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_10010FC20(&qword_10118C2B0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_10010FC20(&qword_10119A808);
  v4[14] = swift_task_alloc();
  v6 = type metadata accessor for IndexPath();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[19] = v8;
  v4[20] = v7;

  return _swift_task_switch(sub_100816AA0, v8, v7);
}

uint64_t sub_100816AA0()
{
  v1 = v0[9];
  v2 = IndexPath.section.getter();
  v3 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v3 + 32;
    while (*(v6 + v5) != 5)
    {
      if (v4 == ++v5)
      {
        goto LABEL_10;
      }
    }

    if (v2 == v5)
    {
      v7 = 0;
      while (*(v6 + v7) != 2)
      {
        if (v4 == ++v7)
        {
          goto LABEL_10;
        }
      }

      v13 = v0[14];
      v14 = v0[11];
      v15 = v0[12];
      v16 = v0[9];
      v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      swift_beginAccess();
      sub_1000089F8(v16 + v17, v13, &qword_10119A808);
      v18 = (*(v15 + 48))(v13, 1, v14);
      v19 = v0[14];
      if (v18)
      {
        sub_1000095E8(v0[14], &qword_10119A808);
        goto LABEL_12;
      }

      v21 = v0[12];
      v20 = v0[13];
      v22 = v0[11];
      (*(v21 + 16))(v20, v0[14], v22);
      sub_1000095E8(v19, &qword_10119A808);
      sub_100020674(&unk_101186ED0, &qword_10118C2B0);
      dispatch thunk of Collection.startIndex.getter();
      dispatch thunk of Collection.endIndex.getter();
      v23 = dispatch thunk of Collection.distance(from:to:)();
      (*(v21 + 8))(v20, v22);
      result = v23 - 1;
      if (!__OFSUB__(v23, 1))
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_21:
      __break(1u);
      return result;
    }
  }

LABEL_10:
  result = IndexPath.item.getter();
  if (__OFSUB__(result, 1))
  {
    goto LABEL_21;
  }

  IndexPath.section.getter();
LABEL_12:
  IndexPath.init(item:section:)();
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_100816D48;
  v10 = v0[17];
  v11 = v0[10];
  v12 = v0[7];

  return sub_10084EB34(v12, v10, v11);
}

uint64_t sub_100816D48()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100816E68, v3, v2);
}

uint64_t sub_100816E68()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100816F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for MusicLibrary.AddToPlaylistDuplicatePolicy();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v6;
  v3[10] = v5;

  return _swift_task_switch(sub_100817008, v6, v5);
}

uint64_t sub_100817008()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicLibrary.AddToPlaylistDuplicatePolicy.checkForDuplicates(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1008138D4;
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[2];

  return Playlist.addTracks(_:duplicatePolicy:duplicateCount:presentationSource:presentNotice:mpModel:)(v4, v2, 0, 1, v3, 0, 0);
}

void sub_1008170DC(uint64_t a1)
{
  v2 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  if ((*(*(v2 - 8) + 48))(a1, 1, v2) == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      if (*(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeStaticEntriesUpdates) == 1)
      {
        sub_1008422A8();
      }
    }

    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (*(v5 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_postponeSectionUpdate) == 1)
      {
        sub_10083AF5C(0);
      }
    }
  }
}

uint64_t sub_1008171D0(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011A46C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_10010FC20(&qword_10118A3B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1008260A0(v4);

    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 8))(a1, v5);
      v11 = *(v6 + 32);
      v11(v8, v4, v5);
      return (v11)(a1, v8, v5);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  v13 = *(v6 + 32);
  v13(v8, a1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1000095E8(v4, &unk_1011A46C0);
  }

  return (v13)(a1, v8, v5);
}

uint64_t sub_100817414(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) = result;
  v2 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  if ((v2 & 0x8000000000000000) == 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    dispatch thunk of MusicAutoupdatingResponse.update(_:)();

    return sub_1004E6028(v2);
  }

  return result;
}

void sub_1008174CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10010FC20(&unk_10118B970);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prominentItemIndexPath;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1000089F8(a1, v13, &unk_10118BCE0);
  sub_1000089F8(v2 + v14, &v13[v15], &unk_10118BCE0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      v17 = &unk_10118BCE0;
      v18 = v13;
LABEL_9:
      sub_1000095E8(v18, v17);
      return;
    }
  }

  else
  {
    sub_1000089F8(v13, v9, &unk_10118BCE0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v21 = v25;
      (*(v5 + 32))(v25, &v13[v15], v4);
      sub_100866F00(&qword_101192840, &type metadata accessor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v5 + 8);
      v23(v21, v4);
      v23(v9, v4);
      sub_1000095E8(v13, &unk_10118BCE0);
      if (v22)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v9, v4);
  }

  sub_1000095E8(v13, &unk_10118B970);
LABEL_7:
  sub_100846A54();
  v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v19, v26, &unk_1011926C0);
  if (v26[8])
  {
    v17 = &unk_1011926C0;
    v18 = v26;
    goto LABEL_9;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v26, &unk_1011926C0);
  if (Strong)
  {
    sub_100503D5C();
  }
}

BOOL sub_10081789C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118C2B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
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
    if (v12[2] != v12[1])
    {
      return 0;
    }
  }

  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
  swift_beginAccess();
  return *(*(v1 + v10) + 16) == 0;
}

void sub_100817B04(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v5 = a1 & 0xFFFFFFFFFFFFFEFELL;
  if ((v4 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    if (v5 == 0x3FFFFFEFELL)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v5 == 0x3FFFFFEFELL)
  {
    goto LABEL_10;
  }

  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      if (a1 >> 62 == 2 && ((v4 ^ a1) & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v4 == 0xC000000000000000 && *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8) == 0)
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000000;
      }

      else
      {
        if (a1 >> 62 != 3)
        {
          goto LABEL_10;
        }

        v11 = 0xC000000000000001;
      }

      if (a1 == v11 && !(a3 | a2))
      {
        return;
      }
    }

LABEL_10:
    v8 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v3 + v8, v13, &unk_1011926C0);
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
        sub_10069F67C();
      }
    }

    return;
  }

  if (v6)
  {
    v7 = a1 >> 62 == 1;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v12 = v4 ^ a1;
  if (v12 & 0x100) != 0 || (v12)
  {
    goto LABEL_10;
  }
}

uint64_t sub_100817C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&qword_10118C2B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - v5;
  v7 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for UIContentUnavailableConfiguration();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  v16 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState;
  v17 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  if ((v17 & 0xFFFFFFFFFFFFFEFELL) == 0x3FFFFFEFELL)
  {
    v18 = a1;
    v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
    swift_beginAccess();
    sub_1000089F8(v1 + v19, v9, &qword_10119A808);
    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_1000095E8(v9, &qword_10119A808);
      return (*(v42 + 56))(v18, 1, 1, v10);
    }

    (*(v4 + 16))(v6, v9, v3);
    sub_1000095E8(v9, &qword_10119A808);
    sub_100020674(&unk_101186ED0, &qword_10118C2B0);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v4 + 8))(v6, v3);
    if (v45 != v44 || *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) != 1)
    {
      return (*(v42 + 56))(v18, 1, 1, v10);
    }

    static UIContentUnavailableConfiguration.search()();
    v33 = *(v42 + 56);
    v34 = v18;
    return v33(v34, 0, 1, v10);
  }

  v21 = *(v16 + 8);
  v20 = *(v16 + 16);
  if ((v17 >> 62) - 1 >= 2)
  {
    if (v17 >> 62)
    {
LABEL_9:
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v15);
      (*(v42 + 8))(v12, v10);
      sub_10069D52C(v17);
      UIContentUnavailableConfiguration.text.setter();
      sub_10069B5AC(v17, v21, v20);
      UIContentUnavailableConfiguration.secondaryText.setter();
      v22 = sub_10069B85C(v17, v21, v20);
      if (v22)
      {
        v26 = v22;
        v27 = v24;
        v28 = v25;
        v40 = v23;

        v29 = UIContentUnavailableConfiguration.button.modify();
        v41 = a1;
        v30 = v29;
        UIButton.Configuration.title.setter();
        v30(v43, 0);
        sub_100009F78(0, &qword_1011839A0);
        v31 = swift_allocObject();
        v31[2] = v26;
        v31[3] = v40;
        v31[4] = v27;
        v31[5] = v28;

        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v32 = UIContentUnavailableConfiguration.buttonProperties.modify();
        a1 = v41;
        UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
        v32(v43, 0);
        sub_1004E5BA4(v17);
      }

      else
      {
        sub_1004E5BA4(v17);
      }

      (*(v42 + 32))(a1, v15, v10);
      v33 = *(v42 + 56);
      v34 = a1;
      return v33(v34, 0, 1, v10);
    }

    sub_10011896C(*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState));
  }

  if (v17)
  {
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

    static UIContentUnavailableConfiguration.loading()();
    v36 = *(v42 + 56);
    v37 = a1;
    v38 = 0;
  }

  else
  {
    sub_1004E5BA4(v17);
    v36 = *(v42 + 56);
    v37 = a1;
    v38 = 1;
  }

  return v36(v37, v38, 1, v10);
}

uint64_t sub_100818294@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Playlist();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v10, v5, &unk_1011814D0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000095E8(v5, &unk_1011814D0);
LABEL_5:
    v11 = type metadata accessor for ArtworkImage.ViewModel(0);
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  (*(v7 + 32))(v9, v5, v6);
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork))
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_5;
  }

  Playlist.artworkViewModel.getter(a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1008184CC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = type metadata accessor for EditorialVideoArtworkFlavor();
  v27 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v11, &unk_1011814D0);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    sub_1000095E8(v11, &unk_1011814D0);
  }

  else
  {
    v13 = v27;
    (*(v6 + 16))(v8, v11, v5);
    sub_1000095E8(v11, &unk_1011814D0);
    v14 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
    (*(v6 + 8))(v8, v5);
    if (v14)
    {
      static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
      if (*(v14 + 16))
      {
        v15 = sub_1006BE63C(v4);
        if (v16)
        {
          v17 = v15;
          v18 = *(v14 + 56);
          v19 = type metadata accessor for VideoArtwork();
          v20 = *(v19 - 8);
          v21 = v20;
          v22 = v18 + *(v20 + 72) * v17;
          v23 = v28;
          (*(v20 + 16))(v28, v22, v19);
          (*(v13 + 8))(v4, v2);

          return (*(v21 + 56))(v23, 0, 1, v19);
        }
      }

      (*(v13 + 8))(v4, v2);
    }
  }

  v25 = type metadata accessor for VideoArtwork();
  return (*(*(v25 - 8) + 56))(v28, 1, 1, v25);
}

uint64_t sub_100818884(uint64_t a1)
{
  v3 = sub_10010FC20(&unk_101188920);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  __chkstk_darwin(v4);
  v8 = v17 - v7 + 16;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_artwork;
  swift_beginAccess();
  sub_1002190E0(a1, v1 + v9, &unk_101188920);
  swift_endAccess();
  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) != 1)
  {
    v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v12, v17, &unk_1011926C0);
    if (v17[8])
    {
      sub_1000095E8(a1, &unk_101188920);
      v10 = &unk_1011926C0;
      v11 = v17;
      return sub_1000095E8(v11, v10);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v17, &unk_1011926C0);
    if (Strong)
    {
      sub_1000089F8(v1 + v9, v8, &unk_101188920);
      v14 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
      swift_beginAccess();
      sub_1000089F8(Strong + v14, v6, &unk_101188920);
      swift_beginAccess();
      sub_1002190E0(v8, Strong + v14, &unk_101188920);
      swift_endAccess();
      sub_10069FC04(v6);

      sub_1000095E8(a1, &unk_101188920);
      sub_1000095E8(v6, &unk_101188920);
      v11 = v8;
      v10 = &unk_101188920;
      return sub_1000095E8(v11, v10);
    }
  }

  v10 = &unk_101188920;
  v11 = a1;
  return sub_1000095E8(v11, v10);
}

uint64_t sub_100818B00()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_100818B70(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    sub_1000D9148(v4);
  }

  sub_10000CD8C(v2);
  return v3;
}

uint64_t sub_100818B70(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = sub_100729BFC();

  if (*(v3 + 16) && *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
  {

    v4 = MusicPageProvider.playlistRelatedContentProvider(for:)();

    return v4;
  }

  else
  {

    return 0;
  }
}

BOOL sub_100818C54()
{
  v1 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v1 - 8);
  v3 = v12 - v2 + 22;
  v4 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
  swift_beginAccess();
  sub_1000089F8(v0 + v4, v3, &qword_10119A808);
  v5 = sub_10010FC20(&qword_10118C2B0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000095E8(v3, &qword_10119A808);
  if (v4 == 1 || (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching) & 1) != 0)
  {
    return 0;
  }

  v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v6, v12, &unk_1011926C0);
  if (v12[8])
  {
    sub_1000095E8(v12, &unk_1011926C0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v12, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v8 = sub_1006A3A7C();

  result = v8;
  if (v8)
  {
    if (v8 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v10 != 0;
  }

  return result;
}

uint64_t sub_100818E5C()
{
  v1 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_100818EA0(v0);
    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_100818EA0(uint64_t a1)
{
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for MusicPropertySource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  if ((*(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) & 1) == 0)
  {
    v28 = v3;
    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v15, a1 + v17, v9);
    (*(v10 + 104))(v12, enum case for MusicPropertySource.catalog(_:), v9);
    LOBYTE(v17) = static MusicPropertySource.== infix(_:_:)();
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    if (v17)
    {
      v19 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(a1 + v19, v29, &unk_1011926C0);
      if (BYTE8(v29[0]))
      {
        sub_1000095E8(v29, &unk_1011926C0);
      }

      else
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        sub_1000095E8(v29, &unk_1011926C0);
        if (Strong)
        {
          v21 = [Strong traitCollection];

          v22 = [v21 userInterfaceIdiom];
          if (!v22)
          {
            static ApplicationCapabilities.shared.getter(v29);
            sub_100014984(v29);
            if (BYTE1(v29[0]))
            {
              v24 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
              swift_beginAccess();
              sub_1000089F8(a1 + v24, v8, &unk_1011814D0);
              v25 = v28;
              if (!(*(v28 + 48))(v8, 1, v2))
              {
                (*(v25 + 16))(v5, v8, v2);
                sub_1000095E8(v8, &unk_1011814D0);
                v26 = sub_10080516C(2, &type metadata accessor for Playlist, &protocol witness table for Playlist, &Playlist.staticDetailTallArtwork.getter);
                (*(v25 + 8))(v5, v2);
                v16 = v26 ^ 1;
                return v16 & 1;
              }

              sub_1000095E8(v8, &unk_1011814D0);
            }

            goto LABEL_2;
          }
        }
      }
    }

    v16 = 0;
    return v16 & 1;
  }

LABEL_2:
  v16 = 1;
  return v16 & 1;
}

uint64_t sub_1008192FC(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100818E5C();
  if ((result & 1) != v4)
  {
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage____needsToResolveLayout) = v4;
    if ((a1 & 1) == 0)
    {
      v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
      swift_beginAccess();
      sub_1000089F8(v2 + v10, &v27, &unk_1011926C0);
      if (v28)
      {
        return sub_1000095E8(&v27, &unk_1011926C0);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      result = sub_1000095E8(&v27, &unk_1011926C0);
      if (Strong)
      {
        *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_needsToResolveArtwork) = 0;
        v12 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer;
        [*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] invalidate];
        v13 = *&Strong[v12];
        *&Strong[v12] = 0;

        v14 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
        v15 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
        if ((v15 & 0xFFFFFFFFFFFFFEFELL) != 0x3FFFFFEFELL)
        {
          v16 = v14[1];
          v17 = v14[2];
          if (v15 >> 62 == 3 || (v15 & 1) != 0)
          {
            *v14 = 0x3FFFFFEFELL;
            v14[1] = 0;
            v14[2] = 0;
            sub_100817B04(v15, v16, v17);
            sub_1004E5BA4(v15);
            [Strong setNeedsUpdateContentUnavailableConfiguration];
            *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
          }
        }

        v18 = sub_10083D5A8();
        swift_getKeyPath();
        v27 = v18;
        sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = *(v18 + 16);

        sub_10069F9B8();
        sub_1008197A8(&v27);
        v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
        swift_beginAccess();
        (*(v6 + 16))(v8, v2 + v20, v5);
        sub_100558458(&v27, v8, 0);

        (*(v6 + 8))(v8, v5);
        sub_1000095E8(&v27, &unk_101192850);
        v21 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
        swift_getKeyPath();
        v27 = v21;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v22 = *(v21 + 16);

        if (v19 == 2)
        {
          if (v22 == 2)
          {
LABEL_17:
            sub_10069F67C();
            sub_100009F78(0, &qword_101181620);
            v23 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
            v24 = swift_allocObject();
            *(v24 + 16) = Strong;
            v25 = Strong;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v23, 0, sub_1004E9E3C, v24, 0, 0, 0.5, 0.0);
          }
        }

        else if (v22 != 2 && ((v22 ^ v19) & 1) == 0)
        {
          goto LABEL_17;
        }

        if (*(*&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator] + 24))
        {
          sub_1008412FC();
        }

        goto LABEL_17;
      }
    }
  }

  return result;
}

uint64_t sub_1008197A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v8, &unk_1011814D0);
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    *(&v19 + 1) = v10;
    v20 = &off_1010B2320;
    v15 = sub_10001C8B8(&v18);
    (*(v11 + 32))(v15, v8, v10);
    return sub_100059A8C(&v18, a1);
  }

  sub_1000095E8(v8, &unk_1011814D0);
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v13, v5, &unk_1011814D0);
  if (v12(v5, 1, v10) != 1)
  {
    *(a1 + 24) = v10;
    *(a1 + 32) = &off_1010B2320;
    v16 = sub_10001C8B8(a1);
    result = (*(v11 + 32))(v16, v5, v10);
    if (!*(&v19 + 1))
    {
      return result;
    }

    return sub_1000095E8(&v18, &unk_101192850);
  }

  result = sub_1000095E8(v5, &unk_1011814D0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  if (*(&v19 + 1))
  {
    return sub_1000095E8(&v18, &unk_101192850);
  }

  return result;
}

void sub_100819A28()
{
  v1 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v14, &v24, &unk_1011926C0);
  if (v25)
  {
    sub_1000095E8(&v24, &unk_1011926C0);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v24, &unk_1011926C0);
  if (Strong)
  {
    v16 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion;
    if ((*(Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion) & 1) == 0)
    {
LABEL_9:

      return;
    }

    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v0 + v17, v9, &unk_1011814D0);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {

      sub_1000095E8(v9, &unk_1011814D0);
      return;
    }

    (*(v11 + 32))(v13, v9, v10);
    if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isSearching))
    {
      (*(v11 + 8))(v13, v10);
      goto LABEL_9;
    }

    v18 = type metadata accessor for Playlist.Entry();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    sub_10085678C(v3, v6);
    v19 = sub_1000095E8(v3, &qword_101191570);
    v20 = PlaybackIntentDescriptor.intent.getter(v19);
    sub_100867794(v6, type metadata accessor for PlaybackIntentDescriptor);
    if (qword_10117F718 != -1)
    {
      swift_once();
    }

    v26 = v10;
    v27 = &protocol witness table for Playlist;
    v21 = sub_10001C8B8(&v24);
    (*(v11 + 16))(v21, v13, v10);
    v28 = Strong;
    v29 = 1;
    v22 = Strong;
    v23 = v20;
    GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(&v24, v20);

    sub_100442874(&v24);
    *(Strong + v16) = 0;

    (*(v11 + 8))(v13, v10);
  }
}

void sub_100819EA8()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v71 - v3;
  v77 = type metadata accessor for Playlist.EditableComponents();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Playlist();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v7 - 8);
  v74 = &v71 - v8;
  v9 = sub_10010FC20(&unk_1011814D0);
  v10 = __chkstk_darwin(v9 - 8);
  v78 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v71 - v13;
  __chkstk_darwin(v12);
  v81 = &v71 - v15;
  v16 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v16 - 8);
  v18 = &v71 - v17;
  v19 = type metadata accessor for MusicPropertySource();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v71 - v24;
  static ApplicationCapabilities.shared.getter(v84);
  sub_100014984(v84);
  if ((BYTE1(v84[0]) & 1) == 0)
  {
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v20 + 16))(v25, v1 + v26, v19);
    (*(v20 + 104))(v23, enum case for MusicPropertySource.catalog(_:), v19);
    LOBYTE(v26) = static MusicPropertySource.== infix(_:_:)();
    v27 = *(v20 + 8);
    v27(v23, v19);
    v27(v25, v19);
    if (v26)
    {
      v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentingEntries;
      swift_beginAccess();
      sub_1000089F8(v1 + v28, v18, &qword_10119A808);
      v29 = sub_10010FC20(&qword_10118C2B0);
      v30 = (*(*(v29 - 8) + 48))(v18, 1, v29);
      sub_1000095E8(v18, &qword_10119A808);
      if (v30 == 1)
      {
        sub_100825C38(0xC000000000000000, 0, 0);
        return;
      }
    }
  }

  v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v31, v82, &unk_1011926C0);
  if (v82[8])
  {
    v32 = &unk_1011926C0;
    v33 = v82;
LABEL_17:
    sub_1000095E8(v33, v32);
    goto LABEL_18;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(v82, &unk_1011926C0);
  if (Strong)
  {
    v72 = Strong;
    v35 = *&Strong[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference];
    v36 = type metadata accessor for ArtworkPrefetchingController();
    v37 = objc_allocWithZone(v36);
    v38 = &v37[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider];
    *v38 = 0;
    *(v38 + 1) = 0;
    v39 = &v37[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    *v39 = 0;
    *(v39 + 1) = 0;
    v40 = &v37[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
    *v40 = 0;
    *(v40 + 1) = 0;
    v41 = &v37[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context];
    *v41 = 0u;
    *(v41 + 1) = 0u;
    *&v37[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference] = v35;
    v83.receiver = v37;
    v83.super_class = v36;

    v42 = objc_msgSendSuper2(&v83, "init");
    v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController;
    v44 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_prefetchingController) = v42;
    v45 = v42;

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = &v45[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    v48 = *&v45[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkMetricsProvider];
    *v47 = sub_10086ABE0;
    v47[1] = v46;

    sub_100020438(v48);

    v49 = *(v1 + v43);
    if (v49)
    {
      v50 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v51 = &v49[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
      v52 = *&v49[OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider];
      *v51 = sub_10086ABE8;
      v51[1] = v50;
      v53 = v49;

      sub_100020438(v52);
    }

    v54 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    sub_1000089F8(v1 + v54, v14, &unk_1011814D0);
    v55 = v79;
    v56 = v80;
    if ((*(v79 + 48))(v14, 1, v80))
    {
      sub_1000095E8(v14, &unk_1011814D0);
      v57 = v81;
    }

    else
    {
      v58 = v73;
      (*(v55 + 16))(v73, v14, v56);
      sub_1000095E8(v14, &unk_1011814D0);
      v59 = v74;
      Playlist.editableComponents.getter();
      (*(v55 + 8))(v58, v56);
      v60 = v76;
      v61 = v77;
      v62 = (*(v76 + 48))(v59, 1, v77);
      v57 = v81;
      if (v62 == 1)
      {
        sub_1000095E8(v59, &unk_10118D240);
      }

      else
      {
        static Playlist.EditableComponents.tracklist.getter();
        sub_100866F00(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
        LODWORD(v73) = dispatch thunk of SetAlgebra.isSuperset(of:)();
        v63 = *(v60 + 8);
        v63(v75, v61);
        v63(v59, v61);
        if ((v73 & 1) == 0)
        {
          sub_1000089F8(v1 + v54, v57, &unk_1011814D0);
          goto LABEL_16;
        }
      }
    }

    (*(v55 + 56))(v57, 1, 1, v56);
LABEL_16:
    v64 = v78;
    sub_1000089F8(v57, v78, &unk_1011814D0);
    sub_10010FC20(&unk_1011A4A00);
    swift_allocObject();
    v65 = v72;
    sub_1008671C8(v65, v64);

    sub_1008212F0(v66);

    v33 = v57;
    v32 = &unk_1011814D0;
    goto LABEL_17;
  }

LABEL_18:
  static TaskPriority.userInitiated.getter();
  v67 = type metadata accessor for TaskPriority();
  (*(*(v67 - 8) + 56))(v4, 0, 1, v67);
  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = swift_allocObject();
  v69[2] = 0;
  v69[3] = 0;
  v69[4] = v68;
  v70 = sub_100805804(0, 0, v4, &unk_100EE5198, v69);
  sub_1000095E8(v4, &unk_101181520);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask) = v70;
}

double sub_10081A980(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_10010FC20(&qword_101186E00);
  __chkstk_darwin(v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_10010FC20(&unk_1011A4A10);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v42 = type metadata accessor for DynamicTypeSize();
  v10 = *(v42 - 8);
  v11 = __chkstk_darwin(v42);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  v16 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v16 - 8);
  v18 = &v39 - v17;
  v19 = type metadata accessor for Playlist.Entry();
  v43 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = 0.0;
  if (Strong)
  {
    v24 = Strong;
    v41 = v15;
    v25 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    v26 = IndexPath.section.getter();
    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(v25 + 16))
    {
      if (*(v25 + v26 + 32) != 2)
      {

        return v23;
      }

      sub_10085939C(v18);
      v27 = v43;
      if ((*(v43 + 48))(v18, 1, v19) == 1)
      {

        sub_1000095E8(v18, &qword_101191570);
        return v23;
      }

      (*(v27 + 32))(v21, v18, v19);
      v40 = objc_opt_self();
      v29 = [v40 currentTraitCollection];
      v30 = [v29 preferredContentSizeCategory];

      DynamicTypeSize.init(_:)();
      v18 = v10;
      v31 = *(v10 + 6);
      v10 = v42;
      if (v31(v9, 1, v42) == 1)
      {
        (*(v27 + 8))(v21, v19);

        sub_1000095E8(v9, &unk_1011A4A10);
        return v23;
      }

      (*(v18 + 4))(v41, v9, v10);
      Playlist.Entry.contributor.getter();
      v32 = type metadata accessor for SocialProfile();
      a3 = (*(*(v32 - 8) + 48))(v6, 1, v32);
      sub_1000095E8(v6, &qword_101186E00);
      if (qword_10117FB28 == -1)
      {
LABEL_12:
        if (byte_10119CDC0 == 1)
        {
          if (a3 == 1)
          {
            v33 = 48.0;
          }

          else
          {
            v33 = 32.0;
          }

          v34 = v40;
          v35 = &selRef__replacePlaceholderViewWithView_;
          goto LABEL_24;
        }

        (*(v18 + 13))(v13, enum case for DynamicTypeSize.accessibility3(_:), v10);
        v36 = static DynamicTypeSize.< infix(_:_:)();
        (*(v18 + 1))(v13, v10);
        if (v36)
        {
          v34 = v40;
          v35 = &selRef__replacePlaceholderViewWithView_;
          if (a3 != 1)
          {
            v37 = 0x4040000000000000;
LABEL_23:
            v33 = *&v37;
LABEL_24:
            v23 = v33 * sub_10026E2A4();
            v38 = [v34 v35[211]];
            [v38 displayScale];

            (*(v18 + 1))(v41, v10);
            (*(v43 + 8))(v21, v19);
            return v23;
          }
        }

        else
        {
          v34 = v40;
          v35 = &selRef__replacePlaceholderViewWithView_;
          if (a3 == 1)
          {
            v37 = 0x4052000000000000;
            goto LABEL_23;
          }
        }

        v37 = 0x4048000000000000;
        goto LABEL_23;
      }

LABEL_27:
      swift_once();
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_27;
  }

  return v23;
}

unint64_t sub_10081AF6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for Playlist.Entry();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v11 + 16))
    {
      if (*(v11 + result + 32) == 2)
      {
        sub_10085939C(v4);
        if ((*(v6 + 48))(v4, 1, v5) != 1)
        {
          (*(v6 + 32))(v8, v4, v5);
          Playlist.Entry.artwork.getter();

          return (*(v6 + 8))(v8, v5);
        }

        sub_1000095E8(v4, &qword_101191570);
      }

      else
      {
      }

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

LABEL_8:
  v13 = type metadata accessor for Artwork();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_10081B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = type metadata accessor for MusicPropertySource();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10081B27C, 0, 0);
}

uint64_t sub_10081B27C()
{
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (v0[12] = Strong) == 0))
  {

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[13] = type metadata accessor for MainActor();
    v0[14] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10081B380, v3, v2);
  }
}

uint64_t sub_10081B380()
{
  v1 = v0[12];

  v2 = v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID;
  v0[15] = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID);
  v0[16] = *(v2 + 8);

  return _swift_task_switch(sub_10081B410, 0, 0);
}

uint64_t sub_10081B410()
{
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10081B49C, v2, v1);
}

uint64_t sub_10081B49C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[10];

  v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  (*(v4 + 16))(v1, v2 + v5, v3);
  v6 = swift_task_alloc();
  v0[18] = v6;
  *v6 = v0;
  v6[1] = sub_10081B58C;
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];

  return sub_1008239C4(v8, v7, v9);
}

uint64_t sub_10081B58C()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1004AF3C4, 0, 0);
}

void sub_10081B700()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_asyncSetupTask))
  {

    sub_10010FC20(&qword_1011824A0);
    Task.cancel()();
  }

  v2 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse) = 0xF000000000000007;
  sub_1004E6028(v2);
  *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = 0;

  v3 = (v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v4 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16);
  *v3 = 0x3FFFFFEFELL;
  v3[1] = 0;
  v3[2] = 0;
  sub_100817B04(v4, v5, v6);
  sub_1004E5BA4(v4);
  v7 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v0 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (Strong)
    {
      [Strong setNeedsUpdateContentUnavailableConfiguration];
    }
  }

  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
  sub_10083AF5C(0);
  sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (v9)
    {
      v10 = sub_1006A3A7C();

      if (v10)
      {
        v11 = v10 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v11)
        {
          goto LABEL_30;
        }
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8))
  {
    sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
    if (v19)
    {
      sub_1000095E8(v18, &unk_1011926C0);
LABEL_23:
      v12 = 0;
      goto LABEL_24;
    }

    v12 = swift_unknownObjectWeakLoadStrong();

    sub_1000095E8(v18, &unk_1011926C0);
    if (v12)
    {
      v13 = sub_10003169C();

      if (!v13 || (v14 = v13[2], , , !v14))
      {

        goto LABEL_23;
      }

      v12 = MusicPageProvider.playlistRelatedContentProvider(for:)();
    }

LABEL_24:
    v15 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider);
    *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___relatedContentProvider) = v12;
    sub_1000D9148(v15);
    sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
    if (v19)
    {
      sub_1000095E8(v18, &unk_1011926C0);
    }

    else
    {
      v16 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v18, &unk_1011926C0);
      if (v16)
      {
        sub_1006A3EE4();
      }
    }

    if (sub_100818B00())
    {
      dispatch thunk of RelatedContentProvider.onAppear()();
    }
  }

LABEL_30:
  sub_1000089F8(v1 + v7, v18, &unk_1011926C0);
  if (v19)
  {
    sub_1000095E8(v18, &unk_1011926C0);
  }

  else
  {
    v17 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v18, &unk_1011926C0);
    if (v17)
    {
      sub_10069F67C();
    }
  }

  sub_100819EA8();
}

uint64_t sub_10081BB60()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10081BBF8, v3, v2);
}

uint64_t sub_10081BBF8()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  v0[6] = v1;
  if (v1 < 0)
  {

    v9 = v0[1];

    return v9();
  }

  else
  {
    v2 = qword_10117FC48;

    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000060E4(v3, qword_1012193F8);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "[PlaylistEditing] Will reload library response.", v6, 2u);
    }

    v10 = (&async function pointer to dispatch thunk of MusicAutoupdatingResponse.reload() + async function pointer to dispatch thunk of MusicAutoupdatingResponse.reload());
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_10081BDBC;

    return v10();
  }
}

uint64_t sub_10081BDBC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_10081BEDC, v3, v2);
}

uint64_t sub_10081BEDC()
{
  v1 = *(v0 + 48);

  sub_1004E6028(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10081BF48(uint64_t a1)
{
  v3 = sub_10083D5A8();
  swift_getKeyPath();
  *&v13[0] = v3;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  if (*(v4 + 16) == *a1)
  {
    *(v4 + 16) = *a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12 = &v12;
    __chkstk_darwin(KeyPath);
    *&v13[0] = v4;
    sub_100866F00(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v6 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource____lazy_storage___headerConfiguration);
  swift_getKeyPath();
  *&v13[0] = v6;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

  v8 = *(a1 + 16);
  if (*(v7 + 24) == v8)
  {
    *(v7 + 24) = v8;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    *&v13[0] = v7;
    sub_100866F00(&qword_101192A00, _s7MetricsCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10083F3AC();
  v10 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v10;
  v14[0] = *(a1 + 32);
  *(v14 + 9) = *(a1 + 41);
  sub_100452A3C(v13);
}

uint64_t sub_10081C2A0(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  v6 = v2 + 32;
  while (*(v6 + result) != a1)
  {
    if (v3 == ++result)
    {
      return 0;
    }
  }

  return result;
}

id sub_10081C2F4()
{
  v1 = type metadata accessor for IndexPath();
  v20 = *(v1 - 8);
  __chkstk_darwin(v1);
  v2 = type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  __chkstk_darwin(v10);
  v12 = &v18[-v11];
  sub_10085939C(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &qword_101191570);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v0 + v13, v21, &unk_1011926C0);
    if (v21[8])
    {
      (*(v9 + 8))(v12, v8);
      sub_1000095E8(v21, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v21, &unk_1011926C0);
      if (Strong)
      {
        v19 = Strong;
        sub_100858450(v12, v4);
        memset(v22, 0, sizeof(v22));
        v23 = 0;
        v24 = xmmword_100EBCEF0;
        v15 = v19;
        PresentationSource.init(viewController:position:)(v15, v22, v21);
        v16 = sub_1007F63C4(v12, v4, v21, &type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &unk_1010C27A8, sub_10086AB14, &unk_1010C27C0, &unk_1010C2758, sub_10086AAFC, &unk_1010C2770, &unk_1010C2708, sub_10086A93C, &unk_1010C2720);

        sub_10012BA6C(v21);
        sub_100867794(v4, type metadata accessor for PlaybackIntentDescriptor);
        (*(v9 + 8))(v12, v8);
        return v16;
      }

      (*(v9 + 8))(v12, v8);
    }
  }

  return 0;
}

id sub_10081CAC4(uint64_t a1)
{
  v26[1] = a1;
  v2 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v2 - 8);
  v4 = v26 - v3;
  v28 = type metadata accessor for Playlist.Entry();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v7 - 8);
  v9 = v26 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v14, v9, &unk_1011814D0);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v1 + v17, &v29, &unk_1011926C0);
    if (v30)
    {
      sub_1000095E8(&v29, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v29, &unk_1011926C0);
      if (Strong)
      {
        sub_10085939C(v4);
        v19 = v27;
        v20 = v28;
        if ((*(v27 + 48))(v4, 1, v28) != 1)
        {
          (*(v19 + 32))(v6, v4, v20);
          sub_100009F78(0, &unk_1011A49E0);
          v22 = Strong;
          v23 = [v22 traitCollection];
          sub_100137E8C();
          UITraitCollection.subscript.getter();

          v24 = v29;
          memset(v31, 0, sizeof(v31));
          v32 = 0;
          v33 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v22, v31, &v29);
          v25 = sub_1001DA680(v6, v13, v24, &v29);

          sub_10012BA6C(&v29);
          (*(v19 + 8))(v6, v20);
          (*(v11 + 8))(v13, v10);
          return v25;
        }

        (*(v11 + 8))(v13, v10);

        v15 = &qword_101191570;
        v16 = v4;
        goto LABEL_3;
      }
    }

    (*(v11 + 8))(v13, v10);
    return 0;
  }

  v15 = &unk_1011814D0;
  v16 = v9;
LABEL_3:
  sub_1000095E8(v16, v15);
  return 0;
}

void *sub_10081CF70()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14[-v3];
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = _swiftEmptyArrayStorage;
  v9 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v9, v4, &unk_1011814D0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_1011814D0);
LABEL_10:
    v10 = _swiftEmptyArrayStorage;
    goto LABEL_11;
  }

  (*(v6 + 32))(v8, v4, v5);
  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  if ((Collaboration.Manager.isCollaborationPossible(for:)() & 1) == 0)
  {
    (*(v6 + 8))(v8, v5);
    goto LABEL_10;
  }

  sub_10082EBAC();
  sub_10082DCF0();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  (*(v6 + 8))(v8, v5);
  v10 = v15;
LABEL_11:
  if ((*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent) & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v16);
    sub_100014984(v16);
    if (BYTE1(v16[0]))
    {
      if (*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController))
      {

        v11 = sub_100801A7C(&unk_1010C25F0, sub_10086A810, sub_10086E3A0);

        if (v11)
        {
          v12 = v11;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return v15;
        }
      }
    }
  }

  return v10;
}

unint64_t sub_10081D2D8()
{
  v1 = _s7ElementV4ItemOMa();
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&qword_101191570);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Playlist.Entry();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v0 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result >= *(v11 + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v11 + result + 32) != 2)
  {
    return 0;
  }

  sub_10085939C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000095E8(v6, &qword_101191570);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  (*(v8 + 16))(v3, v10, v7);
  swift_storeEnumTagMultiPayload();
  v13 = IndexPath.item.getter();
  v14 = sub_10043231C(v3, v13);
  (*(v8 + 8))(v10, v7);
  return v14;
}

void sub_10081D548(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  v84 = type metadata accessor for ContentRating();
  v98 = *(v84 - 8);
  __chkstk_darwin(v84);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10010FC20(&qword_1011819C0);
  __chkstk_darwin(v83);
  v6 = &v73 - v5;
  v7 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  __chkstk_darwin(v13);
  v90 = &v73 - v14;
  v15 = type metadata accessor for Track();
  v102 = *(v15 - 8);
  __chkstk_darwin(v15);
  v100 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v104 = &v73 - v18;
  v91 = type metadata accessor for IndexPath();
  v95 = *(v91 - 8);
  __chkstk_darwin(v91);
  v99 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v73 - v21;
  v85 = a1;
  v23 = *(a1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v26 = v23 + 32;
    while (*(v26 + v25) != 3)
    {
      if (v24 == ++v25)
      {
        return;
      }
    }

    v76 = v9;
    v27 = v85;
    v28 = sub_100849A08();
    v86 = v12;
    if ((v28 & 1) != 0 || (v29 = *(v23 + 16)) == 0)
    {
      v31 = _swiftEmptyArrayStorage;
    }

    else
    {
      v30 = 0;
      v31 = _swiftEmptyArrayStorage;
      while (*(v26 + v30) != 6)
      {
        if (v29 == ++v30)
        {
          goto LABEL_13;
        }
      }

      *(v27 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 1;
      IndexPath.init(item:section:)();
      v31 = sub_100499724(0, 1, 1, _swiftEmptyArrayStorage);
      v72 = v31[2];
      v71 = v31[3];
      if (v72 >= v71 >> 1)
      {
        v31 = sub_100499724(v71 > 1, v72 + 1, 1, v31);
      }

      v31[2] = v72 + 1;
      (*(v95 + 32))(v31 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v72, v22, v91);
    }

LABEL_13:
    v32 = v103;
    v33 = *(v103 + 16);
    if (v33)
    {
      v81 = v6;
      v74 = v4;
      v34 = objc_opt_self();
      v35 = v102;
      v89 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v36 = v32 + v89;
      v103 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
      swift_beginAccess();
      v37 = *(v35 + 16);
      v35 += 16;
      v101 = v37;
      v80 = (v98 + 104);
      v79 = (v98 + 56);
      v38 = (v98 + 48);
      v73 = (v98 + 32);
      v39 = *(v35 + 56);
      v75 = (v98 + 8);
      v96 = (v35 - 8);
      v77 = enum case for ContentRating.explicit(_:);
      v88 = v95 + 32;
      v102 = v35;
      v87 = (v35 + 16);
      v98 = v15;
      v82 = v34;
      v78 = v38;
      v97 = v39;
      v37(v104, v36, v15);
      while (1)
      {
        v42 = [v34 sharedRestrictionsMonitor];
        v43 = [v42 allowsExplicitContent];

        if ((v43 & 1) == 0)
        {
          v92 = v36;
          v93 = v33;
          v94 = v31;
          v44 = v90;
          Track.contentRating.getter();
          v45 = v86;
          v46 = v84;
          (*v80)(v86, v77, v84);
          (*v79)(v45, 0, 1, v46);
          v47 = *(v83 + 48);
          v48 = v81;
          sub_1000089F8(v44, v81, &unk_10118D2F0);
          sub_1000089F8(v45, v48 + v47, &unk_10118D2F0);
          v49 = *v78;
          if ((*v78)(v48, 1, v46) == 1)
          {
            sub_1000095E8(v45, &unk_10118D2F0);
            sub_1000095E8(v44, &unk_10118D2F0);
            v50 = v49(v48 + v47, 1, v46);
            v15 = v98;
            v27 = v85;
            if (v50 == 1)
            {
              sub_1000095E8(v48, &unk_10118D2F0);
              v33 = v93;
              v31 = v94;
              v34 = v82;
              v40 = v97;
              v36 = v92;
              goto LABEL_16;
            }

            goto LABEL_24;
          }

          v51 = v76;
          sub_1000089F8(v48, v76, &unk_10118D2F0);
          if (v49(v48 + v47, 1, v46) == 1)
          {
            sub_1000095E8(v86, &unk_10118D2F0);
            sub_1000095E8(v90, &unk_10118D2F0);
            (*v75)(v51, v46);
            v27 = v85;
            v15 = v98;
LABEL_24:
            sub_1000095E8(v48, &qword_1011819C0);
            v33 = v93;
            v31 = v94;
            v34 = v82;
            v36 = v92;
            goto LABEL_25;
          }

          v60 = v74;
          (*v73)(v74, v48 + v47, v46);
          sub_100866F00(&qword_1011819D0, &type metadata accessor for ContentRating);
          v61 = dispatch thunk of static Equatable.== infix(_:_:)();
          v62 = *v75;
          (*v75)(v60, v46);
          sub_1000095E8(v86, &unk_10118D2F0);
          sub_1000095E8(v90, &unk_10118D2F0);
          v62(v51, v46);
          sub_1000095E8(v48, &unk_10118D2F0);
          v33 = v93;
          v31 = v94;
          v27 = v85;
          v15 = v98;
          v34 = v82;
          v36 = v92;
          if (v61)
          {
            v40 = v97;
            goto LABEL_16;
          }
        }

LABEL_25:
        IndexPath.init(item:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100499724(0, v31[2] + 1, 1, v31);
        }

        v53 = v31[2];
        v52 = v31[3];
        if (v53 >= v52 >> 1)
        {
          v31 = sub_100499724(v52 > 1, v53 + 1, 1, v31);
        }

        v31[2] = v53 + 1;
        (*(v95 + 32))(v31 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v53, v99, v91);
        v101(v100, v104, v15);
        v54 = v103;
        swift_beginAccess();
        v55 = *(v27 + v54);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v27 + v54) = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v55 = sub_100499798(0, v55[2] + 1, 1, v55);
          *(v27 + v103) = v55;
        }

        v58 = v55[2];
        v57 = v55[3];
        v40 = v97;
        if (v58 >= v57 >> 1)
        {
          v63 = sub_100499798(v57 > 1, v58 + 1, 1, v55);
          v40 = v97;
          v55 = v63;
        }

        v55[2] = v58 + 1;
        v59 = v55 + v89 + v58 * v40;
        v15 = v98;
        (*v87)(v59, v100, v98);
        *(v27 + v103) = v55;
        swift_endAccess();
        sub_10084A954();
LABEL_16:
        v41 = v104;
        (*v96)(v104, v15);
        v36 += v40;
        if (!--v33)
        {
          break;
        }

        v101(v41, v36, v15);
      }
    }

    *(v27 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) = 1;
    v64 = sub_10083D5A8();
    v65 = sub_10083D330();
    if (v65 == *(v64 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
    {
      *(v64 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v65;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v73 - 2) = v64;
      *(&v73 - 8) = v65;
      v106 = v64;
      sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v67 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v27 + v67, v105, &unk_1011926C0);
    if (v105[8])
    {
      sub_1000095E8(v105, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(v105, &unk_1011926C0);
      if (Strong)
      {
        v69 = sub_1006A6078();

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v69 insertItemsAtIndexPaths:isa];

        return;
      }
    }
  }
}

void sub_10081E1F4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v5 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    if (*(*&v2[v5] + 16))
    {
      v6 = *&v2[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections];
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = 0;
        v9 = v6 + 32;
        while (*(v9 + v8) != 3)
        {
          if (v7 == ++v8)
          {
            return;
          }
        }

        v10 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
        swift_beginAccess();
        sub_1000089F8(&v2[v10], &v21, &unk_1011926C0);
        if (v22)
        {
          sub_1000095E8(&v21, &unk_1011926C0);
        }

        else
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          sub_1000095E8(&v21, &unk_1011926C0);
          if (Strong)
          {
            v12 = v2;
            v13 = sub_1006A6078();

            v14 = swift_allocObject();
            v14[2] = a1;
            v14[3] = v12;
            v14[4] = v8;
            v15 = swift_allocObject();
            *(v15 + 16) = sub_10086A91C;
            *(v15 + 24) = v14;
            v25 = sub_10018A020;
            v26 = v15;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_100029B9C;
            v24 = &unk_1010C2680;
            v16 = _Block_copy(&v21);

            v17 = v12;

            v18 = swift_allocObject();
            *(v18 + 16) = v17;
            v25 = sub_10086A928;
            v26 = v18;
            v21 = _NSConcreteStackBlock;
            v22 = 1107296256;
            v23 = sub_1005C3688;
            v24 = &unk_1010C26D0;
            v19 = _Block_copy(&v21);
            v20 = v17;

            [v13 performBatchUpdates:v16 completion:v19];
            _Block_release(v19);
            _Block_release(v16);
          }
        }
      }
    }
  }
}

void sub_10081E4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a3;
  v61 = type metadata accessor for IndexPath();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v56 - v9;
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v56 - v15;
  v16 = *(a1 + 16);
  v60 = v5;
  v70 = v16;
  v56 = v7;
  v57 = v11;
  if (v16)
  {
    v62 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v68 = a1 + v62;
    v69 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_temporaryTracks;
    swift_beginAccess();
    v17 = 0;
    v18 = v11 + 16;
    v66 = *(v11 + 16);
    v73 = *(v11 + 72);
    v58 = v5 + 32;
    v19 = _swiftEmptyArrayStorage;
    v67 = v18;
    v64 = _swiftEmptyArrayStorage;
    v65 = (v18 - 8);
    v20 = v72;
    do
    {
      v71 = v17;
      v66(v20, v68 + v73 * v17, v10);
      v24 = *(a2 + v69);
      v25 = *(v24 + 16);

      v26 = v20;
      if (v25)
      {
        v27 = v24 + v62;
        sub_100866F00(&unk_10118A620, &type metadata accessor for Track);
        v28 = 0;
        while ((static MusicItem<>.==~ infix(_:_:)() & 1) == 0)
        {
          ++v28;
          v26 = v72;
          v27 += v73;
          if (v25 == v28)
          {
            goto LABEL_3;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1004995E0(0, *(v19 + 2) + 1, 1, v19);
        }

        v29 = v64;
        v23 = v71;
        v31 = *(v19 + 2);
        v30 = *(v19 + 3);
        if (v31 >= v30 >> 1)
        {
          v19 = sub_1004995E0((v30 > 1), v31 + 1, 1, v19);
        }

        *(v19 + 2) = v31 + 1;
        *&v19[8 * v31 + 32] = v28;
        IndexPath.init(item:section:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100499724(0, v29[2] + 1, 1, v29);
        }

        v32 = v60;
        v34 = v29[2];
        v33 = v29[3];
        if (v34 >= v33 >> 1)
        {
          v29 = sub_100499724(v33 > 1, v34 + 1, 1, v29);
        }

        v29[2] = v34 + 1;
        v35 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v64 = v29;
        (*(v32 + 32))(v29 + v35 + *(v32 + 72) * v34, v63, v61);
        v22 = v72;
      }

      else
      {
LABEL_3:
        v21 = v26;

        v22 = v21;
        v23 = v71;
      }

      v17 = v23 + 1;
      v20 = v22;
      (*v65)();
    }

    while (v17 != v70);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
    v64 = _swiftEmptyArrayStorage;
  }

  v36 = *(v19 + 2);
  if (v36)
  {
    v37 = (v57 + 8);
    while (v36 <= *(v19 + 2))
    {
      v38 = v36 - 1;
      v39 = *&v19[8 * v36 + 24];
      swift_beginAccess();
      sub_1004F42B8(v39, v13);
      (*v37)(v13, v10);
      swift_endAccess();
      sub_10084A954();
      v36 = v38;
      if (!v38)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:

    if (sub_100849A08())
    {
      goto LABEL_37;
    }
  }

  v40 = *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sections);
  v41 = *(v40 + 16);
  v42 = v64;
  if (v41)
  {
    v43 = 0;
    v44 = v40 + 32;
    v45 = v60;
    v46 = v56;
    while (*(v44 + v43) != 6)
    {
      if (v41 == ++v43)
      {
        goto LABEL_37;
      }
    }

    *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isShowingDetailSection) = 0;
    IndexPath.init(item:section:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_100499724(0, v42[2] + 1, 1, v42);
    }

    v48 = v42[2];
    v47 = v42[3];
    if (v48 >= v47 >> 1)
    {
      v42 = sub_100499724(v47 > 1, v48 + 1, 1, v42);
    }

    v42[2] = v48 + 1;
    (*(v45 + 32))(v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v48, v46, v61);
  }

LABEL_37:
  *(a2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_maintainSuggestedSongsPosition) = 1;
  v49 = sub_10083D5A8();
  v50 = sub_10083D330();
  if (v50 == *(v49 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls))
  {
    *(v49 + OBJC_IVAR____TtCV5Music6Header13Configuration__hidePlaybackControls) = v50;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v56 - 2) = v49;
    *(&v56 - 8) = v50;
    v75 = v49;
    sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(a2 + v52, v74, &unk_1011926C0);
  if (v74[8])
  {
    sub_1000095E8(v74, &unk_1011926C0);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v74, &unk_1011926C0);
    if (Strong)
    {
      v54 = sub_1006A6078();

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v54 deleteItemsAtIndexPaths:isa];

      return;
    }
  }
}

void sub_10081ECB8(uint64_t a1)
{
  v3 = type metadata accessor for MusicPropertySource();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 30 != 1 && (a1 >> 30 != 2 || a1 != 2147483652) && *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback) == 1)
  {
    v9 = enum case for MusicPropertySource.library(_:);
    v10 = *(v4 + 104);
    v11 = v5;
    (v10)(v8, enum case for MusicPropertySource.library(_:), v5, v6);
    v12 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v13 = *(v4 + 40);
    v13(v1 + v12, v8, v11);
    swift_endAccess();
    v10(v8, v9, v11);
    v14 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v13(v1 + v14, v8, v11);
    swift_endAccess();
    sub_10081B700();
  }
}

uint64_t sub_10081EE74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v95 = &v81 - v5;
  v94 = type metadata accessor for URL();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v88 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for MusicPropertySource();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v82 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v89 = &v81 - v12;
  v13 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v81 - v17;
  __chkstk_darwin(v18);
  v83 = &v81 - v19;
  __chkstk_darwin(v20);
  v87 = &v81 - v21;
  __chkstk_darwin(v22);
  v24 = &v81 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v81 - v27;
  v91 = v9;
  v31 = *(v9 + 48);
  v30 = v9 + 48;
  v29 = v31;
  v32 = a1;
  v33 = (v31)(a1, 1, v8, v26);
  v34 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
  v92 = v31;
  if (v33 != 1 || (v90 = v15, v35 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist, swift_beginAccess(), sub_1000089F8(v2 + v35, v28, &unk_1011814D0), LODWORD(v35) = v29(v28, 1, v8), v34 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier, sub_1000095E8(v28, &unk_1011814D0), v36 = v35 == 1, v15 = v90, v36))
  {
    sub_1000089F8(v32, v24, &unk_1011814D0);
    if (v29(v24, 1, v8) == 1)
    {
      sub_1000095E8(v24, &unk_1011814D0);
      v43 = v8;
    }

    else
    {
      v90 = v15;
      v37 = v91;
      v38 = *(v91 + 32);
      v39 = v89;
      v38(v89, v24, v8);
      v40 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      v41 = v2 + v40;
      v42 = v87;
      sub_1000089F8(v41, v87, &unk_1011814D0);
      v81 = v30;
      v43 = v8;
      if (v29(v42, 1, v8) == 1)
      {
        (*(v37 + 8))(v39, v8);
        sub_1000095E8(v42, &unk_1011814D0);
        v15 = v90;
        v34 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
      }

      else
      {
        v45 = v82;
        v38(v82, v42, v8);
        if (qword_10117F610 != -1)
        {
          swift_once();
        }

        v46 = v89;
        v47 = Collaboration.Manager.isCollaborationPossible(for:)() & 1;
        v48 = Collaboration.Manager.isCollaborationPossible(for:)();
        v15 = v90;
        v34 = &OBJC_IVAR____TtCCE5MusicO9MusicCore7Library3Tab8FacetTab_facetIdentifier;
        if (v47 == (v48 & 1))
        {
          v53 = *(v91 + 8);
          v53(v45, v43);
          v53(v46, v43);
        }

        else
        {
          v49 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
          swift_beginAccess();
          sub_1000089F8(v2 + v49, &v97, &unk_1011926C0);
          v50 = v91;
          if (BYTE8(v97))
          {
            sub_1000095E8(&v97, &unk_1011926C0);
          }

          else
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            sub_1000095E8(&v97, &unk_1011926C0);
            if (Strong)
            {
              sub_10069F67C();
            }
          }

          v55 = *(v50 + 8);
          v55(v82, v43);
          v55(v46, v43);
        }
      }
    }
  }

  else
  {
    v43 = v8;
    *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    v44 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v2 + v44, &v97, &unk_1011926C0);
    if (BYTE8(v97))
    {
      sub_1000095E8(&v97, &unk_1011926C0);
    }

    else
    {
      v51 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v97, &unk_1011926C0);
      if (v51)
      {
        sub_10069F67C();
      }
    }

    sub_1000089F8(v2 + v44, &v97, &unk_1011926C0);
    if (BYTE8(v97))
    {
      sub_1000095E8(&v97, &unk_1011926C0);
    }

    else
    {
      v52 = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v97, &unk_1011926C0);
      if (v52)
      {
        if (v52[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent])
        {
          v52[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent] = 0;
          sub_1006A4A18();
        }
      }
    }
  }

  sub_100820758();
  v56 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v56, &v97, &unk_1011926C0);
  if (BYTE8(v97))
  {
    v57 = &unk_1011926C0;
  }

  else
  {
    v58 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(&v97, &unk_1011926C0);
    if (!v58)
    {
      goto LABEL_35;
    }

    sub_10069F9B8();

    v59 = v34[82];
    swift_beginAccess();
    v60 = v2 + v59;
    v61 = v83;
    sub_1000089F8(v60, v83, &unk_1011814D0);
    if (v92(v61, 1, v43) == 1)
    {
      sub_1000095E8(v61, &unk_1011814D0);
      v97 = 0u;
      v98 = 0u;
      v99 = 0;
    }

    else
    {
      *(&v98 + 1) = v43;
      v99 = &off_1010B2320;
      v62 = sub_10001C8B8(&v97);
      (*(v91 + 32))(v62, v61, v43);
    }

    v63 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v64 = v85;
    v65 = v84;
    v66 = v86;
    (*(v85 + 16))(v84, v2 + v63, v86);
    v67 = sub_100818E5C();
    sub_100558458(&v97, v65, v67 & 1);

    (*(v64 + 8))(v65, v66);
    v57 = &unk_101192850;
  }

  sub_1000095E8(&v97, v57);
LABEL_35:
  sub_100840468();
  sub_10083F3AC();
  v68 = v34[82];
  swift_beginAccess();
  v69 = v2 + v68;
  v70 = v96;
  sub_1000089F8(v69, v96, &unk_1011814D0);
  sub_1000089F8(v70, v15, &unk_1011814D0);
  if (v92(v15, 1, v43) == 1)
  {
    sub_1000095E8(v15, &unk_1011814D0);
    v71 = &off_10109AEE0;
  }

  else
  {
    v72 = Playlist.supportsSing.getter();
    (*(v91 + 8))(v15, v43);
    v71 = &off_10109AEE0;
    if (v72 != 2 && (v72 & 1) != 0)
    {
      v71 = &off_10109AEB8;
    }
  }

  v73 = sub_10010E594(v71);
  sub_1004528A0(v73);

  sub_1000095E8(v96, &unk_1011814D0);
  v74 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_collaborationURL;
  swift_beginAccess();
  v75 = v2 + v74;
  v76 = v95;
  sub_1000089F8(v75, v95, &qword_101183A20);
  if ((*(v93 + 48))(v76, 1, v94) == 1)
  {
    return sub_1000095E8(v95, &qword_101183A20);
  }

  v78 = v93;
  v79 = v88;
  v80 = v94;
  (*(v93 + 32))(v88, v95, v94);
  sub_100831124(v79);
  return (*(v78 + 8))(v79, v80);
}

void sub_10081FAC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
    if ((~v1 & 0xF000000000000007) == 0 || v1 < 0)
    {
    }

    else
    {
      v2 = __chkstk_darwin(Strong);

      dispatch thunk of MusicAutoupdatingResponse.update(_:)();
      sub_1004E6028(v1);
    }
  }
}

uint64_t sub_10081FB98(char *a1)
{
  v2 = sub_10010FC20(&unk_1011A46C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_10010FC20(&qword_10118A3B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1008260A0(v4);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) == 1)
  {
    v10 = *(v6 + 32);
    v10(v8, a1, v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_1000095E8(v4, &unk_1011A46C0);
    }
  }

  else
  {
    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 32);
    v10(v8, v4, v5);
  }

  return (v10)(a1, v8, v5);
}

uint64_t sub_10081FD8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController;
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController) = a1;

  v4 = *(v1 + v2);
  if (v4)
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = (v4 + OBJC_IVAR____TtC9MusicCore25PlaylistSortingController_trackListSortDidChange);
    swift_beginAccess();
    v7 = *v6;
    *v6 = sub_10086A908;
    v6[1] = v5;

    sub_100020438(v7);
  }

  return result;
}

uint64_t sub_10081FE6C()
{
  v58 = type metadata accessor for MusicLibrary.AddStatus();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v50 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10010FC20(&unk_1011A49D0);
  __chkstk_darwin(v55);
  v57 = &v50 - v2;
  v3 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v3 - 8);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = &v50 - v6;
  __chkstk_darwin(v7);
  v60 = &v50 - v8;
  v9 = type metadata accessor for MusicPropertySource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v50 - v13;
  v15 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v50 - v16;
  v18 = type metadata accessor for Playlist();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v23 = v0;
  sub_1000089F8(v0 + v22, v17, &unk_1011814D0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v24 = &unk_1011814D0;
    v25 = v17;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v26 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v10 + 16))(v14, v0 + v26, v9);
    v27 = v61;
    (*(v10 + 104))(v61, enum case for MusicPropertySource.catalog(_:), v9);
    LOBYTE(v26) = static MusicPropertySource.== infix(_:_:)();
    v28 = *(v10 + 8);
    v28(v27, v9);
    v28(v14, v9);
    if (v26 & 1) == 0 || (*(v23 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback))
    {
      (*(v19 + 8))(v21, v18);
      goto LABEL_7;
    }

    v31 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(v23 + v31, &v62, &unk_1011926C0);
    v52 = v19;
    v51 = v21;
    if (v63)
    {
      sub_1000095E8(&v62, &unk_1011926C0);
      v32 = 1;
      v34 = v57;
      v33 = v58;
      v35 = v56;
      v37 = v59;
      v36 = v60;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v62, &unk_1011926C0);
      v34 = v57;
      v33 = v58;
      v35 = v56;
      v37 = v59;
      v36 = v60;
      if (Strong)
      {
        v39 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v32 = 0;
      }

      else
      {
        v32 = 1;
      }
    }

    v40 = *(v35 + 56);
    v40(v36, v32, 1, v33);
    (*(v35 + 104))(v37, enum case for MusicLibrary.AddStatus.added(_:), v33);
    v40(v37, 0, 1, v33);
    v41 = *(v55 + 48);
    sub_1000089F8(v36, v34, &unk_101191A70);
    sub_1000089F8(v37, v34 + v41, &unk_101191A70);
    v42 = v37;
    v43 = *(v35 + 48);
    if (v43(v34, 1, v33) == 1)
    {
      sub_1000095E8(v42, &unk_101191A70);
      sub_1000095E8(v36, &unk_101191A70);
      (*(v52 + 8))(v51, v18);
      v44 = v34;
      if (v43(v34 + v41, 1, v33) == 1)
      {
        sub_1000095E8(v34, &unk_101191A70);
        v29 = 1;
        return v29 & 1;
      }
    }

    else
    {
      v45 = v54;
      sub_1000089F8(v34, v54, &unk_101191A70);
      v44 = v34;
      if (v43(v34 + v41, 1, v33) != 1)
      {
        v46 = v34 + v41;
        v47 = v53;
        (*(v35 + 32))(v53, v46, v33);
        sub_100866F00(&qword_101185CC8, &type metadata accessor for MusicLibrary.AddStatus);
        v48 = v45;
        v29 = dispatch thunk of static Equatable.== infix(_:_:)();
        v49 = *(v35 + 8);
        v49(v47, v33);
        sub_1000095E8(v59, &unk_101191A70);
        sub_1000095E8(v60, &unk_101191A70);
        (*(v52 + 8))(v51, v18);
        v49(v48, v33);
        sub_1000095E8(v44, &unk_101191A70);
        return v29 & 1;
      }

      sub_1000095E8(v59, &unk_101191A70);
      sub_1000095E8(v60, &unk_101191A70);
      (*(v52 + 8))(v51, v18);
      (*(v35 + 8))(v45, v33);
    }

    v24 = &unk_1011A49D0;
    v25 = v44;
  }

  sub_1000095E8(v25, v24);
LABEL_7:
  v29 = 0;
  return v29 & 1;
}

void sub_100820758()
{
  v1 = v0;
  v72 = type metadata accessor for MusicPropertySource();
  v71 = *(v72 - 8);
  v2 = __chkstk_darwin(v72);
  v70 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v69 = &v68 - v4;
  v5 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v5 - 8);
  v80 = &v68 - v6;
  v74 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v74);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v78 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v68 - v12;
  v14 = sub_10010FC20(&unk_1011814D0);
  v15 = __chkstk_darwin(v14 - 8);
  v79 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v77 = &v68 - v18;
  v19 = __chkstk_darwin(v17);
  v76 = &v68 - v20;
  v21 = __chkstk_darwin(v19);
  v73 = &v68 - v22;
  __chkstk_darwin(v21);
  v24 = &v68 - v23;
  v25 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v25 - 8);
  v27 = &v68 - v26;
  sub_10082EFFC();
  v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v1 + v28, v24, &unk_1011814D0);
  v29 = *(v9 + 48);
  v81 = v9 + 48;
  v82 = v29;
  if (v29(v24, 1, v8))
  {
    v30 = v13;
    v31 = v9;
    sub_1000095E8(v24, &unk_1011814D0);
    v32 = type metadata accessor for Artwork();
    (*(*(v32 - 8) + 56))(v27, 1, 1, v32);
  }

  else
  {
    (*(v9 + 16))(v13, v24, v8);
    sub_1000095E8(v24, &unk_1011814D0);
    Playlist.artwork.getter();
    v31 = v9;
    v30 = v13;
    (*(v9 + 8))(v13, v8);
  }

  v33 = v8;
  sub_100818884(v27);
  v34 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v1 + v34, v83, &unk_1011926C0);
  v35 = v28;
  if (v84)
  {
    sub_1000095E8(v83, &unk_1011926C0);
    v36 = v31;
    v37 = v78;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v83, &unk_1011926C0);
    v36 = v31;
    v37 = v78;
    if (Strong)
    {
      sub_1006A26DC();
    }
  }

  sub_1000089F8(v1 + v34, v83, &unk_1011926C0);
  v39 = v82;
  if (v84)
  {
    sub_1000095E8(v83, &unk_1011926C0);
  }

  else
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v83, &unk_1011926C0);
    if (v40)
    {
      v41 = [v40 navigationItem];

      v42 = v73;
      sub_1000089F8(v1 + v35, v73, &unk_1011814D0);
      if (v39(v42, 1, v8))
      {
        sub_1000095E8(v42, &unk_1011814D0);
        v43 = 0;
      }

      else
      {
        (*(v36 + 16))(v30, v42, v8);
        sub_1000095E8(v42, &unk_1011814D0);
        Playlist.name.getter();
        (*(v36 + 8))(v30, v8);
        v43 = String._bridgeToObjectiveC()();
        v39 = v82;
      }

      [v41 setBackButtonTitle:v43];
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController))
  {
    v44 = v76;
    sub_1000089F8(v1 + v35, v76, &unk_1011814D0);
    type metadata accessor for PlaylistSortingController();
    swift_allocObject();
    v45 = PlaylistSortingController.init(_:)(v44);
    sub_10081FD8C(v45);
  }

  v46 = v77;
  sub_1000089F8(v1 + v35, v77, &unk_1011814D0);
  if (v39(v46, 1, v8) == 1)
  {
    sub_1000095E8(v46, &unk_1011814D0);
  }

  else
  {
    v47 = *(v36 + 32);
    v47(v37, v46, v8);
    v48 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_suggestedSongsDataSource);
    if (v48)
    {
      v49 = v75;
      v47(v75, v37, v33);
      swift_storeEnumTagMultiPayload();
      v50 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
      swift_beginAccess();

      sub_10086A758(v49, v48 + v50);
      swift_endAccess();
    }

    else
    {
      (*(v36 + 8))(v37, v8);
    }

    v39 = v82;
  }

  sub_10082EBAC();
  v51 = v79;
  sub_1000089F8(v1 + v35, v79, &unk_1011814D0);
  if (v39(v51, 1, v33))
  {
    sub_1000095E8(v51, &unk_1011814D0);
    v52 = sub_10010FC20(&qword_10118C2B0);
    v53 = v80;
    (*(*(v52 - 8) + 56))(v80, 1, 1, v52);
LABEL_26:
    v55 = &qword_10119A808;
    v56 = v53;
LABEL_27:
    sub_1000095E8(v56, v55);
    goto LABEL_28;
  }

  (*(v36 + 16))(v30, v51, v33);
  sub_1000095E8(v51, &unk_1011814D0);
  v53 = v80;
  Playlist.entries.getter();
  (*(v36 + 8))(v30, v33);
  v54 = sub_10010FC20(&qword_10118C2B0);
  if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
  {
    goto LABEL_26;
  }

  sub_1000095E8(v53, &qword_10119A808);
  v57 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
  swift_beginAccess();
  v58 = v71;
  v59 = v69;
  v60 = v72;
  (*(v71 + 16))(v69, v1 + v57, v72);
  v61 = v70;
  (*(v58 + 104))(v70, enum case for MusicPropertySource.library(_:), v60);
  LOBYTE(v57) = static MusicPropertySource.== infix(_:_:)();
  v62 = *(v58 + 8);
  v62(v61, v60);
  v62(v59, v60);
  if (v57 & 1) != 0 || (v66 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse), (~v66 & 0xF000000000000007) != 0) && (, v67 = dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter(), sub_1004E6028(v66), (v67))
  {
    v63 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController);
    if (v63)
    {
      v64 = v76;
      sub_1000089F8(v1 + v35, v76, &unk_1011814D0);
      v65 = *(*v63 + 128);
      swift_beginAccess();

      sub_1002190E0(v64, v63 + v65, &unk_1011814D0);
      swift_endAccess();
      sub_1008021C4();

      v56 = v64;
      v55 = &unk_1011814D0;
      goto LABEL_27;
    }
  }

LABEL_28:
  sub_100819A28();
}

uint64_t sub_1008212F0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_actionableStateController) = a1;

  v2 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
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

unint64_t sub_1008213D8(void *a1, void *a2)
{
  v3 = v2;
  v149 = a1;
  v150 = a2;
  v4 = type metadata accessor for UUID();
  v160 = *(v4 - 8);
  v161 = v4;
  __chkstk_darwin(v4);
  v159 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011838D0);
  v156 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v157 = v7;
  v158 = v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v164 = (v132 - v9);
  v10 = sub_10010FC20(&unk_1011845D0);
  v154 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v12 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = v11;
  __chkstk_darwin(v13);
  v163 = v132 - v14;
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v17 = v132 - v16;
  v18 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v18 - 8);
  v20 = v132 - v19;
  v21 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v21 - 8);
  v151 = v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v153 = v132 - v24;
  __chkstk_darwin(v25);
  v27 = v132 - v26;
  __chkstk_darwin(v28);
  v30 = v132 - v29;
  v31 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v31 - 8);
  v152 = v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v162 = v132 - v34;
  v35 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v35 - 8);
  v37 = v132 - v36;
  v38 = type metadata accessor for Playlist();
  v39 = *(v38 - 8);
  v166 = v38;
  v167 = v39;
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v148 = v132 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v165 = v132 - v42;
  v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(&v3[v43], &v182, &unk_1011926C0);
  if (v183)
  {
    v44 = &unk_1011926C0;
    v45 = &v182;
LABEL_6:
    sub_1000095E8(v45, v44);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v182, &unk_1011926C0);
  if (!Strong)
  {
    return 0;
  }

  v146 = v12;
  v147 = Strong;
  v47 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(&v3[v47], v37, &unk_1011814D0);
  v48 = v166;
  v49 = v167;
  if ((*(v167 + 48))(v37, 1, v166) == 1)
  {

    v44 = &unk_1011814D0;
    v45 = v37;
    goto LABEL_6;
  }

  v139 = *(v49 + 32);
  v140 = v49 + 32;
  v139(v165, v37, v48);
  sub_10010FC20(&qword_101191F98);
  v51 = swift_allocObject();
  v141 = xmmword_100EBDC20;
  *(v51 + 16) = xmmword_100EBDC20;
  *(v51 + 32) = 1541;
  if (v3[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent] == 1)
  {
    v52 = sub_1004992D0(1, 3, 1, v51);
    *(v52 + 2) = 3;
    v142._rawValue = v52;
    v52[34] = 1;
    v48 = v166;
  }

  else
  {
    v142._rawValue = v51;
  }

  sub_10010FC20(&unk_101183900);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100EBC6B0;
  *(v53 + 56) = v48;
  *(v53 + 64) = &protocol witness table for Playlist;
  v138 = v53;
  v54 = sub_10001C8B8((v53 + 32));
  v55 = v165;
  v136 = *(v167 + 16);
  v137 = v167 + 16;
  v136(v54, v165, v48);
  v56 = [v147 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v145 = v182;
  v57 = type metadata accessor for IndexPath();
  (*(*(v57 - 8) + 56))(v17, 1, 1, v57);
  sub_1008564D0(v17, v20);
  sub_1000095E8(v17, &unk_10118BCE0);
  v58 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v58 - 8) + 56))(v20, 0, 1, v58);
  sub_10086772C(v20, v30, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  sub_100867794(v20, type metadata accessor for PlaybackIntentDescriptor);
  v59 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v60 = *(v59 - 8);
  v133 = *(v60 + 56);
  v134 = v59;
  v132[1] = v60 + 56;
  (v133)(v30, 0, 1);
  v61 = type metadata accessor for PlaylistDetailDataSource(0);
  v185 = &off_1010C1940;
  v184 = v61;
  v182 = v3;
  v62 = qword_10117F608;
  v135 = v3;
  v63 = v166;
  if (v62 != -1)
  {
    swift_once();
  }

  v64 = qword_101218AD8;
  sub_1000089F8(v30, v27, &unk_1011838E0);
  v144 = v64;
  v65 = v147;
  v143 = UIViewController.playActivityInformation.getter();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1000089F8(&v182, &v174, &unk_101183910);
  if (*(&v175 + 1))
  {
    sub_100059A8C(&v174, &v178);
  }

  else
  {
    *&v186 = v65;
    sub_100009F78(0, &qword_101183D40);
    v72 = v65;
    sub_10010FC20(&unk_101183920);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v189, &v178);
      v55 = v165;
      v63 = v166;
    }

    else
    {
      v191 = 0;
      v189 = 0u;
      v190 = 0u;
      *&v178 = v72;
      v73 = v72;
      v74 = String.init<A>(reflecting:)();
      v179 = &type metadata for Player.CommandIssuerIdentity;
      v180 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v178 = v74;
      *(&v178 + 1) = v75;
      v55 = v165;
      v63 = v166;
      if (*(&v190 + 1))
      {
        sub_1000095E8(&v189, &unk_101183910);
      }
    }

    if (*(&v175 + 1))
    {
      sub_1000095E8(&v174, &unk_101183910);
    }
  }

  v76 = v162;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v144, v27, v143, v67, v69, v71, &v178, v162);
  sub_1000095E8(v30, &unk_1011838E0);
  sub_1000095E8(&v182, &unk_101183910);
  v77 = type metadata accessor for Actions.PlaybackContext();
  v78 = *(v77 - 8);
  (*(v78 + 56))(v76, 0, 1, v77);
  v79 = type metadata accessor for PlaylistContext();
  (*(*(v79 - 8) + 56))(v163, 1, 1, v79);
  sub_10012B7A8(v149, &v182);
  sub_10085ABF0(v164);
  v80 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v81 = v148;
  v136(v148, v55, v63);
  v82 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v83 = (v40 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  v85 = v147;
  *(v84 + 16) = v80;
  *(v84 + 24) = v85;
  v139((v84 + v82), v81, v63);
  v143 = v84;
  *(v84 + v83) = v150;
  sub_100008FE4(v138 + 32, v181);
  v86 = v85;
  v148 = v80;

  sub_1000089F8(&v182, &v174, &unk_1011845E0);
  if (v177 == 1)
  {
    v191 = 0;
    v189 = 0u;
    v190 = 0u;
    v192 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v86, &v189, &v178);
    v87 = v152;
    if (v177 != 1)
    {
      sub_1000095E8(&v174, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v174, &v178);
    v87 = v152;
  }

  swift_getObjectType();
  v88 = swift_conformsToProtocol2();
  if (v88)
  {
    v147 = v88;
    v89 = v86;
    v150 = v86;
  }

  else
  {
    v150 = 0;
    v147 = 0;
  }

  v152 = swift_allocBox();
  v91 = v90;
  sub_1000089F8(v162, v87, &unk_10118AB20);
  v92 = *(v78 + 48);
  v93 = v92(v87, 1, v77);
  v149 = v86;
  if (v93 == 1)
  {
    v94 = v153;
    v133(v153, 1, 1, v134);
    v176 = 0;
    v174 = 0u;
    v175 = 0u;
    sub_1000089F8(v94, v151, &unk_1011838E0);
    v95 = v144;
    v96 = UIViewController.playActivityInformation.getter();
    v144 = v97;
    v140 = v98;
    v100 = v99;
    sub_1000089F8(&v174, &v172, &unk_101183910);
    if (v173)
    {
      sub_100059A8C(&v172, &v186);
    }

    else
    {
      v139 = v95;
      v171 = v86;
      sub_100009F78(0, &qword_101183D40);
      v101 = v86;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v168, &v186);
      }

      else
      {
        v170 = 0;
        v168 = 0u;
        v169 = 0u;
        *&v186 = v101;
        v102 = v101;
        v103 = String.init<A>(reflecting:)();
        *(&v187 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v188 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v186 = v103;
        *(&v186 + 1) = v104;
        if (*(&v169 + 1))
        {
          sub_1000095E8(&v168, &unk_101183910);
        }
      }

      v86 = v149;
      v95 = v139;
      if (v173)
      {
        sub_1000095E8(&v172, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v95, v151, v96, v144, v140, v100, &v186, v91);
    sub_1000095E8(&v174, &unk_101183910);
    sub_1000095E8(v153, &unk_1011838E0);
    if (v92(v87, 1, v77) != 1)
    {
      sub_1000095E8(v87, &unk_10118AB20);
    }
  }

  else
  {
    sub_100869470(v87, v91, type metadata accessor for Actions.PlaybackContext);
  }

  v105 = &v91[*(v77 + 28)];
  sub_1000089F8(v105, &v186, &unk_101183910);
  if (*(&v187 + 1))
  {
    sub_100059A8C(&v186, &v174);
  }

  else
  {
    *&v174 = v86;
    v106 = v86;
    v107 = String.init<A>(reflecting:)();
    *(&v175 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v176 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v174 = v107;
    *(&v174 + 1) = v108;
    if (*(&v187 + 1))
    {
      sub_1000095E8(&v186, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v109 = swift_allocObject();
  *(v109 + 16) = v141;
  *(v109 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v109 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v109 + 32) = 0x4D747865746E6F43;
  *(v109 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v174, v109 + 72);
  v110 = static Player.CommandIssuer<>.combining(_:)();
  v112 = v111;

  sub_10000959C(&v174);
  *(&v175 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v176 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v174 = v110;
  *(&v174 + 1) = v112;
  sub_10006B010(&v174, v105, &unk_101183910);
  sub_100008FE4(v181, &v174);
  sub_10010FC20(&unk_10118AB50);
  v153 = String.init<A>(describing:)();
  v151 = v113;
  v144 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v181, &v172);
  sub_10012B7A8(&v178, &v174);
  v114 = v158;
  sub_1000089F8(v164, v158, &unk_1011838D0);
  v115 = v146;
  sub_1000089F8(v163, v146, &unk_1011845D0);
  v116 = (*(v156 + 80) + 160) & ~*(v156 + 80);
  v117 = (v157 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v117 + 15) & 0xFFFFFFFFFFFFFFF8;
  v119 = (*(v154 + 80) + v118 + 8) & ~*(v154 + 80);
  v120 = (v119 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v121 = (v119 + v155 + 31) & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  sub_100059A8C(&v172, v122 + 16);
  *(v122 + 56) = v145;
  sub_10012B828(&v174, v122 + 64);
  sub_10003D17C(v114, v122 + v116, &unk_1011838D0);
  *(v122 + v117) = v144;
  *(v122 + v118) = v152;
  sub_10003D17C(v115, v122 + v119, &unk_1011845D0);
  v123 = v122 + v120;
  v124 = v147;
  *v123 = v150;
  *(v123 + 8) = v124;
  *(v123 + 16) = 2;
  v125 = (v122 + v121);
  v126 = v143;
  *v125 = sub_10086A6C8;
  v125[1] = v126;
  swift_unknownObjectRetain();

  v127 = v159;
  UUID.init()();
  v128 = UUID.uuidString.getter();
  v130 = v129;
  (*(v160 + 8))(v127, v161);
  v193._countAndFlagsBits = v153;
  v193._object = v151;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v193, v128, v130, sub_10021953C, v122, &v186);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v178);
  sub_10000959C(v181);

  v131 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(v142, 0);

  v178 = v186;
  sub_100015BB0(&v178);
  v174 = v187;
  sub_100015BB0(&v174);

  sub_1000095E8(v164, &unk_1011838D0);
  sub_1000095E8(&v182, &unk_1011845E0);
  sub_1000095E8(v163, &unk_1011845D0);
  sub_1000095E8(v162, &unk_10118AB20);
  (*(v167 + 8))(v165, v166);

  return v131;
}

uint64_t sub_100822850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v5 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v5 - 8);
  v71 = (&v64 - v6);
  v70 = type metadata accessor for Playlist();
  v66 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101192860);
  __chkstk_darwin(v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for ContainerDetail.AttributionItem(0);
  v73 = *(v11 - 8);
  v12 = *(v73 + 64);
  __chkstk_darwin(v11);
  v68 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v65 = &v64 - v14;
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  __chkstk_darwin(v18);
  v72 = &v64 - v19;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v21 = Strong;
  v22 = sub_10083D5A8();
  v74 = a4;
  v23 = v22;

  swift_getKeyPath();
  *&v85[0] = v23;
  sub_100866F00(&unk_1011A4750, _s13ConfigurationCMa);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
  a4 = v74;

  if (v24 != 1)
  {
    goto LABEL_9;
  }

  v25 = sub_10003169C();
  if (!v25)
  {
    goto LABEL_9;
  }

  v26 = v25;
  swift_beginAccess();
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {

    (*(v73 + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v28 = v27;
  sub_10083C114(v10);

  if ((*(v73 + 48))(v10, 1, v11) == 1)
  {

LABEL_8:
    sub_1000095E8(v10, &qword_101192860);
LABEL_9:
    v29 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_10;
  }

  v48 = v72;
  sub_100869470(v10, v72, type metadata accessor for ContainerDetail.AttributionItem);
  (*(v66 + 16))(v69, v67, v70);
  sub_10086772C(v48, v17, type metadata accessor for ContainerDetail.AttributionItem);
  swift_beginAccess();
  v49 = swift_unknownObjectWeakLoadStrong();
  v64 = v26;
  if (v49)
  {
    v50 = v49;
    sub_10085ABF0(v71);
  }

  else
  {
    v51 = type metadata accessor for Actions.MetricsReportingContext();
    (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
  }

  v52 = v65;
  sub_10086772C(v17, v65, type metadata accessor for ContainerDetail.AttributionItem);
  v53 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v54 = v53 + v12;
  v55 = swift_allocObject();
  sub_100869470(v52, v55 + v53, type metadata accessor for ContainerDetail.AttributionItem);
  v56 = v68;
  sub_100869470(v17, v68, type metadata accessor for ContainerDetail.AttributionItem);
  v57 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  sub_100869470(v56, v58 + v53, type metadata accessor for ContainerDetail.AttributionItem);
  *(v58 + v57) = v64;
  Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v69, 0, 0, sub_1004E9A64, v55, &unk_100ECFFC0, v58, v71, v84, v70, &protocol witness table for Playlist);
  static Actions.GoToArtist.action(context:)(v84, v85);
  v86 = v84[0];

  sub_1000095E8(&v86, &qword_1011815E0);

  v79 = v85[4];
  v80 = v85[5];
  v81 = v85[6];
  v82 = v85[7];
  v75 = v85[0];
  v76 = v85[1];
  v77 = v85[2];
  v78 = v85[3];
  v59 = static ActionBuilder.buildExpression<A, B>(_:)(&v75, &type metadata for Actions.GoToArtist.Context, &type metadata for () + 8, &protocol witness table for Actions.GoToArtist.Context);
  v83[4] = v79;
  v83[5] = v80;
  v83[6] = v81;
  v83[7] = v82;
  v83[0] = v75;
  v83[1] = v76;
  v83[2] = v77;
  v83[3] = v78;
  sub_1000095E8(v83, &unk_101183950);
  sub_10010FC20(&unk_101183940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = v59;
  v61 = inited + 32;
  v62 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v61, &unk_10118AB80);
  v29 = static ActionBuilder.buildIf(_:)(v62);

  sub_100867794(v72, type metadata accessor for ContainerDetail.AttributionItem);
  a4 = v74;
LABEL_10:
  swift_beginAccess();
  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = *(v30 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController);
    v32 = v30;

    if (v31)
    {
      v33 = sub_10031EA10();
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = v35;

      *&v75 = v34;
      *(&v75 + 1) = v36;
      v37._countAndFlagsBits = 0x74726F532ELL;
      v37._object = 0xE500000000000000;
      String.append(_:)(v37);
      v38 = String._bridgeToObjectiveC()();

      *&v75 = v38;
      __chkstk_darwin(v39);
      v63 = &v75;
      LOBYTE(v33) = sub_10044D018(sub_10045D96C, (&v64 - 4), a4);

      if ((v33 & 1) == 0)
      {
        v44 = PlaylistSortingController.actionBuilder.getter();
        sub_10010FC20(&unk_101183940);
        v45 = swift_initStackObject();
        *(v45 + 16) = xmmword_100EBC6B0;
        *(v45 + 32) = v44;
        v46 = v45 + 32;
        v47 = static ActionBuilder.buildBlock(_:)();
        swift_setDeallocating();
        sub_1000095E8(v46, &unk_10118AB80);
        v40 = static ActionBuilder.buildIf(_:)(v47);

        goto LABEL_15;
      }
    }
  }

  v40 = static ActionBuilder.buildIf(_:)(0);
LABEL_15:
  sub_10010FC20(&unk_101183940);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_100EBDC20;
  *(v41 + 32) = v29;
  *(v41 + 40) = v40;
  v42 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_10010FC20(&unk_10118AB80);
  swift_arrayDestroy();
  return v42;
}

uint64_t sub_100823180()
{
  v1 = type metadata accessor for UUID();
  v54 = *(v1 - 8);
  v55 = v1;
  __chkstk_darwin(v1);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - v9;
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v56 = v0;
  sub_1000089F8(v0 + v11, v10, &unk_1011814D0);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1000095E8(v10, &unk_1011814D0);
    v12 = 0;
    v13 = 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1000095E8(v10, &unk_1011814D0);
    v12 = Playlist.id.getter();
    v13 = v14;
    (*(v5 + 8))(v7, v4);
  }

  v59 = v12;
  v60 = v13;
  sub_10010FC20(&unk_1011A49A0);
  v15 = String.init<A>(describing:)();
  v17 = v16;
  v18 = swift_allocObject();
  v19 = v56;
  swift_unknownObjectWeakInit();

  UUID.init()();
  v20 = UUID.uuidString.getter();
  v22 = v21;
  (*(v54 + 8))(v3, v55);
  v67._countAndFlagsBits = v15;
  v67._object = v17;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v67, v20, v22, sub_10086A6C0, v18, v61);

  v23 = _swiftEmptyArrayStorage;
  v24 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v63 = v61[0];
  sub_100015BB0(&v63);
  v62 = v61[1];
  sub_100015BB0(&v62);

  if (v24)
  {
    v25 = [v24 children];

    sub_100009F78(0, &qword_10118CDE0);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v26 = sub_10031EA10();
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v59 = v27;
  v60 = v29;
  v30._countAndFlagsBits = 0x74726F532ELL;
  v30._object = 0xE500000000000000;
  String.append(_:)(v30);
  v31 = String._bridgeToObjectiveC()();

  v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v19 + v32, &v59, &unk_1011926C0);
  if (v60)
  {
    sub_1000095E8(&v59, &unk_1011926C0);
LABEL_13:
    sub_10010FC20(&unk_1011845C0);
    result = swift_allocObject();
    *(result + 16) = xmmword_100EBC6B0;
    *(result + 32) = v31;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = v23;
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v59, &unk_1011926C0);
  if (!Strong)
  {
    goto LABEL_13;
  }

  memset(v64, 0, sizeof(v64));
  v65 = 0;
  v66 = xmmword_100EBCEF0;
  v34 = Strong;
  PresentationSource.init(viewController:position:)(v34, v64, &v59);
  sub_10010FC20(&unk_1011A49B0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100EBC6B0;
  v36 = sub_10031EA10();
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v57 = v37;
  v58 = v39;
  v40._countAndFlagsBits = 0x74726F532ELL;
  v40._object = 0xE500000000000000;
  String.append(_:)(v40);
  v41 = String._bridgeToObjectiveC()();

  *(v35 + 32) = v41;
  v42 = sub_1008213D8(&v59, v35);

  sub_10012BA6C(&v59);
  sub_10010FC20(&unk_1011845C0);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBDC20;
  *(v43 + 32) = v31;
  *(v43 + 40) = 0;
  *(v43 + 48) = 0;
  *(v43 + 56) = v23;
  v44 = v43;
  v45 = qword_10117F578;
  v46 = v31;

  if (v45 != -1)
  {
    swift_once();
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v60 = v47;
  v48._countAndFlagsBits = 0x676E6F532ELL;
  v48._object = 0xE500000000000000;
  String.append(_:)(v48);
  v49 = String._bridgeToObjectiveC()();

  if (v42)
  {
    v50 = [v42 children];
    sub_100009F78(0, &qword_10118CDE0);
    v51 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    *(v44 + 64) = v49;
    *(v44 + 72) = xmmword_100EE45F0;
    *(v44 + 88) = v51;
  }

  else
  {

    *(v44 + 64) = 0u;
    *(v44 + 80) = 0u;
  }

  return v44;
}

uint64_t sub_100823860()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = *(Strong + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController), v2 = Strong, , v2, v1))
  {
    v3 = PlaylistSortingController.actionBuilder.getter();
    sub_10010FC20(&unk_101183940);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    *(inited + 32) = v3;
    v5 = inited + 32;
    v6 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v5, &unk_10118AB80);
    v7 = static ActionBuilder.buildIf(_:)(v6);
  }

  else
  {
    v7 = static ActionBuilder.buildIf(_:)(0);
  }

  sub_10010FC20(&unk_101183940);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  *(v8 + 32) = v7;
  v9 = v8 + 32;
  v10 = static ActionBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_1000095E8(v9, &unk_10118AB80);
  return v10;
}

uint64_t sub_1008239C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  sub_10010FC20(&unk_1011814D0);
  v4[23] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181BE8);
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v6 = sub_10010FC20(&unk_1011A4990);
  v4[27] = v6;
  v4[28] = *(v6 - 8);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = type metadata accessor for MusicPropertySource();
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_101181BF0);
  v4[37] = v8;
  v4[38] = *(v8 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[40] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[41] = v10;
  v4[42] = v9;

  return _swift_task_switch(sub_100823C5C, v10, v9);
}

uint64_t sub_100823C5C()
{
  v1 = *(v0 + 160);
  if (v1)
  {
    v2 = *(v0 + 176);
    v3 = *(v0 + 152);
    swift_getKeyPath();
    *(v0 + 96) = v3;
    *(v0 + 104) = v1;
    type metadata accessor for Playlist();
    sub_100866F00(&unk_1011A47F0, &type metadata accessor for Playlist);

    MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
    v4 = MusicCatalogResourceRequest.configuration.modify();
    MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
    v4(v0 + 16, 0);
    sub_10010FC20(&qword_101183990);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100EE4600;
    sub_10010FC20(&unk_10118C1C0);
    *(v5 + 32) = static PartialMusicProperty<A>.entries.getter();
    *(v5 + 40) = static PartialMusicProperty<A>.tracks.getter();
    *(v5 + 48) = static PartialMusicProperty<A>.trackCount.getter();
    *(v5 + 56) = static PartialMusicProperty<A>.socialProfile.getter();
    *(v5 + 64) = static PartialMusicProperty<A>.curator.getter();
    *(v5 + 72) = static PartialMusicProperty<A>.radioShow.getter();
    *(v5 + 80) = static PartialMusicProperty<A>.genre.getter();
    *(v5 + 88) = static PartialMusicProperty<A>.collaborators.getter();
    *(v5 + 96) = static PartialMusicProperty<A>.editorialVideoArtworks.getter();
    *(v5 + 104) = static PartialMusicProperty<A>.entryContributors.getter();
    *(v5 + 112) = static PartialMusicProperty<A>.staticDetailTallArtwork.getter();
    MusicCatalogResourceRequest.properties.setter();
    v6 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents;
    *(v0 + 344) = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeEquivalents;
    if (*(v2 + v6) == 1)
    {
      sub_10010FC20(&qword_1011929C8);
      v7 = type metadata accessor for MusicCatalogResourceRequestOption();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100EBC6B0;
      (*(v8 + 104))(v10 + v9, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v7);
      MusicCatalogResourceRequest.options.setter();
    }

    v11 = *(v0 + 288);
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    v14 = *(v0 + 168);
    MusicCatalogResourceRequest.prewarmForPlayback.setter();
    v15 = *(v13 + 16);
    v15(v11, v14, v12);
    v16 = *(v13 + 88);
    v17 = v16(v11, v12);
    v18 = enum case for MusicPropertySource.catalog(_:);
    *(v0 + 416) = enum case for MusicPropertySource.catalog(_:);
    if (v17 != v18)
    {
      v19 = *(v0 + 248);
      if (v17 == enum case for MusicPropertySource.library(_:))
      {
        v35 = v17;
        v20 = *(v0 + 280);
        v21 = *(v0 + 176);
        v22 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
        swift_beginAccess();
        v15(v20, v21 + v22, v19);
        v23 = v16(v20, v19);
        if (v23 == v18)
        {
          sub_100826538();
          sub_1008369E8();
        }

        else if (v23 == v35)
        {
          sub_100827458();
        }

        else
        {
          (*(*(v0 + 256) + 8))(*(v0 + 280), *(v0 + 248));
        }
      }

      else
      {
        (*(*(v0 + 256) + 8))(*(v0 + 288), *(v0 + 248));
      }
    }

    v30 = swift_task_alloc();
    *(v0 + 352) = v30;
    *v30 = v0;
    v30[1] = sub_100824220;
    v31 = *(v0 + 296);
    v32 = *(v0 + 240);

    return MusicCatalogResourceRequest.response()(v32, v31);
  }

  else
  {
    v24 = *(v0 + 272);
    v25 = *(v0 + 248);
    v26 = *(v0 + 256);
    v27 = *(v0 + 176);

    v28 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v26 + 16))(v24, v27 + v28, v25);
    v29 = (*(v26 + 88))(v24, v25);
    if (v29 == enum case for MusicPropertySource.catalog(_:))
    {
      sub_100826538();
      sub_1008369E8();
    }

    else if (v29 == enum case for MusicPropertySource.library(_:))
    {
      sub_100827458();
    }

    else
    {
      (*(*(v0 + 256) + 8))(*(v0 + 272), *(v0 + 248));
    }

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_100824220()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);
  if (v0)
  {
    v5 = sub_1008244DC;
  }

  else
  {
    v5 = sub_10082435C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10082435C()
{
  v1 = v0[38];
  v11 = v0[37];
  v12 = v0[39];
  v2 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v6 = v0[25];
  v5 = v0[26];
  v8 = v0[23];
  v7 = v0[24];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v8);
  (*(v6 + 8))(v5, v7);
  sub_100825284(v8);
  sub_1000095E8(v8, &unk_1011814D0);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1008244DC()
{
  v71 = v0;
  *(v0 + 112) = *(v0 + 360);
  swift_errorRetain();
  *(v0 + 368) = sub_10010FC20(&qword_1011824A0);
  *(v0 + 376) = sub_100009F78(0, &qword_1011929C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_23;
  }

  v1 = *(v0 + 344);
  v2 = *(v0 + 176);
  v3 = *(v0 + 120);
  *(v0 + 384) = v3;
  if (*(v2 + v1))
  {
    v4 = *(v0 + 256);

    v5 = *(v4 + 104);
LABEL_16:
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v35 = *(v0 + 248);
    v5(v33, *(v0 + 416), v35);
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
        v70 = v42;
        *v41 = 136446210;
        v43 = v38;
        v44 = [v43 description];
        v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        v48 = sub_1000105AC(v45, v47, &v70);

        *(v41 + 4) = v48;
        _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve catalog playlist with error=%{public}s", v41, 0xCu);
        sub_10000959C(v42);
      }

      v50 = *(v0 + 304);
      v49 = *(v0 + 312);
      v51 = *(v0 + 296);
      v52 = v38;
      sub_1008259A0(v38);

      (*(v50 + 8))(v49, v51);

LABEL_28:

      v66 = *(v0 + 8);

      return v66();
    }

LABEL_23:

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
    v57 = *(v0 + 360);
    v58 = *(v0 + 304);
    v59 = *(v0 + 312);
    v60 = *(v0 + 296);
    if (v56)
    {
      v69 = *(v0 + 312);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v70 = v62;
      *v61 = 136446210;
      *(v0 + 128) = v57;
      swift_errorRetain();
      v63 = String.init<A>(describing:)();
      v65 = sub_1000105AC(v63, v64, &v70);

      *(v61 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v54, v55, "Failed to retrieve catalog playlist with error=%{public}s", v61, 0xCu);
      sub_10000959C(v62);

      (*(v58 + 8))(v69, v60);
    }

    else
    {

      (*(v58 + 8))(v59, v60);
    }

    goto LABEL_28;
  }

  v7 = *(v0 + 256);
  v6 = *(v0 + 264);
  v8 = *(v0 + 248);
  v5 = *(v7 + 104);
  v5(v6, *(v0 + 416), v8);
  v68 = v3;
  v9 = v3;
  v10 = static MusicPropertySource.== infix(_:_:)();
  (*(v7 + 8))(v6, v8);

  if ((v10 & 1) == 0)
  {

    v3 = v68;
    goto LABEL_16;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 392) = sub_1000060E4(v11, qword_1012193F8);
  v12 = v9;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v70 = v16;
    *v15 = 136446210;
    v17 = v12;
    v18 = [v17 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = sub_1000105AC(v19, v21, &v70);

    *(v15 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "Failed to retrieve catalog playlist with error=%{public}s", v15, 0xCu);
    sub_10000959C(v16);
  }

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Attempting request including equivalents.", v25, 2u);
  }

  sub_10010FC20(&qword_1011929C8);
  v26 = type metadata accessor for MusicCatalogResourceRequestOption();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_100EBC6B0;
  (*(v27 + 104))(v29 + v28, enum case for MusicCatalogResourceRequestOption.findEquivalents(_:), v26);
  MusicCatalogResourceRequest.options.setter();
  v30 = swift_task_alloc();
  *(v0 + 400) = v30;
  *v30 = v0;
  v30[1] = sub_100824D38;
  v31 = *(v0 + 296);
  v32 = *(v0 + 232);

  return MusicCatalogResourceRequest.response()(v32, v31);
}

uint64_t sub_100824D38()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100824FE4;
  }

  else
  {

    v3 = *(v2 + 328);
    v4 = *(v2 + 336);
    v5 = sub_100824E54;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100824E54()
{
  v13 = v0[39];
  v1 = v0[38];
  v11 = v0[48];
  v12 = v0[37];
  v2 = v0[28];
  v10 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];

  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v7);
  (*(v5 + 8))(v4, v6);
  sub_100825284(v7);

  sub_1000095E8(v7, &unk_1011814D0);
  (*(v2 + 8))(v10, v3);
  (*(v1 + 8))(v13, v12);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100824FE4()
{
  v20 = v0;
  *(v0 + 136) = *(v0 + 408);
  swift_errorRetain();
  result = swift_dynamicCast();
  if (result)
  {

    v2 = *(v0 + 144);
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
      _os_log_impl(&_mh_execute_header, v3, v4, "Failed to retrieve catalog playlist when attempting to include equivalents with error=%{public}s", v5, 0xCu);
      sub_10000959C(v6);
    }

    v13 = *(v0 + 384);
    v15 = *(v0 + 304);
    v14 = *(v0 + 312);
    v16 = *(v0 + 296);
    v17 = v2;
    sub_1008259A0(v2);

    (*(v15 + 8))(v14, v16);

    v18 = *(v0 + 8);

    return v18();
  }

  return result;
}

void sub_100825284(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicPropertySource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v57 = &v48 - v8;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v12 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v48 - v16;
  __chkstk_darwin(v18);
  v20 = &v48 - v19;
  v21 = type metadata accessor for Playlist();
  __chkstk_darwin(v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v26 = v25;
  v28 = v27;
  sub_1000089F8(v24, v20, &unk_1011814D0);
  if ((*(v28 + 48))(v20, 1, v26) == 1)
  {
    sub_1000095E8(v20, &unk_1011814D0);
    v29 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    (*(v5 + 16))(v11, v2 + v29, v4);
    v30 = v57;
    (*(v5 + 104))(v57, enum case for MusicPropertySource.catalog(_:), v4);
    LOBYTE(v29) = static MusicPropertySource.== infix(_:_:)();
    v31 = *(v5 + 8);
    v31(v30, v4);
    v31(v11, v4);
    if (v29)
    {
      sub_1008259A0(0);
    }
  }

  else
  {
    (*(v28 + 32))(v23, v20, v26);
    (*(v28 + 16))(v17, v23, v26);
    (*(v28 + 56))(v17, 0, 1, v26);
    v55 = v26;
    v32 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
    swift_beginAccess();
    v54 = v28;
    sub_1000089F8(v2 + v32, v14, &unk_1011814D0);
    swift_beginAccess();
    sub_1002190E0(v17, v2 + v32, &unk_1011814D0);
    swift_endAccess();
    sub_100834BB8(v14);
    sub_1000095E8(v14, &unk_1011814D0);
    sub_1000095E8(v17, &unk_1011814D0);
    v33 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v34 = *(v5 + 16);
    v51 = v5 + 16;
    v52 = v33;
    v49 = v34;
    v34(v11, v2 + v33, v4);
    v35 = *(v5 + 104);
    v36 = v57;
    v50 = enum case for MusicPropertySource.catalog(_:);
    v35(v57);
    LOBYTE(v33) = static MusicPropertySource.== infix(_:_:)();
    v53 = v5;
    v37 = *(v5 + 8);
    v37(v36, v4);
    v37(v11, v4);
    if (v33)
    {
      v48 = v37;
      v57 = v23;
      v38 = v54;
      v39 = sub_10081FE6C();
      v40 = v52;
      if (v39)
      {
        (v35)(v11, enum case for MusicPropertySource.library(_:), v4);
        swift_beginAccess();
        (*(v53 + 40))(v2 + v40, v11, v4);
        swift_endAccess();
        if (qword_10117FC48 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1000060E4(v41, qword_1012193F8);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Overriding source at load.", v44, 2u);
        }
      }

      sub_1008192FC(0);
      v45 = v56;
      v49(v56, v2 + v40, v4);
      v46 = (*(v53 + 88))(v45, v4);
      if (v46 == v50)
      {
        sub_100826538();
        sub_1008369E8();
        (*(v38 + 8))(v57, v55);
      }

      else
      {
        v47 = v57;
        if (v46 == enum case for MusicPropertySource.library(_:))
        {
          sub_100827458();
          (*(v38 + 8))(v47, v55);
        }

        else
        {
          (*(v38 + 8))(v57, v55);
          v48(v45, v4);
        }
      }
    }

    else
    {
      (*(v54 + 8))(v23, v55);
    }
  }
}

void sub_1008259A0(void *a1)
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
    _os_log_impl(&_mh_execute_header, v3, v4, "Displaying catalog playlist error view.", v5, 2u);
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
          sub_100825C38(0xC000000000000001, 0, 0);
LABEL_17:

          return;
        }

LABEL_16:
        v14 = sub_100818E5C();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_100825C38(v14 & 1, sub_10086A638, v15);

        goto LABEL_17;
      }
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_100825C38(0xC000000000000001, 0, 0);
}

void sub_100825C38(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v26[-v9];
  v11 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v3 + v11, v10, &unk_1011814D0);
  v12 = type metadata accessor for Playlist();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  sub_1000095E8(v10, &unk_1011814D0);
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
  v14 = (v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v15 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState);
  v16 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 8);
  v17 = *(v3 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_presentedLoadingState + 16);
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  sub_10011896C(a1);
  sub_100817B04(v15, v16, v17);
  sub_1004E5BA4(v15);
  sub_1004E5B90(a1);
  v18 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
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

    *(v4 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeHeaderOnNextReload) = 1;
    sub_10083AF5C(0);
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
    sub_10083AF5C(0);
  }
}

uint64_t sub_1008260A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = sub_10010FC20(&qword_10118A3B0);
  v26 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  sub_1000089F8(v2 + v13, v8, &unk_1011814D0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1000095E8(v8, &unk_1011814D0);
    v14 = 1;
    v16 = v26;
    v15 = v27;
    return (*(v16 + 56))(v15, v14, 1, v3);
  }

  (*(v10 + 32))(v12, v8, v9);
  type metadata accessor for Playlist.Entry();
  MusicLibrarySectionedRequest.init()();
  MusicLibrarySectionedRequest.deferIdentifierResolution.setter();
  MusicLibrarySectionedRequest<>.filterSections(equalTo:)();
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
  swift_beginAccess();
  sub_1000089F8(v2 + v17, &v28, &unk_1011926C0);
  if (v29)
  {
    sub_1000095E8(&v28, &unk_1011926C0);
LABEL_7:
    type metadata accessor for MusicLibrary();
    static MusicLibrary.shared.getter();
    goto LABEL_8;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000095E8(&v28, &unk_1011926C0);
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = [Strong traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

LABEL_8:
  MusicLibrarySectionedRequest.library.setter();
  v20 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_includeOnlyDownloadedContent;
  MusicLibrarySectionedRequest.includeOnlyDownloadedContent.setter();
  if (*(v2 + v20) == 1)
  {
    swift_getKeyPath();
    LOBYTE(v28) = 1;
    MusicLibrarySectionedRequest<>.includeSections<A>(matching:equalTo:)();
  }

  MusicLibrarySectionedRequest.ignoreExplicitContentRestrictions.setter();
  if (*(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_sortingController))
  {

    PlaylistSortingController.apply(to:)();
  }

  v21 = (v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText);
  v22 = *(v2 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_searchText + 8);
  if (v22)
  {
    v23 = *v21;

    v24._countAndFlagsBits = v23;
    v24._object = v22;
    MusicLibrarySectionedRequest.filterItems(text:)(v24);
  }

  (*(v10 + 8))(v12, v9);
  v16 = v26;
  v15 = v27;
  (*(v26 + 32))(v27, v5, v3);
  v14 = 0;
  return (*(v16 + 56))(v15, v14, 1, v3);
}

uint64_t sub_100826538()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v37 = &v33 - v3;
  v4 = sub_10010FC20(&unk_1011A4920);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v33 - v5;
  v6 = sub_10010FC20(&qword_10119A848);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - v7;
  v44 = sub_10010FC20(&unk_1011A4930);
  v40 = *(v44 - 8);
  __chkstk_darwin(v44);
  v9 = &v33 - v8;
  v10 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v33 - v11;
  v13 = type metadata accessor for Playlist();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogPlaylist;
  swift_beginAccess();
  sub_1000089F8(v1 + v17, v12, &unk_1011814D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1000095E8(v12, &unk_1011814D0);
  }

  v19 = *(v14 + 32);
  v35 = v16;
  v19(v16, v12, v13);
  sub_10010FC20(&qword_101191FC0);
  v20 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100EBC6B0;
  (*(v14 + 16))(v21 + v20, v16, v13);
  sub_100866F00(&unk_1011A4940, &type metadata accessor for Playlist);
  v34 = v9;
  MusicLibraryMapping.Request.init(mappingItems:)();
  sub_100020674(&qword_10119A850, &unk_1011A4930);
  v22 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v23 = v1;
  v24 = *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse);
  *(v1 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse) = v22 | 0x8000000000000000;
  v33 = v22;

  sub_1004E6028(v24);
  v25 = v36;
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  sub_100009F78(0, &qword_101182960);
  v26 = static OS_dispatch_queue.main.getter();
  v45 = v26;
  v27 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v28 = v37;
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  sub_100020674(&unk_1011A4950, &unk_1011A4920);
  sub_1000206BC();
  v29 = v41;
  v30 = v39;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v28, &qword_101182140);

  (*(v38 + 8))(v25, v30);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_10119A858, &qword_10119A848);
  v31 = v43;
  v32 = Publisher<>.sink(receiveValue:)();

  (*(v42 + 8))(v29, v31);
  (*(v40 + 8))(v34, v44);
  (*(v14 + 8))(v35, v13);
  *(v23 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription) = v32;
}

uint64_t sub_100826BE4(uint64_t a1)
{
  v65 = a1;
  v1 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v1 - 8);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v57 - v4;
  __chkstk_darwin(v6);
  v59 = &v57 - v7;
  v8 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v8 - 8);
  v60 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = sub_10010FC20(&unk_1011A4960);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v57 - v15;
  v17 = type metadata accessor for Playlist();
  v18 = *(v17 - 8);
  v61 = v17;
  v62 = v18;
  __chkstk_darwin(v17);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v63 = &v57 - v22;
  v23 = sub_10010FC20(&qword_10119A860);
  __chkstk_darwin(v23 - 8);
  v25 = &v57 - v24;
  v26 = sub_10010FC20(&unk_1011A4970);
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v64 = &v57 - v28;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = result;
    sub_1000089F8(v65, v25, &qword_10119A860);
    if ((*(v27 + 48))(v25, 1, v26) == 1)
    {

      v31 = &qword_10119A860;
      v32 = v25;
      return sub_1000095E8(v32, v31);
    }

    v65 = v5;
    v33 = v64;
    (*(v27 + 32))(v64, v25, v26);
    v34 = MusicLibraryMapping.Response.mappedItems.getter();
    if (!*(v34 + 16))
    {

      return (*(v27 + 8))(v33, v26);
    }

    v57 = v26;
    (*(v14 + 16))(v16, v34 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13);

    MusicLibraryMapping.MappedItem.item.getter();
    (*(v14 + 8))(v16, v13);
    v35 = v62;
    v36 = v63;
    v37 = v20;
    v38 = v61;
    (*(v62 + 32))(v63, v37, v61);
    (*(v35 + 16))(v12, v36, v38);
    (*(v35 + 56))(v12, 0, 1, v38);
    v39 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v40 = v60;
    sub_1000089F8(v30 + v39, v60, &unk_1011814D0);
    swift_beginAccess();
    sub_1002190E0(v12, v30 + v39, &unk_1011814D0);
    swift_endAccess();
    sub_10081EE74(v40);
    sub_1000095E8(v40, &unk_1011814D0);
    sub_1000095E8(v12, &unk_1011814D0);
    v41 = sub_10081FE6C();
    v42 = v65;
    if ((v41 & 1) != 0 && (*(v30 + OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_isPendingLocalAddAction) & 1) == 0)
    {
      sub_10082920C();

      (*(v62 + 8))(v63, v38);
      v49 = *(v27 + 8);
      v50 = v64;
      return v49(v50, v57);
    }

    v43 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogEntries;
    swift_beginAccess();
    v44 = v59;
    sub_1000089F8(v30 + v43, v59, &qword_10119A808);
    v45 = sub_10010FC20(&qword_10118C2B0);
    v46 = *(v45 - 8);
    v47 = *(v46 + 48);
    if (v47(v44, 1, v45) != 1)
    {

      (*(v62 + 8))(v63, v38);
      (*(v27 + 8))(v64, v57);
      v31 = &qword_10119A808;
      v32 = v44;
      return sub_1000095E8(v32, v31);
    }

    sub_1000095E8(v44, &qword_10119A808);
    Playlist.entries.getter();
    if (v47(v42, 1, v45) == 1)
    {
      sub_1000095E8(v42, &qword_10119A808);
      v48 = v64;
    }

    else
    {
      v51 = MusicItemCollection.hasNextBatch.getter();
      (*(v46 + 8))(v42, v45);
      v48 = v64;
      if (v51)
      {
        v52 = v58;
        v53 = v63;
        Playlist.entries.getter();
        swift_beginAccess();
        sub_10006B010(v52, v30 + v43, &qword_10119A808);
        swift_endAccess();
        sub_1008369E8();

        (*(v62 + 8))(v53, v38);
LABEL_17:
        v49 = *(v27 + 8);
        v50 = v48;
        return v49(v50, v57);
      }
    }

    v54 = v58;
    v55 = v63;
    Playlist.entries.getter();
    v56 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
    swift_beginAccess();
    sub_1002190E0(v54, v30 + v56, &qword_10119A808);
    swift_endAccess();
    sub_1008422A8();

    sub_1000095E8(v54, &qword_10119A808);
    (*(v62 + 8))(v55, v38);
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_100827458()
{
  v1 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v1 - 8);
  v117 = &v102 - v2;
  v3 = sub_10010FC20(&qword_10119A820);
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = &v102 - v4;
  v113 = sub_10010FC20(&unk_1011A48E0);
  v118 = *(v113 - 8);
  __chkstk_darwin(v113);
  v6 = &v102 - v5;
  v105 = sub_10010FC20(&unk_101191A70);
  __chkstk_darwin(v105);
  v107 = &v102 - v7;
  v112 = type metadata accessor for Playlist();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v119 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v120 = &v102 - v10;
  v108 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v108);
  v110 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v102 - v13;
  v15 = sub_10010FC20(&unk_1011A46C0);
  __chkstk_darwin(v15 - 8);
  v17 = &v102 - v16;
  v18 = sub_10010FC20(&qword_10118A3B0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v109 = &v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v102 - v22;
  __chkstk_darwin(v24);
  v26 = &v102 - v25;
  sub_1008260A0(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_1000095E8(v17, &unk_1011A46C0);
  }

  v104 = v3;
  v106 = v6;
  v114 = v19;
  v28 = *(v19 + 32);
  v122 = v18;
  v28(v26, v17, v18);
  v29 = v26;
  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v121 = sub_1000060E4(v30, qword_1012193F8);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "╭ Kicking off library request", v33, 2u);
  }

  v34 = v0;
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();

  v37 = os_log_type_enabled(v35, v36);
  v103 = v34;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v126[0] = v39;
    *v38 = 136446210;
    v40 = v29;
    v41 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
    swift_beginAccess();
    v42 = &v34[v41];
    v29 = v40;
    sub_1000089F8(v42, v14, &unk_1011814D0);
    v43 = String.init<A>(describing:)();
    v45 = sub_1000105AC(v43, v44, v126);

    *(v38 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v35, v36, "| Playlist: %{public}s", v38, 0xCu);
    sub_10000959C(v39);
  }

  v46 = v114;
  v47 = *(v114 + 16);
  v108 = v29;
  v48 = v122;
  v47(v23, v29, v122);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = v46;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v126[0] = v53;
    *v52 = 136446210;
    v47(v109, v23, v48);
    v54 = String.init<A>(describing:)();
    v55 = v48;
    v56 = v54;
    v58 = v57;
    v109 = *(v51 + 8);
    (v109)(v23, v55);
    v59 = sub_1000105AC(v56, v58, v126);

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "| Request: %{public}s", v52, 0xCu);
    sub_10000959C(v53);
  }

  else
  {

    v109 = *(v46 + 8);
    (v109)(v23, v48);
  }

  v60 = v106;
  v61 = v103;
  v63 = v119;
  v62 = v120;
  v64 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
  swift_beginAccess();
  v65 = &v61[v64];
  v66 = v110;
  sub_1000089F8(v65, v110, &unk_1011814D0);
  v67 = v111;
  v68 = v112;
  if ((*(v111 + 48))(v66, 1, v112) == 1)
  {
    sub_1000095E8(v66, &unk_1011814D0);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "╰ Add Status: Unknown", v71, 2u);
    }

    goto LABEL_20;
  }

  (*(v67 + 32))(v62, v66, v68);
  (*(v67 + 16))(v63, v62, v68);
  v72 = v61;
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v125 = v76;
    *v75 = 136446210;
    v77 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v72[v77], &v123, &unk_1011926C0);
    if (v124)
    {
      sub_1000095E8(&v123, &unk_1011926C0);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1000095E8(&v123, &unk_1011926C0);
      if (Strong)
      {
        v81 = [Strong traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        MusicLibrary.state<A>(for:)();

        dispatch thunk of MusicLibrary.ItemState.addStatus.getter();

        v82 = 0;
LABEL_24:
        v83 = type metadata accessor for MusicLibrary.AddStatus();
        (*(*(v83 - 8) + 56))(v107, v82, 1, v83);
        v84 = String.init<A>(describing:)();
        v86 = v85;
        v87 = *(v67 + 8);
        v87(v119, v68);
        v88 = sub_1000105AC(v84, v86, &v125);

        *(v75 + 4) = v88;
        _os_log_impl(&_mh_execute_header, v73, v74, "╰ Add Status: %{public}s", v75, 0xCu);
        sub_10000959C(v76);

        v87(v120, v68);
        v79 = v108;
        v60 = v106;
        goto LABEL_25;
      }
    }

    v82 = 1;
    goto LABEL_24;
  }

  v78 = *(v67 + 8);
  v78(v63, v68);
  v78(v62, v68);
LABEL_20:
  v79 = v108;
LABEL_25:
  sub_100020674(&qword_10119A828, &qword_10118A3B0);
  v89 = MusicAutoupdatableRequest.autoupdatingResponse.getter();
  v90 = *&v61[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse];
  *&v61[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponse] = v89;

  sub_1004E6028(v90);
  v91 = v61;
  v92 = v115;
  dispatch thunk of MusicAutoupdatingResponse.$response.getter();
  sub_100009F78(0, &qword_101182960);
  v93 = static OS_dispatch_queue.main.getter();
  v123 = v93;
  v94 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v95 = v117;
  (*(*(v94 - 8) + 56))(v117, 1, 1, v94);
  sub_100020674(&unk_1011A48F0, &qword_10119A820);
  sub_1000206BC();
  v96 = v60;
  v97 = v104;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v95, &qword_101182140);

  (*(v116 + 8))(v92, v97);
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = swift_allocObject();
  *(v99 + 16) = v98;
  *(v99 + 24) = v89;
  sub_100020674(&qword_10119A830, &unk_1011A48E0);

  v100 = v113;
  v101 = Publisher<>.sink(receiveValue:)();

  (*(v118 + 8))(v96, v100);
  (v109)(v79, v122);
  *&v91[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_autoupdatingResponseSubscription] = v101;
}

void sub_10082832C(uint64_t a1)
{
  v94 = a1;
  v1 = type metadata accessor for MusicPropertySource();
  v93 = *(v1 - 8);
  __chkstk_darwin(v1);
  v91 = &v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v92 = &v86 - v4;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v90 = &v86 - v6;
  v7 = sub_10010FC20(&qword_10119A808);
  __chkstk_darwin(v7 - 8);
  v89 = &v86 - v8;
  v9 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v86 - v13;
  v15 = sub_10010FC20(&unk_1011A4900);
  __chkstk_darwin(v15 - 8);
  v88 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v86 - v18;
  v20 = sub_10010FC20(&qword_10119A838);
  __chkstk_darwin(v20 - 8);
  v22 = &v86 - v21;
  v23 = sub_10010FC20(&unk_1011A4910);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v86 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v28 = Strong;
  if ((dispatch thunk of MusicAutoupdatingResponse.isLoaded.getter() & 1) == 0)
  {

    return;
  }

  v86 = v1;
  v87 = v28;
  sub_1000089F8(v94, v19, &unk_1011A4900);
  v29 = sub_10010FC20(&qword_10119A840);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v19, 1, v29) == 1)
  {
    sub_1000095E8(v19, &unk_1011A4900);
    (*(v24 + 56))(v22, 1, 1, v23);
    v31 = v87;
    v32 = v86;
  }

  else
  {
    v33 = MusicLibrarySectionedResponse.sections.getter();
    (*(v30 + 8))(v19, v29);
    if (*(v33 + 16))
    {
      v34 = v24;
      (*(v24 + 16))(v22, v33 + ((*(v24 + 80) + 32) & ~*(v24 + 80)), v23);
      v35 = 0;
      v31 = v87;
      v32 = v86;
    }

    else
    {
      v35 = 1;
      v32 = v86;
      v34 = v24;
      v31 = v87;
    }

    (*(v34 + 56))(v22, v35, 1, v23);
    if ((*(v34 + 48))(v22, 1, v23) != 1)
    {
      (*(v34 + 32))(v26, v22, v23);
      v31[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] = 0;
      MusicLibrarySection.item.getter();
      v66 = type metadata accessor for Playlist();
      (*(*(v66 - 8) + 56))(v14, 0, 1, v66);
      v67 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playlist;
      swift_beginAccess();
      sub_1000089F8(&v31[v67], v11, &unk_1011814D0);
      swift_beginAccess();
      sub_1002190E0(v14, &v31[v67], &unk_1011814D0);
      swift_endAccess();
      sub_10081EE74(v11);
      sub_1000095E8(v11, &unk_1011814D0);
      sub_1000095E8(v14, &unk_1011814D0);
      sub_1008192FC(0);
      v68 = v89;
      MusicLibrarySection.items.getter();
      v69 = sub_10010FC20(&qword_10118C2B0);
      (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
      v70 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_staticEntries;
      swift_beginAccess();
      sub_1002190E0(v68, &v31[v70], &qword_10119A808);
      swift_endAccess();
      sub_1008422A8();
      sub_1000095E8(v68, &qword_10119A808);
      sub_100835910();
      v71 = v90;
      static TaskPriority.userInitiated.getter();
      v72 = type metadata accessor for TaskPriority();
      (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
      type metadata accessor for MainActor();
      v73 = v31;
      v74 = static MainActor.shared.getter();
      v75 = swift_allocObject();
      v75[2] = v74;
      v75[3] = &protocol witness table for MainActor;
      v75[4] = v73;
      sub_1001F4CB8(0, 0, v71, &unk_100EE4FB0, v75);

      (*(v34 + 8))(v26, v23);
      return;
    }
  }

  sub_1000095E8(v22, &qword_10119A838);
  if ((v31[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_allowsCatalogFallback] & 1) == 0)
  {
    v48 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v50 = v92;
    v49 = v93;
    v51 = *(v93 + 16);
    v51(v92, &v31[v48], v32);
    v52 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v53 = v91;
    v51(v91, &v31[v52], v32);
    sub_100866F00(&qword_10119A868, &type metadata accessor for MusicPropertySource);
    LOBYTE(v52) = dispatch thunk of static Equatable.== infix(_:_:)();
    v54 = *(v49 + 8);
    v54(v53, v32);
    v54(v50, v32);
    if ((v52 & 1) == 0)
    {
      sub_100829678();

      return;
    }

    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000060E4(v55, qword_1012193F8);
    v56 = v88;
    sub_1000089F8(v94, v88, &unk_1011A4900);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v95[0] = v60;
      *v59 = 136446210;
      v61 = sub_100805CEC(v56);
      v62 = v31;
      v64 = v63;
      sub_1000095E8(v56, &unk_1011A4900);
      v65 = sub_1000105AC(v61, v64, v95);
      v31 = v62;

      *(v59 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v58, "Popping playlist detail view controller with reason: %{public}s", v59, 0xCu);
      sub_10000959C(v60);
    }

    else
    {

      sub_1000095E8(v56, &unk_1011A4900);
    }

    v84 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_wrappedViewController;
    swift_beginAccess();
    sub_1000089F8(&v31[v84], v96, &unk_1011926C0);
    if (v96[8] == 1)
    {

      sub_1000095E8(v96, &unk_1011926C0);
      return;
    }

    v85 = swift_unknownObjectWeakLoadStrong();
    sub_1000095E8(v96, &unk_1011926C0);
    if (v85)
    {
      sub_1003FE034(1);
    }

    goto LABEL_38;
  }

  if (*&v31[OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_catalogID + 8])
  {
    if (qword_10117FC48 != -1)
    {
      swift_once();
    }

    v36 = v31;
    v37 = type metadata accessor for Logger();
    sub_1000060E4(v37, qword_1012193F8);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to load library playlist — Falling back to catalog.", v40, 2u);
    }

    v41 = enum case for MusicPropertySource.catalog(_:);
    v43 = v92;
    v42 = v93;
    v44 = *(v93 + 104);
    v44(v92, enum case for MusicPropertySource.catalog(_:), v32);
    v45 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_initialSource;
    swift_beginAccess();
    v46 = *(v42 + 40);
    v46(&v36[v45], v43, v32);
    swift_endAccess();
    v44(v43, v41, v32);
    v47 = OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_source;
    swift_beginAccess();
    v46(&v36[v47], v43, v32);
    swift_endAccess();
    sub_10081B700();

    return;
  }

  v76 = *(**CloudLibrary.StatusObserver.shared.unsafeMutableAddressor() + 328);

  v78 = v76(v77);

  if (v78 >> 30 != 1 && (v78 >> 30 != 2 || v78 != 2147483652))
  {
LABEL_38:

    return;
  }

  if (qword_10117FC48 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_1000060E4(v79, qword_1012193F8);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "Failed to load library playlist because library is loading.", v82, 2u);
  }

  v83 = sub_100818E5C();
  sub_100825C38(v83 & 1 | 0x4000000000000100, 0, 0);
}