void sub_1005D453C()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1)
  {
    return;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    _s9TimeLabelCMa();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = v0;
    v6 = UIView.forAutolayout.getter();

    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      [v8 addSubview:v9];

      v10 = *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel];
      *&v5[OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel] = v9;
      v11 = v9;

      sub_10010FC20(&qword_101183990);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_100EBC6D0;
      v13 = [v11 centerXAnchor];

      v14 = [v5 view];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 centerXAnchor];

        v17 = [v13 constraintEqualToAnchor:v16];
        *(v12 + 32) = v17;
        v18 = [v11 topAnchor];

        v19 = [v5 view];
        if (v19)
        {
          v20 = v19;
          v21 = objc_opt_self();
          v22 = [v20 safeAreaLayoutGuide];

          v23 = [v22 topAnchor];
          v24 = [v18 constraintEqualToAnchor:v23];

          *(v12 + 40) = v24;
          sub_100009F78(0, &qword_1011838A0);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v21 activateConstraints:isa];

          return;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v25 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_timeLabel];
  if (v25)
  {

    [v25 removeFromSuperview];
  }
}

void sub_1005D48BC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005C9C48(0, 0, 1, 0.0);
  }
}

void sub_1005D4968(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1);
  if (![v2 transitioningDelegate] || (type metadata accessor for PalettePresentationInteraction(), v4 = swift_dynamicCastClass(), swift_unknownObjectRelease(), !v4))
  {
    v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
    if (*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
    {

      v6 = sub_1002752B8();

      if (v6)
      {
        sub_1005C8D4C(0, 0, 0);
      }

      else if (*&v2[v5])
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v13 != 255)
        {
          sub_10004ADFC(v12, v13);
          if ((v13 & 1) == 0)
          {
            v7 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
            if (!v7)
            {
              __break(1u);
              return;
            }

            v8 = *(v7 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
            if (v8)
            {
              v9 = v8;
              sub_10065D24C();
            }
          }
        }
      }
    }
  }

  type metadata accessor for ApplicationMainMenu();
  v10 = sub_100314AEC();
  if (v10)
  {
    v11 = v10;
    sub_1007CA9C4(v2, v10);
  }
}

void sub_1005D4C30(char a1)
{
  v2 = v1;
  v54.receiver = v2;
  v54.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v54, "viewIsAppearing:", a1 & 1);
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 1)
  {
    v6 = [v2 traitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 2 && (v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear] & 1) == 0)
    {
      sub_1005C8D4C(1, 1, 0);
    }
  }

  v8 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v8))
  {
    v9 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v9)
    {
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(v9 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
    if (v10)
    {
      v11 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints;
      v12 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionDynamicConstraints];
      if (!(v12 >> 62))
      {
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_10:
        v13 = objc_opt_self();
        sub_100009F78(0, &qword_1011838A0);
        v14 = v10;

        isa = Array._bridgeToObjectiveC()().super.isa;

        [v13 deactivateConstraints:isa];

        sub_10010FC20(&qword_101183990);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100EBDC10;
        v17 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
        v18 = [*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide] centerXAnchor];
        v19 = [v14 centerXAnchor];
        v20 = [v18 constraintEqualToAnchor:v19];

        *(v16 + 32) = v20;
        v21 = [*&v2[v17] centerYAnchor];
        v22 = [v14 centerYAnchor];
        v23 = [v21 constraintEqualToAnchor:v22];

        *(v16 + 40) = v23;
        v24 = [*&v2[v17] widthAnchor];
        v25 = [v14 widthAnchor];
        v26 = [v24 constraintEqualToAnchor:v25];

        *(v16 + 48) = v26;
        v27 = [*&v2[v17] heightAnchor];
        v28 = [v14 heightAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];

        *(v16 + 56) = v29;
        *&v2[v11] = v16;
      }
    }

LABEL_11:
    v30 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints;
    v31 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionFullScreenConstraints];
    if (v31 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      sub_1005C9AEC();
      return;
    }

    sub_10010FC20(&qword_101183990);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100EBDC10;
    v33 = OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide;
    v34 = [*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionLayoutGuide] centerXAnchor];
    v35 = [v2 view];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 centerXAnchor];

      v38 = [v34 constraintEqualToAnchor:v37];
      *(v32 + 32) = v38;
      v39 = [*&v2[v33] centerYAnchor];
      v40 = [v2 view];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 centerYAnchor];

        v43 = [v39 constraintEqualToAnchor:v42];
        *(v32 + 40) = v43;
        v44 = [*&v2[v33] widthAnchor];
        v45 = [v2 view];
        if (v45)
        {
          v46 = v45;
          v47 = [v45 widthAnchor];

          v48 = [v44 constraintEqualToAnchor:v47];
          *(v32 + 48) = v48;
          v49 = [*&v2[v33] heightAnchor];
          v50 = [v2 view];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 heightAnchor];

            v53 = [v49 constraintEqualToAnchor:v52];
            *(v32 + 56) = v53;
            *&v2[v30] = v32;

            goto LABEL_18;
          }

LABEL_28:
          __break(1u);
          return;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }
}

void sub_1005D52A8(char a1)
{
  v2 = v1;
  v46.receiver = v2;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, "viewDidAppear:", a1 & 1);
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1012190C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "View did appear", v7, 2u);
  }

  if ((v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_finalSize + 16] & 1) == 0)
  {
    v8 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v9 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v9)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v10 = [v9 view];
    if (!v10)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v11 = v10;
    v12 = [v2 view];
    if (!v12)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v13 = v12;
    [v12 bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    [v11 setFrame:{v15, v17, v19, v21}];
    v22 = *&v2[v8];
    if (!v22)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v23 = [v22 view];
    if (!v23)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v24 = v23;
    [v23 setAutoresizingMask:18];
  }

  sub_1005C4F50(4.0);
  v25 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v26 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = &v26[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler];
  v29 = *&v26[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler];
  *v28 = sub_1005EB888;
  v28[1] = v27;

  v30 = v26;
  sub_100020438(v29);

  v31 = *&v2[v25];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v32 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v32)
  {
    *&v32[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkCachingReference] = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkCachingReference];
    swift_retain_n();
    v33 = v32;

    sub_10004C8F4();

    v31 = *&v2[v25];
    if (!v31)
    {
      goto LABEL_34;
    }
  }

  v34 = *(v31 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v34)
  {
    [v34 setNeedsLayout];
  }

  if (qword_10117F190 != -1)
  {
    swift_once();
  }

  v35 = qword_101218600;
  v36 = [v2 view];
  if (!v36)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v37 = v36;
  v38 = [v36 window];

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_windowEventNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v35, v38, 1, 1, sub_1005EB890, v39);

  if (*DeviceCapabilities.supportsHighFrameRateLyricsBackground.unsafeMutableAddressor() == 1)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "Backdrop: Setting audioAnalyzer", v42, 2u);
    }

    v43 = sub_1005C405C();
    v44 = *&v43[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
    v45 = v44;

    if (v44)
    {
      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      (*(*qword_101218AC8 + 288))();
      dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
    }
  }

  sub_1005C6510();
  if (sub_10003169C())
  {
    swift_unknownObjectWeakAssign();
  }

  sub_1005C6A74(0);
  v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear] = 1;
}

void sub_1005D5840()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005C6510();
    v2 = v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition];
    if (v2)
    {
      v3 = 0x4008000000000000;
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_1005C405C();
    v5 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v5)
    {
      v6 = v4;
      v7 = *(v5 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v7)
      {
        v8 = *&v7[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView];
        v9 = v7;
        v10 = v8;
        v11 = Artwork.View.currentImage.getter();
      }

      else
      {
        v11 = 0;
      }

      sub_100427990(v11, 1, v3, v2 ^ 1);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005D5950()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
    v3 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
    if (v3)
    {
      [v3 invalidate];
      v4 = *&v1[v2];
    }

    else
    {
      v4 = 0;
    }

    *&v1[v2] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1005C4F50(4.0);
  }
}

void sub_1005D5A5C(char a1)
{
  v2 = v1;
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "viewWillDisappear:", a1 & 1);
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1012190C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "View will disappear", v7, 2u);
  }

  v8 = sub_1005C405C();
  v9 = *&v8[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
  v10 = v9;

  if (v9)
  {
    dispatch thunk of Backdrop.CompositeRenderer.analyzer.setter();
  }

  v11 = [v2 transitionCoordinator];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    v18[4] = sub_1005EB880;
    v18[5] = v13;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 1107296256;
    v18[2] = sub_1007E9F28;
    v18[3] = &unk_1010B7048;
    v14 = _Block_copy(v18);
    v15 = v2;

    [v12 animateAlongsideTransition:0 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  if (qword_10117F718 != -1)
  {
    swift_once();
  }

  GroupActivitiesManager.SuggestionProvider.removePlayingItemSuggestion()();
  type metadata accessor for ApplicationMainMenu();
  v16 = sub_100314AEC();
  if (v16)
  {
    v17 = v16;
    sub_1006F49A4(v2, v16);
  }
}

void sub_1005D5CD8(void *a1, void *a2)
{
  if (*(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork) == 1)
  {
    if (![a1 isAnimated] || (v5 = objc_msgSend(a2, "traitCollection"), v6 = objc_msgSend(v5, "horizontalSizeClass"), v5, v6 == 2))
    {
      sub_10010FC20(&qword_101191FE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100EBC6B0;
      *(inited + 32) = a2;
      *(inited + 40) = &off_1010B5440;
      v8 = UITransitionContextToViewControllerKey;
      v9 = a2;
      v10 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
      if (!v10)
      {
        goto LABEL_20;
      }

      v11 = v10;
      sub_100009F78(0, &qword_101197A30);
      if ((static NSObject.== infix(_:_:)() & 1) != 0 && [v11 isBeingDismissed])
      {
        v12 = [v11 presentingViewController];
        if (v12)
        {
          v13 = v12;
          swift_getObjectType();
          if (!swift_conformsToProtocol2())
          {

            goto LABEL_20;
          }

          v14 = v13;
LABEL_12:
          v15 = v14;
          v8 = *(v15 + OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController);
          v9 = v8;

          if (!v8)
          {

            goto LABEL_20;
          }

          ObjectType = swift_getObjectType();
          v17 = swift_conformsToProtocol2();
          if (v17)
          {
            v18 = v17;
            (*(v17 + 40))(ObjectType, v17);
            v19 = v15;
            v2 = 2;
            inited = sub_10049AA3C(1, 2, 1, inited);
            *(inited + 16) = 2;
            *(inited + 48) = v19;
            *(inited + 56) = v18;
          }

          else
          {
            v2 = *(inited + 16);
          }

          v20 = *(inited + 24);
          v8 = (v2 + 1);
          if (v2 >= v20 >> 1)
          {
            goto LABEL_40;
          }

          while (1)
          {

            *(inited + 16) = v8;
            v21 = inited + 16 * v2;
            *(v21 + 32) = v9;
            *(v21 + 40) = &off_1010A3F68;
LABEL_20:
            v15 = sub_10018E378(inited);

            inited = sub_10028D0DC(v15, 1);

            if (inited >> 62)
            {
              v11 = _CocoaArrayWrapper.endIndex.getter();
              if (!v11)
              {
LABEL_37:

                return;
              }
            }

            else
            {
              v20 = inited & 0xFFFFFFFFFFFFFF8;
              v11 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v11)
              {
                goto LABEL_37;
              }
            }

            if (v11 >= 1)
            {
              break;
            }

            __break(1u);
LABEL_40:
            inited = sub_10049AA3C((v20 > 1), v8, 1, inited);
          }

          v22 = 0;
          while (1)
          {
            if ((inited & 0xC000000000000001) != 0)
            {
              v23 = sub_1007E9A10(v22, inited);
              v24 = v23[5];
              if (!v24)
              {
                goto LABEL_24;
              }
            }

            else
            {
              v23 = *(inited + 8 * v22 + 32);

              v24 = v23[5];
              if (!v24)
              {
                goto LABEL_24;
              }
            }

            v25 = *(*v23 + 256);

            v25(v26);
            v27 = *(v24 + 56);
            if (v27)
            {

              v27(v23);
              sub_100020438(v27);
            }

            (*(*v23 + 264))(v24, 1);
            v28 = *(v24 + 104);
            if (v28)
            {

              v28(1, v23);

              sub_100020438(v28);
              goto LABEL_25;
            }

LABEL_24:

LABEL_25:
            if (v11 == ++v22)
            {
              goto LABEL_37;
            }
          }
        }
      }

      else
      {
        swift_getObjectType();
        if (swift_conformsToProtocol2())
        {
          v14 = v11;
          goto LABEL_12;
        }
      }

      goto LABEL_20;
    }
  }
}

void sub_1005D61E4(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a1 & 1);
  *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear) = 0;
  if (sub_10003169C())
  {
    swift_unknownObjectWeakAssign();
  }

  v3 = [objc_opt_self() sharedApplication];
  [v3 setIdleTimerDisabled:0];

  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_1012190C8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[NowPlayingViewController] viewDidDisappear isIdleTimerDisabled: false", v7, 2u);
  }
}

void sub_1005D63A0()
{
  v1 = v0;
  v84.receiver = v0;
  v84.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v84, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame];
  v86.origin.x = v5;
  v86.origin.y = v7;
  v86.size.width = v9;
  v86.size.height = v11;
  if (CGRectEqualToRect(v86, *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousFrame]))
  {
    return;
  }

  v13 = [v1 view];
  if (!v13)
  {
    goto LABEL_51;
  }

  v14 = v13;
  [v13 frame];
  v16 = v15;
  v18 = v17;

  v19 = [v1 traitCollection];
  v20 = sub_1005E80C0(v19, v16, v18);

  v21 = v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType];
  if (!v20)
  {
    v22 = 0xE700000000000000;
    v23 = 0x746361706D6F63;
    if (!v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType])
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v20 != 1)
  {
    v23 = 0x4572616C75676572;
    v22 = 0xEF6465646E657478;
    if (!v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType])
    {
      goto LABEL_18;
    }

LABEL_9:
    if (v21 == 1)
    {
      v24 = 0x72616C75676572;
    }

    else
    {
      v24 = 0x4572616C75676572;
    }

    if (v21 == 1)
    {
      v25 = 0xE700000000000000;
    }

    else
    {
      v25 = 0xEF6465646E657478;
    }

    if (v23 != v24)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v22 = 0xE700000000000000;
  v23 = 0x72616C75676572;
  if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType])
  {
    goto LABEL_9;
  }

LABEL_18:
  v25 = 0xE700000000000000;
  if (v23 != 0x746361706D6F63)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (v22 == v25)
  {

    goto LABEL_23;
  }

LABEL_21:
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v26 & 1) == 0)
  {
    sub_1005C5B40(0, 0, 1, 1);
  }

LABEL_23:
  v27 = &v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v28 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v29 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
  v30 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16];
  if (v28 >> 62)
  {
    if (v28 >> 62 == 1)
    {
      v31 = (v28 & 0x3FFFFFFFFFFFFFFFLL);
      v32 = v29;

      v33 = [v1 view];
      if (!v33)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v34 = v33;
      [v33 frame];
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;

      v87.origin.x = v36;
      v87.origin.y = v38;
      v87.size.width = v40;
      v87.size.height = v42;
      *&v31[OBJC_IVAR___MusicNowPlayingLyricsViewController_cardHeight] = CGRectGetHeight(v87);
      sub_10029AB40();
      v43 = *&v31[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
      if (!v43)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v44 = v43;
      v45 = [v1 view];
      if (!v45)
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v46 = v45;
      [v45 frame];
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v54 = v53;

      v88.origin.x = v48;
      v88.origin.y = v50;
      v88.size.width = v52;
      v88.size.height = v54;
      Height = CGRectGetHeight(v88);
      v56 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (!v56)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v57 = *(v56 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
      if (!v57)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v58 = Height;
      [v57 layoutFrame];
      v59.n128_f64[0] = v58 - CGRectGetHeight(v89);
      (*((swift_isaMask & *v44) + 0x1B0))(v59);
    }
  }

  else
  {
    v61 = *(v27 + 5);
    v60 = *(v27 + 6);
    v63 = *(v27 + 3);
    v62 = *(v27 + 4);
    v85[0] = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v85[1] = v29;
    v85[2] = v30;
    v85[3] = v63;
    v85[4] = v62;
    v85[5] = v61;
    v85[6] = v60;
    v64 = v28;
    v65 = v29;
    v66 = v30;
    v67 = v63;
    v68 = v62;

    sub_1005D69B4(v85);
    sub_10012BB6C(v28, v29, v30, v63, v62);
  }

  v69 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v69))
  {
    if (*&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
    {

      v70 = sub_1002752B8();

      if ((v70 & 1) != 0 && v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_didViewAppear] == 1 && (sub_1005C7BDC() & 1) == 0 && (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal] & 1) == 0)
      {
        v71 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (!v71)
        {
LABEL_59:
          __break(1u);
          return;
        }

        if (*(v71 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 1 >= 2)
        {
          sub_1005C8D4C(0, 0, 1);
        }
      }
    }

    v72 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v72)
    {
      goto LABEL_53;
    }

    if (*(v72 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) - 1 <= 1 && (sub_1005C7BDC() & 1) != 0)
    {
      sub_1005C6A74(1);
      v73 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
      if (v73)
      {
        [v73 removeFromSuperview];
      }

      sub_1005D90E0(0);
    }
  }

  v74 = [v1 view];
  if (!v74)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v75 = v74;
  [v74 frame];
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;

  *v12 = v77;
  *(v12 + 1) = v79;
  *(v12 + 2) = v81;
  *(v12 + 3) = v83;
}

void sub_1005D69B4(id *a1)
{
  v2 = v1;
  v4 = Int.seconds.getter(16);
  v5 = Int.seconds.getter(5);
  v6 = [v1 view];
  if (!v6)
  {
    goto LABEL_83;
  }

  v7 = v6;
  [v6 safeAreaInsets];
  v9 = v8;

  v10 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v10)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v11 = *(v10 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView);
  if (!v11)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v12 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  v13 = v9 + dbl_100ED6930[v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType]];
  [v11 frame];
  v14 = v13 - CGRectGetMaxY(v61) - v5;
  if (v14 < v4)
  {
    v4 = v14;
  }

  v59 = v12;
  if (!v2[v12])
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    top = NSDirectionalEdgeInsetsZero.top;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    v16 = 16.0;
    v17 = 0.0;
    *&v18 = 32.0;
    goto LABEL_10;
  }

  if (v2[v12] == 1)
  {
    leading = NSDirectionalEdgeInsetsZero.leading;
    trailing = NSDirectionalEdgeInsetsZero.trailing;
    top = NSDirectionalEdgeInsetsZero.top;
    bottom = NSDirectionalEdgeInsetsZero.bottom;
    v16 = 16.0;
    v17 = 4.0;
    *&v18 = 78.0;
LABEL_10:
    v19 = *&v18;
    v20 = *&v18;
    goto LABEL_12;
  }

  v20 = 5.0;
  v19 = 10.0;
  top = 0.0;
  bottom = 0.0;
  v17 = 28.0;
  leading = 52.0;
  trailing = 42.0;
  v16 = 0.0;
