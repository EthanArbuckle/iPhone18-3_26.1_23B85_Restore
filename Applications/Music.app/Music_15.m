void *sub_1001CA04C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011838F0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v70[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v70[-v7];
  v9 = sub_10010FC20(&unk_1011838D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v70[-v10];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = &unk_100EBC000;
  if (!Strong)
  {
    goto LABEL_21;
  }

  v14 = Strong;
  v15 = [Strong parentViewController];

  if (!v15)
  {
    goto LABEL_21;
  }

  type metadata accessor for NowPlayingViewController(0);
  v16 = swift_dynamicCastClass();
  if (!v16 || (v17 = (v16 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), v18 = *(v16 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), v18 >> 62 != 1))
  {
LABEL_20:

LABEL_21:
    v38 = static ActionBuilder.buildIf(_:)(0);
LABEL_22:
    sub_10010FC20(&unk_101183940);
    inited = swift_initStackObject();
    *(inited + 16) = v13[107];
    *(inited + 32) = v38;
    v40 = inited + 32;
    v41 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    sub_1000095E8(v40, &unk_10118AB80);
    return v41;
  }

  v74 = a2;
  v81 = v15;
  v19 = v17[1];
  v20 = v17[2];
  v21 = v17[3];
  v79 = v17[4];
  v80 = v21;
  v22 = v17[5];
  v77 = v17[6];
  v78 = v22;
  swift_beginAccess();
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
    v15 = v81;
    goto LABEL_20;
  }

  v24 = v23;
  v75 = v19;
  v76 = (v18 & 0x3FFFFFFFFFFFFFFFLL);
  v25 = *(v23 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  sub_10012BAC0(v18, v19, v20, v80, v79);
  v26 = v25;

  v27 = v20;
  if (!v25 || (v28 = [v26 tracklist], v26, v29 = objc_msgSend(v28, "playingItem"), v28, !v29))
  {

    v37 = v75;
    v15 = v76;
    v13 = &unk_100EBC000;
LABEL_19:

    goto LABEL_20;
  }

  v30 = [v29 metadataObject];

  v13 = &unk_100EBC000;
  if (!v30)
  {

    v37 = v75;
    v15 = v76;
    goto LABEL_19;
  }

  v15 = [v30 innermostModelObject];

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31 || (v32 = v31, type metadata accessor for LyricsLoader(), (static LyricsLoader.supportsLyrics(for:)(v32) & 1) == 0) || (result = MPModelObject.bestIdentifier(for:)(3, 2u), !v34))
  {

    v37 = v76;
    goto LABEL_19;
  }

  v79 = result;
  v80 = v34;
  v35 = *&v76[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v35)
  {
    v36 = v35;
    SyncedLyricsViewController.reportConcernData.getter(v93);

    if (*(&v93[0] + 1) == 1)
    {
      v73 = 0;
    }

    else
    {
      v97 = v93[0];
      v98 = v93[1];
      v99 = v93[2];
      v42 = Lyrics.ReportConcernData.dictionaryRepresentation()();
      v100 = v97;
      sub_1000095E8(&v100, &qword_1011815E0);
      v101 = v98;
      sub_1000095E8(&v101, &qword_1011815E0);
      v102 = v99;
      sub_1000095E8(&v102, &qword_1011815E0);
      v73 = sub_100363D38(v42);
    }

    swift_beginAccess();
    v43 = swift_unknownObjectWeakLoadStrong();
    v44 = v74;
    sub_1000089F8(v74, v95, &qword_101183998);
    PresentationSource.init(viewController:position:configurationHandler:presentationDeferral:)(v43, v44, 0, 0, 0, 0, v92);
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45 && (v46 = v45, v47 = swift_unknownObjectWeakLoadStrong(), v46, v47))
    {
      sub_1005E0230(v8);
      swift_unknownObjectRelease();
    }

    else
    {
      v48 = type metadata accessor for MetricsEvent.Page(0);
      (*(*(v48 - 8) + 56))(v8, 1, 1, v48);
    }

    v77 = v15;
    v78 = v27;
    sub_1000089F8(v8, v6, &unk_1011838F0);
    MetricsReportingController.shared.unsafeMutableAddressor();
    v74 = sub_10053771C();
    v72 = v49;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v50 = qword_101218AD0;
    v71 = GroupActivitiesManager.hasJoined.getter();
    v51 = GroupActivitiesManager.participantsCount.getter();
    sub_1000095E8(v8, &unk_1011838F0);
    v52 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    v53 = *(v50 + v52);
    v54 = type metadata accessor for Actions.MetricsReportingContext();
    v55 = v54[5];
    v56 = type metadata accessor for MetricsEvent.Page(0);
    (*(*(v56 - 8) + 56))(&v11[v55], 1, 1, v56);
    v57 = v54[7];
    v58 = &v11[v54[6]];
    v59 = v54[8];
    *v11 = xmmword_100EBEF60;
    sub_10006B010(v6, &v11[v55], &unk_1011838F0);
    v60 = v72;
    *v58 = v74;
    *(v58 + 1) = v60;
    *&v11[v57] = 0;
    *&v11[v59] = 0;
    v61 = &v11[v54[9]];
    *v61 = v71 & 1;
    *(v61 + 1) = v51;
    *(v61 + 2) = v53;
    (*(*(v54 - 1) + 56))(v11, 0, 1, v54);
    v62 = swift_allocObject();
    v64 = v79;
    v63 = v80;
    *(v62 + 16) = v79;
    *(v62 + 24) = v63;
    *(v62 + 32) = 2;
    *(v62 + 40) = v73;
    sub_10012B828(v92, v62 + 48);
    Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v64, v63, 1735290739, 0xE400000000000000, 40, variable initialization expression of _NSRange.NSRangeIterator.current, 0, &unk_100EBF410, v94, v62, v11);
    static Actions.ReportConcern.action(context:)(v94, v95);

    v86 = v95[4];
    v87 = v95[5];
    v88 = v95[6];
    v89 = v96;
    v82 = v95[0];
    v83 = v95[1];
    v84 = v95[2];
    v85 = v95[3];
    v65 = static ActionBuilder.buildExpression<A, B>(_:)(&v82, &type metadata for Actions.ReportConcern.Context, &type metadata for () + 8, &protocol witness table for Actions.ReportConcern.Context);
    v90[4] = v86;
    v90[5] = v87;
    v90[6] = v88;
    v91 = v89;
    v90[0] = v82;
    v90[1] = v83;
    v90[2] = v84;
    v90[3] = v85;
    sub_1000095E8(v90, &qword_1011839B0);
    sub_10010FC20(&unk_101183940);
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_100EBC6B0;
    *(v66 + 32) = v65;
    v67 = v66 + 32;
    v68 = static ActionBuilder.buildBlock(_:)();
    swift_setDeallocating();
    v69 = v67;
    v13 = &unk_100EBC000;
    sub_1000095E8(v69, &unk_10118AB80);
    v38 = static ActionBuilder.buildIf(_:)(v68);

    goto LABEL_22;
  }

  __break(1u);
  return result;
}

void sub_1001CA980(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_1001CA9DC()
{
  [objc_opt_self() secondaryLabelColor];
  sub_1001D29B8();
  return AttributedString.subscript.setter();
}

id sub_1001CAA44()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v22[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator;
  v5 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator];
  if (v5)
  {
    v6 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator];
LABEL_5:
    v20 = v5;
    return v6;
  }

  v7 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1001D17C8(v7, v3, type metadata accessor for NowPlaying.TrackMetadata);
  v8 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource];

  result = [v0 view];
  if (result)
  {
    v10 = result;
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s19GlissandoDataSourceCMa();
    sub_1001CF0F0(&unk_101183970, _s19GlissandoDataSourceCMa);
    Gliss.Coordinator.GestureConfiguration.init(hostingView:hitTest:simultaneousGestureRecognizerAllowance:)(v10, sub_1001D1830, v11, sub_1001D1838, v12, v22);
    sub_10010FC20(&unk_101189D80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100EBC6B0;
    v14 = v0;
    v15 = sub_1001AFCCC();
    v16 = sub_1001CF0F0(&unk_101183980, type metadata accessor for NowPlaying.TrackTitleStackView);
    *(v13 + 32) = v15;
    *(v13 + 40) = v16;
    v17 = objc_allocWithZone(sub_10010FC20(&unk_101189D90));
    v18 = Gliss.Coordinator.init(item:dataSource:gestureConfiguration:coordinatedViews:)(v3, v8, v22, v13);
    v19 = *&v14[v4];
    *&v14[v4] = v18;
    v6 = v18;

    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001CACC4(void *a1, double a2, double a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
  result = *(result + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView);
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  [result frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = [v7 view];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v17 = result;
  result = *&v7[v8];
  if (!result)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = [result superview];
  [v17 convertPoint:v18 toView:{a2, a3}];
  v20 = v19;
  v22 = v21;

  v71.origin.x = v10;
  v71.origin.y = v12;
  v71.size.width = v14;
  v71.size.height = v16;
  v67.x = v20;
  v67.y = v22;
  if (CGRectContainsPoint(v71, v67))
  {

    return 1;
  }

  sub_10010FC20(&qword_101183990);
  result = swift_initStackObject();
  *(result + 16) = xmmword_100EBE270;
  v23 = *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!v23)
  {
    goto LABEL_38;
  }

  v24 = result;
  *(result + 32) = v23;
  v25 = *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView];
  if (!v25)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *(result + 40) = v25;
  v64 = v7;
  v26 = *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView];
  if (!v26)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  *(result + 48) = v26;
  v27 = result & 0xC000000000000001;
  v28 = result & 0xFFFFFFFFFFFFFF8;
  v29 = v23;
  v30 = v25;
  v31 = v26;
  v32 = 0;
  v66 = v24;
  do
  {
    if (v27)
    {
      v33 = sub_100062D50(v32, v24);
    }

    else
    {
      if (v32 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      v33 = *(v24 + 8 * v32 + 32);
    }

    v34 = v33;
    v35 = [v33 superview];
    [a1 convertPoint:v35 toView:{a2, a3}];
    v37 = v36;
    v39 = v38;

    [v34 frame];
    v68.x = v37;
    v68.y = v39;
    if (CGRectContainsPoint(v72, v68))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v24 = v66;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v32;
  }

  while (v32 != 3);
  swift_setDeallocating();
  swift_arrayDestroy();
  if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
LABEL_26:
    v40 = v64;
    v41 = &selRef_trackNumber;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }

    goto LABEL_27;
  }

  v40 = v64;
  v41 = &selRef_trackNumber;
  if (*(&_swiftEmptyArrayStorage + 2))
  {
LABEL_23:

    return 0;
  }

LABEL_27:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 1;
  }

  v43 = Strong;
  result = [v40 v41[31]];
  if (!result)
  {
    goto LABEL_41;
  }

  v44 = result;

  v45 = [v43 v41[31]];
  [v44 convertPoint:v45 toView:{a2, a3}];
  v47 = v46;
  v49 = v48;

  v50 = &v43[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v52 = *&v43[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v51 = *&v43[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
  v53 = *&v43[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16];
  if (v52 >> 62)
  {
    if (v52 >> 62 == 1)
    {
      v54 = (v52 & 0x3FFFFFFFFFFFFFFFLL);
      v55 = v51;

      [v55 frame];
      v69.x = v47;
      v69.y = v49;
      v56 = CGRectContainsPoint(v73, v69);

      swift_unknownObjectRelease();
      return !v56;
    }

    swift_unknownObjectRelease();
    return 1;
  }

  v58 = *(v50 + 3);
  v57 = *(v50 + 4);
  v59 = v52;
  v65 = v51;
  v60 = v53;
  v61 = v58;
  v62 = v57;

  [v65 frame];
  v70.x = v47;
  v70.y = v49;
  v63 = CGRectContainsPoint(v74, v70);

  swift_unknownObjectRelease();
  sub_10012BB6C(v52, v51, v53, v58, v57);
  return !v63;
}

void sub_1001CB1E4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v3 presentationController];
    v5 = v3;
    if (v4)
    {
      v6 = v4;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v8 = v7;
          v9 = a1;
          v10 = [v8 view];
          if (v10)
          {
            v11 = v10;
            v12 = [v3 view];

            if (v12)
            {
              [v12 isDescendantOfView:v11];
            }

            else
            {
              __break(1u);
            }

            return;
          }
        }

        else
        {
          v9 = v6;
        }

        v6 = v3;
      }

      else
      {
        v9 = v3;
      }

      v5 = v6;
    }
  }
}

void sub_1001CB3C4(uint64_t a1, void *a2)
{
  *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 1;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v7[4] = sub_1001D17B4;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1007E9F28;
  v7[3] = &unk_10109E908;
  v6 = _Block_copy(v7);
  swift_unknownObjectRetain();

  [a2 animateAlongsideTransition:0 completion:v6];
  _Block_release(v6);
}

void sub_1001CB55C(void *a1, uint64_t a2, void *a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 0;
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = 0;
    swift_unknownObjectRelease();
    [a3 setShowsPlaybackControls:0];
    *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates) = 0;
    v5 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v5)
    {
      v6 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
      v13 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      v7 = v5;
      if (v6)
      {
        LODWORD(v6) = [v6 state] == 2;
      }

      v8 = sub_1001BDD38();
      if (v8)
      {
        v9 = 256;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 | v6 | 0x4000;
      v11 = v13;
      v12 = *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
      *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = v10;
      if (v12 & 0xC000) != 0x4000 || ((v6 ^ v12) & 1) != 0 || ((v8 ^ ((v12 & 0x100) >> 8)))
      {
        sub_10004C8F4();
        [v13 setNeedsLayout];
        v11 = v13;
      }
    }
  }
}

void *sub_1001CB7D0()
{
  v1 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  v2 = v1;
  return v1;
}

