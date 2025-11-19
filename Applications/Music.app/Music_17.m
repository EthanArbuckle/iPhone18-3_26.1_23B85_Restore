uint64_t sub_1002027C8()
{
  v1 = v0;
  v2 = type metadata accessor for Artist();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v49 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SymbolEffectOptions();
  v4 = *(v48 - 8);
  __chkstk_darwin(v48);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BounceSymbolEffect();
  v43 = *(v7 - 8);
  v44 = v7;
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = sub_10010FC20(&unk_101184950);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = &v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  swift_beginAccess();
  v17 = sub_10010FC20(&qword_101184608);
  sub_1000089F8(&v16[*(v17 + 28)], v15, &unk_101184950);
  v18 = sub_10010FC20(&qword_101184610);
  if ((*(*(v18 - 8) + 48))(v15, 1, v18) == 1)
  {
    sub_1000095E8(v15, &unk_101184950);
    v19 = *v16;
  }

  else
  {
    v19 = v15[*(v18 + 32)];
    sub_1000095E8(v15, &qword_101184610);
  }

  swift_endAccess();
  v20 = sub_100216128(v19, v52);
  v45 = v52[1];
  v21 = v52[3];
  v22 = v52[4];
  v46 = v52[5];
  v47 = v52[0];
  if (v19 && v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared] == 1)
  {
    v41 = sub_1001FE348(v20);
    BounceSymbolEffect.init()();
    BounceSymbolEffect.up.getter();
    v42 = v21;
    v43 = *(v43 + 8);
    v23 = v12;
    v24 = v44;
    (v43)(v23, v44);
    static SymbolEffectOptions.default.getter();
    sub_100218B94(&qword_101183AA8, &type metadata accessor for BounceSymbolEffect);
    v25 = v41;
    UIBarButtonItem.addSymbolEffect<A>(_:options:animated:)();

    (*(v4 + 8))(v6, v48);
    v26 = (v43)(v9, v24);
    v21 = v42;
  }

  else
  {
    v27 = sub_1001FE348(v20);
    static SymbolEffectOptions.default.getter();
    UIBarButtonItem.removeAllSymbolEffects(options:animated:)();

    v26 = (*(v4 + 8))(v6, v48);
  }

  v28 = sub_1001FE348(v26);
  v29 = v47;
  [v28 setImage:v47];

  v30 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem;
  v31 = *&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem];

  v32 = String._bridgeToObjectiveC()();

  [v31 setTitle:v32];

  v33 = *&v1[v30];
  sub_100009F78(0, &qword_101181580);
  v34 = v33;

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v21, v22);

  v35 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v37 = v49;
  v36 = v50;
  v38 = &v1[v35];
  v39 = v51;
  (*(v50 + 16))(v49, v38, v51);
  sub_1002157F8(v37, v1);

  return (*(v36 + 8))(v37, v39);
}

void sub_100202DC0(char a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1 & 1);
  v4 = sub_1001FC918();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_100219078;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1007E9F28;
    v11[3] = &unk_1010A1500;
    v8 = _Block_copy(v11);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  type metadata accessor for ApplicationMainMenu();
  v9 = sub_100314AEC();
  if (v9)
  {
    v10 = v9;
    sub_100059768();
  }
}

void sub_100202F7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }
}

uint64_t sub_100203050(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for MetricsEvent.Page(0);
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "viewDidAppear:", a1 & 1, v5);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared) = 1;
  v8 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v9 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_100217D58(v9, v7, type metadata accessor for MetricsEvent.Page);
  v10 = sub_10053771C();
  v12 = v11;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v13 = qword_101218AD0;
  v14 = GroupActivitiesManager.hasJoined.getter();
  v15 = GroupActivitiesManager.participantsCount.getter();
  v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v8) + 0xA0))(v7, v10, v12, v14 & 1, v15, *(v13 + v16));

  return sub_100217EB4(v7, type metadata accessor for MetricsEvent.Page);
}

void sub_100203374(void *a1)
{
  v2 = sub_10010FC20(&qword_101184850);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader);
    *(Strong + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader) = a1;
    v8 = Strong;

    a1;
    v9 = [v8 traitCollection];
    v10 = [v9 horizontalSizeClass];

    __chkstk_darwin(v11);
    v14[-2] = v10;
    v14[-1] = v8;
    sub_10010FC20(&qword_101184858);
    v12 = sub_1001109D0(&qword_101184860);
    v13 = sub_100218C4C();
    v14[0] = v12;
    v14[1] = v13;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v14[3] = v2;
    v14[4] = sub_100020674(&qword_101184890, &qword_101184850);
    sub_10001C8B8(v14);
    UIHostingConfiguration.margins(_:_:)();
    (*(v3 + 8))(v5, v2);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002035E0(uint64_t a1, char *a2)
{
  v4 = sub_10010FC20(&qword_101184860);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  if (a1 == 2)
  {
    v7 = 0x4034000000000000;
  }

  else
  {
    v7 = 0x4031000000000000;
  }

  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = v7;
  v6[16] = 0;
  v8 = sub_10010FC20(&qword_101184898);
  sub_1002037F8(a2, &v6[*(v8 + 44)]);
  v9 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v6[*(sub_10010FC20(&qword_101184878) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  v19 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = &v6[*(v4 + 36)];
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100218C4C();

  View.artworkCaching(owner:)();

  return sub_1000095E8(v6, &qword_101184860);
}

uint64_t sub_1002037F8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  *&v122 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  *&v121 = &v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v118 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v123 = type metadata accessor for Artist();
  *&v124 = *(v123 - 8);
  __chkstk_darwin(v123);
  v117 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v115 - v11;
  v12 = sub_10010FC20(&qword_1011848A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v115 - v13;
  v15 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v115 - v16;
  v18 = type metadata accessor for LibraryArtistHeaderView();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011848A8);
  __chkstk_darwin(v22 - 8);
  v119 = &v115 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v125 = &v115 - v25;
  v26 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v28 = *v26;
  v27 = v26[1];

  if (!v27)
  {
    goto LABEL_6;
  }

  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
    (*(v19 + 56))(v125, 1, 1, v18);
  }

  else
  {
LABEL_6:
    v30 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
    swift_beginAccess();
    (*(v124 + 16))(v21, &a1[v30], v123);
    v31 = type metadata accessor for IndexPath();
    (*(*(v31 - 8) + 56))(v17, 1, 1, v31);
    sub_100376F3C(v17, &v21[*(v18 + 20)]);
    sub_1000095E8(v17, &unk_10118BCE0);
    v32 = *(v18 + 24);
    *&v21[v32] = swift_getKeyPath();
    sub_10010FC20(&unk_101184840);
    swift_storeEnumTagMultiPayload();
    v33 = v125;
    sub_100217DC0(v21, v125, type metadata accessor for LibraryArtistHeaderView);
    (*(v19 + 56))(v33, 0, 1, v18);
  }

  v34 = type metadata accessor for PlaybackIntentDescriptor(0);
  v35 = swift_allocBox();
  v37 = v36;
  sub_100204574(v14);
  if ((*(*(v34 - 8) + 48))(v14, 1, v34) == 1)
  {
    sub_1000095E8(v14, &qword_1011848A0);
    swift_deallocBox();
    v38 = (*(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
    v39 = v38[1];
    if (!v39 || ((v40 = *v38 & 0xFFFFFFFFFFFFLL, (v39 & 0x2000000000000000) != 0) ? (v41 = HIBYTE(v39) & 0xF) : (v41 = v40), !v41))
    {
      if (sub_100205144())
      {
        v42 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
        swift_beginAccess();
        v43 = v124;
        v44 = *(v124 + 16);
        v45 = v116;
        v46 = v123;
        v44(v116, &a1[v42], v123);
        Artist.catalogID.getter();
        v48 = v47;
        v49 = *(v43 + 8);
        *&v124 = v43 + 8;
        v116 = v49;
        (v49)(v45, v46);
        v50 = v48;
        if (v48)
        {
        }

        v51 = [a1 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        v52 = sub_10049CB78();

        v115 = v50;
        if (v52)
        {
          if (!v50)
          {
LABEL_25:
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v75._countAndFlagsBits = 0xD000000000000014;
            v75._object = 0x8000000100E418A0;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v75);
            v76 = &a1[v42];
            v77 = v117;
            v78 = v123;
            v44(v117, v76, v123);
            v79 = Artist.name.getter();
            v81 = v80;
            (v116)(v77, v78);
            v82._countAndFlagsBits = v79;
            v82._object = v81;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v82);

            v83 = 0x8000000100E418C0;
            v74 = 0xD000000000000012;
LABEL_28:
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v74);
            String.LocalizationValue.init(stringInterpolation:)();
            static Locale.current.getter();
LABEL_29:
            v92 = String.init(localized:table:bundle:locale:comment:)();
            v94 = v93;
            v95 = v115 != 0;
            v96 = swift_allocObject();
            swift_unknownObjectWeakInit();

            static ApplicationCapabilities.shared.getter(v135);
            sub_100014984(v135);
            LOBYTE(v128) = BYTE1(v135[0]);
            State.init(wrappedValue:)();

            v126 = 1;
            *&v128 = v92;
            *(&v128 + 1) = v94;
            LOBYTE(v129[0]) = v95;
            v97 = *&UIEdgeInsetsZero.top;
            *(&v129[1] + 8) = *&UIEdgeInsetsZero.bottom;
            *(v129 + 8) = v97;
            *(&v129[2] + 1) = sub_100218D90;
            *&v130[0] = v96;
            BYTE8(v130[0]) = v131;
            *&v130[1] = *(&v131 + 1);
            BYTE8(v130[1]) = 1;
            sub_100218D98();
            sub_100218DEC();
            _ConditionalContent<>.init(storage:)();
            v123 = *v132;
            v124 = v131;
            v121 = *&v132[16];
            v122 = *&v132[32];
            v60 = *&v132[48];
            v62 = *(&v133 + 1);
            v61 = v133;
            v63 = v134;
            goto LABEL_30;
          }
        }

        else
        {
          v64 = *(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48) + *(**(*&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48) + 96);
          swift_beginAccess();
          if (!v50)
          {
            if (!*(v64 + 8))
            {
              String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
              v106._countAndFlagsBits = 0x6973756D20646441;
              v106._object = 0xED00002079622063;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v106);
              v107 = &a1[v42];
              v108 = v117;
              v109 = v123;
              v44(v117, v107, v123);
              v110 = Artist.name.getter();
              v112 = v111;
              (v116)(v108, v109);
              v113._countAndFlagsBits = v110;
              v113._object = v112;
              String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v113);

              v114._countAndFlagsBits = 0xD000000000000011;
              v114._object = 0x8000000100E41830;
              String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v114);
              String.LocalizationValue.init(stringInterpolation:)();
              static Locale.current.getter();
              goto LABEL_29;
            }

            goto LABEL_25;
          }

          if (!*(v64 + 8))
          {
            String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v84._countAndFlagsBits = 0x6973756D20646441;
            v84._object = 0xED00002079622063;
            String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v84);
            v85 = &a1[v42];
            v86 = v117;
            v87 = v123;
            v44(v117, v85, v123);
            v88 = Artist.name.getter();
            v90 = v89;
            (v116)(v86, v87);
            v91._countAndFlagsBits = v88;
            v91._object = v90;
            String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v91);

            v73 = " variable is artist name.";
            v74 = 0xD00000000000003BLL;
            goto LABEL_27;
          }
        }

        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v65._object = 0x8000000100E41970;
        v65._countAndFlagsBits = 0xD000000000000012;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v65);
        v66 = &a1[v42];
        v67 = v117;
        v68 = v123;
        v44(v117, v66, v123);
        v69 = Artist.name.getter();
        v71 = v70;
        (v116)(v67, v68);
        v72._countAndFlagsBits = v69;
        v72._object = v71;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v72);

        v73 = "Download music by ";
        v74 = 0xD00000000000002BLL;
LABEL_27:
        v83 = v73 | 0x8000000000000000;
        goto LABEL_28;
      }
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v123 = 0u;
    v124 = 0u;
    v63 = -1;
    v121 = 0u;
    v122 = 0u;
  }

  else
  {
    sub_100217DC0(v14, v37, type metadata accessor for PlaybackIntentDescriptor);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = v35;
    *(v54 + 24) = v53;

    v55 = static PlayIntentButtonStack.playShuffle(_:)();
    v57 = v56;
    v59 = v58;

    v127 = 0;
    *&v131 = v55;
    *(&v131 + 1) = v57;
    *v132 = v59;
    *&v132[8] = v128;
    *&v132[24] = v129[0];
    *&v132[40] = v129[1];
    v133 = v129[2];
    v134 = 0;
    sub_100218D98();
    sub_100218DEC();
    _ConditionalContent<>.init(storage:)();

    v123 = v135[1];
    v124 = v135[0];
    v121 = v135[2];
    v122 = v135[3];
    v60 = v136;
    v61 = v137;
    v62 = v138;
    v63 = v139;
  }

LABEL_30:
  v98 = v119;
  sub_1000089F8(v125, v119, &qword_1011848A8);
  v99 = v120;
  sub_1000089F8(v98, v120, &qword_1011848A8);
  v100 = (v99 + *(sub_10010FC20(&qword_1011848B0) + 48));
  v128 = v124;
  v129[0] = v123;
  v129[1] = v121;
  v129[2] = v122;
  *&v130[0] = v60;
  *(&v130[0] + 1) = v61;
  v102 = v123;
  v101 = v121;
  *v100 = v124;
  v100[1] = v102;
  v103 = v129[2];
  v104 = v130[0];
  v100[2] = v101;
  v100[3] = v103;
  *&v130[1] = v62;
  BYTE8(v130[1]) = v63;
  v100[4] = v104;
  *(v100 + 73) = *(v130 + 9);
  sub_1000089F8(&v128, &v131, &qword_1011848B8);
  sub_1000095E8(v125, &qword_1011848A8);
  v131 = v124;
  *v132 = v123;
  *&v132[16] = v121;
  *&v132[32] = v122;
  *&v132[48] = v60;
  *&v133 = v61;
  *(&v133 + 1) = v62;
  v134 = v63;
  sub_1000095E8(&v131, &qword_1011848B8);
  return sub_1000095E8(v98, &qword_1011848A8);
}

uint64_t sub_100204574@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v50 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v50);
  v52 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v49 - v8;
  v10 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v16 = _s6AlbumsVMa(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v19 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v49 - v27;
  v53 = v5;
  v29 = *(v5 + 56);
  v30 = v4;
  v29(&v49 - v27, 1, 1, v4, v26);
  if (sub_1001FFA80())
  {
    v31 = *(*&v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v32 = *(*v31 + 96);
    swift_beginAccess();
    sub_100217D58(v31 + v32, v18, _s6AlbumsVMa);
    v33 = type metadata accessor for Album();
    (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
    sub_100289108(v15, v24);
    sub_1000095E8(v15, &unk_101184730);
    sub_100217EB4(v18, _s6AlbumsVMa);
    v34 = v30;
  }

  else
  {
    v34 = v4;
    if (!sub_1001FFC7C())
    {
      goto LABEL_6;
    }

    v35 = *(*&v2[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController] + 48);
    v36 = *(*v35 + 96);
    swift_beginAccess();
    sub_100217D58(v35 + v36, v12, _s11MusicVideosVMa);
    v37 = type metadata accessor for MusicVideo();
    (*(*(v37 - 8) + 56))(v9, 1, 1, v37);
    sub_1006FD384(v9, v24);
    sub_1000095E8(v9, &unk_1011846B0);
    sub_100217EB4(v12, _s11MusicVideosVMa);
  }

  sub_1000095E8(v28, &unk_10118CDB0);
  sub_10003D17C(v24, v28, &unk_10118CDB0);
LABEL_6:
  sub_1000089F8(v28, v21, &unk_10118CDB0);
  v38 = v53;
  if ((*(v53 + 48))(v21, 1, v34) == 1)
  {
    sub_1000095E8(v28, &unk_10118CDB0);
    sub_1000095E8(v21, &unk_10118CDB0);
    v39 = 1;
    v40 = v54;
  }

  else
  {
    v41 = v51;
    (*(v38 + 32))(v51, v21, v34);
    v42 = v52;
    (*(v38 + 16))(v52, v41, v34);
    swift_storeEnumTagMultiPayload();
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v55[0] = v2;
    v43 = v2;
    v44 = String.init<A>(reflecting:)();
    v55[3] = &type metadata for Player.CommandIssuerIdentity;
    v55[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v55[0] = v44;
    v55[1] = v45;
    v46 = v43;
    v40 = v54;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v42, v56, 3, 0, 0, 1, 0, 1, v54, v2, v55);
    (*(v38 + 8))(v41, v34);
    sub_1000095E8(v28, &unk_10118CDB0);
    v39 = 0;
  }

  v47 = type metadata accessor for PlaybackIntentDescriptor(0);
  return (*(*(v47 - 8) + 56))(v40, v39, 1, v47);
}

uint64_t sub_100204C50(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v36[1] = a3;
  v4 = 0xD000000000000015;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v41 = v36 - v6;
  v7 = type metadata accessor for PlaybackIntentDescriptor(0);
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v40 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v37 = v36 - v10;
  v11 = swift_projectBox();
  v44 = 0;
  v45 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v44 = 0xD000000000000019;
  v45 = 0x8000000100E419C0;
  v38 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000018;
      v12 = "PlayIntentButton.sing";
    }

    else
    {
      v12 = "Header.PlaybackControls: ";
    }
  }

  else
  {
    v12 = "PlayIntentButton.shuffle";
  }

  v13._object = (v12 | 0x8000000000000000);
  v13._countAndFlagsBits = v4;
  String.append(_:)(v13);

  v14 = v44;
  v15 = v45;
  swift_beginAccess();
  v16 = v11 + *(v7 + 32);
  v17 = *(v16 + 24);
  v36[0] = v14;
  if (v17)
  {
    sub_100008FE4(v16, &v44);
    v18 = v46;
    v19 = v47;
    sub_10000954C(&v44, v46);
    v42[3] = &type metadata for Player.CommandIssuerIdentity;
    v42[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v42[0] = v14;
    v42[1] = v15;

    v20 = Player.CommandIssuer.appending(_:)(v42, v18, v19);
    v22 = v21;
    sub_10000959C(v42);
    sub_10000959C(&v44);
    v46 = &type metadata for Player.CommandIssuerIdentity;
    v47 = &protocol witness table for Player.CommandIssuerIdentity;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v46 = &type metadata for Player.CommandIssuerIdentity;
    v47 = &protocol witness table for Player.CommandIssuerIdentity;
  }

  sub_10010FC20(&unk_101183930);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBDC20;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
  }

  else
  {
    v43 = 0;
    sub_10010FC20(&qword_1011848D0);
  }

  v25 = String.init<A>(reflecting:)();
  *(v23 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v23 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v23 + 32) = v25;
  *(v23 + 40) = v26;
  *(v23 + 96) = &type metadata for Player.CommandIssuerIdentity;
  *(v23 + 104) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v23 + 72) = v36[0];
  *(v23 + 80) = v15;
  v20 = static Player.CommandIssuer<>.combining(_:)();
  v22 = v27;
LABEL_14:

  v44 = v20;
  v45 = v22;
  swift_beginAccess();
  sub_10006B010(&v44, v11 + *(v7 + 32), &unk_101183910);
  PlaybackIntentDescriptor.configure(for:)(v38);
  swift_endAccess();
  swift_beginAccess();
  v28 = v37;
  sub_100217D58(v11, v37, type metadata accessor for PlaybackIntentDescriptor);
  v29 = type metadata accessor for TaskPriority();
  v30 = v41;
  (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
  v31 = v40;
  sub_100217D58(v28, v40, type metadata accessor for PlaybackIntentDescriptor);
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  v33 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = &protocol witness table for MainActor;
  sub_100217DC0(v31, v34 + v33, type metadata accessor for PlaybackIntentDescriptor);
  sub_1001F4F78(0, 0, v30, &unk_100EC0560, v34);

  return sub_100217EB4(v28, type metadata accessor for PlaybackIntentDescriptor);
}

BOOL sub_100205144()
{
  v0 = RequestResponse.Controller.revision.getter();
  v1 = *(v0 + *(*v0 + 112));

  if (!v1)
  {
    return 0;
  }

  v2 = RequestResponse.Controller.revision.getter();
  v3 = *(v2 + *(*v2 + 112));

  return v3 != 0;
}

uint64_t sub_1002051D8()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v66 - v1;
  v73 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v73);
  v74 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  v75 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v77 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v5;
  __chkstk_darwin(v6);
  v78 = &v66 - v7;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v82 = *(v8 - 8);
  __chkstk_darwin(v8);
  v81 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Station();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v67 = &v66 - v12;
  v13 = sub_10010FC20(&unk_1011848D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  v19 = type metadata accessor for Artist();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v23 - 8);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v66 - v27;
  __chkstk_darwin(v29);
  v83 = &v66 - v30;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v71 = v25;
  v72 = v8;
  v66 = v2;
  v32 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v33 = result;
  swift_beginAccess();
  v34 = *(v20 + 16);
  v34(v22, &v33[v32], v19);
  Artist.defaultPlayableItem.getter();
  (*(v20 + 8))(v22, v19);
  v35 = type metadata accessor for Artist.PlayableItem();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v79 = v18;
  v38 = v37(v18, 1, v35);
  v80 = v33;
  if (v38 == 1)
  {
    goto LABEL_6;
  }

  v39 = v79;
  sub_1000089F8(v79, v15, &unk_1011848D8);
  if ((*(v36 + 88))(v15, v35) != enum case for Artist.PlayableItem.station(_:))
  {
    (*(v36 + 8))(v15, v35);
    v33 = v80;
LABEL_6:
    *(&v86 + 1) = v19;
    v87 = &protocol witness table for Artist;
    v46 = sub_10001C8B8(&v85);
    v34(v46, &v33[v32], v19);
    MusicPlaybackIntentDescriptor.init(stationSeed:)();
    v45 = v72;
    v44 = v82;
    v43 = v83;
    v39 = v79;
    (*(v82 + 56))(v28, 0, 1, v72);
    sub_10003D17C(v28, v43, &unk_10118CDB0);
    goto LABEL_7;
  }

  (*(v36 + 96))(v15, v35);
  v40 = v69;
  v41 = v67;
  v42 = v70;
  (*(v69 + 32))(v67, v15, v70);
  (*(v40 + 16))(v68, v41, v42);
  v43 = v83;
  MusicPlaybackIntentDescriptor.init(station:)();
  (*(v40 + 8))(v41, v42);
  v44 = v82;
  v45 = v72;
  (*(v82 + 56))(v43, 0, 1, v72);
LABEL_7:
  sub_1000095E8(v39, &unk_1011848D8);
  v47 = v71;
  sub_1000089F8(v43, v71, &unk_10118CDB0);
  if ((*(v44 + 48))(v47, 1, v45) == 1)
  {
    sub_1000095E8(v43, &unk_10118CDB0);
  }

  else
  {
    v48 = v81;
    (*(v44 + 32))(v81, v47, v45);
    v49 = v74;
    (*(v44 + 16))(v74, v48, v45);
    swift_storeEnumTagMultiPayload();
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    sub_10010FC20(&unk_101183930);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100EBDC20;
    v51 = v80;
    v84[0] = v80;
    v52 = v80;
    v53 = String.init<A>(reflecting:)();
    *(v50 + 56) = &type metadata for Player.CommandIssuerIdentity;
    *(v50 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v50 + 32) = v53;
    *(v50 + 40) = v54;
    *(v50 + 96) = &type metadata for Player.CommandIssuerIdentity;
    *(v50 + 104) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v50 + 72) = 0xD000000000000013;
    *(v50 + 80) = 0x8000000100E41A40;
    v55 = static Player.CommandIssuer<>.combining(_:)();
    v57 = v56;

    v84[3] = &type metadata for Player.CommandIssuerIdentity;
    v84[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v84[0] = v55;
    v84[1] = v57;
    v58 = v52;
    v59 = v78;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v49, &v85, 3, 0, 0, 1, 0, 1, v78, v51, v84);
    v60 = type metadata accessor for TaskPriority();
    v61 = v66;
    (*(*(v60 - 8) + 56))(v66, 1, 1, v60);
    v62 = v77;
    sub_100217D58(v59, v77, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v63 = static MainActor.shared.getter();
    v64 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = v63;
    *(v65 + 24) = &protocol witness table for MainActor;
    sub_100217DC0(v62, v65 + v64, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v61, &unk_100EC0570, v65);

    sub_100217EB4(v59, type metadata accessor for PlaybackIntentDescriptor);
    (*(v44 + 8))(v81, v45);
    v47 = v83;
  }

  return sub_1000095E8(v47, &unk_10118CDB0);
}

void sub_100205C54()
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
    if (sub_1001FFA80() && sub_1001FFC7C() && IndexPath.section.getter() <= 1)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v4 = String.init(localized:table:bundle:locale:comment:)();
      sub_1005FF7FC(v4, v5, v6);

      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_100205DF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v45 = a1;
  v47 = a2;
  v46 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v40 - v6;
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = _s8GridCellVMa(0);
  __chkstk_darwin(v13);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v16, &protocol witness table for Album, v12);
  v17 = sub_1001FC918();
  v18 = *&v17[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v18, 0, 0, 1, 0x3FF0000000000000, 0, 2, v48);
  v19 = Corner.medium.unsafeMutableAddressor();
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = sub_10010FC20(&unk_101182950);
  (*(*(v23 - 8) + 56))(v9, 1, 11, v23);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v9, 0, 1, v48, v20, v21, v22, v15);
  v24 = sub_10034DFAC();
  v42 = v25;
  v43 = v24;
  v41 = Album.releaseYearString.getter();
  v27 = v26;
  v28 = v44;
  Album.favoriteStatus.getter();
  v29 = v4;
  v30 = v4;
  v31 = v46;
  (*(v2 + 104))(v30, enum case for MusicFavoriteStatus.favorited(_:), v46);
  v32 = static MusicFavoriteStatus.== infix(_:_:)();
  v33 = *(v2 + 8);
  v33(v29, v31);
  v33(v28, v31);
  Album.contentRating.getter();
  v34 = &v15[v13[5]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *&v15[v13[6]] = 0x3FF0000000000000;
  v35 = &v15[v13[7]];
  v36 = v42;
  *v35 = v43;
  *(v35 + 1) = v36;
  v37 = &v15[v13[8]];
  *v37 = v41;
  v37[1] = v27;
  v15[v13[9]] = v32 & 1;
  v15[v13[11]] = 0;
  v38 = v13[12];
  *&v15[v38] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100218B94(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v15, _s8GridCellVMa);
}