LABEL_12:
  v21 = *a1;
  v22 = [*a1 view];
  if (!v22)
  {
LABEL_86:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = v20;
  [v22 setDirectionalLayoutMargins:{0.0, v20, 0.0, v19}];

  *&v21[OBJC_IVAR____TtC5Music29NowPlayingQueueViewController_bottomContentInset] = v4 + 64.0;
  v25 = sub_1002DCC7C();
  [v25 contentSize];
  v27 = v26;
  v29 = v28;

  sub_1002E6958(0, v27, v29);
  v30 = a1[5];
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v31)
  {
    if (v31 >= 1)
    {
      v32 = 0;
      v33 = -v17;
      while (1)
      {
        if ((v30 & 0xC000000000000001) != 0)
        {
          v35 = sub_1007E91C0(v32, v30);
        }

        else
        {
          v35 = *(v30 + 8 * v32 + 32);
        }

        v36 = v35;
        v37 = [v35 firstAttribute];
        if (v37 > 4)
        {
          if (v37 == 6)
          {
            v34 = trailing;
          }

          else
          {
            v34 = -leading;
            if (v37 != 5)
            {
              goto LABEL_20;
            }
          }
        }

        else if (v37 == 3)
        {
          if (v2[v59] && v2[v59] != 1)
          {

            v34 = v16;
          }

          else
          {
            v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v38)
            {
              v34 = v16;
            }

            else
            {
              v34 = -v4;
            }
          }
        }

        else
        {
          v34 = v33;
          if (v37 != 4)
          {
            goto LABEL_20;
          }
        }

        [v36 setConstant:v34];
LABEL_20:
        ++v32;

        if (v31 == v32)
        {
          goto LABEL_37;
        }
      }
    }

    __break(1u);
    goto LABEL_82;
  }

LABEL_37:
  v39 = a1[6];
  if (v39 >> 62)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
LABEL_39:
      if (v40 < 1)
      {
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v41 = 0;
      v44 = trailing == NSDirectionalEdgeInsetsZero.trailing && bottom == NSDirectionalEdgeInsetsZero.bottom && leading == NSDirectionalEdgeInsetsZero.leading && top == NSDirectionalEdgeInsetsZero.top;
      v45 = -(trailing - v19);
      if (v44)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = leading - v24;
      }

      if (v44)
      {
        v47 = 0.0;
      }

      else
      {
        v47 = v45;
      }

      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v49 = sub_1007E91C0(v41, v39);
        }

        else
        {
          v49 = *(v39 + 8 * v41 + 32);
        }

        v50 = v49;
        v51 = [v49 firstAttribute];
        if (v51 == 3)
        {
          if (v2[v59] && v2[v59] != 1)
          {
          }

          else
          {
            v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v48 = v4;
            if ((v52 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v48 = 0.0;
        }

        else
        {
          v48 = v46;
          if (v51 != 5)
          {
            if (v51 != 6)
            {
              goto LABEL_58;
            }

            v48 = v47;
          }
        }

LABEL_57:
        [v50 setConstant:v48];
LABEL_58:
        ++v41;
      }

      while (v40 != v41);
    }
  }

  if (v2[v59] && v2[v59] != 1)
  {

    v54 = a1;
  }

  else
  {
    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v54 = a1;
    if ((v53 & 1) == 0)
    {
      goto LABEL_78;
    }
  }

  v4 = 0.0;
LABEL_78:
  v55 = v54[4];

  [v55 setConstant:v4];
}

void sub_1005D6FEC(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v54 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62.receiver = v4;
  v62.super_class = ObjectType;
  objc_msgSendSuper2(&v62, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if (v17 == 1)
  {
    v18 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v18)
    {
      v19 = *(v18 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (!v19)
      {
        return;
      }

      v51 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
      LOBYTE(aBlock) = 11;
      v20 = sub_100025CE0();
      v53 = v19;
      v52 = v20;
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v20))
      {
        [a1 transitionDuration];
        v22 = v21;
        sub_100009F78(0, &qword_101182960);
        v49 = static OS_dispatch_queue.main.getter();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        *(v24 + 16) = v23;
        *(v24 + 24) = v22;
        v60 = sub_1005EB854;
        v61 = v24;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_10002BC98;
        v59 = &unk_1010B6FA8;
        v48 = _Block_copy(&aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_1005EA878(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags);
        v50 = a1;
        sub_10010FC20(&qword_101182970);
        sub_100020674(&qword_101183F70, &qword_101182970);
        a1 = v50;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v25 = v48;
        v26 = v49;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v25);

        (*(v55 + 8))(v11, v9);
        (*(v54 + 8))(v14, v12);
      }

      LOBYTE(aBlock) = 11;
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v52))
      {
        v27 = [v15 currentDevice];
        v28 = [v27 userInterfaceIdiom];

        if (v28 == 1)
        {
          if (!*&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
          {
            goto LABEL_19;
          }

          v29 = sub_1002752B8();

          if (v29 & 1) == 0 || (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground])
          {
            goto LABEL_19;
          }

          v30 = *&v4[v51];
          if (v30)
          {
            v31 = *(v30 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
            if ((v31 - 1) >= 2u)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }

LABEL_23:
          __break(1u);
          return;
        }
      }

      else
      {
        v32 = *&v4[v51];
        if (v32)
        {
LABEL_17:
          v31 = *(v32 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
LABEL_18:
          sub_10065D5B4(v31);
LABEL_19:
          [a1 transitionDuration];
          v34 = v33;
          v35 = swift_allocObject();
          v36 = v53;
          *(v35 + 16) = v53;
          v37 = objc_allocWithZone(UIViewPropertyAnimator);
          v60 = sub_1005EB834;
          v61 = v35;
          aBlock = _NSConcreteStackBlock;
          v57 = 1107296256;
          v58 = sub_10002BC98;
          v59 = &unk_1010B6EB8;
          v38 = _Block_copy(&aBlock);
          v39 = v36;

          v40 = [v37 initWithDuration:3 curve:v38 animations:v34];
          _Block_release(v38);
          v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] = 1;
          v41 = swift_allocObject();
          *(v41 + 16) = v40;
          v60 = sub_1005EB83C;
          v61 = v41;
          aBlock = _NSConcreteStackBlock;
          v57 = 1107296256;
          v58 = sub_1007E9F28;
          v59 = &unk_1010B6F08;
          v42 = _Block_copy(&aBlock);
          v43 = v40;

          v44 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v45 = swift_allocObject();
          *(v45 + 16) = v44;
          *(v45 + 24) = v39;
          v60 = sub_1005EB84C;
          v61 = v45;
          aBlock = _NSConcreteStackBlock;
          v57 = 1107296256;
          v58 = sub_1007E9F28;
          v59 = &unk_1010B6F58;
          v46 = _Block_copy(&aBlock);
          v47 = v39;

          [a1 animateAlongsideTransition:v42 completion:v46];
          _Block_release(v46);
          _Block_release(v42);

          return;
        }

        __break(1u);
      }

      v32 = *&v4[v51];
      if (v32)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }
}

void sub_1005D774C(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005C9C48(0, 0, 1, a1);
    sub_1005C4C78();
  }
}

void sub_1005D77C0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_1005EBD4C;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10002BC98;
  v6[3] = &unk_1010B6FF8;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.33 animations:0.33];
  _Block_release(v4);
}

void sub_1005D78B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_isViewTransitioning] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
    v3 = v1;
    swift_beginAccess();
    v4 = *&v3[v2];

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {
        v7 = *(v6 - 8);

        v7(v8);

        v6 += 16;
        --v5;
      }

      while (v5);
    }

    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = OBJC_IVAR____TtC5Music24NowPlayingViewController_viewTransitionCompletions;
      v11 = v9;
      swift_beginAccess();
      *&v11[v10] = _swiftEmptyArrayStorage;
    }
  }

  sub_10065D76C();
}

void sub_1005D7AFC(void *a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v1 traitCollection];
  v5 = [v4 hasDifferentColorAppearanceComparedToTraitCollection:a1];

  if ((v5 & 1) == 0)
  {
    v6 = a1 ? [a1 horizontalSizeClass] : 0;
    v7 = [v3 horizontalSizeClass];
    if (a1)
    {
      if (v6 == v7)
      {
        v8 = [a1 preferredContentSizeCategory];
        v9 = [v3 preferredContentSizeCategory];
        v10 = v9;
        if (v8)
        {
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
          if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
          {

            goto LABEL_3;
          }

          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v15)
          {
            goto LABEL_3;
          }
        }

        else
        {
        }
      }
    }
  }

  sub_1005C5B40(0, 0, 1, [v1 isViewLoaded]);
LABEL_3:
}

void sub_1005D7D3C(uint64_t *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) >> 62;
  v4 = 2;
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v3 == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1;
  }

  v8 = [objc_opt_self() standardUserDefaults];
  v25[3] = &type metadata for Int;
  v25[0] = v6;
  v24 = 0;
  sub_1002B8234();
  sub_100009838();
  NSUserDefaults.subscript.setter(v25, &v24, &type metadata for NowPlayingViewController.DefaultsKey);

  if (v5)
  {
    sub_1005C4F50(4.0);
  }

  v9 = *v2 >> 62;
  v10 = *a1;
  if (v9)
  {
    if (v9 == 1)
    {
      if (v10 >> 62 == 1)
      {
        return;
      }
    }

    else if (v10 >> 62 == 2 && v10 == 0x8000000000000000)
    {
      v11 = vorrq_s8(*(a1 + 3), *(a1 + 5));
      if (!(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | a1[2] | a1[1]))
      {
        return;
      }
    }
  }

  else if (!(v10 >> 62))
  {
    return;
  }

  sub_1005C56EC();
  v12 = *v2;
  if (*v2 >> 62 == 1)
  {
    v13 = v2[3];
    v14 = v2[4];
    v16 = v2 + 1;
    v15 = v2[1];
    v17 = (v12 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = (v12 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state;
    v19 = *v18;
    v20 = *(v18 + 8);
    sub_10012BAC0(v12, v15, v16[1], v13, v14);
    sub_1002AC9FC(v19, v20);

    if (v20 != 1)
    {
      sub_1002AC8A4(v19, v20);
    }
  }

  v21 = sub_1005C405C();
  v22 = *&v21[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
  v23 = v22;

  if (v22)
  {
    dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
  }
}

void sub_1005D7F64(char a1)
{
  LOBYTE(v2) = a1;
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType;
  if (!*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType))
  {
    v4 = 0xE700000000000000;
    v5 = 0x746361706D6F63;
    v2 = v2;
    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
  {
    v5 = 0x4572616C75676572;
    v4 = 0xEF6465646E657478;
    v2 = v2;
    if (!v2)
    {
      goto LABEL_15;
    }

LABEL_6:
    if (v2 == 1)
    {
      v6 = 0x72616C75676572;
    }

    else
    {
      v6 = 0x4572616C75676572;
    }

    if (v2 == 1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xEF6465646E657478;
    }

    if (v5 != v6)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v4 = 0xE700000000000000;
  v5 = 0x72616C75676572;
  v2 = v2;
  if (v2)
  {
    goto LABEL_6;
  }

LABEL_15:
  v7 = 0xE700000000000000;
  if (v5 != 0x746361706D6F63)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v4 == v7)
  {

    return;
  }

LABEL_20:
  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
    return;
  }

  sub_1005C56EC();
  v9 = (v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v11 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v10 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v12 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  if (v11 >> 62)
  {
    if (v11 >> 62 != 1)
    {
      return;
    }

    v13 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
    if (*(v1 + v3))
    {
      if (*(v1 + v3) != 1)
      {
        v27 = v13;
        v28 = v10;

        v24 = *(SyncedLyricsViewController.Specs.default.unsafeMutableAddressor() + 73);
LABEL_33:
        v29 = [v11 & 0x3FFFFFFFFFFFFFFFLL view];
        if (!v29)
        {
          goto LABEL_53;
        }

        v30 = v29;
        [v29 setDirectionalLayoutMargins:{0.0, v24, 0.0, v24}];

        v31 = v37[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout];
        v37[OBJC_IVAR___MusicNowPlayingLyricsViewController_layout] = *(v1 + v3) > 1u;
        sub_10029A350(v31);
        if (v12 >> 62)
        {
          v32 = _CocoaArrayWrapper.endIndex.getter();
          if (v32)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v32 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v32)
          {
LABEL_36:
            if (v32 >= 1)
            {

              for (i = 0; i != v32; ++i)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v34 = sub_1007E91C0(i, v12);
                }

                else
                {
                  v34 = *(v12 + 8 * i + 32);
                }

                v35 = v34;
                v36 = [v34 firstAttribute];
                if (v36 == 5 || v36 == 6)
                {
                  [v35 setConstant:?];
                }
              }

              swift_bridgeObjectRelease_n();
              goto LABEL_49;
            }

            __break(1u);
LABEL_53:
            __break(1u);
            return;
          }
        }

LABEL_49:

        return;
      }

      v14 = 0x4053800000000000;
    }

    else
    {
      v14 = 0x4040000000000000;
    }

    v24 = *&v14;
    v25 = v13;
    v26 = v10;

    goto LABEL_33;
  }

  v16 = v9[5];
  v15 = v9[6];
  v18 = v9[3];
  v17 = v9[4];
  v38[0] = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v38[1] = v10;
  v38[2] = v12;
  v38[3] = v18;
  v38[4] = v17;
  v38[5] = v16;
  v38[6] = v15;
  v19 = v11;
  v20 = v10;
  v21 = v12;
  v22 = v18;
  v23 = v17;

  sub_1005D69B4(v38);

  sub_10012BB6C(v11, v10, v12, v18, v17);
}

void sub_1005D8380()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
  {

    v2 = sub_1002752B8();

    if ((v2 & 1) == 0)
    {
      if (*(v0 + v1))
      {
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v11 != 255)
        {
          sub_10004ADFC(v10, v11);
          if ((v11 & 1) == 0)
          {
            v3 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
            if (!v3)
            {
              __break(1u);
              return;
            }

            v4 = *(v3 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
            if (v4)
            {
              v5 = *&v4[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionContainerView];
              if (v5)
              {
                v6 = v4;
                v7 = [v5 window];
                if (v7)
                {
                  v8 = v7;

                  v4 = v8;
LABEL_13:

                  return;
                }
              }

              else
              {
                v9 = v4;
              }

              sub_10065D24C();
              goto LABEL_13;
            }
          }
        }
      }
    }
  }
}

void sub_1005D84C8(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
  if (v2)
  {
    if (a1)
    {
      if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition] == 1)
      {
        v3 = v1;
        LOBYTE(v31) = 11;
        v4 = sub_100025CE0();
        v5 = v2;
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4))
        {
          if (v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground] == 1)
          {
            v6 = v5;
            isa = [v6 constraints];
            if (!isa)
            {
              sub_100009F78(0, &qword_1011838A0);
              static Array._unconditionallyBridgeFromObjectiveC(_:)();
              isa = Array._bridgeToObjectiveC()().super.isa;
            }

            [v6 removeConstraints:isa];

            [v6 setTranslatesAutoresizingMaskIntoConstraints:1];
            v8 = [v1 view];
            if (v8)
            {
              v9 = v8;
              [v8 bounds];
              v11 = v10;
              v13 = v12;
              v15 = v14;
              v17 = v16;

              [v6 setFrame:{v11, v13, v15, v17}];
              [v6 setAutoresizingMask:18];

              sub_1005D9C40(v6, v1);
            }

            else
            {
              __break(1u);
            }
          }

          else
          {
            if (qword_10117F5C8 != -1)
            {
              swift_once();
            }

            v26 = type metadata accessor for Logger();
            sub_1000060E4(v26, qword_101218A98);
            v27 = Logger.logObject.getter();
            v28 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              *v29 = 0;
              _os_log_impl(&_mh_execute_header, v27, v28, "| 🫥😐 – Hiding morphingMotionView: plain motion mode", v29, 2u);
            }

            v30 = *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork];
            *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork] = v2;
          }
        }

        else
        {
          sub_1005D9C40(v5, v1);
        }
      }

      else
      {
        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v2;
        v35 = sub_1001D2724;
        v36 = v20;
        v31 = _NSConcreteStackBlock;
        v32 = 1107296256;
        v33 = sub_10002BC98;
        v34 = &unk_1010B5B80;
        v21 = _Block_copy(&v31);
        v22 = v2;

        v23 = swift_allocObject();
        *(v23 + 16) = v22;
        v35 = sub_1005EA7C8;
        v36 = v23;
        v31 = _NSConcreteStackBlock;
        v32 = 1107296256;
        v33 = sub_1005C3688;
        v34 = &unk_1010B5BD0;
        v24 = _Block_copy(&v31);
        v25 = v22;

        [v19 animateWithDuration:v21 animations:v24 completion:0.15];
        _Block_release(v24);
        _Block_release(v21);
      }
    }

    else
    {
      v18 = *&v1[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];

      [v18 removeFromSuperview];
    }
  }
}

void sub_1005D8924(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v5))
    {
      v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
      v7 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] == 1)
      {
        if (!v7)
        {
          goto LABEL_15;
        }

        [v7 setAlpha:0.0];
        v8 = *(a2 + v6);
        if (!v8)
        {
          goto LABEL_15;
        }

        [*(v8 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setHidden:0];
        v9 = *(a2 + v6);
        if (!v9)
        {
          goto LABEL_15;
        }

        v10 = *(v9 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
        [v10 setAlpha:1.0];
        goto LABEL_14;
      }

      if (!v7)
      {
        goto LABEL_15;
      }

      [v7 setAlpha:1.0];
      v13 = *(a2 + v6);
      if (!v13)
      {
        goto LABEL_15;
      }

      v12 = *(v13 + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView);
      v10 = v12;
    }

    else
    {
      v11 = *(a2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (!v11)
      {
LABEL_15:

        return;
      }

      v12 = v11;
      v10 = v12;
    }

    [v12 setAlpha:0.0];
LABEL_14:

    goto LABEL_15;
  }
}

void sub_1005D8A9C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  }

  swift_beginAccess();
  v1 = swift_unknownObjectWeakLoadStrong();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork);
    if (v3)
    {
      v4 = v3;

      [v4 removeFromSuperview];
      v2 = v4;
    }
  }
}

void sub_1005D8B58(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion] = 0;
  if (a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate])
  {
    v2 = *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView];
    *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView] = 0;
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    v3 = *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
    *&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot] = 0;
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    sub_10065CE7C(0, 1);
  }

  [a1 setAlpha:0.0];
  v9[0] = 0x3FF0000000000000;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = 0x3FF0000000000000;
  v9[4] = 0;
  v9[5] = 0;
  [a1 setTransform:v9];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    v6 = Strong;
    v7 = v5;

    if (!v5)
    {
      __break(1u);
      return;
    }

    sub_10019BFA4();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  }
}

void sub_1005D8CD0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1005C6A74(0);
    v5 = sub_100025CE0();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v5))
    {
      if (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground] != 1)
      {
        goto LABEL_12;
      }

      v6 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v6)
      {
LABEL_9:
        v6[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground] = 1;
        v7 = *&v6[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
        if (v7)
        {
          *(v7 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = 1;
        }

        v8 = v6;
        sub_1001C9480();

        v4 = v8;
        goto LABEL_12;
      }

      __break(1u);
    }

    if (v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_previousMotionBackgroundDataWasReady] & 1) == 0 && (a2)
    {
      v6 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (!v6)
      {
        __break(1u);
        return;
      }

      goto LABEL_9;
    }

LABEL_12:
  }
}

void sub_1005D8DFC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v1)
  {
    v2 = v1;
    sub_10065ECCC();
    sub_10065EEBC();
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v7[4] = sub_1005EAB14;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10002BC98;
    v7[3] = &unk_1010B60D0;
    v5 = _Block_copy(v7);
    v6 = v2;

    [v3 animateWithDuration:v5 animations:0.2];
    _Block_release(v5);
  }
}

void sub_1005D8F18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    if (v2)
    {
      v3 = v2;

      [v3 setAlpha:1.0];
      v1 = v3;
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState];
    if (v6)
    {

      if (*(v6 + 42) == 1)
      {
        *(v6 + 42) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }

    else
    {
    }
  }
}