id sub_1001CB98C(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassThroughStackView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100009F78(0, &qword_101181620);
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1001CBB04(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1001CBC78(char a1)
{
  v3 = type metadata accessor for AudioTraitButton();
  v10.receiver = v1;
  v10.super_class = v3;
  v4 = objc_msgSendSuper2(&v10, "isHighlighted");
  v9.receiver = v1;
  v9.super_class = v3;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  result = [v1 isHighlighted];
  if (v4 != result)
  {
    result = [v1 alpha];
    if (v6 != 0.0)
    {
      result = [v1 isHidden];
      if ((result & 1) == 0)
      {
        v7 = [v1 isHighlighted];
        v8 = 0.5;
        if ((v7 & 1) == 0)
        {
          v8 = 1.0;
          if (*(v1 + OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure))
          {
            v8 = 0.5;
          }
        }

        return [v1 setAlpha:v8];
      }
    }
  }

  return result;
}

double sub_1001CBD68()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for AudioTraitButton();
  objc_msgSendSuper2(&v10, "hitRect");
  x = v11.origin.x;
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  v5 = *&v0[OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize];
  v6 = CGRectGetWidth(v11);
  if (v6 > v5)
  {
    v5 = v6;
  }

  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  CGRectGetHeight(v12);
  CGRect.center.getter();
  v8 = v7 - v5 * 0.5;
  CGRect.center.getter();
  return v8;
}

id sub_1001CC0D8(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1001CC118@<X0>(char *a1@<X8>)
{
  v86 = a1;
  v2 = type metadata accessor for MusicLibrary.AddStatus.UnaddableReason();
  v75 = *(v2 - 8);
  v76 = v2;
  v3 = __chkstk_darwin(v2);
  v74 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v73 = v69 - v5;
  v6 = sub_10010FC20(&unk_101191A70);
  v7 = __chkstk_darwin(v6 - 8);
  v77 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v78 = v69 - v10;
  __chkstk_darwin(v9);
  v79 = v69 - v11;
  v12 = sub_10010FC20(&unk_1011838C0);
  __chkstk_darwin(v12 - 8);
  v14 = v69 - v13;
  v15 = type metadata accessor for Station();
  v81 = *(v15 - 8);
  v82 = v15;
  __chkstk_darwin(v15);
  v80 = v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for IndexPath();
  v83 = *(v17 - 8);
  v84 = v17;
  v18 = __chkstk_darwin(v17);
  v20 = v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = v69 - v21;
  v23 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v23 - 8);
  v25 = v69 - v24;
  v26 = type metadata accessor for GenericMusicItem();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v85 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [v1 playingItem];
  if (!v29)
  {
    return (*(v27 + 56))(v86, 1, 1, v26);
  }

  v30 = v29;
  v31 = [v29 metadataObject];

  if (!v31)
  {
    return (*(v27 + 56))(v86, 1, 1, v26);
  }

  v32 = [v31 innermostModelObject];

  v33 = v32;
  GenericMusicItem.init(_:)();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {

    sub_1000095E8(v25, &unk_101189DA0);
    return (*(v27 + 56))(v86, 1, 1, v26);
  }

  v72 = *(v27 + 32);
  v72(v85, v25, v26);
  v35 = [v1 playingItemIndexPath];
  if (!v35)
  {

LABEL_15:
    v45 = v85;
    goto LABEL_16;
  }

  v71 = v33;
  v36 = v35;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = v83;
  v38 = v20;
  v39 = v84;
  (*(v83 + 32))(v22, v38, v84);
  v40 = [v1 items];
  v41 = [v40 sectionAtIndex:IndexPath.section.getter()];

  v42 = [v41 metadataObject];
  if (!v42)
  {
    (*(v37 + 8))(v22, v39);

    goto LABEL_15;
  }

  v43 = [v42 innermostModelObject];

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v45 = v85;
  if (!v44)
  {

    (*(v37 + 8))(v22, v39);
    goto LABEL_16;
  }

  if ([v44 type] != 4)
  {
    (*(v37 + 8))(v22, v39);

    goto LABEL_16;
  }

  v70 = v43;
  v46 = v82;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  v47 = v81;
  if ((*(v81 + 48))(v14, 1, v46) == 1)
  {
    (*(v37 + 8))(v22, v84);

    sub_1000095E8(v14, &unk_1011838C0);
LABEL_16:
    v48 = v86;
    v72(v86, v45, v26);
    return (*(v27 + 56))(v48, 0, 1, v26);
  }

  v69[0] = *(v47 + 32);
  v69[1] = v47 + 32;
  (v69[0])(v80, v14, v46);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.state(for:)();
  v49 = v47;

  v50 = v79;
  dispatch thunk of MusicLibrary.GenericItemState.addStatus.getter();

  v51 = v78;
  sub_1000089F8(v50, v78, &unk_101191A70);
  v52 = type metadata accessor for MusicLibrary.AddStatus();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {

    sub_1000095E8(v50, &unk_101191A70);
    (*(v49 + 8))(v80, v82);
    (*(v83 + 8))(v22, v84);
LABEL_26:
    v65 = v86;
    v72(v86, v45, v26);
    (*(v27 + 56))(v65, 0, 1, v26);
    return sub_1000095E8(v51, &unk_101191A70);
  }

  v54 = v77;
  sub_1000089F8(v51, v77, &unk_101191A70);
  if ((*(v53 + 88))(v54, v52) != enum case for MusicLibrary.AddStatus.unaddable(_:))
  {

    sub_1000095E8(v79, &unk_101191A70);
    (*(v81 + 8))(v80, v82);
    (*(v83 + 8))(v22, v84);
    (*(v53 + 8))(v54, v52);
    goto LABEL_26;
  }

  (*(v53 + 96))(v54, v52);
  v56 = v75;
  v55 = v76;
  v57 = v73;
  (*(v75 + 32))(v73, v54, v76);
  v58 = v74;
  (*(v56 + 16))(v74, v57, v55);
  v59 = (*(v56 + 88))(v58, v55);
  v60 = v79;
  if (v59 == enum case for MusicLibrary.AddStatus.UnaddableReason.subscriptionRequired(_:))
  {
    v61 = v85;
    GenericMusicItem.catalogID.getter();
    v63 = v62;

    (*(v56 + 8))(v57, v55);
    sub_1000095E8(v60, &unk_101191A70);
    (*(v83 + 8))(v22, v84);
    v64 = v86;
    if (v63)
    {

      (*(v81 + 8))(v80, v82);
      v72(v64, v61, v26);
    }

    else
    {
      (*(v27 + 8))(v61, v26);
      (v69[0])(v64, v80, v82);
      (*(v27 + 104))(v64, enum case for GenericMusicItem.station(_:), v26);
    }

    v68 = v78;
    (*(v27 + 56))(v64, 0, 1, v26);
    return sub_1000095E8(v68, &unk_101191A70);
  }

  else
  {

    v66 = *(v56 + 8);
    v66(v57, v55);
    sub_1000095E8(v60, &unk_101191A70);
    (*(v83 + 8))(v22, v84);
    (*(v27 + 8))(v85, v26);
    v67 = v86;
    (v69[0])(v86, v80, v82);
    (*(v27 + 104))(v67, enum case for GenericMusicItem.station(_:), v26);
    (*(v27 + 56))(v67, 0, 1, v26);
    v66(v58, v55);
    return sub_1000095E8(v78, &unk_101191A70);
  }
}

uint64_t sub_1001CCD5C@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)()@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v165 = a4;
  v166 = a5;
  v159 = a2;
  v178 = a1;
  v9 = type metadata accessor for UUID();
  v176 = *(v9 - 8);
  __chkstk_darwin(v9);
  v175 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_1011838D0);
  v171 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v174 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = v13;
  __chkstk_darwin(v12);
  v184 = &v151 - v14;
  v15 = sub_10010FC20(&unk_1011845D0);
  v169 = *(v15 - 8);
  v16 = __chkstk_darwin(v15 - 8);
  v173 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v17;
  __chkstk_darwin(v16);
  v183 = &v151 - v18;
  v19 = sub_10010FC20(&unk_1011838E0);
  v20 = __chkstk_darwin(v19 - 8);
  v167 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v168 = &v151 - v23;
  v24 = __chkstk_darwin(v22);
  v160 = &v151 - v25;
  __chkstk_darwin(v24);
  v158 = &v151 - v26;
  v27 = sub_10010FC20(&unk_10118AB20);
  v28 = __chkstk_darwin(v27 - 8);
  *&v179 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v177 = &v151 - v31;
  __chkstk_darwin(v30);
  v182 = &v151 - v32;
  v33 = sub_10010FC20(&unk_1011838F0);
  v34 = __chkstk_darwin(v33 - 8);
  v36 = &v151 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v151 - v37;
  v180 = type metadata accessor for Actions.MetricsReportingContext();
  v161 = *(v180 - 1);
  v39 = __chkstk_darwin(v180);
  v162 = v40;
  v163 = &v151 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v181 = (&v151 - v41);
  v42 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v42 - 8);
  v44 = &v151 - v43;
  v164 = v6;
  sub_1001CC118(&v151 - v43);
  v45 = type metadata accessor for GenericMusicItem();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v44, 1, v45) == 1)
  {
    sub_1000095E8(v44, &unk_101189DA0);
    v197 = 0u;
    v198 = 0u;
    v199 = 0;
LABEL_11:
    result = sub_1000095E8(&v197, &qword_10118B990);
    v78 = 0;
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v82 = 0uLL;
    goto LABEL_47;
  }

  GenericMusicItem.innerMusicItem.getter(&v197);
  (*(v46 + 8))(v44, v45);
  if (!*(&v198 + 1))
  {
    goto LABEL_11;
  }

  v155 = v9;
  v156 = a6;
  sub_100059A8C(&v197, v200);
  sub_1000089F8(a3, v38, &unk_1011838F0);
  sub_1000089F8(v38, v36, &unk_1011838F0);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v157 = sub_10053771C();
  v154 = v47;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v48 = qword_101218AD0;
  LODWORD(v153) = GroupActivitiesManager.hasJoined.getter();
  v49 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v38, &unk_1011838F0);
  v50 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v51 = *(v48 + v50);
  v52 = v180;
  v53 = v180[5];
  v54 = type metadata accessor for MetricsEvent.Page(0);
  v55 = v181;
  (*(*(v54 - 8) + 56))(v181 + v53, 1, 1, v54);
  v56 = v52[7];
  v57 = (v55 + v52[6]);
  v58 = v52[8];
  *v55 = xmmword_100EBEF60;
  sub_10006B010(v36, v55 + v53, &unk_1011838F0);
  v59 = v154;
  *v57 = v157;
  v57[1] = v59;
  *(v55 + v56) = 0;
  *(v55 + v58) = 0;
  v60 = v55 + v52[9];
  *v60 = v153 & 1;
  *(v60 + 1) = v49;
  *(v60 + 2) = v51;
  sub_10010FC20(&unk_101183900);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_100EBC6B0;
  v153 = v61;
  sub_100008FE4(v200, v61 + 32);
  v62 = v178;
  v63 = [v178 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v157 = v197;
  v64 = v177;
  sub_1000089F8(v159, v177, &unk_10118AB20);
  v65 = type metadata accessor for Actions.PlaybackContext();
  v66 = *(v65 - 8);
  v159 = *(v66 + 48);
  v67 = v159(v64, 1, v65);
  v154 = v66 + 48;
  if (v67 == 1)
  {
    v68 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v69 = v158;
    (*(*(v68 - 8) + 56))(v158, 1, 1, v68);
    v199 = 0;
    v197 = 0u;
    v198 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v70 = qword_101218AD8;
    sub_1000089F8(v69, v160, &unk_1011838E0);
    v152 = v70;
    v71 = UIViewController.playActivityInformation.getter();
    v151 = v72;
    v74 = v73;
    v76 = v75;
    sub_1000089F8(&v197, &v191, &unk_101183910);
    if (*(&v192 + 1))
    {
      sub_100059A8C(&v191, v195);
    }

    else
    {
      *&v201 = v62;
      sub_100009F78(0, &qword_101183D40);
      v85 = v62;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v205, v195);
        v64 = v177;
      }

      else
      {
        v207 = 0;
        v205 = 0u;
        v206 = 0u;
        v195[0] = v85;
        v86 = v85;
        v87 = String.init<A>(reflecting:)();
        v195[3] = &type metadata for Player.CommandIssuerIdentity;
        v195[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v195[0] = v87;
        v195[1] = v88;
        v64 = v177;
        if (*(&v206 + 1))
        {
          sub_1000095E8(&v205, &unk_101183910);
        }
      }

      v62 = v178;
      if (*(&v192 + 1))
      {
        sub_1000095E8(&v191, &unk_101183910);
      }
    }

    v89 = v71;
    v83 = v182;
    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v152, v160, v89, v151, v74, v76, v195, v182);
    sub_1000095E8(&v197, &unk_101183910);
    sub_1000095E8(v69, &unk_1011838E0);
    v90 = v159(v64, 1, v65);
    v84 = v179;
    if (v90 != 1)
    {
      sub_1000095E8(v64, &unk_10118AB20);
    }
  }

  else
  {
    v83 = v182;
    sub_1001D24B0(v64, v182, type metadata accessor for Actions.PlaybackContext);
    v84 = v179;
  }

  v91 = v65;
  (*(v66 + 56))(v83, 0, 1, v65);
  v92 = type metadata accessor for PlaylistContext();
  (*(*(v92 - 8) + 56))(v183, 1, 1, v92);
  v205 = 0u;
  v206 = 0u;
  v207 = 0;
  v208 = xmmword_100EBCEF0;
  v93 = v62;
  PresentationSource.init(viewController:position:)(v93, &v205, &v197);
  v94 = v181;
  v95 = v184;
  sub_1001D17C8(v181, v184, type metadata accessor for Actions.MetricsReportingContext);
  v96 = v161 + 56;
  (*(v161 + 56))(v95, 0, 1, v180);
  v97 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v98 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = v94;
  v100 = v163;
  sub_1001D17C8(v99, v163, type metadata accessor for Actions.MetricsReportingContext);
  v101 = (*(v96 + 24) + 48) & ~*(v96 + 24);
  v102 = swift_allocObject();
  v103 = v166;
  *(v102 + 2) = v165;
  *(v102 + 3) = v103;
  *(v102 + 4) = v97;
  *(v102 + 5) = v98;
  v165 = v102;
  sub_1001D24B0(v100, v102 + v101, type metadata accessor for Actions.MetricsReportingContext);
  sub_100008FE4(v153 + 32, v196);

  v178 = v97;

  v177 = v98;

  sub_1000089F8(&v197, &v191, &unk_1011845E0);
  if (v194 == 1)
  {
    PresentationSource.init(viewController:position:)(v93, &v205, v195);
    if (v194 != 1)
    {
      sub_1000095E8(&v191, &unk_1011845E0);
    }
  }

  else
  {
    sub_10012B828(&v191, v195);
  }

  swift_getObjectType();
  v104 = swift_conformsToProtocol2();
  v105 = 0;
  v106 = 0;
  if (v104 && v93)
  {
    v107 = v104;
    v108 = v93;
    v105 = v93;
    v106 = v107;
  }

  v163 = v106;
  v164 = v105;
  v166 = swift_allocBox();
  v110 = v109;
  sub_1000089F8(v182, v84, &unk_10118AB20);
  if (v159(v84, 1, v91) == 1)
  {
    v111 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v112 = v168;
    (*(*(v111 - 8) + 56))(v168, 1, 1, v111);
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    if (qword_10117F608 != -1)
    {
      swift_once();
    }

    v113 = qword_101218AD8;
    sub_1000089F8(v112, v167, &unk_1011838E0);
    v114 = v113;
    v115 = UIViewController.playActivityInformation.getter();
    v117 = v116;
    v180 = v118;
    v120 = v119;
    sub_1000089F8(&v191, &v189, &unk_101183910);
    if (v190)
    {
      sub_100059A8C(&v189, &v201);
    }

    else
    {
      v162 = v114;
      v188 = v93;
      sub_100009F78(0, &qword_101183D40);
      v121 = v93;
      sub_10010FC20(&unk_101183920);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v185, &v201);
        v84 = v179;
      }

      else
      {
        v187 = 0;
        v185 = 0u;
        v186 = 0u;
        *&v201 = v121;
        v122 = v121;
        v123 = String.init<A>(reflecting:)();
        *&v203 = &type metadata for Player.CommandIssuerIdentity;
        *(&v203 + 1) = &protocol witness table for Player.CommandIssuerIdentity;
        *&v201 = v123;
        *(&v201 + 1) = v124;
        v84 = v179;
        if (*(&v186 + 1))
        {
          sub_1000095E8(&v185, &unk_101183910);
        }
      }

      v114 = v162;
      if (v190)
      {
        sub_1000095E8(&v189, &unk_101183910);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v114, v167, v115, v117, v180, v120, &v201, v110);
    sub_1000095E8(&v191, &unk_101183910);
    sub_1000095E8(v168, &unk_1011838E0);
    if (v159(v84, 1, v91) != 1)
    {
      sub_1000095E8(v84, &unk_10118AB20);
    }
  }

  else
  {
    sub_1001D24B0(v84, v110, type metadata accessor for Actions.PlaybackContext);
  }

  v125 = &v110[*(v91 + 28)];
  sub_1000089F8(v125, &v201, &unk_101183910);
  if (v203)
  {
    sub_100059A8C(&v201, &v191);
  }

  else
  {
    *&v191 = v93;
    v126 = v93;
    v127 = String.init<A>(reflecting:)();
    *(&v192 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v193 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v191 = v127;
    *(&v191 + 1) = v128;
    if (v203)
    {
      sub_1000095E8(&v201, &unk_101183910);
    }
  }

  sub_10010FC20(&unk_101183930);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_100EBDC20;
  *(v129 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v129 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v129 + 32) = 0x4D747865746E6F43;
  *(v129 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v191, v129 + 72);
  v130 = static Player.CommandIssuer<>.combining(_:)();
  v132 = v131;

  sub_10000959C(&v191);
  *(&v192 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v193 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v191 = v130;
  *(&v191 + 1) = v132;
  sub_10006B010(&v191, v125, &unk_101183910);
  sub_100008FE4(v196, &v191);
  sub_10010FC20(&unk_10118AB50);
  *&v179 = String.init<A>(describing:)();
  v168 = v133;
  v180 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v196, &v189);
  sub_10012B7A8(v195, &v191);
  v134 = v174;
  sub_1000089F8(v184, v174, &unk_1011838D0);
  v135 = v173;
  sub_1000089F8(v183, v173, &unk_1011845D0);
  v136 = (*(v171 + 80) + 160) & ~*(v171 + 80);
  v137 = (v172 + v136 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = (v137 + 15) & 0xFFFFFFFFFFFFFFF8;
  v139 = (*(v169 + 80) + v138 + 8) & ~*(v169 + 80);
  v172 = (v139 + v170 + 7) & 0xFFFFFFFFFFFFFFF8;
  v140 = (v139 + v170 + 31) & 0xFFFFFFFFFFFFFFF8;
  v141 = swift_allocObject();
  sub_100059A8C(&v189, v141 + 16);
  *(v141 + 56) = v157;
  sub_10012B828(&v191, v141 + 64);
  sub_10003D17C(v134, v141 + v136, &unk_1011838D0);
  *(v141 + v137) = v180;
  *(v141 + v138) = v166;
  sub_10003D17C(v135, v141 + v139, &unk_1011845D0);
  v142 = v141 + v172;
  v143 = v163;
  *v142 = v164;
  *(v142 + 8) = v143;
  *(v142 + 16) = 0;
  v144 = (v141 + v140);
  v145 = v165;
  *v144 = sub_1001CFB1C;
  v144[1] = v145;
  swift_unknownObjectRetain();

  v146 = v175;
  UUID.init()();
  v147 = UUID.uuidString.getter();
  v149 = v148;
  v150 = *(v176 + 8);

  v150(v146, v155);
  v209._countAndFlagsBits = v179;
  v209._object = v168;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(v209, v147, v149, sub_1001CFB84, v141, &v201);
  v79 = *(&v201 + 1);
  v78 = v201;
  v179 = v203;
  v80 = v202;
  v81 = v204;
  swift_unknownObjectRelease();

  sub_10012BA6C(v195);
  sub_10000959C(v196);
  sub_1000095E8(v184, &unk_1011838D0);
  sub_1000095E8(&v197, &unk_1011845E0);
  sub_1000095E8(v183, &unk_1011845D0);
  sub_1000095E8(v182, &unk_10118AB20);
  sub_10000959C(v200);

  sub_1001D1908(v181, type metadata accessor for Actions.MetricsReportingContext);

  v82 = v179;
  a6 = v156;
LABEL_47:
  *a6 = v78;
  *(a6 + 8) = v79;
  *(a6 + 16) = v80;
  *(a6 + 24) = v82;
  *(a6 + 40) = v81;
  return result;
}

void sub_1001CE268(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10010FC20(&unk_1011838D0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v33 - v9 + 32;
  v11 = a1(v8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_13;
  }

  v13 = Strong;
  v14 = [Strong playingItem];

  if (!v14)
  {
    goto LABEL_13;
  }

  v15 = [v14 metadataObject];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = [v15 innermostModelObject];

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (!v17 || (v18 = v17, swift_beginAccess(), (v19 = swift_unknownObjectWeakLoadStrong()) == 0))
  {
LABEL_12:

LABEL_13:
    v30 = static ActionBuilder.buildIf(_:)(0);
    goto LABEL_14;
  }

  v20 = v19;
  v21 = [v19 view];

  if (v21)
  {
    v22 = [v21 window];

    if (v22)
    {
      v23 = [v22 windowScene];

      if (v23)
      {
        sub_1001D17C8(a5, v10, type metadata accessor for Actions.MetricsReportingContext);
        v24 = type metadata accessor for Actions.MetricsReportingContext();
        (*(*(v24 - 8) + 56))(v10, 0, 1, v24);
        v25 = v16;
        v16 = v23;
        sub_1001CE6B4(v18, v16, v10, &v35);
        if (v36)
        {
          v40 = v35;
          v42 = v37;
          v43 = v38;
          v41 = v36;
          v44 = v39;
          static Actions.GoToArtist.action(context:)(&v40, v33);
          v26 = static ActionBuilder.buildExpression<A, B>(_:)(v33, &type metadata for Actions.GoToArtist.Context, &type metadata for () + 8, &protocol witness table for Actions.GoToArtist.Context);
          v34[4] = v33[4];
          v34[5] = v33[5];
          v34[6] = v33[6];
          v34[7] = v33[7];
          v34[0] = v33[0];
          v34[1] = v33[1];
          v34[2] = v33[2];
          v34[3] = v33[3];
          sub_1000095E8(v34, &unk_101183950);
          sub_10010FC20(&unk_101183940);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBC6B0;
          *(inited + 32) = v26;
          v28 = inited + 32;
          v29 = static ActionBuilder.buildBlock(_:)();
          swift_setDeallocating();
          sub_1000095E8(v28, &unk_10118AB80);
          v30 = static ActionBuilder.buildIf(_:)(v29);

          v33[0] = v40;
          sub_1000095E8(v33, &qword_1011815E0);

LABEL_14:
          sub_10010FC20(&unk_101183940);
          v31 = swift_initStackObject();
          *(v31 + 16) = xmmword_100EBDC20;
          *(v31 + 32) = v11;
          *(v31 + 40) = v30;
          static ActionBuilder.buildBlock(_:)();
          swift_setDeallocating();
          sub_10010FC20(&unk_10118AB80);
          swift_arrayDestroy();
          return;
        }
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_1001CE6B4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_10010FC20(&unk_101183960);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for Song();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = a1;
  dispatch thunk of LegacyModelObjectConvertible.init(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1000095E8(a3, &unk_1011838D0);

    result = sub_1000095E8(v10, &unk_101183960);
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  else
  {
    v24 = a2;
    *&v42 = a3;
    *&v41 = *(v12 + 32);
    (v41)(v17, v10, v11);
    v25 = [v18 artist];
    v26 = v25;
    if (v25)
    {
      v27 = v24;
      *&v40 = sub_100483050(v25, v18, v24);
      v29 = v28;
      v30 = [v26 name];
      if (v30)
      {
        v31 = v30;
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v39 = v32;

        v33 = v38;
        v26 = v39;
      }

      else
      {

        v33 = 0;
        v26 = 0;
      }

      v34 = v40;
    }

    else
    {

      v33 = 0;
      v34 = 0;
      v29 = 0;
    }

    (v41)(v15, v17, v11);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = v29;
    v36 = swift_allocObject();
    *(v36 + 16) = v34;
    *(v36 + 24) = v29;
    Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v15, v33, v26, sub_1001CFCDC, v35, &unk_100EBF3C8, v36, v42, v43, v11, &protocol witness table for Song);
    v41 = v43[1];
    v42 = v43[0];
    v39 = v43[3];
    v40 = v43[2];
    result = sub_100030444(v34);
    v23 = v39;
    v22 = v40;
    v21 = v41;
    v20 = v42;
  }

  *a4 = v20;
  a4[1] = v21;
  a4[2] = v22;
  a4[3] = v23;
  return result;
}

Swift::Int sub_1001CEA34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001CEAA8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001CEB14()
{
  sub_1001CEDBC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1001CEDBC()
{
  if (!qword_101183700)
  {
    type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101183700);
    }
  }
}

__n128 sub_1001CEEA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001CEECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001CEEEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 104) = v3;
  return result;
}

uint64_t sub_1001CEF50(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001CEFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001CF034()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1001CF0F0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001CF13C()
{
  result = qword_101183888;
  if (!qword_101183888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183888);
  }

  return result;
}

uint64_t sub_1001CF1A0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10010FC20(&unk_101181520);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1001CF23C, 0, 0);
}

uint64_t sub_1001CF23C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  type metadata accessor for MainActor();
  sub_100030444(v3);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v3;
  v6[5] = v2;
  sub_1001F4F78(0, 0, v1, &unk_100EBF3E0, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001CF360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001CF3FC, v7, v6);
}

uint64_t sub_1001CF3FC()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(v2);
  }

  **(v0 + 16) = v1 == 0;
  v3 = *(v0 + 8);

  return v3();
}

BOOL sub_1001CF480(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v2 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (!*(a2 + 64))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 56) != *(a2 + 56))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 72) == *(a2 + 72) && *(a1 + 80) == *(a2 + 80) && *(a1 + 88) == *(a2 + 88))
  {
    return *(a1 + 96) == *(a2 + 96);
  }

  return 0;
}