void sub_1002062A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_10118D320);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v20 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v20[-4] = a3;
    v20[-3] = v15;
    v20[-2] = a5;
    v16 = v15;
    sub_10010FC20(&unk_1011847A0);
    v17 = _s8ListCellVMa(255);
    v18 = sub_100218B94(&qword_10118D2E0, _s8ListCellVMa);
    v20[0] = v17;
    v20[1] = v18;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v19 = *(v8 + 8);
    v19(v10, v7);
    static Edge.Set.vertical.getter();
    v20[3] = v7;
    v20[4] = sub_100020674(&unk_1011847B0, &unk_10118D320);
    sub_10001C8B8(v20);
    UIHostingConfiguration.margins(_:_:)();
    v19(v13, v7);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100206580@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a1;
  v66 = a2;
  v2 = sub_10010FC20(&unk_10118D2F0);
  __chkstk_darwin(v2 - 8);
  v67 = &v55[-v3];
  v64 = type metadata accessor for MusicFavoriteStatus();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v58 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v57 = &v55[-v7];
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v55[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v55[-v12];
  v14 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v55[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v63 = v16;
  v17 = _s8ListCellVMa(0);
  __chkstk_darwin(v17);
  v19 = &v55[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = type metadata accessor for Album();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v20, &protocol witness table for Album, v13);
  ArtworkImage.Size.init(cgSize:)(0x4050000000000000, 0x4050000000000000, 0, v71);
  v21 = Corner.small.unsafeMutableAddressor();
  v22 = *v21;
  v23 = v21[1];
  v24 = *(v21 + 16);
  v25 = sub_10010FC20(&unk_101182950);
  (*(*(v25 - 8) + 56))(v10, 1, 11, v25);
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v13, v10, 0, 1, v71, v22, v23, v24, v16);
  v26 = sub_10034DFAC();
  v61 = v27;
  v62 = v26;
  v28 = Album.releaseYearString.getter();
  v59 = v29;
  v60 = v28;
  v30 = v57;
  Album.favoriteStatus.getter();
  v31 = v58;
  v32 = v64;
  (*(v4 + 104))(v58, enum case for MusicFavoriteStatus.favorited(_:), v64);
  v56 = static MusicFavoriteStatus.== infix(_:_:)();
  v33 = *(v4 + 8);
  v33(v31, v32);
  v33(v30, v32);
  Album.contentRating.getter();
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_10010FC20(&unk_1011847C0);
  swift_allocObject();
  OptionalObservableObject.init(publisher:)(&v68);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  sub_10010FC20(&unk_10118D300);
  swift_allocObject();
  v64 = OptionalObservableObject.init(publisher:)(&v68);
  v34 = static HierarchicalShapeStyle.primary.getter();
  *(v19 + 3) = &type metadata for HierarchicalShapeStyle;
  *(v19 + 4) = &protocol witness table for HierarchicalShapeStyle;
  *v19 = v34;
  v19[40] = 0;
  v35 = &v19[v17[6]];
  v36 = v17[9];
  v37 = v17[10];
  v38 = type metadata accessor for ContentRating();
  (*(*(v38 - 8) + 56))(&v19[v37], 1, 1, v38);
  v58 = &v19[v17[11]];
  v39 = v17[14];
  *&v19[v39] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v40 = v63;
  sub_100217D58(v63, &v19[v17[5]], type metadata accessor for ArtworkImage.Info);
  v35[1] = 0;
  v35[2] = 0;
  *v35 = 0;
  v41 = &v19[v17[7]];
  v42 = v61;
  *v41 = v62;
  v41[1] = v42;
  v43 = &v19[v17[8]];
  v44 = v59;
  *v43 = v60;
  v43[1] = v44;
  v19[v36] = v56 & 1;
  v45 = &v19[v37];
  v46 = v67;
  sub_1002190E0(v67, v45, &unk_10118D2F0);
  v47 = &v19[v17[12]];
  sub_100020674(&unk_1011847D0, &unk_1011847C0);

  *v47 = ObservedObject.init(wrappedValue:)();
  v47[1] = v48;
  v49 = &v19[v17[13]];
  sub_100020674(&qword_10118D310, &unk_10118D300);
  v50 = ObservedObject.init(wrappedValue:)();
  v52 = v51;

  sub_1000095E8(v46, &unk_10118D2F0);
  sub_100217EB4(v40, type metadata accessor for ArtworkImage.Info);
  *v49 = v50;
  v49[1] = v52;
  v53 = v58;
  *v58 = 0;
  v53[1] = 0;
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100218B94(&qword_10118D2E0, _s8ListCellVMa);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v19, _s8ListCellVMa);
}

void sub_100206C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10010FC20(&qword_10118D2C0);
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
    sub_10010FC20(&unk_101184760);
    v11 = _s8GridCellVMa(255);
    v12 = sub_100218B94(&qword_10118D290, _s8GridCellVMa);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v4;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v5 + 8))(v7, v4);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_100206ED0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v43 = type metadata accessor for MusicFavoriteStatus();
  v2 = *(v43 - 8);
  __chkstk_darwin(v43);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v37 - v6;
  v7 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = _s8GridCellVMa(0);
  __chkstk_darwin(v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v16, &protocol witness table for MusicVideo, v12);
  v17 = sub_10010FC20(&unk_101182950);
  (*(*(v17 - 8) + 56))(v9, 5, 11, v17);
  v18 = sub_1001FC918();
  v19 = *&v18[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v19, 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v45);
  v20 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v12, v9, 0, 1, v45, *v20, v20[1], *(v20 + 16), v15);
  v21 = MusicVideo.title.getter();
  v39 = v22;
  v40 = v21;
  v38 = MusicVideo.releaseYearString.getter();
  v24 = v23;
  v25 = v42;
  MusicVideo.favoriteStatus.getter();
  v26 = v4;
  v27 = v4;
  v28 = v43;
  (*(v2 + 104))(v27, enum case for MusicFavoriteStatus.favorited(_:), v43);
  v29 = static MusicFavoriteStatus.== infix(_:_:)();
  v30 = *(v2 + 8);
  v30(v26, v28);
  v30(v25, v28);
  MusicVideo.contentRating.getter();
  v31 = &v15[v13[5]];
  *v31 = 0;
  *(v31 + 1) = 0;
  *(v31 + 2) = 0;
  *&v15[v13[6]] = 0x3FFC71C71C71C71CLL;
  v32 = &v15[v13[7]];
  v33 = v39;
  *v32 = v40;
  *(v32 + 1) = v33;
  v34 = &v15[v13[8]];
  *v34 = v38;
  v34[1] = v24;
  v15[v13[9]] = v29 & 1;
  v15[v13[11]] = 0;
  v35 = v13[12];
  *&v15[v35] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100218B94(&qword_10118D290, _s8GridCellVMa);

  View.artworkCaching(owner:)();

  return sub_100217EB4(v15, _s8GridCellVMa);
}

void sub_100207388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_1011847F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v23 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23[0] = v23;
    __chkstk_darwin(Strong);
    v23[-4] = a3;
    v23[-3] = v16;
    v23[-2] = a5;
    v17 = v16;
    sub_10010FC20(&unk_101193BE0);
    v23[1] = a1;
    v18 = sub_1001109D0(&unk_101184800);
    v19 = sub_100020674(&unk_101193BF0, &unk_101184800);
    v24[0] = v18;
    v24[1] = v19;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v20 = *(v9 + 8);
    v20(v11, v8);
    static Edge.Set.vertical.getter();
    v21 = [v17 traitCollection];
    v22 = [v21 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v24[3] = v8;
    v24[4] = sub_100020674(&unk_101184810, &unk_1011847F0);
    sub_10001C8B8(v24);
    UIHostingConfiguration.margins(_:_:)();
    v20(v14, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1002076CC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v67 = a3;
  v64 = type metadata accessor for MusicFavoriteStatus();
  v4 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v53 - v7;
  v8 = type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v53 - v12;
  v14 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101184800);
  __chkstk_darwin(v17);
  v19 = &v53 - v18;
  v61 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v61, &protocol witness table for MusicVideo, v13);
  ArtworkImage.Size.init(cgSize:)(0x4055555555555555, 0x4048000000000000, 0, v68);
  v20 = Corner.small.unsafeMutableAddressor();
  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 16);
  v24 = sub_10010FC20(&unk_101182950);
  (*(*(v24 - 8) + 56))(v10, 1, 11, v24);
  v65 = v16;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v13, v10, 0, 1, v68, v21, v22, v23, v16);
  v59 = MusicVideo.title.getter();
  v60 = v25;
  v57 = MusicVideo.releaseYearString.getter();
  v58 = v26;
  v55 = MusicVideo.albumTitle.getter();
  v56 = v27;
  MusicVideo.duration.getter();
  v28 = static Duration.seconds(_:)();
  v54 = v29;
  v30 = v62;
  MusicVideo.favoriteStatus.getter();
  v32 = v63;
  v31 = v64;
  (*(v4 + 104))(v63, enum case for MusicFavoriteStatus.favorited(_:), v64);
  v33 = static MusicFavoriteStatus.== infix(_:_:)();
  v34 = *(v4 + 8);
  v34(v32, v31);
  v34(v30, v31);
  MusicVideo.contentRating.getter();
  sub_1007BA8CC();
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  sub_100218B94(&unk_101193C00, &type metadata accessor for MusicVideo);
  Player.state<A>(for:)(a1);
  v35 = sub_1001FC918();
  v36 = *&v35[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100217DC0(v65, v19, type metadata accessor for ArtworkImage.Info);
  v37 = &v19[v17[11]];
  v38 = v60;
  *v37 = v59;
  v37[1] = v38;
  v39 = &v19[v17[12]];
  v40 = v58;
  *v39 = v57;
  v39[1] = v40;
  v41 = &v19[v17[13]];
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  v43 = &v19[v17[14]];
  v44 = v54;
  *v43 = v28;
  v43[1] = v44;
  v19[v17[15]] = v33 & 1;
  v19[v17[17]] = 0;
  v45 = &v19[v17[18]];
  sub_10010FC20(&unk_101184820);
  sub_100020674(&unk_101193C10, &unk_101184820);
  *v45 = ObservedObject.init(wrappedValue:)();
  v45[1] = v46;
  v47 = &v19[v17[19]];
  sub_10010FC20(&unk_101184830);
  sub_100020674(&unk_101193C20, &unk_101184830);
  *v47 = ObservedObject.init(wrappedValue:)();
  v47[1] = v48;
  *&v19[v17[20]] = 0;
  v49 = &v19[v17[21]];
  *v49 = 0;
  *(v49 + 1) = 0;
  *&v19[v17[22]] = v36;
  v50 = v17[23];
  *&v19[v50] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v51 = v17[24];
  *&v19[v51] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  sub_100218B94(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference);
  sub_100020674(&unk_101193BF0, &unk_101184800);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v19, &unk_101184800);
}

void sub_100207DB8()
{
  v1 = v0;
  v32 = sub_10010FC20(&qword_101184608);
  __chkstk_darwin(v32);
  v31 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v27 = &v25 - v4;
  v5 = type metadata accessor for MusicFavoriteStatus();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Artist();
  v26 = v12;
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  v29 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v28 = *(v13 + 16);
  v30 = v13 + 16;
  v28(v15, &v1[v16], v12);
  Artist.favoriteStatus.getter();
  v17 = *(v13 + 8);
  v17(v15, v12);
  (*(v6 + 104))(v8, enum case for MusicFavoriteStatus.favorited(_:), v5);
  LOBYTE(v16) = static MusicFavoriteStatus.== infix(_:_:)();
  v18 = *(v6 + 8);
  v18(v8, v5);
  v18(v11, v5);
  v33 = v16 & 1;
  v19 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  v20 = v27;
  sub_1000089F8(&v1[v19], v27, &qword_101184608);
  OptimisticValue.value.setter(&v33, v32);
  v21 = v31;
  sub_1000089F8(&v1[v19], v31, &qword_101184608);
  swift_beginAccess();
  sub_1002190E0(v20, &v1[v19], &qword_101184608);
  swift_endAccess();
  sub_10020A4AC(v21);
  sub_1000095E8(v21, &qword_101184608);
  sub_1000095E8(v20, &qword_101184608);
  v22 = [v1 navigationItem];
  v23 = v26;
  v28(v15, &v1[v29], v26);
  Artist.name.getter();
  v17(v15, v23);
  v24 = String._bridgeToObjectiveC()();

  [v22 setBackButtonTitle:v24];
}

void sub_1002081DC(char a1)
{
  v3 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = _s6AlbumsVMa(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded;
  LODWORD(v7) = *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_onlyShowDownloaded) = a1;
  if (v7 != (a1 & 1))
  {
    v10 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController) + 48);
    v11 = *(*v10 + 96);
    swift_beginAccess();
    sub_100217D58(v10 + v11, v8, _s6AlbumsVMa);
    v8[8] = a1 & 1;
    sub_100378808(v8);
    v12 = *(v1 + v9);
    v13 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController) + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_100217D58(v13 + v14, v5, _s11MusicVideosVMa);
    v5[16] = v12;
    sub_100377E84(v5);
  }
}

void *sub_100208394()
{
  v0 = _s6AlbumsVMa(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  result = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v17 = _swiftEmptyArrayStorage;
    v5 = sub_100208680();
    if (v5)
    {
      v6 = v5;
      v7 = [v5 children];
      sub_100009F78(0, &qword_10118CDE0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10012409C(v8);
    }

    v9 = sub_1001FC918();
    v10 = v9[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v10 & 1) == 0)
    {
      sub_100597E50();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v11 = *(*&Strong[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController] + 48);
    v12 = *(*v11 + 96);
    swift_beginAccess();
    sub_100217D58(v11 + v12, v2, _s6AlbumsVMa);
    v13 = swift_allocObject();
    swift_weakInit();

    v14.super.super.isa = sub_100211A5C(sub_100219544, v13, sub_10028B3E0, sub_100217E5C).super.super.isa;

    sub_100217EB4(v2, _s6AlbumsVMa);

    if (v14.super.super.isa)
    {
      v15 = v14.super.super.isa;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    return v17;
  }

  return result;
}

unint64_t sub_100208680()
{
  v1 = type metadata accessor for UUID();
  v100 = *(v1 - 8);
  v101 = v1;
  __chkstk_darwin(v1);
  v99 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v3 - 8);
  v91 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v84 - v6;
  v7 = sub_10010FC20(&unk_1011838D0);
  v95 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v98 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v8;
  __chkstk_darwin(v9);
  v11 = &v84 - v10;
  v12 = sub_10010FC20(&unk_1011845D0);
  v92 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v97 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v13;
  __chkstk_darwin(v14);
  v16 = &v84 - v15;
  v17 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v17 - 8);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v84 - v21;
  sub_10010FC20(&unk_101183900);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6B0;
  v24 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v25 = type metadata accessor for Artist();
  *(v23 + 56) = v25;
  *(v23 + 64) = &protocol witness table for Artist;
  v26 = sub_10001C8B8((v23 + 32));
  (*(*(v25 - 8) + 16))(v26, &v0[v24], v25);
  v27 = v0;
  v28 = [v27 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v94 = v118[0];
  v29 = type metadata accessor for Actions.PlaybackContext();
  v30 = *(v29 - 8);
  v31 = *(v30 + 56);
  v103 = v22;
  v31(v22, 1, 1, v29);
  v32 = type metadata accessor for PlaylistContext();
  v33 = *(*(v32 - 8) + 56);
  v104 = v16;
  v34 = v33(v16, 1, 1, v32);
  v35 = sub_1001FE264(v34);
  PresentationSource.Position.init(sourceItem:permittedArrowDirections:)(v35, 15, v119);
  PresentationSource.init(viewController:position:)(v27, v119, v118);
  sub_100209388(v11);
  v36 = type metadata accessor for Actions.MetricsReportingContext();
  v37 = *(*(v36 - 8) + 56);
  v105 = v11;
  v37(v11, 0, 1, v36);
  sub_100008FE4(v23 + 32, v117);

  sub_1000089F8(v118, &v112, &unk_1011845E0);
  if (v115 == 1)
  {
    v124 = 0;
    memset(v123, 0, sizeof(v123));
    v125 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v27, v123, v116);
    if (v115 != 1)
    {
      sub_1000095E8(&v112, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v112, v116);
  }

  swift_getObjectType();
  v38 = swift_conformsToProtocol2();
  v39 = 0;
  v40 = v102;
  v41 = 0;
  if (v38 && v27)
  {
    v42 = v38;
    v43 = v27;
    v39 = v27;
    v41 = v42;
  }

  v88 = v41;
  v90 = v39;
  v89 = swift_allocBox();
  v45 = v44;
  sub_1000089F8(v103, v19, &unk_10118AB20);
  v46 = *(v30 + 48);
  if (v46(v19, 1, v29) == 1)
  {
    v47 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    (*(*(v47 - 8) + 56))(v40, 1, 1, v47);
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v48 = qword_101218AD8;
    sub_1000089F8(v40, v91, &unk_1011838E0);
    v87 = v48;
    v49 = UIViewController.playActivityInformation.getter();
    v85 = v51;
    v86 = v50;
    v53 = v52;
    sub_1000089F8(&v112, &v110, &unk_101183910);
    if (v111)
    {
      sub_100059A8C(&v110, &v120);
    }

    else
    {
      v84 = v49;
      v109 = v27;
      sub_100009F78(0, &qword_101183D40);
      v54 = v27;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v106, &v120);
      }

      else
      {
        v108 = 0;
        v106 = 0u;
        v107 = 0u;
        *&v120 = v54;
        v55 = v54;
        v56 = String.init<A>(reflecting:)();
        *(&v121 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v122 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v120 = v56;
        *(&v120 + 1) = v57;
        if (*(&v107 + 1))
        {
          sub_1000095E8(&v106, &unk_101183910);
        }
      }

      v40 = v102;
      v49 = v84;
      if (v111)
      {
        sub_1000095E8(&v110, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v87, v91, v49, v86, v53, v85, &v120, v45);
    sub_1000095E8(&v112, &unk_101183910);
    sub_1000095E8(v40, &unk_1011838E0);
    if (v46(v19, 1, v29) != 1)
    {
      sub_1000095E8(v19, &unk_10118AB20);
    }
  }

  else
  {
    sub_100217DC0(v19, v45, type metadata accessor for Actions.PlaybackContext);
  }

  v58 = *(v29 + 28);
  sub_1000089F8(&v45[v58], &v120, &unk_101183910);
  if (*(&v121 + 1))
  {
    sub_100059A8C(&v120, &v112);
  }

  else
  {
    *&v112 = v27;
    v59 = v27;
    v60 = String.init<A>(reflecting:)();
    *(&v113 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v114 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v112 = v60;
    *(&v112 + 1) = v61;
    if (*(&v121 + 1))
    {
      sub_1000095E8(&v120, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_100EBDC20;
  *(v62 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v62 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v62 + 32) = 0x4D747865746E6F43;
  *(v62 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v112, v62 + 72);
  v63 = static Player.CommandIssuer<>.combining(_:)();
  v65 = v64;

  sub_10000959C(&v112);
  *(&v113 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v114 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v112 = v63;
  *(&v112 + 1) = v65;
  sub_10006B010(&v112, &v45[v58], &unk_101183910);
  sub_100008FE4(v117, &v112);
  sub_10010FC20(&unk_10118AB50);
  v102 = String.init<A>(describing:)();
  v91 = v66;
  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v117, &v110);
  sub_10012B7A8(v116, &v112);
  v67 = v98;
  sub_1000089F8(v105, v98, &unk_1011838D0);
  v68 = v97;
  sub_1000089F8(v104, v97, &unk_1011845D0);
  v69 = (*(v95 + 80) + 160) & ~*(v95 + 80);
  v70 = (v96 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v72 = (*(v92 + 80) + v71 + 8) & ~*(v92 + 80);
  v96 = (v72 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v73 = (v72 + v93 + 31) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_100059A8C(&v110, v74 + 16);
  *(v74 + 56) = v94;
  sub_10012B828(&v112, v74 + 64);
  sub_10003D17C(v67, v74 + v69, &unk_1011838D0);
  *(v74 + v70) = v87;
  *(v74 + v71) = v89;
  sub_10003D17C(v68, v74 + v72, &unk_1011845D0);
  v75 = v74 + v96;
  v76 = v88;
  *v75 = v90;
  *(v75 + 8) = v76;
  *(v75 + 16) = 2;
  v77 = (v74 + v73);
  *v77 = variable initialization expression of Library.Context.playlistVariants;
  v77[1] = 0;
  swift_unknownObjectRetain();

  v78 = v99;
  UUID.init()();
  v79 = UUID.uuidString.getter();
  v81 = v80;
  (*(v100 + 8))(v78, v101);
  v126._countAndFlagsBits = v102;
  v126._object = v91;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v126, v79, v81, sub_100217D28, v74, &v120);
  swift_unknownObjectRelease();
  sub_10012BA6C(v116);
  sub_10000959C(v117);

  v82 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v116[0] = v120;
  sub_100015BB0(v116);
  v112 = v121;
  sub_100015BB0(&v112);

  sub_1000095E8(v105, &unk_1011838D0);
  sub_1000095E8(v118, &unk_1011845E0);
  sub_1000095E8(v104, &unk_1011845D0);
  sub_1000095E8(v103, &unk_10118AB20);
  return v82;
}

uint64_t sub_100209388@<X0>(char *a1@<X8>)
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
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v15, v14, &unk_1011838D0);
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v14, 1, v16) != 1)
  {
    return sub_100217DC0(v14, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v41 = v1;
  sub_1000095E8(v14, &unk_1011838D0);
  v18 = MetricsEvent.Page.libraryArtistDetail.unsafeMutableAddressor();
  sub_100217D58(v18, v8, type metadata accessor for MetricsEvent.Page);
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
  sub_100217D58(a1, v11, type metadata accessor for Actions.MetricsReportingContext);
  (*(v17 + 56))(v11, 0, 1, v16);
  v33 = v41;
  swift_beginAccess();
  sub_10006B010(v11, v33 + v15, &unk_1011838D0);
  return swift_endAccess();
}

BOOL sub_100209798()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001FFA80() && sub_1001FFC7C();
  }

  else
  {
    return 0;
  }

  return v2;
}

void sub_10020980C(char a1)
{
  if (v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent] == (a1 & 1))
  {
    return;
  }

  [v1 setNeedsUpdateContentUnavailableConfiguration];
  v3 = sub_1001FC874();
  if (sub_1001FFA80() || sub_1001FFC7C())
  {
    v4 = *(v3 + 64);
    *(v3 + 64) = 1;
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v5 = (*(*&v1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v6 = v5[1];
  if (!v6)
  {
    v11 = *(v3 + 64);
    *(v3 + 64) = 0;
    if ((v11 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_10043EAB8();
    goto LABEL_6;
  }

  v7 = *v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8 != 0;
  v10 = *(v3 + 64);
  *(v3 + 64) = v9;
  if (v10 != v9)
  {
    goto LABEL_5;
  }

LABEL_6:

  if (a1)
  {

    sub_100209924();
  }
}

void sub_100209924()
{
  v1 = sub_10010FC20(&unk_101184950);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  if (!sub_100205144())
  {
    goto LABEL_7;
  }

  v4 = (v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState);
  swift_beginAccess();
  v5 = sub_10010FC20(&qword_101184608);
  sub_1000089F8(&v4[*(v5 + 28)], v3, &unk_101184950);
  v6 = sub_10010FC20(&qword_101184610);
  if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
  {
    sub_1000095E8(v3, &unk_101184950);
    v7 = *v4;
    swift_endAccess();
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = v3[*(v6 + 32)];
    sub_1000095E8(v3, &qword_101184610);
    swift_endAccess();
    if (v8)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  if (*(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent))
  {
    goto LABEL_7;
  }

  v10 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v12 = *v10;
  v11 = v10[1];

  if (v11)
  {

    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v13 == 0;
  }

  else
  {
    v9 = 1;
  }

LABEL_8:
  sub_1003FE034(v9);
}

void sub_100209B18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100209B6C();
  }
}

uint64_t sub_100209B6C()
{
  v1 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v1 - 8);
  v77 = v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v75 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v76 = v69 - v6;
  v7 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v7 - 8);
  v79 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v9 - 8);
  v81 = v69 - v10;
  v78 = type metadata accessor for Artist();
  v84 = *(v78 - 8);
  __chkstk_darwin(v78);
  v72 = v11;
  v73 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v83 = v69 - v13;
  v14 = sub_10010FC20(&qword_101184608);
  __chkstk_darwin(v14);
  v16 = v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v69 - v18;
  v20 = sub_10010FC20(&qword_101184610);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v71 = v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[1] = v22;
  __chkstk_darwin(v23);
  v82 = v69 - v24;
  v25 = sub_10010FC20(&unk_101184950);
  __chkstk_darwin(v25 - 8);
  v27 = v69 - v26;
  v74 = v0;
  v28 = &v0[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState];
  swift_beginAccess();
  sub_1000089F8(&v28[*(v14 + 28)], v27, &unk_101184950);
  v70 = v21;
  if ((*(v21 + 48))(v27, 1, v20) == 1)
  {
    sub_1000095E8(v27, &unk_101184950);
    v29 = *v28;
  }

  else
  {
    v29 = v27[*(v20 + 32)];
    sub_1000095E8(v27, &qword_101184610);
  }

  v80 = v29;
  v85[0] = v29 ^ 1;
  sub_1000089F8(v28, v19, &qword_101184608);
  swift_endAccess();
  v30 = v82;
  OptimisticValue.beginTransaction(_:)(v85, v14, v82);
  sub_1000089F8(v28, v16, &qword_101184608);
  swift_beginAccess();
  sub_1002190E0(v19, v28, &qword_101184608);
  swift_endAccess();
  v31 = v74;
  sub_10020A4AC(v16);
  sub_1000095E8(v16, &qword_101184608);
  sub_1000095E8(v19, &qword_101184608);
  v32 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v33 = v83;
  v34 = v84;
  v35 = *(v84 + 16);
  v36 = v78;
  v35(v83, &v31[v32], v78);
  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v81, 1, 1, v37);
  v38 = v73;
  v35(v73, v33, v36);
  v39 = v71;
  sub_1000089F8(v30, v71, &qword_101184610);
  type metadata accessor for MainActor();
  v40 = v31;
  v41 = static MainActor.shared.getter();
  v42 = (*(v34 + 80) + 33) & ~*(v34 + 80);
  v43 = (v72 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v70 + 80) + v43 + 8) & ~*(v70 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v41;
  *(v45 + 24) = &protocol witness table for MainActor;
  *(v45 + 32) = v80;
  (*(v34 + 32))(v45 + v42, v38, v36);
  *(v45 + v43) = v40;
  v46 = v45 + v44;
  v47 = v83;
  sub_10003D17C(v39, v46, &qword_101184610);
  sub_1001F4CB8(0, 0, v81, &unk_100EC05F0, v45);

  v48 = Artist.catalogID.getter();
  if (v49)
  {
    v50 = v48;
  }

  else
  {
    v50 = 0;
  }

  if (v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  v52 = type metadata accessor for URL();
  v53 = *(*(v52 - 8) + 56);
  v54 = v76;
  v53(v76, 1, 1, v52);
  v55 = sub_10010C578(&off_1010999C0);
  sub_1000095E8(&unk_1010999E0, &qword_101183AA0);
  v56 = v75;
  v53(v75, 1, 1, v52);

  v57 = v77;
  MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(v50, v51, 0x747369747241, 0xE600000000000000, v56, 0, 0, 0, v77);
  if (v80)
  {
    v58 = 23;
  }

  else
  {
    v58 = 22;
  }

  v59 = v79;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v50, v51, 5, v58, v54, 0, 0, 12, v79, v55, 0, 0x300u, v57, 0);
  v60 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v61 = sub_10053771C();
  v63 = v62;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v64 = qword_101218AD0;
  v65 = GroupActivitiesManager.hasJoined.getter();
  v66 = GroupActivitiesManager.participantsCount.getter();
  v67 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v60) + 0xB8))(v59, v61, v63, v65 & 1, v66, *(v64 + v67));

  sub_100217EB4(v59, type metadata accessor for MetricsEvent.Click);
  (*(v84 + 8))(v47, v36);
  return sub_1000095E8(v82, &qword_101184610);
}