void sub_1005D90E0(char a1)
{
  v2 = v1;
  LOBYTE(v63) = 11;
  v4 = sub_100025CE0();
  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4);
  v6 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v5)
  {
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (!v7)
      {
        return;
      }

      isEscapingClosureAtFileLocation = v7;
      [isEscapingClosureAtFileLocation alpha];
      if (v9 != 0.0)
      {
        v10 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
        [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) alpha];
        if (v11 != 0.0 && ([*(isEscapingClosureAtFileLocation + v10) isHidden] & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (!v6)
  {
    goto LABEL_58;
  }

  v12 = *(v6 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v12)
  {
    return;
  }

  isEscapingClosureAtFileLocation = v12;
  [isEscapingClosureAtFileLocation alpha];
  if (v13 != 0.0)
  {
LABEL_23:

    return;
  }

LABEL_11:
  if ((a1 & 1) == 0)
  {
    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = isEscapingClosureAtFileLocation;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1005EA740;
    *(v21 + 24) = v20;
    v67 = sub_100029B94;
    v68 = v21;
    v63 = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_100029B9C;
    v66 = &unk_1010B59F0;
    v22 = _Block_copy(&v63);
    v23 = isEscapingClosureAtFileLocation;

    [v19 performWithoutAnimation:v22];
    _Block_release(v22);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_22;
  }

  if ((*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowSmartTransition) & 1) == 0)
  {
LABEL_22:
    v24 = objc_opt_self();
    v25 = swift_allocObject();
    *(v25 + 16) = isEscapingClosureAtFileLocation;
    v67 = sub_1005EBD94;
    v68 = v25;
    v63 = _NSConcreteStackBlock;
    v64 = 1107296256;
    v65 = sub_10002BC98;
    v66 = &unk_1010B5A40;
    v26 = _Block_copy(&v63);
    isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;

    [v24 animateWithDuration:v26 animations:0.15];
    _Block_release(v26);
    goto LABEL_23;
  }

  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, qword_101218A98);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "| 🫥😐 – Showing square artwork", v17, 2u);
  }

  isEscapingClosureAtFileLocation = isEscapingClosureAtFileLocation;
  [isEscapingClosureAtFileLocation setAlpha:1.0];
  [*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView) setAlpha:1.0];
  v18 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkTransitionData);
  if ((v18 & 0xFF00) == 0x200)
  {
    goto LABEL_30;
  }

  if (!v18)
  {

    goto LABEL_26;
  }

  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v27 & 1) == 0)
  {
LABEL_30:
    v34 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v35 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v35)
    {
      v36 = [v35 view];
      if (v36)
      {
        v37 = v36;
        LOBYTE(v63) = 11;
        if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0 || (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
        {
          goto LABEL_37;
        }

        v38 = *(v2 + v34);
        if (!v38)
        {
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v39 = *(v38 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v39)
        {
          v40 = v39;
        }

        else
        {
LABEL_37:
          v40 = sub_1005C405C();
        }

        v41 = v40;
        [v37 insertSubview:isEscapingClosureAtFileLocation aboveSubview:{v40, v63}];

        [isEscapingClosureAtFileLocation setTranslatesAutoresizingMaskIntoConstraints:1];
        v42 = *(v2 + v34);
        if (v42)
        {
          v43 = *(v42 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
          if (v43)
          {
            [v43 layoutFrame];
            [isEscapingClosureAtFileLocation setFrame:?];

            v44 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v45 = swift_allocObject();
            *(v45 + 16) = v44;
            *(v45 + 24) = isEscapingClosureAtFileLocation;
            v46 = isEscapingClosureAtFileLocation;

            sub_100345538(0, v46, sub_1005EA75C, v45);

            return;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_26:
  v28 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v29 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v29)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v30 = [v29 view];
  if (!v30)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v31 = v30;
  v32 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v32)
  {
    v33 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  }

  else
  {
    LOBYTE(v63) = 11;
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0 || (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground))
    {
      goto LABEL_46;
    }

    v47 = *(v2 + v28);
    if (!v47)
    {
LABEL_69:
      __break(1u);
      return;
    }

    v48 = *(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v48)
    {
      v49 = v48;
    }

    else
    {
LABEL_46:
      v49 = sub_1005C405C();
    }

    v33 = v49;
  }

  v50 = v32;
  [v31 insertSubview:isEscapingClosureAtFileLocation aboveSubview:v33];

  v51 = *(v2 + v28);
  if (!v51)
  {
    goto LABEL_65;
  }

  v52 = *(v51 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
  if (v52)
  {
    v53 = sub_100009F78(0, &qword_1011978B0);
  }

  else
  {
    v53 = 0;
    v64 = 0;
    v65 = 0;
  }

  v63 = v52;
  v66 = v53;
  v54 = v52;
  UIView.constrain(to:padding:)();
  sub_1000095E8(&v63, &unk_101183F30);
  _s4MaskCMa();
  swift_allocObject();
  v55 = sub_1007CDF70(0);
  if (!v55)
  {
    goto LABEL_23;
  }

  v56 = *(v2 + v28);
  if (!v56)
  {
    goto LABEL_66;
  }

  v57 = v55;
  v58 = *(v56 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
  if (!v58)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  [v58 layoutFrame];
  [*(v57 + 16) setFrame:{0.0, 0.0}];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = isEscapingClosureAtFileLocation;
  v61 = *(v57 + 40);
  *(v57 + 40) = sub_1005EA764;
  *(v57 + 48) = v60;
  v62 = isEscapingClosureAtFileLocation;

  sub_100020438(v61);

  *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask) = v57;

  [v62 setMaskView:*(v57 + 16)];
}

void sub_1005D99F8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork);
    if (v5)
    {
      v6 = v5;

      [v6 removeFromSuperview];
      v4 = v6;
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    *&v7[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = *(v8 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  v10 = v8;
  v11 = v9;

  if (v9)
  {
    sub_10019BFA4();

LABEL_10:
    [a2 setNeedsLayout];
    return;
  }

  __break(1u);
}

void sub_1005D9B1C(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v5 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  v6 = Strong;
  v7 = v5;

  if (v5)
  {
    sub_10019BFA4();

LABEL_4:
    [a3 setNeedsLayout];
    return;
  }

  __break(1u);
}

uint64_t sub_1005D9BAC(char *a1)
{
  [a1 setAlpha:1.0];
  v2 = sub_100025CE0();
  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  if (result)
  {
    v4 = OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView;
    [*&a1[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkView] setHidden:0];
    return [*&a1[v4] setAlpha:1.0];
  }

  return result;
}

void sub_1005D9C40(void *a1, _BYTE *a2)
{
  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000060E4(v4, qword_101218A98);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "| 🫥😐 – Hiding morphingMotionView: full-screen mode", v7, 2u);
  }

  v8 = objc_allocWithZone(type metadata accessor for MusicBackgroundExtensionView());
  v9 = a1;
  v10 = sub_100561B60(v9);
  v11 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v12 = *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v12)
  {
    __break(1u);
    goto LABEL_24;
  }

  v13 = [v12 view];
  if (!v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  v15 = v10;
  v16 = sub_100025CE0();
  v17 = v15;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v16) & 1) == 0 || (a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_viewSupportsMotionBackground])
  {
    goto LABEL_12;
  }

  v18 = *&a2[v11];
  if (!v18)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v19 = *(v18 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v19)
  {
    v20 = v19;
  }

  else
  {
LABEL_12:
    v20 = sub_1005C405C();
  }

  v21 = v20;
  [v14 insertSubview:v17 aboveSubview:v20];

  v22 = [a2 view];
  if (!v22)
  {
    goto LABEL_25;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v99.origin.x = v25;
  v99.origin.y = v27;
  v99.size.width = v29;
  v99.size.height = v31;
  Width = CGRectGetWidth(v99);
  v33 = [a2 view];
  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = v33;
  [v33 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v100.origin.x = v36;
  v100.origin.y = v38;
  v100.size.width = v40;
  v100.size.height = v42;
  Height = CGRectGetHeight(v100);
  v44 = [a2 view];
  if (!v44)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v45 = v44;
  [v44 frame];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v101.origin.x = v47;
  v101.origin.y = v49;
  v101.size.width = v51;
  v101.size.height = v53;
  v54 = CGRectGetWidth(v101);
  v55 = [a2 view];
  if (!v55)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v56 = v55;
  v57 = Height * 1.33333333;
  [v55 frame];
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;

  v102.origin.x = v59;
  v102.origin.y = v61;
  v102.size.width = v63;
  v102.size.height = v65;
  v98 = Width * 1.33333333;
  [v17 setFrame:{(v54 - Width * 1.33333333) * 0.5, (CGRectGetHeight(v102) - v57) * 0.5, Width * 1.33333333, v57}];

  [v17 frame];
  v67 = v66;

  [v17 frame];
  v69 = v68;

  v70 = [a2 view];
  if (!v70)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v71 = v70;
  [v70 bounds];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;

  v103.origin.x = v73;
  v103.origin.y = v75;
  v103.size.width = v77;
  v103.size.height = v79;
  v80 = CGRectGetWidth(v103);
  v81 = [a2 view];
  if (!v81)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v82 = v81;
  [v81 bounds];
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;

  v104.origin.x = v84;
  v104.origin.y = v86;
  v104.size.width = v88;
  v104.size.height = v90;
  [v9 setFrame:{fabs(v67), fabs(v69), v80, CGRectGetHeight(v104)}];
  _s4MaskCMa();
  swift_allocObject();
  v91 = sub_1007CDF70(1);
  if (v91)
  {
    v92 = v91;
    [*(v91 + 16) setFrame:{0.0, 0.0, v98, v57}];
    v93 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v94 = swift_allocObject();
    *(v94 + 16) = v17;
    *(v94 + 24) = v93;
    v95 = *(v92 + 40);
    *(v92 + 40) = sub_1005EA7D8;
    *(v92 + 48) = v94;
    v96 = v17;

    sub_100020438(v95);

    *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = v92;

    [v96 setMaskView:*(v92 + 16)];

    [*(v92 + 16) setPaused:1];
    [*(v92 + 16) draw];
    [*(v92 + 16) setPaused:0];
  }

  else
  {
  }

  v97 = *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork];
  *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork] = v17;

  sub_100345538(1, v17, 0, 0);
}

char *sub_1005DA24C(void *a1)
{
  [a1 removeFromSuperview];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork];
    *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_outgoingArtwork] = 0;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR____TtC5Music24NowPlayingViewController_artworkViewMask] = 0;
  }

  return result;
}

void sub_1005DA2F4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem);
  if (v3 && (v4 = [v3 metadataObject]) != 0)
  {
    v5 = v4;
    v18 = [v4 innermostModelObject];
  }

  else
  {
    v18 = 0;
  }

  if (a1 && (v6 = [a1 metadataObject]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, "innermostModelObject"), v7, v9 = objc_msgSend(v8, "identifiers"), v8, v9))
  {
    v10 = v18;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = [objc_opt_self() emptyIdentifierSet];
    v10 = v18;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  v11 = [v10 identifiers];
  if (v11)
  {
    v17 = v11;
    if ([v11 intersectsSet:v9])
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_14:
  v17 = [objc_opt_self() emptyIdentifierSet];
  if ([v17 intersectsSet:v9])
  {
LABEL_15:

    v12 = v18;
LABEL_16:

    return;
  }

  if (!v18)
  {
    if (qword_10117F718 != -1)
    {
      swift_once();
    }

    GroupActivitiesManager.SuggestionProvider.removePlayingItemSuggestion()();

    v12 = v17;
    goto LABEL_16;
  }

LABEL_20:
  v13 = qword_10117F718;
  v14 = v18;
  if (v13 != -1)
  {
    v16 = v14;
    swift_once();
    v14 = v16;
  }

  v19[0] = v14;
  v20 = 0;
  v15 = v14;
  GroupActivitiesManager.SuggestionProvider.registerItem(_:intent:)(v19, 0);

  sub_100442874(v19);
}

BOOL sub_1005DA588()
{
  v1 = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v2 metadataObject];
  if (!v3)
  {
    v5 = v2;
LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v3 innermostModelObject];

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

    goto LABEL_8;
  }

  v7 = [v6 hasVideo];

  if (v7)
  {
    return 1;
  }

LABEL_9:
  v9 = [v0 traitCollection];
  v10 = [v9 accessibilityContrast];

  return v10 == 1;
}

void sub_1005DA684(uint64_t a1, char a2)
{
  if ((*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) & 1) == 0)
  {
    v4 = sub_1005C405C();
    v6 = v4;
    v5 = 1.0;
    if (a2)
    {
      v5 = 0.0;
    }

    [v4 setAlpha:v5];
  }
}

uint64_t sub_1005DA6FC()
{
  v0 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin(v0);
  UIViewController.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  return UIViewController.traitOverrides.setter();
}