double sub_1001CF564@<D0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v10 = a4;
  if (a5 >= 812.0)
  {
    v12 = a4 - dbl_100EBF648[a1];
    if (a5 >= 896.0)
    {
      v15 = 100.0;
    }

    else
    {
      v15 = 92.0;
    }

    v13 = 6.0;
    v14 = 48.0;
  }

  else
  {
    v12 = a4 + -88.0;
    v13 = 12.0;
    v14 = 88.0;
    v15 = 64.0;
  }

  v16 = HI.SizeClass.init(_:)(a4);
  v58 = v13;
  if (!a1)
  {
    v20 = v10 - v14;
    if (a2)
    {
      if ([a2 userInterfaceIdiom] != 1 && v10 >= 340.0)
      {
LABEL_51:
        v21 = 0.0;
        v17 = 95.0;
        if (a5 >= 754.0)
        {
          v17 = a5 / 6.5;
        }

        v18 = 1;
        if (a5 < 754.0)
        {
          v24 = 32.0;
        }

        else
        {
          v24 = 40.0;
        }

        v23 = 66.0;
        if (a5 < 754.0)
        {
          v22 = 88.0;
        }

        else
        {
          v22 = 108.0;
        }

        v25 = 0.0;
        if (!a2)
        {
          goto LABEL_60;
        }

        goto LABEL_46;
      }
    }

    else if (v10 >= 340.0)
    {
      goto LABEL_51;
    }

    v27 = v13 + 56.0;
    v17 = Int.seconds.getter(127);
    v22 = fmin(a5 / 9.0 + a6, 157.0);
    v21 = fmin(a5 / 6.0, 150.0);
    v28 = a5 - v22 - v21;
    if (v27 > (v28 - v20) * 0.5)
    {
      v15 = v27;
    }

    else
    {
      v15 = (v28 - v20) * 0.5;
    }

    if (v28 < v20 + v15 + v17)
    {
      v29 = v28 - v17 - v27;
      if (v12 >= v29)
      {
        v20 = v29;
      }

      else
      {
        v20 = v12;
      }

      v17 = a5 - (v22 + v21 + v27 + v20);
      v15 = v27;
    }

    v18 = 0;
    v25 = 0.0;
    v23 = 66.0;
    v24 = 32.0;
    if (!a2)
    {
      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (a1 == 1)
  {
    v12 = v10 + -156.0;
    if (v16 >= 5u)
    {
      v17 = 112.0;
    }

    else
    {
      v17 = 116.0;
    }

    v18 = 1;
    v19 = a5 - (v12 + 78.0 + v17 + 76.0);
    if (v19 >= 150.0)
    {
      v21 = 0.0;
      v22 = 76.0;
      v23 = 66.0;
      v24 = 40.0;
      v15 = 78.0;
      v20 = v10 + -156.0;
      v25 = 40.0;
      if (!a2)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v20 = v12 + v19 + -150.0;
      v21 = 0.0;
      v22 = 76.0;
      v23 = 66.0;
      v24 = 40.0;
      v15 = 78.0;
      v25 = 40.0;
      if (!a2)
      {
LABEL_60:
        v51 = 20.0;
        goto LABEL_61;
      }
    }
  }

  else
  {
    v30 = v16;
    v31 = [objc_allocWithZone(_UIGrabber) init];
    [v31 intrinsicContentSize];
    v33 = v32;

    v34 = v10 * 0.5 + v33 * 0.5;
    v35 = Int.seconds.getter(56);
    if (v30 >= 5u)
    {
      v36 = 50;
    }

    else
    {
      v36 = 38;
    }

    v37 = Int.seconds.getter(v36);
    v15 = Int.seconds.getter(60);
    v38 = Int.seconds.getter(267);
    v39 = Int.seconds.getter(350);
    v40 = v38;
    v22 = v35;
    v20 = a5 - v15 - v38 - v37 - v35;
    v41 = v10 - v34 + -78.0 + -52.0;
    if (qword_10117F2C0 != -1)
    {
      v53 = v39;
      v54 = v35;
      v55 = v40;
      swift_once();
      v40 = v55;
      v22 = v54;
      v39 = v53;
    }

    v12 = v41 - (*&qword_101218760 + *&qword_101218760);
    if (v12 >= v20)
    {
      if (v20 < v12 && v39 <= v20)
      {
        v12 = v20;
      }
    }

    else
    {
      v20 = v41 - (*&qword_101218760 + *&qword_101218760);
    }

    v18 = 0;
    v23 = 56.0;
    v24 = 40.0;
    v21 = 140.0;
    v17 = 129.0;
    v42 = a5 - (v40 + v20);
    if (v42 * 0.5 > v15)
    {
      v15 = v42 * 0.5;
    }

    v25 = v42 - v15 - v22;
    v10 = v20;
    if (!a2)
    {
      goto LABEL_60;
    }
  }

LABEL_46:
  v43 = v12;
  v44 = v17;
  v45 = v15;
  v46 = v10;
  v47 = v20;
  v48 = v21;
  v49 = [a2 preferredContentSizeCategory];
  v50 = UIContentSizeCategory.isAccessibilityCategory.getter();

  v21 = v48;
  v20 = v47;
  v10 = v46;
  v15 = v45;
  v17 = v44;
  v12 = v43;
  v51 = 33.0;
  if (v50)
  {
    v24 = 50.0;
  }

  else
  {
    v51 = 20.0;
  }

  v25 = v56;
  v22 = v57;
LABEL_61:
  *a3 = v51;
  result = v58;
  *(a3 + 8) = v58;
  *(a3 + 16) = v15;
  *(a3 + 24) = v10;
  *(a3 + 32) = v20;
  *(a3 + 40) = v12;
  *(a3 + 48) = v17;
  *(a3 + 56) = v21;
  *(a3 + 64) = v18;
  *(a3 + 72) = v24;
  *(a3 + 80) = v23;
  *(a3 + 88) = v25;
  *(a3 + 96) = v22;
  return result;
}

void sub_1001CFB1C()
{
  v1 = *(type metadata accessor for Actions.MetricsReportingContext() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  sub_1001CE268(v2, v3, v4, v5, v6);
}

uint64_t sub_1001CFB84()
{
  v1 = *(sub_10010FC20(&unk_1011838D0) - 8);
  v2 = (*(v1 + 80) + 160) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_10010FC20(&unk_1011845D0) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  return sub_10048D4C8((v0 + 16), *(v0 + 56), v0 + 64, v0 + v2, *(v0 + v3), *(v0 + v4), v0 + v6, *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1001CFCDC()
{
  if (*(v0 + 16))
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1001CFD08()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008F30;

  return sub_1001CF1A0(v2, v3);
}

uint64_t sub_1001CFDA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001CF360(a1, v4, v5, v7, v6);
}

uint64_t sub_1001CFE60(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v29 = *a1 >> 62;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v29)
  {
    goto LABEL_65;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  v31 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint;
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = sub_1007E91C0(v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = *(a2 + v31);
    if (v9)
    {
      sub_100009F78(0, &qword_1011838A0);
      v10 = v8;
      v11 = v9;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        v14 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
          goto LABEL_20;
        }

        while (1)
        {
          if (v2 >> 62)
          {
            if (v14 == _CocoaArrayWrapper.endIndex.getter())
            {
              return v5;
            }
          }

          else if (v14 == *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            return v5;
          }

          if ((v2 & 0xC000000000000001) != 0)
          {
            v15 = sub_1007E91C0(v14, v2);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_57;
            }

            if (v14 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_58;
            }

            v15 = *(v2 + 8 * v14 + 32);
          }

          v16 = *(a2 + v31);
          if (!v16)
          {
            break;
          }

          v17 = v15;
          v18 = v16;
          v19 = static NSObject.== infix(_:_:)();

          if ((v19 & 1) == 0)
          {
            if (v5 != v14)
            {
LABEL_33:
              if ((v2 & 0xC000000000000001) != 0)
              {
                v20 = sub_1007E91C0(v5, v2);
                v21 = sub_1007E91C0(v14, v2);
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  goto LABEL_62;
                }

                v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v22)
                {
                  goto LABEL_63;
                }

                if (v14 >= v22)
                {
                  goto LABEL_64;
                }

                v23 = *(v2 + 32 + 8 * v14);
                v20 = *(v2 + 32 + 8 * v5);
                v21 = v23;
              }

              v3 = v21;
              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
              {
                v2 = sub_1005024DC(v2);
                v24 = (v2 >> 62) & 1;
              }

              else
              {
                LODWORD(v24) = 0;
              }

              v25 = v2 & 0xFFFFFFFFFFFFFF8;
              v26 = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
              *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v3;

              if ((v2 & 0x8000000000000000) != 0 || v24)
              {
                v2 = sub_1005024DC(v2);
                v25 = v2 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_53:
                  __break(1u);
                  return _CocoaArrayWrapper.endIndex.getter();
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_53;
              }

              if (v14 >= *(v25 + 16))
              {
                goto LABEL_61;
              }

              v27 = v25 + 8 * v14;
              v28 = *(v27 + 32);
              *(v27 + 32) = v20;

              *a1 = v2;
            }

LABEL_20:
            v6 = __OFADD__(v5++, 1);
            if (v6)
            {
              goto LABEL_60;
            }
          }

          v6 = __OFADD__(v14++, 1);
          if (v6)
          {
            goto LABEL_59;
          }
        }

        if (v5 != v14)
        {
          goto LABEL_33;
        }

        goto LABEL_20;
      }
    }

    else
    {
    }

    v6 = __OFADD__(v5++, 1);
    if (v6)
    {
      goto LABEL_56;
    }
  }

  if (v29)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  return *(v3 + 16);
}

void *sub_1001D01A8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101189D60);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66 - v10;
  v12 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v12)
  {
    v68 = &v66 - v10;
    v13 = v12;
    v14 = [v13 tracklist];
    v67 = v5;
    v15 = v14;
    v16 = [v14 playingItem];

    v17 = [v13 tracklist];
    v18 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource];
    v20 = *(v18 + 24);
    v19 = *(v18 + 32);
    sub_100030444(v20);
    v21 = v17;
    v5 = v67;
    NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v16, v21, v20, v19, v4);
    v22 = *(v6 + 48);
    if (v22(v4, 1, v5) == 1)
    {
      v23 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1001D17C8(v23, v9, type metadata accessor for NowPlaying.TrackMetadata);

      v24 = v22(v4, 1, v5);
      v11 = v68;
      if (v24 != 1)
      {
        sub_1000095E8(v4, &qword_101189D60);
      }
    }

    else
    {

      sub_1001D24B0(v4, v9, type metadata accessor for NowPlaying.TrackMetadata);
      v11 = v68;
    }
  }

  else
  {
    v25 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
    if (v25)
    {
      NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)(v25, 0, 1, v9);
    }

    else
    {
      v26 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
      sub_1001D17C8(v26, v9, type metadata accessor for NowPlaying.TrackMetadata);
    }
  }

  sub_1001D24B0(v9, v11, type metadata accessor for NowPlaying.TrackMetadata);
  result = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!result)
  {
    __break(1u);
    goto LABEL_37;
  }

  v28 = v11[*(v5 + 36)];
  [result setHidden:v28 ^ 1u];
  v29 = sub_1001AFCCC();
  v30 = sub_1001C6D2C(v28 ^ 1u);
  v31 = (*((swift_isaMask & *v29) + 0xE8))(&v70);
  v33 = *(v32 + 8);
  *(v32 + 8) = v30;

  v31(&v70, 0);
  v34 = sub_1001CAA44();
  (*((swift_isaMask & *v34) + 0x158))(v11, 2, 0, 0, 254);

  v35 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath;
  v36 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath];
  if (!v36)
  {
    goto LABEL_16;
  }

  v37 = [v36 route];
  if (!v37)
  {
    goto LABEL_16;
  }

  v38 = v37;
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v39 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider];
    if (v39)
    {
      v40 = *&v39[OBJC_IVAR____TtC5Music12VolumeSlider_route];
      *&v39[OBJC_IVAR____TtC5Music12VolumeSlider_route] = result;
      v41 = v38;
      v42 = v39;
      sub_100726828(v40);

      v38 = v40;
      goto LABEL_15;
    }

LABEL_37:
    __break(1u);
    return result;
  }

LABEL_15:

LABEL_16:
  sub_1001C250C();
  v43 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (v43)
  {
    v44 = *&v1[v35];
    v45 = v44;
    v46 = v43;
    sub_1000692A4(v44);
    sub_1001B5B98(v46);
  }

  v47 = sub_1001AB0B4();
  [v47 setNeedsUpdateConfiguration];

  v48 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton];
  [v48 setHidden:(sub_1001BDE70() & 1) == 0];

  if (sub_1001BDE70())
  {
    v49 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v50 = [v1 traitCollection];
    v51 = [v50 preferredContentSizeCategory];

    LOBYTE(v50) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if (v50)
    {
      v52 = 3;
    }

    else
    {
      v52 = 1;
    }

    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();

    *&v76 = sub_1001D1970;
    *(&v76 + 1) = v49;
    LOWORD(v77) = 257;
    *(&v77 + 1) = v52;
    *&v78 = sub_1001C68E4;
    *(&v78 + 1) = 0;
    v79 = 0uLL;
    *&v80 = sub_1001D1978;
    *(&v80 + 1) = v53;
    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    LOBYTE(v70) = 0;
    v72 = v77;
    v73 = v78;
    v74 = v79;
    v75 = v80;
    v71 = v76;
    swift_unknownObjectWeakInit();

    sub_1001D1980(&v76, &v69);
    sub_10058B0DC(&v70);

    sub_1001D19DC(&v76);
    sub_100198CAC(&v70);
  }

  else
  {
    if (qword_10117F8A8 != -1)
    {
      swift_once();
    }

    sub_10058BB38(0, 0);
  }

  v54 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager];
  if (([v54 musicHapticsEnabled] & v28) == 1)
  {
    v55 = *(v11 + 2);
    if (v55)
    {
      v56 = [v55 metadataObject];
      if (v56)
      {
        v57 = v56;
        v58 = [v56 innermostModelObject];

        objc_opt_self();
        v59 = swift_dynamicCastObjCClass();
        if (v59)
        {
          v60 = [v59 identifiers];
          MPIdentifierSet.bestStoreIdentifier.getter();
          v62 = v61;

          if (v62)
          {
            v63 = String._bridgeToObjectiveC()();

            v64 = swift_allocObject();
            swift_unknownObjectWeakInit();
            *(&v72 + 1) = sub_1001D1968;
            *&v73 = v64;
            v70 = _NSConcreteStackBlock;
            *&v71 = 1107296256;
            *(&v71 + 1) = sub_1005C3688;
            *&v72 = &unk_10109E980;
            v65 = _Block_copy(&v70);

            [v54 checkHapticTrackAvailabilityForMediaMatchingCode:v63 completionHandler:v65];
            _Block_release(v65);

            v58 = v63;
          }
        }
      }
    }
  }

  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView] invalidateIntrinsicContentSize];
  return sub_1001D1908(v11, type metadata accessor for NowPlaying.TrackMetadata);
}

void sub_1001D0A98()
{
  v1 = v0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken) = 0;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState) = 3;
  *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView) = 0;
  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
  type metadata accessor for PassthroughView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait) = 9;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton) = 0;
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
  v4 = type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController) = 0;
  v5 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = 0;
  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
  v7 = [objc_allocWithZone(UIView) init];
  v8 = UIView.forAutolayout.getter();

  *(v1 + v6) = v8;
  v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView;
  type metadata accessor for NowPlayingAttributionView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = UIView.forAutolayout.getter();

  *(v1 + v9) = v11;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView) = 0;
  v12 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  *(v1 + v12) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v13 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  *(v1 + v13) = [swift_getObjCClassFromMetadata() buttonWithType:0];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton) = 0;
  v14 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonConfiguration);
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton) = 0;
  v15 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButtonConfiguration);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton) = 0;
  v16 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_rightButtonConfiguration);
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView) = 0;
  v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  *(v1 + v17) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherParticipantsSubscription) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentExtendedLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerRegularLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerExtendedCollapsedLayoutConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_placeholderArtworkLayoutGuideConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackViewCollapsedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsCompactConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsCompactConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsRegularConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playerSubscriptions) = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager;
  *(v1 + v18) = [objc_opt_self() sharedManager];
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideFullBleedConstraints) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates) = 0;
  v19 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_animationData) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_bindings) = _swiftEmptyArrayStorage;
  v20 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame);
  *v20 = 0u;
  v20[1] = 0u;
  v21 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame);
  *v21 = 0u;
  v21[1] = 0u;
  v22 = (v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds);
  *v22 = 0u;
  v22[1] = 0u;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer) = 0;
  v23 = v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = -1;
  v24 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *(v1 + v24) = v25;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___leaveSessionButton) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_didAnimateReactionOnce) = 0;
  *(v25 + 96) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog) = 0;
  bottom = UIEdgeInsetsZero.bottom;
  HI.SizeClass.init(_:)(0.0);
  [0 userInterfaceIdiom];
  v27 = Int.seconds.getter(127);
  v28 = fmin(bottom + 0.0, 157.0);
  v29 = fmax((0.0 - v28 + 88.0) * 0.5, 68.0);
  v30 = -88.0;
  if (0.0 - v28 < v27 + v29 + -88.0)
  {
    v31 = 0.0 - v28 - v27 + -68.0;
    v30 = -88.0;
    if (v31 <= -88.0)
    {
      v30 = v31;
    }

    v29 = 68.0;
    v27 = 0.0 - (v28 + v30 + 68.0);
  }

  v32 = v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_metrics;
  *v32 = xmmword_100EBEE10;
  *(v32 + 16) = v29;
  *(v32 + 24) = 0;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0xC056000000000000;
  *(v32 + 48) = v27;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *(v32 + 72) = xmmword_100EBEE20;
  *(v32 + 88) = 0;
  *(v32 + 96) = v28;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo) = 0;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput) = 0;
  v42[32] = 0;
  v33 = OBJC_IVAR___MusicNowPlayingControlsViewController_glissandoDataSource;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v34 = qword_101218AC8;
  _s19GlissandoDataSourceCMa();
  v35 = swift_allocObject();
  *(v35 + 48) = 0xED00006572757473;
  *(v35 + 16) = v34;
  *(v35 + 24) = sub_1001CA9DC;
  *(v35 + 32) = xmmword_100EBEE30;
  v36 = MPCPlayerRequestTracklistRange.neighboringItems.unsafeMutableAddressor();
  v37 = *v36;
  v38 = v36[1];
  v39 = *(*v34 + 752);

  v40 = v39(v42);
  v41.reverseCount = v37;
  v41.forwardCount = v38;
  Player.NowPlayingConfiguration.insert(_:)(v41);
  v40(v42, 0);
  *(v1 + v33) = v35;
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1001D1494()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1001D1788;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_10109E868;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001CF0F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970);
  sub_100020674(&qword_101183F70, &qword_101182970);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

uint64_t sub_1001D17C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D184C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_100543240(v2, v3, v5, v4, v0 + 48);
}

uint64_t sub_1001D1908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1001D1A30()
{
  v1 = *(v0 + 16);
  if (*(v0 + 24) == 1)
  {
    if ([*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager] isActive])
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState] = v2;

  return [v1 updatePlayingItemAudioTraitButton];
}

uint64_t sub_1001D1AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_10035C184(a1, v4, v5, v6);
}

unint64_t sub_1001D1C24()
{
  result = qword_10118ABB0;
  if (!qword_10118ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118ABB0);
  }

  return result;
}

unint64_t sub_1001D1C78()
{
  result = qword_101183A10;
  if (!qword_101183A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183A10);
  }

  return result;
}

uint64_t sub_1001D1CE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1001BF388(a1);
}

uint64_t sub_1001D1DB4()
{

  return swift_deallocObject();
}

uint64_t sub_1001D1F78()
{

  return swift_deallocObject();
}

id sub_1001D1FC0()
{
  v1 = v0[3];
  if (*(v1 + 80) == v0[2])
  {
    v2 = v0[4];
    *(v1 + 72) = 1;
    return [v2 startAnimation];
  }

  return result;
}

uint64_t sub_1001D1FF8()
{

  return swift_deallocObject();
}

id sub_1001D207C()
{
  result = *(*(v0 + 16) + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

uint64_t sub_1001D20B0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001AFA20(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_1001D218C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100008F30;

  return sub_1001AEE18(a1, v4, v5, v1 + 32);
}

uint64_t sub_1001D22D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1001D2310()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1001AB554();
}

uint64_t sub_1001D23D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001A73C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1001D249C(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

uint64_t sub_1001D24B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001D2518(uint64_t a1)
{
  v4 = *(_s7ContextVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100008F30;

  return sub_1001A8874(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1001D2610(uint64_t a1, uint64_t a2)
{
  v4 = _s7ContextVMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1001D2688(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1001D26A0(a1, a2, a3 & 1);
  }
}

void sub_1001D26A0(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1001D26C0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001D26D8(result, a2, a3 & 1);
  }

  return result;
}

id sub_1001D26D8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

id sub_1001D27BC(void *a1)
{
  result = *(*(v1 + 16) + *a1);
  if (result)
  {
    return [result setAlpha:?];
  }

  __break(1u);
  return result;
}

uint64_t sub_1001D27DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001D281C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1001D284C()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_1001D2894(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1001D290C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1001BBC14();
}

unint64_t sub_1001D29B8()
{
  result = qword_101183AF8;
  if (!qword_101183AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183AF8);
  }

  return result;
}

void sub_1001D2A0C()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = 0;
}

uint64_t sub_1001D2A58(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001A656C(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D2B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_1001A6B58(a1, v4, v5, v7, v6);
}

uint64_t sub_1001D2E2C()
{

  return swift_deallocObject();
}

uint64_t sub_1001D2E74()
{

  return swift_deallocObject();
}

uint64_t sub_1001D2F1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1001A2B98(a1);
}

uint64_t sub_1001D2FC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1001A286C(a1);
}

void sub_1001D3268(char a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v31 - v11;
  if (a1)
  {
    if (qword_10117F5F8 != -1)
    {
      goto LABEL_27;
    }

    goto LABEL_3;
  }

  v17 = [v3 topViewController];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();

    if (v19)
    {
      Logger.init(subsystem:category:)();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Already showing Now Playing - no-op", v22, 2u);
      }

      (*(v7 + 8))(v12, v6);
      return;
    }
  }

  v23 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v10 = 0;
      v7 = v24 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v25 = sub_10004056C(v10, v24);
          v26 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_21:
            __break(1u);
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_27:
            swift_once();
LABEL_3:
            v13 = (*(*qword_101218AC8 + 528))();
            if (v13)
            {
              v14 = v13;
              v15 = objc_allocWithZone(type metadata accessor for SharePlayTogetherSessionManagementViewController(0));
              v16 = sub_10074B30C(v14);
LABEL_30:
              v32 = v16;
              [v3 pushViewController:? animated:?];
LABEL_31:
              v30 = v32;
            }

            else
            {
LABEL_22:
              Logger.init(subsystem:category:)();
              v27 = Logger.logObject.getter();
              v28 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v27, v28))
              {
                v29 = swift_slowAlloc();
                *v29 = 0;
                _os_log_impl(&_mh_execute_header, v27, v28, "Cannot push SharePlay Together session, no session found", v29, 2u);
              }

              (*(v7 + 8))(v10, v6);
            }

            return;
          }

          v25 = *(v24 + 8 * v10 + 32);
          v26 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_21;
          }
        }

        v32 = v25;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {

          goto LABEL_31;
        }

        ++v10;
      }

      while (v26 != v6);
    }
  }

  v16 = [objc_opt_self() musicNowPlayingViewController];
  if (v16)
  {
    goto LABEL_30;
  }

  __break(1u);
}

char *sub_1001D3748()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v1 - 8);
  v40 = &ObjectType - v2;
  v3 = sub_10010FC20(&unk_101183D80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &ObjectType - v5;
  v33 = sub_10010FC20(&qword_101182EB0);
  v7 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &ObjectType - v8;
  v10 = sub_10010FC20(&qword_101183D90);
  v34 = *(v10 - 8);
  v35 = v10;
  __chkstk_darwin(v10);
  v12 = &ObjectType - v11;
  v13 = sub_10010FC20(&qword_101183D98);
  v36 = *(v13 - 8);
  v37 = v13;
  __chkstk_darwin(v13);
  v15 = &ObjectType - v14;
  v16 = sub_10010FC20(&qword_101183DA0);
  v38 = *(v16 - 8);
  v39 = v16;
  __chkstk_darwin(v16);
  v18 = &ObjectType - v17;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v19 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_subscriptions] = v19;
  v20 = &v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 0;
  *&v0[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver] = 0;
  v21 = OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource;
  *&v0[v21] = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  v42.receiver = v0;
  v42.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v42, "initWithNibName:bundle:", 0, 0);
  [v22 setNavigationBarHidden:0];
  [v22 setDelegate:v22];
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  (*(*qword_101218AC8 + 456))();
  sub_100020674(&unk_1011A4650, &unk_101183D80);
  Publisher.filter(_:)();
  (*(v4 + 8))(v6, v3);
  sub_100020674(&qword_101182F30, &qword_101182EB0);
  v23 = v33;
  Publisher.map<A>(_:)();
  (*(v7 + 8))(v9, v23);
  sub_100020674(&qword_101183DA8, &qword_101183D90);
  sub_1001D7148();
  v24 = v35;
  Publisher<>.removeDuplicates()();
  (*(v34 + 8))(v12, v24);
  sub_100009F78(0, &qword_101182960);
  v25 = static OS_dispatch_queue.main.getter();
  v41 = v25;
  v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v27 = v40;
  (*(*(v26 - 8) + 56))(v40, 1, 1, v26);
  sub_100020674(&unk_101183DC0, &qword_101183D98);
  sub_10001C070(&qword_101184920, &qword_101182960);
  v28 = v37;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v27, &qword_101182140);

  (*(v36 + 8))(v15, v28);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&unk_101183DD0, &qword_101183DA0);
  v29 = v39;
  Publisher<>.sink(receiveValue:)();

  (*(v38 + 8))(v18, v29);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();
  *&v22[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver] = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_1001D71A4, v30);

  return v22;
}