uint64_t sub_10020A4AC(unsigned __int8 *a1)
{
  v35 = a1;
  v2 = sub_10010FC20(&unk_101184950);
  __chkstk_darwin(v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v32 - v6;
  v8 = sub_10010FC20(&qword_101184608);
  __chkstk_darwin(v8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  v34 = v1;
  sub_1000089F8(v1 + v13, v12, &qword_101184608);
  sub_1000089F8(&v12[*(v8 + 28)], v7, &unk_101184950);
  v14 = sub_10010FC20(&qword_101184610);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v7, 1, v14) == 1)
  {
    sub_1000095E8(v7, &unk_101184950);
    v16 = *v12;
    v17 = &qword_101184608;
    v18 = v12;
  }

  else
  {
    sub_1000095E8(v12, &qword_101184608);
    v16 = v7[*(v14 + 32)];
    v17 = &qword_101184610;
    v18 = v7;
  }

  sub_1000095E8(v18, v17);
  v19 = v35;
  sub_1000089F8(&v35[*(v8 + 28)], v4, &unk_101184950);
  if (v15(v4, 1, v14) == 1)
  {
    result = sub_1000095E8(v4, &unk_101184950);
    if (v16 == *v19)
    {
      return result;
    }
  }

  else
  {
    v21 = v4[*(v14 + 32)];
    result = sub_1000095E8(v4, &qword_101184610);
    if (v16 == v21)
    {
      return result;
    }
  }

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000060E4(v22, qword_101219180);
  v23 = v34;
  v24 = v34;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    *v27 = 136446210;
    sub_1000089F8(v23 + v13, v33, &qword_101184608);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000105AC(v29, v30, &v36);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Library Artist Favorite status resolved to %{public}s", v27, 0xCu);
    sub_10000959C(v28);
  }

  return sub_1002027C8();
}

uint64_t sub_10020A8D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 128) = a6;
  *(v7 + 136) = a7;
  *(v7 + 120) = a5;
  *(v7 + 232) = a4;
  *(v7 + 144) = sub_10010FC20(&qword_101184608);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 168) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 176) = v9;
  *(v7 + 184) = v8;

  return _swift_task_switch(sub_10020A9C0, v9, v8);
}

uint64_t sub_10020A9C0()
{
  v1 = *(v0 + 232);
  type metadata accessor for MusicLibrary();
  *(v0 + 192) = static MusicLibrary.shared.getter();
  if (v1 == 1)
  {
    v2 = swift_task_alloc();
    *(v0 + 200) = v2;
    v3 = type metadata accessor for Artist();
    *v2 = v0;
    v2[1] = sub_10020AB14;
    v4 = *(v0 + 120);

    return MusicLibrary.undoFavorite<A>(_:)(v4, v3, &protocol witness table for Artist);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 216) = v5;
    v6 = type metadata accessor for Artist();
    *v5 = v0;
    v5[1] = sub_10020AD80;
    v7 = *(v0 + 120);

    return MusicLibrary.favorite<A>(_:)(v7, v6, &protocol witness table for Artist);
  }
}

uint64_t sub_10020AB14()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020AE9C;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020AC30;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020AC30()
{
  v1 = v0[20];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  v6 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v4 + v6, v1, &qword_101184608);
  OptimisticValue.completeTransaction(_:)(v5, v3);
  sub_1000089F8(v4 + v6, v2, &qword_101184608);
  swift_beginAccess();
  sub_1002190E0(v1, v4 + v6, &qword_101184608);
  swift_endAccess();
  sub_10020A4AC(v2);
  v7 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608);
  sub_1000095E8(v7, &qword_101184608);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10020AD80()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10020B150;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_10021954C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10020AE9C()
{
  v20 = v0;
  v1 = v0[26];

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219180);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[14] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Artist Favorite Action failed with error=%s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v10, &qword_101184608);
  OptimisticValue.cancelTransaction(_:)(v13, v12);
  sub_1000089F8(v14 + v15, v11, &qword_101184608);
  swift_beginAccess();
  sub_1002190E0(v10, v14 + v15, &qword_101184608);
  swift_endAccess();
  sub_10020A4AC(v11);

  v16 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608);
  sub_1000095E8(v16, &qword_101184608);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10020B150()
{
  v20 = v0;
  v1 = v0[28];

  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219180);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    v0[14] = v1;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Artist Favorite Action failed with error=%s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v11 = v0[19];
  v10 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[16];
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
  swift_beginAccess();
  sub_1000089F8(v14 + v15, v10, &qword_101184608);
  OptimisticValue.cancelTransaction(_:)(v13, v12);
  sub_1000089F8(v14 + v15, v11, &qword_101184608);
  swift_beginAccess();
  sub_1002190E0(v10, v14 + v15, &qword_101184608);
  swift_endAccess();
  sub_10020A4AC(v11);

  v16 = v0[20];
  sub_1000095E8(v0[19], &qword_101184608);
  sub_1000095E8(v16, &qword_101184608);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10020B4B8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_10010FC20(&unk_10118A650);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23[-v8];
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v18 != a3)
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
LABEL_14:
        sub_100200BBC(v9);
        sub_100009F78(0, &unk_101184750);
        v17 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
        (*(v7 + 8))(v9, v6);
        return v17;
      }

      strcpy(v24, "Unknown kind=");
      HIWORD(v24[1]) = -4864;
      v21._countAndFlagsBits = a2;
      v21._object = a3;
      String.append(_:)(v21);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  v12 = v3;
  sub_100200938(v9);
  sub_100009F78(0, &unk_101184750);
  v13 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  v14 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
  swift_beginAccess();
  v15 = type metadata accessor for Artist();
  v24[3] = v15;
  v24[4] = &protocol witness table for Artist;
  v16 = sub_10001C8B8(v24);
  (*(*(v15 - 8) + 16))(v16, v12 + v14, v15);
  v17 = sub_1004F24B0(v24);

  sub_1000095E8(v24, &qword_1011A3DD0);
  return v17;
}

uint64_t sub_10020B8F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v173 = a1;
  v5 = sub_10010FC20(&unk_101193A90);
  v167 = *(v5 - 8);
  v168 = v5;
  __chkstk_darwin(v5);
  v166 = &v138 - v6;
  v146 = sub_10010FC20(&unk_101193A80);
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v138 - v7;
  v8 = sub_10010FC20(&unk_101181600);
  __chkstk_darwin(v8 - 8);
  v10 = &v138 - v9;
  v11 = sub_10010FC20(&qword_101193AF0);
  v147 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v138 - v12;
  v14 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v14 - 8);
  v170 = &v138 - v15;
  v153 = sub_10010FC20(&unk_101193AA0);
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = &v138 - v16;
  v17 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v17 - 8);
  v165 = &v138 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v143 = &v138 - v20;
  __chkstk_darwin(v21);
  v172 = &v138 - v22;
  v23 = sub_10010FC20(&unk_10118ABC0);
  __chkstk_darwin(v23 - 8);
  v162 = &v138 - v24;
  v25 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v163 = *(v25 - 8);
  v164 = v25;
  __chkstk_darwin(v25);
  v160 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for UICellAccessory.DisplayedState();
  v159 = *(v161 - 8);
  __chkstk_darwin(v161);
  v158 = &v138 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_10010FC20(&qword_101184588);
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v154 = &v138 - v28;
  v142 = sub_10010FC20(&qword_101184578);
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v138 - v29;
  v30 = sub_10010FC20(&qword_1011815C0);
  __chkstk_darwin(v30 - 8);
  v32 = &v138 - v31;
  v33 = sub_10010FC20(&qword_1011846D8);
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v138 - v35;
  v37 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v37 - 8);
  v169 = &v138 - v38;
  v150 = sub_10010FC20(&unk_10118F1E0);
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v148 = &v138 - v39;
  v40 = sub_10010FC20(&unk_101184730);
  __chkstk_darwin(v40 - 8);
  v157 = &v138 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v139 = &v138 - v43;
  __chkstk_darwin(v44);
  v171 = &v138 - v45;
  v46 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v46 - 8);
  v48 = &v138 - v47;
  v174 = a2;
  v49 = IndexPath.section.getter();
  v50 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v50 - 8) + 56))(v48, 1, 1, v50);
  v175 = v3;
  v51 = sub_1001FCF68(v49, v48);
  sub_1000095E8(v48, &unk_1011846F0);
  if (v51 == 2)
  {
    goto LABEL_49;
  }

  if (v51)
  {
    v52 = v175;
    RequestResponse.Controller.revision.getter();
    v53 = v170;
    RequestResponse.Revision.content.getter(v170);

    v54 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v54 - 8) + 48))(v53, 1, v54) == 1)
    {
      sub_1000095E8(v53, &unk_1011846C0);
      v55 = type metadata accessor for MusicVideo();
      v56 = v172;
      (*(*(v55 - 8) + 56))(v172, 1, 1, v55);
      v57 = v174;
      goto LABEL_19;
    }

    v63 = v152;
    v64 = v151;
    v65 = v153;
    (*(v152 + 16))(v151, v53, v153);
    sub_1000095E8(v53, &unk_10118D1E0);
    v66 = MusicLibrarySectionedResponse.sections.getter();
    (*(v63 + 8))(v64, v65);
    *&v176 = _swiftEmptyArrayStorage;
    v67 = *(v66 + 16);
    if (v67)
    {
      v68 = *(v147 + 16);
      v69 = (*(v147 + 80) + 32) & ~*(v147 + 80);
      v171 = v66;
      v70 = v66 + v69;
      v71 = *(v147 + 72);
      v72 = (v147 + 8);
      do
      {
        v68(v13, v70, v11);
        MusicLibrarySection.items.getter();
        (*v72)(v13, v11);
        sub_1001240F8(v10);
        v70 += v71;
        --v67;
      }

      while (v67);

      v52 = v175;
      v73 = v176;
    }

    else
    {

      v73 = _swiftEmptyArrayStorage;
    }

    v57 = v174;
    v86 = IndexPath.item.getter();
    v56 = v172;
    if ((v86 & 0x8000000000000000) == 0)
    {
      v87 = v86;
      if (v86 < v73[2])
      {
        v88 = type metadata accessor for MusicVideo();
        v89 = *(v88 - 8);
        (*(v89 + 16))(v56, v73 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v87, v88);

        (*(v89 + 56))(v56, 0, 1, v88);
LABEL_19:
        v90 = sub_1001FC918();
        v91 = v90[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

        if (v91 & 1) != 0 || (*(*&v52[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32))
        {
          v92 = v166;
          sub_1002015D4(v166);
          v93 = sub_1007F8490(v92, v57, v56);
          (*(v167 + 8))(v92, v168);
          v94 = v56;
          v95 = v165;
        }

        else
        {
          v96 = v144;
          sub_10020135C(v144);
          v93 = sub_1007F7F54(v96, v57, v56);
          (*(v145 + 8))(v96, v146);
          v97 = Corner.medium.unsafeMutableAddressor();
          v98 = *v97;
          v99 = v97[1];
          v100 = *(v97 + 16);
          v101 = swift_allocObject();
          *(v101 + 16) = v98;
          *(v101 + 24) = v99;
          *(v101 + 32) = v100;
          UICollectionViewCell.configurationUpdateHandler.setter();
          v94 = v56;
          v95 = v143;
        }

        sub_1000089F8(v94, v95, &unk_1011846B0);
        v102 = type metadata accessor for MusicVideo();
        v103 = *(v102 - 8);
        if ((*(v103 + 48))(v95, 1, v102) == 1)
        {
          sub_1000095E8(v95, &unk_1011846B0);
          v176 = 0u;
          v177 = 0u;
          v178 = 0;
        }

        else
        {
          *(&v177 + 1) = v102;
          v178 = &protocol witness table for MusicVideo;
          v104 = sub_10001C8B8(&v176);
          (*(v103 + 32))(v104, v95, v102);
        }

        v105 = sub_1004F24B0(&v176);

        v106 = &unk_1011846B0;
LABEL_44:
        sub_1000095E8(v56, v106);
        sub_1000095E8(&v176, &qword_1011A3DD0);
        return v105;
      }

      goto LABEL_47;
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = v175;
  RequestResponse.Controller.revision.getter();
  v59 = v169;
  RequestResponse.Revision.content.getter(v169);

  v60 = sub_10010FC20(&unk_101184700);
  if ((*(*(v60 - 8) + 48))(v59, 1, v60) == 1)
  {
    sub_1000095E8(v59, &unk_1011846E0);
    v61 = type metadata accessor for Album();
    v56 = v171;
    (*(*(v61 - 8) + 56))(v171, 1, 1, v61);
    v62 = v174;
    goto LABEL_31;
  }

  v74 = v149;
  v75 = v148;
  v76 = v150;
  (*(v149 + 16))(v148, v59, v150);
  sub_1000095E8(v59, &unk_101184700);
  v77 = MusicLibrarySectionedResponse.sections.getter();
  (*(v74 + 8))(v75, v76);
  *&v176 = _swiftEmptyArrayStorage;
  v78 = *(v77 + 16);
  if (v78)
  {
    v81 = *(v34 + 16);
    v79 = v34 + 16;
    v80 = v81;
    v82 = (*(v79 + 64) + 32) & ~*(v79 + 64);
    v172 = v77;
    v83 = v77 + v82;
    v84 = *(v79 + 56);
    do
    {
      v80(v36, v83, v33);
      MusicLibrarySection.items.getter();
      (*(v79 - 8))(v36, v33);
      sub_100124960(v32);
      v83 += v84;
      --v78;
    }

    while (v78);

    v85 = v176;
  }

  else
  {

    v85 = _swiftEmptyArrayStorage;
  }

  v62 = v174;
  v107 = IndexPath.item.getter();
  v58 = v175;
  v56 = v171;
  if ((v107 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v108 = v107;
  if (v107 < v85[2])
  {
    v109 = type metadata accessor for Album();
    v110 = *(v109 - 8);
    (*(v110 + 16))(v56, v85 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v108, v109);

    (*(v110 + 56))(v56, 0, 1, v109);
LABEL_31:
    v111 = sub_1001FC918();
    v112 = v111[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v112 & 1) != 0 || (*(*&v58[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_layoutVariantController] + 32))
    {
      v113 = v154;
      sub_1002010BC(v154);
      v105 = sub_1007F7A18(v113, v62, v56);
      (*(v155 + 8))(v113, v156);
      sub_10010FC20(&unk_101184740);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_100EBC6B0;
      v114 = v159;
      v115 = v158;
      v116 = v161;
      (*(v159 + 104))(v158, enum case for UICellAccessory.DisplayedState.always(_:), v161);
      v117 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v117 - 8) + 56))(v162, 1, 1, v117);
      v118 = v160;
      UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.disclosureIndicator(displayed:options:)();
      (*(v163 + 8))(v118, v164);
      (*(v114 + 8))(v115, v116);
      UICollectionViewListCell.accessories.setter();
      v119 = [v58 traitCollection];
      v120 = [v119 userInterfaceIdiom];

      if (v120 != 6)
      {
        v121 = v105;
        [v121 directionalLayoutMargins];
        [v121 setDirectionalLayoutMargins:?];
      }

      v122 = v157;
      sub_1000089F8(v56, v157, &unk_101184730);
      v123 = type metadata accessor for Album();
      v124 = *(v123 - 8);
      if ((*(v124 + 48))(v122, 1, v123) == 1)
      {
        sub_1000095E8(v122, &unk_101184730);
        v176 = 0u;
        v177 = 0u;
        v178 = 0;
      }

      else
      {
        *(&v177 + 1) = v123;
        v178 = &protocol witness table for Album;
        v125 = sub_10001C8B8(&v176);
        (*(v124 + 32))(v125, v122, v123);
      }
    }

    else
    {
      v126 = v140;
      sub_100200E44(v140);
      v127 = sub_1007F74DC(v126, v62, v56);
      (*(v141 + 8))(v126, v142);
      v128 = Corner.medium.unsafeMutableAddressor();
      v129 = *v128;
      v130 = v128[1];
      v131 = *(v128 + 16);
      v132 = swift_allocObject();
      *(v132 + 16) = v129;
      *(v132 + 24) = v130;
      *(v132 + 32) = v131;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v133 = v139;
      sub_1000089F8(v56, v139, &unk_101184730);
      v134 = type metadata accessor for Album();
      v135 = *(v134 - 8);
      if ((*(v135 + 48))(v133, 1, v134) == 1)
      {
        sub_1000095E8(v133, &unk_101184730);
        v176 = 0u;
        v177 = 0u;
        v178 = 0;
      }

      else
      {
        *(&v177 + 1) = v134;
        v178 = &protocol witness table for Album;
        v136 = sub_10001C8B8(&v176);
        (*(v135 + 32))(v136, v133, v134);
      }

      v105 = sub_1004F24B0(&v176);
    }

    v106 = &unk_101184730;
    goto LABEL_44;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

BOOL sub_10020D0C8(uint64_t a1, uint64_t a2, void *a3)
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

unint64_t sub_10020D1BC(void *a1, uint64_t a2)
{
  v3 = v2;
  v249 = a1;
  v5 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v5 - 8);
  v205 = &v195 - v6;
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v201 = &v195 - v8;
  v195 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin(v195);
  v196 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PlaybackIntentDescriptor(0);
  v197 = *(v10 - 8);
  __chkstk_darwin(v10 - 8);
  v199 = &v195 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v11;
  __chkstk_darwin(v12);
  v200 = &v195 - v13;
  v14 = sub_10010FC20(&unk_1011846B0);
  __chkstk_darwin(v14 - 8);
  v203 = &v195 - v15;
  v16 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v16 - 8);
  v202 = &v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v18 - 8);
  v204 = &v195 - v19;
  v210 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v207 = *(v210 - 8);
  __chkstk_darwin(v210);
  v206 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&unk_101181600);
  __chkstk_darwin(v21 - 8);
  v246 = &v195 - v22;
  v225 = type metadata accessor for GenericMusicItem();
  v224 = *(v225 - 8);
  __chkstk_darwin(v225);
  v222 = &v195 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v234 = *(v237 - 8);
  __chkstk_darwin(v237);
  v223 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v240 = &v195 - v26;
  v27 = sub_10010FC20(&qword_101193AF0);
  v209 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = &v195 - v28;
  v30 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v30 - 8);
  v245 = &v195 - v31;
  v233 = sub_10010FC20(&unk_101193AA0);
  v232 = *(v233 - 8);
  __chkstk_darwin(v233);
  v231 = &v195 - v32;
  v236 = type metadata accessor for MusicVideo();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v215 = &v195 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v247 = (&v195 - v35);
  v239 = type metadata accessor for IndexPath();
  v238 = *(v239 - 8);
  __chkstk_darwin(v239);
  v226 = v36;
  v227 = &v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10010FC20(&qword_1011846D0);
  __chkstk_darwin(v37 - 8);
  v221 = &v195 - v38;
  v39 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v39 - 8);
  v219 = &v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v218 = &v195 - v42;
  __chkstk_darwin(v43);
  v242 = &v195 - v44;
  v214 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin(v214);
  v216 = &v195 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v217 = &v195 - v47;
  __chkstk_darwin(v48);
  v220 = &v195 - v49;
  v50 = sub_10010FC20(&qword_1011815C0);
  __chkstk_darwin(v50 - 8);
  v52 = &v195 - v51;
  v53 = sub_10010FC20(&qword_1011846D8);
  v208 = *(v53 - 8);
  __chkstk_darwin(v53);
  v55 = &v195 - v54;
  v56 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v56 - 8);
  v244 = &v195 - v57;
  v230 = sub_10010FC20(&unk_10118F1E0);
  v229 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v195 - v58;
  v250 = type metadata accessor for Album();
  v243 = *(v250 - 8);
  __chkstk_darwin(v250);
  v212 = &v195 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v213 = &v195 - v61;
  __chkstk_darwin(v62);
  v241 = &v195 - v63;
  __chkstk_darwin(v64);
  v211 = &v195 - v65;
  __chkstk_darwin(v66);
  v248 = &v195 - v67;
  v68 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v68 - 8);
  v70 = &v195 - v69;
  v251 = a2;
  v71 = IndexPath.section.getter();
  v72 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v72 - 8) + 56))(v70, 1, 1, v72);
  v252 = v3;
  v73 = sub_1001FCF68(v71, v70);
  result = sub_1000095E8(v70, &unk_1011846F0);
  if (v73 == 2)
  {
    return result;
  }

  if ((v73 & 1) == 0)
  {
    v87 = v252;
    v88 = *&v252[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
    RequestResponse.Controller.revision.getter();
    v89 = v244;
    RequestResponse.Revision.content.getter(v244);

    v90 = sub_10010FC20(&unk_101184700);
    if ((*(*(v90 - 8) + 48))(v89, 1, v90) == 1)
    {
      v85 = &unk_1011846E0;
      v86 = v89;
      return sub_1000095E8(v86, v85);
    }

    v103 = v229;
    v104 = v228;
    v105 = v230;
    (*(v229 + 16))(v228, v89, v230);
    sub_1000095E8(v89, &unk_101184700);
    v106 = MusicLibrarySectionedResponse.sections.getter();
    (*(v103 + 8))(v104, v105);
    *&v254[0] = _swiftEmptyArrayStorage;
    v107 = *(v106 + 16);
    if (v107)
    {
      v247 = v88;
      v108 = *(v208 + 16);
      v109 = (*(v208 + 80) + 32) & ~*(v208 + 80);
      v246 = v106;
      v110 = v106 + v109;
      v111 = *(v208 + 72);
      v112 = (v208 + 8);
      do
      {
        v108(v55, v110, v53);
        MusicLibrarySection.items.getter();
        (*v112)(v55, v53);
        sub_100124960(v52);
        v110 += v111;
        --v107;
      }

      while (v107);

      v113 = *&v254[0];
      v87 = v252;
      v88 = v247;
    }

    else
    {

      v113 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v113 + 2))
      {
        v138 = v243;
        v139 = v243[2];
        v140 = v211;
        v141 = v250;
        v139(v211, &v113[((*(v138 + 80) + 32) & ~*(v138 + 80)) + v243[9] * result], v250);

        (v138[4])(v248, v140, v141);
        v142 = [v87 traitCollection];
        sub_100217F14();
        UITraitCollection.subscript.getter();

        LOBYTE(v142) = sub_10049CB78();

        if (v142)
        {
          v143 = 1;
        }

        else
        {
          v144 = v88[6] + *(*v88[6] + 96);
          swift_beginAccess();
          v143 = *(v144 + 8);
        }

        v145 = v241;
        v146 = v250;
        (v139)(v241, v248);
        v147 = sub_10010FC20(&qword_10118A430);
        v148 = *(v147 + 64);
        v149 = v220;
        v220[*(v147 + 48)] = v143;
        v150 = _s6AlbumsV5ScopeOMa(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v150 - 8) + 56))(v149, 0, 1, v150);
        *(v149 + v148) = 0;
        swift_storeEnumTagMultiPayload();
        v151 = type metadata accessor for URL();
        v152 = v242;
        (*(*(v151 - 8) + 56))(v242, 1, 1, v151);
        v153 = v213;
        v154 = v146;
        v139(v213, v145, v146);
        v155 = v217;
        sub_100217D58(v149, v217, type metadata accessor for ContainerDetail.Source);
        v156 = v218;
        sub_1000089F8(v152, v218, &qword_101183A20);
        v157 = v212;
        v139(v212, v153, v154);
        v158 = v216;
        sub_100217D58(v155, v216, type metadata accessor for ContainerDetail.Source);
        v159 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
        v160 = v221;
        (*(*(v159 - 8) + 56))(v221, 1, 1, v159);
        v161 = v219;
        sub_1000089F8(v156, v219, &qword_101183A20);
        v162 = sub_1004E34D0(v157, v158, v160, v161);
        sub_1000095E8(v156, &qword_101183A20);
        sub_100217EB4(v155, type metadata accessor for ContainerDetail.Source);
        v163 = v243[1];
        v164 = v250;
        v163(v153, v250);
        v165 = v163;
        v247 = v163;
        v166 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
        v167 = sub_100137F64(v162, v166);
        sub_1000095E8(v242, &qword_101183A20);
        sub_100217EB4(v149, type metadata accessor for ContainerDetail.Source);
        v165(v241, v164);
        v168 = v252;
        *&v167[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v252[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

        v246 = sub_100009F78(0, &qword_101184710);
        v169 = objc_allocWithZone(UIZoomTransitionOptions);
        v170 = v167;
        v171 = [v169 init];
        UIZoomTransitionOptions.alignmentRectProvider.setter();
        v172 = v238;
        v173 = v227;
        v174 = v239;
        (*(v238 + 16))(v227, v251, v239);
        v175 = (*(v172 + 80) + 24) & ~*(v172 + 80);
        v176 = swift_allocObject();
        v177 = v249;
        *(v176 + 16) = v249;
        (*(v172 + 32))(v176 + v175, v173, v174);
        v178 = v177;
        v179 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

        [v170 setPreferredTransition:v179];
        [v168 showViewController:v170 sender:v168];

        return (v247)(v248, v250);
      }

LABEL_37:
      __break(1u);
      return result;
    }

    goto LABEL_35;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v249 deselectItemAtIndexPath:isa animated:1];

  v76 = v252;
  v77 = [v252 navigationItem];
  v78 = [v77 searchController];

  if (v78)
  {
    v79 = [v78 searchBar];

    [v79 resignFirstResponder];
  }

  v80 = *&v76[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  RequestResponse.Controller.revision.getter();
  v81 = v245;
  RequestResponse.Revision.content.getter(v245);

  v82 = sub_10010FC20(&unk_10118D1E0);
  v83 = (*(*(v82 - 8) + 48))(v81, 1, v82);
  v84 = v246;
  if (v83 == 1)
  {
    v85 = &unk_1011846C0;
    v86 = v81;
    return sub_1000095E8(v86, v85);
  }

  v250 = v80;
  v91 = v232;
  v92 = v231;
  v93 = v233;
  (*(v232 + 16))(v231, v81, v233);
  sub_1000095E8(v81, &unk_10118D1E0);
  v94 = MusicLibrarySectionedResponse.sections.getter();
  (*(v91 + 8))(v92, v93);
  v95 = v94;
  *&v254[0] = _swiftEmptyArrayStorage;
  v96 = *(v94 + 16);
  if (v96)
  {
    v97 = *(v209 + 16);
    v98 = (*(v209 + 80) + 32) & ~*(v209 + 80);
    v249 = v95;
    v99 = &v95[v98];
    v100 = *(v209 + 72);
    v101 = (v209 + 8);
    do
    {
      v97(v29, v99, v27);
      MusicLibrarySection.items.getter();
      (*v101)(v29, v27);
      sub_1001240F8(v84);
      v99 += v100;
      --v96;
    }

    while (v96);

    v102 = *&v254[0];
  }

  else
  {

    v102 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  v114 = v234;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v115 = v240;
  if (result >= *(v102 + 2))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v116 = v235;
  v117 = *(v235 + 16);
  v118 = v215;
  v119 = v236;
  v117(v215, &v102[((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v235 + 72) * result], v236);

  v120 = v247;
  (*(v116 + 32))(v247, v118, v119);
  v121 = v222;
  v117(v222, v120, v119);
  v122 = v224;
  v123 = v225;
  (*(v224 + 104))(v121, enum case for GenericMusicItem.musicVideo(_:), v225);
  sub_100538C48(v121, v115);
  (*(v122 + 8))(v121, v123);
  v124 = v223;
  v125 = v237;
  (*(v114 + 104))(v223, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v237);
  LOBYTE(v123) = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v126 = v115;
  v127 = *(v114 + 8);
  v127(v124, v125);
  if (v123)
  {
    v128 = *(v250 + 48);
    v129 = *(*v128 + 96);
    swift_beginAccess();
    v130 = v202;
    sub_100217D58(v128 + v129, v202, _s11MusicVideosVMa);
    v131 = v203;
    v132 = v247;
    v117(v203, v247, v119);
    (*(v116 + 56))(v131, 0, 1, v119);
    v133 = v204;
    sub_1006FD384(v131, v204);
    sub_1000095E8(v131, &unk_1011846B0);
    sub_100217EB4(v130, _s11MusicVideosVMa);
    v134 = v207;
    v135 = v210;
    if ((*(v207 + 48))(v133, 1, v210) == 1)
    {
      v127(v240, v237);
      (*(v116 + 8))(v132, v119);
      v85 = &unk_10118CDB0;
      v86 = v133;
      return sub_1000095E8(v86, v85);
    }

    v180 = v206;
    (*(v134 + 32))(v206, v133, v135);
    v181 = v196;
    (*(v134 + 16))(v196, v180, v135);
    swift_storeEnumTagMultiPayload();
    v255 = 0;
    memset(v254, 0, sizeof(v254));
    v182 = v252;
    v253[0] = v252;
    v183 = v134;
    v184 = v252;
    v185 = String.init<A>(reflecting:)();
    v253[3] = &type metadata for Player.CommandIssuerIdentity;
    v253[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v253[0] = v185;
    v253[1] = v186;
    v187 = v184;
    v188 = v200;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v181, v254, 3, 0, 0, 1, 0, 1, v200, v182, v253);
    v189 = type metadata accessor for TaskPriority();
    v190 = v201;
    (*(*(v189 - 8) + 56))(v201, 1, 1, v189);
    v191 = v199;
    sub_100217D58(v188, v199, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v192 = static MainActor.shared.getter();
    v193 = (*(v197 + 80) + 32) & ~*(v197 + 80);
    v194 = swift_allocObject();
    *(v194 + 16) = v192;
    *(v194 + 24) = &protocol witness table for MainActor;
    sub_100217DC0(v191, v194 + v193, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v190, &unk_100ECA700, v194);

    sub_100217EB4(v188, type metadata accessor for PlaybackIntentDescriptor);
    (*(v183 + 8))(v206, v210);
    v127(v240, v237);
    return (*(v235 + 8))(v247, v236);
  }

  else
  {
    v136 = v205;
    (*(v238 + 56))(v205, 1, 1, v239);
    sub_100376F3C(v136, v254);
    sub_1000095E8(v136, &unk_10118BCE0);
    v137 = v247;
    sub_10085E3A4(v126, v247, v254);
    sub_10012BA6C(v254);
    v127(v126, v125);
    return (*(v116 + 8))(v137, v119);
  }
}

void sub_10020F07C()
{
  v0 = objc_allocWithZone(type metadata accessor for ContextualPreview.ViewController(0));

  sub_100243448();
}

unint64_t sub_10020F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a5;
  v7 = type metadata accessor for UUID();
  v125 = *(v7 - 8);
  __chkstk_darwin(v7);
  v124 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011838D0);
  v121 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v122 = v10;
  v123 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = &v107 - v12;
  v13 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v107 - v14;
  v16 = sub_10010FC20(&unk_1011845D0);
  v118 = *(v16 - 8);
  __chkstk_darwin(v16 - 8);
  v119 = v17;
  v120 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v107 - v19;
  v20 = sub_10010FC20(&unk_10118CDB0);
  __chkstk_darwin(v20 - 8);
  v22 = &v107 - v21;
  v23 = sub_10010FC20(&unk_1011838E0);
  __chkstk_darwin(v23 - 8);
  v115 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v117 = &v107 - v26;
  __chkstk_darwin(v27);
  v29 = &v107 - v28;
  __chkstk_darwin(v30);
  v32 = &v107 - v31;
  v33 = sub_10010FC20(&unk_10118AB20);
  __chkstk_darwin(v33 - 8);
  v126 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v129 = &v107 - v36;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v38 = Strong;
  sub_10010FC20(&unk_101183900);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100EBC6B0;
  sub_100008FE4(a3, v39 + 32);
  v40 = [v38 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v113 = v145[0];
  sub_1000089F8(a4, v22, &unk_10118CDB0);
  PlaybackIntentDescriptor.IntentType.init(_:)(v22, v32);
  memset(v145, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v41 = qword_101218AD8;
  sub_1000089F8(v32, v29, &unk_1011838E0);
  v42 = v41;
  v43 = UIViewController.playActivityInformation.getter();
  v111 = v44;
  v112 = v43;
  v46 = v45;
  v110 = v47;
  sub_1000089F8(v145, &v137, &unk_101183910);
  v114 = v7;
  v127 = v38;
  if (*(&v138 + 1))
  {
    sub_100059A8C(&v137, &v141);
  }

  else
  {
    *&v146 = v38;
    sub_100009F78(0, &qword_101183D40);
    v49 = v38;
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
      *&v141 = v49;
      v50 = v49;
      v51 = String.init<A>(reflecting:)();
      v142 = &type metadata for Player.CommandIssuerIdentity;
      v143 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v141 = v51;
      *(&v141 + 1) = v52;
      if (*(&v150 + 1))
      {
        sub_1000095E8(&v149, &unk_101183910);
      }
    }

    if (*(&v138 + 1))
    {
      sub_1000095E8(&v137, &unk_101183910);
    }
  }

  v53 = v129;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v42, v29, v112, v111, v46, v110, &v141, v129);
  sub_1000095E8(v145, &unk_101183910);
  sub_1000095E8(v32, &unk_1011838E0);
  v54 = type metadata accessor for Actions.PlaybackContext();
  v55 = *(v54 - 8);
  (*(v55 + 56))(v53, 0, 1, v54);
  v56 = type metadata accessor for PlaylistContext();
  (*(*(v56 - 8) + 56))(v130, 1, 1, v56);
  v57 = type metadata accessor for IndexPath();
  v58 = *(v57 - 8);
  (*(v58 + 16))(v15, v116, v57);
  (*(v58 + 56))(v15, 0, 1, v57);
  v59 = v127;
  sub_100376F3C(v15, v145);
  sub_1000095E8(v15, &unk_10118BCE0);
  v60 = v128;
  sub_100209388(v128);
  v61 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  sub_100008FE4(v39 + 32, v144);

  sub_1000089F8(v145, &v137, &unk_1011845E0);
  if (v140 == 1)
  {
    v151 = 0;
    v149 = 0u;
    v150 = 0u;
    v152 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v59, &v149, &v141);
    v62 = v126;
    if (v140 != 1)
    {
      sub_1000095E8(&v137, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v137, &v141);
    v62 = v126;
  }

  swift_getObjectType();
  v63 = swift_conformsToProtocol2();
  if (v63)
  {
    v111 = v63;
    v64 = v59;
    v112 = v59;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v116 = swift_allocBox();
  v66 = v65;
  sub_1000089F8(v129, v62, &unk_10118AB20);
  v67 = *(v55 + 48);
  if (v67(v62, 1, v54) == 1)
  {
    v68 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v69 = v117;
    (*(*(v68 - 8) + 56))(v117, 1, 1, v68);
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v70 = v69;
    v71 = v115;
    sub_1000089F8(v70, v115, &unk_1011838E0);
    v110 = v42;
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
      v134 = v59;
      sub_100009F78(0, &qword_101183D40);
      v77 = v59;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v131, &v146);
        v62 = v126;
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
        v62 = v126;
        if (*(&v132 + 1))
        {
          sub_1000095E8(&v131, &unk_101183910);
        }
      }

      v59 = v127;
      v71 = v115;
      if (v136)
      {
        sub_1000095E8(&v135, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v110, v71, v72, v109, v108, v76, &v146, v66);
    sub_1000095E8(&v137, &unk_101183910);
    sub_1000095E8(v117, &unk_1011838E0);
    if (v67(v62, 1, v54) != 1)
    {
      sub_1000095E8(v62, &unk_10118AB20);
    }
  }

  else
  {
    sub_100217DC0(v62, v66, type metadata accessor for Actions.PlaybackContext);
  }

  v81 = *(v54 + 28);
  sub_1000089F8(&v66[v81], &v146, &unk_101183910);
  if (*(&v147 + 1))
  {
    sub_100059A8C(&v146, &v137);
  }

  else
  {
    *&v137 = v59;
    v82 = v59;
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
  sub_10006B010(&v137, &v66[v81], &unk_101183910);
  sub_100008FE4(v144, &v137);
  sub_10010FC20(&unk_10118AB50);
  v126 = String.init<A>(describing:)();
  v117 = v89;
  v115 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v144, &v135);
  sub_10012B7A8(&v141, &v137);
  v90 = v123;
  sub_1000089F8(v128, v123, &unk_1011838D0);
  v91 = v120;
  sub_1000089F8(v130, v120, &unk_1011845D0);
  v92 = (*(v121 + 80) + 160) & ~*(v121 + 80);
  v93 = (v122 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
  v95 = (*(v118 + 80) + v94 + 8) & ~*(v118 + 80);
  v122 = (v95 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v95 + v119 + 31) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  sub_100059A8C(&v135, v97 + 16);
  *(v97 + 56) = v113;
  sub_10012B828(&v137, v97 + 64);
  sub_10003D17C(v90, v97 + v92, &unk_1011838D0);
  v98 = v116;
  *(v97 + v93) = v115;
  *(v97 + v94) = v98;
  sub_10003D17C(v91, v97 + v95, &unk_1011845D0);
  v99 = v97 + v122;
  v100 = v111;
  *v99 = v112;
  *(v99 + 8) = v100;
  *(v99 + 16) = 2;
  v101 = (v97 + v96);
  *v101 = variable initialization expression of Library.Context.playlistVariants;
  v101[1] = 0;
  swift_unknownObjectRetain();

  v102 = v124;
  UUID.init()();
  v103 = UUID.uuidString.getter();
  v105 = v104;
  (*(v125 + 8))(v102, v114);
  v153._countAndFlagsBits = v126;
  v153._object = v117;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v153, v103, v105, sub_10021953C, v97, &v146);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v141);
  sub_10000959C(v144);

  v48 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v141 = v146;
  sub_100015BB0(&v141);
  v137 = v147;
  sub_100015BB0(&v137);

  sub_1000095E8(v128, &unk_1011838D0);
  sub_1000095E8(v145, &unk_1011845E0);
  sub_1000095E8(v130, &unk_1011845D0);
  sub_1000095E8(v129, &unk_10118AB20);
  return v48;
}

