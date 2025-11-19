id sub_1005571E8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1005572E4(void *a1)
{
  v1 = [a1 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  return sub_100555BBC(v1 & 1);
}

void sub_100557358(void *a1)
{
  if ([a1 userInterfaceIdiom] == 6)
  {
    v2 = 72.0;
  }

  else
  {
    v2 = Int.seconds.getter(56);
  }

  v3 = Int.seconds.getter(100);
  v4 = [a1 preferredContentSizeCategory];
  v5 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v6 = [objc_opt_self() defaultMetrics];
  v7 = v6;
  if (v5)
  {
    v2 = v3;
  }

  [v6 scaledValueForValue:a1 compatibleWithTraitCollection:v2];
}

void sub_100557438()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitle;
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artwork) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_badgeArtworkCatalog) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isExplicit) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_isDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkCachingReference) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_cachedExplicitBadgeLabelWidth) = 0;
  v5 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerView;
  type metadata accessor for NowPlayingQueueCell.ArtworkContainerView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = UIView.forAutolayout.getter();

  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v8._object = 0x8000000100E4F5E0;
  v9 = AccessibilityIdentifier.init(name:)(v8);
  v10 = UIView.withAccessibilityIdentifier(_:)(v9, *(&v9 + 1));

  *(v1 + v5) = v10;
  v11 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackView;
  v12 = [objc_allocWithZone(UIStackView) init];
  v13 = UIView.forAutolayout.getter();

  *(v1 + v11) = v13;
  type metadata accessor for NowPlayingQueueCell.TextView();
  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initReadonlyAndUnselectableWithFrame:0 textContainer:{0.0, 0.0, 0.0, 0.0}];
  if (!v14)
  {
    __break(1u);
  }

  v15 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titleLabel;
  v16 = v14;
  v17 = UIView.forAutolayout.getter();

  v18._object = 0x8000000100E4F600;
  v18._countAndFlagsBits = 0xD00000000000001BLL;
  v19 = AccessibilityIdentifier.init(name:)(v18);
  v20 = UIView.withAccessibilityIdentifier(_:)(v19, *(&v19 + 1));

  *(v1 + v15) = v20;
  v21 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_subtitleLabel;
  v22 = [objc_allocWithZone(UILabel) init];
  v23 = UIView.forAutolayout.getter();

  v24._countAndFlagsBits = 0xD00000000000001ELL;
  v24._object = 0x8000000100E4F620;
  v25 = AccessibilityIdentifier.init(name:)(v24);
  v26 = UIView.withAccessibilityIdentifier(_:)(v25, *(&v25 + 1));

  *(v1 + v21) = v26;
  v27 = OBJC_IVAR____TtC5Music19NowPlayingQueueCell_explicitBadgeLabel;
  v28 = [objc_allocWithZone(UILabel) init];
  v29 = UIView.forAutolayout.getter();

  v30._countAndFlagsBits = 0xD000000000000023;
  v30._object = 0x8000000100E4F640;
  v31 = AccessibilityIdentifier.init(name:)(v30);
  v32 = UIView.withAccessibilityIdentifier(_:)(v31, *(&v31 + 1));

  *(v1 + v27) = v32;
  v33 = (v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleLabelBounds);
  *v33 = 0u;
  v33[1] = 0u;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_lastSeenTitleText) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_artworkContainerViewCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC5Music19NowPlayingQueueCell_titlesStackViewTrailingConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005577C4()
{
  v1 = v0;
  v2 = type metadata accessor for Artwork(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_cachingReference) = 0;
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artwork) = 0;
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkCatalog) = 0;
  v5 = OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_artworkView;
  Artwork.init()(v4);
  v6 = objc_allocWithZone(type metadata accessor for Artwork.View(0));
  *(v1 + v5) = Artwork.View.init(configuration:)(v4);
  *(v1 + OBJC_IVAR____TtCC5Music19NowPlayingQueueCellP33_30B386DF66C9CA3B1688A89B8614D8A420ArtworkContainerView_badgeArtworkView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005578D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180C90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557944(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005579F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557A54(uint64_t a1)
{
  v2 = type metadata accessor for Artwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100557AB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100557AF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100557B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Decoration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_100557C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Optional();
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = *(a1 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v28 = *(v15 - 8);
  v16 = __chkstk_darwin(v15);
  v18 = &v28 - v17;
  (*(v11 + 16))(v14, v33, a1, v16);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = v18;
  v33 = v15;
  v30 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v29 = *(v5 + 48);
  v20 = 0.0;
  if (v29(v10, 1, AssociatedTypeWitness) != 1)
  {
    v21 = *(v5 + 32);
    v22 = (v5 + 8);
    while (1)
    {
      v21(v7, v10, AssociatedTypeWitness);
      if (static Task<>.isCancelled.getter())
      {
        break;
      }

      v23 = (*(v31 + 8))(AssociatedTypeWitness);
      v25 = v24;
      (*v22)(v7, AssociatedTypeWitness);
      v26 = *&v23;
      if (v25)
      {
        v26 = 0.0;
      }

      v20 = v20 + v26;
      dispatch thunk of IteratorProtocol.next()();
      if (v29(v10, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_9;
      }
    }

    (*v22)(v7, AssociatedTypeWitness);
    v20 = 0.0;
  }

LABEL_9:
  (*(v28 + 8))(v32, v33);
  return v20;
}

uint64_t sub_100557FB0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a1;
  *(v6 + 16) = a5;
  *(v6 + 24) = a6;
  type metadata accessor for MainActor();
  *(v6 + 40) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055804C, v8, v7);
}

uint64_t sub_10055804C()
{
  v1 = v0[4];
  v2 = *(v0 + 2);

  v2(v3, v1);
  v4 = *(v0 + 1);

  return v4();
}

id sub_1005580EC()
{
  result = [objc_opt_self() mainBundle];
  qword_101218F90 = result;
  return result;
}

BOOL sub_100558128(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10010FC20(&unk_101188920);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  v12 = sub_10010FC20(&unk_101192950);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  if (!a1)
  {
    (*(*(a3 + 8) + 8))(a2);
    v22 = type metadata accessor for VideoArtwork();
    v19 = (*(*(v22 - 8) + 48))(v17, 1, v22) != 1;
    v20 = &unk_101192950;
    v21 = v17;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    (*(*(a3 + 16) + 8))(a2);
    v18 = type metadata accessor for Artwork();
    v19 = (*(*(v18 - 8) + 48))(v11, 1, v18) != 1;
    v20 = &unk_101188920;
    v21 = v11;
LABEL_7:
    sub_1000095E8(v21, v20);
    return v19;
  }

  (*(*(a3 + 8) + 8))(a2);
  v23 = type metadata accessor for VideoArtwork();
  v19 = 1;
  v24 = (*(*(v23 - 8) + 48))(v15, 1, v23);
  sub_1000095E8(v15, &unk_101192950);
  if (v24 == 1)
  {
    (*(*(a3 + 16) + 8))(a2);
    v25 = type metadata accessor for Artwork();
    v19 = (*(*(v25 - 8) + 48))(v9, 1, v25) != 1;
    v20 = &unk_101188920;
    v21 = v9;
    goto LABEL_7;
  }

  return v19;
}

void sub_100558458(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v11 = v3[5];
    v12 = v3[6];
    v13 = v3[7];
    *(v3 + 5) = xmmword_100EBCEE0;
    v3[7] = 0;
    sub_1004E5DFC(v11, v12, v13);

    sub_10055AFE8();
    return;
  }

  v14 = v8;
  v15 = sub_10055C90C(a1);
  v18 = v16;
  v19 = v3[6];
  if (v19 == 2)
  {
    if (v16 == 2)
    {
      return;
    }

    goto LABEL_17;
  }

  v20 = v3[7];
  if (v19 == 1)
  {
    if (v16 != 1)
    {
      v21 = v3[5];
      if (v16 == 2)
      {
        v22 = 1;
      }

      else
      {
        v22 = v3[6];
      }

      v3[5] = v15;
      v3[6] = v16;
      v3[7] = v17;
      v23 = v15;
      v33 = v17;
      sub_1004E5DB4(v15, v16, v17);
      sub_1004E5DFC(v21, v22, v20);
      sub_10055AFE8();
      v24 = v33;

      sub_1004E5DFC(v23, v18, v24);
    }

    return;
  }

  if ((v16 - 1) < 2)
  {
LABEL_17:
    v33 = v17;
    v25 = v15;
    static Logger.music(_:)();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v34 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_1000105AC(0xD00000000000003ELL, 0x8000000100E4F740, &v34);
      _os_log_impl(&_mh_execute_header, v26, v27, "Trying to call %s after layout has been determined, this shouldn't happen.", v28, 0xCu);
      sub_10000959C(v29);

      sub_1004E5DFC(v25, v18, v33);
    }

    else
    {
      sub_1004E5DFC(v25, v18, v33);
    }

    (*(v7 + 8))(v10, v14);
    return;
  }

  v3[5] = v15 & 1;
  v33 = v17;
  v30 = v20;
  v31 = v19;
  sub_10055AFE8();

  v32 = v33;
}

void sub_1005587C8()
{
  *(v0 + 32) = 0;
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = &v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v3 = *&v1[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    *v2 = 0;
    *(v2 + 1) = 0;
    v4 = v1;
    sub_100020438(v3);

    v5 = *(v0 + 24);
    if (v5)
    {
      v6 = &v5[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v7 = *&v5[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      *v6 = 0;
      *(v6 + 1) = 0;
      v8 = v5;
      sub_100020438(v7);
    }
  }

  v9 = *(v0 + 48);
  if ((v9 - 1) >= 2)
  {
    v10 = *(v0 + 56);
    if (v10)
    {
      v11 = v9;
      [v10 setAlpha:0.0];
      if (!v9)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v12 = v9;
      if (!v9)
      {
        goto LABEL_8;
      }
    }

    [v9 setAlpha:0.0];

    goto LABEL_8;
  }

LABEL_9:

  sub_10055A988();
}

void sub_1005588C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v146 = a1;
  v7 = *v3;
  v8 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v8 - 8);
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v129 - v12;
  v14 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v14 - 8);
  v16 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v129 - v18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v142 = v7;
  v143 = v10;
  v22 = sub_1006A6078();

  v23 = v4[6];
  if ((v23 - 1) < 2)
  {

    return;
  }

  v137 = v16;
  v140 = v13;
  v138 = a2;
  v139 = a3;
  v145 = v22;
  v24 = v4[5];
  v25 = v4[7];
  v154 = v24 & 1;
  v155 = v23;
  v156 = v25;
  *(v4 + 32) = 1;
  v26 = v4[3];
  v141 = v25;
  v144 = v24;
  if (v26)
  {
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = &v26[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    v29 = *&v26[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetBoundsBlock];
    *v28 = sub_10055CBB8;
    v28[1] = v27;
    sub_1004E5DB4(v24, v23, v25);
    v30 = v26;

    sub_100020438(v29);

    v31 = v4[3];
    if (v31)
    {
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = &v31[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      v34 = *&v31[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_didSetMetadataLocationBlock];
      *v33 = sub_10055CBC0;
      v33[1] = v32;
      v35 = v31;

      sub_100020438(v34);
    }
  }

  else
  {
    v36 = v25;
    v37 = v23;
  }

  v38 = swift_unknownObjectWeakLoadStrong();
  if (v38)
  {
    v39 = (v38 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
    v40 = v38;
    swift_beginAccess();
    v41 = *v39;
    v42 = v39[1];
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v153[0] = v41;
    v44 = (*(v42 + 304))(ObjectType, v42);
    swift_unknownObjectRelease();
    swift_getKeyPath();
    v148[0] = v44;
    sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v45 = *(v44 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

    v46 = swift_unknownObjectWeakLoadStrong();
    v47 = v144;
    if (v46)
    {
      v48 = v46;
      v49 = sub_1006A6078();

      [v49 adjustedContentInset];
      v51 = v50;
    }

    else
    {
      v51 = 0.0;
    }

    v52 = v145;
    if (*(v45 + 32) == v51)
    {
      *(v45 + 32) = v51;

      if (v23)
      {
        goto LABEL_16;
      }
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v129 - 2) = v45;
      *(&v129 - 1) = v51;
      v148[0] = v45;
      sub_10055CBF0(&qword_101192A00, _s7MetricsCMa);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      v52 = v145;

      if (v23)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    v133 = 0;
    sub_1000089F8(v146, v153, &unk_101192850);
    v56 = type metadata accessor for HIMetricsCollectionView();
    v152.receiver = v52;
    v152.super_class = v56;
    objc_msgSendSuper2(&v152, "frame");
    v57 = CGRectGetWidth(v157) * 4.0;
    v151.receiver = v52;
    v134 = v56;
    v151.super_class = v56;
    objc_msgSendSuper2(&v151, "frame");
    Width = CGRectGetWidth(v158);
    v59 = swift_allocObject();
    swift_weakInit();
    v60 = swift_allocObject();
    v61 = v142;
    v131 = v60;
    *(v60 + 16) = v59;
    *(v60 + 24) = v61;
    _s13ConfigurationCMa_0();
    v62 = swift_allocObject();
    v63 = OBJC_IVAR____TtCV5Music4Uber13Configuration__motionArtwork;
    v64 = type metadata accessor for VideoArtwork();
    v129 = *(v64 - 8);
    v65 = *(v129 + 56);
    v65(v62 + v63, 1, 1, v64);
    v66 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
    v67 = type metadata accessor for Artwork();
    v146 = *(v67 - 8);
    v68 = *(v146 + 56);
    v135 = v67;
    v142 = v146 + 56;
    v136 = v68;
    (v68)(v62 + v66, 1, 1);
    v69 = (v62 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkUsedChanged);
    *v69 = 0;
    v69[1] = 0;
    v132 = v59;

    ObservationRegistrar.init()();
    sub_1000089F8(v153, v148, &unk_101192850);
    v70 = v149;
    v130 = v64;
    if (v149)
    {
      v71 = v150;
      sub_10000954C(v148, v149);
      (*(*(v71 + 8) + 8))(v70);
      sub_10000959C(v148);
    }

    else
    {
      sub_1000095E8(v148, &unk_101192850);
      v65(v19, 1, 1, v64);
    }

    v72 = v143;
    v73 = v57 / 3.0;
    sub_1000095E8(v62 + v63, &unk_101192950);
    sub_10003D17C(v19, v62 + v63, &unk_101192950);
    sub_1000089F8(v153, v148, &unk_101192850);
    v74 = v149;
    if (v149)
    {
      v75 = v150;
      sub_10000954C(v148, v149);
      (*(*(v75 + 16) + 8))(v74);
      sub_10000959C(v148);
      v76 = v135;
      if ((*(v146 + 48))(v72, 1, v135) != 1)
      {
        v77 = v140;
        (*(v146 + 32))(v140, v72, v76);
        v136(v77, 0, 1, v76);
LABEL_33:
        v87 = OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork;
        sub_1000095E8(v62 + OBJC_IVAR____TtCV5Music4Uber13Configuration__staticArtwork, &unk_101188920);
        sub_10003D17C(v140, v62 + v87, &unk_101188920);
        *(v62 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v73;
        *(v62 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = Width;
        v88 = (v62 + OBJC_IVAR____TtCV5Music4Uber13Configuration__accessibilityArtworkLabel);
        v89 = v139;
        *v88 = v138;
        v88[1] = v89;
        v90 = swift_getKeyPath();
        __chkstk_darwin(v90);
        *(&v129 - 4) = v62;
        *(&v129 - 3) = sub_10055CBC8;
        *(&v129 - 2) = v131;
        v148[0] = v62;
        sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        sub_1000095E8(v153, &unk_101192850);

        sub_10010FC20(&qword_101194F30);
        v91 = _UIHostingView.init(content:)(sub_10055CC38);
        v4[2] = v62;

        v92 = sub_10055AF00();
        v94 = v93;
        v96 = v95;
        v52 = v145;
        v97 = v145;
        [v97 adjustedContentInset];
        v99 = v96 + v98 + -5.0;
        [v97 adjustedContentInset];
        v101 = -v100;
        v147.receiver = v97;
        v147.super_class = v134;
        objc_msgSendSuper2(&v147, "frame");
        v102 = CGRectGetWidth(v159);
        [v97 adjustedContentInset];
        v104 = v103;

        v105 = swift_unknownObjectWeakLoadStrong();
        if (v105)
        {
          v106 = v105;
          v107 = [v105 traitCollection];
        }

        else
        {
          v107 = [objc_opt_self() currentTraitCollection];
        }

        [v107 displayScale];
        v109 = v108;

        v110 = v104 + v102 * -4.0 / 3.0 * 0.166;
        if (v110 < 0.0)
        {
          v110 = 0.0;
        }

        v111 = 1.0 / v109 * round(v110 / (1.0 / v109));
        v160.origin.x = v92;
        v160.origin.y = v101;
        v160.size.width = v94;
        v160.size.height = v99;
        v112 = CGRectGetWidth(v160);
        v161.origin.x = v92;
        v161.origin.y = v101;
        v161.size.width = v94;
        v161.size.height = v99;
        [v91 setFrame:{0.0, v111, v112, CGRectGetHeight(v161) - v111}];
        v23 = [objc_allocWithZone(_UIBackgroundExtensionView) init];
        [v23 setFrame:{v92, v101, v94, v99}];
        [v23 setClipsToBounds:1];
        [v23 setDisableAutomaticLayout:1];
        [v23 setContentView:v91];
        v113 = v141;
        v155 = v23;
        v156 = v141;
        v114 = v141;
        v53 = v23;
        sub_10055BD98(0, v113);
        v115 = [objc_allocWithZone(UIView) initWithFrame:{v92, v101, v94, v99}];
        [v115 setUserInteractionEnabled:0];
        v116 = [objc_opt_self() systemBackgroundColor];
        [v115 setBackgroundColor:v116];

        [v115 setAlpha:0.0];
        v155 = v23;
        v156 = v115;
        sub_10055BD98(v23, v113);

        v54 = v115;
        v47 = v144;
        goto LABEL_39;
      }
    }

    else
    {
      sub_1000095E8(v148, &unk_101192850);
      v76 = v135;
      v136(v72, 1, 1, v135);
    }

    sub_1000089F8(v153, v148, &unk_101192850);
    v78 = v149;
    if (v149)
    {
      v79 = v150;
      sub_10000954C(v148, v149);
      v80 = v137;
      (*(*(v79 + 8) + 8))(v78);
      v81 = v129;
      v82 = v130;
      if ((*(v129 + 48))(v80, 1, v130) != 1)
      {
        v85 = v140;
        VideoArtwork.previewFrame.getter();
        (*(v81 + 8))(v80, v82);
        v86 = v85;
        v76 = v135;
        v136(v86, 0, 1, v135);
        sub_10000959C(v148);
LABEL_31:
        if ((*(v146 + 48))(v72, 1, v76) != 1)
        {
          sub_1000095E8(v72, &unk_101188920);
        }

        goto LABEL_33;
      }

      sub_10000959C(v148);
      v83 = &unk_101192950;
      v84 = v80;
    }

    else
    {
      v83 = &unk_101192850;
      v84 = v148;
    }

    sub_1000095E8(v84, v83);
    v136(v140, 1, 1, v76);
    goto LABEL_31;
  }

  v52 = v145;
  v47 = v144;
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_16:
  [v23 setAlpha:1.0];
  v53 = v23;
  v54 = v141;
LABEL_39:
  v117 = v47 & 1;
  v118 = v4[5];
  v119 = v4[6];
  v120 = v4[7];
  v4[5] = v117;
  v4[6] = v23;
  v4[7] = v54;
  v121 = v54;
  v122 = v53;
  v123 = v121;
  v124 = v122;
  sub_1004E5DFC(v118, v119, v120);
  sub_10055AFE8();

  [v52 _addContentSubview:v124 atBack:1];
  v125 = v4[3];
  if (v125)
  {
    v126 = *&v125[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v125[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = v54;
    v127 = v123;
    v128 = v125;
    sub_1003FAD80(v126);
  }

  sub_10055A988();
}

void sub_1005599F8(char *a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = a1;
    v4 = v1[3];
    if (!v4 || (_s10HeaderCellCMa(), v5 = v4, v3 = v3, v6 = static NSObject.== infix(_:_:)(), v3, v5, (v6 & 1) == 0))
    {
      v7 = *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
      *&v3[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
      sub_1003FAD80(v7);
    }
  }

  v8 = v2[6];
  v9 = v2[3];
  if ((v8 - 1) >= 2)
  {
    if (!v9)
    {
      return;
    }

    v11 = v2[5];
    v12 = v2[7];
    v10 = *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = v12;
    v15 = v8;
    v13 = v12;
    sub_1004E5DB4(v11, v15, v12);
    v14 = v9;
    sub_1003FAD80(v10);
  }

  else
  {
    if (!v9)
    {
      return;
    }

    v15 = *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay];
    *&v9[OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_overlay] = 0;
    v10 = v9;
    sub_1003FAD80(v15);
  }
}

uint64_t sub_100559B6C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100559BC8();
    sub_10055A988();
  }

  return result;
}

void sub_100559BC8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v89 = sub_1006A6078();

  v99.origin.x = sub_10055AF00();
  if (!CGRectIsEmpty(v99))
  {
    v4 = v1[6];
    if ((v4 - 1) > 1)
    {
      v5 = v1[5];
      v6 = v1[7];
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = (v7 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource);
        v9 = v7;
        swift_beginAccess();
        v11 = *v8;
        v10 = v8[1];
        sub_1004E5DB4(v5, v4, v6);
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v97 = v11;
        v13 = (*(v10 + 304))(ObjectType, v10);
        swift_unknownObjectRelease();
        swift_getKeyPath();
        v96 = v13;
        sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v14 = *(v13 + OBJC_IVAR____TtCV5Music6Header13Configuration__metrics);

        [v89 adjustedContentInset];
        v16 = v15;
        if (*(v14 + 32) == v15)
        {
          *(v14 + 32) = v15;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          v85 = v14;
          v86 = v16;
          v96 = v14;
          sub_10055CBF0(&qword_101192A00, _s7MetricsCMa);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }
      }

      else
      {
        v17 = v6;
        v18 = v4;
      }

      v20 = v89;
      [v20 contentOffset];
      v22 = v21;
      [v20 adjustedContentInset];
      if (v22 + v23 > 0.0)
      {
        if (v4)
        {
          [v4 frame];
          v25 = v24;
        }

        else
        {
          v25 = 0.0;
        }

        [v20 adjustedContentInset];
        if (v4 && v25 == -v33)
        {
          goto LABEL_22;
        }

        v34 = v1[2];
        if (v34)
        {
          v35 = type metadata accessor for HIMetricsCollectionView();
          v95.receiver = v20;
          v95.super_class = v35;

          objc_msgSendSuper2(&v95, "frame");
          v36 = CGRectGetWidth(v101) * 4.0 / 3.0;
          if (*(v34 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) == v36)
          {
            *(v34 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v36;
          }

          else
          {
            v66 = swift_getKeyPath();
            v89 = &v87;
            __chkstk_darwin(v66);
            v85 = v34;
            v86 = v36;
            v97 = v34;
            sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          v67 = v1[2];
          if (v67)
          {
            v94.receiver = v20;
            v94.super_class = v35;

            objc_msgSendSuper2(&v94, "frame");
            Width = CGRectGetWidth(v107);
            if (*(v67 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) == Width)
            {
              *(v67 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = Width;
            }

            else
            {
              v69 = swift_getKeyPath();
              v89 = v84;
              __chkstk_darwin(v69);
              *&v84[-16] = v67;
              *&v84[-8] = Width;
              v97 = v67;
              sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }
          }
        }

        [v20 adjustedContentInset];
        v108.origin.x = sub_10055AF00();
        CGRectGetHeight(v108);
        [v20 adjustedContentInset];
        if (v4)
        {
          v70 = v4;
          [v70 frame];
          [v70 setFrame:?];

          v71 = v70;
          [v71 frame];
          [v71 setFrame:?];

          if (!v6)
          {
LABEL_53:
            objc_opt_self();
            v73 = swift_dynamicCastObjCClass();
            if (v73)
            {
              v74 = v73;
              v75 = type metadata accessor for HIMetricsCollectionView();
              v93.receiver = v20;
              v93.super_class = v75;
              v76 = v4;
              objc_msgSendSuper2(&v93, "frame");
              CGRectGetWidth(v109);
              [v20 adjustedContentInset];

              v77 = swift_unknownObjectWeakLoadStrong();
              if (v77)
              {
                v78 = v77;
                v79 = [v77 traitCollection];
              }

              else
              {
                v79 = [objc_opt_self() currentTraitCollection];
              }

              [v79 displayScale];

              v80 = [v74 contentView];
              if (v80)
              {
                v81 = v80;
                [v80 frame];
                [v81 setFrame:?];
              }

              v82 = [v74 contentView];
              if (v82)
              {
                v83 = v82;
                [v82 frame];
                [v83 setFrame:?];
              }

              goto LABEL_64;
            }

LABEL_22:

LABEL_64:
            return;
          }

          goto LABEL_52;
        }

        if (v6)
        {
LABEL_52:
          v72 = v6;
          [v72 frame];
          [v72 setFrame:?];

          v49 = v72;
          [v49 frame];
          [v49 setFrame:?];

          if (v4)
          {
            goto LABEL_53;
          }

          goto LABEL_56;
        }

LABEL_57:

        return;
      }

      v26 = v1[2];
      if (v26)
      {
        v27 = type metadata accessor for HIMetricsCollectionView();
        v92.receiver = v20;
        v92.super_class = v27;

        objc_msgSendSuper2(&v92, "frame");
        v28 = CGRectGetWidth(v100) * 4.0 / 3.0;
        [v20 contentOffset];
        v30 = v29;
        [v20 adjustedContentInset];
        v32 = v28 - (v30 + v31);
        if (*(v26 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) == v32)
        {
          *(v26 + OBJC_IVAR____TtCV5Music4Uber13Configuration__frameHeight) = v32;
        }

        else
        {
          v37 = swift_getKeyPath();
          v89 = &v87;
          __chkstk_darwin(v37);
          v88 = 0;
          v85 = v26;
          v86 = v32;
          v97 = v26;
          sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v38 = v1[2];
        if (v38)
        {
          v91.receiver = v20;
          v91.super_class = v27;

          objc_msgSendSuper2(&v91, "frame");
          v39 = CGRectGetWidth(v102);
          if (*(v38 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) == v39)
          {
            *(v38 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth) = v39;
          }

          else
          {
            v40 = swift_getKeyPath();
            v89 = v6;
            v88 = v84;
            __chkstk_darwin(v40);
            *&v84[-16] = v38;
            *&v84[-8] = v39;
            v97 = v38;
            sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

            v6 = v89;
          }
        }
      }

      v103.origin.x = sub_10055AF00();
      Height = CGRectGetHeight(v103);
      [v20 contentOffset];
      v43 = Height - v42 + -5.0;
      v44 = sub_10055AF00();
      [v20 contentOffset];
      v46 = v45;
      v104.origin.x = sub_10055AF00();
      v47 = CGRectGetWidth(v104);
      [v4 setFrame:{v44, v46, v47, v43}];
      if (v6)
      {
        v48 = v1[3];
        v49 = v6;
        [v20 convertRect:v48 toView:{v44, v46, v47, v43}];
        [v49 setFrame:?];

        if (!v4)
        {
LABEL_56:

          goto LABEL_57;
        }
      }

      else if (!v4)
      {
        goto LABEL_57;
      }

      objc_opt_self();
      v50 = swift_dynamicCastObjCClass();
      if (v50)
      {
        v51 = v50;
        v52 = type metadata accessor for HIMetricsCollectionView();
        v90.receiver = v20;
        v90.super_class = v52;
        v53 = v4;
        objc_msgSendSuper2(&v90, "frame");
        v54 = CGRectGetWidth(v105);
        [v20 adjustedContentInset];
        v56 = v55;

        v57 = swift_unknownObjectWeakLoadStrong();
        if (v57)
        {
          v58 = v57;
          v59 = [v57 traitCollection];
        }

        else
        {
          v59 = [objc_opt_self() currentTraitCollection];
        }

        [v59 displayScale];
        v61 = v60;

        v62 = v56 + v54 * -4.0 / 3.0 * 0.166;
        if (v62 < 0.0)
        {
          v62 = 0.0;
        }

        v63 = 1.0 / v61 * round(v62 / (1.0 / v61));
        v106.origin.x = sub_10055AF00();
        v64 = CGRectGetWidth(v106);
        v65 = [v51 contentView];
        [v65 setFrame:{0.0, v63, v64, v43 - v63}];
      }

      else
      {
      }

      goto LABEL_64;
    }
  }
}

void sub_10055A988()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v16 = sub_1006A6078();

  v4 = *(v1 + 48);
  if ((v4 - 1) >= 2 && *(v1 + 32) == 1)
  {
    v5 = *(v1 + 56);
    v6 = *(v1 + 73);
    v7 = v5;
    v8 = v4;
    v9 = sub_10055BBA8(v1, v6);
    v11 = v10;
    [v16 _pocketInsets];
    if (v11 != v12)
    {
      [v16 _setPocketInsets:{v11, 0.0, 0.0, 0.0}];
    }

    v13 = sub_10055B354();
    if (v4)
    {
      [v8 setAlpha:1.0];
    }

    if (v6 < 2)
    {
      if (v5)
      {
        v14 = v7;
        [v14 setAlpha:0.0];
        goto LABEL_18;
      }
    }

    else if (v5)
    {
      v14 = v7;
      [v14 setAlpha:v13 * 0.8];
LABEL_18:

      v15 = v8;
      goto LABEL_12;
    }

    v15 = v8;
    goto LABEL_12;
  }

  [v16 _setPocketInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v15 = v16;
LABEL_12:
}

uint64_t sub_10055AB54()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10055A988();
  }

  return result;
}

uint64_t sub_10055ABAC(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = &v25 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = Artwork.hasTitle.getter();
    v8 = *(v6 + 72);
    *(v6 + 72) = v7 & 1;
    sub_10055B6E8(v8);
    v9 = *(v6 + 48);
    if ((v9 - 1) >= 2)
    {
      v10 = *(v6 + 40);
      v11 = *(v6 + 56);
      v12 = type metadata accessor for Artwork();
      v13 = *(v12 - 8);
      (*(v13 + 16))(v4, a1, v12);
      (*(v13 + 56))(v4, 0, 1, v12);
      v14 = v11;
      v15 = v9;
      v16 = sub_10055C610(v4);
      sub_1000095E8(v4, &unk_101188920);
      if (v11)
      {
        if (*(v6 + 73) == 3 && (v17 = Artwork.backgroundColor.getter()) != 0)
        {
          v18 = v17;
          v19 = [objc_allocWithZone(UIColor) initWithCGColor:v17];
        }

        else
        {
          v19 = [objc_opt_self() systemBackgroundColor];
        }

        [v14 setBackgroundColor:v19];
      }

      v20 = *(v6 + 40);
      v21 = *(v6 + 48);
      v22 = *(v6 + 56);
      *(v6 + 40) = v16 & 1;
      *(v6 + 48) = v9;
      *(v6 + 56) = v11;
      sub_1004E5DB4(v10, v9, v11);
      v23 = v15;
      v24 = v14;
      sub_1004E5DFC(v20, v21, v22);
      sub_10055AFE8();
      sub_1004E5DFC(v10, v9, v11);
    }
  }

  return result;
}

uint64_t sub_10055AE50@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for Uber() + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_10010FC20(&qword_101194F38);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MotionViewStateObserver();

  return LazyState.init(wrappedValue:)();
}

double sub_10055AF00()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v3 = v1;
    if (Strong)
    {
      v6 = sub_1006A6078();

      v10.receiver = v6;
      v10.super_class = type metadata accessor for HIMetricsCollectionView();
      objc_msgSendSuper2(&v10, "frame");
      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    LODWORD(v4) = 1148846080;
    LODWORD(v5) = 1112014848;
    [v3 systemLayoutSizeFittingSize:v8 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v4, v5}];
  }

  return 0.0;
}