void sub_1001D3F98(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = [*a1 tracklist];
    v5 = [v4 playingItem];

    v6 = v5 != 0;
    if (v5)
    {
    }

    v7 = [v3 state];
    v8 = [v3 tracklist];
    v9 = [v8 playingItem];

    if (v9)
    {
      LOBYTE(v3) = MPCPlayerResponseItem.isLiveContent.getter();
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v3 & 1;
}

void sub_1001D409C(char *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = a1[16];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState;
    v7 = *(Strong + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState);
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *v6 = v1;
    *(v6 + 8) = v2;
    *(v6 + 16) = v3;
    sub_1001D4F00(v7, v8, v9);
  }
}

void sub_1001D4130(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1001D418C(a1 & 1);
  }
}

void sub_1001D418C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    Logger.init(subsystem:category:)();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Showing message about content restriction that should be resolved on device", v12, 2u);
    }

    (*(v7 + 8))(v9, v6);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v13 = String.init(localized:table:bundle:locale:comment:)();
    v15 = v14;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v16 = String.init(localized:table:bundle:locale:comment:)();
    v18 = v17;
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v19 = String.init(localized:table:bundle:locale:comment:)();
    v21 = v20;
    v22 = objc_allocWithZone(type metadata accessor for CarPlayInformationView());
    v23 = sub_100268B8C(v13, v15, v16, v18, 0, v19, v21, sub_1001D5A14, 0, 0);
    v24 = [objc_allocWithZone(UIViewController) init];
    [v24 setView:v23];
    sub_10010FC20(&qword_101183990);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100EBC6C0;
    *(v25 + 32) = v24;
    sub_100009F78(0, &qword_101183D40);
    v26 = v24;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setViewControllers:isa];
  }

  else
  {
    v28 = [objc_allocWithZone(type metadata accessor for CarPlayTabBarController()) init];
    sub_10010FC20(&qword_101183990);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100EBC6C0;
    *(v29 + 32) = v28;
    sub_100009F78(0, &qword_101183D40);
    v30 = v28;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v2 setViewControllers:v32];

    v31 = v32;
  }
}

void sub_1001D46CC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10010FC20(&unk_101181520);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v3);
  v6 = [v0 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor:v8];

    v9 = objc_opt_self();
    v10 = [v9 sharedPrivacyInfo];
    v11 = [v10 privacyAcknowledgementRequiredForMusic];

    sub_1001D418C(v11);
    v12 = [v9 sharedPrivacyInfo];
    LOBYTE(v10) = [v12 privacyAcknowledgementRequiredForMusic];

    if ((v10 & 1) == 0)
    {
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
      type metadata accessor for MainActor();
      v14 = v0;
      v15 = static MainActor.shared.getter();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v14;
      sub_1001F4CB8(0, 0, v5, &unk_100EBF740, v16);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001D48F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1001D49EC, v7, v6);
}

uint64_t sub_1001D49EC()
{
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v3 = (*(*qword_101218AC8 + 728) + **(*qword_101218AC8 + 728));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1001D4B3C;

  return v3();
}

uint64_t sub_1001D4B3C(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {

    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = sub_1001D4E14;
  }

  else
  {
    v4 = *(v3 + 56);
    v5 = *(v3 + 64);
    v6 = sub_1001D4C64;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001D4C64()
{
  v1 = v0[10];

  if (v1)
  {
    v2 = v0[10];
    v3 = [v2 playerPath];
    v4 = [v3 isLocalDevice];

    if (v4 && [v2 state] == 2)
    {
      Logger.init(subsystem:category:)();
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "viewDidLoad - pushing Now Playing", v7, 2u);
      }

      v9 = v0[4];
      v8 = v0[5];
      v10 = v0[3];

      (*(v9 + 8))(v8, v10);
      sub_1001D3268(0, 1);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1001D4E14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D4EC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 1) == *(a2 + 1))
  {
    return a1[16] ^ a2[16] ^ 1u;
  }

  return 0;
}

void sub_1001D4F00(char a1, uint64_t a2, int a3)
{
  v6 = a1 & 1;
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = &v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  v11 = v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState];
  v12 = v11 == v6 && *&v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState + 8] == a2;
  if (!v12 || ((v3[OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState + 16] ^ a3) & 1) != 0)
  {
    sub_1001D50D8(v11);
    v13 = [objc_opt_self() sharedPrivacyInfo];
    v14 = [v13 privacyAcknowledgementRequiredForMusic];

    if ((v14 & 1) == 0 && [v3 isViewLoaded] && (v10[16] & 1) == 0 && *(v10 + 1) == 2 && (a2 & 0xFFFFFFFFFFFFFFFBLL) != 2)
    {
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
      type metadata accessor for MainActor();
      v17 = v3;
      v18 = static MainActor.shared.getter();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = &protocol witness table for MainActor;
      v19[4] = v17;
      sub_1001F4CB8(0, 0, v9, &unk_100EBF768, v19);
    }
  }
}

uint64_t sub_1001D50D8(char a1)
{
  LOBYTE(v2) = a1;
  v3 = [v1 viewControllers];
  sub_100009F78(0, &qword_101183D40);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = sub_10010FC20(&qword_101183DE8);
  v5 = sub_100020674(&qword_101183DF0, &qword_101183DE8);
  v6 = Sequence.exclude(_:)(sub_1001D691C, 0, v4, v5);

  if (v6 >> 62)
  {
    goto LABEL_16;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  v7 = v6;
  while (1)
  {

    v8 = sub_1001D5624(v7);

    if (v8 >> 62)
    {
      break;
    }

    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
    }

LABEL_5:
    v10 = 0;
    v11 = v2 ^ 1;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = sub_1007E90E8(v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v2 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      type metadata accessor for MusicCarPlayBarNowPlayingButtonItem();
      if (swift_dynamicCastClass())
      {
        [v2 setHidden:v11 & 1];
      }

      ++v10;
      if (v13 == v9)
      {
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:

    v7 = _bridgeCocoaArray<A>(_:)();
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (v9)
  {
    goto LABEL_5;
  }
}

uint64_t sub_1001D5320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001D5414, v7, v6);
}

uint64_t sub_1001D5414()
{
  v1 = v0[2];

  Logger.init(subsystem:category:)();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v3, v4))
  {

    v3 = v0[2];
    goto LABEL_10;
  }

  v5 = swift_slowAlloc();
  *v5 = 67109120;
  sub_1001D6A2C();
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  if (![v6 activationState])
  {

    goto LABEL_8;
  }

  v8 = [v7 activationState];

  if (v8 == 1)
  {
LABEL_8:
    v9 = 1;
    goto LABEL_9;
  }

LABEL_5:
  v9 = 0;
LABEL_9:
  v10 = v0[2];
  *(v5 + 4) = v9;

  _os_log_impl(&_mh_execute_header, v3, v4, "playbackState updated - pushing Now Playing [animated:%{BOOL}d]", v5, 8u);

LABEL_10:
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];

  (*(v12 + 8))(v11, v13);
  sub_1001D6A2C();
  if (v14)
  {
    v15 = v14;
    if ([v14 activationState])
    {
      v16 = [v15 activationState];

      v17 = v16 == 1;
    }

    else
    {

      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  sub_1001D3268(0, v17);

  v18 = v0[1];

  return v18();
}

void *sub_1001D5624(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = _swiftEmptyArrayStorage;
    v4 = &unk_101181588;
    v29 = v1;
    while (1)
    {
      if (v32)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10004056C(v2, v28);
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v30 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject navigationItem];
      v8 = [v7 rightBarButtonItems];

      if (v8)
      {
        sub_100009F78(0, &qword_101181580);
        v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v5 = v8;
      }

      else
      {
        v9 = _swiftEmptyArrayStorage;
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v36 = v3;
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *(v14 + 24) >> 1)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

LABEL_23:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v36 = v3;
LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v34 = v11;
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        isUniquelyReferenced_nonNull_bridgeObject = _CocoaArrayWrapper.endIndex.getter();
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_29:
          if (((v16 >> 1) - v15) < v34)
          {
            goto LABEL_46;
          }

          v18 = v14 + 8 * v15 + 32;
          v33 = v2;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_48;
            }

            sub_100020674(&unk_101181590, v4);
            v19 = v4;
            for (i = 0; i != v17; ++i)
            {
              sub_10010FC20(v19);
              v21 = sub_1006CAF1C(v35, i, v9);
              v23 = *v22;
              (v21)(v35, 0);
              *(v18 + 8 * i) = v23;
            }
          }

          else
          {
            sub_100009F78(0, &qword_101181580);
            swift_arrayInitWithCopy();
            v19 = v4;
          }

          v1 = v29;
          v4 = v19;
          v2 = v33;
          if (v34 >= 1)
          {
            v24 = *(v14 + 16);
            v6 = __OFADD__(v24, v34);
            v25 = v24 + v34;
            if (v6)
            {
              goto LABEL_47;
            }

            *(v14 + 16) = v25;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      if (v34 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      v3 = v36;
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = _CocoaArrayWrapper.endIndex.getter();
    isUniquelyReferenced_nonNull_bridgeObject = v26;
  }

  return _swiftEmptyArrayStorage;
}

void sub_1001D5A14()
{
  v0 = [objc_opt_self() defaultService];
  if (v0)
  {
    v1 = v0;
    v2 = String._bridgeToObjectiveC()();
    v4[4] = sub_1001D5B14;
    v4[5] = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 1107296256;
    v4[2] = sub_1001D5D0C;
    v4[3] = &unk_1010A00B0;
    v3 = _Block_copy(v4);
    [v1 openApplication:v2 completion:v3];
    _Block_release(v3);
  }
}

void sub_1001D5B14(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    Logger.init(subsystem:category:)();
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138543362;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v10;
      *v9 = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "Error dismissing Music app error=%{public}@", v8, 0xCu);
      sub_1000095E8(v9, &unk_101183D70);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
  }
}

void sub_1001D5D0C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1001D5D78()
{
  sub_1001D68A4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE260;
  *(v0 + 32) = sub_100009F78(0, &qword_101183D48);
  *(v0 + 40) = sub_100009F78(0, &qword_101183D50);
  result = type metadata accessor for MCDSharePlayTogetherSessionViewController();
  *(v0 + 48) = result;
  off_101183C40 = v0;
  return result;
}

uint64_t sub_1001D5E10()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 configurationWithScale:1];
    v4 = [v2 configurationWithWeight:5];
    v5 = [v3 configurationByApplyingConfiguration:v4];

    v6 = [v1 imageWithSymbolConfiguration:v5];
  }

  type metadata accessor for MusicCarPlayBarButtonItem();
  swift_unknownObjectRetain();
  return UIBarButtonItem.init(title:image:target:action:menu:)();
}

void *sub_1001D5F74(char a1)
{
  sub_10010FC20(&qword_101183990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  type metadata accessor for MusicCarPlayBarNowPlayingButtonItem();
  *(inited + 32) = [swift_getObjCClassFromMetadata() nowPlayingBarButtonWithTarget:v1 action:"nowPlayingButtonAction"];
  type metadata accessor for MusicCarPlayBarButtonItem();
  v12.value.super.super.isa = 0;
  v12.is_nil = 0;
  *(inited + 40) = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemFixedSpace, v12, v13);
  *(inited + 48) = sub_1001D5E10();
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    v5 = sub_1007E939C(0, inited);
  }

  else
  {
    v5 = *(inited + 32);
  }

  v6 = v5;
  if (swift_dynamicCastClass())
  {
    [v6 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  if (v4)
  {
    v8 = sub_1007E939C(1uLL, inited);
  }

  else
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      goto LABEL_20;
    }

    v8 = *(inited + 40);
  }

  v9 = v8;
  if (swift_dynamicCastClass())
  {
    [v9 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  result = specialized ContiguousArray._endMutation()();
  if (!v4)
  {
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v10 = *(inited + 48);
      goto LABEL_15;
    }

LABEL_20:
    __break(1u);
    return result;
  }

  v10 = sub_1007E939C(2uLL, inited);
LABEL_15:
  v11 = v10;

  if (swift_dynamicCastClass())
  {
    [v11 setHidden:(a1 & 1) == 0];
  }

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  return _swiftEmptyArrayStorage;
}

BOOL sub_1001D6550()
{
  if (qword_10117F318 != -1)
  {
    swift_once();
  }

  v0 = *(off_101183C40 + 2);
  v1 = (off_101183C40 + 32);
  do
  {
    v2 = v0;
    if (v0-- == 0)
    {
      break;
    }

    v4 = *v1++;
  }

  while (swift_getObjectType() != v4);
  return v2 != 0;
}

id sub_1001D66B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicCarPlayBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for CarPlayRootNavigationController.PlaybackState(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CarPlayRootNavigationController.PlaybackState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CarPlayRootNavigationController.PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001D68A4()
{
  v0 = sub_10010FC20(&qword_101183D58);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_101183D60;
  }

  else
  {
    v2 = &qword_101183990;
  }

  return sub_10010FC20(v2);
}

void sub_1001D693C()
{
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v1 = sub_10010E5A8(_swiftEmptyArrayStorage);
  }

  else
  {
    v1 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_subscriptions) = v1;
  v2 = v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v0 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_privacyAcknowledgementObserver) = 0;
  v3 = OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_siriActionSource;
  *(v0 + v3) = [objc_allocWithZone(SiriDirectActionSource) initWithDelegate:0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001D6A2C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_100009F78(0, &qword_1011839F0);
  sub_10001C070(&qword_101183DE0, &qword_1011839F0);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
    v6 = v29;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = [v15 session];
        v17 = [v16 role];

        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_25;
        }

        v5 = v13;
        v6 = v14;
        if ((v2 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v15 = v24;
          v13 = v5;
          v14 = v6;
          if (v24)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

LABEL_25:
    sub_10005C9F8();
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_25;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_1001D6D4C(id a1)
{
  if (qword_10117F318 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v3 = *(off_101183C40 + 2);
    v4 = (off_101183C40 + 32);
    while (v3)
    {
      v5 = *v4++;
      --v3;
      if (swift_getObjectType() == v5)
      {
        return;
      }
    }

    v6 = [a1 navigationItem];
    v7 = [v6 rightBarButtonItems];

    if (v7)
    {
      sub_100009F78(0, &qword_101181580);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    a1 = [a1 navigationItem];
    v9 = sub_1001D5F74(*(v1 + OBJC_IVAR____TtC5Music31CarPlayRootNavigationController_playbackState));
    v10 = v9;
    if (v9 >> 62)
    {
      v1 = (v9 < 0 ? v9 : v9 & 0xFFFFFFFFFFFFFF8);
      sub_100009F78(0, &qword_101181580);
      v11 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      v1 = (v10 & 0xFFFFFFFFFFFFFF8);
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_101181580);
      v11 = v10;
    }

    v19 = _swiftEmptyArrayStorage;
    if (v8 >> 62)
    {
      break;
    }

    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_32;
    }

LABEL_13:
    v17 = a1;
    v13 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v14 = sub_1007E90E8(v13, v8);
      }

      else
      {
        if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v14 = *(v8 + 8 * v13 + 32);
      }

      v15 = v14;
      a1 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      type metadata accessor for MusicCarPlayBarButtonItem();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = &v19;
        specialized ContiguousArray._endMutation()();
      }

      ++v13;
      if (a1 == v12)
      {
        a1 = v17;
        v16 = v19;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_32:
  v16 = _swiftEmptyArrayStorage;
LABEL_33:

  v19 = v11;
  sub_1001240B4(v16);
  sub_100009F78(0, &qword_101181580);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setRightBarButtonItems:isa];
}

uint64_t sub_1001D7094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1001D48F8(a1, v4, v5, v6);
}

unint64_t sub_1001D7148()
{
  result = qword_101183DB0;
  if (!qword_101183DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183DB0);
  }

  return result;
}

uint64_t sub_1001D71AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001D5320(a1, v4, v5, v6);
}

void sub_1001D72A4(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_1001DEF90, v8);
}

uint64_t sub_1001D7400(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a4;
  v31 = a3;
  v28 = a10;
  v29 = a11;
  v13 = type metadata accessor for PlaybackIntentDescriptor(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v17 - 8);
  v19 = &v28 - v18;
  v20 = UIView.noticePresenter.getter();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_1001DFCE4(a6, v16);
  sub_10012B7A8(a9, v32);
  type metadata accessor for MainActor();
  sub_1001DFD48(a8);

  v22 = static MainActor.shared.getter();
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  *(v26 + 16) = v22;
  *(v26 + 24) = &protocol witness table for MainActor;
  sub_1001DFD58(v16, v26 + v23);
  *(v26 + v24) = a8;
  *(v26 + v25) = v20;
  sub_10012B828(v32, v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
  sub_1001F4CB8(0, 0, v19, v29, v26);

  return v31(1);
}

uint64_t sub_1001D763C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  type metadata accessor for Notice(0);
  v7[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[12] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[13] = v9;
  v7[14] = v8;

  return _swift_task_switch(sub_1001D7704, v9, v8);
}

uint64_t sub_1001D7704(uint64_t a1)
{
  if (qword_10117F608 != -1)
  {
    a1 = swift_once();
  }

  v2 = PlaybackIntentDescriptor.intent.getter(a1);
  *(v1 + 120) = v2;
  strcpy((v1 + 16), "Swipe Action");
  *(v1 + 40) = &type metadata for Player.CommandIssuerIdentity;
  *(v1 + 48) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  v3 = swift_task_alloc();
  *(v1 + 128) = v3;
  *v3 = v1;
  v3[1] = sub_1001D7830;
  v4 = *(v1 + 64);

  return PlaybackController.insert(_:location:issuer:)(v2, v4, v1 + 16);
}

uint64_t sub_1001D7830()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001D7A44;
  }

  else
  {
    sub_1000095E8(v2 + 16, &unk_101183910);
    v4 = *(v2 + 104);
    v5 = *(v2 + 112);
    v6 = sub_1001D797C;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_1001D797C()
{
  v1 = v0[9];

  if (v1)
  {
    v2 = v0[11];
    v3 = v0[9];
    Player.InsertCommand.Location.notice.getter(v2);
    (*(*v3 + 200))(v2, 0);
    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001D7A44()
{

  sub_1000095E8(v0 + 16, &unk_101183910);
  v1 = sub_1003FF96C();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v1, 1, 1, 0, 0);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1001D7AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v12);
  (*(v10 + 16))(&v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, a3, v13);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = a2;
  (*(v10 + 32))(&v15[v14], &v26[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a3);
  aBlock[4] = sub_1001DC2D8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0150;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();

  v18 = [v17 contextualActionWithStyle:0 title:0 handler:v16];
  _Block_release(v16);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v19 = qword_101183DF8;
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  if (v21)
  {
    v22 = [v21 imageWithTintColor:*UIColor.MusicTint.normal.unsafeMutableAddressor() renderingMode:1];
  }

  else
  {
    v22 = 0;
  }

  [v18 setImage:v22];

  if (qword_10117F328 != -1)
  {
    swift_once();
  }

  [v18 setBackgroundColor:qword_101183E00];
  v23 = v18;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v24 = String._bridgeToObjectiveC()();

  [v23 setAccessibilityLabel:v24];

  return v23;
}

id sub_1001D7F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v34[1] = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v34[0] = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v19 = __chkstk_darwin(v18);
  v20 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a4, v19);
  sub_10012B7A8(a3, v36);
  v21 = (*(v16 + 80) + 40) & ~*(v16 + 80);
  v22 = (v17 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = a4;
  *(v23 + 3) = a5;
  *(v23 + 4) = a6;
  (*(v16 + 32))(&v23[v21], v20, a4);
  *&v23[v22] = a2;
  sub_10012B828(v36, &v23[(v22 + 15) & 0xFFFFFFFFFFFFFFF8]);
  aBlock[4] = sub_1001DF1B8;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0218;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_self();

  v26 = [v25 contextualActionWithStyle:0 title:0 handler:{v24, v34[0]}];
  _Block_release(v24);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v27 = qword_101183DF8;
  v28 = String._bridgeToObjectiveC()();
  v29 = [objc_opt_self() systemImageNamed:v28 withConfiguration:v27];

  [v26 setImage:v29];
  v30 = [objc_opt_self() systemBlueColor];
  [v26 setBackgroundColor:v30];

  v31 = v26;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v32 = String._bridgeToObjectiveC()();

  [v31 setAccessibilityLabel:v32];

  return v31;
}

id sub_1001D8328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v74 = a6;
  v70 = a5;
  v69 = a3;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v72 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v71 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a4;
  v68 = *(a4 - 8);
  __chkstk_darwin(v13);
  v66 = v14;
  v67 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10010FC20(&qword_101183E28);
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v60 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v59 = &v59 - v18;
  v19 = type metadata accessor for MusicLibrary.RemoveAction();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&unk_101193E60);
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v59 - v28;
  static MusicLibraryAction<>.remove.getter();
  v30 = v74;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v20 + 8))(v22, v19);
  (*(v24 + 32))(v26, v29, v23);
  LODWORD(v29) = (*(v24 + 88))(v26, v23);
  v31 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v32 = v26;
  v33 = v30;
  (*(v24 + 8))(v32, v23);
  v34 = v73;
  v35 = v29 == v31;
  v36 = a1;
  if (!v35)
  {
    v37 = v61;
    static MusicLibraryAction<>.removeDownload.getter();
    v38 = v59;
    v39 = v65;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v63 + 8))(v37, v39);
    v40 = v62;
    v41 = v60;
    v42 = v64;
    (*(v62 + 32))(v60, v38, v64);
    LODWORD(v39) = (*(v40 + 88))(v41, v42);
    (*(v40 + 8))(v41, v42);
    if (v39 != v31)
    {
      return 0;
    }
  }

  sub_10012B7A8(v69, v76);
  v43 = v68;
  v44 = v67;
  (*(v68 + 16))(v67, v36, v34);
  v45 = (*(v43 + 80) + 136) & ~*(v43 + 80);
  v46 = (v66 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v70;
  *(v47 + 2) = v34;
  *(v47 + 3) = v48;
  *(v47 + 4) = v33;
  sub_10012B828(v76, (v47 + 40));
  (*(v43 + 32))(&v47[v45], v44, v34);
  *&v47[v46] = a2;
  aBlock[4] = sub_1001DFAF0;
  aBlock[5] = v47;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D72A4;
  aBlock[3] = &unk_1010A0448;
  v49 = _Block_copy(aBlock);
  v50 = objc_opt_self();

  v51 = [v50 contextualActionWithStyle:0 title:0 handler:v49];
  _Block_release(v49);

  if (qword_10117F320 != -1)
  {
    swift_once();
  }

  v52 = qword_101183DF8;
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() systemImageNamed:v53 withConfiguration:v52];

  [v51 setImage:v54];
  v55 = [objc_opt_self() systemRedColor];
  [v51 setBackgroundColor:v55];

  v56 = v51;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v57 = String._bridgeToObjectiveC()();

  [v56 setAccessibilityLabel:v57];

  return v56;
}