id sub_1002101F0(void *a1, void *a2, void *a3)
{
  v6 = sub_10010FC20(&unk_10118BCE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v28 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v28 - v15;
  aBlock[0] = [a2 identifier];
  sub_10010FC20(&unk_1011846A0);
  v17 = swift_dynamicCast();
  v18 = *(v10 + 56);
  if (v17)
  {
    v18(v8, 0, 1, v9);
    v28 = a1;
    v19 = *(v10 + 32);
    v19(v16, v8, v9);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v10 + 16))(v12, v16, v9);
    v21 = *(v10 + 80);
    v29 = a3;
    v22 = (v21 + 32) & ~v21;
    v23 = swift_allocObject();
    v24 = v28;
    *(v23 + 16) = v20;
    *(v23 + 24) = v24;
    v19((v23 + v22), v12, v9);
    aBlock[4] = sub_10021856C;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010A12D0;
    v25 = _Block_copy(aBlock);
    v26 = v24;

    [v29 addAnimations:v25];
    _Block_release(v25);
    return (*(v10 + 8))(v16, v9);
  }

  else
  {
    v18(v8, 1, 1, v9);
    sub_1000095E8(v8, &unk_10118BCE0);
    return [a3 setPreferredCommitStyle:0];
  }
}

void sub_100210538(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10020D1BC(a2, a3);
  }
}

id sub_100210644(uint64_t a1, uint64_t a2, void *a3)
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

uint64_t sub_1002107C0()
{
  if (*(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent))
  {
    goto LABEL_7;
  }

  v1 = (*(sub_1001FC874() + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v3 = *v1;
  v2 = v1[1];

  if (!v2)
  {
    goto LABEL_7;
  }

  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    *(&v7 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
    v8 = &protocol witness table for UIContentUnavailableConfiguration;
    sub_10001C8B8(&v6);
    static UIContentUnavailableConfiguration.search()();
  }

  else
  {
LABEL_7:
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

uint64_t sub_100210968(uint64_t a1)
{
  v36 = a1;
  v31 = sub_10010FC20(&qword_101184608);
  __chkstk_darwin(v31);
  v33 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v32 = &v30 - v3;
  v4 = sub_10010FC20(&unk_101184930);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_10010FC20(&qword_101193B90);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = type metadata accessor for Artist();
  v35 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = sub_10010FC20(&unk_101184940);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = sub_10010FC20(&qword_101181B10);
  v37 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v30 - v20;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_1000089F8(v36, v18, &unk_101184940);
    if ((*(v37 + 48))(v18, 1, v19) == 1)
    {

      return sub_1000095E8(v18, &unk_101184940);
    }

    else
    {
      (*(v37 + 32))(v21, v18, v19);
      MusicLibraryResponse.items.getter();
      sub_10034DA48(v6);
      (*(v34 + 8))(v9, v7);
      v24 = v35;
      if ((*(v35 + 48))(v6, 1, v10) == 1)
      {
        sub_1000095E8(v6, &unk_101184930);
        v38 = 0;
        v25 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_isFavoritedState;
        swift_beginAccess();
        v26 = v32;
        sub_1000089F8(&v23[v25], v32, &qword_101184608);
        OptimisticValue.value.setter(&v38, v31);
        v27 = v33;
        sub_1000089F8(&v23[v25], v33, &qword_101184608);
        swift_beginAccess();
        sub_1002190E0(v26, &v23[v25], &qword_101184608);
        swift_endAccess();
        sub_10020A4AC(v27);
        sub_1000095E8(v27, &qword_101184608);
        sub_1000095E8(v26, &qword_101184608);
        sub_100209924();
      }

      else
      {
        (*(v24 + 32))(v15, v6, v10);
        (*(v24 + 16))(v12, v15, v10);
        v28 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artist;
        swift_beginAccess();
        (*(v24 + 24))(&v23[v28], v12, v10);
        swift_endAccess();
        sub_100207DB8();

        v29 = *(v24 + 8);
        v29(v12, v10);
        v29(v15, v10);
      }

      return (*(v37 + 8))(v21, v19);
    }
  }

  return result;
}

void sub_1002111F0()
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &qword_101184570, &qword_101184578);
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_101184580, &qword_101184588);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &unk_101184590, &unk_101193A80);
        if (v3 <= 0x3F)
        {
          sub_10003920C(319, &unk_1011845A0, &unk_101193A90);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Artist();
            if (v5 <= 0x3F)
            {
              sub_1002114E8();
              if (v6 <= 0x3F)
              {
                sub_100211540();
                if (v7 <= 0x3F)
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

void sub_1002114E8()
{
  if (!qword_1011845B0)
  {
    type metadata accessor for Actions.MetricsReportingContext();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1011845B0);
    }
  }
}

void sub_100211540()
{
  if (!qword_1011845B8)
  {
    v0 = type metadata accessor for OptimisticValue();
    if (!v1)
    {
      atomic_store(v0, &qword_1011845B8);
    }
  }
}

uint64_t sub_100211590()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = _s6AlbumsVMa(0);
  __chkstk_darwin(v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011845C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBE260;
  v8 = sub_10031E9F8();
  isa = sub_100597E50().super.super.isa;
  v10 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *(v7 + 32) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = v11;
  v12 = sub_10031EA10();
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v34[3] = v13;
  v34[4] = v15;
  v16._countAndFlagsBits = 0x74726F532ELL;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  v18 = *(*(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController) + 48);
  v19 = *(*v18 + 96);
  swift_beginAccess();
  sub_100217D58(v18 + v19, v6, _s6AlbumsVMa);
  v20 = swift_allocObject();
  swift_weakInit();

  v21.super.super.isa = sub_100211A5C(sub_100217D1C, v20, sub_10028B3E0, sub_100217E5C).super.super.isa;

  sub_100217EB4(v6, _s6AlbumsVMa);

  if (v21.super.super.isa)
  {
    v22 = [(objc_class *)v21.super.super.isa children];

    v21.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v17 = 0;
  }

  *(v7 + 64) = v17;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = v21;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  v34[1] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34[2] = v23;
  v24._countAndFlagsBits = 0x676E6F532ELL;
  v24._object = 0xE500000000000000;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;
  v29 = sub_100208680();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 children];

    v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v25 = 0;
    v26 = 0;
    v28 = 0;
    v32 = 0;
  }

  *(v7 + 96) = v25;
  *(v7 + 104) = v26;
  *(v7 + 112) = v28;
  *(v7 + 120) = v32;
  return v7;
}

UIMenu sub_100211A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(uint64_t *__return_ptr, char *))
{
  v9 = *(a3() + 16);

  if (!v9)
  {
    return 0;
  }

  sub_100009F78(0, &unk_1011845F0);
  v10 = a3();
  __chkstk_darwin(v10);
  v14[2] = v4;
  v14[3] = a1;
  v14[4] = a2;
  v11 = sub_1001FABE4(a4, v14, v10);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v15.value.super.isa = 0;
  v15.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v15, 1, 0xFFFFFFFFFFFFFFFFLL, v11, v14[5]);
}

UIMenu sub_100211B68(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v17[2] = *(v2 + 32);
  v17[3] = v5;
  v18 = *(v2 + 64);
  v6 = *(v2 + 16);
  v17[0] = *v2;
  v17[1] = v6;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v7 = static MusicLibrary.== infix(_:_:)();

  v8 = &unk_101098C30;
  if ((v7 & 1) == 0)
  {
    v8 = &unk_101098C58;
  }

  v9 = *v8;

  if (!v9)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v10 = static MusicLibrary.== infix(_:_:)();

  if (v10)
  {
    v11 = &off_101098C20;
  }

  else
  {
    v11 = &off_101098C48;
  }

  v12 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v12);
  v16[2] = v17;
  v16[3] = a1;
  v16[4] = a2;
  v13 = sub_1001FABE4(sub_1002180C8, v16, v11);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19.value.super.isa = 0;
  v19.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v14, 0, v19, 1, 0xFFFFFFFFFFFFFFFFLL, v13, v16[5]);
}

UIMenu sub_100211D00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v6 = static MusicLibrary.== infix(_:_:)();

  v7 = &unk_101098AA0;
  if ((v6 & 1) == 0)
  {
    v7 = &unk_101098AC8;
  }

  v8 = *v7;

  if (!v8)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v9 = static MusicLibrary.== infix(_:_:)();

  if (v9)
  {
    v10 = &off_101098A90;
  }

  else
  {
    v10 = &off_101098AB8;
  }

  v11 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v11);
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  v12 = sub_1001FABE4(sub_100217D2C, v15, v10);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v16.value.super.isa = 0;
  v16.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v13, 0, v16, 1, 0xFFFFFFFFFFFFFFFFLL, v12, v15[5]);
}

UIMenu sub_100211E88(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[1];
  v19[2] = v2[2];
  v19[3] = v5;
  v8 = v2[5];
  v19[4] = v6;
  v19[5] = v8;
  v19[0] = *v2;
  v19[1] = v7;
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v9 = static MusicLibrary.== infix(_:_:)();

  v10 = &unk_101098A50;
  if ((v9 & 1) == 0)
  {
    v10 = &unk_101098A78;
  }

  v11 = *v10;

  if (!v11)
  {
    return 0;
  }

  static MusicLibrary.shared.getter();
  v12 = static MusicLibrary.== infix(_:_:)();

  if (v12)
  {
    v13 = &off_101098A40;
  }

  else
  {
    v13 = &off_101098A68;
  }

  v14 = sub_100009F78(0, &unk_1011845F0);
  __chkstk_darwin(v14);
  v18[2] = v19;
  v18[3] = a1;
  v18[4] = a2;
  v15 = sub_1001FABE4(sub_1002184B4, v18, v13);

  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v20, 1, 0xFFFFFFFFFFFFFFFFLL, v15, v18[5]);
}