void sub_10055AFE8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    v4 = Strong;
    swift_beginAccess();
    v5 = *(v3 + 8);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 304))(ObjectType, v5);
    swift_unknownObjectRelease();
    if ((*(v1 + 48) - 1) >= 2)
    {
      v8 = (*(v1 + 40) & 1) == 0;
      v9 = *(v7 + 16);
      if (v9 == 2 || ((*(v1 + 40) ^ v9) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v8 = 2;
      if (*(v7 + 16) != 2)
      {
LABEL_8:
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

        goto LABEL_9;
      }
    }

    *(v7 + 16) = v8;
  }

LABEL_9:
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11 + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
    v13 = v11;
    swift_beginAccess();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();

    v15 = swift_getObjectType();
    v16 = (*(v14 + 304))(v15, v14);
    swift_unknownObjectRelease();
    if ((*(v1 + 48) - 1) > 1)
    {
      v17 = *(v1 + 72);
      v18 = (v16 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
      if (v17 == *(v16 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer))
      {
        goto LABEL_12;
      }
    }

    else
    {
      LOBYTE(v17) = 0;
      v18 = (v16 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
      if ((*(v16 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0)
      {
LABEL_12:
        *v18 = v17;

        goto LABEL_15;
      }
    }

    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

LABEL_15:
  sub_10055A988();
}

double sub_10055B354()
{
  v1 = *(v0 + 48);
  v2 = 0.0;
  if (v1 >= 2)
  {
    if (v1 == 2)
    {
      v32.origin.x = sub_10055AF00();
      if (CGRectGetHeight(v32) <= 0.0)
      {
        return v2;
      }
    }

    else
    {
      v3 = *(v0 + 56);
      v4 = v1;
      [v4 frame];
      Height = CGRectGetHeight(v33);

      if (Height <= 0.0)
      {
        return v2;
      }
    }

    if (*(v0 + 73) == 2)
    {
      v6 = *(v0 + 48);
      v7 = 0.0;
      v8 = 0.0;
      if (v6 >= 2)
      {
        if (v6 == 2)
        {
          v34.origin.x = sub_10055AF00();
          v8 = CGRectGetHeight(v34);
        }

        else
        {
          v16 = *(v0 + 56);
          v17 = v6;
          [v17 frame];
          v8 = CGRectGetHeight(v36);
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = sub_1006A6078();

        [v20 adjustedContentInset];
        v22 = v21;

        v7 = v22 * 0.5;
      }

      v11 = v7 + v8 * -0.3;
    }

    else
    {
      v9 = *(v0 + 24);
      if (v9 && (v10 = v9 + OBJC_IVAR____TtCV5Music15ContainerDetail10HeaderCell_metadataLocation, (*(v10 + 16) & 1) == 0))
      {
        v12 = *(v10 + 8);
        v13 = *(v0 + 48);
        v14 = 0.0;
        v15 = 0.0;
        if (v13 >= 2)
        {
          if (v13 == 2)
          {
            v35.origin.x = sub_10055AF00();
            v15 = CGRectGetHeight(v35);
          }

          else
          {
            v23 = *(v0 + 56);
            v24 = v13;
            [v24 frame];
            v15 = CGRectGetHeight(v37);
          }
        }

        v25 = swift_unknownObjectWeakLoadStrong();
        if (v25)
        {
          v26 = v25;
          v27 = sub_1006A6078();

          [v27 adjustedContentInset];
          v14 = v28;
        }

        v11 = v14 - (v15 - v12);
      }

      else
      {
        v11 = -250.0;
      }
    }

    sub_10055B5D8();
    if (v11 < 0.0 && v11 <= v29)
    {
      v2 = 1.0;
      if (v29 < 0.0)
      {
        v30 = (0.0 - v11 + v29) / (0.0 - v11);
        if (v30 < 0.0)
        {
          v30 = 0.0;
        }

        if (v30 <= 1.0)
        {
          return v30;
        }
      }
    }
  }

  return v2;
}

void sub_10055B5D8()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1006A6078();

    v5 = *(v1 + 48);
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        UIScrollView.normalizedContentOffset.getter();
      }

      else
      {
        UIScrollView.normalizedContentOffset.getter();
        if (*(v1 + 73) >= 2u)
        {
          [v4 adjustedContentInset];
        }
      }

      v6 = *(v1 + 48);
      if (v6 >= 2)
      {
        if (v6 == 2)
        {
          v9.origin.x = sub_10055AF00();
          CGRectGetHeight(v9);
        }

        else
        {
          v7 = *(v1 + 56);
          v8 = v6;
          [v8 frame];
          CGRectGetHeight(v10);
        }
      }
    }
  }
}

uint64_t sub_10055B6E8(uint64_t result)
{
  if (*(v1 + 72) != (result & 1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result + OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource;
      v3 = result;
      swift_beginAccess();
      v4 = *(v2 + 8);
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v6 = (*(v4 + 304))(ObjectType, v4);
      swift_unknownObjectRelease();
      if ((*(v1 + 48) - 1) > 1)
      {
        v7 = *(v1 + 72);
        v8 = (v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
        if (v7 == *(v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer))
        {
          goto LABEL_5;
        }
      }

      else
      {
        LOBYTE(v7) = 0;
        v8 = (v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer);
        if ((*(v6 + OBJC_IVAR____TtCV5Music6Header13Configuration__hideTitleContainer) & 1) == 0)
        {
LABEL_5:
          *v8 = v7;
        }
      }

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_10055CBF0(&unk_1011A4750, _s13ConfigurationCMa);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10055B8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  (*(*(a2 + 8) + 8))(a1);
  v12 = type metadata accessor for VideoArtwork();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
    sub_1000095E8(v8, &unk_101192950);
    v14 = type metadata accessor for Artwork();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v11, 1, 1, v14);
    (*(*(a2 + 16) + 8))(a1);
    result = (*(v15 + 48))(v11, 1, v14);
    if (result != 1)
    {
      return sub_1000095E8(v11, &unk_101188920);
    }
  }

  else
  {
    VideoArtwork.previewFrame.getter();
    (*(v13 + 8))(v8, v12);
    v17 = type metadata accessor for Artwork();
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v19(v11, 0, 1, v17);
    (*(v18 + 32))(a3, v11, v17);
    return (v19)(a3, 0, 1, v17);
  }

  return result;
}

double sub_10055BBA8(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = *(a1 + 24);
      if (v2)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v4 = v2;
        if (Strong)
        {
          v7 = sub_1006A6078();

          v18.receiver = v7;
          v18.super_class = type metadata accessor for HIMetricsCollectionView();
          objc_msgSendSuper2(&v18, "frame");
          v9 = v8;
        }

        else
        {
          v9 = 0.0;
        }

        LODWORD(v5) = 1148846080;
        LODWORD(v6) = 1112014848;
        [v4 systemLayoutSizeFittingSize:v9 withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v5, v6}];
        v13 = v15;
        v14 = v16;
      }

      else
      {
        v13 = 0.0;
        v14 = 0.0;
      }

      v20.origin.x = 0.0;
      v20.origin.y = 0.0;
      v20.size.width = v13;
      v20.size.height = v14;
      CGRectGetHeight(v20);
    }

    else
    {
      v19.origin.x = sub_10055AF00();
      CGRectGetHeight(v19);
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = sub_1006A6078();

        [v12 adjustedContentInset];
      }
    }
  }

  return 0.0;
}

unint64_t sub_10055BD5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10055CBA8(*a1);
  *a2 = result;
  return result;
}

void sub_10055BD98(id a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 8);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!v6 || (sub_1003FB264(), v7 = v6, v8 = a1, v9 = static NSObject.== infix(_:_:)(), v8, v7, (v9 & 1) == 0))
  {
LABEL_6:
    [a1 removeFromSuperview];
  }

LABEL_7:
  v10 = *(v3 + 16);
  if (a2)
  {
    if (v10)
    {
      sub_1003FB264();
      v11 = v10;
      v12 = a2;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        return;
      }
    }
  }

  else if (!v10)
  {
    return;
  }

  [a2 removeFromSuperview];
}

uint64_t sub_10055BEA4()
{

  sub_1004E5DFC(*(v0 + 40), *(v0 + 48), *(v0 + 56));
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10055BF30@<X0>(void (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EditorialVideoArtworkFlavor();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(0, v6);
  v9 = EditorialVideoArtworkVending.editorialVideoArtworks.getter();
  if (v9)
  {
    v10 = v9;
    static EditorialVideoArtworkFlavor.motionDetailTall.getter();
    if (*(v10 + 16) && (v11 = sub_1006BE63C(v8), (v12 & 1) != 0))
    {
      v13 = v11;
      v14 = *(v10 + 56);
      v15 = type metadata accessor for VideoArtwork();
      v16 = *(v15 - 8);
      (*(v16 + 16))(a2, v14 + *(v16 + 72) * v13, v15);
      (*(v5 + 8))(v8, v4);

      return (*(v16 + 56))(a2, 0, 1, v15);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
      v18 = type metadata accessor for VideoArtwork();
      return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }
  }

  else
  {
    v19 = type metadata accessor for VideoArtwork();
    v20 = *(*(v19 - 8) + 56);

    return v20(a2, 1, 1, v19);
  }
}

uint64_t sub_10055C22C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10055C250(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10055C2B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_10055C30C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_10055C350()
{
  result = qword_101194F10;
  if (!qword_101194F10)
  {
    sub_1001109D0(&qword_101194F18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F10);
  }

  return result;
}

unint64_t sub_10055C3B8()
{
  result = qword_101194F20;
  if (!qword_101194F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F20);
  }

  return result;
}

double sub_10055C40C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10055CBF0(&qword_101194F28, _s13ConfigurationCMa_0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtCV5Music4Uber13Configuration__artworkWidth);
  *a2 = result;
  return result;
}

uint64_t sub_10055C508(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_10055C5D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for MotionViewStateObserver();
  swift_allocObject();
  result = MotionViewStateObserver.init()();
  *a1 = result;
  return result;
}

uint64_t sub_10055C610(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_10010FC20(&qword_101194F40);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  sub_1000089F8(a1, v7, &unk_101188920);
  v11 = type metadata accessor for Artwork();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    v14 = &unk_101188920;
    v15 = v7;
LABEL_5:
    sub_1000095E8(v15, v14);
    goto LABEL_6;
  }

  Artwork.textGradient.getter();
  (*(v12 + 8))(v7, v11);
  v16 = type metadata accessor for Artwork.TextGradient();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    v14 = &qword_101194F40;
    v15 = v10;
    goto LABEL_5;
  }

  v21 = Artwork.TextGradient.leadingColor.getter();
  (*(v17 + 8))(v10, v16);
  if (v21)
  {
    v20 = CGColorRef.isLightMusicColor.getter();

    return v20 & 1;
  }

LABEL_6:
  sub_1000089F8(a1, v5, &unk_101188920);
  if (v13(v5, 1, v11) == 1)
  {
    sub_1000095E8(v5, &unk_101188920);
LABEL_10:
    v20 = 1;
    return v20 & 1;
  }

  v18 = Artwork.backgroundColor.getter();
  (*(v12 + 8))(v5, v11);
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = CGColorRef.isLightMusicColor.getter();

  v20 = v19 ^ 1;
  return v20 & 1;
}

uint64_t sub_10055C90C(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for MusicPropertySource();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (!v10)
  {
    (*(v6 + 104))(v8, enum case for MusicPropertySource.catalog(_:), v5);
    v11 = static MusicPropertySource.== infix(_:_:)();
    (*(v6 + 8))(v8, v5);
    if (v11)
    {
      sub_1000089F8(a1, &v17, &unk_101192850);
      if (v18)
      {
        sub_100059A8C(&v17, v19);
        v12 = v20;
        v13 = v21;
        sub_10000954C(v19, v20);
        if (sub_100558128(2, v12, v13))
        {
          v14 = v20;
          v15 = v21;
          sub_10000954C(v19, v20);
          sub_10055B8CC(v14, v15, v4);
          LOBYTE(v14) = sub_10055C610(v4);
          sub_1000095E8(v4, &unk_101188920);
          sub_10000959C(v19);
          return v14 & 1;
        }

        sub_10000959C(v19);
      }

      else
      {
        sub_1000095E8(&v17, &unk_101192850);
      }
    }
  }

  return 0;
}

unint64_t sub_10055CBA8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_10055CBF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10055CCF4()
{
  result = qword_101194F48;
  if (!qword_101194F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101194F48);
  }

  return result;
}

uint64_t sub_10055CDA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10055CE1C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10055CE90()
{
  sub_1000095E8(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist, &unk_1011814D0);
  v1 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__suggestedSongsViewModel;
  v2 = sub_10010FC20(&qword_101195100);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__isPresentingMusicPicker;
  v4 = sub_10010FC20(&unk_101189E60);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler));

  return swift_deallocClassInstance();
}