uint64_t sub_1001D8B8C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a8;
  v25 = a4;
  v26 = a3;
  v11 = *(a7 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(a1);
  v13 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = UIView.noticePresenter.getter();
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a6, a7);
  type metadata accessor for MainActor();

  v18 = static MainActor.shared.getter();
  v19 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v18;
  *(v20 + 3) = &protocol witness table for MainActor;
  v21 = v24;
  *(v20 + 4) = a7;
  *(v20 + 5) = v21;
  *(v20 + 6) = a5;
  (*(v11 + 32))(&v20[v19], &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a7);
  *&v20[(v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8] = v16;
  sub_1001F4CB8(0, 0, v15, &unk_100EBF7E8, v20);

  v26(1);
}

uint64_t sub_1001D8DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  type metadata accessor for Locale();
  v8[9] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[10] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = type metadata accessor for Notice.Variant(0);
  v8[15] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v8[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[17] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[18] = v11;
  v8[19] = v10;

  return _swift_task_switch(sub_1001D8F88, v11, v10);
}

uint64_t sub_1001D8F88()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_1001DF0E4(v1, v1);
  v3 = *(v1 - 8);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  v0[20] = v4;
  (*(v3 + 16))(v5, v2, v1);
  v6 = type metadata accessor for Array();
  v0[2] = v4;
  v7 = swift_task_alloc();
  v0[21] = v7;
  WitnessTable = swift_getWitnessTable();
  *v7 = v0;
  v7[1] = sub_1001D9110;
  v9 = v0[7];
  v10 = v0[8];

  return MusicLibrary.add<A, B>(_:)(v0 + 2, v6, v9, WitnessTable, v10);
}

uint64_t sub_1001D9110()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1001D9388;
  }

  else
  {

    v3 = *(v2 + 144);
    v4 = *(v2 + 152);
    v5 = sub_1001D9260;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1001D9260()
{
  v1 = v0[6];

  if (v1)
  {
    v3 = v0[15];
    v2 = v0[16];
    v4 = v0[6];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v3, v2);
    sub_1001DF158(v3, type metadata accessor for Notice.Variant);
    (*(*v4 + 200))(v2, 0);
    sub_1001DF158(v2, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001D9388()
{
  v25 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[22];
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[11];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315138;
    v0[3] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v24);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to add item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[12];
    v16 = v0[13];
    v18 = v0[11];

    (*(v17 + 8))(v16, v18);
  }

  v19 = v0[6];
  if (v19)
  {
    v20 = v0[15];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v20 = String.init(localized:table:bundle:locale:comment:)();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
    (*(*v19 + 192))(v20, 1);

    sub_1001DF158(v20, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1001D967C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a6;
  v33 = a4;
  v34 = a3;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v31 = a9;
  v32 = a10;
  __chkstk_darwin(a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a5, a8);
  sub_10012B7A8(a7, v35);
  type metadata accessor for MainActor();

  v29 = a2;
  v21 = static MainActor.shared.getter();
  v22 = (*(v14 + 80) + 56) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  *(v25 + 2) = v21;
  *(v25 + 3) = &protocol witness table for MainActor;
  v27 = v31;
  v26 = v32;
  *(v25 + 4) = a8;
  *(v25 + 5) = v27;
  *(v25 + 6) = v26;
  (*(v14 + 32))(&v25[v22], v16, a8);
  *&v25[v23] = v30;
  sub_10012B828(v35, &v25[v24]);
  *&v25[(v24 + 103) & 0xFFFFFFFFFFFFFFF8] = v29;
  sub_1001F4CB8(0, 0, v19, &unk_100EBF7F8, v25);

  return v34(1);
}

uint64_t sub_1001D98FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[83] = v16;
  v8[82] = v15;
  v8[81] = a8;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a4;
  type metadata accessor for Locale();
  v8[84] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v8[85] = swift_task_alloc();
  v8[86] = type metadata accessor for Notice.Variant(0);
  v8[87] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[88] = v10;
  v8[89] = *(v10 - 8);
  v8[90] = swift_task_alloc();
  sub_10010FC20(&unk_1011838D0);
  v8[91] = swift_task_alloc();
  v8[92] = *(a8 - 8);
  v8[93] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[94] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[95] = v12;
  v8[96] = v11;

  return _swift_task_switch(sub_1001D9B28, v12, v11);
}

uint64_t sub_1001D9B28()
{
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v3 = *(v0 + 664);
  v4 = *(v0 + 656);
  v5 = *(v0 + 648);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  (*(*(v0 + 736) + 16))(v1, *(v0 + 616), v5);
  sub_10012B7A8(v6, v0 + 464);
  v8 = type metadata accessor for Actions.MetricsReportingContext();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);

  Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v1, v7, v0 + 464, v2, v5, v4, v3, (v0 + 560));
  static Actions.Download.action(context:)((v0 + 560), v0 + 16);

  v9 = *(v0 + 96);
  *(v0 + 192) = *(v0 + 80);
  *(v0 + 208) = v9;
  *(v0 + 224) = *(v0 + 112);
  v10 = *(v0 + 32);
  *(v0 + 128) = *(v0 + 16);
  *(v0 + 144) = v10;
  v11 = *(v0 + 64);
  *(v0 + 160) = *(v0 + 48);
  *(v0 + 176) = v11;
  v12 = swift_task_alloc();
  *(v0 + 776) = v12;
  v13 = sub_10010FC20(&unk_101193E50);
  *v12 = v0;
  v12[1] = sub_1001D9CEC;

  return Action.execute(checkSupportedStatus:)(v13, 1, v13);
}

uint64_t sub_1001D9CEC()
{
  v2 = *v1;
  *(*v1 + 784) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    *(v2 + 240) = *(v2 + 128);
    *(v2 + 256) = v3;
    v4 = *(v2 + 160);
    v5 = *(v2 + 176);
    v6 = *(v2 + 192);
    v7 = *(v2 + 224);
    *(v2 + 320) = *(v2 + 208);
    *(v2 + 336) = v7;
    *(v2 + 288) = v5;
    *(v2 + 304) = v6;
    *(v2 + 272) = v4;
    sub_1000095E8(v2 + 240, &unk_101193E50);
    v8 = *(v2 + 768);
    v9 = *(v2 + 760);
    v10 = sub_1001D9F2C;
  }

  else
  {
    *(v2 + 352) = *(v2 + 128);
    *(v2 + 368) = v3;
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    v13 = *(v2 + 192);
    v14 = *(v2 + 224);
    *(v2 + 432) = *(v2 + 208);
    *(v2 + 448) = v14;
    *(v2 + 400) = v12;
    *(v2 + 416) = v13;
    *(v2 + 384) = v11;
    sub_1000095E8(v2 + 352, &unk_101193E50);
    v8 = *(v2 + 768);
    v9 = *(v2 + 760);
    v10 = sub_1001D9E78;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1001D9E78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001D9F2C()
{
  v26 = v0;
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];

  v4 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[98];
    v8 = v0[90];
    v9 = v0[89];
    v10 = v0[88];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315138;
    v0[76] = v7;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v13 = String.init<A>(describing:)();
    v15 = sub_1000105AC(v13, v14, &v25);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to download item=%s", v11, 0xCu);
    sub_10000959C(v12);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v16 = v0[90];
    v17 = v0[89];
    v18 = v0[88];

    (*(v17 + 8))(v16, v18);
  }

  v19 = UIView.noticePresenter.getter();
  if (v19)
  {
    v20 = v19;
    v21 = v0[87];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    *v21 = String.init(localized:table:bundle:locale:comment:)();
    v21[1] = v22;
    swift_storeEnumTagMultiPayload();
    (*(*v20 + 192))(v21, 1);

    sub_1001DF158(v21, type metadata accessor for Notice.Variant);
  }

  else
  {
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001DA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a7;
  v32 = a3;
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  v30 = a9;
  v31 = a10;
  __chkstk_darwin(a1);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_10012B7A8(a5, v33);
  (*(v14 + 16))(v16, a6, a8);
  type metadata accessor for MainActor();

  v21 = static MainActor.shared.getter();
  v22 = (*(v14 + 80) + 152) & ~*(v14 + 80);
  v23 = (v15 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 2) = v21;
  *(v24 + 3) = &protocol witness table for MainActor;
  v26 = v30;
  v25 = v31;
  *(v24 + 4) = a8;
  *(v24 + 5) = v26;
  *(v24 + 6) = v25;
  sub_10012B828(v33, (v24 + 56));
  (*(v14 + 32))(&v24[v22], v16, a8);
  *&v24[v23] = v29;
  v27 = &v24[(v23 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v27 = v32;
  *(v27 + 1) = a4;
  sub_1001F4CB8(0, 0, v19, &unk_100EBF850, v24);
}

uint64_t sub_1001DA4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v14;
  *(v8 + 56) = v13;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  type metadata accessor for MainActor();
  *(v8 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DA574, v10, v9);
}

uint64_t sub_1001DA574()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = *(v7 + 48) == 0xFF;
  sub_100009F78(0, &qword_101183E20);
  v9 = sub_1003FCD9C(v6, v5, v8, v3, v2, v1);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v9, 1, 1, 0, 0);

  v4(1);
  v10 = v0[1];

  return v10();
}

id sub_1001DA680(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v86 = a4;
  v85 = a3;
  v88 = a2;
  v80 = type metadata accessor for MusicLibrary.DownloadAction();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v76 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_10010FC20(&qword_101183E08);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v74 = &v71 - v8;
  v84 = type metadata accessor for MusicLibrary.AddAction();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_10010FC20(&unk_101193E20);
  v89 = *(v83 - 8);
  __chkstk_darwin(v83);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v72 = &v71 - v12;
  __chkstk_darwin(v13);
  v15 = &v71 - v14;
  __chkstk_darwin(v16);
  v18 = &v71 - v17;
  v19 = type metadata accessor for Playlist.EditableComponents();
  v81 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v22 - 8);
  v24 = &v71 - v23;
  v25 = type metadata accessor for Playlist.Entry.InternalItem();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.musicItem.getter(v91);
  (*(v26 + 8))(v28, v25);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_101183E10);
  if (!swift_dynamicCast())
  {
    memset(v90, 0, sizeof(v90));
    sub_1000095E8(v90, &qword_101183E18);
    return 0;
  }

  sub_1000D8F88(v90, &v92);
  *&v90[0] = _swiftEmptyArrayStorage;
  v29 = v85;
  v30 = sub_1001DB1AC(a1, v88, v85, v86);
  v31 = v30;
  if (v30)
  {
    v32 = v30;
    Playlist.editableComponents.getter();
    v33 = v81;
    if ((*(v81 + 48))(v24, 1, v19) == 1)
    {

      sub_1000095E8(v24, &unk_10118D240);
    }

    else
    {
      static Playlist.EditableComponents.tracklist.getter();
      sub_1001DF5CC(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
      v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v36 = *(v33 + 8);
      v36(v21, v19);
      v36(v24, v19);
      if (v35)
      {
        v37 = v32;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_24;
      }

      v29 = v85;
    }
  }

  v88 = v31;
  sub_10000954C(&v92, v93);
  v38 = v82;
  static MusicLibraryAction<>.add.getter();
  v39 = v84;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  v40 = v87 + 8;
  v85 = *(v87 + 8);
  v85(v38, v39);
  v41 = v29;
  v42 = v89;
  v43 = v83;
  v81 = *(v89 + 32);
  (v81)(v15, v18, v83);
  v71 = *(v42 + 88);
  v44 = v71(v15, v43);
  v45 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v46 = *(v42 + 8);
  v89 = v42 + 8;
  v46(v15, v43);
  v47 = v93;
  if (v44 == v45)
  {
    v48 = v94;
    v49 = sub_10000954C(&v92, v93);
    sub_1001D7AFC(v49, v41, v47, v48);
  }

  else
  {
    v87 = v40;
    sub_10000954C(&v92, v93);
    v50 = v76;
    static MusicLibraryAction<>.download.getter();
    v51 = v74;
    v52 = v80;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v78 + 8))(v50, v52);
    v53 = v77;
    v54 = v75;
    v55 = v79;
    (*(v77 + 32))(v75, v51, v79);
    v56 = (*(v53 + 88))(v54, v55);
    (*(v53 + 8))(v54, v55);
    v57 = v93;
    if (v56 != v45)
    {
      sub_10000954C(&v92, v93);
      v61 = v82;
      static MusicLibraryAction<>.add.getter();
      v62 = v72;
      v63 = v84;
      MusicLibrary.supportedStatus<A, B>(for:action:)();
      v85(v61, v63);
      v64 = v73;
      v65 = v83;
      (v81)(v73, v62, v83);
      v66 = v71(v64, v65);
      v46(v64, v65);
      if (v88)
      {
        v67 = v66 == v45;
        v31 = v88;
        if (!v67)
        {
          v68 = v88;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }
      }

      else
      {
        v31 = 0;
      }

      goto LABEL_24;
    }

    v59 = v94;
    v58 = v95;
    v60 = sub_10000954C(&v92, v93);
    sub_1001D7F10(v60, v41, v86, v57, v59, v58);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v31 = v88;
LABEL_24:
  sub_100009F78(0, &unk_1011A49F0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v70 = [objc_opt_self() configurationWithActions:isa];

  [v70 _setSwipeActionsStyle:1];
  sub_10000959C(&v92);
  return v70;
}