id sub_100212024(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v48[2] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v48[1] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s6AlbumsVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v48[0] = a2 + *(v13 + 44);
  v14 = sub_1006B8B0C(*v48[0], a1);
  v15 = sub_100213D4C(v14 & 1, a1, a2);
  v48[4] = v16;
  v48[5] = v15;
  sub_10045E340();
  v48[3] = v17;
  v51 = v14;
  sub_100009F78(0, &qword_1011839A0);
  sub_100217D58(a2, v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s6AlbumsVMa);
  v18 = (*(v11 + 80) + 18) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14 & 1;
  *(v19 + 17) = a1;
  sub_100217DC0(v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s6AlbumsVMa);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v50;
  *v20 = v49;
  v20[1] = v21;

  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v23 = v22;
  _StringGuts.grow(_:)(25);

  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x8000000100E41650;
  v24 = 0xEA0000000000656DLL;
  v25 = 0x614E747369747261;
  v26 = 0x8000000100E3C6C0;
  v27 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v27 = 0xD000000000000010;
  }

  else
  {
    v26 = 0xEC00000065707954;
  }

  v28 = 0xE500000000000000;
  v29 = 0x656C746974;
  if (a1 != 4)
  {
    v29 = 0x79616C507473616CLL;
    v28 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v27 = v29;
    v26 = v28;
  }

  v30 = 0xEB00000000657461;
  v31 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v31 = 1918985593;
    v30 = 0xE400000000000000;
  }

  if (a1)
  {
    v25 = 0xD000000000000010;
    v24 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v25 = v31;
    v24 = v30;
  }

  if (a1 <= 3u)
  {
    v32 = v25;
  }

  else
  {
    v32 = v27;
  }

  if (a1 <= 3u)
  {
    v33 = v24;
  }

  else
  {
    v33 = v26;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  AccessibilityIdentifier.init(name:)(v53);

  v35 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityIdentifier:v35];

  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }

  v36 = *(v48[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v37 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityValue:v37];

  v38 = [v23 accessibilityIdentifier];
  if (!v38)
  {
    [v23 setAccessibilityIdentifier:0];
LABEL_31:

    return v23;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v53._countAndFlagsBits = v40;
  v53._object = v42;
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  if (v36)
  {
    v43 = 0x6E69646E65637361;
  }

  else
  {
    v43 = 0x69646E6563736564;
  }

  if (v36)
  {
    v44 = 0xE900000000000067;
  }

  else
  {
    v44 = 0xEA0000000000676ELL;
  }

  v45 = v44;
  String.append(_:)(*&v43);

  String.append(_:)(v52);

  if (v53._object)
  {
    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  [v23 setAccessibilityIdentifier:v46];

  return v23;
}

id sub_100212638(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v48[2] = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v48[1] = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s11MusicVideosVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v48[0] = a2 + *(v13 + 48);
  v14 = sub_1006B8B0C(*v48[0], a1);
  v15 = sub_100213FF8(v14 & 1, a1, a2);
  v48[4] = v16;
  v48[5] = v15;
  sub_10045E340();
  v48[3] = v17;
  v51 = v14;
  sub_100009F78(0, &qword_1011839A0);
  sub_100217D58(a2, v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s11MusicVideosVMa);
  v18 = (*(v11 + 80) + 18) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14 & 1;
  *(v19 + 17) = a1;
  sub_100217DC0(v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, _s11MusicVideosVMa);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v50;
  *v20 = v49;
  v20[1] = v21;

  v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  v23 = v22;
  _StringGuts.grow(_:)(25);

  v53._countAndFlagsBits = 0xD000000000000017;
  v53._object = 0x8000000100E41650;
  v24 = 0xEA0000000000656DLL;
  v25 = 0x614E747369747261;
  v26 = 0x8000000100E3C6C0;
  v27 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v27 = 0xD000000000000010;
  }

  else
  {
    v26 = 0xEC00000065707954;
  }

  v28 = 0xE500000000000000;
  v29 = 0x656C746974;
  if (a1 != 4)
  {
    v29 = 0x79616C507473616CLL;
    v28 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v27 = v29;
    v26 = v28;
  }

  v30 = 0xEB00000000657461;
  v31 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v31 = 1918985593;
    v30 = 0xE400000000000000;
  }

  if (a1)
  {
    v25 = 0xD000000000000010;
    v24 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v25 = v31;
    v24 = v30;
  }

  if (a1 <= 3u)
  {
    v32 = v25;
  }

  else
  {
    v32 = v27;
  }

  if (a1 <= 3u)
  {
    v33 = v24;
  }

  else
  {
    v33 = v26;
  }

  v34 = v33;
  String.append(_:)(*&v32);

  AccessibilityIdentifier.init(name:)(v53);

  v35 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityIdentifier:v35];

  if ((v51 & 1) == 0)
  {
    goto LABEL_31;
  }

  v36 = *(v48[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v37 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityValue:v37];

  v38 = [v23 accessibilityIdentifier];
  if (!v38)
  {
    [v23 setAccessibilityIdentifier:0];
LABEL_31:

    return v23;
  }

  v39 = v38;
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v53._countAndFlagsBits = v40;
  v53._object = v42;
  v52._countAndFlagsBits = 46;
  v52._object = 0xE100000000000000;
  if (v36)
  {
    v43 = 0x6E69646E65637361;
  }

  else
  {
    v43 = 0x69646E6563736564;
  }

  if (v36)
  {
    v44 = 0xE900000000000067;
  }

  else
  {
    v44 = 0xEA0000000000676ELL;
  }

  v45 = v44;
  String.append(_:)(*&v43);

  String.append(_:)(v52);

  if (v53._object)
  {
    v46 = String._bridgeToObjectiveC()();
  }

  else
  {
    v46 = 0;
  }

  [v23 setAccessibilityIdentifier:v46];

  return v23;
}

id sub_100212C4C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v43[2] = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v43[1] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a2 + 41);
  v11 = sub_1006B8B0C(*(a2 + 40), a1);
  v12 = v11 & 1;
  v13 = sub_1002142A4(v11 & 1, a1, a2);
  v43[3] = v14;
  v43[4] = v13;
  sub_10045E340();
  v45 = v11;
  sub_100009F78(0, &qword_1011839A0);
  v15 = swift_allocObject();
  v16 = *a2;
  *(v15 + 40) = *(a2 + 16);
  v17 = *(a2 + 48);
  *(v15 + 56) = *(a2 + 32);
  *(v15 + 72) = v17;
  *(v15 + 16) = v12;
  *(v15 + 17) = a1;
  *(v15 + 88) = *(a2 + 64);
  *(v15 + 24) = v16;
  *(v15 + 96) = v44;
  *(v15 + 104) = a4;

  sub_10021817C(a2, &v47);
  v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v47._countAndFlagsBits = 0;
  v47._object = 0xE000000000000000;
  v19 = v18;
  _StringGuts.grow(_:)(25);

  v47._countAndFlagsBits = 0xD000000000000017;
  v47._object = 0x8000000100E41650;
  v20 = 0xEA0000000000656DLL;
  v21 = 0x614E747369747261;
  v22 = 0x8000000100E3C6C0;
  v23 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v23 = 0xD000000000000010;
  }

  else
  {
    v22 = 0xEC00000065707954;
  }

  v24 = 0xE500000000000000;
  v25 = 0x656C746974;
  if (a1 != 4)
  {
    v25 = 0x79616C507473616CLL;
    v24 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v23 = v25;
    v22 = v24;
  }

  v26 = 0xEB00000000657461;
  v27 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v27 = 1918985593;
    v26 = 0xE400000000000000;
  }

  if (a1)
  {
    v21 = 0xD000000000000010;
    v20 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v21 = v27;
    v20 = v26;
  }

  if (a1 <= 3u)
  {
    v28 = v21;
  }

  else
  {
    v28 = v23;
  }

  if (a1 <= 3u)
  {
    v29 = v20;
  }

  else
  {
    v29 = v22;
  }

  v30 = v29;
  String.append(_:)(*&v28);

  AccessibilityIdentifier.init(name:)(v47);

  v31 = String._bridgeToObjectiveC()();

  [v19 setAccessibilityIdentifier:v31];

  if ((v45 & 1) == 0)
  {
    goto LABEL_31;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v32 = String._bridgeToObjectiveC()();

  [v19 setAccessibilityValue:v32];

  v33 = [v19 accessibilityIdentifier];
  if (!v33)
  {
    [v19 setAccessibilityIdentifier:0];
LABEL_31:

    return v19;
  }

  v34 = v33;
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v47._countAndFlagsBits = v35;
  v47._object = v37;
  v46._countAndFlagsBits = 46;
  v46._object = 0xE100000000000000;
  if (v48)
  {
    v38 = 0x6E69646E65637361;
  }

  else
  {
    v38 = 0x69646E6563736564;
  }

  if (v48)
  {
    v39 = 0xE900000000000067;
  }

  else
  {
    v39 = 0xEA0000000000676ELL;
  }

  v40 = v39;
  String.append(_:)(*&v38);

  String.append(_:)(v46);

  if (v47._object)
  {
    v41 = String._bridgeToObjectiveC()();
  }

  else
  {
    v41 = 0;
  }

  [v19 setAccessibilityIdentifier:v41];

  return v19;
}

id sub_1002131C0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v47[2] = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v47[1] = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s9PlaylistsVMa(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v47[0] = a2 + *(__chkstk_darwin(v10 - 8) + 52);
  v13 = sub_1006B8B0C(*v47[0], a1);
  v14 = sub_100214544(v13 & 1, a1, a2);
  v47[4] = v15;
  v47[5] = v14;
  sub_10045E340();
  v47[3] = v16;
  v50 = v13;
  sub_100009F78(0, &qword_1011839A0);
  sub_100217D58(a2, v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), _s9PlaylistsVMa);
  v17 = (*(v11 + 80) + 18) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v13 & 1;
  *(v18 + 17) = a1;
  sub_100217DC0(v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, _s9PlaylistsVMa);
  v19 = (v18 + ((v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v20 = v49;
  *v19 = v48;
  v19[1] = v20;

  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v52._countAndFlagsBits = 0;
  v52._object = 0xE000000000000000;
  v22 = v21;
  _StringGuts.grow(_:)(25);

  v52._countAndFlagsBits = 0xD000000000000017;
  v52._object = 0x8000000100E41650;
  v23 = 0xEA0000000000656DLL;
  v24 = 0x614E747369747261;
  v25 = 0x8000000100E3C6C0;
  v26 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v26 = 0xD000000000000010;
  }

  else
  {
    v25 = 0xEC00000065707954;
  }

  v27 = 0xE500000000000000;
  v28 = 0x656C746974;
  if (a1 != 4)
  {
    v28 = 0x79616C507473616CLL;
    v27 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v26 = v28;
    v25 = v27;
  }

  v29 = 0xEB00000000657461;
  v30 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v30 = 1918985593;
    v29 = 0xE400000000000000;
  }

  if (a1)
  {
    v24 = 0xD000000000000010;
    v23 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v24 = v30;
    v23 = v29;
  }

  if (a1 <= 3u)
  {
    v31 = v24;
  }

  else
  {
    v31 = v26;
  }

  if (a1 <= 3u)
  {
    v32 = v23;
  }

  else
  {
    v32 = v25;
  }

  v33 = v32;
  String.append(_:)(*&v31);

  AccessibilityIdentifier.init(name:)(v52);

  v34 = String._bridgeToObjectiveC()();

  [v22 setAccessibilityIdentifier:v34];

  if ((v50 & 1) == 0)
  {
    goto LABEL_31;
  }

  v35 = *(v47[0] + 1);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v36 = String._bridgeToObjectiveC()();

  [v22 setAccessibilityValue:v36];

  v37 = [v22 accessibilityIdentifier];
  if (!v37)
  {
    [v22 setAccessibilityIdentifier:0];
LABEL_31:

    return v22;
  }

  v38 = v37;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  v52._countAndFlagsBits = v39;
  v52._object = v41;
  v51._countAndFlagsBits = 46;
  v51._object = 0xE100000000000000;
  if (v35)
  {
    v42 = 0x6E69646E65637361;
  }

  else
  {
    v42 = 0x69646E6563736564;
  }

  if (v35)
  {
    v43 = 0xE900000000000067;
  }

  else
  {
    v43 = 0xEA0000000000676ELL;
  }

  v44 = v43;
  String.append(_:)(*&v42);

  String.append(_:)(v51);

  if (v52._object)
  {
    v45 = String._bridgeToObjectiveC()();
  }

  else
  {
    v45 = 0;
  }

  [v22 setAccessibilityIdentifier:v45];

  return v22;
}

id sub_1002137D4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v44[1] = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v44[0] = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(a2 + 41);
  v11 = sub_1006B8B0C(*(a2 + 40), a1);
  v12 = v11 & 1;
  v13 = sub_1002142A4(v11 & 1, a1, a2);
  v44[2] = v14;
  v44[3] = v13;
  sub_10045E340();
  v46 = v11;
  sub_100009F78(0, &qword_1011839A0);
  v15 = swift_allocObject();
  v16 = *(a2 + 48);
  *(v15 + 56) = *(a2 + 32);
  *(v15 + 72) = v16;
  v17 = *(a2 + 80);
  *(v15 + 88) = *(a2 + 64);
  *(v15 + 104) = v17;
  v18 = *(a2 + 16);
  *(v15 + 24) = *a2;
  *(v15 + 16) = v12;
  *(v15 + 17) = a1;
  *(v15 + 40) = v18;
  *(v15 + 120) = v45;
  *(v15 + 128) = a4;

  sub_1001103E0(a2, &v48);
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v20 = v19;
  _StringGuts.grow(_:)(25);

  v48._countAndFlagsBits = 0xD000000000000017;
  v48._object = 0x8000000100E41650;
  v21 = 0xEA0000000000656DLL;
  v22 = 0x614E747369747261;
  v23 = 0x8000000100E3C6C0;
  v24 = 0x7473696C79616C70;
  if (a1 == 6)
  {
    v24 = 0xD000000000000010;
  }

  else
  {
    v23 = 0xEC00000065707954;
  }

  v25 = 0xE500000000000000;
  v26 = 0x656C746974;
  if (a1 != 4)
  {
    v26 = 0x79616C507473616CLL;
    v25 = 0xEE00657461446465;
  }

  if (a1 <= 5u)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEB00000000657461;
  v28 = 0x44657361656C6572;
  if (a1 != 2)
  {
    v28 = 1918985593;
    v27 = 0xE400000000000000;
  }

  if (a1)
  {
    v22 = 0xD000000000000010;
    v21 = 0x8000000100E3C680;
  }

  if (a1 > 1u)
  {
    v22 = v28;
    v21 = v27;
  }

  if (a1 <= 3u)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (a1 <= 3u)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  v31 = v30;
  String.append(_:)(*&v29);

  AccessibilityIdentifier.init(name:)(v48);

  v32 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityIdentifier:v32];

  if ((v46 & 1) == 0)
  {
    goto LABEL_31;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v33 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityValue:v33];

  v34 = [v20 accessibilityIdentifier];
  if (!v34)
  {
    [v20 setAccessibilityIdentifier:0];
LABEL_31:

    return v20;
  }

  v35 = v34;
  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v48._countAndFlagsBits = v36;
  v48._object = v38;
  v47._countAndFlagsBits = 46;
  v47._object = 0xE100000000000000;
  if (v49)
  {
    v39 = 0x6E69646E65637361;
  }

  else
  {
    v39 = 0x69646E6563736564;
  }

  if (v49)
  {
    v40 = 0xE900000000000067;
  }

  else
  {
    v40 = 0xEA0000000000676ELL;
  }

  v41 = v40;
  String.append(_:)(*&v39);

  String.append(_:)(v47);

  if (v48._object)
  {
    v42 = String._bridgeToObjectiveC()();
  }

  else
  {
    v42 = 0;
  }

  [v20 setAccessibilityIdentifier:v42];

  return v20;
}

uint64_t sub_100213D4C(char a1, unsigned __int8 a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (a2 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s6AlbumsVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 36) + 1), a2);
}

uint64_t sub_100213FF8(char a1, unsigned __int8 a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (a2 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s11MusicVideosVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 40) + 1), a2);
}

uint64_t sub_1002142A4(char a1, unsigned __int8 a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (a2 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  return sub_10045E540(*(v4 + 41) & 1, a2);
}

uint64_t sub_100214544(char a1, unsigned __int8 a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 != 6)
      {
        goto LABEL_11;
      }

      v4 = a3;
    }

    else
    {
      v4 = a3;
    }
  }

  else
  {
    v4 = a3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 0;
  }

  if (a2 == 5)
  {
LABEL_11:

    return 0;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    return 0;
  }

  v8 = _s9PlaylistsVMa(0);
  return sub_10045E540(*(v4 + *(v8 + 44) + 1), a2);
}

uint64_t sub_1002147F0(uint64_t a1, char a2, unsigned __int8 a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3 > 6u)
  {

    v9 = 256;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_9;
    }

    if (a3 == 5)
    {

      goto LABEL_12;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
LABEL_9:
      if (a3 <= 7u && ((1 << a3) & 0x91) != 0)
      {
        v9 = 256;
        return a5(v9 | a3);
      }

LABEL_12:
      v9 = 0;
      return a5(v9 | a3);
    }

    if (*(a4 + *(_s6AlbumsVMa(0) + 36) + 1))
    {
      v9 = 0;
    }

    else
    {
      v9 = 256;
    }
  }

  return a5(v9 | a3);
}

uint64_t sub_100214AD4(uint64_t a1, char a2, unsigned __int8 a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3 > 6u)
  {

    v9 = 256;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_9;
    }

    if (a3 == 5)
    {

      goto LABEL_12;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
LABEL_9:
      if (a3 <= 7u && ((1 << a3) & 0x91) != 0)
      {
        v9 = 256;
        return a5(v9 | a3);
      }

LABEL_12:
      v9 = 0;
      return a5(v9 | a3);
    }

    if (*(a4 + *(_s11MusicVideosVMa(0) + 40) + 1))
    {
      v9 = 0;
    }

    else
    {
      v9 = 256;
    }
  }

  return a5(v9 | a3);
}

uint64_t sub_100214DB8(uint64_t a1, char a2, unsigned __int8 a3, uint64_t a4, uint64_t (*a5)(void))
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a3 > 6u)
  {

    v9 = 256;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      goto LABEL_9;
    }

    if (a3 == 5)
    {

      goto LABEL_12;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
LABEL_9:
      if (a3 <= 7u && ((1 << a3) & 0x91) != 0)
      {
        v9 = 256;
        return a5(v9 | a3);
      }

LABEL_12:
      v9 = 0;
      return a5(v9 | a3);
    }

    if (*(a4 + *(_s9PlaylistsVMa(0) + 44) + 1))
    {
      v9 = 0;
    }

    else
    {
      v9 = 256;
    }
  }

  return a5(v9 | a3);
}

uint64_t sub_10021509C(__int16 a1)
{
  v2 = _s6AlbumsVMa(0);
  __chkstk_darwin(v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_100217D58(v6 + v7, v4, _s6AlbumsVMa);
    v9 = &v4[*(v2 + 36)];
    v10 = *v9;
    v11 = v9[1];
    *v9 = a1;
    v9[1] = HIBYTE(a1) & 1;
    if (v11)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    sub_10028ACDC(v12 | v10);
    sub_100378808(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_1002151E4(__int16 a1)
{
  v2 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_100217D58(v6 + v7, v4, _s11MusicVideosVMa);
    sub_1006FCB18(a1 & 0x1FF);
    sub_100377E84(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_1002152FC(__int16 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + 64) = 1;
    v4 = *(result + 48);
    swift_beginAccess();
    v5 = *(v4 + 48);
    v18[1] = *(v4 + 32);
    v6 = *(v4 + 64);
    v21 = *(v4 + 80);
    v19 = v5;
    v20 = v6;
    v7 = *(v4 + 32);
    v18[0] = *(v4 + 16);
    v8 = BYTE9(v19);
    v9 = BYTE8(v19);
    v17 = *(v4 + 48);
    v15 = *(v4 + 16);
    v16 = v7;
    *&v14[15] = *(v4 + 73);
    *v14 = *(v4 + 58);
    sub_10021817C(v18, &v22);
    if ((sub_1006B8B0C(a1, v9) & 1) == 0 || ((((a1 & 0x100) == 0) ^ v8) & 1) == 0)
    {
      v10 = objc_opt_self();
      v11 = [v10 standardUserDefaults];
      *(&v23 + 1) = &_s11ContentSortVN;
      v24 = sub_100110448();
      v25[0] = sub_10011049C();
      LOBYTE(v22) = a1;
      BYTE1(v22) = (a1 & 0x100) >> 8;
      NSUserDefaults.encodeValue(_:forKey:)(&v22);

      sub_10000959C(&v22);
      v12 = [v10 standardUserDefaults];
      v13 = sub_10045E2D4(a1 & 0x1FF);
      NSUserDefaults.setSortType(_:for:keyDomain:)(v13, 0xC0u, 0, 0);
    }

    v22 = v15;
    v23 = v16;
    v24 = v17;
    LOBYTE(v25[0]) = a1;
    BYTE1(v25[0]) = (a1 & 0x100) >> 8;
    *(v25 + 2) = *v14;
    *(&v25[2] + 1) = *&v14[15];
    sub_100379CC8(&v22);
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t sub_1002154EC(__int16 a1)
{
  v2 = _s9PlaylistsVMa(0);
  __chkstk_darwin(v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 64) = 1;
    v6 = *(result + 48);
    v7 = *(*v6 + 96);
    v8 = result;
    swift_beginAccess();
    sub_100217D58(v6 + v7, v4, _s9PlaylistsVMa);
    v9 = &v4[*(v2 + 44)];
    v10 = *v9;
    v11 = v9[1];
    *v9 = a1;
    v9[1] = HIBYTE(a1) & 1;
    if (v11)
    {
      v12 = 256;
    }

    else
    {
      v12 = 0;
    }

    sub_10018F8E4(v12 | v10);
    sub_1003777F4(v4);
    *(v8 + 64) = 0;
  }

  return result;
}

uint64_t sub_100215634(__int16 a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    *(result + 64) = 1;
    v4 = *(result + 48);
    swift_beginAccess();
    v5 = *(v4 + 64);
    v19 = *(v4 + 48);
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    v8 = *(v4 + 96);
    v21 = *(v4 + 80);
    v22 = v8;
    v20 = v5;
    v18[0] = v6;
    v18[1] = v7;
    v9 = BYTE9(v19);
    v10 = BYTE8(v19);
    v17 = *(v4 + 48);
    v15 = *(v4 + 16);
    v16 = *(v4 + 32);
    *&v14[14] = *(v4 + 104);
    v13 = *(v4 + 74);
    *v14 = *(v4 + 90);
    v12 = *(v4 + 58);
    sub_1001103E0(v18, &v23);
    if ((sub_1006B8B0C(a1, v10) & 1) == 0 || ((((a1 & 0x100) == 0) ^ v9) & 1) == 0)
    {
      v11 = [objc_opt_self() standardUserDefaults];
      *(&v24 + 1) = &_s11ContentSortVN;
      v25 = sub_100110448();
      *v26 = sub_10011049C();
      LOBYTE(v23) = a1;
      BYTE1(v23) = (a1 & 0x100) >> 8;
      NSUserDefaults.encodeValue(_:forKey:)(&v23);

      sub_10000959C(&v23);
    }

    v23 = v15;
    v24 = v16;
    *&v26[2] = v12;
    v25 = v17;
    v26[0] = a1;
    v26[1] = (a1 & 0x100) >> 8;
    v27 = v13;
    *v28 = *v14;
    *&v28[14] = *&v14[14];
    sub_100379614(&v23);
    *(v3 + 64) = 0;
  }

  return result;
}

uint64_t sub_1002157F8(uint64_t a1, void *a2)
{
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v18[-v5];
  v7 = type metadata accessor for Artist();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19[3] = v11;
  v19[4] = &protocol witness table for Artist;
  v12 = sub_10001C8B8(v19);
  (*(v8 + 16))(v12, a1, v7);
  static ApplicationCapabilities.shared.getter(v20);
  sub_100014984(v20);
  if (BYTE8(v20[0]))
  {
    sub_100008FE4(v19, v18);
    sub_10010FC20(&unk_101184960);
    if (swift_dynamicCast())
    {
      (*(v8 + 8))(v10, v7);
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
      type metadata accessor for MainActor();
      v14 = a2;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_1001F4F78(0, 0, v6, &unk_100EC0600, v16);
    }
  }

  return sub_10000959C(v19);
}

uint64_t sub_100215A5C(char *a1)
{
  v2 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s6AlbumsVMa(0);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v10 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v11 = sub_10049CB78();

  v12 = *(v9 + 48);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  sub_100217D58(v12 + v13, v8, _s6AlbumsVMa);
  v8[8] = v11 & 1;
  sub_100378808(v8);
  v14 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v15 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  LOBYTE(a1) = sub_10049CB78();

  v16 = *(v14 + 48);
  v17 = *(*v16 + 96);
  swift_beginAccess();
  sub_100217D58(v16 + v17, v4, _s11MusicVideosVMa);
  v4[16] = a1 & 1;
  return sub_100377E84(v4);
}

uint64_t sub_100215CA8(char *a1)
{
  v2 = _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin(v2 - 8);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v40);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin(v37);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s6AlbumsVMa(0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController];
  v13 = [a1 traitCollection];
  v39 = sub_100137E8C();
  UITraitCollection.subscript.getter();

  v14 = v42;
  v15 = *(v12 + 48);
  v16 = *(*v15 + 96);
  swift_beginAccess();
  sub_100217D58(v15 + v16, v11, _s6AlbumsVMa);

  *v11 = v14;
  v17 = v11 + *(v8 + 36);
  v18 = *v17;
  if (v17[1])
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v20 = sub_100375F10(v19 | v18);
  if ((v20 & 0xFF00) != 0x200)
  {
    v22 = (v20 >> 8) & 1;
    goto LABEL_11;
  }

  sub_100217D58(v11 + *(v8 + 24), v7, _s6AlbumsV5ScopeOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload >= 3)
  {
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v20) = 0;
      LOBYTE(v22) = 1;
      goto LABEL_11;
    }
  }

  else
  {
    sub_100217EB4(v7, _s6AlbumsV5ScopeOMa);
  }

  LOBYTE(v22) = 1;
  LOBYTE(v20) = 4;
LABEL_11:
  *v17 = v20;
  v17[1] = v22;
  sub_10028ACDC(v19 | v18);
  sub_100378808(v11);
  v23 = *&a1[OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController];
  v24 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  v25 = v41;
  v26 = *(v23 + 48);
  v27 = *(*v26 + 96);
  swift_beginAccess();
  sub_100217D58(v26 + v27, v5, _s11MusicVideosVMa);

  *(v5 + 1) = v25;
  v28 = v40;
  v29 = &v5[*(v40 + 40)];
  v30 = *v29;
  if (v29[1])
  {
    v31 = 256;
  }

  else
  {
    v31 = 0;
  }

  v32 = sub_100375F28(v31 | v30);
  if ((v32 & 0xFF00) == 0x200)
  {
    v33 = v38;
    sub_100217D58(&v5[*(v28 + 28)], v38, _s11MusicVideosV5ScopeOMa);
    v34 = type metadata accessor for Artist();
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      LOBYTE(v32) = 0;
      v35 = 256;
    }

    else
    {
      sub_100217EB4(v33, _s11MusicVideosV5ScopeOMa);
      v35 = 256;
      LOBYTE(v32) = 4;
    }
  }

  else
  {
    v35 = v32 & 0x100;
  }

  sub_1006FCB18(v35 | v32);
  return sub_100377E84(v5);
}