void sub_1005DA7C8()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v4 = v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8;
  v3 = *v4;
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v7 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v8 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v9 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  v53 = v5;
  v54 = v5 >> 62;
  v55 = v9;
  v56 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  v51 = *v4;
  v52 = v6;
  v50 = v8;
  if (*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) && *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
  {
    sub_10012BAC0(v5, v3, v6, v7, v8);

    v11 = v5 >> 62;
    if (!v54)
    {
LABEL_5:
      v12 = v5;
      v13 = v3;
      v14 = v6;
      v15 = v7;
      v16 = v8;

      [v13 frame];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      [v13 setTranslatesAutoresizingMaskIntoConstraints:1];
      [v13 setFrame:{v18, v20, v22, v24}];
      v25 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (!v25)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = [v25 view];
      if (!v26)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v27 = v26;
      v28 = sub_1005C405C();
      [v27 insertSubview:v13 aboveSubview:v28];

      v29 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v29 deactivateConstraints:isa];

      sub_10012BB6C(v53, v3, v6, v7, v8);
      goto LABEL_16;
    }
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10012BAC0(v5, v3, v6, v7, v8);

    v11 = v5 >> 62;
    if ((v10 & 1) != 0 && !v54)
    {
      goto LABEL_5;
    }
  }

  if (v11 != 2 || v5 != 0x8000000000000000 || (v6 | v3 | v7 | v8 | v56 | v9) != 0)
  {
LABEL_16:
    sub_1005DAD10(0);
  }

  v33 = *(v2 + 16);
  v58[0] = *v2;
  v58[1] = v33;
  v58[2] = *(v2 + 32);
  v59 = *(v2 + 48);
  v34 = *v2;
  v35 = *(v2 + 8);
  v36 = *(v2 + 16);
  v37 = *(v2 + 24);
  v38 = *(v2 + 32);
  *v2 = 0x8000000000000000;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  sub_1005EB280(v58, v57);
  sub_10012BB6C(v34, v35, v36, v37, v38);
  sub_1005D7D3C(v58);
  sub_1005EB2B8(v58);
  v39 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v40 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v40)
  {
    __break(1u);
    goto LABEL_28;
  }

  v41 = v40;
  sub_1001B6A0C(0, 1);

  if (v54)
  {
    if (v54 == 1)
    {
      v42 = *(v1 + v39);
      if (v42)
      {
        v43 = *&v42[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
        if (v43)
        {
          v44 = (v53 & 0x3FFFFFFFFFFFFFFFLL);
          v45 = v51;

          v46 = v42;
          [v43 setSelected:0];
          sub_1001C3DB8();

          sub_1005DB5C0(v44, v45, v52, 1);
          sub_10012BB6C(v53, v51, v52, v7, v50);

          return;
        }

        goto LABEL_32;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v57[0] = v53;
    v57[1] = v51;
    v57[2] = v52;
    v57[3] = v7;
    v57[4] = v50;
    v57[5] = v56;
    v57[6] = v55;
    v47 = *(v1 + v39);
    if (!v47)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v48 = *&v47[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
    if (!v48)
    {
LABEL_33:
      __break(1u);
      return;
    }

    sub_10012BAC0(v53, v51, v52, v7, v50);
    v49 = v47;
    [v48 setSelected:0];
    sub_1001C30CC();
    sub_1001C36E8();

    sub_1005DBD58(v57, 1);
    sub_10012BB6C(v53, v51, v52, v7, v50);
    sub_10012BB6C(v53, v51, v52, v7, v50);
  }
}

void sub_1005DAD10(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UIView.Corner.Radius();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_101183A90);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &aBlock - v12;
  v14 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
  {

    v15 = sub_1002752B8();

    if (v15)
    {
      if ((a1 & 1) == 0)
      {
        v16 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
        if (!v16)
        {
          __break(1u);
          goto LABEL_35;
        }

        v17 = *(v16 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v17)
        {
          v18 = [v17 layer];
          [v18 setZPosition:-1.0];
        }
      }

      LOBYTE(aBlock) = 11;
      v19 = sub_100025CE0();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v19))
      {
        v20 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
        if (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) == 1)
        {
          if (v20)
          {
            v21 = *(v20 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
            if (!v21)
            {
              return;
            }

            v22 = v21;
            sub_10065FB58();
            v23 = [v22 traitCollection];
            [v23 displayCornerRadius];
            v25 = v24;

            sub_10004CF20(*&v22[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v22 traitCollection], v13);
            v26 = type metadata accessor for UIView.Corner();
            v27 = *(v26 - 8);
            if ((*(v27 + 48))(v13, 1, v26) == 1)
            {
              sub_1000095E8(v13, &qword_101183A90);
              v28 = 0;
            }

            else
            {
              UIView.Corner.radius.getter();
              (*(v27 + 8))(v13, v26);
              [v22 bounds];
              UIView.Corner.Radius.value(in:)();
              v28 = v52;
              (*(v5 + 8))(v7, v4);
            }

            [*&v22[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
            v49 = objc_opt_self();
            v53 = swift_allocObject();
            *(v53 + 16) = v22;
            *(v53 + 24) = 1;
            *(v53 + 32) = v25;
            *(v53 + 40) = v28;
            v58 = sub_1005EBE9C;
            v59 = v53;
            aBlock = _NSConcreteStackBlock;
            v55 = 1107296256;
            v51 = &unk_1010B6418;
LABEL_31:
            v56 = sub_10002BC98;
            v57 = v51;
            v46 = _Block_copy(&aBlock);
            v47 = v22;

            [v49 animateWithDuration:4 delay:v46 options:0 animations:0.35 completion:{0.0, aBlock, v55}];
            goto LABEL_32;
          }

          goto LABEL_36;
        }

        if (!v20)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v44 = *(v20 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (!v44)
        {
          return;
        }

        v32 = v44;
        sub_10065ECCC();
        sub_10065EEBC();
        v33 = objc_opt_self();
        v45 = swift_allocObject();
        *(v45 + 16) = v32;
        v58 = sub_1005EBDDC;
        v59 = v45;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v35 = &unk_1010B63C8;
LABEL_26:
        v56 = sub_10002BC98;
        v57 = v35;
        v46 = _Block_copy(&aBlock);
        v47 = v32;

        [v33 animateWithDuration:v46 animations:{0.2, aBlock, v55}];
LABEL_32:
        _Block_release(v46);

        return;
      }

      v36 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (v36)
      {
        v37 = *(v36 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (!v37)
        {
          return;
        }

        v22 = v37;
        sub_10065FB58();
        v38 = [v22 traitCollection];
        [v38 displayCornerRadius];
        v40 = v39;

        sub_10004CF20(*&v22[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode], [v22 traitCollection], v11);
        v41 = type metadata accessor for UIView.Corner();
        v42 = *(v41 - 8);
        if ((*(v42 + 48))(v11, 1, v41) == 1)
        {
          sub_1000095E8(v11, &qword_101183A90);
          v43 = 0;
        }

        else
        {
          UIView.Corner.radius.getter();
          (*(v42 + 8))(v11, v41);
          [v22 bounds];
          UIView.Corner.Radius.value(in:)();
          v43 = v48;
          (*(v5 + 8))(v7, v4);
        }

        [*&v22[OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView] setClipsToBounds:1];
        v49 = objc_opt_self();
        v50 = swift_allocObject();
        *(v50 + 16) = v22;
        *(v50 + 24) = 1;
        *(v50 + 32) = v40;
        *(v50 + 40) = v43;
        v58 = sub_1005EB1E8;
        v59 = v50;
        aBlock = _NSConcreteStackBlock;
        v55 = 1107296256;
        v51 = &unk_1010B6378;
        goto LABEL_31;
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (*(v1 + v14))
    {
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter();

      v29 = v55;
      if (v55 != 255)
      {
        sub_10004ADFC(aBlock, v55);
        if ((v29 & 1) == 0)
        {
          v30 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
          if (!v30)
          {
LABEL_38:
            __break(1u);
            return;
          }

          v31 = *(v30 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (!v31)
          {
            return;
          }

          v32 = v31;
          sub_10065ECCC();
          sub_10065EEBC();
          v33 = objc_opt_self();
          v34 = swift_allocObject();
          *(v34 + 16) = v32;
          v58 = sub_1005EBDDC;
          v59 = v34;
          aBlock = _NSConcreteStackBlock;
          v55 = 1107296256;
          v35 = &unk_1010B6328;
          goto LABEL_26;
        }
      }
    }
  }
}

void sub_1005DB5C0(void *a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
  v11 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
  if (v11)
  {
    [v11 invalidate];
    v12 = *(v5 + v10);
  }

  else
  {
    v12 = 0;
  }

  *(v5 + v10) = 0;

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  if ((a4 & 1) == 0)
  {
    v42 = a1;
    v43 = a2;

    [v43 removeFromSuperview];
    [v42 removeFromParentViewController];
    v44 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v45 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v45)
    {
      v46 = v45;
      sub_1001B6524();

      sub_1005CB484(1, 1);
      sub_1005D8380();
      v47 = *(v5 + v44);
      if (v47)
      {
        v48 = *(v47 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v48)
        {
          v49 = v48;
          sub_10065D1CC();
        }

        v50 = sub_1005C405C();
        [v50 setHidden:0];

        v51 = *(v5 + v44);
        if (v51)
        {
          v52 = *(v51 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v52)
          {
            v53 = [v52 layer];
            [v53 setZPosition:0.0];
          }

LABEL_28:

          return;
        }

        goto LABEL_42;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v74 = v14;
  v15 = OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData;
  v16 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
  if (!v16 || ((v17 = v16[7], (~v17 & 0xF000000000000007) != 0) ? (v18 = (v17 & 0xC000000000000000) == 0x4000000000000000) : (v18 = 0), !v18))
  {
    v19 = a1;
    v20 = a2;

    v21 = [v19 view];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1005DCF54(v21, 1);

      if (v23)
      {
        if (qword_10117FB00 != -1)
        {
          swift_once();
        }

        v72 = v15;
        v24 = type metadata accessor for Logger();
        sub_1000060E4(v24, qword_101219268);
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&_mh_execute_header, v25, v26, "dismissLyrics", v27, 2u);
        }

        v28 = v23[7];
        v29 = v23[8];
        v30 = v23[9];
        v31 = v23[10];
        v32 = v23[11];
        v23[7] = v19 | 0x4000000000000000;
        v23[8] = v20;
        v23[9] = a3;
        *(v23 + 5) = 0u;
        *(v23 + 6) = 0u;
        v33 = v19;
        v34 = v20;

        sub_1005EB32C(v28, v29, v30, v31, v32);
        v35 = swift_allocObject();
        *(v35 + 16) = sub_1005EB464;
        *(v35 + 24) = v74;
        v36 = swift_allocObject();
        *(v36 + 16) = sub_1005EBD74;
        *(v36 + 24) = v35;
        swift_beginAccess();
        v37 = v23[3];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23[3] = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_10006429C(0, v37[2] + 1, 1, v37);
          v23[3] = v37;
        }

        v40 = v37[2];
        v39 = v37[3];
        if (v40 >= v39 >> 1)
        {
          v37 = sub_10006429C((v39 > 1), v40 + 1, 1, v37);
        }

        v37[2] = v40 + 1;
        v41 = &v37[2 * v40];
        v41[4] = sub_10018A020;
        v41[5] = v36;
        v23[3] = v37;
        swift_endAccess();

        *(v5 + v72) = v23;
        swift_retain_n();

        sub_1005C7034();

        return;
      }

      goto LABEL_28;
    }

LABEL_43:
    __break(1u);
    return;
  }

  v54 = v16[8];
  v71 = v16[9];
  v55 = v16[10];
  v56 = v16[11];
  sub_1005EB340(v17, v54, v71, v55, v56);
  v73 = v55;
  sub_1005EB340(v17, v54, v71, v55, v56);
  v57 = qword_10117FB00;
  v58 = a1;
  v59 = a2;

  if (v57 != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  sub_1000060E4(v60, qword_101219268);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "dismissLyrics reversing", v63, 2u);
  }

  v64 = swift_allocObject();
  *(v64 + 16) = sub_1005EB464;
  *(v64 + 24) = v74;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_10030B05C;
  *(v65 + 24) = v64;
  swift_beginAccess();
  v66 = v16[3];

  v67 = swift_isUniquelyReferenced_nonNull_native();
  v16[3] = v66;
  if ((v67 & 1) == 0)
  {
    v66 = sub_10006429C(0, v66[2] + 1, 1, v66);
    v16[3] = v66;
  }

  v69 = v66[2];
  v68 = v66[3];
  if (v69 >= v68 >> 1)
  {
    v66 = sub_10006429C((v68 > 1), v69 + 1, 1, v66);
  }

  v66[2] = v69 + 1;
  v70 = &v66[2 * v69];
  v70[4] = sub_10018A020;
  v70[5] = v65;
  v16[3] = v66;
  swift_endAccess();

  sub_100669C5C();

  sub_1005EB32C(v17, v54, v71, v73, v56);
}

void sub_1005DBD58(uint64_t a1, char a2)
{
  v3 = v2;
  v59 = *(a1 + 32);
  v60 = *(a1 + 16);
  v6 = *(a1 + 48);
  v62 = *a1;
  v7 = *a1;
  [*a1 beginAppearanceTransition:0 animated:a2 & 1];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *(a1 + 16);
  *(v9 + 24) = *a1;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a1 + 32);
  *(v9 + 72) = *(a1 + 48);
  v11 = OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData;
  v12 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData);
  if (v12)
  {
    v13 = v12[7];
    if (!(v13 >> 62) && (v13 & 0xF000000000000007) != 0xF000000000000007)
    {
      v36 = v12[8];
      v37 = v12[9];
      v38 = v12[10];
      v39 = v12[11];
      sub_1005EB340(v12[7], v36, v37, v38, v39);
      v63 = v36;
      v61 = v37;
      v58 = v39;
      sub_1005EB340(v13, v36, v37, v38, v39);
      sub_1005EB2F4(a1, v64);
      v40 = qword_10117FB00;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_1000060E4(v41, qword_101219268);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "dismissQueue reversing", v44, 2u);
      }

      v45 = swift_allocObject();
      *(v45 + 16) = sub_1005EB2E8;
      *(v45 + 24) = v9;
      v46 = swift_allocObject();
      *(v46 + 16) = sub_10026765C;
      *(v46 + 24) = v45;
      swift_beginAccess();
      v47 = v12[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12[3] = v47;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v47 = sub_10006429C(0, v47[2] + 1, 1, v47);
        v12[3] = v47;
      }

      v50 = v47[2];
      v49 = v47[3];
      if (v50 >= v49 >> 1)
      {
        v47 = sub_10006429C((v49 > 1), v50 + 1, 1, v47);
      }

      v47[2] = v50 + 1;
      v51 = &v47[2 * v50];
      v51[4] = sub_10018A020;
      v51[5] = v46;
      v12[3] = v47;
      swift_endAccess();

      sub_100669C5C();

      sub_1005EB32C(v13, v63, v61, v38, v58);
      sub_1005EB32C(v13, v63, v61, v38, v58);
LABEL_32:

      return;
    }
  }

  sub_1005EB2F4(a1, v64);
  v15 = [v7 view];
  if (!v15)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v16 = v15;
  v17 = sub_1005DCF54(v15, a2 & 1);

  if (v17)
  {
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v57 = v3;
    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101219268);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "dismissQueue", v21, 2u);
    }

    v56 = v11;

    v22 = [v7 view];
    if (v22)
    {
      v23 = v22;
      [*(a1 + 8) insertSubview:*(a1 + 24) aboveSubview:v22];

      v24 = v17[7];
      v25 = v17[8];
      v26 = v17[9];
      v27 = v17[10];
      v28 = v17[11];
      *(v17 + 7) = v62;
      *(v17 + 9) = v60;
      *(v17 + 11) = v59;
      v17[13] = v6;
      sub_1005EB2F4(a1, v64);
      sub_1005EB32C(v24, v25, v26, v27, v28);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_1005EB2E8;
      *(v29 + 24) = v9;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_10026762C;
      *(v30 + 24) = v29;
      swift_beginAccess();
      v31 = v17[3];

      v32 = swift_isUniquelyReferenced_nonNull_native();
      v17[3] = v31;
      if ((v32 & 1) == 0)
      {
        v31 = sub_10006429C(0, v31[2] + 1, 1, v31);
        v17[3] = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_10006429C((v33 > 1), v34 + 1, 1, v31);
      }

      v31[2] = v34 + 1;
      v35 = &v31[2 * v34];
      v35[4] = sub_10018A020;
      v35[5] = v30;
      v17[3] = v31;
      swift_endAccess();

      *(v57 + v56) = v17;
      swift_retain_n();

      sub_1005C7034();

      goto LABEL_32;
    }

    goto LABEL_34;
  }

  sub_1005CB484(1, 1);
  sub_1005D8380();
  v52 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v52)
  {
    v53 = *(v52 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v53)
    {
      v54 = v53;
      sub_10065D1CC();
    }

    v55 = sub_1005C405C();
    [v55 setHidden:0];

    [v7 endAppearanceTransition];
    goto LABEL_32;
  }

LABEL_35:
  __break(1u);
}

void sub_1005DC468()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v0 = objc_opt_self();
    v1 = [v0 standardUserDefaults];
    v2 = [v0 standardUserDefaults];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];

    v5 = String._bridgeToObjectiveC()();
    [v1 setBool:v4 ^ 1 forKey:v5];

    sub_1005D453C();
  }
}

void *sub_1005DC5F4(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a2 >> 62;
  v6 = 0;
  v7 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:dbl_100ED6948[v5] controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
  v8 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:40.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v8 timingParameters:0.0];

  v37 = v7;
  v38 = v2;
  if (v4 < 0)
  {
    if (v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] && v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] != 1)
    {
    }

    else
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v17 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (v17)
        {
          result = *(v17 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
          if (result)
          {
            [result layoutFrame];
            Height = CGRectGetHeight(v41);
            CGAffineTransformMakeTranslation(&v40, 0.0, Height);
            v39 = v40;
            CGAffineTransformScale(&v40, &v39, 0.95, 0.95);
            v10 = swift_allocObject();
            *(v10 + 16) = a1;
            v19 = *&v40.c;
            *(v10 + 24) = *&v40.a;
            *(v10 + 40) = v19;
            *(v10 + 56) = *&v40.tx;
            v12 = swift_allocObject();
            *(v12 + 16) = a1;
            v13 = sub_1005EBD48;
            goto LABEL_10;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }
  }

  CGAffineTransformMakeScale(&v40, 0.9, 0.9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = *&v40.c;
  *(v10 + 24) = *&v40.a;
  *(v10 + 40) = v11;
  *(v10 + 56) = *&v40.tx;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = sub_1005EB3D4;
  if (v5 > 1)
  {
LABEL_10:
    v14 = v13;
    goto LABEL_11;
  }

  v14 = sub_1005EB3D4;
  v6 = 0x3FB1EB851EB851ECLL;
LABEL_11:
  _s13AnimationDataC19AnimationDescriptorCMa();
  v20 = swift_allocObject();
  *(v20 + 72) = 0;
  *(v20 + 16) = v9;
  *(v20 + 24) = v14;
  *(v20 + 32) = v10;
  *(v20 + 40) = sub_1005EBD44;
  *(v20 + 48) = v12;
  *(v20 + 56) = v6;
  *(v20 + 64) = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  v23 = qword_100ED6960[v5];
  v24 = swift_allocObject();
  *(v24 + 72) = 0;
  *(v24 + 16) = v37;
  *(v24 + 24) = sub_1001D3178;
  *(v24 + 32) = v21;
  *(v24 + 40) = sub_1005EBD78;
  *(v24 + 48) = v22;
  *(v24 + 56) = v23;
  *(v24 + 64) = 0;
  _s13AnimationDataCMa_0();
  swift_allocObject();
  v25 = a1;
  v26 = v9;
  v27 = v37;
  v28 = sub_10066B388(v20, v24);

  v29 = swift_allocObject();
  *(v29 + 16) = v28;
  *(v29 + 24) = v38;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1005EB3D8;
  *(v30 + 24) = v29;
  swift_beginAccess();
  v31 = *(v28 + 24);

  v32 = v38;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v28 + 24) = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_10006429C(0, v31[2] + 1, 1, v31);
    *(v28 + 24) = v31;
  }

  v35 = v31[2];
  v34 = v31[3];
  if (v35 >= v34 >> 1)
  {
    v31 = sub_10006429C((v34 > 1), v35 + 1, 1, v31);
  }

  v31[2] = v35 + 1;
  v36 = &v31[2 * v35];
  v36[4] = sub_10018A020;
  v36[5] = v30;
  *(v28 + 24) = v31;
  swift_endAccess();

  return v28;
}

void sub_1005DCB7C(uint64_t a1, uint64_t a2)
{
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000060E4(v3, qword_101219268);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136446210;
    v8 = sub_1006698D4();
    v10 = sub_1000105AC(v8, v9, &v31);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "present %{public}s completion", v6, 0xCu);
    sub_10000959C(v7);
  }

  if ((*(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) & 0x8000000000000000) == 0)
  {
    if (*(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
    {

      v11 = sub_1002752B8();

      if (v11)
      {
        v12 = *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
        if (!v12)
        {
LABEL_22:
          __break(1u);
          return;
        }

        v13 = *(v12 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v13)
        {
          v14 = *&v13[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
          if (v14)
          {
            v15 = objc_opt_self();
            v16 = swift_allocObject();
            *(v16 + 16) = v13;
            *(v16 + 24) = v14;
            v35 = sub_1005EBD70;
            v36 = v16;
            v31 = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_10002BC98;
            v34 = &unk_1010B6C88;
            v17 = _Block_copy(&v31);
            v18 = v13;
            v19 = v14;
            v20 = v18;
            v21 = v19;

            v22 = swift_allocObject();
            *(v22 + 16) = v21;
            v35 = sub_1005EBEA8;
            v36 = v22;
            v31 = _NSConcreteStackBlock;
            v32 = 1107296256;
            v33 = sub_1005C3688;
            v34 = &unk_1010B6CD8;
            v23 = _Block_copy(&v31);
            v24 = v21;

            [v15 animateWithDuration:0 delay:v17 options:v23 animations:0.2 completion:0.1];

            _Block_release(v23);
            _Block_release(v17);
          }
        }
      }
    }
  }

  v25 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v26 = *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v26)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v27 = *(v26 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v27)
  {
    v28 = *(v27 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
    if (v28)
    {
      [v28 removeFromSuperview];
      v26 = *(a2 + v25);
      if (!v26)
      {
        goto LABEL_21;
      }
    }
  }

  v29 = *(v26 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v29)
  {
    v30 = *(v29 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
    if (v30)
    {
      [v30 removeFromSuperview];
    }
  }
}

id sub_1005DCF54(id a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.18 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
    if ((*(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) & 0x8000000000000000) != 0)
    {
      if (*(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) && *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
      {
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v32 & 1) == 0)
        {
          v33 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:450.0 damping:45.0 initialVelocity:{0.0, 0.0}];
          v34 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v33 timingParameters:0.0];

          v7 = swift_allocObject();
          *(v7 + 16) = a1;
          *(v7 + 24) = v3;
          v8 = v34;
          v35 = v3;
          v9 = sub_1005EB3B4;
          goto LABEL_4;
        }
      }
    }

    v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.3 controlPoint2:0.33 animations:{0.0, 0.2, 1.0}];
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = v6;
    v9 = sub_1005EB39C;
LABEL_4:
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v7;
    _s13AnimationDataC19AnimationDescriptorCMa();
    v13 = swift_allocObject();
    *(v13 + 72) = 0;
    *(v13 + 16) = v8;
    *(v13 + 24) = sub_1005EB3A4;
    *(v13 + 32) = v11;
    *(v13 + 40) = sub_1001D3174;
    *(v13 + 48) = v12;
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    v16 = swift_allocObject();
    *(v16 + 72) = 0;
    *(v16 + 16) = v5;
    *(v16 + 24) = sub_1001D2178;
    *(v16 + 32) = v14;
    *(v16 + 40) = sub_1001D3178;
    *(v16 + 48) = v15;
    *(v16 + 56) = xmmword_100ED60B0;
    _s13AnimationDataCMa_0();
    swift_allocObject();
    v17 = a1;

    v18 = v5;
    v19 = sub_10066B388(v13, v16);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = v17;
    v21[4] = v19;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1005EB3A8;
    *(v22 + 24) = v21;
    swift_beginAccess();
    v23 = *(v19 + 24);
    v24 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 24) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_10006429C(0, v23[2] + 1, 1, v23);
      *(v19 + 24) = v23;
    }

    v27 = v23[2];
    v26 = v23[3];
    if (v27 >= v26 >> 1)
    {
      v23 = sub_10006429C((v26 > 1), v27 + 1, 1, v23);
    }

    v23[2] = v27 + 1;
    v28 = &v23[2 * v27];
    v28[4] = sub_10018A020;
    v28[5] = v22;
    *(v19 + 24) = v23;
    swift_endAccess();

    return v19;
  }

  result = [a1 removeFromSuperview];
  v30 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v30)
  {
    v31 = v30;
    sub_1001B6524();

    return 0;
  }

  __break(1u);
  return result;
}