uint64_t _s14SheetPresenterV10DataSourceCMa()
{
  result = qword_101194F88;
  if (!qword_101194F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10055D00C()
{
  sub_100039144();
  if (v0 <= 0x3F)
  {
    sub_10055D118();
    if (v1 <= 0x3F)
    {
      sub_100008E30();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10055D118()
{
  if (!qword_101194F98)
  {
    sub_1001109D0(&unk_101194FA0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101194F98);
    }
  }
}

uint64_t sub_10055D1A8()
{
  v1 = sub_10010FC20(&unk_101189E60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15[-v3];
  v5 = sub_10010FC20(&qword_101195100);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
  v10 = type metadata accessor for Playlist();
  (*(*(v10 - 8) + 56))(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__suggestedSongsViewModel;
  v16 = 0;
  sub_10010FC20(&unk_101194FA0);
  Published.init(initialValue:)();
  (*(v6 + 32))(v0 + v11, v8, v5);
  v12 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource__isPresentingMusicPicker;
  v15[7] = 0;
  Published.init(initialValue:)();
  (*(v2 + 32))(v0 + v12, v4, v1);
  v13 = (v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler);
  *v13 = 0;
  v13[1] = 0;
  return v0;
}

uint64_t sub_10055D3C8@<X0>(uint64_t *a1@<X8>)
{
  _s14SheetPresenterV10DataSourceCMa();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10055D408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a5;
  v9 = sub_10010FC20(&qword_10119EEF0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v26 - v10);
  v40 = sub_10010FC20(&qword_1011950D0);
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v36 = &v26 - v12;
  v49 = static Color.clear.getter();
  sub_100561980();
  v13 = Color.init<A>(_:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v13;
  v49 = v13;
  v50 = v55;
  LOBYTE(v51) = v56;
  v52 = v57;
  v53 = v58;
  v54 = v59;
  v14 = _s14SheetPresenterV10DataSourceCMa();
  sub_100561B14(&unk_10119E450, _s14SheetPresenterV10DataSourceCMa);

  v38 = v14;
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  v35 = v47;
  v33 = v48;
  v45 = a3;
  v46 = a4;
  sub_10010FC20(&qword_1011950E0);
  State.projectedValue.getter();
  v34 = v42;
  v32 = v43;
  v31 = v44;
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = a2;
  static Published.subscript.getter();

  if (v42)
  {
    *v11 = v42;
    v16 = enum case for MusicPicker.Reason.editingPlaylist(_:);
    v17 = type metadata accessor for MusicPicker.Reason();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v11, v16, v17);
    v19 = v11;
    (*(v18 + 56))(v11, 0, 1, v17);
  }

  else
  {
    v20 = type metadata accessor for MusicPicker.Reason();
    v19 = v11;
    (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  }

  v21 = swift_allocObject();
  v21[2] = a1;
  v21[3] = v15;
  v30 = v15;
  v21[4] = a3;
  v21[5] = a4;

  v27 = sub_10010FC20(&qword_1011950E8);
  v28 = type metadata accessor for Track();
  v29 = sub_100561A90();
  v25 = sub_100561B14(&qword_1011950F8, &type metadata accessor for Track);
  v22 = v36;
  View.musicPicker<A>(isPresented:selection:reason:onCompletion:)();

  sub_1000095E8(v19, &qword_10119EEF0);

  v42 = v30;
  v49 = v27;
  v50 = v28;
  v51 = v29;
  v52 = v25;
  swift_getOpaqueTypeConformance2();
  sub_100561B14(&qword_1011950C8, _s14SheetPresenterV10DataSourceCMa);
  v23 = v40;
  View.musicPickerUserExperienceObserver<A>(_:)();

  return (*(v39 + 8))(v22, v23);
}

uint64_t sub_10055DA58@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_10055DAD8()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10055DB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a1;
  v5[6] = a3;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_10055DBE8, v7, v6);
}

uint64_t sub_10055DBE8()
{
  if (*(v0[5] + 16))
  {
    v1 = v0[6] + OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_musicPickerCompletionHandler;
    v2 = *v1;
    v0[12] = *v1;
    if (v2)
    {
      v0[13] = *(v1 + 8);

      v8 = (v2 + *v2);
      v3 = swift_task_alloc();
      v0[14] = v3;
      *v3 = v0;
      v3[1] = sub_10055DD94;
      v4 = v0[5];

      return v8(v4);
    }

    v6 = v0[8];
    v0[2] = v0[7];
    v0[3] = v6;
    v0[4] = _swiftEmptyArrayStorage;
    sub_10010FC20(&qword_1011950E0);
    State.wrappedValue.setter();
  }

  else
  {
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_10055DD94()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  sub_100020438(v2);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return _swift_task_switch(sub_10055DEF0, v4, v3);
}

uint64_t sub_10055DEF0()
{

  v1 = v0[8];
  v0[2] = v0[7];
  v0[3] = v1;
  v0[4] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011950E0);
  State.wrappedValue.setter();
  v2 = v0[1];

  return v2();
}

uint64_t sub_10055DF9C()
{
  v71 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPicker.Click.SourceContext();
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v77 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Artist();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v70 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Playlist();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v65 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Album();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenericMusicItem();
  v81 = *(v10 - 8);
  v82 = v10;
  __chkstk_darwin(v10);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v80 = &v64 - v14;
  v15 = type metadata accessor for MusicPicker.Click.LibraryMenuItemID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = type metadata accessor for MusicPicker.PageID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v64 - v28;
  (*(v23 + 16))(&v64 - v28, v0, v22, v27);
  v30 = (*(v23 + 88))(v29, v22);
  if (v30 != enum case for MusicPicker.PageID.libraryMenuPage(_:))
  {
    if (v30 == enum case for MusicPicker.PageID.detailPage(_:))
    {
      (*(v23 + 96))(v29, v22);
      v35 = swift_projectBox();
      v37 = v80;
      v36 = v81;
      v38 = *(v81 + 16);
      v39 = v82;
      v38(v80, v35, v82);
      v38(v12, v37, v39);
      v40 = (*(v36 + 88))(v12, v39);
      if (v40 == enum case for GenericMusicItem.album(_:))
      {
        (*(v36 + 96))(v12, v39);
        v42 = v74;
        v41 = v75;
        v43 = v76;
        (*(v75 + 32))(v74, v12, v76);
        v44 = Album.catalogID.getter();
        if (!v45)
        {
          v44 = Album.id.getter();
        }

        v46 = 0x5F6D75626C41;
        v47 = 0xE600000000000000;
      }

      else if (v40 == enum case for GenericMusicItem.artist(_:))
      {
        (*(v36 + 96))(v12, v39);
        v41 = v72;
        v43 = v73;
        v42 = v70;
        (*(v72 + 32))(v70, v12, v73);
        v44 = Artist.catalogID.getter();
        if (!v45)
        {
          v44 = Artist.id.getter();
        }

        v46 = 0x5F747369747241;
        v47 = 0xE700000000000000;
      }

      else
      {
        if (v40 != enum case for GenericMusicItem.playlist(_:))
        {
          v62 = *(v36 + 8);
          v62(v37, v39);
          v62(v12, v39);

          return 0;
        }

        (*(v36 + 96))(v12, v39);
        v42 = v65;
        v41 = v66;
        v43 = v67;
        (*(v66 + 32))(v65, v12, v67);
        v44 = Playlist.catalogID.getter();
        if (!v45)
        {
          v44 = Playlist.id.getter();
        }

        v46 = 0x7473696C79616C50;
        v47 = 0xE90000000000005FLL;
      }

      v83 = v46;
      v84 = v47;
      String.append(_:)(*&v44);

      v34 = v83;
      (*(v41 + 8))(v42, v43);
      (*(v36 + 8))(v37, v39);
    }

    else
    {
      if (v30 != enum case for MusicPicker.PageID.additionalContentPage(_:))
      {
        if (v30 == enum case for MusicPicker.PageID.searchGroup(_:))
        {
          (*(v23 + 96))(v29, v22);
          v58 = v68;
          v57 = v69;
          v59 = v71;
          (*(v69 + 32))(v68, v29, v71);
          v60._countAndFlagsBits = sub_10055ED68();
          v83 = 0x5F686372616553;
          v84 = 0xE700000000000000;
          String.append(_:)(v60);

          v34 = v83;
          (*(v57 + 8))(v58, v59);
          return v34;
        }

        if (v30 == enum case for MusicPicker.PageID.landing(_:))
        {
          return 0x4C5F72656B636950;
        }

        if (v30 == enum case for MusicPicker.PageID.search(_:))
        {
          return 0xD000000000000014;
        }

        (*(v23 + 8))(v29, v22);
        return 0;
      }

      (*(v23 + 96))(v29, v22);
      v48 = swift_projectBox();
      v50 = v77;
      v49 = v78;
      v51 = v79;
      (*(v78 + 16))(v77, v48, v79);
      v52 = MusicPicker.Click.SourceContext.pageID.getter();
      v53 = sub_10055DF9C(v52);
      v55 = v54;
      (*(v23 + 8))(v25, v22);
      v83 = 0x6C6C41656553;
      v84 = 0xE600000000000000;
      v56._countAndFlagsBits = v53;
      v56._object = v55;
      String.append(_:)(v56);

      v34 = v83;
      (*(v49 + 8))(v50, v51);
    }

    return v34;
  }

  (*(v23 + 96))(v29, v22);
  v31 = swift_projectBox();
  v32 = *(v16 + 16);
  v32(v21, v31, v15);
  v32(v18, v21, v15);
  v33 = (*(v16 + 88))(v18, v15);
  if (v33 != enum case for MusicPicker.Click.LibraryMenuItemID.artists(_:))
  {
    if (v33 == enum case for MusicPicker.Click.LibraryMenuItemID.albums(_:))
    {
      (*(v16 + 8))(v21, v15);

      return 0xD000000000000018;
    }

    if (v33 == enum case for MusicPicker.Click.LibraryMenuItemID.songs(_:))
    {
      (*(v16 + 8))(v21, v15);

      return 0xD000000000000017;
    }

    if (v33 == enum case for MusicPicker.Click.LibraryMenuItemID.playlists(_:))
    {
      (*(v16 + 8))(v21, v15);

      return 0xD00000000000001BLL;
    }

    if (v33 == enum case for MusicPicker.Click.LibraryMenuItemID.recentlyAdded(_:))
    {
      (*(v16 + 8))(v21, v15);

      return 0xD00000000000001FLL;
    }

    v63 = *(v16 + 8);
    v63(v21, v15);
    v63(v18, v15);

    return 0;
  }

  (*(v16 + 8))(v21, v15);

  return 0xD000000000000019;
}

uint64_t sub_10055EB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055EC0C, v6, v5);
}

uint64_t sub_10055EC0C()
{

  v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = sub_10053771C();
  v4 = v3;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 40);
  v6 = qword_101218AD0;
  v7 = GroupActivitiesManager.hasJoined.getter();
  v8 = GroupActivitiesManager.participantsCount.getter();
  v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v1) + 0xA0))(v5, v2, v4, v7 & 1, v8, *(v6 + v9));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10055ED68()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPicker.Click.SearchGroupID.topResults(_:))
  {
    return 0x6C75736552706F74;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.albums(_:))
  {
    return 0x736D75626C61;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.artists(_:))
  {
    return 0x73747369747261;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.curators(_:))
  {
    return 0x73726F7461727563;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.songs(_:))
  {
    return 0x73676E6F73;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.musicVideos(_:))
  {
    return 0x646956636973756DLL;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.playlists(_:))
  {
    return 0x7473696C79616C70;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.radioShows(_:))
  {
    return 0x6F68536F69646172;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.recordLabels(_:))
  {
    return 0x614C64726F636572;
  }

  if (v7 == enum case for MusicPicker.Click.SearchGroupID.stations(_:))
  {
    return 0x736E6F6974617473;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_10055F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100561B5C, v6, v5);
}

uint64_t sub_10055F0D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v91 = a4;
  v97 = a2;
  v108 = a1;
  v5 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v5 - 8);
  v107 = &v88 - v6;
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v101 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v102 = &v88 - v10;
  v11 = type metadata accessor for MetricsEvent.Click(0);
  v103 = *(v11 - 8);
  __chkstk_darwin(v11 - 8);
  v104 = v12;
  v105 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v88 - v14;
  v15 = sub_10010FC20(&unk_1011814D0);
  __chkstk_darwin(v15 - 8);
  v90 = &v88 - v16;
  v17 = type metadata accessor for Playlist();
  v93 = *(v17 - 8);
  v94 = v17;
  __chkstk_darwin(v17);
  v89 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MusicPicker.Click.ActionKind();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v96 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v98 = &v88 - v23;
  v24 = type metadata accessor for MusicPicker.Click.ControlKind();
  *&v95 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MusicPicker.PageID();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPicker.Click.SourceContext.pageID.getter();
  v31 = sub_10055DF9C();
  v99 = v32;
  v100 = v31;
  (*(v28 + 8))(v30, v27);
  v109 = GenericMusicItem.catalogID.getter();
  if (!v33)
  {
    v109 = GenericMusicItem.id.getter();
  }

  v34 = v33;
  MusicPicker.Click.SourceContext.controlKind.getter();
  v35 = v95;
  v36 = (*(v95 + 88))(v26, v24);
  if (v36 == enum case for MusicPicker.Click.ControlKind.button(_:))
  {
    LODWORD(v108) = 5;
    v37 = v98;
    goto LABEL_12;
  }

  v37 = v98;
  if (v36 != enum case for MusicPicker.Click.ControlKind.listItem(_:))
  {
    if (v36 == enum case for MusicPicker.Click.ControlKind.gridItem(_:))
    {
      v38 = 26;
      goto LABEL_11;
    }

    if (v36 == enum case for MusicPicker.Click.ControlKind.shelfItem(_:))
    {
      v38 = 25;
      goto LABEL_11;
    }

    (*(v35 + 8))(v26, v24);
  }

  v38 = 19;
LABEL_11:
  LODWORD(v108) = v38;
LABEL_12:
  (*(v20 + 16))(v37, v97, v19);
  v39 = (*(v20 + 88))(v37, v19);
  if (v39 == enum case for MusicPicker.Click.ActionKind.add(_:))
  {
    v40 = 3;
  }

  else if (v39 == enum case for MusicPicker.Click.ActionKind.remove(_:))
  {
    v40 = 16;
  }

  else if (v39 == enum case for MusicPicker.Click.ActionKind.play(_:))
  {
    v40 = 61;
  }

  else if (v39 == enum case for MusicPicker.Click.ActionKind.pause(_:))
  {
    v40 = 62;
  }

  else
  {
    if (v39 != enum case for MusicPicker.Click.ActionKind.navigate(_:))
    {
      (*(v20 + 8))(v37, v19);
    }

    v40 = 28;
  }

  LODWORD(v98) = v40;
  v41 = v96;
  (*(v20 + 104))(v96);
  v42 = static MusicPicker.Click.ActionKind.== infix(_:_:)();
  (*(v20 + 8))(v41, v19);
  if ((v42 & 1) == 0)
  {
    goto LABEL_27;
  }

  v43 = v90;
  (*(v92 + 16))(v91);
  v44 = v93;
  v45 = v94;
  if ((*(v93 + 48))(v43, 1, v94) == 1)
  {
    sub_1000095E8(v43, &unk_1011814D0);
LABEL_27:
    v97 = 0;
    v46 = 65280;
    goto LABEL_34;
  }

  v47 = v89;
  (*(v44 + 32))(v89, v43, v45);
  sub_10010FC20(&qword_101190BE0);
  inited = swift_initStackObject();
  *(inited + 32) = 1684957547;
  *(inited + 16) = xmmword_100EBEF50;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 1735290739;
  *(inited + 56) = 0xE400000000000000;
  *(inited + 64) = 0x6F54646461;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = 0x7473696C79616C70;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = 0x4E6E6F6974636573;
  *(inited + 104) = 0xEB00000000656D61;
  v49 = v44;
  v50 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  v53 = 0xE000000000000000;
  if (v51)
  {
    v53 = v51;
  }

  *(inited + 112) = v52;
  *(inited + 120) = v53;
  *(inited + 128) = 0x49746E65746E6F63;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = Playlist.id.getter();
  *(inited + 152) = v54;
  v55 = sub_10010C578(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_101183AA0);
  swift_arrayDestroy();
  (*(v49 + 8))(v47, v45);
  v97 = v55;

  v46 = 768;
LABEL_34:
  LODWORD(v96) = v46;
  v56 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v57)
  {
    v58 = v57;
    v94 = v56;
    sub_10010FC20(&unk_1011927C0);
    v59 = swift_allocObject();
    v95 = xmmword_100EBDC20;
    *(v59 + 16) = xmmword_100EBDC20;
    sub_10010FC20(&unk_1011972C0);
    v60 = swift_initStackObject();
    *(v60 + 16) = v95;
    *(v60 + 32) = 25705;
    v61 = v109;
    *(v60 + 40) = 0xE200000000000000;
    *(v60 + 48) = v61;
    *(v60 + 56) = v34;
    *(v60 + 72) = &type metadata for String;
    strcpy((v60 + 80), "locationType");
    *(v60 + 93) = 0;
    *(v60 + 94) = -5120;
    v62 = MetricsEvent.TargetType.rawValue.getter(v108);
    *(v60 + 120) = &type metadata for String;
    *(v60 + 96) = v62;
    *(v60 + 104) = v63;

    v64 = sub_10010BC60(v60);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    *(v59 + 32) = v64;
    v65 = swift_initStackObject();
    *(v65 + 16) = v95;
    strcpy((v65 + 32), "locationType");
    *(v65 + 45) = 0;
    *(v65 + 46) = -5120;
    *(v65 + 48) = 0x666C656853;
    *(v65 + 56) = 0xE500000000000000;
    *(v65 + 72) = &type metadata for String;
    *(v65 + 80) = 1701667182;
    *(v65 + 120) = &type metadata for String;
    v66 = v94;
    *(v65 + 88) = 0xE400000000000000;
    *(v65 + 96) = v66;
    *(v65 + 104) = v58;
    v67 = sub_10010BC60(v65);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v59 + 40) = v67;
  }

  else
  {
    sub_10010FC20(&unk_1011927C0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_100EBC6B0;
    sub_10010FC20(&unk_1011972C0);
    v68 = swift_initStackObject();
    *(v68 + 16) = xmmword_100EBDC20;
    *(v68 + 32) = 25705;
    v69 = v109;
    *(v68 + 40) = 0xE200000000000000;
    *(v68 + 48) = v69;
    *(v68 + 56) = v34;
    *(v68 + 72) = &type metadata for String;
    strcpy((v68 + 80), "locationType");
    *(v68 + 93) = 0;
    *(v68 + 94) = -5120;
    v70 = MetricsEvent.TargetType.rawValue.getter(v108);
    *(v68 + 120) = &type metadata for String;
    *(v68 + 96) = v70;
    *(v68 + 104) = v71;

    v72 = sub_10010BC60(v68);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    *(v59 + 32) = v72;
  }

  v73 = type metadata accessor for URL();
  v74 = *(*(v73 - 8) + 56);
  v75 = v102;
  v74(v102, 1, 1, v73);
  v76 = v101;
  v74(v101, 1, 1, v73);
  v87 = v76;
  v77 = v96;
  v78 = v97;
  v79 = v106;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v109, v34, v108, v98, v75, v59, 0, 12, v106, v97, 0, v96, v100, v99, 0x72656B636950, 0xE600000000000000, v87, 0, 0, 2, 0, 0, 0);
  v80 = type metadata accessor for TaskPriority();
  v81 = v107;
  (*(*(v80 - 8) + 56))(v107, 1, 1, v80);
  v82 = v105;
  sub_100561760(v79, v105, type metadata accessor for MetricsEvent.Click);
  type metadata accessor for MainActor();
  v83 = static MainActor.shared.getter();
  v84 = (*(v103 + 80) + 32) & ~*(v103 + 80);
  v85 = swift_allocObject();
  *(v85 + 16) = v83;
  *(v85 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v82, v85 + v84, type metadata accessor for MetricsEvent.Click);
  sub_1001F4CB8(0, 0, v81, &unk_100ED3088, v85);

  sub_1005602B0(v78, 0, 0, v77);
  return sub_100561920(v79, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_10055FD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10055FE30, v6, v5);
}

uint64_t sub_10055FE30()
{

  v1 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v2 = sub_10053771C();
  v4 = v3;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 40);
  v6 = qword_101218AD0;
  v7 = GroupActivitiesManager.hasJoined.getter();
  v8 = GroupActivitiesManager.participantsCount.getter();
  v9 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v1) + 0xB8))(v5, v2, v4, v7 & 1, v8, *(v6 + v9));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10055FF8C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCVV5Music15ContainerDetail14SheetPresenter10DataSource_playlist;
  swift_beginAccess();
  return sub_100452FB8(v3 + v4, a1);
}

uint64_t sub_10055FFF0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10055F0D4(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10056006C(uint64_t a1)
{
  result = sub_100561B14(&qword_1011950C8, _s14SheetPresenterV10DataSourceCMa);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1005600C4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100560144()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1005601C0(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10055FD98(a1, v6, v7, v1 + v5);
}

void *sub_1005602B0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (BYTE1(a4) != 255)
  {
    return sub_100344B1C(result, a2, a3, a4, SBYTE1(a4));
  }

  return result;
}

uint64_t sub_1005602C4()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v22 - v1;
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for MetricsEvent.Page(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v22 - v11);
  v13 = sub_10055DF9C();
  v15 = v14;
  v16 = type metadata accessor for URL();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v13, v15, 0x72656B636950, 0xE600000000000000, v5, 0, 0, 0, v12, 0, 0, 0, 2);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v2, 1, 1, v17);
  sub_100561760(v12, v9, type metadata accessor for MetricsEvent.Page);
  type metadata accessor for MainActor();
  v18 = static MainActor.shared.getter();
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v9, v20 + v19, type metadata accessor for MetricsEvent.Page);
  sub_1001F4CB8(0, 0, v2, &unk_100ED30A8, v20);

  return sub_100561920(v12, type metadata accessor for MetricsEvent.Page);
}