uint64_t sub_100216128@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v3];

    v5 = AccessibilityString.undoFavoriteButtonLabel.unsafeMutableAddressor();
    v7 = *v5;
    v6 = v5[1];

    v8 = AccessibilityIdentifier.artistUndoFavorite.unsafeMutableAddressor();
  }

  else
  {
    v9 = String._bridgeToObjectiveC()();
    v4 = [objc_opt_self() systemImageNamed:v9];

    v10 = AccessibilityString.favoriteButtonLabel.unsafeMutableAddressor();
    v7 = *v10;
    v6 = v10[1];

    v8 = AccessibilityIdentifier.artistFavorite.unsafeMutableAddressor();
  }

  v12 = *v8;
  v11 = v8[1];
  v14 = v8[2];
  v13 = v8[3];

  *a2 = v4;
  a2[1] = v7;
  a2[2] = v6;
  a2[3] = v12;
  a2[4] = v11;
  a2[5] = v14;
  a2[6] = v13;
  return result;
}

uint64_t sub_100216244(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_10010FC20(&unk_101193AA0);
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v29 = &v28 - v6;
  v7 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v10 = sub_10010FC20(&unk_10118F1E0);
  v28 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = sub_1001FCF68(a1, v15);
  sub_1000095E8(v15, &unk_1011846F0);
  result = 0;
  if (v17 != 2)
  {
    if (v17)
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v4);

      v19 = sub_10010FC20(&unk_10118D1E0);
      if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
      {
        v20 = &unk_1011846C0;
        v21 = v4;
LABEL_7:
        sub_1000095E8(v21, v20);
        return 0;
      }

      v23 = v29;
      v24 = v30;
      v25 = v31;
      (*(v30 + 16))(v29, v4, v31);
      sub_1000095E8(v4, &unk_10118D1E0);
      v26 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v24 + 8))(v23, v25);
    }

    else
    {
      RequestResponse.Controller.revision.getter();
      RequestResponse.Revision.content.getter(v9);

      v22 = sub_10010FC20(&unk_101184700);
      if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
      {
        v20 = &unk_1011846E0;
        v21 = v9;
        goto LABEL_7;
      }

      v27 = v28;
      (*(v28 + 16))(v12, v9, v10);
      sub_1000095E8(v9, &unk_101184700);
      v26 = MusicLibrarySectionedResponse.totalItemCount.getter();
      (*(v27 + 8))(v12, v10);
    }

    return v26;
  }

  return result;
}

unint64_t sub_1002166E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181600);
  __chkstk_darwin(v4 - 8);
  v128 = &v115 - v5;
  v6 = _s11MusicVideosVMa(0);
  __chkstk_darwin(v6 - 8);
  v138 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101193AF0);
  v127 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v115 - v9;
  v11 = sub_10010FC20(&unk_1011846C0);
  __chkstk_darwin(v11 - 8);
  v149 = (&v115 - v12);
  v144 = sub_10010FC20(&unk_101193AA0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v115 - v13;
  v137 = type metadata accessor for MusicVideo();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v135 = &v115 - v16;
  v17 = sub_10010FC20(&qword_1011815C0);
  __chkstk_darwin(v17 - 8);
  v126 = &v115 - v18;
  v19 = _s6AlbumsVMa(0);
  __chkstk_darwin(v19 - 8);
  v134 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10010FC20(&qword_1011846D8);
  v125 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v115 - v22;
  v24 = sub_10010FC20(&unk_1011846E0);
  __chkstk_darwin(v24 - 8);
  isa = (&v115 - v25);
  v141 = sub_10010FC20(&unk_10118F1E0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v115 - v26;
  v132 = type metadata accessor for Album();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = &v115 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v130 = &v115 - v29;
  v30 = sub_10010FC20(&unk_1011846F0);
  __chkstk_darwin(v30 - 8);
  v32 = &v115 - v31;
  v33 = sub_10010FC20(&unk_10118CDB0);
  v145 = *(v33 - 8);
  __chkstk_darwin(v33 - 8);
  v147 = &v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = v34;
  __chkstk_darwin(v35);
  v150 = &v115 - v36;
  v37 = type metadata accessor for IndexPath();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v42 = __chkstk_darwin(v39);
  v44 = &v115 - v43;
  if (!*(a1 + 16))
  {
    return 0;
  }

  v121 = v41;
  v122 = v40;
  v45 = *(v38 + 16);
  v120 = *(v38 + 80);
  v119 = v38 + 16;
  v118 = v45;
  (v45)(v44, a1 + ((v120 + 32) & ~v120), v37, v42);
  v46 = IndexPath.section.getter();
  v47 = type metadata accessor for LibraryArtistDetailViewController.PrefetchingContext(0);
  (*(*(v47 - 8) + 56))(v32, 1, 1, v47);
  v124 = v2;
  v48 = sub_1001FCF68(v46, v32);
  sub_1000095E8(v32, &unk_1011846F0);
  if (v48 == 2)
  {
    (*(v38 + 8))(v44, v37);
    return 0;
  }

  v123 = v44;
  v116 = v38;
  v117 = v37;
  if (v48)
  {
    v49 = *(v124 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_musicVideosResponseController);
    RequestResponse.Controller.revision.getter();
    v50 = v149;
    RequestResponse.Revision.content.getter(v149);

    v51 = sub_10010FC20(&unk_10118D1E0);
    if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
    {
      v52 = &unk_1011846C0;
LABEL_9:
      sub_1000095E8(v50, v52);
      (*(v116 + 8))(v123, v117);
      return 0;
    }

    v56 = v143;
    v57 = v142;
    v58 = v144;
    (*(v143 + 16))(v142, v50, v144);
    sub_1000095E8(v50, &unk_10118D1E0);
    v59 = MusicLibrarySectionedResponse.sections.getter();
    (*(v56 + 8))(v57, v58);
    aBlock = _swiftEmptyArrayStorage;
    v60 = *(v59 + 2);
    if (v60)
    {
      v149 = v49;
      v61 = *(v127 + 16);
      v62 = (*(v127 + 80) + 32) & ~*(v127 + 80);
      isa = v59;
      v63 = v59 + v62;
      v64 = *(v127 + 72);
      v65 = (v127 + 8);
      v66 = v128;
      do
      {
        v61(v10, v63, v8);
        MusicLibrarySection.items.getter();
        (*v65)(v10, v8);
        sub_1001240F8(v66);
        v63 += v64;
        --v60;
      }

      while (v60);

      v67 = aBlock;
      v49 = v149;
    }

    else
    {

      v67 = _swiftEmptyArrayStorage;
    }

    result = IndexPath.item.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < v67[2])
      {
        v80 = v136;
        v81 = *(v136 + 16);
        v82 = v133;
        v83 = v137;
        v81(v133, v67 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v136 + 72) * result, v137);

        v84 = v135;
        (*(v80 + 32))(v135, v82, v83);
        v159 = v83;
        v160 = &protocol witness table for MusicVideo;
        v85 = sub_10001C8B8(&v158);
        v81(v85, v84, v83);
        v86 = sub_10023D0E4();
        v87 = *(v49 + 48);
        v88 = *(*v87 + 96);
        swift_beginAccess();
        v89 = v87 + v88;
        v90 = v138;
        sub_100217D58(v89, v138, _s11MusicVideosVMa);
        v149 = v86;

        v91 = v150;
        sub_1006FCD38(v150);
        v92 = _s11MusicVideosVMa;
LABEL_27:
        sub_100217EB4(v90, v92);
        (*(v80 + 8))(v84, v83);
        v100 = v120;
        v101 = v123;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v102 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(&v158, &v157);
        v103 = v147;
        sub_1000089F8(v91, v147, &unk_10118CDB0);
        v104 = v122;
        v105 = v117;
        v118(v122, v101, v117);
        v106 = (*(v145 + 80) + 64) & ~*(v145 + 80);
        v107 = (v146 + v100 + v106) & ~v100;
        v108 = swift_allocObject();
        *(v108 + 16) = v102;
        sub_100059A8C(&v157, v108 + 24);
        sub_10003D17C(v103, v108 + v106, &unk_10118CDB0);
        v109 = v116;
        (*(v116 + 32))(v108 + v107, v104, v105);
        v110 = objc_opt_self();
        v155 = sub_100218654;
        v156 = v149;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_100747E6C;
        v154 = &unk_1010A1370;
        v111 = _Block_copy(&aBlock);

        v155 = sub_10021865C;
        v156 = v108;
        aBlock = _NSConcreteStackBlock;
        v152 = 1107296256;
        v153 = sub_100747EBC;
        v154 = &unk_1010A1398;
        v112 = _Block_copy(&aBlock);

        v113 = isa;
        v114 = [v110 configurationWithIdentifier:isa previewProvider:v111 actionProvider:v112];

        _Block_release(v112);
        _Block_release(v111);

        sub_1000095E8(v150, &unk_10118CDB0);
        (*(v109 + 8))(v123, v105);
        sub_10000959C(&v158);

        return v114;
      }

      goto LABEL_30;
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v53 = *(v124 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_albumsResponseController);
  RequestResponse.Controller.revision.getter();
  v50 = isa;
  RequestResponse.Revision.content.getter(isa);

  v54 = sub_10010FC20(&unk_101184700);
  if ((*(*(v54 - 8) + 48))(v50, 1, v54) == 1)
  {
    v52 = &unk_1011846E0;
    goto LABEL_9;
  }

  v68 = v140;
  v69 = v139;
  v70 = v141;
  (*(v140 + 16))(v139, v50, v141);
  sub_1000095E8(v50, &unk_101184700);
  v71 = MusicLibrarySectionedResponse.sections.getter();
  (*(v68 + 8))(v69, v70);
  aBlock = _swiftEmptyArrayStorage;
  v72 = *(v71 + 2);
  if (v72)
  {
    v149 = v53;
    v73 = *(v125 + 16);
    v74 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    isa = v71;
    v75 = v71 + v74;
    v76 = *(v125 + 72);
    v77 = (v125 + 8);
    v78 = v126;
    do
    {
      v73(v23, v75, v21);
      MusicLibrarySection.items.getter();
      (*v77)(v23, v21);
      sub_100124960(v78);
      v75 += v76;
      --v72;
    }

    while (v72);

    v79 = aBlock;
    v53 = v149;
  }

  else
  {

    v79 = _swiftEmptyArrayStorage;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (result < v79[2])
  {
    v80 = v131;
    v93 = *(v131 + 16);
    v94 = v129;
    v83 = v132;
    v93(v129, v79 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v131 + 72) * result, v132);

    v84 = v130;
    (*(v80 + 32))(v130, v94, v83);
    v159 = v83;
    v160 = &protocol witness table for Album;
    v95 = sub_10001C8B8(&v158);
    v93(v95, v84, v83);
    v96 = sub_10023CC30();
    v97 = *(v53 + 48);
    v98 = *(*v97 + 96);
    swift_beginAccess();
    v99 = v97 + v98;
    v90 = v134;
    sub_100217D58(v99, v134, _s6AlbumsVMa);
    v149 = v96;

    v91 = v150;
    sub_100288ABC(v150);
    v92 = _s6AlbumsVMa;
    goto LABEL_27;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100217948()
{
  v0 = [*(sub_1001FC874() + 32) searchBar];
  [v0 resignFirstResponder];

  RequestResponse.Controller.isPaused.setter(1);
  return RequestResponse.Controller.isPaused.setter(1);
}

void sub_1002179DC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_viewHasAppeared) = 0;
  v2 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&unk_10118A650);
  v4 = *(*(v3 - 8) + 56);
  v4(v1 + v2, 1, 1, v3);
  v4(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___headerRegistration, 1, 1, v3);
  v5 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumGridCellRegistration;
  v6 = sub_10010FC20(&qword_101184578);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___albumListCellRegistration;
  v8 = sub_10010FC20(&qword_101184588);
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoGridCellRegistration;
  v10 = sub_10010FC20(&unk_101193A80);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___musicVideoListCellRegistration;
  v12 = sub_10010FC20(&unk_101193A90);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___contextBarButtonItem) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponse) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistResponseSubscription) = 0;
  v13 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_prefetchingController;
  v14 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v13) = sub_10003AAD8(0xD000000000000023, 0x8000000100E416D0);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_artistHeader) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_hasContent) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___searchController) = 0;
  v15 = OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___actionMetricsReportingContext;
  v16 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController_sortBinding) = 0;
  *(v1 + OBJC_IVAR____TtC5Music33LibraryArtistDetailViewController____lazy_storage___favoriteBarButtonItem) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100217D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100217DC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100217EB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100217F14()
{
  result = qword_101184630;
  if (!qword_101184630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184630);
  }

  return result;
}

uint64_t sub_100217F94@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*a1, v3[2], v3[3], v3[4]);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_100218008(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 18) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = (v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v3 + 17);

  return a3(a1, v7, v11, v3 + v6, v9, v10);
}

id sub_1002180C8@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = *(v6 + 48);
  v11[2] = *(v6 + 32);
  v11[3] = v8;
  v12 = *(v6 + 64);
  v9 = *(v6 + 16);
  v11[0] = *v6;
  v11[1] = v9;
  result = sub_100212C4C(*a1, v11, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10021812C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 96);
  v3 = *(v0 + 17);
  v4 = *(v0 + 40);
  v5 = *(v0 + 72);
  v7[2] = *(v0 + 56);
  v7[3] = v5;
  v8 = *(v0 + 88);
  v7[0] = *(v0 + 24);
  v7[1] = v4;
  return sub_1002181D8(v1, v3, v7, v2);
}

uint64_t sub_1002181D8(char a1, unsigned __int8 a2, uint64_t a3, uint64_t (*a4)(void))
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  if (a2 <= 6u)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      if (a2 == 5)
      {

        goto LABEL_12;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        v8 = ~*(a3 + 40) & 0x100;
        return a4(v8 | a2);
      }
    }

LABEL_9:
    if (a2 <= 7u && ((1 << a2) & 0x91) != 0)
    {
      v8 = 256;
      return a4(v8 | a2);
    }

LABEL_12:
    v8 = 0;
    return a4(v8 | a2);
  }

  v8 = 256;
  return a4(v8 | a2);
}

id sub_1002184B4@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[3];
  v12[2] = v6[2];
  v12[3] = v8;
  v9 = v6[5];
  v12[4] = v6[4];
  v12[5] = v9;
  v10 = v6[1];
  v12[0] = *v6;
  v12[1] = v10;
  result = sub_1002137D4(*a1, v12, v5, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100218518()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 120);
  v3 = *(v0 + 17);
  v4 = *(v0 + 72);
  v8[2] = *(v0 + 56);
  v8[3] = v4;
  v5 = *(v0 + 104);
  v8[4] = *(v0 + 88);
  v8[5] = v5;
  v6 = *(v0 + 40);
  v8[0] = *(v0 + 24);
  v8[1] = v6;
  return sub_1002181D8(v1, v3, v8, v2);
}

void sub_10021856C()
{
  v1 = *(type metadata accessor for IndexPath() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_100210538(v2, v3, v4);
}

unint64_t sub_10021865C(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_10118CDB0) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_10020F0B8(a1, v7, v1 + 24, v1 + v4, v8);
}

uint64_t sub_100218744()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(*(sub_10010FC20(&unk_1011845D0) - 8) + 80);
  sub_10000959C(v0 + 16);

  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + 112);
  if (v5 != 255)
  {
    sub_10012B804(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v5);
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  v6 = (v3 + v4 + 8) & ~v4;
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v19 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v17 = *(v11 - 8);
      v18 = v11;
      if (!(*(v17 + 48))(v9 + v19, 1))
      {
        (*(v17 + 8))(v9 + v19, v18);
      }
    }
  }

  v12 = type metadata accessor for PlaylistContext();
  if (!(*(*(v12 - 8) + 48))(v0 + v6, 1, v12))
  {
    v13 = type metadata accessor for Playlist.Entry();
    (*(*(v13 - 8) + 8))(v0 + v6, v13);
    v14 = *(v12 + 20);
    v15 = type metadata accessor for Playlist();
    (*(*(v15 - 8) + 8))(v0 + v6 + v14, v15);
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100218B94(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100218C4C()
{
  result = qword_101184868;
  if (!qword_101184868)
  {
    sub_1001109D0(&qword_101184860);
    sub_100218CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184868);
  }

  return result;
}

unint64_t sub_100218CD8()
{
  result = qword_101184870;
  if (!qword_101184870)
  {
    sub_1001109D0(&qword_101184878);
    sub_100020674(&qword_101184880, &qword_101184888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184870);
  }

  return result;
}

unint64_t sub_100218D98()
{
  result = qword_1011848C0;
  if (!qword_1011848C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011848C0);
  }

  return result;
}

unint64_t sub_100218DEC()
{
  result = qword_1011848C8;
  if (!qword_1011848C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011848C8);
  }

  return result;
}