id sub_1005DD4F8(id result, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v2)
  {
    v3 = result;
    result = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide);
    if (result)
    {
      [result layoutFrame];
      Height = CGRectGetHeight(v7);
      CGAffineTransformMakeTranslation(&v6, 0.0, Height);
      CGAffineTransformScale(&v5, &v6, 0.9, 0.9);
      v6 = v5;
      return [v3 setTransform:&v6];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005DD5B8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = (Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v7 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v6 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v8 = *(Strong + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  if (v7 >> 62)
  {
    if (v7 >> 62 == 1)
    {
      v9 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
      v10 = v6;

      v11 = [v9 view];
      if (v11)
      {
        v12 = v11;
        sub_100009F78(0, &qword_101181620);
        v13 = a2;
        v14 = static NSObject.== infix(_:_:)();

        v15 = 1;
        if (v14)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      else
      {

        v15 = 1;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v79 = Strong;
    v17 = v5[3];
    v18 = v5[4];
    v19 = v5[6];
    v20 = v7;
    v21 = v6;
    v22 = v8;
    v23 = v17;
    v24 = v18;

    v25 = [v20 view];
    if (v25)
    {
      v26 = v25;
      sub_100009F78(0, &qword_101181620);
      v78 = v19;
      v27 = v17;
      v28 = a2;
      v29 = static NSObject.== infix(_:_:)();
      sub_10012BB6C(v7, v6, v8, v27, v18);

      v15 = 1;
      if (v29)
      {
        v16 = 0;
        v4 = v79;
        goto LABEL_16;
      }
    }

    else
    {
      sub_10012BB6C(v7, v6, v8, v17, v18);
      v15 = 1;
    }

    v4 = v79;
  }

  [a2 removeFromSuperview];
  v30 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v30)
  {
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v31 = v30;
  sub_1001B6524();

  v16 = 1;
LABEL_16:
  LOBYTE(aBlock) = 11;
  v32 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v32))
  {
    if (v15 && *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
    {
      v33 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v33)
      {
        v34 = *(v33 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v34)
        {
          v35 = *&v34[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
          if (v35)
          {
            v80 = objc_opt_self();
            v36 = swift_allocObject();
            *(v36 + 16) = v34;
            *(v36 + 24) = v35;
            v86 = sub_1005EBD70;
            v87 = v36;
            aBlock = _NSConcreteStackBlock;
            v83 = 1107296256;
            v84 = sub_10002BC98;
            v85 = &unk_1010B6A80;
            v37 = _Block_copy(&aBlock);
            v38 = v34;
            v39 = v35;
            v40 = v38;
            v41 = v39;

            v42 = swift_allocObject();
            *(v42 + 16) = v41;
            v86 = sub_1005EBEA8;
            v87 = v42;
            aBlock = _NSConcreteStackBlock;
            v83 = 1107296256;
            v84 = sub_1005C3688;
            v85 = &unk_1010B6AD0;
            v43 = _Block_copy(&aBlock);
            v44 = v41;

            [v80 animateWithDuration:0 delay:v37 options:v43 animations:0.2 completion:0.0];

            _Block_release(v43);
            _Block_release(v37);
          }

          else
          {
            v59 = v34;
          }

          v60 = *&v34[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
          if (v60)
          {
            v81 = objc_opt_self();
            v61 = swift_allocObject();
            *(v61 + 16) = v60;
            v86 = sub_1005EBDF8;
            v87 = v61;
            aBlock = _NSConcreteStackBlock;
            v83 = 1107296256;
            v84 = sub_10002BC98;
            v85 = &unk_1010B69E0;
            v62 = _Block_copy(&aBlock);
            v63 = v60;
            v64 = v34;
            v65 = v63;

            v66 = swift_allocObject();
            *(v66 + 16) = 1;
            *(v66 + 24) = v65;
            v86 = sub_1005EBEA0;
            v87 = v66;
            aBlock = _NSConcreteStackBlock;
            v83 = 1107296256;
            v84 = sub_1005C3688;
            v85 = &unk_1010B6A30;
            v67 = _Block_copy(&aBlock);
            v68 = v65;

            [v81 animateWithDuration:0 delay:v62 options:v67 animations:0.2 completion:0.0];

            _Block_release(v67);
            _Block_release(v62);
          }

          v69 = v34;
          sub_10065D8E4();
        }

        goto LABEL_34;
      }

      goto LABEL_41;
    }
  }

  else if (v15)
  {
    if (*&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
    {

      v45 = sub_1002752B8();

      if (v45)
      {
        v46 = *&v4[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (v46)
        {
          v47 = *(v46 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v47)
          {
            v48 = *&v47[OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot];
            if (v48)
            {
              v49 = objc_opt_self();
              v50 = swift_allocObject();
              *(v50 + 16) = v47;
              *(v50 + 24) = v48;
              v86 = sub_1005EB3BC;
              v87 = v50;
              aBlock = _NSConcreteStackBlock;
              v83 = 1107296256;
              v84 = sub_10002BC98;
              v85 = &unk_1010B6940;
              v51 = _Block_copy(&aBlock);
              v52 = v47;
              v53 = v48;
              v54 = v52;
              v55 = v53;

              v56 = swift_allocObject();
              *(v56 + 16) = v55;
              v86 = sub_1005EB3C4;
              v87 = v56;
              aBlock = _NSConcreteStackBlock;
              v83 = 1107296256;
              v84 = sub_1005C3688;
              v85 = &unk_1010B6990;
              v57 = _Block_copy(&aBlock);
              v58 = v55;

              [v49 animateWithDuration:0 delay:v51 options:v57 animations:0.2 completion:0.1];

              _Block_release(v57);
              _Block_release(v51);
            }
          }

          goto LABEL_34;
        }

LABEL_42:
        __break(1u);
        return;
      }
    }
  }

LABEL_34:
  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_1000060E4(v70, qword_101219268);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock = v74;
    *v73 = 136446466;
    v75 = sub_1006698D4();
    v77 = sub_1000105AC(v75, v76, &aBlock);

    *(v73 + 4) = v77;
    *(v73 + 12) = 1026;
    *(v73 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v71, v72, "dismiss %{public}s completion isContentViewGone=%{BOOL,public}d", v73, 0x12u);
    sub_10000959C(v74);
  }
}

void sub_1005DDEFC(char a1, char a2)
{
  v3 = v2;
  v6 = sub_100025CE0();
  v7 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6);
  v8 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
  if (v7)
  {
    if (!v8)
    {
      return;
    }

    if (*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground))
    {
      v9 = v8;
LABEL_12:
      [v8 bounds];
      goto LABEL_15;
    }

    v14 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
    if (v14)
    {
      swift_getKeyPath();
      v30 = v14;
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
      v15 = v8;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = *(v14 + 41);

      if (v16)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v21 = v8;
    }

    [v8 bounds];
    v23 = v22 * 0.135;
    CGSize.scaled(_:)();
    v19 = v24;
    v17 = v23;
    v20 = v25;
    v18 = v23;
LABEL_15:
    v26 = [v8 resizableSnapshotViewFromRect:0 afterScreenUpdates:v17 withCapInsets:{v18, v19, v20, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    if (!v26)
    {
      v12 = v8;
      goto LABEL_21;
    }

    v27 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v27)
    {
      v12 = v26;
      v28 = *(v27 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v28)
      {
        v29 = v28;
        sub_10065DAE0(v12, a1 & 1, a2 & 1);
      }

      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (v8)
  {
    v10 = [*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer) snapshotViewAfterScreenUpdates:0];
    if (v10)
    {
      v11 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
      if (v11)
      {
        v12 = v10;
        v13 = *(v11 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (!v13)
        {
LABEL_21:

          return;
        }

        v8 = v13;
        sub_10065DAE0(v12, a1 & 1, a2 & 1);
LABEL_19:

        goto LABEL_21;
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }
  }
}

void sub_1005DE184(char a1, char a2)
{
  v3 = v2;
  LOBYTE(v34) = 11;
  v6 = sub_100025CE0();
  v7 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6);
  v8 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
  v9 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData);
  if (v7)
  {
    if (!v9)
    {
      return;
    }

    v10 = sub_1002752B8();

    if (v10)
    {
      if (a1 == 3)
      {
        return;
      }

      if (sub_1005DA588())
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (!*(v3 + v8))
    {
      return;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v35 == 255)
    {
      return;
    }

    sub_10004ADFC(v34, v35);
    if ((v35 & 1) != 0 || a1 == 3)
    {
      return;
    }

    v13 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v14)
      {
        LOBYTE(v34) = 11;
        v15 = v14;
        if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6) & 1) == 0 || (v16 = [objc_opt_self() currentDevice], v17 = objc_msgSend(v16, "userInterfaceIdiom"), v16, v17 != 1))
        {
          sub_10065E888();
          sub_10065E9C0();
          v18 = *&v15[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
          if (v18)
          {
            v19 = objc_opt_self();
            v20 = swift_allocObject();
            *(v20 + 16) = v18;
            v38 = sub_1005EBDF8;
            v39 = v20;
            v34 = _NSConcreteStackBlock;
            v35 = 1107296256;
            v36 = sub_10002BC98;
            v37 = &unk_1010B6508;
            v21 = _Block_copy(&v34);
            v22 = v18;

            v23 = swift_allocObject();
            *(v23 + 16) = 0;
            *(v23 + 24) = v22;
            v38 = sub_1005EBEA0;
            v39 = v23;
            v34 = _NSConcreteStackBlock;
            v35 = 1107296256;
            v24 = &unk_1010B6558;
LABEL_32:
            v36 = sub_1005C3688;
            v37 = v24;
            v32 = _Block_copy(&v34);
            v33 = v22;

            [v19 animateWithDuration:0 delay:v21 options:v32 animations:0.2 completion:{0.15, v34, v35}];

            _Block_release(v32);
            _Block_release(v21);
            return;
          }
        }

        goto LABEL_33;
      }

      return;
    }

    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (!v9)
  {
    return;
  }

  v11 = sub_1002752B8();

  if (v11)
  {
LABEL_9:
    v12 = sub_1005C405C();
    [v12 setAlpha:{1.0, v34}];

LABEL_10:
    sub_1005DDEFC(0, a2 & 1);
    return;
  }

  if (!*(v3 + v8))
  {
    return;
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  if (v35 == 255)
  {
    return;
  }

  sub_10004ADFC(v34, v35);
  if ((v35 & 1) != 0 || a1 == 3)
  {
    return;
  }

  v25 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v25)
  {
    goto LABEL_35;
  }

  v26 = *(v25 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v26)
  {
    LOBYTE(v34) = 11;
    v15 = v26;
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6) & 1) == 0 || (v27 = [objc_opt_self() currentDevice], v28 = objc_msgSend(v27, "userInterfaceIdiom"), v27, v28 != 1))
    {
      sub_10065E888();
      sub_10065E9C0();
      v29 = *&v15[OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot];
      if (v29)
      {
        v19 = objc_opt_self();
        v30 = swift_allocObject();
        *(v30 + 16) = v29;
        v38 = sub_1005EB1F8;
        v39 = v30;
        v34 = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = sub_10002BC98;
        v37 = &unk_1010B6468;
        v21 = _Block_copy(&v34);
        v22 = v29;

        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = v22;
        v38 = sub_1005EB200;
        v39 = v31;
        v34 = _NSConcreteStackBlock;
        v35 = 1107296256;
        v24 = &unk_1010B64B8;
        goto LABEL_32;
      }
    }

LABEL_33:
  }
}

void sub_1005DE778()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = &Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v2 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (!(v2 >> 62))
    {
      v3 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (!v3)
      {
        __break(1u);
        return;
      }

      v4 = Strong;
      v5 = *(v1 + 1);
      v6 = *(v1 + 2);
      v7 = *(v1 + 3);
      v8 = *(v1 + 4);
      swift_unknownObjectWeakAssign();
      sub_10012BAC0(v2, v5, v6, v7, v8);
      v9 = v3;
      v10 = v6;
      sub_1001B63BC();

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v11 activateConstraints:isa];

      sub_10012BB6C(v2, v5, v6, v7, v8);
      Strong = v4;
    }
  }
}

void sub_1005DE8FC(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_animationData];
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (v7 && !(*&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode] >> 62))
    {
      v8 = Strong;
      if (qword_10117FB00 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000060E4(v9, qword_101219268);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "presentQueue completion", v12, 2u);
      }

      v13 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v13)
      {
        swift_unknownObjectWeakAssign();
        v14 = v13;
        sub_1001B63BC();
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  if (qword_10117FB00 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000060E4(v15, qword_101219268);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "presentQueue completion, removing from superview", v18, 2u);
  }

  [a3 removeFromSuperview];
}

void sub_1005DEB50(char a1, uint64_t a2, id *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_101219268);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67240192;
      *(v10 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v8, v9, "dismissQueue completion isReversed=%{BOOL,public}d", v10, 8u);
    }

    v11 = &v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v12 = *&v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (!(v12 >> 62))
    {
      v14 = *(v11 + 1);
      v13 = *(v11 + 2);
      v16 = *(v11 + 3);
      v15 = *(v11 + 4);
      v17 = a3[1];
      sub_100009F78(0, &qword_101181620);
      v37 = v16;
      v38 = v13;
      v18 = v16;
      v19 = v15;
      sub_10012BAC0(v12, v14, v13, v18, v15);
      v20 = v17;
      v21 = v14;
      LOBYTE(v15) = static NSObject.== infix(_:_:)();

      if (v15)
      {
        sub_10012BB6C(v12, v14, v38, v37, v19);
LABEL_22:

        return;
      }

      [v20 removeFromSuperview];
      [*a3 removeFromParentViewController];
      v35 = *&v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v35)
      {
        v36 = v35;
        sub_1001B6524();
        sub_10012BB6C(v12, v14, v38, v37, v19);

        v6 = v36;
        goto LABEL_22;
      }

LABEL_27:
      __break(1u);
      return;
    }

    v22 = sub_1005CD758();
    [v22 setHidden:1];

    [a3[1] removeFromSuperview];
    v23 = *a3;
    [v23 removeFromParentViewController];
    v24 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v25 = *&v6[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v25)
    {
      v26 = v25;
      sub_1001B6524();

      v27 = sub_100025CE0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v27) & 1) == 0 || (sub_1005C7BDC() & 1) == 0)
      {
        sub_1005CB484(0, 0);
      }

      sub_1005D8380();
      v28 = *&v6[v24];
      if (v28)
      {
        v29 = *(v28 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v29)
        {
          v30 = v29;
          sub_10065D1CC();
        }

        v31 = sub_1005C405C();
        [v31 setHidden:0];

        v32 = *&v6[v24];
        if (v32)
        {
          v33 = *(v32 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v33)
          {
            v34 = [v33 layer];
            [v34 setZPosition:0.0];
          }

          [v23 endAppearanceTransition];
          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

void sub_1005DEF14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (v1 >> 62 == 1)
    {
      v2 = *&Strong[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
      v3 = Strong;
      v4 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
      v5 = v2;

      [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
      v6 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v6 activateConstraints:isa];

      Strong = isa;
    }
  }
}

void sub_1005DF028(char a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_10117FB00 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101219268);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v10, v11, "dismissLyrics completion isReversed=%{BOOL}d", v12, 8u);
    }

    v13 = &v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v14 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    if (v14 >> 62 == 1)
    {
      v34 = a3;
      v16 = *(v13 + 3);
      v15 = *(v13 + 4);
      v35 = v14 & 0x3FFFFFFFFFFFFFFFLL;
      v18 = *(v13 + 1);
      v17 = *(v13 + 2);
      sub_100009F78(0, &qword_101181620);
      sub_10012BAC0(v14, v18, v17, v16, v15);
      v19 = a4;
      v20 = v18;
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {

        v8 = v35;
        goto LABEL_21;
      }

      [v19 removeFromSuperview];
      [v34 removeFromParentViewController];
      v32 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v32)
      {
        v33 = v32;
        sub_1001B6524();

        v8 = v35;
        goto LABEL_21;
      }

LABEL_27:
      __break(1u);
      return;
    }

    v22 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v23 = *&v8[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v23)
    {
      v24 = v23;
      sub_1001B6524();

      [a4 removeFromSuperview];
      [a3 removeFromParentViewController];
      v25 = sub_100025CE0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v25) & 1) == 0 || (sub_1005C7BDC() & 1) == 0)
      {
        sub_1005CB484(0, 0);
      }

      sub_1005D8380();
      v26 = *&v8[v22];
      if (v26)
      {
        v27 = *(v26 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v27)
        {
          v28 = v27;
          sub_10065D1CC();
        }

        v29 = sub_1005C405C();
        [v29 setHidden:0];

        v30 = *&v8[v22];
        if (v30)
        {
          v31 = *(v30 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (!v31)
          {
LABEL_22:

            return;
          }

          v20 = [v31 layer];
          [v20 setZPosition:0.0];
LABEL_21:

          goto LABEL_22;
        }

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }
}

uint64_t sub_1005DF398()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v1[0] = 0xD000000000000017;
    v1[1] = 0x8000000100E51C50;
    sub_100009838();
    NSUserDefaults.subscript.getter(v1, &v2);
    if (v3)
    {
      if (swift_dynamicCast())
      {
        return LOBYTE(v1[0]);
      }
    }

    else
    {
      sub_1000095E8(&v2, &unk_101183F30);
    }
  }

  return 0;
}

void sub_1005DF450()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1005C5388(1);
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer];
    *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer] = 0;
  }
}

void sub_1005DF4E0(uint64_t a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5;
  if (*(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) && *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
  {
    v16 = a3;
    v17 = a4;

    sub_1002AC9FC(a1, a2);

    goto LABEL_9;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = a3;
  v15 = a4;

  sub_1002AC9FC(a1, a2);

  if (v13)
  {

LABEL_9:
    if (a2)
    {
      v18 = 1.0;
    }

    else
    {
      v18 = 1.5;
    }

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1005EB0B0;
    *(v20 + 24) = v12;
    v24[4] = sub_100029B6C;
    v24[5] = v20;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 1107296256;
    v24[2] = sub_10027D328;
    v24[3] = &unk_1010B61C0;
    v21 = _Block_copy(v24);

    v22 = [v19 scheduledTimerWithTimeInterval:0 repeats:v21 block:v18];

    _Block_release(v21);
    v23 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
    *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer) = v22;

    return;
  }

  sub_1005DF7D4(v11, a1, a2, v14, v15, a5);
}

void sub_1005DF7D4(uint64_t a1, uint64_t a2, char a3, void *a4, void *a5, uint64_t a6)
{
  v11 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v11 - 8);
  v13 = &v49 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.42 animations:{0.0, 0.58, 1.0}];
    if (a3)
    {
      v17 = swift_allocObject();
      v17[2] = a4;
      v17[3] = a5;
      v17[4] = a6;
      v54 = sub_1005EB0C4;
      v55 = v17;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10002BC98;
      v53 = &unk_1010B6210;
      v18 = _Block_copy(&aBlock);
      v19 = a4;
      v20 = a5;

      [v16 addAnimations:v18];
      _Block_release(v18);
      if (v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] && v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType] != 1)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          v35 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
          v36 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
          if (v36)
          {
            if (*(v36 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode) != 1)
            {
              sub_1005DE184(1, 0);
              v37 = *&v15[v35];
              if (v37)
              {
                v38 = v37;
                sub_1001B6A0C(1u, 1);

                sub_1005C6A74(1);
                v39 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
                if (v39)
                {
                  [v39 removeFromSuperview];
                }

                sub_1005D90E0(0);
                v40 = *&v15[v35];
                if (v40)
                {
                  v41 = *(v40 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
                  if (v41)
                  {
                    v42 = v41;
                    sub_10065CE7C(0, 0);
                  }

                  goto LABEL_28;
                }

LABEL_37:
                __break(1u);
                return;
              }

LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

LABEL_28:
            [v16 startAnimation];
            goto LABEL_29;
          }

          goto LABEL_33;
        }
      }

      LOBYTE(aBlock) = 11;
      v43 = sub_100025CE0();
      if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v43) & 1) == 0)
      {
        sub_1005DE184(3, 0);
        v46 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
        if (v46)
        {
          v47 = v46;
          sub_1001B6A0C(3u, 1);

          sub_1005C6A74(1);
          v48 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer];
          if (v48)
          {
            [v48 removeFromSuperview];
          }

          sub_1005D90E0(0);
          goto LABEL_28;
        }

        goto LABEL_35;
      }

      v44 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
      if (v44)
      {
        v45 = v44;
        sub_1001B6A0C(3u, 1);

        goto LABEL_28;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v21 = *&v15[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v21)
    {
      if (!*(v21 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode))
      {
LABEL_29:

        return;
      }

      v49 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
      swift_errorRetain();
      sub_1005DAD10(0);
      v22 = swift_allocObject();
      v22[2] = a4;
      v22[3] = a5;
      v22[4] = a6;
      v54 = sub_1005EB120;
      v55 = v22;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10002BC98;
      v53 = &unk_1010B6260;
      v23 = _Block_copy(&aBlock);
      v24 = a4;
      v25 = a5;

      [v16 addAnimations:v23];
      _Block_release(v23);
      v26 = swift_allocObject();
      *(v26 + 16) = v15;
      v54 = sub_1005EB134;
      v55 = v26;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_100338AB8;
      v53 = &unk_1010B62B0;
      v27 = _Block_copy(&aBlock);
      v28 = v15;

      [v16 addCompletion:v27];
      _Block_release(v27);
      v29 = *&v15[v49];
      if (v29)
      {
        v30 = v29;
        sub_1001B6A0C(0, 1);

        if (a2)
        {
          v31 = type metadata accessor for TaskPriority();
          (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
          type metadata accessor for MainActor();
          v32 = static MainActor.shared.getter();
          v33 = swift_allocObject();
          *(v33 + 16) = v32;
          *(v33 + 24) = &protocol witness table for MainActor;
          sub_1001F524C(0, 0, v13, &unk_100ED6728, v33);

          sub_1002AC8A4(a2, 0);
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }
}

void sub_1005DFE50(uint64_t a1, uint64_t a2)
{
  sub_1005CB484(0, 0);
  sub_1005D8380();
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v4 = *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v4)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v5 = *(v4 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v5)
  {
    v6 = v5;
    sub_10065D1CC();
  }

  v7 = sub_1005C405C();
  [v7 setHidden:0];

  v8 = *(a2 + v3);
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = *(v8 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v9)
  {
    v10 = [v9 layer];
    [v10 setZPosition:0.0];
  }
}

uint64_t sub_1005DFF54(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1005DFFEC, v3, v2);
}

uint64_t sub_1005DFFEC()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.VocalsCommand;
  *(v0 + 48) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 20) = 256;
  *(v0 + 16) = 0;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2D48;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