uint64_t sub_1005605AC(uint64_t a1)
{
  v103 = a1;
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v112 = &v89 - v2;
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v106 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v89 - v6;
  v7 = type metadata accessor for MetricsEvent.Click(0);
  v108 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v109 = v8;
  v110 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v111 = &v89 - v10;
  v11 = type metadata accessor for MusicPicker.Click.SearchGroupID();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v89 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MusicCatalogSearchSuggestionsResponse.Suggestion();
  v94 = *(v13 - 8);
  v95 = v13;
  __chkstk_darwin(v13);
  v93 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MusicPicker.Click.LibraryMenuItemID();
  v99 = *(v15 - 8);
  v100 = v15;
  __chkstk_darwin(v15);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v98 = &v89 - v18;
  v19 = type metadata accessor for MusicPicker.Click.ControlID();
  *&v101 = *(v19 - 8);
  __chkstk_darwin(v19);
  v102 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v89 - v22;
  __chkstk_darwin(v23);
  v96 = &v89 - v24;
  v25 = type metadata accessor for MusicPicker.Click.ControlKind();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MusicPicker.PageID();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v89 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPicker.Click.SourceContext.pageID.getter();
  v33 = sub_10055DF9C();
  v104 = v34;
  v105 = v33;
  v35 = v26;
  (*(v30 + 8))(v32, v29);
  MusicPicker.Click.SourceContext.controlKind.getter();
  v36 = (*(v26 + 88))(v28, v25);
  if (v36 == enum case for MusicPicker.Click.ControlKind.button(_:))
  {
    v37 = v101;
    v38 = v96;
    v39 = v103;
    (*(v101 + 16))(v96, v103, v19);
    if ((*(v37 + 88))(v38, v19) == enum case for MusicPicker.Click.ControlID.searchGroup(_:))
    {
      LODWORD(v40) = 9;
    }

    else
    {
      LODWORD(v40) = 5;
    }

    v41 = v37;
LABEL_11:
    (*(v41 + 8))(v38, v19);
    v43 = v102;
    goto LABEL_18;
  }

  v42 = v101;
  v39 = v103;
  if (v36 == enum case for MusicPicker.Click.ControlKind.listItem(_:))
  {
    v37 = v101;
    v38 = v92;
    (*(v101 + 16))(v92, v103, v19);
    if ((*(v42 + 88))(v38, v19) == enum case for MusicPicker.Click.ControlID.searchSuggestion(_:))
    {
      LODWORD(v40) = 11;
    }

    else
    {
      LODWORD(v40) = 15;
    }

    v41 = v42;
    goto LABEL_11;
  }

  v43 = v102;
  if (v36 == enum case for MusicPicker.Click.ControlKind.gridItem(_:))
  {
    LODWORD(v40) = 26;
  }

  else if (v36 == enum case for MusicPicker.Click.ControlKind.shelfItem(_:))
  {
    LODWORD(v40) = 25;
  }

  else
  {
    (*(v35 + 8))(v28, v25);
    LODWORD(v40) = 15;
  }

  v37 = v42;
LABEL_18:
  (*(v37 + 16))(v43, v39, v19);
  v44 = (*(v37 + 88))(v43, v19);
  if (v44 == enum case for MusicPicker.Click.ControlID.libraryMenuItem(_:))
  {
    (*(v37 + 96))(v43, v19);
    v46 = v98;
    v45 = v99;
    v47 = v100;
    (*(v99 + 32))(v98, v43, v100);
    v48 = v97;
    (*(v45 + 16))(v97, v46, v47);
    v49 = (*(v45 + 88))(v48, v47);
    if (v49 == enum case for MusicPicker.Click.LibraryMenuItemID.artists(_:))
    {
      v50 = 0xE700000000000000;
      v51 = 0x73747369747241;
    }

    else if (v49 == enum case for MusicPicker.Click.LibraryMenuItemID.albums(_:))
    {
      v50 = 0xE600000000000000;
      v51 = 0x736D75626C41;
    }

    else if (v49 == enum case for MusicPicker.Click.LibraryMenuItemID.songs(_:))
    {
      v50 = 0xE500000000000000;
      v51 = 0x73676E6F53;
    }

    else if (v49 == enum case for MusicPicker.Click.LibraryMenuItemID.playlists(_:))
    {
      v50 = 0xE900000000000073;
      v51 = 0x7473696C79616C50;
    }

    else if (v49 == enum case for MusicPicker.Click.LibraryMenuItemID.recentlyAdded(_:))
    {
      v50 = 0xED00006465646441;
      v51 = 0x796C746E65636552;
    }

    else
    {
      (*(v45 + 8))(v48, v47);
      v51 = 0;
      v50 = 0xE000000000000000;
    }

    (*(v45 + 8))(v46, v47);
  }

  else
  {
    if (v44 == enum case for MusicPicker.Click.ControlID.searchSuggestion(_:))
    {
      (*(v37 + 96))(v43, v19);
      v52 = v93;
      v53 = v94;
      v54 = v95;
      (*(v94 + 32))(v93, v43, v95);
      v51 = MusicCatalogSearchSuggestionsResponse.Suggestion.displayTerm.getter();
      v50 = v55;
      (*(v53 + 8))(v52, v54);
      v56 = 26;
      goto LABEL_39;
    }

    if (v44 == enum case for MusicPicker.Click.ControlID.searchGroup(_:))
    {
      (*(v37 + 96))(v43, v19);
      v57 = v89;
      v58 = v90;
      v59 = v91;
      (*(v90 + 32))(v89, v43, v91);
      v51 = sub_10055ED68();
      v50 = v60;
      (*(v58 + 8))(v57, v59);
    }

    else if (v44 == enum case for MusicPicker.Click.ControlID.additionalContent(_:))
    {
      v50 = 0xE600000000000000;
      v51 = 0x6C6C41656573;
    }

    else
    {
      (*(v37 + 8))(v43, v19);
      v51 = 0;
      v50 = 0xE000000000000000;
    }
  }

  v56 = 28;
LABEL_39:
  LODWORD(v103) = v56;
  v61 = MusicPicker.Click.SourceContext.sectionTitle.getter();
  if (v62)
  {
    v63 = v62;
    v100 = v61;
    sub_10010FC20(&unk_1011927C0);
    v64 = swift_allocObject();
    v101 = xmmword_100EBDC20;
    *(v64 + 16) = xmmword_100EBDC20;
    sub_10010FC20(&unk_1011972C0);
    inited = swift_initStackObject();
    LODWORD(v102) = v40;
    v40 = inited;
    *(inited + 16) = v101;
    *(inited + 32) = 25705;
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v51;
    *(inited + 56) = v50;
    *(inited + 72) = &type metadata for String;
    strcpy((inited + 80), "locationType");
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    v66 = MetricsEvent.TargetType.rawValue.getter(v102);
    v40[15] = &type metadata for String;
    v40[12] = v66;
    v40[13] = v67;

    v68 = sub_10010BC60(v40);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    *(v64 + 32) = v68;
    v69 = swift_initStackObject();
    *(v69 + 16) = v101;
    strcpy((v69 + 32), "locationType");
    *(v69 + 45) = 0;
    *(v69 + 46) = -5120;
    *(v69 + 48) = 0x666C656853;
    *(v69 + 56) = 0xE500000000000000;
    *(v69 + 72) = &type metadata for String;
    *(v69 + 80) = 1701667182;
    *(v69 + 120) = &type metadata for String;
    v70 = v100;
    *(v69 + 88) = 0xE400000000000000;
    *(v69 + 96) = v70;
    *(v69 + 104) = v63;
    v71 = sub_10010BC60(v69);
    swift_setDeallocating();
    LOBYTE(v40) = v102;
    swift_arrayDestroy();
    *(v64 + 40) = v71;
  }

  else
  {
    sub_10010FC20(&unk_1011927C0);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_100EBC6B0;
    sub_10010FC20(&unk_1011972C0);
    v72 = swift_initStackObject();
    *(v72 + 16) = xmmword_100EBDC20;
    *(v72 + 32) = 25705;
    *(v72 + 40) = 0xE200000000000000;
    *(v72 + 48) = v51;
    *(v72 + 56) = v50;
    *(v72 + 72) = &type metadata for String;
    strcpy((v72 + 80), "locationType");
    *(v72 + 93) = 0;
    *(v72 + 94) = -5120;
    v73 = MetricsEvent.TargetType.rawValue.getter(v40);
    *(v72 + 120) = &type metadata for String;
    *(v72 + 96) = v73;
    *(v72 + 104) = v74;

    v75 = sub_10010BC60(v72);
    swift_setDeallocating();
    sub_10010FC20(&unk_1011927D0);
    swift_arrayDestroy();
    *(v64 + 32) = v75;
  }

  v76 = type metadata accessor for URL();
  v77 = *(*(v76 - 8) + 56);
  v78 = v107;
  v77(v107, 1, 1, v76);
  v79 = v106;
  v77(v106, 1, 1, v76);
  v88 = v79;
  v80 = v111;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:pageIdentifier:pageType:pageURL:pageDetails:pageDisplayType:attenuationAvailable:snapshotImpressions:searchTerm:)(v51, v50, v40, v103, v78, v64, 0, 12, v111, 0, 0, 65280, v105, v104, 0x72656B636950, 0xE600000000000000, v88, 0, 0, 2, 0, 0, 0);
  v81 = type metadata accessor for TaskPriority();
  v82 = v112;
  (*(*(v81 - 8) + 56))(v112, 1, 1, v81);
  v83 = v110;
  sub_100561760(v80, v110, type metadata accessor for MetricsEvent.Click);
  type metadata accessor for MainActor();
  v84 = static MainActor.shared.getter();
  v85 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = v84;
  *(v86 + 24) = &protocol witness table for MainActor;
  sub_1005617C8(v83, v86 + v85, type metadata accessor for MetricsEvent.Click);
  sub_1001F4CB8(0, 0, v82, &unk_100ED3098, v86);

  return sub_100561920(v80, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_100561448()
{
  v1 = type metadata accessor for MetricsEvent.Click(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  v4 = v1[7];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v0 + v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  if (*(v3 + v1[9] + 8) >= 0xDuLL)
  {
  }

  v8 = v3 + v1[10];
  v9 = *(v8 + 24);
  if (v9 >> 8 <= 0xFE)
  {
    sub_100344B1C(*v8, *(v8 + 8), *(v8 + 16), v9, SBYTE1(v9));
  }

  v10 = v1[14];
  if (!v7(v3 + v10, 1, v5))
  {
    (*(v6 + 8))(v3 + v10, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_100561670(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricsEvent.Click(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10055F03C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100561760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005617C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100561830(uint64_t a1)
{
  v4 = *(type metadata accessor for MetricsEvent.Page(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10055EB74(a1, v6, v7, v1 + v5);
}

uint64_t sub_100561920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100561980()
{
  result = qword_1011950D8;
  if (!qword_1011950D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011950D8);
  }

  return result;
}

uint64_t sub_1005619D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10055DB4C(a1, v4, v5, v7, v6);
}

unint64_t sub_100561A90()
{
  result = qword_1011950F0;
  if (!qword_1011950F0)
  {
    sub_1001109D0(&qword_1011950E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011950F0);
  }

  return result;
}

uint64_t sub_100561B14(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_100561B60(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_contentView] = a1;
  v4 = type metadata accessor for MusicBackgroundExtensionEffectsView();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC5MusicP33_863730B999DE7C5F62E72266A355981A35MusicBackgroundExtensionEffectsView_referenceView] = a1;
  v6 = a1;
  [v6 frame];
  v10.receiver = v5;
  v10.super_class = v4;
  *&v1[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_effectsView] = objc_msgSendSuper2(&v10, "initWithFrame:");
  [v6 frame];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, "initWithFrame:");
  [v7 addSubview:v6];
  [v7 addSubview:*&v7[OBJC_IVAR____TtC5Music28MusicBackgroundExtensionView_effectsView]];

  return v7;
}

void sub_100561E34(void *a1)
{
  v2 = v1;
  v44.receiver = v1;
  v44.super_class = type metadata accessor for MusicBackgroundExtensionEffectsView();
  objc_msgSendSuper2(&v44, "layoutSublayersOfLayer:", a1);
  sub_1003C4CA4();
  v4 = [v1 layer];
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    v6 = objc_opt_self();
    [v6 begin];
    v38 = v6;
    [v6 setDisableActions:1];
    v40 = *&v2[OBJC_IVAR____TtC5MusicP33_863730B999DE7C5F62E72266A355981A35MusicBackgroundExtensionEffectsView_referenceView];
    v7 = [v40 layer];
    [v7 setShouldRasterize:1];
    v8 = [v2 traitCollection];
    [v8 displayScale];
    v10 = v9;

    [v7 setRasterizationScale:v10];
    v39 = a1;
    v11 = 8;
    v12 = &unk_10109B928;
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = [objc_allocWithZone(CAPortalLayer) init];
      v42.a = 8.18364421e-308;
      v42.b = -1.39234638e188;
      *&v41.a = 4028456;
      v41.b = -7.54792485e168;
      v43 = v14;
      v16 = v15;
      v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 1031348268;
      v18._object = 0xE400000000000000;
      String.append(_:)(v18);
      v43 = v13;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = *&v41.a;
      v21._object = *&v41.b;
      String.append(_:)(v21);

      v22 = String._bridgeToObjectiveC()();

      [v16 setName:v22];

      [v39 insertSublayer:v16 atIndex:0];
      [v16 setSourceLayer:v7];
      [v40 frame];
      x = v45.origin.x;
      y = v45.origin.y;
      width = v45.size.width;
      height = v45.size.height;
      MinX = CGRectGetMinX(v45);
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = height;
      v28 = CGRectGetWidth(v46);
      v29 = Int.seconds.getter(v14);
      v30 = MinX + v28 * v29 - v29;
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      MinY = CGRectGetMinY(v47);
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v32 = CGRectGetHeight(v48);
      v33 = Int.seconds.getter(v13);
      v34 = MinY + v32 * v33 - v33;
      v49.origin.x = x;
      v49.origin.y = y;
      v49.size.width = width;
      v49.size.height = height;
      v35 = CGRectGetWidth(v49);
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      [v16 setFrame:{v30, v34, v35, CGRectGetHeight(v50)}];

      v36 = -1.0;
      if (v14)
      {
        v37 = -1.0;
      }

      else
      {
        v37 = 1.0;
      }

      v42.b = 0.0;
      v42.c = 0.0;
      if (!v13)
      {
        v36 = 1.0;
      }

      v42.a = 1.0;
      v42.d = 1.0;
      v42.tx = 0.0;
      v42.ty = 0.0;
      CGAffineTransformScale(&v41, &v42, v37, v36);
      v42 = v41;
      [v16 setAffineTransform:&v42];

      v12 += 2;
      --v11;
    }

    while (v11);

    [v38 commit];
  }
}

id sub_100562314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicBackgroundExtensionEffectsView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100562380()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
  Playlist.name.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setName:v10];

  Playlist.curatorName.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v9 setCurator:v12];

  BagProvider.shared.unsafeMutableAddressor();

  v13 = BagProvider.bag.getter();

  if (v13)
  {
    v14 = [v13 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v14)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }
  }

  [v9 setStoreFrontIdentifier:v13];

  Playlist.catalogID.getter();
  if (v15)
  {
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [v9 setStoreIdentifier:v16];

  v17 = type metadata accessor for Playlist();
  (*(*(v17 - 8) + 16))(v8, v1, v17);
  (*(v6 + 104))(v8, enum case for GenericMusicItem.playlist(_:), v5);
  GenericMusicItem.artworkViewModel.getter(v4);
  v18 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v18 - 8) + 48))(v4, 1, v18) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v4, &unk_10118A5E0);
    v19 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v5, v26);
    v19 = sub_1005663C0();
    v29 = v26[0];
    sub_1000095E8(&v29, &unk_1011951E0);
    v28 = v26[1];
    sub_1000095E8(&v28, &unk_1011951E0);
    v27 = v26[2];
    sub_1000095E8(&v27, &qword_101184460);

    (*(v6 + 8))(v8, v5);
    sub_10026E7C0(v4);
  }

  [v9 setArtwork:v19];

  v20 = objc_allocWithZone(LPLinkMetadata);
  v21 = v9;
  v22 = [v20 init];
  [v22 setSpecialization:v21];

  Playlist.name.getter();
  v23 = String._bridgeToObjectiveC()();

  [v22 setTitle:v23];

  return v22;
}

id sub_100562828()
{
  v0 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v20[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v3);
  v5 = &v20[-v4 - 8];
  sub_10056610C(&v20[-v4 - 8]);
  v6 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  SocialProfileDescriptor.name.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setName:v8];

  sub_1000089F8(v5, v2, &unk_10118A5E0);
  v9 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v9 - 8) + 48))(v2, 1, v9) == 1)
  {
    sub_1000095E8(v2, &unk_10118A5E0);
    v10 = 0;
  }

  else
  {
    v11 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v12 = *(v11 + 1);
    v21 = *v11;
    v22 = v12;
    v23 = *(v11 + 2);
    v24 = v21;
    v13 = *(&v12 + 1);
    v25 = v12;
    sub_1000089F8(&v24, v20, &unk_1011951E0);
    sub_1000089F8(&v24 + 8, v20, &unk_1011951E0);
    sub_1000089F8(&v25, v20, &qword_101184460);
    v14 = v13;
    v10 = sub_1005663C0();
    sub_1000095E8(&v24, &unk_1011951E0);
    sub_1000095E8(&v24 + 8, &unk_1011951E0);
    sub_1000095E8(&v25, &qword_101184460);

    sub_10026E7C0(v2);
  }

  [v6 setArtwork:v10];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v6;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  sub_1000095E8(v5, &unk_10118A5E0);
  return v17;
}

id sub_100562B08()
{
  v0 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v0 - 8);
  v2 = &v174 - v1;
  v3 = type metadata accessor for ArtworkImage.ViewModel(0);
  __chkstk_darwin(v3 - 8);
  v188 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Playlist.Variant();
  v185 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101195210);
  __chkstk_darwin(v8 - 8);
  v10 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v191 = &v174 - v12;
  v13 = type metadata accessor for Artwork.CropStyle();
  v189 = *(v13 - 8);
  v190 = v13;
  __chkstk_darwin(v13);
  v15 = &v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v192 = &v174 - v17;
  v18 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v18 - 8);
  v20 = &v174 - v19;
  v21 = type metadata accessor for Artwork();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v187 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v174 - v25;
  v27 = ShareURLDescriptor.name.getter();
  if (!v28)
  {
    return 0;
  }

  v186 = v28;
  v184 = v27;
  ShareURLDescriptor.artwork.getter();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    sub_1000095E8(v20, &unk_101188920);
    return 0;
  }

  v182 = v2;
  (*(v22 + 32))(v26, v20, v21);
  v183 = v21;
  v30 = v192;
  static Artwork.CropStyle.boundedBox.getter();
  v31 = v191;
  ShareURLDescriptor.contentKind.getter();
  v32 = type metadata accessor for ContentKind();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    goto LABEL_6;
  }

  v181 = v26;
  v180 = v22;
  sub_1000089F8(v31, v10, &unk_101195210);
  v43 = (*(v33 + 88))(v10, v32);
  if (v43 == enum case for ContentKind.appleCurator(_:))
  {
    (*(v33 + 8))(v10, v32);
    v44 = v183;
    v45 = v181;
LABEL_9:
    sub_1000095E8(v31, &unk_101195210);
    v179 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
    v46 = Artwork.Placeholder.person.unsafeMutableAddressor();
    v48 = *v46;
    v47 = v46[1];
    v50 = v46[2];
    v49 = v46[3];
    v176 = *(v46 + 2);
    v51 = v50;
    v52 = v49;
    v53 = v48;
    v54 = v47;
    v185 = v51;
    v55 = v52;
    v178 = v53;
    v56 = v54;
    v57 = v176;
    v177 = v56;
    v58 = &off_1010B2910;
LABEL_36:
    v80 = v192;
    goto LABEL_37;
  }

  v44 = v183;
  v45 = v181;
  if (v43 == enum case for ContentKind.album(_:))
  {
    v179 = [objc_allocWithZone(LPiTunesMediaAlbumMetadata) init];
    v59 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v60 = *v59;
    v47 = v59[1];
    v50 = v59[2];
    v61 = v59[3];
    v176 = *(v59 + 2);
    v62 = v50;
    v63 = v61;
    v64 = v60;
    v65 = v47;
    v185 = v62;
    v55 = v63;
    v178 = v64;
    v177 = v65;
    v66 = v31;
    v48 = v60;
    sub_1000095E8(v66, &unk_101195210);
    v57 = v176;
    v58 = &off_1010B28D0;
    goto LABEL_36;
  }

  if (v43 == enum case for ContentKind.artist(_:))
  {
LABEL_13:
    sub_1000095E8(v31, &unk_101195210);
    v179 = [objc_allocWithZone(LPiTunesMediaArtistMetadata) init];
    v67 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
    v48 = *v67;
    v47 = v67[1];
    v50 = v67[2];
    v68 = v67[3];
    v176 = *(v67 + 2);
    v69 = v50;
    v70 = v68;
    v71 = v48;
    v72 = v47;
    v185 = v69;
    v55 = v70;
    v178 = v71;
    v73 = v72;
    v57 = v176;
    v177 = v73;
    v58 = &off_1010B28F0;
    goto LABEL_36;
  }

  if (v43 == enum case for ContentKind.artistUploadedVideo(_:) || v43 == enum case for ContentKind.artistUploadedSong(_:))
  {
    goto LABEL_35;
  }

  if (v43 == enum case for ContentKind.creditArtist(_:))
  {
    goto LABEL_13;
  }

  if (v43 == enum case for ContentKind.curator(_:))
  {
    goto LABEL_9;
  }

  v26 = v181;
  v30 = v192;
  v22 = v180;
  if (v43 != enum case for ContentKind.editorialElement(_:) && v43 != enum case for ContentKind.editorialItem(_:))
  {
    if (v43 == enum case for ContentKind.movie(_:))
    {
      v179 = [objc_allocWithZone(LPiTunesMediaMovieMetadata) init];
      v74 = Artwork.Placeholder.tv.unsafeMutableAddressor();
      v48 = *v74;
      v47 = v74[1];
      v50 = v74[2];
      v75 = v74[3];
      v176 = *(v74 + 2);
      v76 = v50;
      v77 = v75;
      v78 = v48;
      v79 = v47;
      v185 = v76;
      v55 = v77;
      v178 = v78;
      v177 = v79;
      sub_1000095E8(v191, &unk_101195210);
      v57 = v176;
      v58 = &off_1010B2930;
LABEL_22:
      v80 = v192;
LABEL_23:
      v44 = v183;
      v45 = v181;
LABEL_37:
      v191 = v55;
      v197 = v48;
      v198 = v47;
      v199 = v50;
      v200 = v55;
      v201 = v57;
      v131 = v180;
      v132 = v187;
      (*(v180 + 16))(v187, v45, v44);
      v133 = v189;
      v134 = v190;
      v135 = v182;
      (*(v189 + 16))(v182, v80, v190);
      (*(v133 + 56))(v135, 0, 1, v134);
      v136 = v188;
      ArtworkImage.ViewModel.init(artwork:cropStyle:)(v132, v135, v188);
      v137 = v179;
      ObjectType = swift_getObjectType();
      v139 = v58[2];
      v140 = v137;
      v139(v184, v186, ObjectType, v58);
      v141 = sub_1005663C0();
      v142 = v191;

      v143 = v185;
      v144 = v177;

      v145 = v178;
      [v140 setArtwork:v141];

      v34 = [objc_allocWithZone(LPLinkMetadata) init];
      [v34 setSpecialization:v140];

      sub_10026E7C0(v136);
      (*(v133 + 8))(v192, v134);
      (*(v131 + 8))(v181, v183);
      return v34;
    }

    v44 = v183;
    v45 = v181;
    v81 = v191;
    if (v43 == enum case for ContentKind.musicVideo(_:))
    {
      v179 = [objc_allocWithZone(LPiTunesMediaMusicVideoMetadata) init];
      v82 = Artwork.Placeholder.musicVideo.unsafeMutableAddressor();
      v83 = *v82;
      v47 = v82[1];
      v50 = v82[2];
      v84 = v82[3];
      v176 = *(v82 + 2);
      v85 = v50;
      v86 = v84;
      v87 = v83;
      v88 = v47;
      v185 = v85;
      v55 = v86;
      v178 = v87;
      v177 = v88;
      v89 = v81;
      v48 = v83;
      sub_1000095E8(v89, &unk_101195210);
      v57 = v176;
      v58 = &off_1010B2950;
      goto LABEL_36;
    }

    if (v43 == enum case for ContentKind.playlist(_:))
    {
      v90 = [objc_allocWithZone(LPiTunesMediaPlaylistMetadata) init];
      v91 = v185;
      (*(v185 + 13))(v7, enum case for Playlist.Variant.regular(_:), v5);
      v179 = v90;
      v92 = static Artwork.Placeholder.playlist(withVariant:)(v7, &v193);
      v91[1](v7, v5, v92);
      v47 = *(&v193 + 1);
      v93 = v193;
      v50 = v194;
      v94 = v195;
      v185 = v194;
      v95 = v94;
      v178 = v93;
      v177 = v47;
      v96 = v81;
      v48 = v93;
      v55 = v95;
      sub_1000095E8(v96, &unk_101195210);
      v58 = &off_1010B2970;
      v57 = v196;
      goto LABEL_36;
    }

    if (v43 == enum case for ContentKind.radioStation(_:))
    {
      v179 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
      v97 = Artwork.Placeholder.radio.unsafeMutableAddressor();
      v47 = v97[1];
      v175 = *v97;
      v98 = v175;
      v50 = v97[2];
      v99 = v97[3];
      v176 = *(v97 + 2);
      v100 = v50;
      v101 = v99;
      v102 = v98;
      v177 = v47;
      v185 = v100;
      v103 = v101;
      v178 = v102;
      v177 = v177;
      static Artwork.CropStyle.specificRectangle.getter();
      v105 = v189;
      v104 = v190;
      v80 = v192;
      (*(v189 + 8))(v192, v190);
      v106 = v104;
      v55 = v103;
      (*(v105 + 32))(v80, v15, v106);
      v107 = v81;
      v48 = v175;
      sub_1000095E8(v107, &unk_101195210);
      v57 = v176;
      v58 = &off_1010B2990;
      goto LABEL_37;
    }

    if (v43 == enum case for ContentKind.recordLabel(_:))
    {
      v179 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
      v108 = Artwork.Placeholder.microphone.unsafeMutableAddressor();
      v48 = *v108;
      v47 = v108[1];
      v50 = v108[2];
      v109 = v108[3];
      v176 = *(v108 + 2);
      v110 = v50;
      v111 = v109;
      v112 = v48;
      v113 = v47;
      v185 = v110;
      v55 = v111;
      v178 = v112;
      v177 = v113;
      sub_1000095E8(v191, &unk_101195210);
      v57 = v176;
      v58 = &off_1010B2910;
      goto LABEL_22;
    }

    if (v43 == enum case for ContentKind.socialProfile(_:))
    {
      v179 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
      v114 = Artwork.Placeholder.person.unsafeMutableAddressor();
      v48 = *v114;
      v47 = v114[1];
      v50 = v114[2];
      v115 = v114[3];
      v176 = *(v114 + 2);
      v116 = v50;
      v117 = v115;
      v118 = v48;
      v119 = v47;
      v185 = v116;
      v120 = v117;
      v178 = v118;
      v177 = v119;
      static Artwork.CropStyle.specificRectangle.getter();
      v122 = v189;
      v121 = v190;
      v80 = v192;
      (*(v189 + 8))(v192, v190);
      v123 = v121;
      v55 = v120;
      (*(v122 + 32))(v80, v15, v123);
      sub_1000095E8(v191, &unk_101195210);
      v57 = v176;
      v58 = &off_1010B2910;
      goto LABEL_23;
    }

    v44 = v183;
    v45 = v181;
    v31 = v191;
    if (v43 != enum case for ContentKind.song(_:))
    {
      if (v43 == enum case for ContentKind.tvEpisode(_:))
      {
        v179 = [objc_allocWithZone(LPiTunesMediaTVEpisodeMetadata) init];
        v146 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v48 = *v146;
        v47 = v146[1];
        v50 = v146[2];
        v147 = v146[3];
        v176 = *(v146 + 2);
        v148 = v50;
        v149 = v147;
        v150 = v48;
        v151 = v47;
        v185 = v148;
        v55 = v149;
        v178 = v150;
        v177 = v151;
        sub_1000095E8(v191, &unk_101195210);
        v57 = v176;
        v58 = &off_1010B29D0;
      }

      else if (v43 == enum case for ContentKind.tvSeason(_:))
      {
        v179 = [objc_allocWithZone(LPiTunesMediaTVSeasonMetadata) init];
        v152 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v48 = *v152;
        v47 = v152[1];
        v50 = v152[2];
        v153 = v152[3];
        v176 = *(v152 + 2);
        v154 = v50;
        v155 = v153;
        v156 = v48;
        v157 = v47;
        v185 = v154;
        v55 = v155;
        v178 = v156;
        v177 = v157;
        sub_1000095E8(v191, &unk_101195210);
        v57 = v176;
        v58 = &off_1010B29F0;
      }

      else
      {
        if (v43 != enum case for ContentKind.tvShow(_:))
        {

          (*(v33 + 8))(v10, v32);
          v34 = [objc_allocWithZone(LPLinkMetadata) init];
          v164 = v180;
          v165 = v187;
          v166 = v181;
          v167 = v183;
          (*(v180 + 16))(v187, v181, v183);
          v169 = v189;
          v168 = v190;
          v170 = v182;
          v171 = v192;
          (*(v189 + 16))(v182, v192, v190);
          (*(v169 + 56))(v170, 0, 1, v168);
          v172 = v188;
          ArtworkImage.ViewModel.init(artwork:cropStyle:)(v165, v170, v188);
          v173 = sub_100567ED4();
          sub_10026E7C0(v172);
          [v34 setImageProvider:v173];

          (*(v169 + 8))(v171, v168);
          (*(v164 + 8))(v166, v167);
          sub_1000095E8(v191, &unk_101195210);
          return v34;
        }

        v179 = [objc_allocWithZone(LPAppleMusicTVShowMetadata) init];
        v158 = Artwork.Placeholder.tv.unsafeMutableAddressor();
        v48 = *v158;
        v47 = v158[1];
        v50 = v158[2];
        v159 = v158[3];
        v176 = *(v158 + 2);
        v160 = v50;
        v161 = v159;
        v162 = v48;
        v163 = v47;
        v185 = v160;
        v55 = v161;
        v178 = v162;
        v177 = v163;
        sub_1000095E8(v191, &unk_101195210);
        v57 = v176;
        v58 = &off_1010B2A10;
      }

      goto LABEL_22;
    }

LABEL_35:
    sub_1000095E8(v31, &unk_101195210);
    v179 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
    v124 = Artwork.Placeholder.music.unsafeMutableAddressor();
    v48 = *v124;
    v47 = v124[1];
    v50 = v124[2];
    v125 = v124[3];
    v176 = *(v124 + 2);
    v126 = v50;
    v127 = v125;
    v128 = v48;
    v129 = v47;
    v185 = v126;
    v55 = v127;
    v178 = v128;
    v130 = v129;
    v57 = v176;
    v177 = v130;
    v58 = &off_1010B29B0;
    goto LABEL_36;
  }

LABEL_6:
  sub_1000095E8(v31, &unk_101195210);
  v34 = [objc_allocWithZone(LPLinkMetadata) init];
  v35 = String._bridgeToObjectiveC()();

  [v34 setTitle:v35];

  v36 = v187;
  v37 = v183;
  (*(v22 + 16))(v187, v26, v183);
  v39 = v189;
  v38 = v190;
  v40 = v182;
  (*(v189 + 16))(v182, v30, v190);
  (*(v39 + 56))(v40, 0, 1, v38);
  v41 = v188;
  ArtworkImage.ViewModel.init(artwork:cropStyle:)(v36, v40, v188);
  v42 = sub_100567ED4();
  sub_10026E7C0(v41);
  [v34 setImageProvider:v42];

  (*(v39 + 8))(v30, v38);
  (*(v22 + 8))(v26, v37);
  return v34;
}

uint64_t sub_10056401C(uint64_t a1, void *aBlock, uint64_t ObjCClassMetadata, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = sub_100446558;
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  sub_100020438(v7);
}