uint64_t sub_100218E48()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 28);
  if (*(v5 + 24))
  {
    sub_10000959C(v5);
  }

  v6 = v3 + *(v1 + 32);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_100218F80(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_1002190E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10010FC20(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100219150(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Artist() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_10010FC20(&qword_101184610) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002F3F4;

  return sub_10020A8D8(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_1002192D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100494EB0(a1, v4, v5, v6);
}

uint64_t sub_100219384()
{

  if (v0[3])
  {
  }

  if (v0[5])
  {
  }

  if (v0[7])
  {
  }

  return swift_deallocObject();
}

void sub_100219460()
{
  sub_10003920C(319, &qword_1011849D8, &unk_10118F1E0);
  if (v0 <= 0x3F)
  {
    sub_10003920C(319, &unk_1011849E0, &unk_101193AA0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10021956C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double sub_1002195E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100219658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_1002196D0()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate, &qword_101188C20);
  v1 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__trackCount;
  v2 = sub_10010FC20(&unk_1011A4640);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__duration;
  v4 = sub_10010FC20(&unk_101184D60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel__recordLabels;
  v6 = sub_10010FC20(&unk_1011A4630);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_10021986C()
{
  sub_1001E8510();
  if (v0 <= 0x3F)
  {
    sub_1000054CC(319, &qword_101184A68, &qword_101184A70);
    if (v1 <= 0x3F)
    {
      sub_1002199F0();
      if (v2 <= 0x3F)
      {
        sub_1000054CC(319, qword_101184A80, &unk_101192700);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002199F0()
{
  if (!qword_101184A78)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101184A78);
    }
  }
}

uint64_t sub_100219A6C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TracklistFooter.ViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

__n128 sub_100219AAC@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_101184C08);
  __chkstk_darwin(v4);
  v6 = v41 - v5;
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_10010FC20(&qword_101184C10);
  sub_100219DE0(a1, &v6[*(v7 + 44)]);
  v8 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v10 = &v6[*(sub_10010FC20(&qword_101184C18) + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  LODWORD(v8) = static HierarchicalShapeStyle.secondary.getter();
  *&v6[*(sub_10010FC20(&qword_101184C20) + 36)] = v8;
  v11 = static Edge.Set.top.getter();
  if (qword_10117F340 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = &v6[*(sub_10010FC20(&qword_101184C28) + 36)];
  *v20 = v11;
  *(v20 + 1) = v13;
  *(v20 + 2) = v15;
  *(v20 + 3) = v17;
  *(v20 + 4) = v19;
  v20[40] = 0;
  v21 = static Edge.Set.bottom.getter();
  if (qword_10117F348 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v6[*(sub_10010FC20(&qword_101184C30) + 36)];
  *v30 = v21;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v31 = static Edge.Set.leading.getter();
  if (qword_10117F350 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v32 = &v6[*(v4 + 36)];
  *v32 = v31;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10003D17C(v6, a2, &qword_101184C08);
  v37 = a2 + *(sub_10010FC20(&qword_101184C38) + 36);
  v38 = v41[5];
  *(v37 + 64) = v41[4];
  *(v37 + 80) = v38;
  *(v37 + 96) = v41[6];
  v39 = v41[1];
  *v37 = v41[0];
  *(v37 + 16) = v39;
  result = v41[3];
  *(v37 + 32) = v41[2];
  *(v37 + 48) = result;
  return result;
}

uint64_t sub_100219DE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v213 = a2;
  v212 = sub_10010FC20(&qword_101184C40);
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v200 = (&v189 - v3);
  v196 = sub_10010FC20(&qword_101184C48);
  __chkstk_darwin(v196);
  v197 = (&v189 - v4);
  v5 = sub_10010FC20(&qword_101184C50);
  __chkstk_darwin(v5 - 8);
  v199 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v201 = &v189 - v8;
  v189 = sub_10010FC20(&qword_101184C58);
  __chkstk_darwin(v189);
  v190 = &v189 - v9;
  v192 = sub_10010FC20(&qword_101184C60);
  __chkstk_darwin(v192);
  v191 = &v189 - v10;
  v198 = sub_10010FC20(&qword_101184C68);
  v195 = *(v198 - 8);
  __chkstk_darwin(v198);
  v194 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v203 = &v189 - v13;
  v14 = sub_10010FC20(&unk_101192700);
  __chkstk_darwin(v14 - 8);
  v207 = &v189 - v15;
  v219 = sub_10010FC20(&qword_101184C70);
  v218 = *(v219 - 8);
  __chkstk_darwin(v219);
  v193 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v217 = &v189 - v18;
  v19 = sub_10010FC20(&qword_101184C78);
  __chkstk_darwin(v19 - 8);
  v210 = &v189 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v209 = &v189 - v22;
  v206 = sub_10010FC20(&qword_101184C80);
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v202 = &v189 - v23;
  v24 = sub_10010FC20(&qword_101184C88);
  __chkstk_darwin(v24 - 8);
  v208 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v225 = &v189 - v27;
  v221 = sub_10010FC20(&unk_101184C90);
  v204 = *(v221 - 8);
  __chkstk_darwin(v221);
  v228 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v220 = &v189 - v30;
  v31 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v31 - 8);
  v33 = &v189 - v32;
  v216 = type metadata accessor for Date();
  v215 = *(v216 - 8);
  __chkstk_darwin(v216);
  v214 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10010FC20(&qword_101184CA0);
  __chkstk_darwin(v35 - 8);
  v223 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v227 = &v189 - v38;
  v39 = type metadata accessor for AccessibilityChildBehavior();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10010FC20(&qword_101184CA8);
  __chkstk_darwin(v43);
  v45 = &v189 - v44;
  v46 = sub_10010FC20(&qword_101184CB0);
  v47 = *(v46 - 8);
  __chkstk_darwin(v46);
  v49 = &v189 - v48;
  v50 = sub_10010FC20(&qword_101184CB8);
  __chkstk_darwin(v50 - 8);
  v222 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v226 = &v189 - v53;
  v54 = *(a1 + 16);
  if (v54 == 2 || (v54 & 1) == 0)
  {
    (*(v47 + 56))(v226, 1, 1, v46);
  }

  else
  {
    *v45 = static VerticalAlignment.center.getter();
    *(v45 + 1) = 0;
    v45[16] = 0;
    v55 = sub_10010FC20(&qword_101184D38);
    sub_10021B9DC(&v45[*(v55 + 44)]);
    static AccessibilityChildBehavior.combine.getter();
    sub_100020674(&qword_101184D40, &qword_101184CA8);
    View.accessibilityElement(children:)();
    (*(v40 + 8))(v42, v39);
    sub_1000095E8(v45, &qword_101184CA8);
    v56 = static Edge.Set.bottom.getter();
    if (qword_10117F358 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v57 = &v49[*(v46 + 36)];
    *v57 = v56;
    *(v57 + 1) = v58;
    *(v57 + 2) = v59;
    *(v57 + 3) = v60;
    *(v57 + 4) = v61;
    v57[40] = 0;
    v62 = v226;
    sub_10003D17C(v49, v226, &qword_101184CB0);
    (*(v47 + 56))(v62, 0, 1, v46);
  }

  v63 = v214;
  v64 = OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_releaseDate;
  swift_beginAccess();
  sub_1000089F8(a1 + v64, v33, &qword_101188C20);
  v65 = v215;
  v66 = v216;
  v67 = (*(v215 + 48))(v33, 1, v216);
  v224 = a1;
  if (v67 == 1)
  {
    sub_1000095E8(v33, &qword_101188C20);
    v68 = 1;
    v69 = v227;
    v70 = v221;
  }

  else
  {
    (*(v65 + 32))(v63, v33, v66);
    v71 = *NSDateFormatter.releaseDateFormatter.unsafeMutableAddressor();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v73 = [v71 stringFromDate:isa];

    v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v76 = v75;

    v233 = v74;
    v234 = v76;
    sub_100009838();
    v77 = Text.init<A>(_:)();
    v79 = v78;
    v233 = v77;
    v234 = v78;
    v81 = v80 & 1;
    LOBYTE(v235) = v80 & 1;
    v236 = v82;
    v83 = AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor();
    v84 = *v83;
    v85 = v83[1];
    v86 = v83[2];
    v87 = v83[3];

    v88 = v220;
    View.accessibilityIdentifier(_:)(v84, v85, v86, v87, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v77, v79, v81);

    v89 = static Edge.Set.bottom.getter();
    if (qword_10117F360 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v97 = v96;
    (*(v215 + 8))(v214, v216);
    v70 = v221;
    v98 = v88 + *(v221 + 36);
    *v98 = v89;
    *(v98 + 8) = v91;
    *(v98 + 16) = v93;
    *(v98 + 24) = v95;
    *(v98 + 32) = v97;
    *(v98 + 40) = 0;
    v69 = v227;
    sub_10003D17C(v88, v227, &unk_101184C90);
    v68 = 0;
  }

  (*(v204 + 56))(v69, v68, 1, v70);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v99 = v233;
  v100 = v234;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v233 = static String.stringForTrackCountAndDuration(trackCount:duration:)(v99, v100, v233, 0);
  v234 = v101;
  v216 = sub_100009838();
  v102 = Text.init<A>(_:)();
  v104 = v103;
  v233 = v102;
  v234 = v103;
  v106 = v105 & 1;
  LOBYTE(v235) = v105 & 1;
  v236 = v107;
  v108 = AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor();
  v109 = *v108;
  v110 = v108[1];
  v111 = v108[2];
  v112 = v108[3];

  v113 = v228;
  View.accessibilityIdentifier(_:)(v109, v110, v111, v112, &type metadata for Text, &protocol witness table for Text);

  sub_10011895C(v102, v104, v106);

  v114 = static Edge.Set.bottom.getter();
  if (qword_10117F368 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v115 = v113 + *(v221 + 36);
  *v115 = v114;
  *(v115 + 8) = v116;
  *(v115 + 16) = v117;
  *(v115 + 24) = v118;
  *(v115 + 32) = v119;
  *(v115 + 40) = 0;
  v120 = *(v224 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright + 8);
  if (v120)
  {
    v233 = *(v224 + OBJC_IVAR____TtCV5Music15TracklistFooter9ViewModel_copyright);
    v234 = v120;

    v121 = Text.init<A>(_:)();
    v123 = v122;
    v233 = v121;
    v234 = v122;
    v125 = v124 & 1;
    LOBYTE(v235) = v124 & 1;
    v236 = v126;
    v127 = AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor();
    v128 = *v127;
    v129 = v127[1];
    v130 = v127[2];
    v131 = v127[3];

    v132 = v202;
    View.accessibilityIdentifier(_:)(v128, v129, v130, v131, &type metadata for Text, &protocol witness table for Text);

    sub_10011895C(v121, v123, v125);

    v133 = v225;
    sub_10003D17C(v132, v225, &qword_101184C80);
    v134 = 0;
  }

  else
  {
    v134 = 1;
    v133 = v225;
  }

  v135 = v217;
  (*(v205 + 56))(v133, v134, 1, v206);
  swift_getKeyPath();
  swift_getKeyPath();
  v136 = v207;
  static Published.subscript.getter();

  v137 = v218;
  v138 = v219;
  if ((*(v218 + 48))(v136, 1, v219) == 1)
  {
    sub_1000095E8(v136, &unk_101192700);
LABEL_21:
    v139 = v220;
    v140 = v209;
    (*(v211 + 56))(v209, 1, 1, v212);
    goto LABEL_29;
  }

  (*(v137 + 32))(v135, v136, v138);
  sub_100020674(&qword_101184CD0, &qword_101184C70);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v233 == v232)
  {
    (*(v137 + 8))(v135, v138);
    goto LABEL_21;
  }

  if (qword_10117F370 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v224 = v233;
  v221 = v235;
  v216 = v237;
  v215 = v238;
  v231 = 1;
  v230 = v234;
  v229 = v236;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  LocalizedStringKey.init(stringLiteral:)();
  v141 = Text.init(_:tableName:bundle:comment:)();
  v143 = v142;
  v145 = v144;
  v147 = v146;
  v148 = v190;
  v149 = &v190[*(v189 + 36)];
  v150 = *(sub_10010FC20(&qword_101184CD8) + 28);
  v151 = enum case for Text.Case.uppercase(_:);
  v152 = type metadata accessor for Text.Case();
  v153 = *(v152 - 8);
  (*(v153 + 104))(v149 + v150, v151, v152);
  (*(v153 + 56))(v149 + v150, 0, 1, v152);
  *v149 = swift_getKeyPath();
  *v148 = v141;
  *(v148 + 8) = v143;
  *(v148 + 16) = v145 & 1;
  *(v148 + 24) = v147;
  v154 = static Font.caption2.getter();
  KeyPath = swift_getKeyPath();
  v156 = v191;
  sub_10003D17C(v148, v191, &qword_101184C58);
  v157 = (v156 + *(v192 + 36));
  *v157 = KeyPath;
  v157[1] = v154;
  static Font.Weight.semibold.getter();
  sub_10021CEE8();
  View.fontWeight(_:)();
  sub_1000095E8(v156, &qword_101184C60);
  if (qword_10117F378 != -1)
  {
    swift_once();
  }

  v214 = qword_101218870;
  if (qword_10117F388 != -1)
  {
    swift_once();
  }

  v158 = qword_101218880;
  v159 = static VerticalAlignment.center.getter();
  v160 = v197;
  *v197 = v159;
  *(v160 + 8) = v158;
  *(v160 + 16) = 0;
  sub_10010FC20(&qword_101184D08);
  (*(v218 + 16))(v193, v217, v219);
  swift_getKeyPath();
  type metadata accessor for TracklistFooter.RecordLabelStack(0);
  sub_100020674(&qword_101184D10, &qword_101184C70);
  sub_10021D078(&qword_101184D18, &type metadata accessor for RecordLabel);
  sub_10021D078(&qword_101184D20, type metadata accessor for TracklistFooter.RecordLabelStack);
  ForEach<>.init(_:id:content:)();
  v161 = AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor();
  v162 = *v161;
  v163 = v161[1];
  v164 = v161[2];
  v165 = v161[3];
  v166 = sub_100020674(&qword_101184D28, &qword_101184C48);

  v167 = v201;
  View.accessibilityIdentifier(_:)(v162, v163, v164, v165, v196, v166);

  sub_1000095E8(v160, &qword_101184C48);
  LOBYTE(v163) = v231;
  LOBYTE(v165) = v230;
  v168 = v229;
  v169 = v195;
  v170 = *(v195 + 16);
  v171 = v194;
  v172 = v198;
  v170(v194, v203, v198);
  v173 = v167;
  v174 = v199;
  sub_1000089F8(v173, v199, &qword_101184C50);
  v175 = v200;
  *v200 = 0;
  *(v175 + 8) = v163;
  *(v175 + 16) = v224;
  *(v175 + 24) = v165;
  *(v175 + 32) = v221;
  *(v175 + 40) = v168;
  v176 = v215;
  *(v175 + 48) = v216;
  *(v175 + 56) = v176;
  v177 = sub_10010FC20(&qword_101184D30);
  v170((v175 + v177[12]), v171, v172);
  v178 = v175 + v177[16];
  *v178 = v214;
  *(v178 + 8) = 0;
  sub_1000089F8(v174, v175 + v177[20], &qword_101184C50);
  sub_1000095E8(v201, &qword_101184C50);
  v179 = *(v169 + 8);
  v179(v203, v172);
  sub_1000095E8(v174, &qword_101184C50);
  v179(v171, v172);
  v140 = v209;
  sub_10003D17C(v175, v209, &qword_101184C40);
  (*(v211 + 56))(v140, 0, 1, v212);
  (*(v218 + 8))(v217, v219);
  v139 = v220;
  v133 = v225;
LABEL_29:
  v180 = v228;
  v181 = v222;
  sub_1000089F8(v226, v222, &qword_101184CB8);
  v182 = v223;
  sub_1000089F8(v227, v223, &qword_101184CA0);
  sub_1000089F8(v180, v139, &unk_101184C90);
  v183 = v208;
  sub_1000089F8(v133, v208, &qword_101184C88);
  v184 = v210;
  sub_1000089F8(v140, v210, &qword_101184C78);
  v185 = v213;
  sub_1000089F8(v181, v213, &qword_101184CB8);
  v186 = v140;
  v187 = sub_10010FC20(&qword_101184CC8);
  sub_1000089F8(v182, v185 + v187[12], &qword_101184CA0);
  sub_1000089F8(v139, v185 + v187[16], &unk_101184C90);
  sub_1000089F8(v183, v185 + v187[20], &qword_101184C88);
  sub_1000089F8(v184, v185 + v187[24], &qword_101184C78);
  sub_1000095E8(v186, &qword_101184C78);
  sub_1000095E8(v225, &qword_101184C88);
  sub_1000095E8(v228, &unk_101184C90);
  sub_1000095E8(v227, &qword_101184CA0);
  sub_1000095E8(v226, &qword_101184CB8);
  sub_1000095E8(v184, &qword_101184C78);
  sub_1000095E8(v183, &qword_101184C88);
  sub_1000095E8(v139, &unk_101184C90);
  sub_1000095E8(v223, &qword_101184CA0);
  return sub_1000095E8(v222, &qword_101184CB8);
}

uint64_t sub_10021B9DC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10010FC20(&qword_101184D48);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  if (qword_10117F878 != -1)
  {
    swift_once();
  }

  v9 = qword_101218F90;
  v38 = Image.init(_:bundle:)();
  View.accessibilityHidden(_:)();

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = v40;
  v34 = v38;
  v31 = v43;
  v32 = v42;
  v46 = 1;
  v45 = v39;
  v44 = v41;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v36 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v10;
  sub_100009838();
  v11 = Text.init<A>(_:)();
  v13 = v12;
  v30 = v14;
  v16 = v15;
  sub_1000089F8(v8, v5, &qword_101184D48);
  v17 = v46;
  v18 = v45;
  v19 = v5;
  v20 = v44;
  v29 = v8;
  v21 = v35;
  sub_1000089F8(v19, v35, &qword_101184D48);
  v22 = sub_10010FC20(&unk_101184D50);
  v23 = v21 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = v17;
  v24 = v33;
  *(v23 + 16) = v34;
  *(v23 + 24) = v18;
  *(v23 + 32) = v24;
  *(v23 + 40) = v20;
  v25 = v31;
  *(v23 + 48) = v32;
  *(v23 + 56) = v25;
  v26 = v21 + *(v22 + 64);
  *v26 = v11;
  *(v26 + 8) = v13;
  LOBYTE(v25) = v30;
  v27 = v30 & 1;
  *(v26 + 16) = v30 & 1;
  *(v26 + 24) = v16;
  sub_10021D0C0(v11, v13, v25 & 1);

  sub_1000095E8(v29, &qword_101184D48);
  sub_10011895C(v11, v13, v27);

  return sub_1000095E8(v19, &qword_101184D48);
}

uint64_t sub_10021BD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecordLabel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_10021BDD8@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = type metadata accessor for AccessibilityTraits();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for AccessibilityChildBehavior();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TracklistFooter.RecordLabelStack(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10010FC20(&qword_101184E50);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v9 = sub_10010FC20(&qword_101184E58);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_10010FC20(&qword_101184E60);
  v32 = *(v13 - 8);
  v33 = v13;
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  if (qword_10117F380 != -1)
  {
    swift_once();
  }

  v16 = qword_101218878;
  *v8 = static VerticalAlignment.center.getter();
  *(v8 + 1) = v16;
  v8[16] = 0;
  v17 = sub_10010FC20(&qword_101184E68);
  v18 = v35;
  sub_10021C2F8(&v8[*(v17 + 44)]);
  v19 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v21 = &v8[*(v6 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_10021D4B8(v18, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v23 = swift_allocObject();
  sub_10021D51C(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v24 = sub_10021D5E0();
  View.onTapGesture(count:perform:)();

  sub_1000095E8(v8, &qword_101184E50);
  v25 = v34;
  static AccessibilityChildBehavior.combine.getter();
  v42 = v6;
  v43 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityElement(children:)();
  (*(v36 + 8))(v25, v37);
  (*(v10 + 8))(v12, v9);
  v27 = v38;
  static AccessibilityTraits.isButton.getter();
  v42 = v9;
  v43 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  View.accessibilityAddTraits(_:)();
  (*(v39 + 8))(v27, v41);
  return (*(v32 + 8))(v15, v28);
}

uint64_t sub_10021C2F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_101184EC0);
  v3 = v2 - 8;
  __chkstk_darwin(v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v23[-v7];
  v25 = RecordLabel.name.getter();
  v26 = v9;
  sub_100009838();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v24 = v13;
  v15 = v14;
  v16 = Image.init(systemName:)();
  v17 = (v8 + *(v3 + 44));
  v18 = *(sub_10010FC20(&qword_1011A13C0) + 28);
  v19 = enum case for Image.Scale.small(_:);
  v20 = type metadata accessor for Image.Scale();
  (*(*(v20 - 8) + 104))(v17 + v18, v19, v20);
  *v17 = swift_getKeyPath();
  *v8 = v16;
  sub_1000089F8(v8, v5, &unk_101184EC0);
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v16) = v24 & 1;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v15;
  v21 = sub_10010FC20(&qword_101184ED0);
  sub_1000089F8(v5, a1 + *(v21 + 48), &unk_101184EC0);
  sub_10021D0C0(v10, v12, v16);

  sub_1000095E8(v8, &unk_101184EC0);
  sub_1000095E8(v5, &unk_101184EC0);
  sub_10011895C(v10, v12, v16);
}

uint64_t sub_10021C540(uint64_t a1)
{
  v2 = type metadata accessor for RecordLabel();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = [objc_opt_self() sharedApplication];
  v10 = [v9 connectedScenes];
  sub_100062364();
  sub_10021D078(&qword_101183DE0, sub_100062364);
  v11 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v11);
  v13 = v12;

  if (v13 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = sub_1007E90D4(0, v13);
      }

      else
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v15 = *(v13 + 32);
      }

      v16 = v15;

      v17 = [v16 delegate];

      if (v17 && (v24[1] = v17, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v26 + 1))
        {
          v18 = *(*sub_10000954C(&v25, *(&v26 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          result = sub_10000959C(&v25);
          if (v18)
          {
            v19 = type metadata accessor for TaskPriority();
            (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
            (*(v3 + 16))(v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
            type metadata accessor for MainActor();

            v20 = static MainActor.shared.getter();
            v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
            v22 = (v4 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
            v23 = swift_allocObject();
            *(v23 + 16) = v20;
            *(v23 + 24) = &protocol witness table for MainActor;
            (*(v3 + 32))(v23 + v21, v5, v2);
            *(v23 + v22) = v18;
            sub_1001F4CB8(0, 0, v8, &unk_100EC0AB8, v23);
          }

          return result;
        }
      }

      else
      {
        v27 = 0;
        v25 = 0u;
        v26 = 0u;
      }

      return sub_1000095E8(&v25, &unk_101184EA0);
    }
  }

  else
  {
    result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }
  }
}

uint64_t sub_10021C974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_10010FC20(&unk_10119DA70);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();

  return _swift_task_switch(sub_10021CA58, 0, 0);
}

uint64_t sub_10021CA58()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = type metadata accessor for RecordLabel();
  (*(*(v5 - 8) + 16))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for MusicPageProvider.Destination.recordLabelDetail<A, B>(_:), v3);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_10021CB68;
  v7 = v0[3];

  return sub_100704654(v7, 0);
}

uint64_t sub_10021CB68()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);

  (*(v2 + 8))(v1, v3);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10021CD08, v5, v4);
}

uint64_t sub_10021CD08()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10021CEE8()
{
  result = qword_101184CE0;
  if (!qword_101184CE0)
  {
    sub_1001109D0(&qword_101184C60);
    sub_10021CFA0();
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184CE0);
  }

  return result;
}

unint64_t sub_10021CFA0()
{
  result = qword_101184CE8;
  if (!qword_101184CE8)
  {
    sub_1001109D0(&qword_101184C58);
    sub_100020674(&unk_101184CF0, &qword_101184CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184CE8);
  }

  return result;
}

uint64_t sub_10021D078(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021D0C0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10021D0F8()
{
  result = type metadata accessor for RecordLabel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10021D164()
{
  result = qword_101184E00;
  if (!qword_101184E00)
  {
    sub_1001109D0(&qword_101184C38);
    sub_10021D24C(&qword_101184E08, &qword_101184C08, &unk_100EC0768, sub_10021D21C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E00);
  }

  return result;
}

uint64_t sub_10021D24C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10021D300()
{
  result = qword_101184E20;
  if (!qword_101184E20)
  {
    sub_1001109D0(&qword_101184C20);
    sub_10021D3B8();
    sub_100020674(&unk_101184E40, &qword_10119A240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E20);
  }

  return result;
}

unint64_t sub_10021D3B8()
{
  result = qword_101184E28;
  if (!qword_101184E28)
  {
    sub_1001109D0(&qword_101184C18);
    sub_100020674(&qword_101184E30, &qword_101184E38);
    sub_100020674(&unk_1011914B0, &qword_101184D00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E28);
  }

  return result;
}

uint64_t sub_10021D4B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TracklistFooter.RecordLabelStack(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021D51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TracklistFooter.RecordLabelStack(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10021D5E0()
{
  result = qword_101184E70;
  if (!qword_101184E70)
  {
    sub_1001109D0(&qword_101184E50);
    sub_100020674(&qword_101184E78, &unk_101184E80);
    sub_100020674(&unk_1011914C0, &unk_101184E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184E70);
  }

  return result;
}

uint64_t sub_10021D6C4(uint64_t a1)
{
  v4 = *(type metadata accessor for RecordLabel() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_10021C974(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_10021D7E4()
{
  result = qword_101184ED8;
  if (!qword_101184ED8)
  {
    sub_1001109D0(&qword_101184EE0);
    sub_1001109D0(&qword_101184E58);
    sub_1001109D0(&qword_101184E50);
    sub_10021D5E0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10021D078(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101184ED8);
  }

  return result;
}

unint64_t sub_10021D920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v4 = static MusicLibrary.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (Song.supportsContainerNavigation(itemState:)(a3))
  {
    return 0;
  }

  return 0xD000000000000010;
}

uint64_t sub_10021D9D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  v5 = type metadata accessor for Track();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_10010FC20(&qword_1011819F8);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for MusicPropertySource();
  *(v4 + 72) = v6;
  *(v4 + 80) = *(v6 - 8);
  *(v4 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_10021DB2C, 0, 0);
}

uint64_t sub_10021DB2C(uint64_t a1)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  v4 = *(v1 + 64);
  MusicLibrary.ItemState.containerLoadingSource.getter(a1, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_1000095E8(*(v1 + 64), &qword_1011819F8);

    v5 = *(v1 + 8);

    return v5();
  }

  else
  {
    v8 = *(v1 + 48);
    v7 = *(v1 + 56);
    v9 = *(v1 + 40);
    v10 = *(v1 + 24);
    v11 = *(v1 + 104);
    (*(*(v1 + 80) + 32))(*(v1 + 88), *(v1 + 64), *(v1 + 72));
    v12 = type metadata accessor for Song();
    (*(*(v12 - 8) + 16))(v7, v10, v12);
    (*(v8 + 104))(v7, enum case for Track.song(_:), v9);
    v13 = swift_task_alloc();
    *(v1 + 96) = v13;
    *v13 = v1;
    v13[1] = sub_10021DD28;
    v14 = *(v1 + 88);
    v15 = *(v1 + 56);
    v16 = *(v1 + 32);

    return sub_100138C84(v16, v15, v14, v11 < 2);
  }
}

uint64_t sub_10021DD28()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10021DE80, 0, 0);
}

uint64_t sub_10021DE80()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10021DF10@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SuggestedSongsModule(0);
  v28 = *(v3 - 8);
  v4 = *(v28 + 64);
  __chkstk_darwin(v3);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_101185400);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_10010FC20(&qword_101185408);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = *(dispatch thunk of MusicSuggestedSongsViewModel.suggestedSongs.getter() + 16);

  if (v11)
  {
    *v7 = static HorizontalAlignment.leading.getter();
    *(v7 + 1) = 0;
    v7[16] = 0;
    v12 = sub_10010FC20(&qword_101185410);
    sub_10021E2F0(v1, &v7[*(v12 + 44)]);
    v26 = a1;
    v27 = v8;
    v13 = *(v1 + 24);
    v14 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
    swift_beginAccess();
    v15 = &v7[*(v5 + 36)];
    sub_1002372D4(v13 + v14, v15, type metadata accessor for SuggestedSongsDataSource.Placement);
    v16 = *(v3 + 24);
    v17 = type metadata accessor for SuggestedSongsModule.Background(0);
    sub_1002372D4(v1 + v16, v15 + *(v17 + 24), type metadata accessor for SuggestedSongsModule.Specs);
    *(v15 + *(v17 + 20)) = 0;
    v31 = dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter() & 1;
    v18 = v29;
    sub_1002372D4(v1, v29, type metadata accessor for SuggestedSongsModule);
    v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v20 = swift_allocObject();
    sub_10023733C(v18, v20 + v19, type metadata accessor for SuggestedSongsModule);
    sub_100237424();
    View.onChange<A>(of:initial:_:)();

    sub_1000095E8(v7, &qword_101185400);
    v22 = v26;
    v21 = v27;
    (*(v30 + 32))(v26, v10, v27);
    return (*(v30 + 56))(v22, 0, 1, v21);
  }

  else
  {
    v24 = *(v30 + 56);

    return v24(a1, 1, 1, v8);
  }
}

uint64_t sub_10021E2F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v51 = sub_10010FC20(&qword_101185438) - 8;
  __chkstk_darwin(v51);
  v52 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v42 - v5;
  v7 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v50 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (v42 - v11);
  v13 = *(a1 + 8);
  v14 = *(a1 + 24);
  v15 = type metadata accessor for SuggestedSongsModule(0);
  v16 = *(v8 + 32);
  v48 = *(v15 + 24);
  v49 = type metadata accessor for SuggestedSongsModule.Specs;
  sub_1002372D4(a1 + v48, v12 + v16, type metadata accessor for SuggestedSongsModule.Specs);
  v46 = type metadata accessor for MusicSuggestedSongsViewModel();
  v45 = sub_100236DF0(&qword_1011852A0, &type metadata accessor for MusicSuggestedSongsViewModel);
  v47 = v13;
  swift_retain_n();
  v42[0] = v14;
  swift_retain_n();
  *v12 = ObservedObject.init(wrappedValue:)();
  v12[1] = v17;
  v42[1] = type metadata accessor for SuggestedSongsDataSource(0);
  sub_100236DF0(&qword_1011A4A60, type metadata accessor for SuggestedSongsDataSource);
  v12[2] = ObservedObject.init(wrappedValue:)();
  v12[3] = v18;
  v19 = *(v8 + 36);
  *(v12 + v19) = swift_getKeyPath();
  v44 = sub_10010FC20(&unk_101184840);
  swift_storeEnumTagMultiPayload();
  v20 = *(v15 + 28);
  v43 = a1;
  v21 = (a1 + v20);
  v22 = *v21;
  v23 = *(v21 + 1);
  v57 = v22;
  v58 = v23;
  sub_10010FC20(&unk_101197960);
  State.projectedValue.getter();
  v24 = v54;
  v25 = v55;
  LOBYTE(v14) = v56;
  v26 = type metadata accessor for SuggestedSongsModule.ContentView(0);
  v28 = v48;
  v27 = v49;
  sub_1002372D4(a1 + v48, &v6[v26[7]], v49);
  *v6 = ObservedObject.init(wrappedValue:)();
  *(v6 + 1) = v29;
  v30 = v42[0];
  *(v6 + 2) = ObservedObject.init(wrappedValue:)();
  *(v6 + 3) = v31;
  *(v6 + 4) = v24;
  *(v6 + 5) = v25;
  v6[48] = v14;
  v32 = v26[8];
  *&v6[v32] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610);
  swift_storeEnumTagMultiPayload();
  v33 = v26[9];
  *&v6[v33] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v34 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v35 = &v6[*(v51 + 44)];
  sub_1002372D4(v30 + v34, v35, type metadata accessor for SuggestedSongsDataSource.Placement);
  v36 = type metadata accessor for SuggestedSongsModule.Background(0);
  sub_1002372D4(v43 + v28, v35 + *(v36 + 24), v27);
  *(v35 + *(v36 + 20)) = 1;
  v37 = v50;
  sub_1002372D4(v12, v50, type metadata accessor for SuggestedSongsModule.HeaderView);
  v38 = v52;
  sub_1000089F8(v6, v52, &qword_101185438);
  v39 = v53;
  sub_1002372D4(v37, v53, type metadata accessor for SuggestedSongsModule.HeaderView);
  v40 = sub_10010FC20(&qword_101185440);
  sub_1000089F8(v38, v39 + *(v40 + 48), &qword_101185438);
  sub_1000095E8(v6, &qword_101185438);
  sub_10023754C(v12, type metadata accessor for SuggestedSongsModule.HeaderView);
  sub_1000095E8(v38, &qword_101185438);
  return sub_10023754C(v37, type metadata accessor for SuggestedSongsModule.HeaderView);
}

uint64_t sub_10021E7BC()
{
  type metadata accessor for SuggestedSongsModule(0);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_10021E830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v80 = a1;
  v3 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v3 - 8);
  v79 = &v73 - v4;
  v5 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v5);
  v78 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v73 - v8;
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = sub_10010FC20(&qword_101185780);
  __chkstk_darwin(v13 - 8);
  v15 = &v73 - v14;
  v16 = sub_10010FC20(&qword_101185788);
  __chkstk_darwin(v16);
  v18 = &v73 - v17;
  v73 = sub_10010FC20(&qword_101185790);
  __chkstk_darwin(v73);
  v76 = &v73 - v19;
  v75 = sub_10010FC20(&qword_101185798);
  __chkstk_darwin(v75);
  v77 = &v73 - v20;
  *v15 = static VerticalAlignment.center.getter();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v21 = sub_10010FC20(&qword_1011857A0);
  sub_10021EE94(v1, &v15[*(v21 + 44)]);
  v22 = static Edge.Set.top.getter();
  v74 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v23 = *(v74 + 24);
  v24 = v2;
  sub_1002372D4(v2 + v23, v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v5) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v12, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v5 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_10003D17C(v15, v18, &qword_101185780);
  v33 = &v18[*(v16 + 36)];
  *v33 = v22;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  v34 = static Edge.Set.bottom.getter();
  sub_1002372D4(v2 + v23, v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v9, type metadata accessor for SuggestedSongsDataSource.Placement);
  v36 = EnumCaseMultiPayload == 1;
  v37 = v76;
  if (v36 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_10003D17C(v18, v37, &qword_101185788);
  v46 = v37 + *(v73 + 36);
  *v46 = v34;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  v47 = static Edge.Set.leading.getter();
  v48 = v78;
  sub_1002372D4(v24 + v23, v78, type metadata accessor for SuggestedSongsDataSource.Placement);
  v49 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v48, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v49 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v77;
  sub_10003D17C(v37, v77, &qword_101185790);
  v59 = v58 + *(v75 + 36);
  *v59 = v47;
  *(v59 + 8) = v51;
  *(v59 + 16) = v53;
  *(v59 + 24) = v55;
  *(v59 + 32) = v57;
  *(v59 + 40) = 0;
  v60 = static Edge.Set.trailing.getter();
  v61 = v79;
  sub_10056CAE4(v79);
  sub_10022205C(v61);
  sub_1000095E8(v61, &unk_101184290);
  EdgeInsets.init(_all:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v80;
  sub_10003D17C(v58, v80, &qword_101185798);
  result = sub_10010FC20(&qword_1011857A8);
  v72 = v70 + *(result + 36);
  *v72 = v60;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  *(v72 + 32) = v69;
  *(v72 + 40) = 0;
  return result;
}

uint64_t sub_10021EE94@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v81 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v71);
  v72 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v70 = &v69 - v9;
  v10 = sub_10010FC20(&qword_1011857B0);
  __chkstk_darwin(v10 - 8);
  v82 = &v69 - v11;
  v73 = sub_10010FC20(&qword_1011857B8);
  __chkstk_darwin(v73);
  v74 = &v69 - v12;
  v75 = sub_10010FC20(&qword_1011857C0);
  __chkstk_darwin(v75);
  v76 = &v69 - v13;
  v78 = sub_10010FC20(&qword_1011857C8);
  __chkstk_darwin(v78);
  v79 = &v69 - v14;
  v15 = sub_10010FC20(&qword_1011857D0);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v77 = &v69 - v16;
  v17 = sub_10010FC20(&qword_1011857D8);
  __chkstk_darwin(v17 - 8);
  v89 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v91 = &v69 - v20;
  v21 = type metadata accessor for AccessibilityChildBehavior();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&qword_1011857E0);
  v85 = *(v25 - 8);
  v86 = v25;
  __chkstk_darwin(v25);
  v84 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v69 - v28;
  v30 = static HorizontalAlignment.leading.getter();
  LOBYTE(v92) = 0;
  sub_10021FAEC(a1, v98);
  memcpy(v96, v98, sizeof(v96));
  memcpy(v97, v98, sizeof(v97));
  sub_1000089F8(v96, v94, &qword_1011857E8);
  sub_1000095E8(v97, &qword_1011857E8);
  memcpy(&v95[7], v96, 0x150uLL);
  *v94 = v30;
  *&v94[8] = 0;
  v94[16] = v92;
  memcpy(&v94[17], v95, 0x157uLL);
  static AccessibilityChildBehavior.combine.getter();
  sub_10010FC20(&qword_1011857F0);
  sub_100020674(&qword_1011857F8, &qword_1011857F0);
  v83 = v29;
  v31 = a1;
  View.accessibilityElement(children:)();
  (*(v22 + 8))(v24, v21);
  memcpy(v98, v94, 0x168uLL);
  sub_1000095E8(v98, &qword_1011857F0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = 1;
  if (v94[0] == 1)
  {
    sub_1002206D4(a1, v82);
    v33 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
    v34 = a1 + v33;
    v35 = v70;
    sub_1002372D4(v34, v70, type metadata accessor for SuggestedSongsDataSource.Placement);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10023754C(v35, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (EnumCaseMultiPayload == 1)
    {
      if (qword_10117F390 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v37 = [objc_opt_self() defaultMetrics];
      [v37 scaledValueForValue:24.0];
    }

    v38 = v72;
    sub_1002372D4(v31 + v33, v72, type metadata accessor for SuggestedSongsDataSource.Placement);
    v39 = swift_getEnumCaseMultiPayload();
    sub_10023754C(v38, type metadata accessor for SuggestedSongsDataSource.Placement);
    if (v39 == 1)
    {
      if (qword_10117F390 != -1)
      {
        swift_once();
      }
    }

    else
    {
      v40 = [objc_opt_self() defaultMetrics];
      [v40 scaledValueForValue:24.0];
    }

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v41 = v74;
    sub_10003D17C(v82, v74, &qword_1011857B0);
    v42 = (v41 + *(v73 + 36));
    v43 = *&v94[80];
    v42[4] = *&v94[64];
    v42[5] = v43;
    v42[6] = *&v94[96];
    v44 = *&v94[16];
    *v42 = *v94;
    v42[1] = v44;
    v45 = *&v94[48];
    v42[2] = *&v94[32];
    v42[3] = v45;
    if (qword_10117F3B0 != -1)
    {
      swift_once();
    }

    v46 = qword_101184F18;
    v47 = v76;
    sub_10003D17C(v41, v76, &qword_1011857B8);
    *(v47 + *(v75 + 36)) = v46;

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v92 = String.init(localized:table:bundle:locale:comment:)();
    v93 = v48;
    sub_100238124();
    sub_100009838();
    v49 = v79;
    View.accessibilityLabel<A>(_:)();

    sub_1000095E8(v47, &qword_1011857C0);
    refreshed = AccessibilityIdentifier.playlistSuggestedSongsRefreshButton.unsafeMutableAddressor();
    v51 = *refreshed;
    v52 = refreshed[1];
    v53 = refreshed[2];
    v54 = refreshed[3];
    v55 = sub_100238500(&qword_101185860, &qword_1011857C8, &unk_100EC1118, sub_100238124);

    v56 = v77;
    View.accessibilityIdentifier(_:)(v51, v52, v53, v54, v78, v55);

    sub_1000095E8(v49, &qword_1011857C8);
    sub_10003D17C(v56, v91, &qword_1011857D0);
    v32 = 0;
  }

  v57 = v91;
  (*(v87 + 56))(v91, v32, 1, v88);
  v58 = v84;
  v59 = v85;
  v60 = *(v85 + 16);
  v61 = v83;
  v62 = v86;
  v60(v84, v83, v86);
  v63 = v89;
  sub_1000089F8(v57, v89, &qword_1011857D8);
  v64 = v90;
  v60(v90, v58, v62);
  v65 = sub_10010FC20(&qword_101185800);
  v66 = &v64[*(v65 + 48)];
  *v66 = 0;
  v66[8] = 1;
  sub_1000089F8(v63, &v64[*(v65 + 64)], &qword_1011857D8);
  sub_1000095E8(v57, &qword_1011857D8);
  v67 = *(v59 + 8);
  v67(v61, v62);
  sub_1000095E8(v63, &qword_1011857D8);
  return (v67)(v58, v62);
}

uint64_t sub_10021FAEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v98 = a2;
  v3 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v3);
  v97 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = v89 - v6;
  __chkstk_darwin(v7);
  v93 = v89 - v8;
  __chkstk_darwin(v9);
  v100 = v89 - v10;
  __chkstk_darwin(v11);
  v101 = v89 - v12;
  __chkstk_darwin(v13);
  v99 = v89 - v14;
  __chkstk_darwin(v15);
  v17 = v89 - v16;
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v21 - 8);
  v23 = v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v91 = v23;
  v92 = v20;
  v144 = String.init(localized:table:bundle:locale:comment:)();
  v145 = v24;
  v90 = sub_100009838();
  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  v102 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
  v103 = a1;
  sub_1002372D4(a1 + v102, v17, type metadata accessor for SuggestedSongsDataSource.Placement);
  v104 = v3;
  LODWORD(v3) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v17, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v3 == 1)
  {
    if (qword_10117F390 == -1)
    {
      if (byte_101184EE8)
      {
LABEL_4:
        static Font.title2.getter();
        goto LABEL_8;
      }
    }

    else
    {
      swift_once();
      if (byte_101184EE8)
      {
        goto LABEL_4;
      }
    }

    static Font.body.getter();
  }

  else
  {
    static Font.subheadline.getter();
  }