void sub_1005E010C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
  v3 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(a1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + v2) = 0;

  v5 = a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v6 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v6 >> 62 == 1)
  {
    v7 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
    if (v8)
    {
      v9 = *(v5 + 8);
      v10 = *((swift_isaMask & *v8) + 0x190);
      sub_10012BAC0(v6, v9, *(v5 + 16), *(v5 + 24), *(v5 + 32));
      v11 = v8;
      LOBYTE(v10) = v10();

      if (v10)
      {
        sub_1005C5388(0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1005E0230@<X0>(void *a1@<X8>)
{
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (!(v6 >> 62))
  {
    v13 = type metadata accessor for URL();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x7478654E7055, 0xE600000000000000, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v5, 0, 0, 0, a1, 1, 0, 0, 2);
LABEL_28:
    v36 = type metadata accessor for MetricsEvent.Page(0);
    return (*(*(v36 - 8) + 56))(a1, 0, 1, v36);
  }

  if (v6 >> 62 != 1)
  {
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x6979616C50776F4ELL, 0xEA0000000000676ELL, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v5, 0, 0, 0, a1, 1, 0, 0, 2);
    goto LABEL_28;
  }

  v7 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
  v8 = ((v6 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  if (!v8[8])
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(0x6F4E73636972794CLL, 0xEA0000000000656ELL, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v5, 0, 0, 0, a1, 1, 0, 0, 2);
    goto LABEL_28;
  }

  if (v8[8] == 1)
  {
    v9 = *v8;
    if (v9 == 2)
    {
      v10 = type metadata accessor for URL();
      (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
      v37 = 2;
      v11 = 0x745373636972794CLL;
      v12 = 0xEC00000063697461;
      goto LABEL_25;
    }

    v19 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
    v20 = OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying;
    v21 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_nowPlaying);
    if (v21)
    {
      v22 = v7;
      v23 = v19;

      v24 = [v21 tracklist];
      v25 = [v24 vocalsControlCommand];

      if (!v25 || (v26 = [v25 isDisabled], swift_unknownObjectRelease(), (v26 & 1) != 0) || (v27 = *(v1 + v20)) == 0)
      {
        LOBYTE(v29) = 0;
        goto LABEL_23;
      }

      v28 = [v27 tracklist];
      v29 = [v28 playingItem];

      if (!v29)
      {
LABEL_23:

        if ((v9 & 1) == 0)
        {
          v35 = type metadata accessor for URL();
          (*(*(v35 - 8) + 56))(v5, 1, 1, v35);
          v12 = 0x8000000100E51C70;
          v37 = v29;
          v34 = a1;
          v11 = 0xD000000000000010;
          goto LABEL_27;
        }

        v33 = type metadata accessor for URL();
        (*(*(v33 - 8) + 56))(v5, 1, 1, v33);
        v37 = v29;
        v11 = 0x795373636972794CLL;
        v12 = 0xEE00656C62616C6CLL;
LABEL_25:
        v34 = a1;
LABEL_27:
        MetricsEvent.Page.init(pageIdentifier:pageType:pageURL:pageDetails:searchTerm:pageDisplayType:extRefUrl:attenuationAvailable:)(v11, v12, 0x6979616C50776F4ELL, 0xEA0000000000676ELL, v5, 0, 0, 0, v34, 1, 0, 0, v37);
        goto LABEL_28;
      }

      v30 = MPCPlayerResponseItem.hasStoreLyrics.getter();

      if (v30)
      {
        static ApplicationCapabilities.shared.getter(&v38);
        sub_100014984(&v38);
        LOBYTE(v29) = v39 == 1;
        goto LABEL_23;
      }
    }

    else
    {
      v31 = v7;
      v32 = v19;
    }

    LOBYTE(v29) = 0;
    goto LABEL_23;
  }

  v16 = type metadata accessor for MetricsEvent.Page(0);
  v17 = *(*(v16 - 8) + 56);

  return v17(a1, 1, 1, v16);
}

uint64_t sub_1005E0820(uint64_t a1, void *a2)
{
  v3 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v8 = a2;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  v10[5] = v7;

  sub_1001F4CB8(0, 0, v5, &unk_100ED6568, v10);

  return sub_1005E15A8([v8 lineIndex], 0);
}

uint64_t sub_1005E09AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[30] = a4;
  v5[31] = a5;
  v6 = type metadata accessor for Logger();
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[35] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[36] = v8;
  v5[37] = v7;

  return _swift_task_switch(sub_1005E0AA0, v8, v7);
}

uint64_t sub_1005E0AA0()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 240);
  *(v0 + 304) = qword_101218AD8;
  [v1 startTime];
  *(v0 + 40) = &type metadata for Player.SeekCommand;
  *(v0 + 48) = &protocol witness table for Player.SeekCommand;
  *(v0 + 16) = v2;
  *(v0 + 24) = 1;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_1005E0BD4;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1005E0BD4(void *a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_1005E1148;
  }

  else
  {

    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_1005E0D18;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005E0D18()
{
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v1 = qword_101218AC8;
  *(v0 + 120) = &type metadata for Player.PlaybackCommand;
  *(v0 + 128) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 96) = 0;
  LOBYTE(v1) = (*(*v1 + 760))(v0 + 96);
  sub_10000959C(v0 + 96);
  if (v1)
  {
    *(v0 + 160) = &type metadata for Player.PlaybackCommand;
    *(v0 + 168) = &protocol witness table for Player.PlaybackCommand;
    *(v0 + 136) = 0;
    *(v0 + 200) = &_s18NowPlayingUISourceON;
    *(v0 + 208) = &off_10109D788;
    *(v0 + 176) = 0;
    v2 = swift_task_alloc();
    *(v0 + 328) = v2;
    *v2 = v0;
    v2[1] = sub_1005E0F34;

    return PlaybackController.perform(_:route:intent:issuer:)(v0 + 136, 0, 0, v0 + 176);
  }

  else
  {

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      (*((swift_isaMask & *Strong) + 0x500))();
    }

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1005E0F34(void *a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_1005E1378;
  }

  else
  {

    sub_1000095E8(v4 + 176, &unk_101183910);
    sub_10000959C(v4 + 136);
    v5 = *(v4 + 288);
    v6 = *(v4 + 296);
    v7 = sub_1005E1078;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1005E1078()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    (*((swift_isaMask & *Strong) + 0x500))();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005E1148()
{

  sub_1000095E8((v0 + 7), &unk_101183910);
  sub_10000959C((v0 + 2));
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Line selection on tap encountered an error executing player commands: %{public}@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70);
  }

  else
  {
  }

  (*(v0[33] + 8))(v0[34], v0[32]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*((swift_isaMask & *Strong) + 0x500))();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005E1378()
{

  sub_1000095E8((v0 + 22), &unk_101183910);
  sub_10000959C((v0 + 17));
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  v4 = Logger.lyrics.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "Line selection on tap encountered an error executing player commands: %{public}@", v7, 0xCu);
    sub_1000095E8(v8, &unk_101183D70);
  }

  else
  {
  }

  (*(v0[33] + 8))(v0[34], v0[32]);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    (*((swift_isaMask & *Strong) + 0x500))();
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1005E15A8(uint64_t a1, int a2)
{
  v5 = sub_10010FC20(&unk_1011838F0);
  __chkstk_darwin(v5 - 8);
  v68 = &v64[-v6];
  v7 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v7 - 8);
  v9 = &v64[-v8];
  v10 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v64[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10010FC20(&unk_101189DA0);
  __chkstk_darwin(v13 - 8);
  v15 = &v64[-v14];
  v16 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_playingItem);
  v67 = v12;
  if (v16)
  {
    v17 = [v16 metadataObject];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 innermostModelObject];

      v20 = v19;
      GenericMusicItem.init(_:)();
      v21 = type metadata accessor for GenericMusicItem();
      v22 = *(v21 - 8);
      if ((*(v22 + 48))(v15, 1, v21) == 1)
      {

        sub_1000095E8(v15, &unk_101189DA0);
        v69 = 0u;
        v70 = 0u;
        v71 = 0;
      }

      else
      {
        LODWORD(v66) = a2;
        GenericMusicItem.innerMusicItem.getter(&v69);
        (*(v22 + 8))(v15, v21);
        if (*(&v70 + 1))
        {
          sub_100059A8C(&v69, v72);
          sub_10010FC20(&qword_10118BE78);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100EBC6B0;
          v24 = v73;
          sub_10000954C(v72, v73);
          *(inited + 32) = MusicItem.metricsContentType.getter(v24);
          *(inited + 40) = v25;
          *(inited + 48) = 0;
          v26 = MetricsEvent.Click.ActionDetails.init(_:)(inited);
          v28 = v27;
          v30 = v29;
          v32 = v31;

          sub_10000959C(v72);
          LOBYTE(a2) = v66;
          goto LABEL_10;
        }

        LOBYTE(a2) = v66;
      }

      sub_1000095E8(&v69, &qword_10118B990);
    }
  }

  v26 = 0;
  v28 = 0;
  v30 = 0;
  v32 = 65280;
LABEL_10:
  v33 = v30;
  v34 = v28;
  v35 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v66 = v35;
  if (a2)
  {
    v36 = 0x6972794C776F6873;
    v37 = 0xEA00000000007478;
    v38 = 0x654E7055776F6873;
    v39 = 0x654E705565646968;
    v40 = 0xEB0000000079726FLL;
    if (a1 == 3)
    {
      v40 = 0xEA00000000007478;
    }

    else
    {
      v39 = 0x74736948776F6873;
    }

    if (a1 != 2)
    {
      v38 = v39;
      v37 = v40;
    }

    if (a1)
    {
      v36 = 0x6972794C65646968;
    }

    if (a1 <= 1)
    {
      v41 = v36;
    }

    else
    {
      v41 = v38;
    }

    if (a1 <= 1)
    {
      v42 = 0xEA00000000007363;
    }

    else
    {
      v42 = v37;
    }

    v43 = v26;
    v44 = v35;
    v65 = 5;
    v45 = 28;
  }

  else
  {
    v43 = v26;
    v72[0] = a1;
    v46 = v35;
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v47;
    v65 = 14;
    v45 = 43;
  }

  v48 = type metadata accessor for URL();
  (*(*(v48 - 8) + 56))(v9, 1, 1, v48);
  v49 = v34;
  sub_1005EA588(v43, v34, v33, v32);
  v50 = v68;
  sub_1005E0230(v68);
  LODWORD(v68) = v32;
  v63 = v32;
  *(&v62 + 1) = v49;
  *&v62 = v43;
  v51 = v67;
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:page:snapshotImpressions:)(v41, v42, v65, v45, v9, 0, 0, 0, v67, v62, v33, v63, v50, 0);
  v52 = sub_10053771C();
  v54 = v53;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v55 = qword_101218AD0;
  v56 = GroupActivitiesManager.hasJoined.getter();
  v57 = GroupActivitiesManager.participantsCount.getter();
  v58 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v59 = *(v55 + v58);
  v60 = v66;
  (*((swift_isaMask & *v66) + 0xB8))(v51, v52, v54, v56 & 1, v57, v59);

  sub_1005602B0(v43, v49, v33, v68);
  return sub_1005EA980(v51, type metadata accessor for MetricsEvent.Click);
}

void sub_1005E1BD4()
{
  v0 = sub_1005CD758();
  [v0 setHidden:0];
}