id sub_100564124()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
  Song.title.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setName:v10];

  Song.artistName.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 setArtist:v11];

  Song.albumTitle.getter();
  if (v12)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v9 setAlbum:v13];

  BagProvider.shared.unsafeMutableAddressor();

  v14 = BagProvider.bag.getter();

  if (v14)
  {
    v15 = [v14 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v15)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = String._bridgeToObjectiveC()();
    }

    else
    {
      v14 = 0;
    }
  }

  [v9 setStoreFrontIdentifier:v14];

  Song.catalogID.getter();
  if (v16)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v9 setStoreIdentifier:v17];

  v18 = type metadata accessor for Song();
  (*(*(v18 - 8) + 16))(v8, v1, v18);
  (*(v6 + 104))(v8, enum case for GenericMusicItem.song(_:), v5);
  GenericMusicItem.artworkViewModel.getter(v4);
  v19 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v4, &unk_10118A5E0);
    v20 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v5, v26);
    v20 = sub_1005663C0();
    v29 = v26[0];
    sub_1000095E8(&v29, &unk_1011951E0);
    v28 = v26[1];
    sub_1000095E8(&v28, &unk_1011951E0);
    v27 = v26[2];
    sub_1000095E8(&v27, &qword_101184460);

    (*(v6 + 8))(v8, v5);
    sub_10026E7C0(v4);
  }

  [v9 setArtwork:v20];

  v21 = objc_allocWithZone(LPLinkMetadata);
  v22 = v9;
  v23 = [v21 init];
  [v23 setSpecialization:v22];

  return v23;
}

id sub_1005645CC()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v25[-1] - v3;
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(LPiTunesMediaAlbumMetadata) init];
  Album.title.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setName:v10];

  Album.artistName.getter();
  v11 = String._bridgeToObjectiveC()();

  [v9 setArtist:v11];

  BagProvider.shared.unsafeMutableAddressor();

  v12 = BagProvider.bag.getter();

  if (v12)
  {
    v13 = [v12 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }
  }

  [v9 setStoreFrontIdentifier:v12];

  Album.catalogID.getter();
  if (v14)
  {
    v15 = String._bridgeToObjectiveC()();
  }

  else
  {
    v15 = 0;
  }

  [v9 setStoreIdentifier:v15];

  v16 = type metadata accessor for Album();
  (*(*(v16 - 8) + 16))(v8, v1, v16);
  (*(v6 + 104))(v8, enum case for GenericMusicItem.album(_:), v5);
  GenericMusicItem.artworkViewModel.getter(v4);
  v17 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v17 - 8) + 48))(v4, 1, v17) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v4, &unk_10118A5E0);
    v18 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v5, v25);
    v18 = sub_1005663C0();
    v28 = v25[0];
    sub_1000095E8(&v28, &unk_1011951E0);
    v27 = v25[1];
    sub_1000095E8(&v27, &unk_1011951E0);
    v26 = v25[2];
    sub_1000095E8(&v26, &qword_101184460);

    (*(v6 + 8))(v8, v5);
    sub_10026E7C0(v4);
  }

  [v9 setArtwork:v18];

  v19 = objc_allocWithZone(LPLinkMetadata);
  v20 = v9;
  v21 = [v19 init];
  [v21 setSpecialization:v20];

  Album.title.getter();
  v22 = String._bridgeToObjectiveC()();

  [v21 setTitle:v22];

  return v21;
}

id sub_100564A6C()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaArtistMetadata) init];
  Artist.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  Artist.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setStoreIdentifier:v11];

  v12 = Artist.genreNames.getter();
  if (v12)
  {
    if (*(v12 + 16))
    {

      v13 = String._bridgeToObjectiveC()();

      goto LABEL_9;
    }
  }

  v13 = 0;
LABEL_9:
  [v8 setGenre:v13];

  v14 = type metadata accessor for Artist();
  (*(*(v14 - 8) + 16))(v7, v0, v14);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.artist(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v15 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v15 - 8) + 48))(v3, 1, v15) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v16 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v22);
    v16 = sub_1005663C0();
    v25 = v22[0];
    sub_1000095E8(&v25, &unk_1011951E0);
    v24 = v22[1];
    sub_1000095E8(&v24, &unk_1011951E0);
    v23 = v22[2];
    sub_1000095E8(&v23, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v16];

  v17 = objc_allocWithZone(LPLinkMetadata);
  v18 = v8;
  v19 = [v17 init];
  [v19 setSpecialization:v18];

  return v19;
}

id sub_100564EA4(void (*a1)(void), uint64_t (*a2)(void), unsigned int *a3)
{
  v7 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24[-1] - v8;
  v10 = type metadata accessor for GenericMusicItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  a1();
  v15 = String._bridgeToObjectiveC()();

  [v14 setName:v15];

  v16 = a2(0);
  (*(*(v16 - 8) + 16))(v13, v3, v16);
  (*(v11 + 104))(v13, *a3, v10);
  GenericMusicItem.artworkViewModel.getter(v9);
  v17 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    (*(v11 + 8))(v13, v10);
    sub_1000095E8(v9, &unk_10118A5E0);
    v18 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v10, v24);
    v18 = sub_1005663C0();
    v27 = v24[0];
    sub_1000095E8(&v27, &unk_1011951E0);
    v26 = v24[1];
    sub_1000095E8(&v26, &unk_1011951E0);
    v25 = v24[2];
    sub_1000095E8(&v25, &qword_101184460);

    (*(v11 + 8))(v13, v10);
    sub_10026E7C0(v9);
  }

  [v14 setArtwork:v18];

  v19 = objc_allocWithZone(LPLinkMetadata);
  v20 = v14;
  v21 = [v19 init];
  [v21 setSpecialization:v20];

  return v21;
}

id sub_100565290()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaMusicVideoMetadata) init];
  MusicVideo.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  MusicVideo.artistName.getter();
  v10 = String._bridgeToObjectiveC()();

  [v8 setArtist:v10];

  MusicVideo.catalogID.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v8 setStoreIdentifier:v12];

  v13 = type metadata accessor for MusicVideo();
  (*(*(v13 - 8) + 16))(v7, v0, v13);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.musicVideo(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v14 - 8) + 48))(v3, 1, v14) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v15 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v21);
    v15 = sub_1005663C0();
    v24 = v21[0];
    sub_1000095E8(&v24, &unk_1011951E0);
    v23 = v21[1];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v21[2];
    sub_1000095E8(&v22, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v15];

  v16 = objc_allocWithZone(LPLinkMetadata);
  v17 = v8;
  v18 = [v16 init];
  [v18 setSpecialization:v17];

  return v18;
}

id sub_10056564C()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaMovieMetadata) init];
  MusicMovie.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  MusicMovie.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setStoreIdentifier:v11];

  v12 = type metadata accessor for MusicMovie();
  (*(*(v12 - 8) + 16))(v7, v0, v12);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.musicMovie(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v20);
    v14 = sub_1005663C0();
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v8;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_1005659DC()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
  RadioShow.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  RadioShow.hostName.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setCurator:v11];

  v12 = type metadata accessor for RadioShow();
  (*(*(v12 - 8) + 16))(v7, v0, v12);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.radioShow(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v20);
    v14 = sub_1005663C0();
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v8;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_100565DB0()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesUserProfileMetadata) init];
  SocialProfile.name.getter();
  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v8 setName:v10];

  v11 = type metadata accessor for SocialProfile();
  (*(*(v11 - 8) + 16))(v7, v0, v11);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.socialProfile(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v12 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v12 - 8) + 48))(v3, 1, v12) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v13 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v19);
    v13 = sub_1005663C0();
    v22 = v19[0];
    sub_1000095E8(&v22, &unk_1011951E0);
    v21 = v19[1];
    sub_1000095E8(&v21, &unk_1011951E0);
    v20 = v19[2];
    sub_1000095E8(&v20, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v13];

  v14 = objc_allocWithZone(LPLinkMetadata);
  v15 = v8;
  v16 = [v14 init];
  [v16 setSpecialization:v15];

  return v16;
}

uint64_t sub_10056610C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Artwork();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v19 - v13;
  SocialProfileDescriptor.artwork.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000095E8(v7, &unk_101188920);
    v15 = 1;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    static Artwork.CropStyle.specificRectangle.getter();
    (*(v9 + 8))(v14, v8);
    v16 = type metadata accessor for Artwork.CropStyle();
    (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
    ArtworkImage.ViewModel.init(artwork:cropStyle:)(v11, v4, a1);
    v15 = 0;
  }

  v17 = type metadata accessor for ArtworkImage.ViewModel(0);
  return (*(*(v17 - 8) + 56))(a1, v15, 1, v17);
}

id sub_1005663C0()
{
  v0 = sub_100567ED4();
  sub_100501DD4();
  v1 = [swift_getObjCClassFromMetadata() preferredFormat];
  v2 = Artwork.Placeholder.image(with:graphicsFormat:)(v1, 300.0, 300.0);

  if (v2)
  {
    v3 = [objc_allocWithZone(LPImage) initWithPlatformImage:v2];
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_allocWithZone(LPImage) initWithItemProvider:v0 properties:0 placeholderImage:v3];

  return v4;
}

id sub_100566498()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v23[-1] - v3;
  v5 = type metadata accessor for GenericMusicItem();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(LPiTunesMediaRadioMetadata) init];
  Station.name.getter();
  v10 = String._bridgeToObjectiveC()();

  [v9 setName:v10];

  BagProvider.shared.unsafeMutableAddressor();

  v11 = BagProvider.bag.getter();

  if (v11)
  {
    v12 = [v11 stringForBagKey:ICURLBagKeyStoreFrontID];

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = String._bridgeToObjectiveC()();
    }

    else
    {
      v11 = 0;
    }
  }

  [v9 setStoreFrontIdentifier:v11];

  Station.catalogID.getter();
  if (v13)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  [v9 setStoreIdentifier:v14];

  v15 = type metadata accessor for Station();
  (*(*(v15 - 8) + 16))(v8, v1, v15);
  (*(v6 + 104))(v8, enum case for GenericMusicItem.station(_:), v5);
  GenericMusicItem.artworkViewModel.getter(v4);
  v16 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v16 - 8) + 48))(v4, 1, v16) == 1)
  {
    (*(v6 + 8))(v8, v5);
    sub_1000095E8(v4, &unk_10118A5E0);
    v17 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v5, v23);
    v17 = sub_1005663C0();
    v26 = v23[0];
    sub_1000095E8(&v26, &unk_1011951E0);
    v25 = v23[1];
    sub_1000095E8(&v25, &unk_1011951E0);
    v24 = v23[2];
    sub_1000095E8(&v24, &qword_101184460);

    (*(v6 + 8))(v8, v5);
    sub_10026E7C0(v4);
  }

  [v9 setArtwork:v17];

  v18 = objc_allocWithZone(LPLinkMetadata);
  v19 = v9;
  v20 = [v18 init];
  [v20 setSpecialization:v19];

  return v20;
}

id sub_1005668D4()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v2 - 8);
  v38 = &v39[-v3 - 8];
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = type metadata accessor for Song();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v12 = type metadata accessor for Track();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v13 + 16))(v16, v1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == enum case for Track.song(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v9 + 32))(v11, v16, v8);
    v18 = sub_100564124();
    (*(v9 + 8))(v11, v8);
  }

  else if (v17 == enum case for Track.musicVideo(_:))
  {
    (*(v13 + 96))(v16, v12);
    (*(v5 + 32))(v7, v16, v4);
    v18 = sub_100565290();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v19 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
    Track.title.getter();
    v20 = String._bridgeToObjectiveC()();

    [v19 setName:v20];

    Track.artistName.getter();
    v21 = String._bridgeToObjectiveC()();

    [v19 setArtist:v21];

    Track.albumTitle.getter();
    if (v22)
    {
      v23 = String._bridgeToObjectiveC()();
    }

    else
    {
      v23 = 0;
    }

    [v19 setAlbum:v23];

    BagProvider.shared.unsafeMutableAddressor();

    v24 = BagProvider.bag.getter();

    if (v24)
    {
      v25 = [v24 stringForBagKey:ICURLBagKeyStoreFrontID];

      if (v25)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }
    }

    [v19 setStoreFrontIdentifier:v24];

    Track.catalogID.getter();
    if (v26)
    {
      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }

    [v19 setStoreIdentifier:v27];

    v28 = v38;
    Track.artworkViewModel.getter(v38);
    v29 = type metadata accessor for ArtworkImage.ViewModel(0);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
    {
      sub_1000095E8(v28, &unk_10118A5E0);
      v30 = 0;
    }

    else
    {
      v31 = Artwork.Placeholder.music.unsafeMutableAddressor();
      v32 = *(v31 + 1);
      v40 = *v31;
      v41 = v32;
      v42 = *(v31 + 2);
      v43 = v40;
      v33 = *(&v32 + 1);
      v44 = v32;
      sub_1000089F8(&v43, v39, &unk_1011951E0);
      sub_1000089F8(&v43 + 8, v39, &unk_1011951E0);
      sub_1000089F8(&v44, v39, &qword_101184460);
      v34 = v33;
      v30 = sub_1005663C0();
      sub_1000095E8(&v43, &unk_1011951E0);
      sub_1000095E8(&v43 + 8, &unk_1011951E0);
      sub_1000095E8(&v44, &qword_101184460);

      sub_10026E7C0(v28);
    }

    [v19 setArtwork:v30];

    v35 = objc_allocWithZone(LPLinkMetadata);
    v36 = v19;
    v18 = [v35 init];
    [v18 setSpecialization:v36];

    (*(v13 + 8))(v16, v12);
  }

  return v18;
}

id sub_100566F60()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaTVEpisodeMetadata) init];
  TVEpisode.title.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setEpisodeName:v9];

  TVEpisode.showName.getter();
  v10 = String._bridgeToObjectiveC()();

  [v8 setSeasonName:v10];

  TVEpisode.catalogID.getter();
  if (v11)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  [v8 setStoreIdentifier:v12];

  v13 = type metadata accessor for TVEpisode();
  (*(*(v13 - 8) + 16))(v7, v0, v13);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.tvEpisode(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v14 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v14 - 8) + 48))(v3, 1, v14) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v15 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v21);
    v15 = sub_1005663C0();
    v24 = v21[0];
    sub_1000095E8(&v24, &unk_1011951E0);
    v23 = v21[1];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v21[2];
    sub_1000095E8(&v22, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v15];

  v16 = objc_allocWithZone(LPLinkMetadata);
  v17 = v8;
  v18 = [v16 init];
  [v18 setSpecialization:v17];

  return v18;
}

id sub_10056731C()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPiTunesMediaTVSeasonMetadata) init];
  TVSeason.showName.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  TVSeason.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setStoreIdentifier:v11];

  v12 = type metadata accessor for TVSeason();
  (*(*(v12 - 8) + 16))(v7, v0, v12);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.tvSeason(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v20);
    v14 = sub_1005663C0();
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v8;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_1005676A8()
{
  v1 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20[-1] - v2;
  v4 = type metadata accessor for GenericMusicItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(LPAppleMusicTVShowMetadata) init];
  TVShow.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 setName:v9];

  TVShow.catalogID.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v8 setStoreIdentifier:v11];

  v12 = type metadata accessor for TVShow();
  (*(*(v12 - 8) + 16))(v7, v0, v12);
  (*(v5 + 104))(v7, enum case for GenericMusicItem.tvShow(_:), v4);
  GenericMusicItem.artworkViewModel.getter(v3);
  v13 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v13 - 8) + 48))(v3, 1, v13) == 1)
  {
    (*(v5 + 8))(v7, v4);
    sub_1000095E8(v3, &unk_10118A5E0);
    v14 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v4, v20);
    v14 = sub_1005663C0();
    v23 = v20[0];
    sub_1000095E8(&v23, &unk_1011951E0);
    v22 = v20[1];
    sub_1000095E8(&v22, &unk_1011951E0);
    v21 = v20[2];
    sub_1000095E8(&v21, &qword_101184460);

    (*(v5 + 8))(v7, v4);
    sub_10026E7C0(v3);
  }

  [v8 setArtwork:v14];

  v15 = objc_allocWithZone(LPLinkMetadata);
  v16 = v8;
  v17 = [v15 init];
  [v17 setSpecialization:v16];

  return v17;
}

id sub_100567A90(void (*a1)(void), void (*a2)(void), uint64_t (*a3)(void), unsigned int *a4)
{
  v9 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v29[-1] - v10;
  v12 = type metadata accessor for GenericMusicItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(LPiTunesMediaSongMetadata) init];
  v28 = v4;
  a1();
  if (v17)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  [v16 setName:v18];

  v19 = v28;
  a2();
  v20 = String._bridgeToObjectiveC()();

  [v16 setArtist:v20];

  v21 = a3(0);
  (*(*(v21 - 8) + 16))(v15, v19, v21);
  (*(v13 + 104))(v15, *a4, v12);
  GenericMusicItem.artworkViewModel.getter(v11);
  v22 = type metadata accessor for ArtworkImage.ViewModel(0);
  if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
  {
    (*(v13 + 8))(v15, v12);
    sub_1000095E8(v11, &unk_10118A5E0);
    v23 = 0;
  }

  else
  {
    sub_100568AEC();
    MusicItem.artworkPlaceholder.getter(v12, v29);
    v23 = sub_1005663C0();
    v32 = v29[0];
    sub_1000095E8(&v32, &unk_1011951E0);
    v31 = v29[1];
    sub_1000095E8(&v31, &unk_1011951E0);
    v30 = v29[2];
    sub_1000095E8(&v30, &qword_101184460);

    (*(v13 + 8))(v15, v12);
    sub_10026E7C0(v11);
  }

  [v16 setArtwork:v23];

  v24 = objc_allocWithZone(LPLinkMetadata);
  v25 = v16;
  v26 = [v24 init];
  [v26 setSpecialization:v25];

  return v26;
}

id sub_100567ED4()
{
  v1 = v0;
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(NSItemProvider) init];
  static UTType.png.getter();
  UTType.identifier.getter();
  (*(v6 + 8))(v8, v5);
  v10 = String._bridgeToObjectiveC()();

  sub_100568B44(v1, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100568BA8(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  aBlock[4] = sub_100568C0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10056401C;
  aBlock[3] = &unk_1010B2A58;
  v13 = _Block_copy(aBlock);

  [v9 registerItemForTypeIdentifier:v10 loadHandler:v13];
  _Block_release(v13);

  return v9;
}

uint64_t sub_100568134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ArtworkImage.ViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v11 - 8);
  v14 = &v19 - v13;
  if (a1)
  {
    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
    sub_100568B44(a5, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    sub_100568BA8(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
    v18 = (v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v18 = a1;
    v18[1] = a2;

    sub_1001F4CB8(0, 0, v14, &unk_100ED3588, v17);
  }

  return result;
}

uint64_t sub_100568300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v6[6] = type metadata accessor for ArtworkImage.ViewModel(0);
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  sub_10010FC20(&unk_101195200);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100568438, 0, 0);
}

uint64_t sub_100568438()
{
  v1 = v0[12];
  v2 = v0[6];
  v3 = v0[3];
  v4 = [objc_opt_self() currentTraitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = *(v2 + 20);
  v8 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_100568594;
  v11 = v0[12];
  v12.n128_u64[0] = 0x4072C00000000000;
  v13.n128_u64[0] = 0x4072C00000000000;

  v10.n128_f64[0] = 1.0 / v6;
  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v3 + v7, v11, 0, 0, v12, v13, v10);
}

uint64_t sub_100568594(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  sub_1000095E8(v4, &unk_101195200);
  if (v1)
  {
    v5 = sub_1005687CC;
  }

  else
  {
    v5 = sub_1005686D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005686D8()
{
  v1 = UIImagePNGRepresentation(*(v0 + 112));
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_10002C064(v3, v5);
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = *(v0 + 112);
  (*(v0 + 32))(v6.super.isa, 0);

  swift_unknownObjectRelease();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1005687CC()
{
  v30 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[3];
  v6 = Logger.musicKit.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v6, v3);
  sub_100568B44(v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[15];
    v10 = v0[10];
    v11 = v0[8];
    v27 = v0[9];
    v28 = v0[11];
    v12 = v0[7];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v13 = 136446466;
    sub_100568B44(v11, v12);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_10026E7C0(v11);
    v17 = sub_1000105AC(v14, v16, &v29);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v0[2] = v9;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v18 = String.init<A>(describing:)();
    v20 = sub_1000105AC(v18, v19, &v29);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to generate UIImage from MusicKit.Artwork=%{public}s with error=%{public}s", v13, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v28, v27);
  }

  else
  {
    v22 = v0[10];
    v21 = v0[11];
    v24 = v0[8];
    v23 = v0[9];

    sub_10026E7C0(v24);
    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[1];

  return v25();
}

void sub_100568A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v5 *a5];
}

unint64_t sub_100568AEC()
{
  result = qword_1011951D8;
  if (!qword_1011951D8)
  {
    type metadata accessor for GenericMusicItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011951D8);
  }

  return result;
}

uint64_t sub_100568B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100568BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100568C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_100568134(a1, a2, a3, a4, v10);
}