id sub_1001DB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v111 = a4;
  v112 = a3;
  v113 = a2;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v103 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Playlist.Entry();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = v9;
  v107 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Playlist();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = v10;
  v106 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Playlist.Variant();
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v108);
  v101 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = &v90 - v14;
  v15 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v15 - 8);
  v90 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v100 = &v90 - v18;
  __chkstk_darwin(v19);
  v104 = &v90 - v20;
  __chkstk_darwin(v21);
  v92 = &v90 - v22;
  __chkstk_darwin(v23);
  v25 = &v90 - v24;
  __chkstk_darwin(v26);
  v28 = &v90 - v27;
  v29 = type metadata accessor for Playlist.EditableComponents();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10010FC20(&unk_10118D240);
  __chkstk_darwin(v33 - 8);
  v35 = &v90 - v34;
  v36 = type metadata accessor for Playlist.Entry.InternalItem();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v90 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = a1;
  Playlist.Entry.internalItem.getter();
  Playlist.Entry.InternalItem.musicItem.getter(&v115);
  (*(v37 + 8))(v39, v36);
  sub_10010FC20(&unk_10118AB50);
  sub_10010FC20(&qword_101183E10);
  if (!swift_dynamicCast())
  {
    memset(v116, 0, sizeof(v116));
    sub_1000095E8(v116, &qword_101183E18);
    return 0;
  }

  sub_1000D8F88(v116, &v117);
  v40 = [objc_opt_self() isRunningInStoreDemoMode];
  v41 = v113;
  if (v40)
  {
    goto LABEL_14;
  }

  Playlist.editableComponents.getter();
  if ((*(v30 + 48))(v35, 1, v29) == 1)
  {
    sub_1000095E8(v35, &unk_10118D240);
    v42 = v105;
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    sub_1001DF5CC(&qword_10119EF60, &type metadata accessor for Playlist.EditableComponents);
    v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v45 = *(v30 + 8);
    v45(v32, v29);
    v45(v35, v29);
    v42 = v105;
    if (v44)
    {
      LODWORD(v105) = enum case for Playlist.Variant.favoriteSongs(_:);
      goto LABEL_16;
    }
  }

  Playlist.variant.getter();
  v46 = enum case for Playlist.Variant.favoriteSongs(_:);
  v47 = v110;
  v48 = v109;
  (*(v110 + 104))(v25, enum case for Playlist.Variant.favoriteSongs(_:), v109);
  (*(v47 + 56))(v25, 0, 1, v48);
  v49 = *(v108 + 48);
  sub_1001DF3B4(v28, v42);
  sub_1001DF3B4(v25, v42 + v49);
  v50 = *(v47 + 48);
  if (v50(v42, 1, v48) == 1)
  {
    sub_1000095E8(v25, &unk_10119EF50);
    sub_1000095E8(v28, &unk_10119EF50);
    if (v50(v42 + v49, 1, v48) == 1)
    {
      sub_1000095E8(v42, &unk_10119EF50);
      v41 = v113;
      LODWORD(v105) = v46;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  v51 = v92;
  sub_1001DF3B4(v42, v92);
  if (v50(v42 + v49, 1, v48) == 1)
  {
    sub_1000095E8(v25, &unk_10119EF50);
    sub_1000095E8(v28, &unk_10119EF50);
    (*(v110 + 8))(v51, v48);
LABEL_13:
    sub_1000095E8(v42, &unk_1011A4670);
    goto LABEL_14;
  }

  LODWORD(v105) = v46;
  v57 = v110;
  v58 = v91;
  (*(v110 + 32))(v91, v42 + v49, v48);
  sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
  v59 = v51;
  v60 = dispatch thunk of static Equatable.== infix(_:_:)();
  v61 = *(v57 + 8);
  v61(v58, v48);
  sub_1000095E8(v25, &unk_10119EF50);
  sub_1000095E8(v28, &unk_10119EF50);
  v61(v59, v48);
  sub_1000095E8(v42, &unk_10119EF50);
  v41 = v113;
  if (v60)
  {
LABEL_16:
    v62 = v94;
    v63 = v96;
    (*(v94 + 16))(v106, v41, v96);
    v64 = v98;
    v65 = v99;
    (*(v98 + 16))(v107, v97, v99);
    sub_10012B7A8(v111, v116);
    sub_1001DF424(&v117, &v115);
    v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
    v67 = (v93 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
    v68 = (*(v64 + 80) + v67 + 8) & ~*(v64 + 80);
    v69 = (v95 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    (*(v62 + 32))(v70 + v66, v106, v63);
    *(v70 + v67) = v112;
    (*(v64 + 32))(v70 + v68, v107, v65);
    sub_10012B828(v116, v70 + v69);
    sub_1000D8F88(&v115, (v70 + ((v69 + 103) & 0xFFFFFFFFFFFFFFF8)));
    aBlock[4] = sub_1001DF488;
    aBlock[5] = v70;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D72A4;
    aBlock[3] = &unk_1010A0290;
    v71 = _Block_copy(aBlock);
    v72 = objc_opt_self();

    v73 = [v72 contextualActionWithStyle:0 title:0 handler:v71];
    _Block_release(v71);

    v74 = v104;
    Playlist.variant.getter();
    v75 = v110;
    v76 = v100;
    v77 = v109;
    (*(v110 + 104))(v100, v105, v109);
    (*(v75 + 56))(v76, 0, 1, v77);
    v78 = *(v108 + 48);
    v79 = v101;
    sub_1001DF3B4(v74, v101);
    sub_1001DF3B4(v76, v79 + v78);
    v80 = *(v75 + 48);
    if (v80(v79, 1, v77) == 1)
    {
      sub_1000095E8(v76, &unk_10119EF50);
      sub_1000095E8(v74, &unk_10119EF50);
      if (v80(v79 + v78, 1, v77) == 1)
      {
        sub_1000095E8(v79, &unk_10119EF50);
LABEL_23:
        if (qword_10117F320 != -1)
        {
          swift_once();
        }

        v85 = qword_101183DF8;
        v86 = String._bridgeToObjectiveC()();

        v87 = [objc_opt_self() systemImageNamed:v86 withConfiguration:v85];

        [v73 setImage:v87];
        v88 = [objc_opt_self() systemRedColor];
        [v73 setBackgroundColor:v88];

        v56 = v73;
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v89 = String._bridgeToObjectiveC()();

        [v56 setAccessibilityLabel:v89];

        goto LABEL_26;
      }
    }

    else
    {
      v81 = v90;
      sub_1001DF3B4(v79, v90);
      if (v80(v79 + v78, 1, v77) != 1)
      {
        v82 = v110;
        v83 = v91;
        (*(v110 + 32))(v91, v79 + v78, v77);
        sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v84 = *(v82 + 8);
        v84(v83, v77);
        sub_1000095E8(v76, &unk_10119EF50);
        sub_1000095E8(v104, &unk_10119EF50);
        v84(v81, v77);
        sub_1000095E8(v79, &unk_10119EF50);
        goto LABEL_23;
      }

      sub_1000095E8(v76, &unk_10119EF50);
      sub_1000095E8(v104, &unk_10119EF50);
      (*(v110 + 8))(v81, v77);
    }

    sub_1000095E8(v79, &unk_1011A4670);
    goto LABEL_23;
  }

LABEL_14:
  v52 = v118;
  v53 = v119;
  v54 = v120;
  v55 = sub_10000954C(&v117, v118);
  v56 = sub_1001D8328(v55, v112, v111, v52, v53, v54);
LABEL_26:
  sub_10000959C(&v117);
  return v56;
}

void sub_1001DC318(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  v158 = a8;
  v142 = a7;
  v155 = a6;
  v153 = a4;
  v152 = a3;
  v118 = a2;
  v125 = type metadata accessor for MusicLibrary.RemoveAction();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v121 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10010FC20(&unk_101193E60);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v119 = &v117 - v13;
  v135 = type metadata accessor for Playlist();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = v14;
  v133 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Playlist.Entry.InternalItem();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Playlist.Entry();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v136 = v16;
  v138 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  __chkstk_darwin(v17 - 8);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v20 - 8);
  v159 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Playlist.Variant();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v127 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10010FC20(&unk_1011A4670);
  __chkstk_darwin(v25);
  v151 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v117 - v28;
  v30 = sub_10010FC20(&unk_10119EF50);
  __chkstk_darwin(v30 - 8);
  v126 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v150 = &v117 - v33;
  __chkstk_darwin(v34);
  v154 = &v117 - v35;
  __chkstk_darwin(v36);
  v38 = &v117 - v37;
  __chkstk_darwin(v39);
  v41 = &v117 - v40;
  __chkstk_darwin(v42);
  v44 = &v117 - v43;
  v156 = a5;
  Playlist.variant.getter();
  v45 = *(v23 + 104);
  v146 = enum case for Playlist.Variant.favoriteSongs(_:);
  v145 = v23 + 104;
  v144 = v45;
  v45(v41);
  v46 = *(v23 + 56);
  v143 = v23 + 56;
  v141 = v46;
  v46(v41, 0, 1, v22);
  v149 = v25;
  v47 = *(v25 + 48);
  sub_1001DF3B4(v44, v29);
  sub_1001DF3B4(v41, &v29[v47]);
  v48 = *(v23 + 48);
  v49 = v48(v29, 1, v22);
  v157 = v19;
  v128 = v23;
  v148 = v23 + 48;
  v147 = v48;
  v137 = v22;
  if (v49 == 1)
  {
    sub_1000095E8(v41, &unk_10119EF50);
    sub_1000095E8(v44, &unk_10119EF50);
    v50 = v48(&v29[v47], 1, v22);
    v51 = v142;
    if (v50 == 1)
    {
      sub_1000095E8(v29, &unk_10119EF50);
LABEL_11:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      v142 = String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v61 = v139;
      v62 = v138;
      v63 = v140;
      (*(v139 + 16))(v138, v51, v140);
      v64 = (*(v61 + 80) + 24) & ~*(v61 + 80);
      v65 = (v136 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v155;
      (*(v61 + 32))(v66 + v64, v62, v63);
      v67 = v118;
      *(v66 + v65) = v118;

      v68 = v67;
      v69 = String._bridgeToObjectiveC()();

      v166 = sub_1001DF6FC;
      v167 = v66;
      aBlock = _NSConcreteStackBlock;
      v163 = 1107296256;
      v164 = sub_10027D328;
      v165 = &unk_1010A0380;
      v70 = _Block_copy(&aBlock);

      v71 = [objc_opt_self() actionWithTitle:v69 style:2 handler:v70];
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  sub_1001DF3B4(v29, v38);
  if (v48(&v29[v47], 1, v22) == 1)
  {
    sub_1000095E8(v41, &unk_10119EF50);
    sub_1000095E8(v44, &unk_10119EF50);
    (*(v23 + 8))(v38, v22);
    v51 = v142;
LABEL_6:
    sub_1000095E8(v29, &unk_1011A4670);
    goto LABEL_7;
  }

  v57 = &v29[v47];
  v58 = v127;
  (*(v23 + 32))(v127, v57, v22);
  sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
  v59 = dispatch thunk of static Equatable.== infix(_:_:)();
  v60 = *(v23 + 8);
  v60(v58, v22);
  sub_1000095E8(v41, &unk_10119EF50);
  sub_1000095E8(v44, &unk_10119EF50);
  v60(v38, v22);
  sub_1000095E8(v29, &unk_10119EF50);
  v51 = v142;
  if (v59)
  {
    goto LABEL_11;
  }

LABEL_7:
  v52 = v129;
  Playlist.Entry.internalItem.getter();
  v53 = v130;
  v54 = v131;
  v55 = (*(v130 + 88))(v52, v131);
  v56 = v156;
  if (v55 == enum case for Playlist.Entry.InternalItem.musicMovie(_:) || v55 == enum case for Playlist.Entry.InternalItem.musicVideo(_:) || v55 == enum case for Playlist.Entry.InternalItem.song(_:) || v55 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:) || v55 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v55 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v142 = String.init(localized:table:bundle:locale:comment:)();
    v118 = v72;
    (*(v53 + 8))(v52, v54);
  }

  else
  {
    (*(v53 + 8))(v52, v54);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v142 = String.init(localized:table:bundle:locale:comment:)();
    v118 = v116;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v131 = String.init(localized:table:bundle:locale:comment:)();
  v130 = v73;
  v74 = v139;
  v75 = v138;
  v76 = v140;
  (*(v139 + 16))(v138, v51, v140);
  v77 = v134;
  v78 = v133;
  v79 = v135;
  (*(v134 + 16))(v133, v56, v135);
  v80 = (*(v74 + 80) + 24) & ~*(v74 + 80);
  v81 = (v136 + *(v77 + 80) + v80) & ~*(v77 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v155;
  (*(v74 + 32))(v82 + v80, v75, v76);
  (*(v77 + 32))(v82 + v81, v78, v79);

  v69 = String._bridgeToObjectiveC()();

  v166 = sub_1001DF614;
  v167 = v82;
  aBlock = _NSConcreteStackBlock;
  v163 = 1107296256;
  v164 = sub_10027D328;
  v165 = &unk_1010A02E0;
  v70 = _Block_copy(&aBlock);

  v71 = [objc_opt_self() actionWithTitle:v69 style:2 handler:v70];
LABEL_16:
  v83 = v71;
  _Block_release(v70);

  v84 = *(v158 + 48) == 0xFF;
  v85 = v83;
  v86 = String._bridgeToObjectiveC()();

  v87 = [objc_opt_self() alertControllerWithTitle:0 message:v86 preferredStyle:v84];

  [v87 addAction:v85];
  v142 = v85;

  v88 = v154;
  Playlist.variant.getter();
  v89 = v150;
  v90 = v137;
  v144(v150, v146, v137);
  v141(v89, 0, 1, v90);
  v91 = *(v149 + 48);
  v92 = v151;
  sub_1001DF3B4(v88, v151);
  sub_1001DF3B4(v89, v92 + v91);
  v93 = v147;
  if (v147(v92, 1, v90) != 1)
  {
    v95 = v126;
    sub_1001DF3B4(v92, v126);
    if (v93(v92 + v91, 1, v90) != 1)
    {
      v97 = v128;
      v98 = v127;
      (*(v128 + 32))(v127, v92 + v91, v90);
      sub_1001DF5CC(&unk_1011A4680, &type metadata accessor for Playlist.Variant);
      v99 = dispatch thunk of static Equatable.== infix(_:_:)();
      v100 = *(v97 + 8);
      v100(v98, v90);
      sub_1000095E8(v89, &unk_10119EF50);
      sub_1000095E8(v154, &unk_10119EF50);
      v100(v95, v90);
      sub_1000095E8(v92, &unk_10119EF50);
      v96 = &selRef__replacePlaceholderViewWithView_;
      v94 = &selRef__replacePlaceholderViewWithView_;
      if ((v99 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_23;
    }

    sub_1000095E8(v89, &unk_10119EF50);
    sub_1000095E8(v88, &unk_10119EF50);
    (*(v128 + 8))(v95, v90);
LABEL_21:
    sub_1000095E8(v92, &unk_1011A4670);
    v96 = &selRef__replacePlaceholderViewWithView_;
    v94 = &selRef__replacePlaceholderViewWithView_;
    goto LABEL_25;
  }

  sub_1000095E8(v89, &unk_10119EF50);
  sub_1000095E8(v88, &unk_10119EF50);
  if (v93(v92 + v91, 1, v90) != 1)
  {
    goto LABEL_21;
  }

  sub_1000095E8(v92, &unk_10119EF50);
  v94 = &selRef__replacePlaceholderViewWithView_;
LABEL_23:
  sub_10000954C(a9, a9[3]);
  v101 = v121;
  static MusicLibraryAction<>.remove.getter();
  v102 = v119;
  v103 = v125;
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v123 + 8))(v101, v103);
  v104 = v122;
  v105 = v120;
  v106 = v124;
  (*(v122 + 32))(v120, v102, v124);
  v107 = (*(v104 + 88))(v105, v106);
  v108 = enum case for MusicLibrary.SupportedStatus.supported<A>(_:);
  v109 = v105;
  v96 = &selRef__replacePlaceholderViewWithView_;
  (*(v104 + 8))(v109, v106);
  if (v107 == v108)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    sub_10012B7A8(v158, &aBlock);
    sub_1001DF424(a9, &v161);
    v110 = swift_allocObject();
    sub_10012B828(&aBlock, v110 + 16);
    sub_1000D8F88(&v161, (v110 + 112));
    *(v110 + 160) = v155;

    v111 = String._bridgeToObjectiveC()();

    v160[4] = sub_1001DF6EC;
    v160[5] = v110;
    v160[0] = _NSConcreteStackBlock;
    v160[1] = 1107296256;
    v160[2] = sub_10027D328;
    v160[3] = &unk_1010A0330;
    v112 = _Block_copy(v160);

    v113 = [objc_opt_self() actionWithTitle:v111 style:2 handler:v112];
    _Block_release(v112);

    [v87 v94[33]];
  }

LABEL_25:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v114 = String._bridgeToObjectiveC()();

  v115 = [objc_opt_self() v96[28]];

  [v87 v94[33]];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v87, 1, 1, 0, 0);
  v152(1);
}

uint64_t sub_1001DD9EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for Playlist.Entry();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, a3, v7);
  type metadata accessor for MainActor();

  v15 = a4;
  v16 = static MainActor.shared.getter();
  v17 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v18 = (v9 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 2) = v16;
  *(v19 + 3) = &protocol witness table for MainActor;
  *(v19 + 4) = a2;
  (*(v8 + 32))(&v19[v17], v10, v7);
  *&v19[v18] = v15;
  sub_10086E3AC(0, 0, v13, &unk_100EBF820, v19);
}

uint64_t sub_1001DDC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = type metadata accessor for Notice.Variant(0);
  v6[4] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v6[5] = swift_task_alloc();
  v6[6] = type metadata accessor for MainActor();
  v6[7] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[8] = v8;
  v9 = type metadata accessor for Playlist.Entry();
  *v8 = v6;
  v8[1] = sub_1001DDD48;

  return MusicLibrary.undoFavorite<A>(_:)(a5, v9, &protocol witness table for Playlist.Entry);
}

uint64_t sub_1001DDD48()
{
  *(*v1 + 72) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001DDFBC;
  }

  else
  {
    v4 = sub_1001DDEA4;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001DDEA4()
{

  v1 = UIView.noticePresenter.getter();
  if (v1)
  {
    v2 = v1;
    v4 = v0[4];
    v3 = v0[5];
    swift_storeEnumTagMultiPayload();
    static Notice.variant(_:)(v4, v3);
    sub_1001DF158(v4, type metadata accessor for Notice.Variant);
    (*(*v2 + 200))(v3, 0);

    sub_1001DF158(v3, type metadata accessor for Notice);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1001DDFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a2;
  v5 = type metadata accessor for Playlist();
  v22 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Entry();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, a3, v8);
  (*(v6 + 16))(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v5);
  type metadata accessor for MainActor();
  v16 = v25;

  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = (v10 + *(v6 + 80) + v18) & ~*(v6 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = v17;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v16;
  (*(v9 + 32))(&v20[v18], v11, v8);
  (*(v6 + 32))(&v20[v19], v23, v22);
  sub_1001F4CB8(0, 0, v14, &unk_100EBF840, v20);
}

uint64_t sub_1001DE30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v9 = type metadata accessor for Playlist();
  v6[5] = v9;
  v6[6] = *(v9 - 8);
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Entry();
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v6[10] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v6[11] = v11;
  v6[12] = *(v11 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = type metadata accessor for MainActor();
  v6[15] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v6[16] = v12;
  *v12 = v6;
  v12[1] = sub_1001DE4EC;

  return MusicLibrary.remove(_:from:)(a5, a6);
}

uint64_t sub_1001DE4EC()
{
  *(*v1 + 136) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1001DE6C8;
  }

  else
  {
    v4 = sub_1001DE648;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1001DE648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001DE6C8()
{
  v51 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[6];
  v46 = v0[7];
  v8 = v0[4];
  v44 = v0[5];
  v9 = v0[3];

  v10 = Logger.actions.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v10, v3);
  (*(v6 + 16))(v4, v9, v5);
  (*(v7 + 16))(v46, v8, v44);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v45 = v0[12];
    v47 = v0[11];
    v48 = v0[13];
    v43 = v12;
    v14 = v0[9];
    v13 = v0[10];
    v16 = v0[7];
    v15 = v0[8];
    v17 = v0[6];
    v41 = v0[5];
    v42 = v0[17];
    v18 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v18 = 136446722;
    v19 = Playlist.Entry.description.getter();
    v21 = v20;
    (*(v14 + 8))(v13, v15);
    v22 = sub_1000105AC(v19, v21, &v50);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = Playlist.description.getter();
    v25 = v24;
    (*(v17 + 8))(v16, v41);
    v26 = sub_1000105AC(v23, v25, &v50);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v42;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v27 = String.init<A>(describing:)();
    v29 = sub_1000105AC(v27, v28, &v50);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v11, v43, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();

    (*(v45 + 8))(v48, v47);
  }

  else
  {
    v30 = v0[12];
    v49 = v0[13];
    v32 = v0[10];
    v31 = v0[11];
    v33 = v11;
    v35 = v0[8];
    v34 = v0[9];
    v36 = v0[6];
    v37 = v0[7];
    v38 = v0[5];

    (*(v36 + 8))(v37, v38);
    (*(v34 + 8))(v32, v35);
    (*(v30 + 8))(v49, v31);
  }

  v39 = v0[1];

  return v39();
}

uint64_t sub_1001DEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = v14 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10012B7A8(a2, v15);
  sub_1001DF424(a3, v14);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_10012B828(v15, v12 + 32);
  sub_1000D8F88(v14, (v12 + 128));
  *(v12 + 176) = a4;
  sub_1001F4CB8(0, 0, v9, &unk_100EBF830, v12);
}

uint64_t sub_1001DEBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001DEC54, v8, v7);
}

uint64_t sub_1001DEC54()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = sub_10000954C(v2, v4);
  v8 = *(v3 + 48) == 0xFF;
  sub_100009F78(0, &qword_101183E20);
  v9 = sub_1003FCD9C(v7, v1, v8, v4, v5, v6);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v9, 1, 1, 0, 0);

  v10 = v0[1];

  return v10();
}

id sub_1001DED54()
{
  result = [objc_opt_self() configurationWithWeight:5];
  qword_101183DF8 = result;
  return result;
}

uint64_t sub_1001DED94()
{
  v0 = objc_allocWithZone(UIColor);
  v4[4] = sub_1001DEE5C;
  v4[5] = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_10003640C;
  v4[3] = &unk_1010A0178;
  v1 = _Block_copy(v4);
  v2 = [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  qword_101183E00 = v2;
  return result;
}

id sub_1001DEE5C(void *a1)
{
  v2 = [a1 userInterfaceStyle];
  v3 = [a1 accessibilityContrast];
  if (!v2)
  {
LABEL_4:
    if (v3 + 1 >= 2 && v3 == 1)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.89;
      v6 = 0.9;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    if (v3 + 1 < 2)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.11;
      v6 = 0.12;
      goto LABEL_12;
    }

    if (v3 == 1)
    {
      v4 = objc_allocWithZone(UIColor);
      v5 = 0.15;
      v6 = 0.16;
      goto LABEL_12;
    }
  }

  else if (v2 == 1)
  {
    goto LABEL_4;
  }

LABEL_11:
  v4 = objc_allocWithZone(UIColor);
  v5 = 0.93;
  v6 = 0.94;
LABEL_12:

  return [v4 initWithRed:v5 green:v5 blue:v6 alpha:1.0];
}

uint64_t sub_1001DEFA8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[6];
  v10 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_1001D8DD8(a1, v7, v8, v9, v1 + v6, v10, v4, v5);
}