void sub_1005E1C1C(char *a1, void *a2)
{
  v4 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  v3 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8];
  v5 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16];
  v6 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24];
  v8 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32];
  v7 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40];
  v9 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48];
  if (!(v4 >> 62))
  {
    v57[0] = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
    v57[1] = v3;
    v57[2] = v5;
    v57[3] = v6;
    v57[4] = v8;
    v57[5] = v7;
    v57[6] = v9;
    v10 = v4;
    v11 = v3;
    v12 = v5;
    v13 = v6;
    v14 = v8;

    sub_1005D69B4(v57);

    sub_10012BB6C(v4, v3, v5, v6, v8);
    return;
  }

  if (v4 >> 62 != 1)
  {
    return;
  }

  v54 = v2;
  v56 = (v4 & 0x3FFFFFFFFFFFFFFFLL);
  v15 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController);
  if (!v15)
  {
    __break(1u);
    goto LABEL_21;
  }

  v16 = *((swift_isaMask & *v15) + 0x190);
  sub_10012BAC0(v4, v3, v5, v6, v8);
  sub_10012BAC0(v4, v3, v5, v6, v8);
  v17 = v15;
  v18 = v16();

  if ((v18 & 1) == 0)
  {
    v39 = *&v56[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
    if (v39)
    {
      v40 = v39;
      v41 = [v54 view];
      if (v41)
      {
        v42 = v41;
        [v41 frame];
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v50 = v49;

        v60.origin.x = v44;
        v60.origin.y = v46;
        v60.size.width = v48;
        v60.size.height = v50;
        Height = CGRectGetHeight(v60);
        [a2 layoutFrame];
        v52.n128_f64[0] = Height - CGRectGetHeight(v61);
        (*((swift_isaMask & *v40) + 0x1B0))(v52);

        goto LABEL_17;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v19 = *&a1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (v19)
  {
    [v19 frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [a1 view];
    if (v28)
    {
      v29 = v28;
      [v28 convertRect:v3 toCoordinateSpace:{v21, v23, v25, v27}];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;

      v38 = &v56[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
      v62 = *&v56[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
      *v38 = v31;
      v38[1] = v33;
      v38[2] = v35;
      v38[3] = v37;
      v59.origin.x = v31;
      v59.origin.y = v33;
      v59.size.width = v35;
      v59.size.height = v37;
      if (!CGRectEqualToRect(v59, v62) && [v56 isViewLoaded])
      {
        sub_10029ECCC();
      }

      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_17:
}

void sub_1005E200C(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v6 >> 62 == 1)
  {
    v11 = *(v5 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
    v25 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
    v13 = v11;

    v14 = [a1 view];
    if (v14)
    {
      v15 = v14;
      [v14 convertRect:v13 toCoordinateSpace:{a2, a3, a4, a5}];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = &v25[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
      v28 = *&v25[OBJC_IVAR___MusicNowPlayingLyricsViewController_artworkFrame];
      *v24 = v17;
      v24[1] = v19;
      v24[2] = v21;
      v24[3] = v23;
      v27.origin.x = v17;
      v27.origin.y = v19;
      v27.size.width = v21;
      v27.size.height = v23;
      if (!CGRectEqualToRect(v27, v28) && [v25 isViewLoaded])
      {
        sub_10029ECCC();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005E2184(void *a1, void *a2)
{
  if (a1 && a2)
  {
    v12 = a1;
    v3 = [a2 tracklist];
    v4 = [v3 insertCommand];

    if (v4 && (v5 = [v4 insertAtEndOfUpNextWithPlaybackIntent:v12], swift_unknownObjectRelease(), v5))
    {
      sub_10010FC20(&qword_101183990);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100EBC6C0;
      *(v6 + 32) = v5;
      v7 = objc_allocWithZone(MPCPlayerChangeRequest);
      sub_100009F78(0, &qword_10118AC38);
      v8 = v5;
      isa = Array._bridgeToObjectiveC()().super.isa;

      v10 = [v7 initWithCommandRequests:isa];

      [v10 performWithCompletion:0];
      v11 = v10;
    }

    else
    {
      v11 = v12;
    }
  }
}

uint64_t sub_1005E2318(uint64_t result, char a2)
{
  v3 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v4 = *&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v4)
  {
    goto LABEL_34;
  }

  v5 = *(v4 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (!v5)
  {
    return 0;
  }

  v6 = v2;
  v8 = result;
  v9 = *(result + 16);
  v10 = v8;
  v11 = *(v8 + 24);
  if (a2)
  {
    if (v9 != 0x6B726F77747241 || v11 != 0xE700000000000000)
    {
      goto LABEL_13;
    }
  }

  else if (v9 != 0x657263536C6C7546 || v11 != 0xEA00000000006E65)
  {
LABEL_13:
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      goto LABEL_14;
    }

    return 0;
  }

LABEL_14:
  type metadata accessor for NowPlayingContentViewDonationItem();
  v14 = swift_allocObject();
  *(v14 + 56) = 0u;
  *(v14 + 72) = 0u;
  *(v14 + 88) = 0u;
  *(v14 + 16) = 0x6B726F77747241;
  *(v14 + 24) = 0xE700000000000000;
  *(v14 + 32) = v5;
  *(v14 + 40) = 0;
  *(v14 + 104) = a2 & 1;
  *(v14 + 48) = a2 & 1;
  v15 = sub_100025CE0();
  v16 = v5;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v15))
  {
    v17 = v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];

    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (*&v2[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v17 = sub_1002752B8();

    if (a2)
    {
LABEL_16:
      v18 = *&v6[v3];
      if (v18)
      {
LABEL_17:

        v19 = *(v18 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
        v20 = v19 == 3 || v19 == 0;
        if (v20 && (v17 & 1) != 0)
        {
          v21 = swift_allocObject();
          v21[2] = v16;
          v21[3] = v10;
          v21[4] = v6;
          v22 = *(v14 + 56);
          *(v14 + 56) = sub_1005EA7F0;
          *(v14 + 64) = v21;

          v23 = v6;
          sub_100020438(v22);
LABEL_29:
          v24 = swift_allocObject();
          *(v24 + 16) = v6;
          v25 = *(v14 + 72);
          *(v14 + 72) = sub_1005EA7E0;
          *(v14 + 80) = v24;
          v26 = v6;
          sub_100020438(v25);
          v27 = swift_allocObject();
          *(v27 + 16) = v26;
          v28 = *(v14 + 88);
          *(v14 + 88) = sub_1005EA7E8;
          *(v14 + 96) = v27;
          v29 = v26;
          sub_100020438(v28);
          return v14;
        }

LABEL_28:

        goto LABEL_29;
      }

      goto LABEL_33;
    }

LABEL_27:

    goto LABEL_28;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = 0;
  v18 = *&v6[v3];
  if (v18)
  {
    goto LABEL_17;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_1005E25F8(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);
  v12 = [v11 layer];
  [v12 setZPosition:0.0];

  v13 = *(a4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (v13)
  {
    v14 = [v13 layer];
    [v14 setZPosition:0.0];
  }

  [v11 setTranslatesAutoresizingMaskIntoConstraints:1];
  if ((a2 & 1) == 0)
  {
    v15 = *(a5 + 40);
    if (v15)
    {
      v16 = *(a5 + 48);
      v17 = swift_allocObject();
      v17[2] = v15;
      v17[3] = v16;
      v17[4] = a5;
      v17[5] = a3;
      *(a5 + 40) = sub_1005EA7FC;
      *(a5 + 48) = v17;
      sub_100112878(v15);

      v18 = a3;
      sub_100020438(v15);
    }
  }

  v19 = *(a6 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v19)
  {
    __break(1u);
    goto LABEL_12;
  }

  v20 = [v19 view];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v21 = v20;
  v22 = sub_1005C405C();
  [v21 insertSubview:v11 aboveSubview:v22];
}

id sub_1005E27A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = [*(a2 + 32) traitCollection];
  v6 = [v5 userInterfaceStyle];

  result = [v4 setOverrideUserInterfaceStyle:v6];
  v8 = *(a3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v8)
  {
    *(v8 + OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates) = 1;
    v9 = *(v8 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005E285C(char a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (v3)
  {
    v3[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates] = 0;
    if (a1)
    {
      v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
      v5 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
      if (v5)
      {
        v5[OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated] = 0;
      }

      *&v3[v4] = 0;
      v7 = v5;
      v6 = v3;
      sub_10019B83C(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1005E2900()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  result = *&v0[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = v0;
  result = [result view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v4 = result;
  type metadata accessor for PresentationDonationTarget();
  v5 = swift_allocObject();
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 16) = 0x6B726F77747241;
  *(v5 + 24) = 0xE700000000000000;
  *(v5 + 32) = v4;
  v6 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6))
  {
    v7 = v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground];
  }

  else if (*&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
  {

    v7 = sub_1002752B8();
  }

  else
  {
    v7 = 0;
  }

  result = swift_allocObject();
  *(result + 16) = v7 & 1;
  *(result + 3) = v3;
  *(v5 + 40) = sub_1005EA854;
  *(v5 + 48) = result;
  v8 = *&v3[v1];
  if (v8)
  {
    v9 = *(v8 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
    if (v9)
    {
      v10 = v9 == 3;
    }

    else
    {
      v10 = 1;
    }

    if (v10 && *&v3[OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData])
    {
      v11 = v3;

      v12 = sub_1002752B8();

      if ((v12 & 1) == 0)
      {
LABEL_18:
        v15 = swift_allocObject();
        *(v15 + 16) = v3;
        *(v5 + 88) = sub_1005EA860;
        *(v5 + 96) = v15;
        v16 = swift_allocObject();
        *(v16 + 16) = v3;
        *(v5 + 56) = sub_1005EA868;
        *(v5 + 64) = v16;
        sub_10010FC20(&qword_101183990);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_100EBC6C0;
        *(v17 + 32) = v5;
        v18 = v3;
        return v17;
      }

      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v5 + 72) = sub_1005EA870;
      *(v5 + 80) = v13;
    }

    v14 = v3;
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1005E2B74(uint64_t a1, char a2, char *a3)
{
  type metadata accessor for NowPlayingContentView(0);
  v5 = swift_dynamicCastClass();
  v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  if (!v5 || (a2 & 1) == 0)
  {
    goto LABEL_13;
  }

  v7 = *&a3[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = *(v7 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
  if (v8 != 3 && v8 != 0)
  {
LABEL_13:
    v13 = *&a3[v6];
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide);
      if (v14)
      {
        [v14 layoutFrame];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  v10 = [a3 view];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 window];

    if (v12)
    {
      [v12 bounds];

      return;
    }

    v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
}

void sub_1005E2CB0(uint64_t a1, char *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v3 bounds];
  [v5 convertRect:v3 fromCoordinateSpace:?];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v3 setFrame:{v7, v9, v11, v13}];
  v14 = *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = [v14 view];
  if (!v15)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v16 = v15;
  v17 = sub_1005C405C();
  [v16 insertSubview:v3 aboveSubview:v17];
}

void sub_1005E2DEC(uint64_t a1, char *a2)
{
  v3 = *(a1 + 32);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a2, "overrideUserInterfaceStyle")}];
  type metadata accessor for NowPlayingContentView(0);
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  *(v4 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) = 1;
  v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v7 = *&a2[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  *&v7[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView] = 0;
  v9 = v3;
  v10 = v7;
  sub_10019B83C(v8);

  v11 = *&a2[v6];
  if (!v11)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates] = 0;
  v12 = v11;
  sub_1001B5B98(v5);
}

void sub_1005E2F34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for NowPlayingContentView(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v6 = *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v6)
    {
      v7 = v4;
      v8 = *&v6[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
      *&v6[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView] = v4;
      v9 = v3;
      v10 = v6;
      sub_10019B83C(v8);

      v11 = *(a2 + v5);
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
        if (v12)
        {
          *(v12 + OBJC_IVAR____TtC5Music21NowPlayingContentView_isBeingDonated) = 0;
        }

        v13 = sub_1005E315C(a2, v7);
        v14 = OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData;
        if (*(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_currentMotionData))
        {

          v15 = sub_1002752B8();

          if (v15)
          {
            sub_1005C8D4C(v13 & 1, v13 & 1, 0);
          }

          else if (*(a2 + v14))
          {
            swift_getKeyPath();
            swift_getKeyPath();

            static Published.subscript.getter();

            if (v25 != 255)
            {
              sub_10004ADFC(v24, v25);
              if ((v25 & 1) == 0)
              {
                v16 = *(a2 + v5);
                if (!v16)
                {
LABEL_27:
                  __break(1u);
                  return;
                }

                v17 = *(v16 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
                if (v17)
                {
                  v18 = v17;
                  sub_10065D24C();
                }
              }
            }
          }
        }

        v19 = *(a2 + v5);
        if (v19)
        {
          v20 = *(v19 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
          if (v20)
          {
            v21 = v20;
            sub_10065D1CC();
          }

          if (v13)
          {
            goto LABEL_21;
          }

          v22 = *(a2 + v5);
          if (v22)
          {
            v23 = v22;
            sub_1001C9480();

LABEL_21:
            *(a2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_didReceiveDonatedArtwork) = 1;
            return;
          }

          goto LABEL_26;
        }

LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_25;
  }
}

uint64_t sub_1005E315C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4) & 1) == 0)
  {
    v9 = *(a2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
    if (!v9)
    {
      return 1;
    }

    v8 = [v9 superview];
    if (!v8)
    {
      return 1;
    }

    goto LABEL_9;
  }

  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 1 && (*(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_shouldShowMotionBackground) & 1) == 0)
  {
    v11 = *(a2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
    if (!v11)
    {
      return 1;
    }

    v8 = [v11 superview];
    if (!v8)
    {
      return 1;
    }

LABEL_9:

    return 0;
  }

  v7 = *(a2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (v7)
  {
    v8 = [v7 superview];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  return 1;
}

void sub_1005E329C(uint64_t a1, double a2, double a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView);
  v5 = [v4 layer];
  [v5 setCornerCurve:kCACornerCurveCircular];

  v6 = [v4 layer];
  [v6 setCornerRadius:a3];
}

void sub_1005E3358(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v15 = sub_1005EA674;
  v16 = v5;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10002BC98;
  v14 = &unk_1010B58D8;
  v6 = _Block_copy(&v11);
  v7 = a1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v15 = sub_1005EA6C0;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1005C3688;
  v14 = &unk_1010B5928;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v4 animateKeyframesWithDuration:0 delay:v6 options:v9 animations:a2 completion:0.0];
  _Block_release(v9);
  _Block_release(v6);
}

void sub_1005E34EC(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v13[4] = a4;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10002BC98;
  v13[3] = a5;
  v11 = _Block_copy(v13);
  v12 = a1;

  [v9 addKeyframeWithRelativeStartTime:v11 relativeDuration:a2 animations:0.3];
  _Block_release(v11);
}

id sub_1005E35E8(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot;
  result = *(a2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
  if (result)
  {
    v5 = [result layer];
    [v5 setZPosition:0.0];

    result = *(a2 + v2);
    if (result)
    {

      return [result removeFromSuperview];
    }
  }

  return result;
}

void sub_1005E3680(void *a1, double a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v8[4] = sub_1005EA76C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10002BC98;
  v8[3] = &unk_1010B5AE0;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 animateKeyframesWithDuration:0 delay:v6 options:0 animations:a2 completion:0.0];
  _Block_release(v6);
}

void sub_1005E3784(char a1, void *a2, void *a3, double a4)
{
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  v13[4] = sub_1005EA63C;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10002BC98;
  v13[3] = &unk_1010B5748;
  v10 = _Block_copy(v13);
  v11 = a3;
  v12 = a2;

  [v8 animateKeyframesWithDuration:2 delay:v10 options:0 animations:a4 completion:0.0];
  _Block_release(v10);
}

void sub_1005E38A0(char a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.5;
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a3;
  v12[4] = sub_1005EA648;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_10002BC98;
  v12[3] = &unk_1010B5798;
  v9 = _Block_copy(v12);
  v10 = a3;
  v11 = a2;

  [v7 addKeyframeWithRelativeStartTime:v9 relativeDuration:v6 animations:0.5];
  _Block_release(v9);
}

void sub_1005E39C4(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v4 = *(v3 + OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView);
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
  if (a3)
  {
    v7 = [a3 view];
    if (v7)
    {
      v8 = v7;
      [v7 setAlpha:v6];

      return;
    }

LABEL_14:
    __break(1u);
  }
}

void sub_1005E3A9C(char *a1, char a2)
{
  v4 = sub_100025CE0();
  v5 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v4);
  v6 = *&a1[OBJC_IVAR____TtC5Music24NowPlayingViewController_mode];
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if (v6 < 0)
    {
      v8 = [a1 traitCollection];
      v9 = [v8 userInterfaceIdiom];

      if (!v9)
      {
        goto LABEL_11;
      }
    }

    v7 = *&a1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
    if (!v7)
    {
      __break(1u);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (v6 < 0)
  {
LABEL_9:
    v10 = *&a1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (v10)
    {
LABEL_12:
      v7 = *(v10 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
      goto LABEL_13;
    }

    __break(1u);
LABEL_11:
    v10 = *&a1[OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController];
    if (!v10)
    {
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView;
  v7 = *&a1[OBJC_IVAR____TtC5Music24NowPlayingViewController_containerView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_13:
  v11 = 1.0;
  if (a2)
  {
    v11 = 0.0;
  }

  [v7 setAlpha:v11];
  if (!sub_1005DA588())
  {
    v12 = sub_1005C405C();
    v13 = v12;
    v14 = 1.0;
    if (a2)
    {
      v14 = 0.0;
    }

    [v12 setAlpha:v14];
  }

  v15 = sub_1005D01F0();
  if ((a2 & 1) != 0 || (v16 = sub_1005DA588(), v17 = 1.0, !v16))
  {
    v17 = 0.0;
  }

  [v15 setAlpha:v17];
}

void sub_1005E3C28(int a1, char a2, id a3, uint64_t a4)
{
  if ((a2 & 1) == 0 && a3)
  {
    [a3 _setLargeBackground:0];
    [a3 _setNonLargeBackground:0];
  }

  v6 = sub_1005D01F0();
  [v6 setAlpha:1.0];

  *(a4 + OBJC_IVAR____TtC5Music24NowPlayingViewController_isAnimatingDismissal) = 0;
}

void sub_1005E3CC0(unsigned __int8 a1, char a2)
{
  if (a1 <= 1u)
  {
    if (!a1)
    {
      if ((*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) & 0x8000000000000000) == 0)
      {
        sub_1005DA7C8();
      }

      return;
    }

    v14 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
    v13 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
    v16 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
    v15 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
    v17 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
    v18 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
    v19 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
    if (v14 >> 62)
    {
      sub_10012BAC0(*(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8), *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16), *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24), *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32));
    }

    else
    {
      v49[0] = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
      v49[1] = v13;
      v49[2] = v16;
      v49[3] = v15;
      v49[4] = v17;
      v49[5] = v18;
      v49[6] = v19;
      v20 = v14;
      v21 = v13;
      v22 = v16;
      v23 = v15;
      v24 = v17;

      sub_1005DBD58(v49, a2 & 1);
    }

    v33 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
    v34 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v34)
    {
      goto LABEL_35;
    }

    v35 = *(v34 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
    if (v35)
    {
      v36 = [v35 tracklist];
      v37 = [v36 playingItem];

      if (v37)
      {
        v38 = v2;
        v39 = MPCPlayerResponseItem.supportsLyrics.getter();

        if (v39)
        {
          sub_1005D31C8(a2 & 1);
          v40 = *(v38 + v33);
          if (!v40)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v41 = *&v40[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
          if (!v41)
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          v5 = v40;
          [v41 setSelected:1];
          v42 = *&v5[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
          if (!v42)
          {
LABEL_40:
            __break(1u);
            return;
          }

          [v42 setSelected:0];
          sub_1001C30CC();
          sub_1001C3DB8();
          sub_1001C36E8();
          v28 = v14;
          v29 = v13;
          v30 = v16;
          v31 = v15;
          v32 = v17;
          goto LABEL_17;
        }
      }

      v43 = v14;
      v44 = v13;
      v45 = v16;
      v46 = v15;
      v47 = v17;
    }

    else
    {
      v43 = v14;
      v44 = v13;
      v45 = v16;
      v46 = v15;
      v47 = v17;
    }

    sub_10012BB6C(v43, v44, v45, v46, v47);
    return;
  }

  if (a1 == 2)
  {
    v6 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
    v7 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
    v8 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
    v9 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
    v10 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
    sub_10012BAC0(v6, v7, v8, v9, v10);
    if (v6 >> 62 == 1)
    {
      v48 = v9;
      v11 = (v6 & 0x3FFFFFFFFFFFFFFFLL);
      v12 = v7;

      sub_1005DB5C0(v11, v12, v8, a2 & 1);

      v9 = v48;
    }

    sub_1005D1674(a2 & 1, 0);
    v25 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (!v25)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v26 = *&v25[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
    if (!v26)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v5 = v25;
    [v26 setSelected:1];
    v27 = *&v5[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
    if (!v27)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    [v27 setSelected:0];
    sub_1001C30CC();
    sub_1001C36E8();
    sub_1001C3DB8();
    v28 = v6;
    v29 = v7;
    v30 = v8;
    v31 = v9;
    v32 = v10;
LABEL_17:
    sub_10012BB6C(v28, v29, v30, v31, v32);
    goto LABEL_18;
  }

  if (a1 != 3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v4)
    {
      v5 = v4;
      sub_1001BC510();
LABEL_18:

      return;
    }

    goto LABEL_34;
  }
}

uint64_t sub_1005E40A4()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  sub_10010FC20(&unk_1011845C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100EBDC20;
  result = sub_1003198C8();
  v6 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v7 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v7)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *(v7 + OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu);
  if (v9)
  {
    v10 = [v9 children];
    sub_100009F78(0, &qword_10118CDE0);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v8 = 0;
    v11 = 0;
  }

  *(v4 + 32) = v8;
  *(v4 + 40) = 0;
  *(v4 + 48) = 0;
  *(v4 + 56) = v11;
  if (qword_10117F578 != -1)
  {
    swift_once();
  }

  *&v22[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v22[0] + 1) = v12;
  v13._countAndFlagsBits = 0x676E6F532ELL;
  v13._object = 0xE500000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  v16 = *(v1 + v6);
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = result;
  v18 = v15;
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v24 = xmmword_100EBCEF0;
  v19 = v16;
  v20 = sub_1001C9574(&off_10109A5C0, v22);

  if (v20)
  {
    v21 = [v20 children];

    sub_100009F78(0, &qword_10118CDE0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    v14 = 0;
    v17 = 0;
    v18 = 0;
  }

  *(v4 + 64) = v14;
  *(v4 + 72) = v17;
  *(v4 + 80) = v18;
  *(v4 + 88) = v20;
  return v4;
}

double sub_1005E43A8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) >> 62 == 1;
  sub_10010FC20(&qword_1011978D0);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 56) = &type metadata for ApplicationMainMenu.NowPlayingContext;
  *(v2 + 64) = &off_1010A66E0;
  *(v2 + 32) = v1;
  return result;
}

uint64_t sub_1005E4424(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "nowPlayingSelectedMode";
  v4 = 0xD00000000000001ELL;
  if (v2 == 1)
  {
    v5 = 0xD00000000000001ELL;
  }

  else
  {
    v5 = 0xD000000000000017;
  }

  if (v2 == 1)
  {
    v6 = "nowPlayingSelectedMode";
  }

  else
  {
    v6 = "hasMigratedToLyricsOnByDefault";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "r";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "hasMigratedToLyricsOnByDefault";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000016;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "r";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1005E44F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005E4590()
{
  String.hash(into:)();
}

Swift::Int sub_1005E4614()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005E46A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005EB4B8(*a1);
  *a2 = result;
  return result;
}

void sub_1005E46D8(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000016;
  v3 = "nowPlayingSelectedMode";
  v4 = 0xD00000000000001ELL;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000017;
    v3 = "hasMigratedToLyricsOnByDefault";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "r";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t (*MPCPlayerItemDurationSnapshot.elapsedTimeProvider.getter())()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return sub_1005E4788;
}

uint64_t (*sub_1005E479C())()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = *(v0 + 48);
  return sub_1005EBD50;
}

void sub_1005E481C()
{
  sub_1005E4A10(319, &unk_101197530, type metadata accessor for MorphingMotionArtwork);
  if (v0 <= 0x3F)
  {
    sub_1005E4A10(319, &qword_101182200, &type metadata accessor for VideoArtwork);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005E4A10(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1005E4AC4(uint64_t a1)
{
  v2 = sub_100025CE0();
  v3 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  v4 = sub_1005C7BDC();
  v5 = (v3 ^ 1) & v4;
  if ((v3 ^ 1) & 1) == 0 && (v4)
  {
    v6 = *(a1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkState);
    if (v6)
    {
      swift_getKeyPath();
      sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = *(v6 + 16);

      v5 = v7 ^ 1;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_1005E4BD4()
{
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1005E4C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1005E4D1C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005E4E2C()
{
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

__n128 sub_1005E4ED0@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  result = *(v3 + 24);
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1005E4F80(uint64_t result, uint64_t a2, char a3)
{
  v6 = result;
  v7 = *(v3 + 40);
  if (v7 == 255)
  {
    if (a3 == -1)
    {
LABEL_4:
      *(v3 + 24) = v6;
      *(v3 + 32) = a2;
      *(v3 + 40) = a3;
      return result;
    }
  }

  else if (a3 != -1)
  {
    result = static Corner.__derived_enum_equals(_:_:)(*(v3 + 24), *(v3 + 32), v7, result, a2, a3);
    if (result)
    {
      goto LABEL_4;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1005E50D4()
{
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 41);
}

uint64_t sub_1005E5174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 41);
  return result;
}

uint64_t sub_1005E521C(uint64_t result)
{
  if (*(v1 + 41) == (result & 1))
  {
    *(v1 + 41) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005E532C()
{
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 42);
}

uint64_t sub_1005E53CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 42);
  return result;
}

uint64_t sub_1005E5474(uint64_t result)
{
  if (*(v1 + 42) == (result & 1))
  {
    *(v1 + 42) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1005E5584()
{
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

__n128 sub_1005E5628@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = v3[4].n128_u8[0];
  result = v3[3];
  *a2 = result;
  a2[1].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1005E56D8(uint64_t result, uint64_t a2, char a3)
{
  if ((*(v3 + 64) & 1) == 0)
  {
    if ((a3 & 1) == 0 && *(v3 + 48) == *&result && *(v3 + 56) == *&a2)
    {
      goto LABEL_10;
    }

LABEL_9:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    *&result = COERCE_DOUBLE();
    return result;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v3 + 48) = *&result;
  *(v3 + 56) = *&a2;
  *(v3 + 64) = a3 & 1;
  return result;
}

uint64_t sub_1005E5828()
{
  v1 = OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F26MorphingMotionArtworkState___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1005E58EC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1005E59A0()
{
  v1 = *(v0 + *(type metadata accessor for MorphingMotionArtwork(0) + 28));
  if (!v1)
  {
    goto LABEL_5;
  }

  swift_getKeyPath();
  sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) != 1)
  {

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 41);

  v3 = v2 ^ 1;
  return v3 & 1;
}

uint64_t sub_1005E5AC0@<X0>(uint64_t a1@<X8>)
{
  v154 = a1;
  v152 = sub_10010FC20(&qword_1011978D8);
  __chkstk_darwin(v152);
  v153 = &v107 - v2;
  v3 = type metadata accessor for MorphingMotionArtwork(0);
  v145 = *(v3 - 8);
  __chkstk_darwin(v3);
  v148 = v4;
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for MotionPlaybackPolicy();
  v139 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_10010FC20(&unk_1011978E0);
  v133 = *(v137 - 8);
  __chkstk_darwin(v137);
  v128 = &v107 - v7;
  v8 = type metadata accessor for NowPlayingArtworkBackgroundTreatment();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v9 - 8);
  v11 = &v107 - v10;
  v155 = sub_10010FC20(&qword_101188300);
  v12 = *(v155 - 8);
  __chkstk_darwin(v155);
  v14 = &v107 - v13;
  v126 = sub_10010FC20(&qword_1011978F0);
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v16 = &v107 - v15;
  v127 = sub_10010FC20(&qword_1011978F8);
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v123 = &v107 - v17;
  v131 = sub_10010FC20(&qword_101197900);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v129 = &v107 - v18;
  v19 = sub_10010FC20(&qword_101197908);
  __chkstk_darwin(v19);
  v135 = &v107 - v20;
  v132 = sub_10010FC20(&qword_101197910);
  __chkstk_darwin(v132);
  v136 = &v107 - v21;
  v134 = sub_10010FC20(&qword_101197918);
  __chkstk_darwin(v134);
  v140 = &v107 - v22;
  v149 = sub_10010FC20(&qword_101197920);
  __chkstk_darwin(v149);
  v142 = &v107 - v23;
  v150 = sub_10010FC20(&qword_101197928);
  v144 = *(v150 - 8);
  __chkstk_darwin(v150);
  v143 = &v107 - v24;
  v151 = sub_10010FC20(&qword_101197930);
  __chkstk_darwin(v151);
  v28 = &v107 - v27;
  v29 = v1;
  v30 = v1 + *(v3 + 24);
  if ((*(v30 + 16) & 1) != 0 || (v31 = *(v1 + *(v25 + 28))) == 0)
  {
    v44 = type metadata accessor for URL();
    v45 = *(v44 - 8);
    (*(v45 + 16))(v11, v29, v44);
    (*(v45 + 56))(v11, 0, 1, v44);
    v46 = NowPlayingArtworkBackgroundTreatment.init(contentMode:)();
    __chkstk_darwin(v46);
    v105 = v29;
    NowPlayingArtworkBackground.init(videoURL:namespace:treatment:staticArt:)();
    v47 = v155;
    (*(v12 + 16))(v153, v14, v155);
    swift_storeEnumTagMultiPayload();
    v48 = sub_1005EAB38();
    *&v161 = v149;
    *(&v161 + 1) = &type metadata for Bool;
    *&v162 = v48;
    *(&v162 + 1) = &protocol witness table for Bool;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v161 = v150;
    *(&v161 + 1) = &type metadata for Bool;
    *&v162 = OpaqueTypeConformance2;
    *(&v162 + 1) = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    sub_100020674(&qword_101197958, &qword_101188300);
    _ConditionalContent<>.init(storage:)();
    return (*(v12 + 8))(v14, v47);
  }

  else
  {
    v116 = v19;
    v117 = v28;
    v118 = v26;
    v119 = v25;
    v120 = v5;
    v33 = *v30;
    v32 = *(v30 + 8);
    v114 = v33;
    v109 = v32;
    swift_getKeyPath();
    v34 = v31 + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F26MorphingMotionArtworkState___observationRegistrar;
    *&v161 = v31;
    v35 = sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(v31 + 24);
    v37 = *(v31 + 32);
    v38 = *(v31 + 40);
    if (v38 == 255)
    {
      v36 = 0;
    }

    v113 = v36;
    if (v38 == 255)
    {
      v39 = -1;
    }

    else
    {
      v39 = v37;
    }

    v112 = v39;
    if (v38 == 255)
    {
      v40 = 0;
    }

    else
    {
      v40 = v38;
    }

    v111 = v40;
    swift_getKeyPath();
    *&v161 = v31;
    v146 = v35;
    v147 = v34;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v41 = *(v31 + 16) == 1;
    v115 = v12;
    v108 = v16;
    if (v41)
    {
      v42 = Border.artwork.unsafeMutableAddressor();
      v43 = *v42;
      v110 = *(v42 + 16);
      v122 = v43;
    }

    else
    {
      static Color.clear.getter();
      UIScreen.Dimensions.size.getter(0.0);
      v122 = v51;
      v110 = v52;
    }

    v53 = type metadata accessor for URL();
    v54 = *(v53 - 8);
    v55 = *(v54 + 16);
    v121 = v29;
    v55(v11, v29, v53);
    (*(v54 + 56))(v11, 0, 1, v53);
    NowPlayingArtworkBackgroundTreatment.init(contentMode:)();
    swift_getKeyPath();
    *&v161 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    __chkstk_darwin(v56);
    v106 = &protocol witness table for Image;
    v104[1] = v104;
    v105 = &type metadata for Image;
    v104[0] = sub_1005EBEA4;
    NowPlayingArtworkBackground.init(videoURL:namespace:treatment:showsPlainMotion:maximumMotionSize:staticArt:)();
    v57 = sub_100020674(&qword_101197958, &qword_101188300);
    v58 = v128;
    v59 = v155;
    View.mcui.getter();
    (*(v115 + 8))(v14, v59);
    swift_getKeyPath();
    *&v161 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v60 = v138;
    *v138 = *(v31 + 42);
    v61 = v139;
    v62 = v141;
    (*(v139 + 104))(v60, enum case for MotionPlaybackPolicy.custom(_:), v141);
    v63 = v108;
    v64 = v137;
    v114 = v57;
    MCUINamespace<A>.motionCollection(policy:)();
    (*(v61 + 8))(v60, v62);
    (*(v133 + 8))(v58, v64);
    *&v161 = v59;
    *(&v161 + 1) = v57;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v123;
    v67 = v126;
    View.corner(_:)();
    (*(v124 + 8))(v63, v67);
    *&v161 = v67;
    *(&v161 + 1) = v65;
    swift_getOpaqueTypeConformance2();
    v68 = v129;
    v69 = v127;
    View.border(_:corner:)();
    (*(v125 + 8))(v66, v69);
    swift_getKeyPath();
    *&v161 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    *&v161 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v70 = v135;
    (*(v130 + 32))(v135, v68, v131);
    v71 = (v70 + *(v116 + 36));
    v72 = v162;
    *v71 = v161;
    v71[1] = v72;
    v71[2] = v163;
    v73 = v121;
    v74 = (v121 + *(v119 + 32));
    v75 = *v74;
    v76 = *(v74 + 1);
    LOBYTE(v156) = v75;
    v157 = v76;
    sub_10010FC20(&unk_101197960);
    State.wrappedValue.getter();
    if (v160)
    {
      v77 = 0.73;
    }

    else
    {
      v77 = 1.0;
    }

    static UnitPoint.center.getter();
    v79 = v78;
    v81 = v80;
    v82 = v136;
    sub_10003D17C(v70, v136, &qword_101197908);
    v83 = v82 + *(v132 + 36);
    *v83 = v77;
    *(v83 + 8) = v77;
    *(v83 + 16) = v79;
    *(v83 + 24) = v81;
    v84 = static SafeAreaRegions.all.getter();
    v85 = static Edge.Set.all.getter();
    v86 = v82;
    v87 = v140;
    sub_10003D17C(v86, v140, &qword_101197910);
    v88 = v87 + *(v134 + 36);
    *v88 = v84;
    *(v88 + 8) = v85;
    v89 = v120;
    sub_1005EA9E0(v73, v120);
    v90 = (*(v145 + 80) + 16) & ~*(v145 + 80);
    v91 = swift_allocObject();
    sub_1005EA91C(v89, v91 + v90);
    v92 = v142;
    sub_10003D17C(v87, v142, &qword_101197918);
    v93 = v149;
    v94 = (v92 + *(v149 + 36));
    *v94 = sub_1005EAE58;
    v94[1] = v91;
    v94[2] = 0;
    v94[3] = 0;
    swift_getKeyPath();
    v156 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v156) = *(v31 + 41);
    sub_1005EA9E0(v73, v89);
    v95 = swift_allocObject();
    sub_1005EA91C(v89, v95 + v90);
    v96 = sub_1005EAB38();
    v97 = v143;
    View.onChange<A>(of:initial:_:)();

    sub_100094408(v92);
    swift_getKeyPath();
    v156 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v160 = *(v31 + 16);
    sub_1005EA9E0(v121, v89);
    v98 = swift_allocObject();
    sub_1005EA91C(v89, v98 + v90);
    v156 = v93;
    v157 = &type metadata for Bool;
    v158 = v96;
    v159 = &protocol witness table for Bool;
    v99 = swift_getOpaqueTypeConformance2();
    v100 = v117;
    v101 = v150;
    View.onChange<A>(of:initial:_:)();

    (*(v144 + 8))(v97, v101);
    v102 = v118;
    v103 = v151;
    (*(v118 + 16))(v153, v100, v151);
    swift_storeEnumTagMultiPayload();
    v156 = v101;
    v157 = &type metadata for Bool;
    v158 = v99;
    v159 = &protocol witness table for Bool;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();

    return (*(v102 + 8))(v100, v103);
  }
}

uint64_t sub_1005E6F34()
{
  v0 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960);
  result = State.wrappedValue.getter();
  if (v0 != v2)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1005E6FE0()
{
  v0 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960);
  result = State.wrappedValue.getter();
  if (v0 != v3)
  {
    v2 = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    __chkstk_darwin(v2);

    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1005E7120()
{
  v0 = sub_1005E59A0() & 1;
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960);
  result = State.wrappedValue.getter();
  if (v0 != v3)
  {
    [objc_opt_self() inheritedAnimationDuration];
    static Animation.easeInOut(duration:)();
    Animation.delay(_:)();

    __chkstk_darwin(v2);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1005E7274()
{
  type metadata accessor for MorphingMotionArtwork(0);
  sub_10010FC20(&unk_101197960);
  return State.wrappedValue.setter();
}

uint64_t sub_1005E72F8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Image.ResizingMode();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + *(type metadata accessor for MorphingMotionArtwork(0) + 20));
  Image.init(uiImage:)();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v9 = Image.resizable(capInsets:resizingMode:)();

  result = (*(v5 + 8))(v7, v4);
  *a2 = v9;
  return result;
}

uint64_t sub_1005E7434()
{
  v1 = v0;
  v18.receiver = v0;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, "layoutSubviews");
  v2 = sub_100025CE0();
  result = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2);
  if (result)
  {
    if ([v0 frame], v6 = OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state, (v7 = *&v0[OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state]) == 0) || (v8 = v4, v9 = v5, swift_getKeyPath(), sub_1005EA878(&unk_1011978B8, type metadata accessor for MorphingMotionArtworkState), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , v10 = *(v7 + 48), v11 = *(v7 + 56), v12 = *(v7 + 64), result = , (v12) || (v8 == v10 ? (v13 = v9 == v11) : (v13 = 0), !v13))
    {
      v14 = objc_opt_self();
      result = [v14 _isInAnimationBlockWithAnimationsEnabled];
      if (result)
      {
        [v14 inheritedAnimationDuration];
        v15 = static Animation.easeInOut(duration:)();
        __chkstk_darwin(v15);
        sub_10010FC20(&qword_101184430);
        withAnimation<A>(_:_:)();
      }

      else if (*&v1[v6])
      {

        [v1 bounds];
        sub_1005E56D8(v16, v17, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1005E7664@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC5MusicP33_E38AC92F7F664DD94CDA81A33FE0509F30MorphingMotionArtworkContainer_state);
  if (v3)
  {
    v4 = result;

    [v4 bounds];
    sub_1005E56D8(v5, v6, 0);
  }

  *a2 = v3 == 0;
  return result;
}

unint64_t sub_1005E7860(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1005E787C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 56))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1005E78D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

uint64_t sub_1005E7958(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

void sub_1005E79CC()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100009F78(319, &qword_101183B40);
    if (v1 <= 0x3F)
    {
      sub_1005E4A10(319, &qword_101197840, type metadata accessor for CGSize);
      if (v2 <= 0x3F)
      {
        sub_1005E4A10(319, &qword_101197848, type metadata accessor for MorphingMotionArtworkState);
        if (v3 <= 0x3F)
        {
          sub_1004653BC();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1005E7B04()
{
  result = qword_101197890;
  if (!qword_101197890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197890);
  }

  return result;
}

unint64_t sub_1005E7B5C()
{
  result = qword_101197898;
  if (!qword_101197898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101197898);
  }

  return result;
}

uint64_t sub_1005E7BCC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1005E7C54(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_10004ADE8(v1, v2);
  return static Published.subscript.setter();
}

uint64_t sub_1005E7D18(void *a1, double a2, double a3)
{
  v6 = sub_100025CE0();
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v6) & 1) == 0)
  {
    return [a1 userInterfaceIdiom] == 0;
  }

  if ([a1 accessibilityContrast] == 1 || UIAccessibilityIsInvertColorsEnabled())
  {
    return 0;
  }

  v7 = [a1 userInterfaceIdiom];
  if (!v7)
  {
    return 1;
  }

  if (v7 != 1 || a2 <= 0.0)
  {
    return 0;
  }

  v8 = 1.3;
  if (a3 <= 1000.0)
  {
    v8 = 1.4;
  }

  if (v8 > a3 / a2)
  {
    return 0;
  }

  return a3 / a2 <= 1.75;
}

void sub_1005E7E24(char a1)
{
  if (a1 && a1 != 3)
  {
    sub_1005C4C78();
    sub_1005C6A74(1);
    v2 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_morphingMotionArtworkContainer);
    if (v2)
    {
      [v2 removeFromSuperview];
    }

    sub_1005D90E0(0);
    v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
    if (v3)
    {
      v4 = *(v3 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
      if (v4)
      {
        v5 = v4;
        sub_10065CE7C(0, 0);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1005E7EF0(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2 == 1 && a1 != 2)
  {
    sub_1005C4F50(4.0);
    v6 = [objc_opt_self() standardUserDefaults];
    v22 = &type metadata for Bool;
    v21[0] = 1;
    v20 = 2;
    sub_1002B8234();
    sub_100009838();
    NSUserDefaults.subscript.setter(v21, &v20, &type metadata for NowPlayingViewController.DefaultsKey);
  }

  else
  {
    sub_1005E010C(v2);
  }

  v7 = sub_1005C405C();
  v8 = *&v7[OBJC_IVAR___MusicLyricsBackgroundView_renderer];
  v9 = v8;

  if (v8)
  {
    dispatch thunk of Backdrop.CompositeRenderer.isBehindLyrics.setter();
  }

  v10 = v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v11 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v11 >> 62 == 1)
  {
    v12 = *(v10 + 8);
    v13 = *(v10 + 16);
    v14 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
    v15 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
    v16 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
    v17 = (v11 & 0x3FFFFFFFFFFFFFFFLL);
    v18 = v12;

    if (v16)
    {
      [v16 invalidate];
      v19 = *(v3 + v15);
    }

    else
    {
      v19 = 0;
    }

    *(v3 + v15) = 0;

    sub_1005DF4E0(a1, a2, v14, v12, v13);
  }
}

uint64_t sub_1005E80C0(void *a1, double a2, double a3)
{
  if ([a1 userInterfaceIdiom] != 1 || objc_msgSend(a1, "horizontalSizeClass") != 2)
  {
    return 0;
  }

  if (a3 < a2)
  {
    if (qword_10117F928 != -1)
    {
      swift_once();
    }

    if (*&qword_1012190C0 <= a2)
    {
      return 2;
    }
  }

  return 1;
}

id sub_1005E8180()
{
  v1 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
  v2 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
  if (v2)
  {
    [v2 invalidate];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v5 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8);
  v6 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v7 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v9 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v8 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 40);
  v10 = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 48);
  if (v4 >> 62)
  {
    sub_10012BAC0(*(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24), *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32));
    goto LABEL_9;
  }

  v39[0] = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v39[1] = v5;
  v39[2] = v6;
  v39[3] = v7;
  v39[4] = v9;
  v39[5] = v8;
  v39[6] = v10;
  v11 = v4;
  v38 = v5;
  v12 = v5;
  v37 = v6;
  v13 = v6;
  v14 = v7;
  v15 = v13;
  v36 = v14;
  v16 = v14;
  v17 = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v18 = v11;
  v19 = v12;
  v20 = v15;
  v21 = v16;
  v22 = v17;
  [v19 frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v19 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v19 setFrame:{v24, v26, v28, v30}];
  result = *(v0 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = [result view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v32 = result;
  v33 = sub_1005C405C();
  [v32 insertSubview:v19 aboveSubview:v33];

  v34 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v34 deactivateConstraints:isa];

  sub_1005DBD58(v39, 1);
  v6 = v37;
  v5 = v38;
  v7 = v36;
  sub_10012BB6C(v4, v38, v37, v36, v9);
LABEL_9:
  sub_1005E15A8(0, 1);
  sub_1005D31C8(1);

  return sub_10012BB6C(v4, v5, v6, v7, v9);
}

void sub_1005E8440()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer;
  v3 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_presentLyricsTimer);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v1 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v1 + v2) = 0;

  sub_1005DAD10(0);
  v5 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode;
  v7 = v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 8;
  v6 = *v7;
  v8 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v9 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 16);
  v10 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 24);
  v11 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode + 32);
  v41 = v11;
  v43 = v8 >> 62;
  if (*(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) && *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_layoutType) != 1)
  {
    sub_10012BAC0(v8, v6, v9, v10, v11);

    if (v8 >> 62 != 1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_10012BAC0(v8, v6, v9, v10, v11);

    if ((v12 & 1) == 0 || (v8 & 0xC000000000000000) != 0x4000000000000000)
    {
      goto LABEL_13;
    }
  }

  v13 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
  v14 = v6;

  [v14 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v14 setTranslatesAutoresizingMaskIntoConstraints:1];
  [v14 setFrame:{v16, v18, v20, v22}];
  v23 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v13;
  v24 = [v23 view];
  if (!v24)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = sub_1005C405C();
  [v25 insertSubview:v14 aboveSubview:v26];

  v27 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v27 deactivateConstraints:isa];

LABEL_13:
  v44 = v10;
  v45 = v8;
  v47 = v9;
  v42 = v6;
  sub_1005E15A8(1, 1);
  v29 = *(v5 + 16);
  v49[0] = *v5;
  v49[1] = v29;
  v49[2] = *(v5 + 32);
  v50 = *(v5 + 48);
  v30 = *v5;
  v31 = *(v5 + 8);
  v32 = *(v5 + 16);
  v33 = *(v5 + 24);
  v34 = *(v5 + 32);
  *v5 = 0x8000000000000000;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  sub_1005EB280(v49, v48);
  sub_10012BB6C(v30, v31, v32, v33, v34);
  sub_1005D7D3C(v49);
  sub_1005EB2B8(v49);
  v35 = OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController;
  v36 = *(v1 + OBJC_IVAR____TtC5Music24NowPlayingViewController_controlsViewController);
  if (!v36)
  {
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  sub_1001B6A0C(0, 1);

  v38 = *(v1 + v35);
  if (!v38)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v39 = *&v38[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (!v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v40 = v38;
  [v39 setSelected:0];
  sub_1001C3DB8();

  if (v43 == 1)
  {
    sub_1005DB5C0((v45 & 0x3FFFFFFFFFFFFFFFLL), v42, v47, 1);
  }

  else
  {
    sub_10012BB6C(v45, v42, v47, v44, v41);
  }
}