uint64_t sub_100568CA4(uint64_t a1)
{
  v4 = *(type metadata accessor for ArtworkImage.ViewModel(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_100568300(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_100568DD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for UIButton.Configuration();
  v105 = *(v10 - 8);
  v106 = v10;
  __chkstk_darwin(v10);
  v12 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v101 - v14;
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  *&v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton] = 0;
  *&v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_sizeCategoryObserver] = 0;
  v18 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView;
  v104 = type metadata accessor for BackdropView();
  v19 = objc_allocWithZone(v104);
  *&v4[v18] = sub_100453A34();
  v20 = &v4[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = [objc_allocWithZone(UILabel) init];
  v22._object = 0x8000000100E4FAF0;
  v22._countAndFlagsBits = 0xD000000000000024;
  v23 = AccessibilityIdentifier.init(name:)(v22);
  v24 = UIView.withAccessibilityIdentifier(_:)(v23, *(&v23 + 1));

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v25 = String._bridgeToObjectiveC()();

  [v24 setText:v25];

  v102 = objc_opt_self();
  v26 = [v102 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v24 setFont:v26];

  [v24 setAdjustsFontForContentSizeCategory:1];
  v27 = v24;
  [v27 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v27 setNumberOfLines:1];
  v28 = type metadata accessor for NowPlayingHistoryHeaderView();
  v108.receiver = v5;
  v108.super_class = v28;
  v29 = objc_msgSendSuper2(&v108, "initWithFrame:", a1, a2, a3, a4);
  static UIButton.Configuration.plain()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  UIButton.Configuration.contentInsets.getter();
  v31 = v30;
  v32 = sub_100009F78(0, &qword_101183A18);
  v33 = *(v105 + 16);
  v103 = v15;
  v33(v12, v15, v106);
  v34 = UIButton.init(configuration:primaryAction:)();
  v35._countAndFlagsBits = 0xD00000000000002ALL;
  v35._object = 0x8000000100E4FB20;
  v36 = AccessibilityIdentifier.init(name:)(v35);
  v37 = UIView.withAccessibilityIdentifier(_:)(v36, *(&v36 + 1));

  v38 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton;
  v39 = *&v29[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton];
  *&v29[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton] = v37;
  v40 = v37;

  v41 = [v40 titleLabel];
  if (!v41)
  {
LABEL_4:
    v47 = *&v29[v38];
    if (v47)
    {
      [v47 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      v48 = *&v29[v38];
      if (v48)
      {
        [v48 setTranslatesAutoresizingMaskIntoConstraints:0];
        v49 = *&v29[v38];
        if (v49)
        {
          [v49 setContentVerticalAlignment:3];
          v50 = objc_allocWithZone(v104);
          v51 = sub_100453A34();
          [v51 setTranslatesAutoresizingMaskIntoConstraints:0];
          v52 = *&v29[v38];
          if (v52)
          {
            v53 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v54 = v29;
            v55 = v52;
            ControlEventHandling<>.on(_:handler:)(64, sub_10056A174, v53, v32);

            v56 = v54;
            [v56 addSubview:v51];
            [v56 addSubview:v27];
            if (*&v29[v38])
            {
              [v56 addSubview:?];
              v107 = 2;
              v57 = sub_100309CC0();
              if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v57))
              {
                v58 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView;
                v59 = *&v56[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView];
                v60 = v59[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
                v59[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
                v61 = v59;
                sub_100453194(v60);

                [v56 addSubview:*&v56[v58]];
              }

              sub_10010FC20(&qword_101183990);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_100EBEE90;
              v63 = [v51 topAnchor];
              v64 = [v56 topAnchor];
              v65 = [v63 constraintEqualToAnchor:v64];

              *(v62 + 32) = v65;
              v66 = [v51 leadingAnchor];
              v67 = [v56 leadingAnchor];

              v68 = [v66 constraintEqualToAnchor:v67];
              *(v62 + 40) = v68;
              v69 = [v51 trailingAnchor];
              v70 = [v56 trailingAnchor];

              v71 = [v69 constraintEqualToAnchor:v70];
              *(v62 + 48) = v71;
              v72 = [v51 bottomAnchor];
              v104 = v51;

              v73 = [v56 bottomAnchor];
              v74 = [v72 constraintEqualToAnchor:v73];

              *(v62 + 56) = v74;
              v75 = [v27 centerYAnchor];
              v76 = [v56 centerYAnchor];

              v77 = [v75 constraintEqualToAnchor:v76];
              *(v62 + 64) = v77;
              v78 = [v27 leadingAnchor];
              v79 = [v56 layoutMarginsGuide];

              v80 = [v79 leadingAnchor];
              v81 = [v78 constraintEqualToAnchor:v80];

              *(v62 + 72) = v81;
              v82 = [v27 trailingAnchor];

              v83 = *&v29[v38];
              if (v83)
              {
                v84 = [v83 leadingAnchor];
                v85 = [v82 constraintLessThanOrEqualToAnchor:v84 constant:-10.0];

                *(v62 + 80) = v85;
                v86 = *&v29[v38];
                if (v86)
                {
                  v87 = [v86 centerYAnchor];
                  v88 = [v56 centerYAnchor];

                  v89 = [v87 constraintEqualToAnchor:v88];
                  *(v62 + 88) = v89;
                  v90 = *&v29[v38];
                  if (v90)
                  {
                    v91 = objc_opt_self();
                    v92 = [v90 trailingAnchor];
                    v93 = [v56 layoutMarginsGuide];

                    v94 = [v93 trailingAnchor];
                    v95 = [v92 constraintEqualToAnchor:v94 constant:v31];

                    *(v62 + 96) = v95;
                    sub_100009F78(0, &qword_1011838A0);
                    isa = Array._bridgeToObjectiveC()().super.isa;

                    [v91 activateConstraints:isa];

                    v97 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v98 = UIContentSizeCategoryDidChangeNotification;

                    v99 = swift_allocObject();
                    *(v99 + 16) = v97;
                    *(v99 + 24) = v27;
                    type metadata accessor for NotificationObserver();
                    swift_allocObject();
                    v100 = v27;
                    *&v56[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_sizeCategoryObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v98, 0, 1, 1, sub_10056A17C, v99);

                    sub_100569EC4();

                    (*(v105 + 8))(v103, v106);
                    return;
                  }

                  goto LABEL_22;
                }

LABEL_21:
                __break(1u);
LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

LABEL_19:
            __break(1u);
            goto LABEL_20;
          }

LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  v42 = [v27 font];
  if (v42)
  {
    v43 = v42;
    [v42 pointSize];
    v45 = v44;

    v46 = [v102 systemFontOfSize:v45 weight:UIFontWeightRegular];
    [v41 setFont:v46];

    goto LABEL_4;
  }

LABEL_23:
  __break(1u);
}

void sub_100569A18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButtonAction);
    v2 = Strong;
    sub_100030444(v1);

    if (v1)
    {
      v1();
      sub_100020438(v1);
    }
  }
}

void sub_100569AA4(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton);
    v6 = Strong;
    v7 = v5;

    if (v5)
    {
      v8 = [v7 titleLabel];

      if (!v8)
      {
        return;
      }

      v9 = [a3 font];
      if (v9)
      {
        v10 = v9;
        v11 = objc_opt_self();
        [v10 pointSize];
        v13 = v12;

        v14 = [v11 systemFontOfSize:v13 weight:UIFontWeightRegular];
        [v8 setFont:v14];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100569D38()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v2 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v2))
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_gradientView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v6);
    [v1 bounds];
    [v3 setFrame:{0.0, MaxY, CGRectGetWidth(v7), 5.0}];
  }
}

void sub_100569EC4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    v6 = objc_opt_self();
    v7 = &selRef_clearColor;
    if ((v3 & 1) == 0)
    {
      v7 = &selRef_systemBackgroundColor;
    }

    v8 = [v6 *v7];
    [v1 setBackgroundColor:v8];
  }

  v9 = OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton;
  v10 = *&v1[OBJC_IVAR____TtC5Music27NowPlayingHistoryHeaderView_clearButton];
  if (!v10)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  if (v3)
  {
    v11 = qword_10117F900;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_101219098;
  }

  else
  {
    v14 = v10;
    v13 = 0;
  }

  [v10 setTintColor:v13];

  v15 = *&v1[v9];
  if (!v15)
  {
    goto LABEL_19;
  }

  v16 = [v15 layer];
  if (v3)
  {
    v17 = kCAFilterPlusL;
  }

  else
  {
    v17 = 0;
  }

  [v16 setCompositingFilter:v17];

  swift_unknownObjectRelease();
}

id sub_10056A0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingHistoryHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_10056A184(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = type metadata accessor for Locale();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v12 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView;
  v13 = type metadata accessor for BackdropView();
  v14 = objc_allocWithZone(v13);
  *&v4[v12] = sub_100453A34();
  v15 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView;
  v16 = objc_allocWithZone(v13);
  *&v4[v15] = sub_100453A34();
  v17 = [objc_allocWithZone(UILabel) init];
  v18._object = 0x8000000100E4FC10;
  v18._countAndFlagsBits = 0xD000000000000025;
  v19 = AccessibilityIdentifier.init(name:)(v18);
  v20 = UIView.withAccessibilityIdentifier(_:)(v19, *(&v19 + 1));

  v21 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel] = v20;
  v22 = objc_opt_self();
  v23 = v20;
  v24 = [v22 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v23 setFont:v24];

  [*&v5[v21] setAdjustsFontForContentSizeCategory:1];
  [*&v5[v21] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [*&v5[v21] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v21] setNumberOfLines:1];
  v25 = *&v5[v21];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v26 = String._bridgeToObjectiveC()();

  [v25 setText:v26];

  [*&v5[v21] setSizingRule:1];
  [*&v5[v21] _setWantsContentAwareTypesettingLanguage:1];
  v27 = [objc_allocWithZone(UILabel) init];
  v28._countAndFlagsBits = 0xD000000000000028;
  v28._object = 0x8000000100E4FC40;
  v29 = AccessibilityIdentifier.init(name:)(v28);
  v30 = UIView.withAccessibilityIdentifier(_:)(v29, *(&v29 + 1));

  v31 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel] = v30;
  v32 = v30;
  v33 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v32 setFont:v33];

  [*&v5[v31] setAdjustsFontForContentSizeCategory:1];
  [*&v5[v31] setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [*&v5[v31] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v31] setNumberOfLines:0];
  v34 = *&v5[v31];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v35 = String._bridgeToObjectiveC()();

  [v34 setText:v35];

  v36 = *&v5[v31];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 secondaryLabelColor];
  [v38 setTextColor:v39];

  [*&v5[v31] setSizingRule:1];
  [*&v5[v31] _setWantsContentAwareTypesettingLanguage:1];
  v40 = [objc_opt_self() configurationWithPointSize:7 weight:15.0];
  v41 = String._bridgeToObjectiveC()();
  v42 = [objc_opt_self() systemImageNamed:v41 withConfiguration:v40];

  v104 = v40;
  v43 = [objc_allocWithZone(UIImageView) initWithImage:v42];

  v44._object = 0x8000000100E4FC90;
  v44._countAndFlagsBits = 0xD000000000000025;
  v45 = AccessibilityIdentifier.init(name:)(v44);
  v46 = UIView.withAccessibilityIdentifier(_:)(v45, *(&v45 + 1));

  v47 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView;
  *&v5[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView] = v46;
  [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = *&v5[v47];
  v49 = [v37 labelColor];
  [v48 setTintColor:v49];

  [*&v5[v47] setContentMode:4];
  v105.receiver = v5;
  v105.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  v50 = objc_msgSendSuper2(&v105, "initWithFrame:", a1, a2, a3, a4);
  v51 = [v50 layer];
  [v51 setAllowsGroupBlending:0];

  v52 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView;
  v53 = *&v50[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  LOBYTE(v51) = v53[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
  v53[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
  v54 = v53;
  sub_100453194(v51);

  [v50 addSubview:*&v50[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView]];
  v55 = sub_100309CC0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v55))
  {
    [v50 addSubview:*&v50[v52]];
  }

  v56 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_titleLabel]];
  v102 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel]];
  v57 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView;
  [v50 addSubview:*&v50[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView]];
  v103 = objc_opt_self();
  sub_10010FC20(&qword_101183990);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100EC56B0;
  v59 = [*&v50[v57] leadingAnchor];
  v60 = [v50 layoutMarginsGuide];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor:v61];
  *(v58 + 32) = v62;
  v63 = [*&v50[v57] heightAnchor];
  v64 = [*&v50[v57] widthAnchor];
  v65 = [v63 constraintEqualToAnchor:v64];

  *(v58 + 40) = v65;
  v66 = [*&v50[v57] centerYAnchor];
  v67 = [*&v50[v56] centerYAnchor];
  v68 = [v66 constraintEqualToAnchor:v67];

  *(v58 + 48) = v68;
  v69 = [*&v50[v56] firstBaselineAnchor];
  v70 = [v50 topAnchor];
  v71 = [v69 constraintEqualToAnchor:v70 constant:27.0];

  *(v58 + 56) = v71;
  v72 = [*&v50[v56] leadingAnchor];
  v73 = [*&v50[v57] trailingAnchor];
  v74 = [v72 constraintEqualToAnchor:v73 constant:2.0];

  *(v58 + 64) = v74;
  v75 = [*&v50[v56] trailingAnchor];
  v76 = [v50 layoutMarginsGuide];
  v77 = [v76 trailingAnchor];

  v78 = [v75 constraintEqualToAnchor:v77];
  *(v58 + 72) = v78;
  v79 = [*&v50[v102] leadingAnchor];
  v80 = [v50 layoutMarginsGuide];
  v81 = [v80 leadingAnchor];

  v82 = [v79 constraintEqualToAnchor:v81];
  *(v58 + 80) = v82;
  v83 = [*&v50[v102] topAnchor];
  v84 = [*&v50[v56] bottomAnchor];
  v85 = [v83 constraintEqualToAnchor:v84 constant:1.0];

  *(v58 + 88) = v85;
  v86 = [*&v50[v102] trailingAnchor];
  v87 = [*&v50[v56] trailingAnchor];
  v88 = [v86 constraintEqualToAnchor:v87];

  *(v58 + 96) = v88;
  v89 = [*&v50[v102] bottomAnchor];
  v90 = [v50 bottomAnchor];

  v91 = [v89 constraintEqualToAnchor:v90 constant:-8.0];
  LODWORD(v92) = 1144750080;
  v93 = [v91 withPriority:v92];

  *(v58 + 104) = v93;
  sub_100294F58();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v103 activateConstraints:isa];

  sub_10056B1F0();
  sub_10010FC20(&unk_101182D80);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_100EBC6B0;
  v96 = sub_100050078();
  *(v95 + 32) = &type metadata for HasAnimatedBackgroundTrait;
  *(v95 + 40) = v96;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v97 = *&v50[v52];
  v98 = [v50 traitCollection];
  v99 = sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  [v97 setHidden:sub_1005C3564(2u) & 1];
  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_100EBC6B0;
  *(v100 + 32) = &type metadata for NowPlayingLayoutTypeTrait;
  *(v100 + 40) = v99;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v50;
}

void sub_10056B0BC()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  v1 = OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView;
  v2 = *&v0[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_backdropView];
  [v0 bounds];
  [v2 setFrame:?];

  v3 = *&v0[v1];
  v4 = *&v0[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  [v3 frame];
  MaxY = CGRectGetMaxY(v7);
  [v0 bounds];
  [v4 setFrame:{0.0, MaxY, CGRectGetWidth(v8), 5.0}];
}

uint64_t sub_10056B1F0()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v4 = [v1 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 6)
  {
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_self() systemBackgroundColor];
    }

    [v1 setBackgroundColor:v6];
  }

  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v8 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_subtitleLabel];
  *(inited + 32) = v8;
  v9 = *&v1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_autoplayImageView];
  *(inited + 40) = v9;
  v10 = v8;
  v11 = v9;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = sub_100062D50(0, inited);
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  v14 = [v12 layer];
  if (v3)
  {
    v15 = kCAFilterPlusL;
  }

  else
  {
    v15 = 0;
  }

  [v14 setCompositingFilter:v15];

  result = swift_unknownObjectRelease();
  if ((inited & 0xC000000000000001) != 0)
  {
    v17 = sub_100062D50(1uLL, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return result;
    }

    v17 = *(inited + 40);
  }

  v18 = v17;

  v19 = [v18 layer];
  if (v3)
  {
    v20 = kCAFilterPlusL;
  }

  else
  {
    v20 = 0;
  }

  [v19 setCompositingFilter:v20];

  return swift_unknownObjectRelease();
}

id sub_10056B450()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingAutoPlayHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10056B548(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music28NowPlayingAutoPlayHeaderView_bottomGradientView];
  v3 = [a1 traitCollection];
  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();

  [v2 setHidden:sub_1005C3564(v4) & 1];
}

uint64_t sub_10056B5F4()
{
  if (qword_10117F880 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011952C0))
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
  if (*(&v4 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_100011DF0(v5);
    return 0;
  }

  return result;
}