LABEL_8:
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;

  sub_10011895C(v25, v27, v29 & 1);

  v35 = v99;
  sub_1002372D4(v103 + v102, v99, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v35, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 == -1)
    {
      if (byte_101184EE8)
      {
LABEL_11:
        static Font.Weight.bold.getter();
        goto LABEL_14;
      }
    }

    else
    {
      swift_once();
      if (byte_101184EE8)
      {
        goto LABEL_11;
      }
    }
  }

  static Font.Weight.semibold.getter();
LABEL_14:
  v37 = Text.fontWeight(_:)();
  v39 = v38;
  v41 = v40;
  sub_10011895C(v30, v32, v34 & 1);

  v42 = v101;
  sub_1002372D4(v103 + v102, v101, type metadata accessor for SuggestedSongsDataSource.Placement);
  v43 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v42, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v43 == 1)
  {
    v44 = static HierarchicalShapeStyle.primary.getter();
  }

  else
  {
    v44 = static HierarchicalShapeStyle.secondary.getter();
  }

  LODWORD(v144) = v44;
  v45 = Text.foregroundStyle<A>(_:)();
  v94 = v46;
  v95 = v45;
  v48 = v47;
  v101 = v49;
  sub_10011895C(v37, v39, v41 & 1);

  v50 = v100;
  sub_1002372D4(v103 + v102, v100, type metadata accessor for SuggestedSongsDataSource.Placement);
  v51 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v50, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v51 == 1 && qword_10117F390 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LODWORD(v99) = v48 & 1;
  v173 = v48 & 1;
  LODWORD(v100) = static Edge.Set.top.getter();
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v52 = byte_101184EE8;
  EdgeInsets.init(_all:)();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v174 = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v144 = String.init(localized:table:bundle:locale:comment:)();
  v145 = v61;
  v62 = Text.init<A>(_:)();
  v64 = v63;
  v66 = v65;
  v67 = v93;
  sub_1002372D4(v103 + v102, v93, type metadata accessor for SuggestedSongsDataSource.Placement);
  v68 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v67, type metadata accessor for SuggestedSongsDataSource.Placement);
  v89[1] = v52;
  if (v68 == 1 && (v52 & 1) != 0)
  {
    static Font.body.getter();
  }

  else
  {
    static Font.subheadline.getter();
  }

  v69 = Text.font(_:)();
  v71 = v70;
  v73 = v72;

  sub_10011895C(v62, v64, v66 & 1);

  v74 = v96;
  sub_1002372D4(v103 + v102, v96, type metadata accessor for SuggestedSongsDataSource.Placement);
  v75 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v74, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v75 == 1)
  {
    v76 = static HierarchicalShapeStyle.secondary.getter();
  }

  else
  {
    v76 = static HierarchicalShapeStyle.tertiary.getter();
  }

  LODWORD(v144) = v76;
  v77 = Text.foregroundStyle<A>(_:)();
  v79 = v78;
  v81 = v80;
  v96 = v82;
  sub_10011895C(v69, v71, v73 & 1);

  v83 = v97;
  sub_1002372D4(v103 + v102, v97, type metadata accessor for SuggestedSongsDataSource.Placement);
  swift_getEnumCaseMultiPayload();
  sub_10023754C(v83, type metadata accessor for SuggestedSongsDataSource.Placement);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v84 = v81 & 1;
  v86 = v94;
  v85 = v95;
  *&v113 = v95;
  *(&v113 + 1) = v94;
  LOBYTE(v114) = v99;
  *(&v114 + 1) = *v172;
  DWORD1(v114) = *&v172[3];
  *(&v114 + 1) = v101;
  v119 = v169;
  v120 = v170;
  v121 = v171;
  v115 = v165;
  v116 = v166;
  v117 = v167;
  v118 = v168;
  LOBYTE(v122) = v100;
  DWORD1(v122) = *(v175 + 3);
  *(&v122 + 1) = v175[0];
  *(&v122 + 1) = v54;
  *&v123[0] = v56;
  *(&v123[0] + 1) = v58;
  *&v123[1] = v60;
  BYTE8(v123[1]) = 0;
  v105[2] = v165;
  v105[3] = v166;
  v105[0] = v113;
  v105[1] = v114;
  v105[6] = v169;
  v105[7] = v170;
  v105[4] = v167;
  v105[5] = v168;
  *&v124 = v77;
  *(&v124 + 1) = v79;
  LOBYTE(v125) = v81 & 1;
  *(&v125 + 1) = *v163;
  DWORD1(v125) = *&v163[3];
  v87 = v96;
  *(&v125 + 1) = v96;
  v105[9] = v122;
  v105[10] = v123[0];
  *(&v105[10] + 9) = *(v123 + 9);
  v105[8] = v171;
  v130 = v110;
  v131 = v111;
  v132 = v112;
  v126 = v106;
  v127 = v107;
  v128 = v108;
  v129 = v109;
  v105[17] = v109;
  v105[18] = v110;
  v105[19] = v111;
  v105[20] = v112;
  v105[13] = v125;
  v105[14] = v106;
  v105[15] = v107;
  v105[16] = v108;
  v164 = v84;
  v105[12] = v124;
  memcpy(v98, v105, 0x150uLL);
  v133[0] = v77;
  v133[1] = v79;
  v134 = v84;
  *v135 = *v163;
  *&v135[3] = *&v163[3];
  v136 = v87;
  v141 = v110;
  v142 = v111;
  v143 = v112;
  v137 = v106;
  v138 = v107;
  v139 = v108;
  v140 = v109;
  sub_1000089F8(&v113, &v144, &qword_101181120);
  sub_1000089F8(&v124, &v144, &qword_101181130);
  sub_1000095E8(v133, &qword_101181130);
  v144 = v85;
  v145 = v86;
  v146 = v99;
  *v147 = *v172;
  *&v147[3] = *&v172[3];
  v148 = v101;
  v153 = v169;
  v154 = v170;
  v155 = v171;
  v149 = v165;
  v150 = v166;
  v152 = v168;
  v151 = v167;
  v156 = v100;
  *&v157[3] = *(v175 + 3);
  *v157 = v175[0];
  v158 = v54;
  v159 = v56;
  v160 = v58;
  v161 = v60;
  v162 = 0;
  return sub_1000095E8(&v144, &qword_101181120);
}

uint64_t sub_1002206D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v42 = type metadata accessor for PlainButtonStyle();
  v37 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10010FC20(&qword_101185838);
  __chkstk_darwin(v6);
  v8 = &v34 - v7;
  v43 = sub_10010FC20(&qword_101185830);
  v35 = *(v43 - 8);
  __chkstk_darwin(v43);
  v10 = &v34 - v9;
  v44 = sub_10010FC20(&qword_101185868);
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v38 = &v34 - v11;
  v40 = sub_10010FC20(&qword_101185870);
  __chkstk_darwin(v40);
  v13 = &v34 - v12;
  v41 = sub_10010FC20(&qword_101199ED0);
  v14 = *(v41 - 8);
  __chkstk_darwin(v41);
  v16 = &v34 - v15;
  if (dispatch thunk of MusicSuggestedSongsViewModel.isPerformingUserInitiatedRefresh.getter())
  {
    ProgressView<>.init<>()();
    v17 = v41;
    (*(v14 + 16))(v13, v16, v41);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0);
    v18 = sub_10023841C();
    v19 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    v46 = v6;
    v47 = v42;
    v48 = v18;
    v49 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v43;
    v47 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v16, v17);
  }

  else
  {
    sub_1002372D4(a1, &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSongsModule.HeaderView);
    v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v23 = swift_allocObject();
    v24 = sub_10023733C(&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for SuggestedSongsModule.HeaderView);
    __chkstk_darwin(v24);
    sub_10010FC20(&qword_101185878);
    sub_1002385E8();
    Button.init(action:label:)();
    *&v8[*(v6 + 36)] = static HierarchicalShapeStyle.primary.getter();
    v25 = v36;
    PlainButtonStyle.init()();
    v26 = sub_10023841C();
    v27 = sub_100236DF0(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    v28 = v42;
    View.buttonStyle<A>(_:)();
    (*(v37 + 8))(v25, v28);
    sub_1000095E8(v8, &qword_101185838);
    v46 = v6;
    v47 = v28;
    v48 = v26;
    v49 = v27;
    v33 = swift_getOpaqueTypeConformance2();
    v29 = v38;
    v30 = v43;
    View.hover(corner:outset:isRelative:namespace:isEnabled:)();
    (*(v35 + 8))(v10, v30);
    v31 = v39;
    v32 = v44;
    (*(v39 + 16))(v13, v29, v44);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101180F58, &qword_101199ED0);
    v46 = v30;
    v47 = v33;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v31 + 8))(v29, v32);
  }
}

uint64_t sub_100220E64()
{
  v1 = v0;
  v2 = type metadata accessor for SuggestedSongsModule.HeaderView(0);
  v71 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v73 = v3;
  v74 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v72 = &v58 - v5;
  v66 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v66);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v58 - v8;
  __chkstk_darwin(v9);
  v64 = &v58 - v10;
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v17 - 8);
  v67 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  v22 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v22 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F1F8 != -1)
  {
    swift_once();
  }

  v70 = v24;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v75 == 1)
  {
    sub_10012F360();
  }

  sub_10010FC20(&qword_1011858B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v26 = sub_10010C578(&off_101099A00);
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  *(inited + 32) = v26;
  v27 = sub_10010C578(&off_101099A60);
  swift_arrayDestroy();
  *(inited + 40) = v27;
  v28 = type metadata accessor for URL();
  v29 = *(*(v28 - 8) + 56);
  v29(v21, 1, 1, v28);
  v63 = sub_10018DA2C(inited);

  v30 = *(v1 + 24);
  v65 = v1;
  v31 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  v62 = v21;
  sub_1002372D4(v30 + v31, v16, type metadata accessor for SuggestedSongsDataSource.Placement);
  v61 = sub_100222540();
  v60 = v32;
  sub_10023754C(v16, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_1002372D4(v30 + v31, v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  v33 = v64;
  sub_1002372D4(v13, v64, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v35 = EnumCaseMultiPayload == 1;
  if (EnumCaseMultiPayload == 1)
  {
    v36 = v13;
  }

  else
  {
    v36 = v33;
  }

  if (v35)
  {
    v13 = v33;
  }

  v37 = 0x72656B636950;
  if (v35)
  {
    v37 = 0x7473696C79616C50;
  }

  v64 = v37;
  v38 = 0xE600000000000000;
  if (v35)
  {
    v38 = 0xE800000000000000;
  }

  v59 = v38;
  sub_10023754C(v36, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023754C(v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  v39 = v67;
  v29(v67, 1, 1, v28);
  v40 = v68;
  sub_1002372D4(v30 + v31, v68, type metadata accessor for SuggestedSongsDataSource.Placement);
  v41 = v69;
  sub_10023733C(v40, v69, type metadata accessor for SuggestedSongsDataSource.Placement);
  LOBYTE(v40) = swift_getEnumCaseMultiPayload() == 1;
  sub_10023754C(v41, type metadata accessor for SuggestedSongsDataSource.Placement);
  v42 = v70;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(0xD000000000000014, 0x8000000100E3BEF0, 5, 63, v62, v63, 0, 12, v70, 0, 0, 65280, v61, v60, v64, v59, v39, 0, v40, 2, 0, 0, 0);
  v43 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v44 = sub_10053771C();
  v46 = v45;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v47 = qword_101218AD0;
  v48 = GroupActivitiesManager.hasJoined.getter();
  v49 = GroupActivitiesManager.participantsCount.getter();
  v50 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v43) + 0xB8))(v42, v44, v46, v48 & 1, v49, *(v47 + v50));

  v51 = type metadata accessor for TaskPriority();
  v52 = v72;
  (*(*(v51 - 8) + 56))(v72, 1, 1, v51);
  v53 = v74;
  sub_1002372D4(v65, v74, type metadata accessor for SuggestedSongsModule.HeaderView);
  type metadata accessor for MainActor();
  v54 = static MainActor.shared.getter();
  v55 = (*(v71 + 80) + 32) & ~*(v71 + 80);
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  *(v56 + 24) = &protocol witness table for MainActor;
  sub_10023733C(v53, v56 + v55, type metadata accessor for SuggestedSongsModule.HeaderView);
  sub_1001F4CB8(0, 0, v52, &unk_100EC1298, v56);

  return sub_10023754C(v42, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_1002216C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v44 - v6;
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v13 = &v44 - v12;
  v14 = sub_10010FC20(&qword_10119A280);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v50 = &v44 - v15;
  v45 = sub_10010FC20(&qword_101185890);
  __chkstk_darwin(v45);
  v48 = &v44 - v16;
  v17 = Image.init(systemName:)();
  v18 = *(type metadata accessor for SuggestedSongsModule.HeaderView(0) + 24);
  sub_1002372D4(a1 + v18, v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_10023754C(v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (EnumCaseMultiPayload == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      v20 = static Font.title3.getter();
    }

    else
    {
      v20 = static Font.body.getter();
    }
  }

  else
  {
    v20 = static Font.caption.getter();
  }

  v21 = v20;
  KeyPath = swift_getKeyPath();
  *&v51 = v17;
  *(&v51 + 1) = KeyPath;
  *&v52 = v21;
  v23 = a1;
  sub_1002372D4(a1 + v18, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  v24 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v24 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }

    if (byte_101184EE8)
    {
      static Font.Weight.medium.getter();
    }

    else
    {
      static Font.Weight.semibold.getter();
    }
  }

  else
  {
    static Font.Weight.heavy.getter();
  }

  sub_10010FC20(&unk_1011A1100);
  sub_100238768();
  View.fontWeight(_:)();

  sub_1002372D4(a1 + v18, v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  v25 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v7, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v25 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v26 = [objc_opt_self() defaultMetrics];
    [v26 scaledValueForValue:24.0];
  }

  v27 = a1 + v18;
  v28 = v44;
  sub_1002372D4(v27, v44, type metadata accessor for SuggestedSongsDataSource.Placement);
  v29 = swift_getEnumCaseMultiPayload();
  sub_10023754C(v28, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v29 == 1)
  {
    if (qword_10117F390 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v30 = [objc_opt_self() defaultMetrics];
    [v30 scaledValueForValue:24.0];
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v31 = v48;
  (*(v46 + 32))(v48, v50, v47);
  v32 = (v31 + *(v45 + 36));
  v33 = v56;
  v32[4] = v55;
  v32[5] = v33;
  v32[6] = v57;
  v34 = v52;
  *v32 = v51;
  v32[1] = v34;
  v35 = v54;
  v32[2] = v53;
  v32[3] = v35;
  v36 = static Alignment.center.getter();
  v38 = v37;
  v39 = sub_10010FC20(&qword_101185878);
  v40 = v49;
  v41 = v49 + *(v39 + 36);
  sub_100221DCC(v23, v41);
  v42 = (v41 + *(sub_10010FC20(&qword_1011858A0) + 36));
  *v42 = v36;
  v42[1] = v38;
  return sub_10003D17C(v31, v40, &qword_101185890);
}

uint64_t sub_100221DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10010FC20(&qword_1011858A8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v23 - v6);
  v8 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = *(a1 + 24);
  v15 = OBJC_IVAR____TtC5Music24SuggestedSongsDataSource_placement;
  swift_beginAccess();
  sub_1002372D4(v14 + v15, v13, type metadata accessor for SuggestedSongsDataSource.Placement);
  sub_10023733C(v13, v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  LODWORD(v14) = swift_getEnumCaseMultiPayload();
  sub_10023754C(v10, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (v14 == 1)
  {
    v16 = 1;
  }

  else
  {
    static Color.white.getter();
    v17 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v19 = *(v4 + 36);
    v20 = enum case for BlendMode.plusLighter(_:);
    v21 = type metadata accessor for BlendMode();
    (*(*(v21 - 8) + 104))(v7 + v19, v20, v21);
    *v7 = KeyPath;
    v7[1] = v17;
    sub_10003D17C(v7, a2, &qword_1011858A8);
    v16 = 0;
  }

  return (*(v5 + 56))(a2, v16, 1, v4);
}

double sub_10022205C(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_101185768);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_10010FC20(&unk_101184290);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10010FC20(&qword_101185770);
  __chkstk_darwin(v16 - 8);
  v18 = &v27 - v17;
  if (qword_10117F390 != -1)
  {
    swift_once();
  }

  v19 = byte_101184EE8;
  sub_1002372D4(v2, v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  type metadata accessor for SuggestedSongsDataSource.Placement(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v21 = 22.0;
  }

  else
  {
    v21 = 16.0;
  }

  if (EnumCaseMultiPayload == 1 && (v19 & 1) == 0)
  {
    (*(v4 + 104))(v15, enum case for UserInterfaceSizeClass.compact(_:), v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    v22 = *(v7 + 48);
    sub_1000089F8(v28, v9, &unk_101184290);
    sub_1000089F8(v15, &v9[v22], &unk_101184290);
    v23 = *(v4 + 48);
    if (v23(v9, 1, v3) == 1)
    {
      sub_1000095E8(v15, &unk_101184290);
      if (v23(&v9[v22], 1, v3) == 1)
      {
        sub_1000095E8(v9, &unk_101184290);
        v21 = 16.0;
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000089F8(v9, v12, &unk_101184290);
      if (v23(&v9[v22], 1, v3) != 1)
      {
        (*(v4 + 32))(v6, &v9[v22], v3);
        sub_100236DF0(&qword_101185778, &type metadata accessor for UserInterfaceSizeClass);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v4 + 8);
        v26(v6, v3);
        sub_1000095E8(v15, &unk_101184290);
        v26(v12, v3);
        sub_1000095E8(v9, &unk_101184290);
        v21 = 16.0;
        if (v25)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      sub_1000095E8(v15, &unk_101184290);
      (*(v4 + 8))(v12, v3);
    }

    sub_1000095E8(v9, &qword_101185768);
LABEL_14:
    v21 = 20.0;
  }

LABEL_15:
  sub_10023754C(v18, type metadata accessor for SuggestedSongsDataSource.Placement);
  return v21;
}

uint64_t sub_100222540()
{
  v1 = v0;
  v2 = type metadata accessor for Playlist();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for SuggestedSongsDataSource.Placement(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002372D4(v1, v11, type metadata accessor for SuggestedSongsDataSource.Placement);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    v12 = Playlist.id.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    dispatch thunk of MusicLibraryPlaylistViewModel.playlist.getter();
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_1000095E8(v8, &unk_1011814D0);

      return 0x6C79616C5077654ELL;
    }

    else
    {
      v12 = Playlist.id.getter();
      (*(v3 + 8))(v8, v2);
    }
  }

  return v12;
}