uint64_t sub_1001DF0E4(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_10010FC20(&qword_101183990);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t sub_1001DF158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001DF1B8(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v5 = (*(*(v4[2] - 8) + 80) + 40) & ~*(*(v4[2] - 8) + 80);
  v6 = (*(*(v4[2] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1001D967C(a1, a2, a3, a4, v4 + v5, *(v4 + v6), v4 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8), v4[2], v4[3], v4[4]);
}

uint64_t sub_1001DF250(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = (*(*(v4 - 8) + 80) + 56) & ~*(*(v4 - 8) + 80);
  v6 = (*(*(v4 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v7 + 103) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100008F30;

  return sub_1001D98FC(a1, v8, v9, v1 + v5, v10, v1 + v7, v11, v4);
}

uint64_t sub_1001DF3B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119EF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DF424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1001DF488(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v9 = *(type metadata accessor for Playlist() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Playlist.Entry() - 8);
  v13 = (v11 + *(v12 + 80) + 8) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1001DC318(a1, a2, a3, a4, v4 + v10, *(v4 + v11), (v4 + v13), v4 + v14, (v4 + ((v14 + 103) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1001DF5CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001DF614(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Playlist() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1001DE034(a1, v7, v1 + v4, v8);
}

uint64_t sub_1001DF6FC(uint64_t a1)
{
  v3 = *(type metadata accessor for Playlist.Entry() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001DD9EC(a1, v5, v1 + v4, v6);
}

uint64_t sub_1001DF79C(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Entry() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1001DDC10(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1001DF8CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[22];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1001DEBB8(a1, v4, v5, (v1 + 4), (v1 + 16), v6);
}

uint64_t sub_1001DF990(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Entry() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Playlist() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100008F30;

  return sub_1001DE30C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1001DFB80(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 152) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100008F30;

  return sub_1001DA4C0(a1, v8, v9, (v1 + 7), v1 + v4, v7, v10, v11);
}

uint64_t sub_1001DFCE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1001DFD48(id result)
{
  if (result >= 4)
  {
    return result;
  }

  return result;
}

uint64_t sub_1001DFD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001DFDBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100008F30;

  return sub_1001D763C(a1, v10, v11, v1 + v6, v12, v13, v1 + v9);
}

uint64_t sub_1001DFF04()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  else
  {
  }

  v6 = v4 + *(v1 + 28);
  if (*(v6 + 24))
  {
    sub_10000959C(v6);
  }

  v7 = v4 + *(v1 + 32);
  if (*(v7 + 24))
  {
    sub_10000959C(v7);
  }

  v8 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v3);
  if (v9 >= 4)
  {
  }

  v10 = v0 + v8;
  swift_unknownObjectWeakDestroy();
  v11 = *(v0 + v8 + 48);
  if (v11 != 255)
  {
    sub_10012B804(*(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), v11);
  }

  if (*(v10 + 64))
  {
  }

  if (*(v10 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1001E00C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002F3F4;

  return sub_1001D763C(a1, v10, v11, v1 + v6, v12, v13, v1 + v9);
}

id sub_1001E02A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10010FC20(&qword_101183A20);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v49 - v6;
  result = [v1 activityType];
  if (!result)
  {
    *(a1 + 24) = &type metadata for String;
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
    return result;
  }

  v9 = result;
  v53 = swift_allocBox();
  v11 = v10;
  v12 = type metadata accessor for URL();
  v50 = *(v12 - 8);
  v13 = *(v50 + 56);
  v49 = v11;
  v13(v11, 1, 1, v12);
  v14 = sub_10010C578(_swiftEmptyArrayStorage);
  v15 = [v2 activityType];
  v51 = v9;
  v52 = a1;
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
    if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
    {
    }

    else
    {
      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v14;
    sub_1006C56AC(0x3130343035, 0xE500000000000000, 0x6763737469, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v37 = aBlock;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v37;
    v34 = 0x7463737469;
    v32 = 0xD000000000000012;
    v33 = 0x8000000100E40AA0;
    v35 = 0xE500000000000000;
LABEL_20:
    sub_1006C56AC(v32, v33, v34, v35, v31);
    goto LABEL_21;
  }

LABEL_8:
  v58._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = sub_10044CF74(v58);
  if (v23 != 4)
  {
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v14;
    sub_1006C56AC(0x3130343035, 0xE500000000000000, 0x6763737469, 0xE500000000000000, v24);
    v25 = aBlock;
    v26 = "sharing_tt_lyrics";
    if (v23 != 2)
    {
      v26 = "Item:)";
    }

    v27 = "sharing_ig_lyrics";
    if (!v23)
    {
      v27 = "sharing_sc_lyrics";
    }

    if (v23 <= 1)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    v29 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v25;
    sub_1006C56AC(0xD000000000000011, v28 | 0x8000000000000000, 0x7463737469, 0xE500000000000000, v29);
    v30 = aBlock;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&aBlock = v30;
    v32 = 0x636973756DLL;
    v33 = 0xE500000000000000;
    v34 = 7368801;
    v35 = 0xE300000000000000;
    goto LABEL_20;
  }

LABEL_21:
  v38 = dispatch_semaphore_create(0);
  v39 = *&v2[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewControllerP33_84E0FBA0540C9AC5FB893F254C8A85DC29LyricsURLActivityItemProvider_snippetComponents];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v41 = swift_allocObject();
  *(v41 + 16) = v53;
  *(v41 + 24) = v38;
  v56 = sub_1001EBCDC;
  v57 = v41;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v55 = sub_1001E08A0;
  *(&v55 + 1) = &unk_1010A0550;
  v42 = _Block_copy(&aBlock);

  v43 = v38;

  [v39 URLWithAdditionalParameters:isa completion:v42];
  _Block_release(v42);

  OS_dispatch_semaphore.wait()();
  v44 = v49;
  swift_beginAccess();
  sub_1000089F8(v44, v7, &qword_101183A20);
  v45 = v50;
  if ((*(v50 + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &qword_101183A20);
    aBlock = 0u;
    v55 = 0u;
    v46 = v51;
    v47 = v52;
    *(v52 + 3) = &type metadata for String;

    *v47 = 0;
    v47[1] = 0xE000000000000000;
    if (*(&v55 + 1))
    {
      sub_1000095E8(&aBlock, &unk_101183F30);
    }
  }

  else
  {
    *(&v55 + 1) = v12;
    v48 = sub_10001C8B8(&aBlock);
    (*(v45 + 32))(v48, v7, v12);

    sub_100016270(&aBlock, v52);
  }
}

Swift::Int sub_1001E0840(uint64_t a1)
{
  v2 = swift_projectBox();
  swift_beginAccess();
  sub_1001EBCE4(a1, v2);
  return OS_dispatch_semaphore.signal()();
}

uint64_t sub_1001E08A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a1 + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for URL();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v7(v6);

  return sub_1000095E8(v6, &qword_101183A20);
}

void sub_1001E0B14(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LyricsSharingActivityViewController();
  objc_msgSendSuper2(&v5, "setTransitioningDelegate:", a1);
  v3 = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController];
  v4 = [v1 transitioningDelegate];
  swift_unknownObjectRelease();
  if (v4)
  {
    swift_unknownObjectRelease();
  }

  v3[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_needsCustomTransition] = v4 != 0;
}

void sub_1001E0BC4(char a1)
{
  v2 = v1;
  [v1 setAllowsCustomPresentationStyle:1];
  [v1 setModalPresentationStyle:2];
  sub_10010FC20(&qword_101181530);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBF880;
  type metadata accessor for ActivityType(0);
  v6 = v5;
  *(v4 + 32) = UIActivityTypeAirDrop;
  *(v4 + 56) = v5;
  *(v4 + 64) = UIActivityTypeCopyToPasteboard;
  *(v4 + 120) = v5;
  *(v4 + 88) = v5;
  *(v4 + 96) = UIActivityTypeMessage;
  v7 = qword_10117FC28;
  v8 = UIActivityTypeCopyToPasteboard;
  v9 = UIActivityTypeAirDrop;
  v10 = UIActivityTypeMessage;
  if (v7 != -1)
  {
    swift_once();
  }

  v11 = qword_1012193D0;
  *(v4 + 152) = v6;
  *(v4 + 128) = v11;
  v12 = qword_10117FC30;
  v13 = v11;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_1012193D8;
  *(v4 + 184) = v6;
  *(v4 + 160) = v14;
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  *(v4 + 216) = v6;
  *(v4 + 192) = v16;
  v17 = String._bridgeToObjectiveC()();
  *(v4 + 248) = v6;
  *(v4 + 224) = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setIncludedActivityTypes:isa];

  sub_10010FC20(&qword_101181538);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBDC20;
  *(v19 + 32) = v8;
  *(v19 + 40) = UIActivityTypeSharePlay;
  v20 = UIActivityTypeSharePlay;
  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setExcludedActivityTypes:v21];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100EBDC20;
  *(v22 + 32) = v13;
  *(v22 + 88) = v6;
  *(v22 + 56) = v6;
  *(v22 + 64) = v15;
  v23 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setActivityTypeOrder:v23];

  [v1 setCustomViewController:*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController]];
  [v1 setPhotosHeaderMetadata:*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata]];
  sub_1001E5300();
  sub_1001E581C();
  if (a1)
  {
    sub_1001E3A18();
    v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 1;
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationDidEnterBackgroundNotification, 0, 1, 1, sub_1001EC2B4, v24);

    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(UIApplicationWillEnterForegroundNotification, 0, 1, 1, sub_1001EC2BC, v25);

    v26 = UIPresentationControllerPresentationTransitionDidEndNotification;
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v26, 0, 1, 1, sub_1001EC2C4, v27);

    v28 = UIPresentationControllerDismissalTransitionDidEndNotification;
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_allocObject();
    *&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, 0, 1, 1, sub_1001EC2CC, v29);
  }
}

void sub_1001E1164()
{
  v0 = sub_10010FC20(&qword_101188C20);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1000089F8(&v11[v12], v5, &qword_101188C20);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1000095E8(v5, &qword_101188C20);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      Date.timeIntervalSinceNow.getter();
      v14 = v13;
      (*(v7 + 8))(v9, v6);
      *&v11[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = *&v11[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] - v14;
      (*(v7 + 56))(v3, 1, 1, v6);
      swift_beginAccess();
      sub_1001EBD54(v3, &v11[v12]);
      swift_endAccess();
    }
  }
}

void sub_1001E13DC()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v7[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    Date.init()();
    v5 = type metadata accessor for Date();
    (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
    v6 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
    swift_beginAccess();
    sub_1001EBD54(v2, v4 + v6);
    swift_endAccess();
  }
}

void sub_1001E14F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible) != 1)
    {

      return;
    }

    v1 = Strong;
    Notification.object.getter();
    if (*(&v16 + 1))
    {
      sub_100009F78(0, &qword_101183D40);
      if ((swift_dynamicCast() & 1) == 0)
      {

        return;
      }

      v2 = v18;
      v3 = v1;
      if (static NSObject.== infix(_:_:)())
      {

        return;
      }

      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        return;
      }

      v6 = [v5 window];

      if (!v6)
      {
        goto LABEL_24;
      }

      v7 = [v6 windowScene];

      if (!v7)
      {
        goto LABEL_24;
      }

      v8 = [v7 delegate];

      if (v8)
      {
        v18 = v8;
        sub_10010FC20(&unk_101184050);
        sub_10010FC20(&unk_101184EB0);
        if (swift_dynamicCast())
        {
          v9 = *(*sub_10000954C(&v15, *(&v16 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

          sub_10000959C(&v15);
          if (v9)
          {
            v10 = (*(v9 + 32) & 0x7FFFFFFFFFFFFFFFLL);

            v11 = [v2 presentingViewController];
            if (v11)
            {
              v12 = v11;
              v13 = v10;
              v14 = static NSObject.== infix(_:_:)();

              if (v14)
              {
                sub_1001E7F54();

                return;
              }

              goto LABEL_25;
            }
          }

LABEL_24:

LABEL_25:
          return;
        }

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
      }

      else
      {

        v17 = 0;
        v15 = 0u;
        v16 = 0u;
      }

      v4 = &unk_101184EA0;
    }

    else
    {

      v4 = &unk_101183F30;
    }

    sub_1000095E8(&v15, v4);
  }
}

void sub_1001E1804()
{
  v0 = sub_10010FC20(&qword_101188C20);
  __chkstk_darwin(v0 - 8);
  v2 = &v20 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (*(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible) == 1)
    {
      Notification.object.getter();
      if (!*(&v21 + 1))
      {

        v19 = &unk_101183F30;
        goto LABEL_21;
      }

      sub_100009F78(0, &qword_101183D40);
      if (swift_dynamicCast())
      {
        v5 = v23;
        v6 = [v4 view];
        if (!v6)
        {
          __break(1u);
          return;
        }

        v7 = v6;
        v8 = [v6 window];

        if (!v8)
        {
          goto LABEL_23;
        }

        v9 = [v8 windowScene];

        if (!v9)
        {
          goto LABEL_23;
        }

        v10 = [v9 delegate];

        if (v10)
        {
          v23 = v10;
          sub_10010FC20(&unk_101184050);
          sub_10010FC20(&unk_101184EB0);
          if (swift_dynamicCast())
          {
            if (*(&v21 + 1))
            {
              v11 = *(*sub_10000954C(&v20, *(&v21 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

              sub_10000959C(&v20);
              if (v11)
              {
                v12 = (*(v11 + 32) & 0x7FFFFFFFFFFFFFFFLL);

                v13 = [v5 presentingViewController];
                if (v13)
                {
                  v14 = v13;
                  v15 = v12;
                  v16 = static NSObject.== infix(_:_:)();

                  if (v16)
                  {
                    Date.init()();

                    v17 = type metadata accessor for Date();
                    (*(*(v17 - 8) + 56))(v2, 0, 1, v17);
                    v18 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
                    swift_beginAccess();
                    sub_1001EBD54(v2, v4 + v18);
                    swift_endAccess();
                    goto LABEL_15;
                  }

                  goto LABEL_24;
                }
              }

LABEL_23:

LABEL_24:
              return;
            }
          }

          else
          {
            v22 = 0;
            v20 = 0u;
            v21 = 0u;
          }
        }

        else
        {

          v22 = 0;
          v20 = 0u;
          v21 = 0u;
        }

        v19 = &unk_101184EA0;
LABEL_21:
        sub_1000095E8(&v20, v19);
        return;
      }
    }

LABEL_15:
  }
}

void sub_1001E1BFC(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v7);
  v8 = type metadata accessor for LyricsSharingActivityViewController();
  v42.receiver = v2;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewIsAppearing:", a1 & 1);
  v9 = [v2 presentingViewController];
  if (!v9 || (v10 = v9, type metadata accessor for NowPlayingViewController(0), v11 = swift_dynamicCastClass(), v10, !v11))
  {
    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 window];

      if (v14)
      {
        if (*&v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView])
        {
        }

        else
        {
          v41 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView;
          type metadata accessor for LyricsBackgroundView();
          v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
          v16 = *&v15[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
          if (v16)
          {
            v17 = v16;
            dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
          }

          v18 = [objc_allocWithZone(UIView) init];
          v19 = v14;
          [v19 bounds];
          [v18 setFrame:?];
          [v18 setAutoresizingMask:18];
          v20 = v15;
          [v19 bounds];
          [v20 setFrame:?];
          [v20 setAutoresizingMask:18];

          [v18 addSubview:v20];
          v21 = objc_allocWithZone(type metadata accessor for BackdropView());
          v22 = sub_100453A34();
          UIView.traitOverrides.getter();
          sub_100050078();
          dispatch thunk of UIMutableTraits.subscript.setter();
          UIView.traitOverrides.setter();
          [v19 bounds];
          [v22 setFrame:?];
          [v22 setAutoresizingMask:18];
          [v18 addSubview:v22];
          v23 = [objc_allocWithZone(UIView) init];
          [v19 bounds];
          v25 = v24;
          v27 = v26;
          v29 = v28;
          v31 = v30;

          [v23 setFrame:{v25, v27, v29, v31}];
          [v23 setAutoresizingMask:18];
          v32 = [objc_opt_self() blackColor];
          [v23 setBackgroundColor:v32];

          [v18 addSubview:v23];
          [v19 insertSubview:v18 atIndex:0];
          v33 = *&v2[v41];
          *&v2[v41] = v18;
          v34 = v18;

          v35 = type metadata accessor for TaskPriority();
          (*(*(v35 - 8) + 56))(v6, 1, 1, v35);
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          type metadata accessor for MainActor();
          v37 = v20;

          v38 = static MainActor.shared.getter();
          v39 = swift_allocObject();
          v39[2] = v38;
          v39[3] = &protocol witness table for MainActor;
          v39[4] = v36;
          v39[5] = v37;

          sub_10086E3AC(0, 0, v6, &unk_100EBFA48, v39);

          v2[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 1;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1001E2138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_10010FC20(&unk_101195200);
  v5[7] = swift_task_alloc();
  sub_10010FC20(&unk_101184060);
  v5[8] = swift_task_alloc();
  v6 = type metadata accessor for Song();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  sub_10010FC20(&unk_101188920);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_1001E22D4, v8, v7);
}

uint64_t sub_1001E22D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    goto LABEL_5;
  }

  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = Strong;
  (*(v5 + 16))(v3, Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song, v4);

  Song.artwork.getter();
  (*(v5 + 8))(v3, v4);
  v7 = type metadata accessor for Artwork();
  v0[16] = v7;
  v8 = *(v7 - 8);
  v0[17] = v8;
  if ((*(v8 + 48))(v2, 1, v7) == 1)
  {
    v9 = v0[12];

    sub_1000095E8(v9, &unk_101188920);
LABEL_5:
    v10 = v0[6];
    v11 = *(v10 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
    if (v11)
    {
      v12 = v11;
      dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();

      v10 = v0[6];
    }

    if (*(v10 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) == 1)
    {
      v13 = *(v10 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
      if (v13)
      {
        v14 = v13;
        [v14 setNeedsDisplay];
      }
    }

    v15 = v0[1];

    return v15();
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = v0[6];
  [v19 frame];
  Width = CGRectGetWidth(v31);
  [v19 frame];
  Height = CGRectGetHeight(v32);
  v22 = type metadata accessor for Artwork.CropStyle();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = type metadata accessor for Artwork.ImageFormat();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = swift_task_alloc();
  v0[18] = v24;
  *v24 = v0;
  v24[1] = sub_1001E2630;
  v25 = v0[7];
  v26 = v0[8];
  v27.n128_u64[0] = 1.0;
  v28.n128_f64[0] = Width;
  v29.n128_f64[0] = Height;

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v26, v25, 0, 0, v28, v29, v27);
}

uint64_t sub_1001E2630(uint64_t a1)
{
  v4 = *v2;
  (*v2)[19] = v1;

  if (v1)
  {
    v5 = v4[8];
    sub_1000095E8(v4[7], &unk_101195200);
    sub_1000095E8(v5, &unk_101184060);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1001E28F8;
  }

  else
  {
    v9 = v4[16];
    v10 = v4[17];
    v11 = v4[12];
    v12 = v4[7];
    v13 = v4[8];
    v4[20] = a1;
    sub_1000095E8(v12, &unk_101195200);
    sub_1000095E8(v13, &unk_101184060);
    (*(v10 + 8))(v11, v9);
    v6 = v4[14];
    v7 = v4[15];
    v8 = sub_1001E27DC;
  }

  return _swift_task_switch(v8, v6, v7);
}

uint64_t sub_1001E27DC()
{
  v1 = v0[20];

  v2 = v0[6];
  v3 = *(v2 + OBJC_IVAR___MusicLyricsBackgroundView_renderer);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of Backdrop.CompositeRenderer.setImage(_:animated:)();

    v2 = v0[6];
  }

  if (*(v2 + OBJC_IVAR___MusicLyricsBackgroundView_isPaused) == 1)
  {
    v5 = *(v2 + OBJC_IVAR___MusicLyricsBackgroundView_metalView);
    if (v5)
    {
      v6 = v5;
      [v6 setNeedsDisplay];
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001E28F8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[12];

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

id sub_1001E2A04(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for LyricsSharingActivityViewController();
  objc_msgSendSuper2(&v4, "viewDidDisappear:", a1 & 1);
  result = [*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] removeFromSuperview];
  if (v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] == 1)
  {
    sub_1001E7F54();
    return sub_1001E78A0(*&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration]);
  }

  return result;
}

void sub_1001E2AFC(void *a1)
{
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v87 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v97 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v87 - v14;
  __chkstk_darwin(v16);
  v18 = &v87 - v17;
  v19 = type metadata accessor for LyricsSharingActivityViewController();
  v100.receiver = v1;
  v100.super_class = v19;
  objc_msgSendSuper2(&v100, "_prepareActivity:", a1);
  _s8ActivityCMa();
  if (!swift_dynamicCastClass())
  {
    v91 = v5;
    v92 = v9;
    v96 = v1;
    v93 = v7;
    sub_1001EC2D4(a1);
    v20 = [a1 activityType];
    if (v20)
    {
      v21 = v20;
      v94 = v15;
      v95 = v6;
      v22 = v18;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
      if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
      {

        v18 = v22;
        v15 = v94;
        v6 = v95;
      }

      else
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();

        v18 = v22;
        v15 = v94;
        v6 = v95;
      }
    }

    v27 = v96;
    sub_1001E78A0(0.0);

    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v30 = a1;
      v31 = [v29 messageComposeViewController];
      if (v31)
      {
        v32 = v31;
        v33 = *&v27[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
        if (!v33)
        {

          return;
        }

        swift_beginAccess();
        v34 = *(v33 + 72);
        if (*(v34 + 16))
        {
          v35 = v97;
          v89 = (v97[80] + 32) & ~v97[80];
          v90 = v33;
          v36 = v34 + v89;
          sub_1001EBDD4(v34 + v89, v18);
          v37 = *(v34 + 16);
          if (v37)
          {
            v95 = v6;
            v38 = *(v35 + 9);
            sub_1001EBDD4(v36 + v38 * (v37 - 1), v15);

            v97 = v32;
            v39 = [v32 contentURLs];
            if (v39)
            {
              v40 = v39;
              v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (*(v41 + 16))
              {
                v88 = v30;

                v42 = v91;
                URL.init(string:)();
                v43 = v93;

                v44 = v95;
                if ((*(v43 + 48))(v42, 1, v95) == 1)
                {

                  sub_1001EC5BC(v15, type metadata accessor for Lyrics.TextLine);
                  sub_1001EC5BC(v18, type metadata accessor for Lyrics.TextLine);
                  sub_1000095E8(v42, &qword_101183A20);
                  return;
                }

                v94 = v15;
                v87 = v18;
                (*(v43 + 32))(v92, v42, v44);
                v91 = sub_100564124();
                v46 = *(v90 + 72);
                v47 = *(v46 + 16);
                if (v47)
                {
                  v48 = &v12[*(v10 + 64)];
                  v49 = v46 + v89;

                  v50 = 0;
                  v51 = 0xE000000000000000;
                  do
                  {
                    sub_1001EBDD4(v49, v12);
                    v98 = v50;
                    v99 = v51;
                    v52 = *v48;

                    v54._countAndFlagsBits = v52(v53);
                    String.append(_:)(v54);

                    v55._countAndFlagsBits = 10;
                    v55._object = 0xE100000000000000;
                    String.append(_:)(v55);

                    v50 = v98;
                    v51 = v99;
                    sub_1001EC5BC(v12, type metadata accessor for Lyrics.TextLine);
                    v49 += v38;
                    --v47;
                  }

                  while (v47);
                }

                String.trim()();

                v56 = String._bridgeToObjectiveC()();
                v57 = v91;
                [v91 setSelectedText:v56];

                URL._bridgeToObjectiveC()(v58);
                v60 = v59;
                [v57 setURL:v59];

                URL._bridgeToObjectiveC()(v61);
                v63 = v62;
                [v57 setOriginalURL:v62];

                v64 = [objc_allocWithZone(LPLyricExcerptMetadata) init];
                v65 = String._bridgeToObjectiveC()();

                [v64 setLyrics:v65];

                v66 = v87;
                isa = Double._bridgeToObjectiveC()().super.super.isa;
                [v64 setStartTime:isa];

                v68 = Double._bridgeToObjectiveC()().super.super.isa;
                [v64 setEndTime:v68];

                v69 = [v57 specialization];
                if (v69)
                {
                  v70 = v69;
                  objc_opt_self();
                  v71 = swift_dynamicCastObjCClass();
                  if (v71)
                  {
                    v72 = v70;
                    BagProvider.shared.unsafeMutableAddressor();

                    v73 = BagProvider.bag.getter();

                    if (!v73 || (v74 = [v73 stringForBagKey:ICURLBagKeyStoreFrontID], v73, !v74))
                    {
                      v74 = 0;
                    }

                    [v71 setStoreFrontIdentifier:v74];

                    [v71 setLyricExcerpt:v64];
                    v75 = Array._bridgeToObjectiveC()().super.isa;
                    [v71 setOffers:v75];

                    v76 = [*&v96[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] image];
                    [v71 setArtwork:v76];
                  }
                }

                else
                {
                  v71 = 0;
                }

                v77 = v97;
                [v97 setBody:0];
                v78 = [v57 dataRepresentation];
                v79 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
                v81 = v80;

                v82 = Data._bridgeToObjectiveC()().super.isa;
                sub_10002C064(v79, v81);
                v83 = v92;
                URL._bridgeToObjectiveC()(v84);
                v86 = v85;
                [v77 addRichLinkData:v82 withWebpageURL:v85];

                (*(v93 + 8))(v83, v95);
                sub_1001EC5BC(v94, type metadata accessor for Lyrics.TextLine);
                v45 = v66;
                goto LABEL_38;
              }
            }

            else
            {
            }

            sub_1001EC5BC(v15, type metadata accessor for Lyrics.TextLine);
            v45 = v18;
LABEL_38:
            sub_1001EC5BC(v45, type metadata accessor for Lyrics.TextLine);
            return;
          }

          sub_1001EC5BC(v18, type metadata accessor for Lyrics.TextLine);
        }

        else
        {
        }
      }
    }
  }
}

uint64_t sub_1001E3574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v33 = a3;
  v34 = a4;
  v32[0] = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v32[0] - 8);
  __chkstk_darwin(v32[0]);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10010FC20(&qword_101184020);
  __chkstk_darwin(v11 - 8);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  v17 = sub_1001EBB88();
  if (v18)
  {
    v19 = 150;
  }

  else
  {
    v19 = v17;
  }

  sub_1000089F8(a2, v16, &qword_101184020);
  type metadata accessor for LyricsSelectionManager();
  v20 = swift_allocObject();
  v20[6] = 0;
  v20[7] = 0;
  v20[8] = 0;
  v20[9] = _swiftEmptyArrayStorage;
  v20[10] = &_swiftEmptySetSingleton;
  v20[2] = v19;
  v21 = v34;
  v20[3] = v33;
  v20[4] = v21;
  v20[5] = a1;
  sub_1000089F8(v16, v13, &qword_101184020);
  if ((*(v8 + 48))(v13, 1, v32[0]) == 1)
  {

    sub_1000095E8(v13, &qword_101184020);
    v35 = a1;
    v22 = sub_10010FC20(&qword_101184038);
    v23 = sub_100029908(&qword_101184040, &qword_101184038);
    v24 = Sequence.exclude(_:)(sub_1003408CC, 0, v22, v23);
    v25 = sub_100670070(v24);

    sub_1000095E8(v16, &qword_101184020);
    swift_beginAccess();
    v20[10] = v25;
  }

  else
  {
    sub_1001EC250(v13, v10);

    sub_10033F820(v10);
    sub_1001EC5BC(v10, type metadata accessor for Lyrics.TextLine);
    sub_1000095E8(v16, &qword_101184020);
  }

  v26 = swift_allocObject();
  v27 = v32[1];
  swift_unknownObjectWeakInit();
  v28 = v20[6];
  v20[6] = sub_1001EC248;
  v20[7] = v26;

  sub_100020438(v28);

  v29 = *(v27 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController);
  *&v29[OBJC_IVAR____TtC5Music29LyricsSelectionViewController_selectionManager] = v20;
  swift_retain_n();
  v30 = v29;

  if ([v30 isViewLoaded])
  {
    sub_10033A430();
  }

  *(v27 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager) = v20;

  *(v27 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence) = a5;
  sub_1001E5300();
  sub_1001E581C();
}