void sub_10056B6D0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v1[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1004357B8(5u);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = [a1 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = IndexPath.section.getter();
      v15 = *(v5 + 8);
      v15(v7, v4);
      [v2 _layoutFrameForSection:v14];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [a1 frame];
      CGRectGetMinY(v61);
      v62.origin.x = v17;
      v62.origin.y = v19;
      v62.size.width = v21;
      v62.size.height = v23;
      CGRectGetMinY(v62);
      if (qword_10117F880 != -1)
      {
        swift_once();
      }

      v24 = qword_1011952C0;
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      objc_setAssociatedObject(a1, v24, isa, 3);

      [a1 setAlpha:1.0];
      v26 = [a1 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v27 = IndexPath.section.getter();
      v15(v7, v4);
      if (v27 == v10 && (v28 = [a1 indexPath], static IndexPath._unconditionallyBridgeFromObjectiveC(_:)(), v28, v29 = IndexPath.section.getter(), v15(v7, v4), v29 >= 1))
      {
        v30 = [a1 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v31 = IndexPath.section.getter();
        v15(v7, v4);
        if (__OFSUB__(v31, 1))
        {
          __break(1u);
        }

        else
        {
          [v2 _layoutFrameForSection:v31 - 1];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          [v2 bounds];
          MinY = CGRectGetMinY(v63);
          v64.origin.x = v33;
          v64.origin.y = v35;
          v64.size.width = v37;
          v64.size.height = v39;
          if (CGRectGetMaxY(v64) < MinY || ([a1 frame], v41 = CGRectGetMinY(v65), objc_msgSend(v2, "bounds"), v41 < CGRectGetMinY(v66)))
          {
            [v2 bounds];
            CGRectGetMinY(v67);
            [a1 frame];
            [a1 setFrame:?];
          }
        }
      }

      else
      {
        v42 = [a1 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = IndexPath.section.getter();
        v15(v7, v4);
        if (v10 < v43)
        {
          v44 = _UICollectionViewListLayoutElementKindSectionHeader;
          IndexPath.init(item:section:)();
          v45 = IndexPath._bridgeToObjectiveC()().super.isa;
          v15(v7, v4);
          v46 = [v2 layoutAttributesForSupplementaryViewOfKind:v44 atIndexPath:v45];

          if (v46)
          {
            v47 = [a1 indexPath];
            static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

            v48 = IndexPath.section.getter();
            v15(v7, v4);
            [v2 _layoutFrameForSection:v48];
            v50 = v49;
            v52 = v51;
            v54 = v53;
            v56 = v55;
            [a1 frame];
            v57 = CGRectGetMinY(v68);
            [v2 bounds];
            v58 = v57 - CGRectGetMinY(v69);
            [v46 frame];
            if (v58 < CGRectGetHeight(v70))
            {
              [v2 bounds];
              CGRectGetMinY(v71);
              [v46 frame];
              CGRectGetHeight(v72);
              [a1 frame];
              [a1 setFrame:?];
            }

            v73.origin.x = v50;
            v73.origin.y = v52;
            v73.size.width = v54;
            v73.size.height = v56;
            MaxY = CGRectGetMaxY(v73);
            [a1 frame];
            if (MaxY < CGRectGetMaxY(v74))
            {
              v75.origin.x = v50;
              v75.origin.y = v52;
              v75.size.width = v54;
              v75.size.height = v56;
              CGRectGetMaxY(v75);
              [a1 frame];
              [a1 frame];
              [a1 setFrame:?];
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10056BE24(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v46 = type metadata accessor for IndexPath();
  v10 = *(v46 - 8);
  __chkstk_darwin(v46);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s19CompositionalLayoutCMa();
  v48.receiver = v4;
  v48.super_class = v13;
  v14 = objc_msgSendSuper2(&v48, "layoutAttributesForElementsInRect:", a1, a2, a3, a4);
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  sub_10056CA5C();
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v16;
  v17 = *&v5[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource];
  if (v17)
  {
    v18 = v17;
    v45 = sub_1004357B8(5u);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      if (v16 >> 62)
      {
        v21 = _CocoaArrayWrapper.endIndex.getter();
        if (v21)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
LABEL_6:
          v44 = v5;
          if (v21 < 1)
          {
            __break(1u);
LABEL_34:
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_32:
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            return v49;
          }

          v47 = 0;
          v22 = 0;
          v23 = _UICollectionViewListLayoutElementKindSectionHeader;
          v42 = v10;
          v43 = (v10 + 8);
          while (1)
          {
            v24 = (v16 & 0xC000000000000001) != 0 ? sub_1007E9C00(v22, v16) : *(v16 + 8 * v22 + 32);
            v25 = v24;
            v26 = [v24 representedElementKind];
            if (!v26)
            {
              break;
            }

            v27 = v26;
            v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v30 = v29;

            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (!v30)
            {
              goto LABEL_9;
            }

            if (v28 == v31 && v30 == v32)
            {

LABEL_23:
              v35 = [v25 indexPath];
              static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

              v36 = IndexPath.section.getter();
              (*v43)(v12, v46);
              v47 |= v36 == v45;
              sub_10056B6D0(v25);
              goto LABEL_10;
            }

            v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v34)
            {
              goto LABEL_23;
            }

LABEL_10:
            ++v22;

            if (v21 == v22)
            {
              v5 = v44;
              v10 = v42;
              if ((v47 & 1) == 0)
              {
LABEL_30:
                v38 = v23;
                IndexPath.init(item:section:)();
                isa = IndexPath._bridgeToObjectiveC()().super.isa;
                (*(v10 + 8))(v12, v46);
                v40 = [v5 layoutAttributesForSupplementaryViewOfKind:v38 atIndexPath:isa];

                if (v40)
                {
                  v5 = v40;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_34;
                }
              }

              return v16;
            }
          }

          static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:

          goto LABEL_10;
        }
      }

      v23 = _UICollectionViewListLayoutElementKindSectionHeader;
      goto LABEL_30;
    }
  }

  return v16;
}

id sub_10056C808(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_upNextHeaderMaxY] = 0;
  *&v4[OBJC_IVAR____TtCC5Music29NowPlayingQueueViewController19CompositionalLayout_dataSource] = 0;
  if (a2)
  {
    v12[4] = a2;
    v12[5] = a3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_1005A63A8;
    v12[3] = &unk_1010B2B48;
    v8 = _Block_copy(v12);
  }

  else
  {
    v8 = 0;
  }

  v9 = _s19CompositionalLayoutCMa();
  v13.receiver = v4;
  v13.super_class = v9;
  v10 = objc_msgSendSuper2(&v13, "initWithSection:sectionProvider:configuration:", a1, v8, a4);

  sub_100020438(a2);
  _Block_release(v8);
  return v10;
}

id sub_10056C9C4()
{
  v2.receiver = v0;
  v2.super_class = _s19CompositionalLayoutCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10056CA2C()
{
  result = swift_slowAlloc();
  qword_1011952C0 = result;
  return result;
}

unint64_t sub_10056CA5C()
{
  result = qword_10119E3E0;
  if (!qword_10119E3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10119E3E0);
  }

  return result;
}

uint64_t sub_10056CAE4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&unk_101184840);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000089F8(v2, &v13 - v9, &unk_101184840);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_10003D17C(v10, a1, &unk_101184290);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10056CCEC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1000089F8(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_10056CFDC()
{
  v1 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__artworkInfo;
  v2 = sub_10010FC20(&qword_1011955C8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__videoArtwork;
  v4 = sub_10010FC20(&qword_1011955C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100020438(*(v0 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction));

  return swift_deallocClassInstance();
}

void sub_10056D10C()
{
  sub_10056D40C(319, &qword_101195348, type metadata accessor for ArtworkImage.Info, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_10056D210();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10056D210()
{
  if (!qword_101195350)
  {
    sub_1001109D0(&unk_101192950);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_101195350);
    }
  }
}

void sub_10056D2BC()
{
  sub_10056D378();
  if (v0 <= 0x3F)
  {
    sub_10056D40C(319, &unk_1011954D0, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10056D378()
{
  if (!qword_1011954C8)
  {
    _s15FloatingArtworkV10DataSourceCMa(255);
    sub_10056F084(&unk_10119E420, _s15FloatingArtworkV10DataSourceCMa);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1011954C8);
    }
  }
}

void sub_10056D40C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10056D48C@<X0>(uint64_t *a1@<X8>)
{
  _s15FloatingArtworkV10DataSourceCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10056D4CC@<X0>(uint64_t a1@<X8>)
{
  v194 = a1;
  v192 = sub_10010FC20(&qword_101195508);
  __chkstk_darwin(v192);
  v193 = &v140 - v2;
  v151 = type metadata accessor for PlainButtonStyle();
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v145 = &v140 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_10010FC20(&qword_101195510);
  v142 = *(v147 - 8);
  __chkstk_darwin(v147);
  v140 = &v140 - v4;
  v148 = sub_10010FC20(&qword_101195518);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v141 = &v140 - v5;
  v143 = sub_10010FC20(&qword_101195520);
  __chkstk_darwin(v143);
  v144 = &v140 - v6;
  v191 = sub_10010FC20(&qword_101195528);
  __chkstk_darwin(v191);
  v150 = &v140 - v7;
  v8 = sub_10010FC20(&qword_101195530);
  __chkstk_darwin(v8 - 8);
  v190 = &v140 - v9;
  v10 = type metadata accessor for LayoutDirection();
  v186 = *(v10 - 8);
  v187 = v10;
  __chkstk_darwin(v10);
  v185 = &v140 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v184 = &v140 - v13;
  v197 = type metadata accessor for AccessibilityTraits();
  v199 = *(v197 - 8);
  __chkstk_darwin(v197);
  v189 = &v140 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessibilityChildBehavior();
  v182 = *(v15 - 8);
  v183 = v15;
  __chkstk_darwin(v15);
  v181 = &v140 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101184060);
  __chkstk_darwin(v17 - 8);
  v198 = (&v140 - v18);
  v201 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v201);
  v164 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v200 = &v140 - v21;
  __chkstk_darwin(v22);
  v160 = (&v140 - v23);
  __chkstk_darwin(v24);
  v26 = &v140 - v25;
  v27 = sub_10010FC20(&unk_10118A5E0);
  __chkstk_darwin(v27 - 8);
  v29 = &v140 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v140 - v31;
  v33 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v33 - 8);
  v35 = &v140 - v34;
  v36 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v36 - 8);
  v38 = &v140 - v37;
  v161 = type metadata accessor for ArtworkMotionView();
  __chkstk_darwin(v161);
  v159 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_10010FC20(&qword_101195538);
  v166 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = &v140 - v40;
  v171 = sub_10010FC20(&qword_101195540);
  v169 = *(v171 - 8);
  __chkstk_darwin(v171);
  v167 = &v140 - v41;
  v42 = sub_10010FC20(&qword_101195548);
  v172 = *(v42 - 8);
  v173 = v42;
  __chkstk_darwin(v42);
  v170 = &v140 - v43;
  v174 = sub_10010FC20(&qword_101195550);
  __chkstk_darwin(v174);
  v175 = &v140 - v44;
  v177 = sub_10010FC20(&qword_101195558);
  __chkstk_darwin(v177);
  v176 = &v140 - v45;
  v46 = sub_10010FC20(&qword_101195560);
  __chkstk_darwin(v46 - 8);
  v178 = &v140 - v47;
  v179 = sub_10010FC20(&qword_101195568);
  __chkstk_darwin(v179);
  v180 = &v140 - v48;
  v195 = sub_10010FC20(&qword_101195570);
  __chkstk_darwin(v195);
  v196 = &v140 - v49;
  v188 = v1;
  v50 = *(v1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v162 = v38;
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  v202 = v50;
  static Published.subscript.getter();

  sub_1000089F8(v26, v32, &unk_10118A5E0);
  sub_10056F770(v26, type metadata accessor for ArtworkImage.Info);
  v51 = type metadata accessor for ArtworkImage.ViewModel(0);
  v52 = *(*(v51 - 8) + 48);
  if (v52(v32, 1, v51) == 1)
  {
    sub_1000095E8(v32, &unk_10118A5E0);
    v53 = type metadata accessor for Artwork();
    (*(*(v53 - 8) + 56))(v35, 1, 1, v53);
  }

  else
  {
    v54 = type metadata accessor for Artwork();
    v55 = *(v54 - 8);
    (*(v55 + 16))(v35, v32, v54);
    sub_10056F770(v32, type metadata accessor for ArtworkImage.ViewModel);
    (*(v55 + 56))(v35, 0, 1, v54);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v56 = v160;
  static Published.subscript.getter();

  sub_1000089F8(v56, v29, &unk_10118A5E0);
  sub_10056F770(v56, type metadata accessor for ArtworkImage.Info);
  v57 = v52(v29, 1, v51);
  v58 = v198;
  v163 = v35;
  if (v57 == 1)
  {
    sub_1000095E8(v29, &unk_10118A5E0);
    v59 = type metadata accessor for Artwork.CropStyle();
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
  }

  else
  {
    sub_1000089F8(&v29[*(v51 + 20)], v198, &unk_101184060);
    sub_10056F770(v29, type metadata accessor for ArtworkImage.ViewModel);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v60 = v200;
  static Published.subscript.getter();

  v61 = v201;
  v62 = v60 + *(v201 + 28);
  v158 = *v62;
  v157 = *(v62 + 8);
  v156 = *(v62 + 16);
  v155 = *(v62 + 24);
  v154 = *(v62 + 32);
  v63 = *(v62 + 40);
  v152 = *(v62 + 41);
  v153 = v63;
  sub_10056F770(v60, type metadata accessor for ArtworkImage.Info);
  v64 = v161;
  v65 = *(v161 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  v66 = v164;
  static Published.subscript.getter();

  v67 = v159;
  sub_10056F7D0(v66 + *(v61 + 20), &v159[v65], type metadata accessor for ArtworkImage.Placeholder);
  sub_10056F770(v66, type metadata accessor for ArtworkImage.Info);
  v68 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v68 - 8) + 56))(v67 + v65, 0, 1, v68);
  v69 = v64[9];
  v70 = enum case for ArtworkImage.ReusePolicy.notReusableForDistinctItems(_:);
  v71 = type metadata accessor for ArtworkImage.ReusePolicy();
  (*(*(v71 - 8) + 104))(v67 + v69, v70, v71);
  sub_10003D17C(v162, v67, &unk_101192950);
  sub_10003D17C(v163, v67 + v64[5], &unk_101188920);
  sub_10003D17C(v198, v67 + v64[6], &unk_101184060);
  v72 = v67 + v64[7];
  *v72 = v158;
  *(v72 + 8) = v157;
  *(v72 + 16) = v156;
  *(v72 + 24) = v155;
  *(v72 + 32) = v154;
  v73 = v152;
  *(v72 + 40) = v153;
  *(v72 + 41) = v73;
  *(v67 + v64[10]) = 0;
  *(v67 + v64[11]) = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v160 = type metadata accessor for ArtworkImage.Info;
  sub_10056F770(v60, type metadata accessor for ArtworkImage.Info);
  v74 = sub_10056F084(&qword_101190498, type metadata accessor for ArtworkMotionView);
  v75 = v165;
  View.corner(_:)();
  sub_10056F770(v67, type metadata accessor for ArtworkMotionView);
  LODWORD(v198) = *(Border.artwork.unsafeMutableAddressor() + 16);
  swift_getKeyPath();
  swift_getKeyPath();

  v76 = v200;
  static Published.subscript.getter();

  sub_10056F770(v76, type metadata accessor for ArtworkImage.Info);
  *&v208[0] = v64;
  *(&v208[0] + 1) = v74;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v78 = v167;
  v79 = v168;
  View.border(_:corner:)();

  (*(v166 + 8))(v75, v79);
  v80 = v181;
  static AccessibilityChildBehavior.ignore.getter();
  *&v208[0] = v79;
  *(&v208[0] + 1) = OpaqueTypeConformance2;
  v81 = swift_getOpaqueTypeConformance2();
  v83 = v170;
  v82 = v171;
  View.accessibilityElement(children:)();
  (*(v182 + 8))(v80, v183);
  (*(v169 + 8))(v78, v82);
  v84 = v189;
  static AccessibilityTraits.isImage.getter();
  *&v208[0] = v82;
  *(&v208[0] + 1) = v81;
  swift_getOpaqueTypeConformance2();
  v85 = v175;
  v86 = v173;
  View.accessibilityAddTraits(_:)();
  v198 = *(v199 + 8);
  v199 += 8;
  (v198)(v84, v197);
  (*(v172 + 8))(v83, v86);
  v87 = AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor();
  v88 = *v87;
  v89 = v87[1];
  v90 = v87[2];
  v91 = v87[3];
  v92 = sub_10056F0CC();

  v93 = v176;
  View.accessibilityIdentifier(_:)(v88, v89, v90, v91, v174, v92);

  sub_1000095E8(v85, &qword_101195550);
  v94 = *(v188 + 16);
  v95 = *(v188 + 24);
  v96 = sub_10056F268();
  v97 = v178;
  v182 = v95;
  v183 = v94;
  View.accessibilityLabel(_:)(v94, v95, v177, v96);
  sub_1000095E8(v93, &qword_101195558);
  _s15FloatingArtworkVMa(0);
  v98 = v184;
  sub_10056CCEC(&qword_101194F38, &type metadata accessor for LayoutDirection, v184);
  v100 = v185;
  v99 = v186;
  v101 = v187;
  (*(v186 + 104))(v185, enum case for LayoutDirection.rightToLeft(_:), v187);
  LOBYTE(v94) = static LayoutDirection.== infix(_:_:)();
  v102 = *(v99 + 8);
  v102(v100, v101);
  v102(v98, v101);
  if (v94)
  {
    v103 = -1.0;
  }

  else
  {
    v103 = 1.0;
  }

  static UnitPoint.center.getter();
  v105 = v104;
  v107 = v106;
  v108 = v180;
  sub_10003D17C(v97, v180, &qword_101195560);
  v109 = v108 + *(v179 + 36);
  *v109 = v103;
  *(v109 + 8) = 0x3FF0000000000000;
  *(v109 + 16) = v105;
  *(v109 + 24) = v107;
  v110 = Radiosity.Specs.containerDetailHeaderArtwork.unsafeMutableAddressor();
  v111 = v110[3];
  v113 = *v110;
  v112 = v110[1];
  v208[2] = v110[2];
  v208[3] = v111;
  v208[0] = v113;
  v208[1] = v112;
  v114 = v110[7];
  v116 = v110[4];
  v115 = v110[5];
  v208[6] = v110[6];
  v208[7] = v114;
  v208[4] = v116;
  v208[5] = v115;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056F298(v208, v207);
  v117 = v200;
  v118 = v202;
  static Published.subscript.getter();

  v119 = v117 + *(v201 + 32);
  v120 = *v119;
  v121 = *(v119 + 8);
  v122 = *(v119 + 16);
  sub_10056F770(v117, v160);
  Radiosity.Specs.pathShadow(for:)(v120, v121, v122, v207);
  sub_10056F2F4(v208);
  sub_10056F348();
  v123 = v196;
  View.radiosity(specs:)(v207);
  sub_10056F2F4(v207);
  v124 = sub_1000095E8(v108, &qword_101195568);
  if (*(v118 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction))
  {
    v202 = *(v118 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction + 8);
    __chkstk_darwin(v124);
    *(&v140 - 2) = v123;
    v201 = v125;
    sub_100030444(v125);
    v200 = sub_10056F660();

    v126 = v140;
    Button.init(action:label:)();
    v127 = v145;
    PlainButtonStyle.init()();
    v128 = sub_10056F5FC();
    v129 = sub_10056F084(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    v130 = v141;
    v131 = v147;
    v132 = v84;
    v133 = v151;
    View.buttonStyle<A>(_:)();
    (*(v149 + 8))(v127, v133);
    (*(v142 + 8))(v126, v131);
    v203 = v131;
    v204 = v133;
    v205 = v128;
    v206 = v129;
    v134 = swift_getOpaqueTypeConformance2();
    v135 = v144;
    v136 = v148;
    View.accessibilityLabel(_:)(v183, v182, v148, v134);
    (*(v146 + 8))(v130, v136);
    static AccessibilityTraits.isImage.getter();
    sub_10056F4B4();
    v137 = v150;
    View.accessibilityAddTraits(_:)();
    (v198)(v132, v197);
    sub_1000095E8(v135, &qword_101195520);
    sub_1000089F8(v137, v193, &qword_101195528);
    swift_storeEnumTagMultiPayload();
    sub_10056F400(&qword_101195598, &qword_101195528, &unk_100ED36F0, sub_10056F4B4);
    v138 = v190;
    v123 = v196;
    _ConditionalContent<>.init(storage:)();
    sub_100020438(v201);
    sub_1000095E8(v137, &qword_101195528);
  }

  else
  {
    sub_1000089F8(v123, v193, &qword_101195570);
    swift_storeEnumTagMultiPayload();
    sub_10056F400(&qword_101195598, &qword_101195528, &unk_100ED36F0, sub_10056F4B4);
    sub_10056F660();
    v138 = v190;
    _ConditionalContent<>.init(storage:)();
  }

  sub_10003D17C(v138, v194, &qword_101195530);
  return sub_1000095E8(v123, &qword_101195570);
}

uint64_t sub_10056EE14(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_10056F7D0(a1, &v9 - v6, type metadata accessor for ArtworkImage.Info);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056F7D0(v7, v4, type metadata accessor for ArtworkImage.Info);

  static Published.subscript.setter();
  return sub_10056F770(v7, type metadata accessor for ArtworkImage.Info);
}

uint64_t sub_10056EF54(uint64_t a1)
{
  v2 = sub_10010FC20(&unk_101192950);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_1000089F8(a1, &v9 - v6, &unk_101192950);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v7, v4, &unk_101192950);

  static Published.subscript.setter();
  return sub_1000095E8(v7, &unk_101192950);
}

uint64_t sub_10056F084(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10056F0CC()
{
  result = qword_101195578;
  if (!qword_101195578)
  {
    sub_1001109D0(&qword_101195550);
    sub_1001109D0(&qword_101195540);
    sub_1001109D0(&qword_101195538);
    type metadata accessor for ArtworkMotionView();
    sub_10056F084(&qword_101190498, type metadata accessor for ArtworkMotionView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195578);
  }

  return result;
}

unint64_t sub_10056F348()
{
  result = qword_101195588;
  if (!qword_101195588)
  {
    sub_1001109D0(&qword_101195568);
    sub_10056F400(&qword_101195590, &qword_101195560, &unk_100ED3728, sub_10056F268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101195588);
  }

  return result;
}

uint64_t sub_10056F400(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    a4();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10056F4B4()
{
  result = qword_1011955A0;
  if (!qword_1011955A0)
  {
    sub_1001109D0(&qword_101195520);
    sub_1001109D0(&qword_101195510);
    type metadata accessor for PlainButtonStyle();
    sub_10056F5FC();
    sub_10056F084(&qword_10119A260, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10056F084(&qword_101181038, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955A0);
  }

  return result;
}

unint64_t sub_10056F5FC()
{
  result = qword_1011955A8;
  if (!qword_1011955A8)
  {
    sub_1001109D0(&qword_101195510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955A8);
  }

  return result;
}

unint64_t sub_10056F660()
{
  result = qword_1011955B0;
  if (!qword_1011955B0)
  {
    sub_1001109D0(&qword_101195570);
    sub_10056F348();
    sub_10056F6EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955B0);
  }

  return result;
}

unint64_t sub_10056F6EC()
{
  result = qword_1011955B8;
  if (!qword_1011955B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955B8);
  }

  return result;
}

uint64_t sub_10056F770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10056F7D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v32 = a1;
  v28 = type metadata accessor for ArtworkImage.Info(0);
  v5 = __chkstk_darwin(v28);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v26 - v7;
  v26 = sub_10010FC20(&qword_1011955C0);
  v9 = *(v26 - 8);
  __chkstk_darwin(v26);
  v11 = &v26 - v10;
  v12 = sub_10010FC20(&unk_101192950);
  v13 = __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v18 = OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource__videoArtwork;
  v19 = type metadata accessor for VideoArtwork();
  (*(*(v19 - 8) + 56))(v17, 1, 1, v19);
  sub_1000089F8(v17, v15, &unk_101192950);
  Published.init(initialValue:)();
  sub_1000095E8(v17, &unk_101192950);
  (*(v9 + 32))(v4 + v18, v11, v26);
  v20 = (v4 + OBJC_IVAR____TtCVV5Music15ContainerDetail15FloatingArtwork10DataSource_artworkAction);
  *v20 = 0;
  v20[1] = 0;
  sub_10056F7D0(v32, v8, type metadata accessor for ArtworkImage.Info);
  swift_beginAccess();
  sub_10056F7D0(v8, v27, type metadata accessor for ArtworkImage.Info);
  Published.init(initialValue:)();
  sub_10056F770(v8, type metadata accessor for ArtworkImage.Info);
  swift_endAccess();
  v21 = v29;
  sub_1000089F8(v29, v17, &unk_101192950);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v17, v15, &unk_101192950);

  static Published.subscript.setter();
  sub_1000095E8(v21, &unk_101192950);
  sub_10056F770(v32, type metadata accessor for ArtworkImage.Info);
  sub_1000095E8(v17, &unk_101192950);
  v22 = *v20;
  v23 = v30;
  v24 = v31;
  *v20 = v30;
  v20[1] = v24;
  sub_100030444(v23);
  sub_100020438(v22);
  return v4;
}

unint64_t sub_10056FBF0()
{
  result = qword_1011955D0;
  if (!qword_1011955D0)
  {
    sub_1001109D0(&qword_101195530);
    sub_10056F400(&qword_101195598, &qword_101195528, &unk_100ED36F0, sub_10056F4B4);
    sub_10056F660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011955D0);
  }

  return result;
}

id sub_10056FCA8()
{
  v1 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton);
  }

  else
  {
    v4 = sub_10056FD08();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10056FD08()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for UIButton.Configuration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v14[-v7];
  static UIButton.Configuration.plain()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIButton.Configuration.title.setter();
  sub_100009F78(0, &qword_101183A18);
  (*(v3 + 16))(v6, v8, v2);
  v9 = UIButton.init(configuration:primaryAction:)();
  v10._object = 0x8000000100E50010;
  v10._countAndFlagsBits = 0xD000000000000023;
  v11 = AccessibilityIdentifier.init(name:)(v10);
  v12 = UIView.withAccessibilityIdentifier(_:)(v11, *(&v11 + 1));

  (*(v3 + 8))(v8, v2);
  return v12;
}

id sub_10056FF60()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1002931A8();
  v6 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v5);
  v7 = [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton) isHidden];
  v8 = 0.0;
  if (v6)
  {
    if (!v7 || (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v5) & 1) != 0 && ![*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton) isHidden])
    {
      return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v8];
    }
  }

  else if ((v7 & 1) == 0)
  {
    return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v8];
  }

  v9 = sub_10056FCA8();
  UIButton.configuration.getter();

  v10 = type metadata accessor for UIButton.Configuration();
  if (!(*(*(v10 - 8) + 48))(v4, 1, v10))
  {
    UIButton.Configuration.contentInsets.getter();
    v8 = v11;
  }

  sub_1000095E8(v4, &unk_101183AB0);
  return [*(v1 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint) setConstant:v8];
}

void sub_1005700F4()
{
  if (*(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title + 8))
  {
    v1 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
    v2 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);

    [v2 setHidden:0];
    v3 = *(v0 + v1);
    v5 = String._bridgeToObjectiveC()();

    [v3 setText:v5];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel);

    [v4 setHidden:1];
  }
}

id sub_1005701F8()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint];
  if (v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32] == 255)
  {
    if (v1)
    {
      [v1 setConstant:16.0];
    }

    [*&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] removeFromSuperview];
    v9 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 deactivateConstraints:isa];

    v11 = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
    if (v11)
    {
      [v11 setActive:0];
    }

    result = *&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
    if (result)
    {

      return [result setActive:1];
    }
  }

  else
  {
    if (v1)
    {
      [v1 setConstant:12.0];
    }

    sub_1005705D8([*&v0[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] state]);
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_100575840;
    *(v4 + 24) = v3;
    v12[4] = sub_100029B94;
    v12[5] = v4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100029B9C;
    v12[3] = &unk_1010B2DA0;
    v5 = _Block_copy(v12);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

id sub_1005704A4(char *a1)
{
  v2 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  v3 = [*&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] superview];
  if (v3)
  {
  }

  else
  {
    [a1 addSubview:*&a1[v2]];
    v4 = objc_opt_self();
    sub_100009F78(0, &qword_1011838A0);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:isa];

    v6 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
    if (v6)
    {
      [v6 setActive:1];
    }

    v7 = *&a1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
    if (v7)
    {
      [v7 setActive:0];
    }
  }

  v8 = *&a1[v2];

  return [v8 layoutIfNeeded];
}

uint64_t sub_1005705D8(uint64_t a1)
{
  v116 = a1;
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v98[-v3];
  v5 = sub_10010FC20(&qword_101195688);
  v114 = *(v5 - 8);
  __chkstk_darwin(v5);
  v108 = &v98[-v6];
  v7 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v7 - 8);
  v111 = &v98[-v8];
  v9 = sub_10010FC20(&qword_101195690);
  v10 = __chkstk_darwin(v9 - 8);
  v113 = &v98[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v115 = &v98[-v12];
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v14 = type metadata accessor for AttributedString();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v112 = &v98[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v19 = &v98[-v18];
  v110 = type metadata accessor for Locale();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v21 = &v98[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v22 - 8);
  v24 = &v98[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v25 - 8);
  v27 = &v98[-v26];
  v130 = type metadata accessor for AttributeContainer();
  v28 = __chkstk_darwin(v130);
  v29 = __chkstk_darwin(v28);
  result = __chkstk_darwin(v29);
  v132 = &v98[-v34];
  v35 = &v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
  v36 = v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32];
  if (v36 != 255)
  {
    v117 = v24;
    v37 = v4;
    v118 = v21;
    v119 = v1;
    v106 = v5;
    v105 = v33;
    v121 = v32;
    v107 = v19;
    v123 = v15;
    v38 = *v35;
    v39 = v35[1];
    v40 = v35[2];
    v41 = v35[3];
    v127 = v31;
    v128 = v38;
    v125 = v14;
    v126 = v39;
    v129 = v40;
    v131 = v36;
    sub_1005753B0(v38, v39, v40, v41, v36);
    AttributeContainer.init()();
    v42 = objc_opt_self();
    v133[0] = [v42 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v43 = sub_10016D0B4();
    AttributeContainer.subscript.setter();
    v44 = objc_opt_self();
    v133[0] = [v44 secondaryLabelColor];
    v45 = sub_1001D29B8();
    AttributeContainer.subscript.setter();
    v124 = v37;
    v122 = v41;
    v120 = v44;
    if (v131)
    {
      v46 = v132;
      v47 = v27;
      if (v131 == 1)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v48._countAndFlagsBits = 0x2068746977;
        v48._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v48);
        v133[0] = v128;
        String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
        v49._countAndFlagsBits = 0x656E657473694C20;
        v49._object = 0xEC00000029732872;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v49);
        String.LocalizationValue.init(stringInterpolation:)();
      }

      else
      {
        String.LocalizationValue.init(stringLiteral:)();
      }

      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v50 = v127;
      v51 = v46;
      v52 = v130;
      (*(v127 + 16))(v121, v51, v130);
      AttributedString.init(_:attributes:)();
      (*(v123 + 56))(v47, 0, 1, v125);
      v55 = v119;
      swift_beginAccess();
      UIButton.Configuration.attributedTitle.setter();
      swift_endAccess();
      v53 = [v120 clearColor];
      swift_beginAccess();
      v54 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v54(v133, 0);
      UIButton.Configuration.titleLineBreakMode.setter();
      swift_endAccess();
      [*&v55[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] setEnabled:0];
      v60 = v124;
      v61 = v126;
    }

    else
    {
      v100 = v43;
      v101 = UIFontTextStyleFootnote;
      v102 = v42;
      v104 = v45;
      v55 = v119;
      v56 = [v119 traitCollection];
      sub_100050078();
      v57 = UITraitCollection.subscript.getter();

      v99 = v57;
      if (!v129 || (v57 & 1) != 0)
      {
        v62 = [v44 secondaryLabelColor];
        v58 = v62;
        v63 = 0.45;
        if (v116)
        {
          v63 = 0.25;
        }

        if ((v57 & 1) == 0)
        {
          v63 = 1.0;
        }

        v59 = [v62 colorWithAlphaComponent:v63];
      }

      else
      {
        v58 = [v44 tintColor];
        v59 = [v58 colorWithAlphaComponent:1.0];
      }

      v64 = v59;

      v133[0] = v64;
      AttributeContainer.subscript.setter();
      v65 = v126;
      v66 = HIBYTE(v126) & 0xF;
      v67 = v128;
      if ((v126 & 0x2000000000000000) == 0)
      {
        v66 = v128 & 0xFFFFFFFFFFFFLL;
      }

      if (v66)
      {
        String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v68._countAndFlagsBits = 0x206D6F7246;
        v68._object = 0xE500000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v68);
        v69._countAndFlagsBits = v67;
        v69._object = v65;
        String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v69);
        v70._countAndFlagsBits = 0;
        v70._object = 0xE000000000000000;
        String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v70);
        String.LocalizationValue.init(stringInterpolation:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
      }

      v71 = v121;
      v118 = *(v127 + 16);
      v118(v121, v132, v130);
      AttributedString.init(_:attributes:)();
      v103 = v27;
      if (v129)
      {
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        v133[0] = String.init(localized:table:bundle:locale:comment:)();
        v133[1] = v72;
        v73 = v111;
        (*(v109 + 56))(v111, 1, 1, v110);
        v74 = sub_100575400();
        sub_100009838();
        v75 = v115;
        v117 = v74;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_1000095E8(v73, &unk_101182EA0);
        v76 = v105;
        AttributeContainer.init()();
        v133[0] = [v102 preferredFontForTextStyle:v101];
        AttributeContainer.subscript.setter();
        v77 = [v120 secondaryLabelColor];
        v78 = v77;
        v79 = 0.45;
        if (v116)
        {
          v79 = 0.25;
        }

        if ((v99 & 1) == 0)
        {
          v79 = 1.0;
        }

        v80 = [v77 colorWithAlphaComponent:v79];

        v133[0] = v80;
        AttributeContainer.subscript.setter();
        v118(v71, v76, v130);
        v81 = v112;
        AttributedString.init(_:attributes:)();
        v82 = v113;
        sub_100575458(v75, v113);
        if ((*(v114 + 48))(v82, 1, v106) == 1)
        {
          v83 = v123;
          v84 = v125;
          (*(v123 + 8))(v81, v125);
          (*(v127 + 8))(v76, v130);
          sub_1000095E8(v75, &qword_101195690);
          sub_1000095E8(v82, &qword_101195690);
          v60 = v124;
          v61 = v126;
          v85 = v84;
        }

        else
        {
          v88 = v108;
          sub_1005754C8(v82, v108);
          sub_100575538();
          v89 = v125;
          AttributedString.replaceSubrange<A, B>(_:with:)();
          sub_1000095E8(v88, &qword_101195688);
          v83 = v123;
          (*(v123 + 8))(v81, v89);
          (*(v127 + 8))(v76, v130);
          sub_1000095E8(v75, &qword_101195690);
          v60 = v124;
          v61 = v126;
          v85 = v89;
        }
      }

      else
      {
        v86 = [v120 clearColor];
        swift_beginAccess();
        v87 = UIButton.Configuration.background.modify();
        UIBackgroundConfiguration.backgroundColor.setter();
        v87(v133, 0);
        v85 = v125;
        swift_endAccess();
        v83 = v123;
        v60 = v124;
        v61 = v126;
      }

      v90 = v129 != 0;
      swift_beginAccess();
      UIButton.Configuration.titleLineBreakMode.setter();
      swift_endAccess();
      [*&v55[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] setEnabled:v90];
      v91 = v103;
      v92 = v107;
      (*(v83 + 16))(v103, v107, v85);
      (*(v83 + 56))(v91, 0, 1, v85);
      swift_beginAccess();
      UIButton.Configuration.attributedTitle.setter();
      swift_endAccess();
      (*(v83 + 8))(v92, v85);
      v50 = v127;
      v52 = v130;
    }

    v93 = *&v55[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
    v94 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration;
    swift_beginAccess();
    v95 = type metadata accessor for UIButton.Configuration();
    v96 = *(v95 - 8);
    (*(v96 + 16))(v60, &v55[v94], v95);
    (*(v96 + 56))(v60, 0, 1, v95);
    v97 = v93;
    UIButton.configuration.setter();

    sub_100309C54(v128, v61, v129, v122, v131);
    return (*(v50 + 8))(v132, v52);
  }

  return result;
}

void sub_100571754(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v10 - 8);
  v221 = &v218 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v229 = &v218 - v13;
  v14 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for UIButton.Configuration();
  *&v226 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v218 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  v19 = type metadata accessor for BackdropView();
  v20 = objc_allocWithZone(v19);
  *&v4[v18] = sub_100453A34();
  v21 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView;
  v22 = objc_allocWithZone(v19);
  *&v4[v21] = sub_100453A34();
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView] = 0;
  *&v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView] = 0;
  v4[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState] = 0;
  v23 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  *&v5[v23] = [objc_allocWithZone(UIButton) init];
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton] = 0;
  v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState] = 0;
  v24 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = MPPlaybackUserDefaults.transitionStyleForCatalogPlayback.getter();

  *&v5[v24] = v26;
  v27 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  *&v5[v27] = [objc_allocWithZone(UIButton) init];
  v28 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_title];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = -1;
  v30 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonAction];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_clearButtonAction];
  *v31 = 0;
  v31[1] = 0;
  v32 = &v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonAction];
  *v32 = 0;
  v32[1] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint] = 0;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint] = 0;
  v33 = *&v5[v21];
  LOBYTE(v27) = v33[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType];
  v33[OBJC_IVAR____TtC5Music12BackdropView_gradientMaskType] = 1;
  v34 = v33;
  sub_100453194(v27);

  v35 = [objc_allocWithZone(UILabel) init];
  v36._object = 0x8000000100E50070;
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v37 = AccessibilityIdentifier.init(name:)(v36);
  v38 = UIView.withAccessibilityIdentifier(_:)(v37, *(&v37 + 1));

  v39 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] = v38;
  v40 = objc_opt_self();
  v41 = v38;
  v42 = [v40 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v41 setFont:v42];

  [*&v5[v39] setAdjustsFontForContentSizeCategory:1];
  v43 = *&v5[v39];
  v228 = UIContentSizeCategoryExtraExtraExtraLarge;
  [v43 setMaximumContentSizeCategory:?];
  [*&v5[v39] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v39] setNumberOfLines:0];
  LODWORD(v44) = 1132068864;
  [*&v5[v39] setContentCompressionResistancePriority:0 forAxis:v44];
  [*&v5[v39] setSizingRule:1];
  [*&v5[v39] _setWantsContentAwareTypesettingLanguage:1];
  static UIButton.Configuration.plain()();
  v45 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration;
  v46 = v226;
  (*(v226 + 32))(&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConfiguration], v17, v15);
  swift_beginAccess();
  UIButton.Configuration.contentInsets.setter();
  swift_endAccess();
  static UIBackgroundConfiguration.clear()();
  swift_beginAccess();
  UIButton.Configuration.background.setter();
  swift_endAccess();
  v47 = [objc_opt_self() buttonWithType:1];
  v48._countAndFlagsBits = 0xD000000000000020;
  v48._object = 0x8000000100E50090;
  v49 = AccessibilityIdentifier.init(name:)(v48);
  v50 = UIView.withAccessibilityIdentifier(_:)(v49, *(&v49 + 1));

  v51 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  *&v5[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton] = v50;
  [v50 setClipsToBounds:1];
  v52 = *&v5[v51];
  v53 = &v5[v45];
  v54 = v229;
  (*(v46 + 16))(v229, v53, v15);
  v55 = *(v46 + 56);
  v220 = v15;
  v55(v54, 0, 1, v15);
  v56 = v52;
  UIButton.configuration.setter();

  [*&v5[v51] setTintAdjustmentMode:1];
  [*&v5[v51] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v5[v51] setContentVerticalAlignment:3];
  [*&v5[v51] setContentHorizontalAlignment:4];
  v57 = [*&v5[v51] titleLabel];
  [v57 setAdjustsFontForContentSizeCategory:1];

  v58 = [*&v5[v51] titleLabel];
  if (v58)
  {
    v59 = v58;
    v60 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v59 setFont:v60];
  }

  v61 = [*&v5[v51] titleLabel];
  [v61 setSizingRule:1];

  v62 = [*&v5[v51] titleLabel];
  [v62 _setWantsContentAwareTypesettingLanguage:1];

  v63 = v228;
  [*&v5[v51] setMaximumContentSizeCategory:v228];
  LODWORD(v64) = 1132068864;
  [*&v5[v51] setContentCompressionResistancePriority:0 forAxis:v64];
  v65 = type metadata accessor for NowPlayingQueueHeaderView();
  v236.receiver = v5;
  v236.super_class = v65;
  v66 = objc_msgSendSuper2(&v236, "initWithFrame:", a1, a2, a3, a4);
  v67 = sub_10056FCA8();
  v68 = [v67 titleLabel];

  if (v68)
  {
    v69 = [*&v66[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel] font];
    if (!v69)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v70 = v69;
    [v69 pointSize];
    v72 = v71;

    v73 = [v40 systemFontOfSize:v72 weight:UIFontWeightRegular];
    [v68 setFont:v73];
  }

  v74 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton;
  [*&v66[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v66[v74] setContentVerticalAlignment:3];
  LODWORD(v75) = 1148846080;
  [*&v66[v74] setContentHuggingPriority:0 forAxis:v75];
  [*&v66[v74] setMaximumContentSizeCategory:v63];
  [*&v66[v74] setHidden:1];
  v76 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton;
  v77 = *&v66[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v234 = sub_1005757A0;
  v235 = v78;
  aBlock = _NSConcreteStackBlock;
  v231 = 1107296256;
  v232 = sub_10027D328;
  v233 = &unk_1010B2CD8;
  v79 = _Block_copy(&aBlock);
  v80 = v66;
  v81 = v77;

  v229 = v66;
  [v81 setConfigurationUpdateHandler:v79];
  _Block_release(v79);

  [*&v229[v76] setHidden:1];
  v82 = *&v229[v76];
  v83 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_100009F78(0, &qword_101183A18);
  v85 = v82;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757A8, v83, v84);

  [*&v229[v76] setNeedsUpdateConfiguration];
  v86 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton;
  v87 = *&v80[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
  v88 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v234 = sub_1005757CC;
  v235 = v88;
  aBlock = _NSConcreteStackBlock;
  v231 = 1107296256;
  v232 = sub_10027D328;
  v233 = &unk_1010B2D00;
  v89 = _Block_copy(&aBlock);
  v90 = v87;

  v91 = v229;
  [v90 setConfigurationUpdateHandler:v89];
  _Block_release(v89);

  [*&v80[v86] setHidden:1];
  v92 = *&v80[v86];
  v93 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = v92;
  v224 = v84;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757D4, v93, v84);

  [*&v80[v86] setNeedsUpdateConfiguration];
  v95 = [objc_allocWithZone(UIView) init];
  v96 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView;
  v97 = *&v80[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView];
  *&v80[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView] = v95;

  v228 = sub_10010FC20(&qword_101183990);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100EBDC10;
  v225 = v74;
  v99 = *&v91[v74];
  *(v98 + 32) = v99;
  v100 = *&v80[v96];
  if (!v100)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(v98 + 40) = v100;
  v101 = *&v91[v76];
  *(v98 + 48) = v101;
  v218 = v86;
  v102 = *&v80[v86];
  *(v98 + 56) = v102;
  v103 = objc_allocWithZone(UIStackView);
  sub_100009F78(0, &qword_101181620);
  v104 = v101;
  v105 = v102;
  v106 = v100;
  v107 = v99;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v109 = [v103 initWithArrangedSubviews:isa];

  v110 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView;
  v111 = *&v80[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView];
  *&v80[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackView] = v109;
  v112 = v109;

  if (!v112)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v112 setAxis:0];

  v113 = *&v80[v110];
  if (!v113)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v113 setAlignment:3];
  v114 = *&v80[v110];
  if (!v114)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v114 setSpacing:12.0];
  v115 = *&v80[v110];
  if (!v115)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
  v116 = *&v80[v110];
  if (!v116)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v117 = [v116 layer];
  [v117 setAllowsGroupBlending:0];

  v118 = *&v229[v225];
  v119 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v120 = v80;
  v121 = v118;
  ControlEventHandling<>.on(_:handler:)(64, sub_1005757F8, v119, v224);

  v122 = [v120 layer];
  [v122 setAllowsGroupBlending:0];

  v123 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView;
  [*&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_backdropView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [v120 addSubview:*&v120[v123]];
  [v120 addSubview:*&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_gradientView]];
  if (!*&v80[v110])
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v120 addSubview:?];
  v124 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel;
  [v120 addSubview:*&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabel]];
  v227 = v124;
  v125 = [*&v120[v124] bottomAnchor];
  v126 = [v120 bottomAnchor];
  v127 = [v125 constraintEqualToAnchor:v126 constant:-15.0];

  v128 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint;
  v129 = *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint];
  *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelBottomAnchorConstraint] = v127;

  v130 = *&v120[v128];
  if (v130)
  {
    [v130 setActive:1];
  }

  v131 = [*&v120[v227] topAnchor];
  v132 = [v120 topAnchor];
  v133 = [v131 constraintEqualToAnchor:v132 constant:16.0];

  v134 = *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint];
  v219 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint;
  *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_titleLabelTopConstraint] = v133;

  v135 = *&v80[v110];
  if (!v135)
  {
    goto LABEL_32;
  }

  v223 = v110;
  v222 = v76;
  v136 = [v135 trailingAnchor];
  v137 = [v120 layoutMarginsGuide];
  v138 = [v137 trailingAnchor];

  v139 = *&v229[v225];
  v140 = v221;
  UIButton.configuration.getter();

  v141 = 0.0;
  if (!(*(v226 + 48))(v140, 1, v220))
  {
    UIButton.Configuration.contentInsets.getter();
    v141 = v142;
  }

  sub_1000095E8(v140, &unk_101183AB0);
  v143 = [v136 constraintEqualToAnchor:v138 constant:v141];

  v144 = *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint];
  *&v226 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint;
  *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewTrailingConstraint] = v143;

  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_100EBEEA0;
  v146 = [*&v120[v123] topAnchor];
  v147 = [v120 topAnchor];
  v148 = [v146 constraintEqualToAnchor:v147];

  *(v145 + 32) = v148;
  v149 = [*&v120[v123] leadingAnchor];
  v150 = [v120 leadingAnchor];
  v151 = [v149 constraintEqualToAnchor:v150];

  *(v145 + 40) = v151;
  v152 = [*&v120[v123] trailingAnchor];
  v153 = [v120 trailingAnchor];
  v154 = [v152 constraintEqualToAnchor:v153];

  *(v145 + 48) = v154;
  v155 = [*&v120[v123] bottomAnchor];
  v156 = [v120 bottomAnchor];
  v157 = [v155 constraintEqualToAnchor:v156];

  *(v145 + 56) = v157;
  v158 = *&v120[v219];
  if (!v158)
  {
    goto LABEL_33;
  }

  *(v145 + 64) = v158;
  v159 = v227;
  v160 = *&v120[v227];
  v161 = v158;
  v162 = [v160 leadingAnchor];
  v163 = [v120 layoutMarginsGuide];
  v164 = [v163 leadingAnchor];

  v165 = [v162 constraintEqualToAnchor:v164];
  *(v145 + 72) = v165;
  v166 = [*&v120[v159] trailingAnchor];
  v167 = *&v80[v223];
  if (!v167)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v168 = [v167 leadingAnchor];
  v169 = [v166 constraintEqualToAnchor:v168 constant:-10.0];

  *(v145 + 80) = v169;
  v170 = *&v120[v226];
  if (!v170)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v171 = objc_opt_self();
  *(v145 + 88) = v170;
  sub_100009F78(0, &qword_1011838A0);
  v172 = v170;
  v173 = Array._bridgeToObjectiveC()().super.isa;

  [v171 activateConstraints:v173];

  v174 = swift_allocObject();
  v226 = xmmword_100EBE270;
  *(v174 + 16) = xmmword_100EBE270;
  v175 = v222;
  v176 = v229;
  v177 = [*&v229[v222] widthAnchor];
  v178 = [v177 constraintGreaterThanOrEqualToConstant:72.0];

  *(v174 + 32) = v178;
  v179 = [*&v176[v175] heightAnchor];
  v180 = [v179 constraintEqualToConstant:38.0];

  *(v174 + 40) = v180;
  v181 = *&v80[v223];
  if (!v181)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v182 = [v181 centerYAnchor];
  v183 = [v120 centerYAnchor];
  v184 = [v182 constraintEqualToAnchor:v183];

  *(v174 + 48) = v184;
  v185 = Array._bridgeToObjectiveC()().super.isa;

  [v171 activateConstraints:v185];

  v186 = sub_1002931A8();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v186))
  {
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_100EBC6D0;
    v188 = v218;
    v189 = [*&v80[v218] widthAnchor];
    v190 = [v189 constraintGreaterThanOrEqualToConstant:72.0];

    *(v187 + 32) = v190;
    v191 = [*&v80[v188] heightAnchor];
    v192 = [*&v229[v222] heightAnchor];
    v193 = [v191 constraintEqualToAnchor:v192];

    *(v187 + 40) = v193;
    v194 = Array._bridgeToObjectiveC()().super.isa;

    [v171 activateConstraints:v194];
  }

  v195 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton;
  v196 = *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
  v197 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v198 = v196;
  ControlEventHandling<>.on(_:handler:)(64, sub_10057581C, v197, v224);

  v199 = *&v120[v195];
  v200 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v201 = v199;

  v234 = sub_100575824;
  v235 = v200;
  aBlock = _NSConcreteStackBlock;
  v231 = 1107296256;
  v232 = sub_10027D328;
  v233 = &unk_1010B2D28;
  v202 = _Block_copy(&aBlock);

  [v201 setConfigurationUpdateHandler:v202];
  _Block_release(v202);

  v203 = swift_allocObject();
  *(v203 + 16) = v226;
  v204 = [*&v120[v195] topAnchor];
  v205 = v227;
  v206 = [*&v120[v227] bottomAnchor];
  v207 = [v204 constraintEqualToAnchor:v206 constant:1.0];

  *(v203 + 32) = v207;
  v208 = [*&v120[v195] leadingAnchor];
  v209 = [*&v120[v205] leadingAnchor];
  v210 = [v208 constraintEqualToAnchor:v209];

  *(v203 + 40) = v210;
  v211 = [*&v120[v195] trailingAnchor];
  v212 = [*&v120[v205] trailingAnchor];
  v213 = [v211 constraintEqualToAnchor:v212];

  *(v203 + 48) = v213;
  *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonConstraints] = v203;

  v214 = [*&v120[v195] bottomAnchor];
  v215 = [v120 bottomAnchor];

  v216 = [v214 constraintEqualToAnchor:v215 constant:-11.0];
  v217 = *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint];
  *&v120[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButtonBottomAnchorConstraint] = v216;

  sub_100574854();
}

uint64_t sub_1005730E0(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v49 - v3;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v54 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v53 = result;
  if (result)
  {
    v51 = v11;
    v52 = v4;
    sub_100009F78(0, &qword_101183A00);
    v15 = static UIFont.preferredFont(forTextStyle:weight:)();
    v16 = objc_opt_self();
    v17 = [v16 configurationWithFont:v15];

    v18 = [v16 configurationWithScale:2];
    v19 = [v17 configurationByApplyingConfiguration:v18];

    static UIButton.Configuration.plain()();
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() systemImageNamed:v20];

    UIButton.Configuration.image.setter();
    v50 = v19;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v8 + 104))(v10, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v7);
    UIButton.Configuration.cornerStyle.setter();
    v22 = [a1 imageView];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 superview];

      if (v24)
      {
        v25 = [v24 layer];

        [v25 setAllowsGroupBlending:0];
      }
    }

    v26 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState;
    v27 = v53;
    v28 = v53[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoPlayButtonState];
    v29 = [a1 imageView];
    if (v28 == 1)
    {
      if (v29)
      {
        v30 = v29;
        v31 = [v29 layer];

        [v31 setCompositingFilter:kCAFilterDestOut];
      }

      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v32 = qword_101218938;
      v33 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v33(v55, 0);
      v34 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    else
    {
      if (v29)
      {
        v35 = v29;
        v36 = [v29 layer];

        [v36 setCompositingFilter:0];
      }

      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v37 = qword_101218930;
      v38 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v38(v55, 0);
      if (v27[v26] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v39 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v39 = &qword_101218940;
      }

      v40 = *v39;
      UIButton.Configuration.baseForegroundColor.setter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v41 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityValue:v41];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v42 = String._bridgeToObjectiveC()();

    [a1 setAccessibilityLabel:v42];

    v43 = AccessibilityIdentifier.nowPlayingAutoPlayButton.unsafeMutableAddressor();
    v44 = *v43;
    v45 = v43[1];
    sub_100009F78(0, &qword_101183A18);

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v44, v45);
    v46 = v54;
    v48 = v51;
    v47 = v52;
    (*(v54 + 16))(v52, v13, v51);
    (*(v46 + 56))(v47, 0, 1, v48);
    UIButton.configuration.setter();

    return (*(v46 + 8))(v13, v48);
  }

  return result;
}

uint64_t sub_1005738F4(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v50 - v3;
  v5 = type metadata accessor for AutomationSemantics();
  v57 = *(v5 - 8);
  v58 = v5;
  __chkstk_darwin(v5);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIButton.Configuration();
  v54 = *(v13 - 8);
  v55 = v13;
  __chkstk_darwin(v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v52 = v4;
    v53 = a1;
    sub_100009F78(0, &qword_101183A00);
    v18 = static UIFont.preferredFont(forTextStyle:weight:)();
    v19 = objc_opt_self();
    v20 = [v19 configurationWithFont:v18];

    v21 = [v19 configurationWithScale:2];
    v22 = [v20 configurationByApplyingConfiguration:v21];

    static UIButton.Configuration.plain()();
    v50 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle;
    if (*&v17[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionStyle] <= 1uLL)
    {
      v23 = String._bridgeToObjectiveC()();
      v24 = [objc_opt_self() imageNamed:v23];
    }

    UIButton.Configuration.image.setter();
    v51 = v22;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.Configuration.imagePadding.setter();
    (*(v10 + 104))(v12, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v9);
    UIButton.Configuration.cornerStyle.setter();
    v25 = v53;
    v26 = [v53 imageView];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 superview];

      if (v28)
      {
        v29 = [v28 layer];

        [v29 setAllowsGroupBlending:0];
      }
    }

    v30 = OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState;
    v31 = v17[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionsButtonState];
    v32 = [v25 imageView];
    if (v31 == 1)
    {
      if (v32)
      {
        v33 = v32;
        v34 = [v32 layer];

        [v34 setCompositingFilter:kCAFilterDestOut];
      }

      if (qword_10117F4B8 != -1)
      {
        swift_once();
      }

      v35 = qword_101218938;
      v36 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v36(v59, 0);
      v37 = [objc_opt_self() blackColor];
      UIButton.Configuration.baseForegroundColor.setter();
    }

    else
    {
      if (v32)
      {
        v38 = v32;
        v39 = [v32 layer];

        [v39 setCompositingFilter:0];
      }

      if (qword_10117F4B0 != -1)
      {
        swift_once();
      }

      v40 = qword_101218930;
      v41 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v41(v59, 0);
      if (v17[v30] == 2)
      {
        if (qword_10117F4C8 != -1)
        {
          swift_once();
        }

        v42 = &qword_101218948;
      }

      else
      {
        if (qword_10117F4C0 != -1)
        {
          swift_once();
        }

        v42 = &qword_101218940;
      }

      v43 = *v42;
      UIButton.Configuration.baseForegroundColor.setter();
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v44 = String._bridgeToObjectiveC()();

    [v25 setAccessibilityValue:v44];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v45 = String._bridgeToObjectiveC()();

    [v25 setAccessibilityLabel:v45];

    memset(v59, 0, sizeof(v59));
    v46 = v56;
    static AutomationSemantics.nowPlaying(name:id:)();
    sub_1000095E8(v59, &unk_101183F30);
    UIView.setAutomationSemantics(_:)();
    (*(v57 + 8))(v46, v58);
    v48 = v54;
    v47 = v55;
    v49 = v52;
    (*(v54 + 16))(v52, v15, v55);
    (*(v48 + 56))(v49, 0, 1, v47);
    UIButton.configuration.setter();

    return (*(v48 + 8))(v15, v47);
  }

  return result;
}

void sub_100574298()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource);
    v1 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 8);
    v3 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 16);
    v4 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 24);
    v5 = *(Strong + OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_playSource + 32);
    v6 = Strong;
    sub_10057582C(v2, v1, v3, v4, v5);

    if (v5 != 255)
    {
      if (v5)
      {
        sub_100309C54(v2, v1, v3, v4, v5);
      }

      else
      {

        if (v3)
        {

          v3(v7);
          sub_100020438(v3);
          sub_100020438(v3);
        }
      }
    }
  }
}

void sub_100574384(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005705D8([a1 state]);
  }
}

void sub_100574588(uint64_t a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for NowPlayingQueueHeaderView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  if (a1)
  {
    sub_100050078();
    v4 = UITraitCollection.subscript.getter() & 1;
  }

  else
  {
    v4 = 2;
  }

  sub_100050078();
  v5 = UITraitCollection.subscript.getter();
  if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a1)
  {
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();
    v6 = v11;
  }

  else
  {
    v6 = 3;
  }

  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (v6 > 1)
  {
    if (v6 != 2)
    {
LABEL_25:
      sub_100574854();
      goto LABEL_26;
    }

    v8 = 0x4572616C75676572;
    v7 = 0xEF6465646E657478;
    if (!v11)
    {
LABEL_19:
      v9 = 0xE700000000000000;
      if (v8 != 0x746361706D6F63)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v7 = 0xE700000000000000;
    if (v6)
    {
      v8 = 0x72616C75676572;
      if (!v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v8 = 0x746361706D6F63;
      if (!v11)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == 1)
  {
    v9 = 0xE700000000000000;
    if (v8 != 0x72616C75676572)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v9 = 0xEF6465646E657478;
    if (v8 != 0x4572616C75676572)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  if (v7 == v9)
  {

    return;
  }

LABEL_24:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
}

id sub_100574854()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  sub_100050078();
  v3 = UITraitCollection.subscript.getter();

  v35 = v3;
  if (v3)
  {
    if (qword_10117F900 != -1)
    {
      swift_once();
    }

    v4 = &qword_101219098;
  }

  else
  {
    v4 = UIColor.MusicTint.normal.unsafeMutableAddressor();
  }

  v5 = *v4;
  v6 = sub_10056FCA8();
  if (v3)
  {
    v7 = [objc_opt_self() whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.45];
  }

  else
  {
    v8 = 0;
  }

  [v6 setTintColor:v8];

  v9 = [v1 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (v10 != 6)
  {
    if (v3)
    {
      v11 = 0;
    }

    else
    {
      v11 = [objc_opt_self() systemBackgroundColor];
    }

    [v1 setBackgroundColor:v11];
  }

  v12 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_autoplayButton];
  result = [v12 setNeedsUpdateConfiguration];
  v14 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_buttonsStackViewSpacerView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    [v15 setHidden:(sub_1005C3564(v36) & 1) == 0];
    v17 = sub_1002931A8();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Alchemy, v17))
    {
      v18 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_transitionButton];
      [v18 setNeedsUpdateConfiguration];
      sub_10010FC20(&qword_101183990);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBDC10;
      *(v19 + 32) = v18;
      *(v19 + 40) = v12;
      v20 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
      v21 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton];
      *(v19 + 48) = v20;
      *(v19 + 56) = v21;
      v22 = v18;
    }

    else
    {
      sub_10010FC20(&qword_101183990);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_100EBE270;
      v20 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView_subtitleButton];
      *(v19 + 32) = v12;
      *(v19 + 40) = v20;
      v21 = *&v1[OBJC_IVAR____TtC5Music25NowPlayingQueueHeaderView____lazy_storage___clearButton];
      *(v19 + 48) = v21;
    }

    v23 = v20;
    v24 = v21;
    v25 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      v34 = v5;
      v26 = kCAFilterPlusL;
      v27 = v12;
      v28 = 0;
      do
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v30 = sub_100062D50(v28, v19);
        }

        else
        {
          v30 = *(v19 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = [v30 layer];
        if (v35)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0;
        }

        ++v28;
        [v32 setCompositingFilter:v29];

        swift_unknownObjectRelease();
      }

      while (v25 != v28);
    }

    else
    {
      v33 = v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}