void sub_1001E3998()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001E5300();
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1001E581C();
  }
}

uint64_t sub_1001E3A18()
{
  v1 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v1 - 8);
  v3 = &v11 - v2;
  v4 = [objc_allocWithZone(type metadata accessor for LyricsLoader()) init];
  v5 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader);
  *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader) = v4;

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  sub_1001F4CB8(0, 0, v3, &unk_100EBF9E0, v9);
}

uint64_t sub_1001E3B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a4;
  type metadata accessor for Locale();
  v4[39] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v4[40] = swift_task_alloc();
  sub_10010FC20(&qword_101188C20);
  v4[41] = swift_task_alloc();
  sub_10010FC20(&unk_101184010);
  v4[42] = swift_task_alloc();
  sub_10010FC20(&qword_101189A10);
  v4[43] = swift_task_alloc();
  sub_10010FC20(&qword_101184020);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[47] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[48] = v6;
  v4[49] = v5;

  return _swift_task_switch(sub_1001E3D7C, v6, v5);
}

uint64_t sub_1001E3D7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[50] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader);
    v0[51] = v3;
    if (v3)
    {
      v4 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
      v0[52] = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song;
      v5 = *((swift_isaMask & *v3) + 0x70);
      v3;
      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[53] = v6;
      *v6 = v0;
      v6[1] = sub_1001E3FD0;

      return v10(v2 + v4);
    }

    v8 = v0[50];
    sub_1001E4B54(0);
    sub_1001EC218(0, 0, 255);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001E3FD0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  *(v6 + 432) = a1;
  *(v6 + 440) = a2;
  *(v6 + 448) = v3;

  if (v3)
  {
    v7 = *(v6 + 384);
    v8 = *(v6 + 392);
    v9 = sub_1001E4A60;
  }

  else
  {

    *(v6 + 456) = a3;
    v7 = *(v6 + 384);
    v8 = *(v6 + 392);
    v9 = sub_1001E4104;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1001E4104()
{
  v1 = *(v0 + 456);

  if ((v1 & 1) == 0)
  {
    v23 = *(v0 + 432);
    v22 = *(v0 + 440);
    v24 = *(v0 + 400);
    sub_1001E4B54(0);
    sub_1001EC218(v23, v22, v1 & 1);

    goto LABEL_28;
  }

  v2 = *(v0 + 432);
  if (!*(v2 + 56))
  {
    v25 = *(v0 + 440);
    v26 = *(v0 + 400);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v27 = String._bridgeToObjectiveC()();

    v28 = [objc_opt_self() alertControllerWithTitle:0 message:v27 preferredStyle:1];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    v30 = v26;
    v31 = String._bridgeToObjectiveC()();

    *(v0 + 200) = sub_1001EC230;
    *(v0 + 208) = v29;
    *(v0 + 168) = _NSConcreteStackBlock;
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_10027D328;
    *(v0 + 192) = &unk_1010A0A50;
    v32 = _Block_copy((v0 + 168));

    v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v28 addAction:v33];
    *(v0 + 144) = 0;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 152) = xmmword_100EBCEF0;
    v34 = v30;
    PresentationSource.init(viewController:position:)(v34, v0 + 112, v0 + 16);
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v28, 1, 1, 0, 0);

    sub_10011895C(v2, v25, 1);
    sub_10012BA6C(v0 + 16);
    goto LABEL_28;
  }

  v3 = *(v0 + 368);
  v4 = *(v2 + 24);
  v5 = (*(v0 + 400) + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID);
  *v5 = *(v2 + 16);
  v5[1] = v4;

  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v8 = (*(*qword_101218AC8 + 432))();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 tracklist];

    if (v10)
    {
      if ((MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter() & 1) == 0 || (v11 = [v10 playingItem]) == 0)
      {

        goto LABEL_21;
      }

      v12 = v11;
      v13 = [v11 metadataObject];
      if (v13)
      {
        v14 = v13;
        v69 = v12;
        v68 = MPModelObject.bestIdentifier(for:)(3, 2u);
        v16 = v15;

        v17 = v16;
        v18 = Song.catalogID.getter();
        if (v16)
        {
          v12 = v69;
          if (!v19)
          {

            goto LABEL_21;
          }

          if (v68 == v18 && v17 == v19)
          {
          }

          else
          {
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v21 & 1) == 0)
            {

              goto LABEL_21;
            }
          }

          goto LABEL_37;
        }

        v12 = v69;
        if (v19)
        {
LABEL_34:

          goto LABEL_21;
        }
      }

      else
      {
        Song.catalogID.getter();
        if (v62)
        {
          goto LABEL_34;
        }
      }

LABEL_37:
      v63 = *(v0 + 368);
      [v12 duration];
      static Date.timeIntervalSinceReferenceDate.getter();
      v64.n128_f64[0] = v72 + (v64.n128_f64[0] - v70) * v73;
      if (v64.n128_f64[0] >= v71)
      {
        v64.n128_f64[0] = v71;
      }

      v64.n128_f64[0] = fmax(v64.n128_f64[0], 0.0);
      (*(*v2 + 448))(1, v64);

      sub_1000095E8(v63, &qword_101184020);
      v65 = *(v0 + 360);
      if (*(v0 + 240))
      {
        sub_10010FC20(&qword_101184030);
        v66 = swift_dynamicCast() ^ 1;
        v67 = v65;
      }

      else
      {
        sub_1000095E8(v0 + 216, &qword_101184028);
        v67 = v65;
        v66 = 1;
      }

      v7(v67, v66, 1, v6);
      sub_10003D17C(*(v0 + 360), *(v0 + 368), &qword_101184020);
    }
  }

LABEL_21:
  v35 = *(v0 + 336);
  v36 = *(v2 + 48);
  v37 = sub_1000089F8(*(v0 + 368), *(v0 + 352), &qword_101184020);
  (*(*v2 + 232))(v37);
  v38 = type metadata accessor for Locale.Language();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v35, 1, v38) == 1)
  {
    v40 = *(v0 + 336);
    v41 = &unk_101184010;
  }

  else
  {
    v42 = *(v0 + 336);
    v43 = *(v0 + 344);
    Locale.Language.languageCode.getter();
    (*(v39 + 8))(v42, v38);
    v44 = type metadata accessor for Locale.LanguageCode();
    v45 = *(v44 - 8);
    v46 = (*(v45 + 48))(v43, 1, v44);
    v47 = *(v0 + 344);
    if (v46 != 1)
    {
      v50 = Locale.LanguageCode.identifier.getter();
      v49 = v51;
      (*(v45 + 8))(v47, v44);
      v48 = v50;
      goto LABEL_27;
    }

    v41 = &qword_101189A10;
    v40 = *(v0 + 344);
  }

  sub_1000095E8(v40, v41);
  v48 = 0;
  v49 = 0;
LABEL_27:
  v53 = *(v0 + 432);
  v52 = *(v0 + 440);
  v54 = *(v0 + 400);
  v55 = *(v0 + 368);
  v56 = *(v0 + 352);
  v57 = *(v0 + 328);
  sub_1001E3574(v36, v56, v48, v49, *(v2 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence));

  sub_1000095E8(v56, &qword_101184020);
  Date.init()();
  v58 = type metadata accessor for Date();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  swift_beginAccess();
  sub_1001EBD54(v57, v54 + v59);
  swift_endAccess();
  sub_1001E5300();
  sub_10011895C(v53, v52, 1);

  sub_1000095E8(v55, &qword_101184020);
LABEL_28:

  v60 = *(v0 + 8);

  return v60();
}

uint64_t sub_1001E4A60()
{
  v1 = v0[56];
  v2 = v0[50];
  v3 = v0[51];

  swift_errorRetain();
  sub_1001E4B54(v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001E4B54(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(a1);
  if (!v4)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = String._bridgeToObjectiveC()();

LABEL_13:
    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() alertControllerWithTitle:v13 message:v23 preferredStyle:1];

    v17 = v24;
    goto LABEL_14;
  }

  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 domain];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if ([v5 code] != -3005)
  {
LABEL_12:

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v13 = 0;
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  v15 = String._bridgeToObjectiveC()();

  v16 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

  v17 = v16;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = v1;
  v20 = String._bridgeToObjectiveC()();

  v35 = sub_1001EC15C;
  v36 = v18;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10027D328;
  v34 = &unk_1010A09D8;
  v21 = _Block_copy(&aBlock);

  v22 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v17 addAction:v22];
LABEL_14:
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v25 = swift_allocObject();
  *(v25 + 16) = v1;
  v26 = v1;
  v27 = String._bridgeToObjectiveC()();

  v35 = sub_1001EC758;
  v36 = v25;
  aBlock = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_10027D328;
  v34 = &unk_1010A0988;
  v28 = _Block_copy(&aBlock);

  v29 = [objc_opt_self() actionWithTitle:v27 style:0 handler:v28];
  _Block_release(v28);

  [v17 addAction:v29];
  [v17 setPreferredAction:v29];
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v39 = xmmword_100EBCEF0;
  PresentationSource.init(viewController:position:)(v26, v37, &aBlock);
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v17, 1, 1, 0, 0);

  return sub_10012BA6C(&aBlock);
}

void sub_1001E5270(int a1, id a2)
{
  [a2 dismissViewControllerAnimated:1 completion:0];
  v2 = [objc_opt_self() defaultWorkspace];
  if (v2)
  {
    v3 = v2;
    LSApplicationWorkspace.openRestrictions()();
  }
}

id sub_1001E5300()
{
  v1 = v0;
  v2 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager);
  if (v5)
  {
    swift_beginAccess();
    v6 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    v7 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata);
    if (*(*(v5 + 72) + 16))
    {

      v8 = v7;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v9);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v10._object = 0x8000000100E40CA0;
      v10._countAndFlagsBits = 0xD000000000000011;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v10);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v11 = String._bridgeToObjectiveC()();

      [v8 setTitle:v11];

      v12 = *(v0 + v6);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v14._countAndFlagsBits = 543584032;
      v14._object = 0xE400000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v15._countAndFlagsBits = 0x7463617261686320;
      v15._object = 0xED00002973287265;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
      String.LocalizationValue.init(stringInterpolation:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v16 = String._bridgeToObjectiveC()();

      [v12 setSummary:v16];
    }

    else
    {

      v21 = v7;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v22 = String._bridgeToObjectiveC()();

      [v21 setTitle:v22];

      v23 = *(v1 + v6);
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v24 = String._bridgeToObjectiveC()();

      [v23 setSummary:v24];
    }
  }

  else
  {
    v17 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
    v18 = *(v0 + OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];

    return [*(v0 + v17) setSummary:0];
  }
}

void sub_1001E581C()
{
  v1 = v0;
  v135 = type metadata accessor for DispatchWorkItemFlags();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v129 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for DispatchQoS();
  v131 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = &v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10010FC20(&unk_101188920);
  __chkstk_darwin(v4 - 8);
  v150 = &v129 - v5;
  v148 = type metadata accessor for Lyrics.TextLine(0);
  v149 = *(v148 - 8);
  v6 = __chkstk_darwin(v148);
  v138 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v137 = (&v129 - v8);
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v159 = _swiftEmptyArrayStorage;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v13 = v12;
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 systemImageNamed:v14];

  if (qword_10117FC28 != -1)
  {
    swift_once();
  }

  v17 = qword_1012193D0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = _s8ActivityCMa();
  v20 = objc_allocWithZone(v19);
  v21 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
  *&v20[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
  v22 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
  *&v20[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
  v23 = &v20[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
  *v23 = v11;
  v23[1] = v13;
  *&v20[v21] = v16;
  *&v20[v22] = v17;
  v24 = &v20[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
  *v24 = sub_1001EBDC4;
  v24[1] = v18;
  v158.receiver = v20;
  v158.super_class = v19;
  v25 = v17;
  v26 = objc_msgSendSuper2(&v158, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v136 = v26;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = swift_allocObject();
  v145 = v1;
  v28 = &v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v29 = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData + 40];
  *(v27 + 16) = *&v1[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v30 = *(v28 + 8);
  *(v27 + 24) = v30;
  v31 = *(v28 + 24);
  *(v27 + 40) = v31;
  v139 = v27;
  *(v27 + 56) = v29;
  if (v30 != 1)
  {
    v32 = *&v145[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
    if (v32)
    {
      v147 = v31;
      swift_beginAccess();
      v33 = *(v32 + 72);
      v34 = *(v33 + 16);
      if (v34)
      {
        v32 = *(v33 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + v149[9] * (v34 - 1) + *(v148 + 52));
      }

      else
      {
        v32 = 0;
        v35 = 0;
      }
    }

    else
    {
      v35 = 0;
    }

    v36 = v139;
    *(v139 + 48) = v32;
    *(v36 + 56) = v35;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v37 = String.init(localized:table:bundle:locale:comment:)();
  v39 = v38;
  v40 = String._bridgeToObjectiveC()();
  v41 = [v15 systemImageNamed:v40];

  if (qword_10117FC30 != -1)
  {
    swift_once();
  }

  v42 = qword_1012193D8;
  v43 = swift_allocObject();
  v44 = v145;
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 24) = v139;
  v46 = objc_allocWithZone(v19);
  v47 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
  *&v46[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
  v48 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
  *&v46[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
  v49 = &v46[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
  *v49 = v37;
  v49[1] = v39;
  *&v46[v47] = v41;
  *&v46[v48] = v42;
  v50 = &v46[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
  *v50 = sub_1001EBDCC;
  v50[1] = v45;
  v157.receiver = v46;
  v157.super_class = v19;

  v51 = v42;
  v52 = objc_msgSendSuper2(&v157, "init");
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v144 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager;
  v53 = *&v44[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager];
  if (!v53 || (swift_beginAccess(), v54 = *(v53 + 72), (v55 = *(v54 + 16)) == 0))
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    sub_100009F78(0, &unk_101183F50);
    v85 = Array._bridgeToObjectiveC()().super.isa;

    [v44 _updateActivityItems:isa applicationActivities:v85];

    return;
  }

  v129 = v52;
  v56 = v149;
  v57 = v54 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
  sub_1001EBDD4(v57, v137);
  sub_1001EBDD4(v57 + v56[9] * (v55 - 1), v138);
  v143 = &v44[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song];
  v141 = &v44[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource];
  v140 = "exclamationmark.bubble";
  v142 = v53;

  v58 = 0;
  v59 = 0;
  do
  {
    LODWORD(v149) = v58;
    LODWORD(v148) = *(&off_1010993F0 + v59 + 32);
    *&v147 = Song.title.getter();
    v146 = v60;
    v61 = Song.artistName.getter();
    v63 = v62;
    strcpy(&aBlock, "apple:track:");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v64 = Song.catalogID.getter();
    v66 = v142;
    if (!v65)
    {
      v64 = Song.id.getter();
    }

    String.append(_:)(*&v64);

    v67 = aBlock;
    Song.artwork.getter();
    v68 = *(v66 + 72);
    v69 = *&v44[v144];
    if (v69)
    {
      v70 = *(v69 + 24);
      v71 = *(v69 + 32);
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    sub_10012B7A8(v141, &aBlock);

    v72 = [v44 traitCollection];
    [v72 displayScale];
    v74 = v73;

    v75 = type metadata accessor for ShareLyricsStoryActivity();
    v76 = objc_allocWithZone(v75);
    static Logger.music(_:)();
    v77 = &v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_language];
    *v77 = 0;
    v77[1] = 0;
    v78 = &v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_title];
    v79 = v146;
    *v78 = v147;
    v78[1] = v79;
    v80 = &v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_subtitle];
    *v80 = v61;
    v80[1] = v63;
    *&v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_contentIdentifier] = v67;
    v81 = v150;
    sub_1000089F8(v150, &v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_artwork], &unk_101188920);
    v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_socialNetwork] = v148;
    *&v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_lines] = v68;
    *v77 = v70;
    v77[1] = v71;
    sub_10012B7A8(&aBlock, &v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_presentationSource]);
    *&v76[OBJC_IVAR____TtC5Music24ShareLyricsStoryActivity_displayScale] = v74;
    v151.receiver = v76;
    v151.super_class = v75;
    v82 = objc_msgSendSuper2(&v151, "init");
    sub_10012BA6C(&aBlock);
    sub_1000095E8(v81, &unk_101188920);
    v83 = v82;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v58 = 1;
    v59 = &_mh_execute_header.magic + 1;
    v44 = v145;
  }

  while ((v149 & 1) == 0);
  v150 = v159;
  v86 = [objc_opt_self() kindWithVariants:1];
  __chkstk_darwin(v86);
  v87 = v143;
  v127 = v143;
  v88 = objc_allocWithZone(MPIdentifierSet);
  v89 = String._bridgeToObjectiveC()();
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1001EBE38;
  *(v90 + 24) = &v129 - 4;
  v155 = sub_1001EBE40;
  v156 = v90;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v153 = sub_10006BD7C;
  v154 = &unk_1010A0618;
  v91 = _Block_copy(&aBlock);

  v92 = [v88 initWithSource:v89 modelKind:v86 block:v91];

  _Block_release(v91);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_39;
  }

  __chkstk_darwin(v94);
  v127 = v87;
  v95 = objc_allocWithZone(MPModelSong);
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1001EBE48;
  *(v96 + 24) = &v129 - 4;
  v155 = sub_1001EBE50;
  v156 = v96;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v153 = sub_10006BD7C;
  v154 = &unk_1010A0668;
  v97 = _Block_copy(&aBlock);

  v98 = [v95 initWithIdentifiers:v92 block:v97];

  _Block_release(v97);

  v99 = swift_isEscapingClosureAtFileLocation();

  if (v99)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v100 = v145;
  v101 = *&v145[v144];
  if (v101 && *(v101 + 32))
  {

    v102 = v138;
    v103 = v137;
    goto LABEL_36;
  }

  v104 = static Locale.preferredLanguages.getter();
  v102 = v138;
  v103 = v137;
  if (!*(v104 + 16))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_36:
  v105 = *&v100[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence];
  v106 = *v103 - v105;
  v107 = *(v102 + 8) - v105;
  v108 = objc_allocWithZone(MPStoreLyricsSnippetURLComponents);
  v109 = v98;
  v110 = String._bridgeToObjectiveC()();

  v111 = [v108 initWithSong:v109 language:v110 startTime:v106 endTime:v107];
  v149 = v109;

  if (v111)
  {
    v112 = v111;
    v113 = sub_1001EBA0C(v112);
    sub_100009F78(0, &qword_101182960);
    v114 = static OS_dispatch_queue.main.getter();
    v115 = swift_allocObject();
    v115[2] = v100;
    v115[3] = v113;
    v115[4] = v150;
    v155 = sub_1001EBE58;
    v156 = v115;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v153 = sub_10002BC98;
    v154 = &unk_1010A06B8;
    v116 = _Block_copy(&aBlock);
    v117 = v100;
    v118 = v113;

    v119 = v130;
    static DispatchQoS.unspecified.getter();
    *&aBlock = _swiftEmptyArrayStorage;
    sub_1001EBE64(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10010FC20(&qword_101182970);
    sub_100029908(&qword_101183F70, &qword_101182970);
    v120 = v132;
    v121 = v135;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v116);

    (*(v134 + 8))(v120, v121);
    (*(v131 + 8))(v119, v133);
    sub_1001EC5BC(v138, type metadata accessor for Lyrics.TextLine);
    sub_1001EC5BC(v137, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_41:
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  *&aBlock = 0xD00000000000002BLL;
  *(&aBlock + 1) = 0x8000000100E40BF0;
  v122 = [v149 description];
  v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v124;

  v126._countAndFlagsBits = v123;
  v126._object = v125;
  String.append(_:)(v126);

  v128 = 0;
  v127 = 518;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}