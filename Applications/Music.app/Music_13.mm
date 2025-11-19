uint64_t sub_10019B33C()
{
  v1 = [v0 badging];
  if (v1 >= 6)
  {
    return 9;
  }

  else
  {
    return (0x80506040309uLL >> (8 * v1));
  }
}

void sub_10019B380(id a1, void *a2)
{
  if (a1)
  {
    v5 = [a1 tracklist];
    v12 = [v5 playingItem];

    if (a2)
    {
LABEL_3:
      v6 = [a2 tracklist];
      v13 = [v6 playingItem];

      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  if (v12)
  {
    [v12 duration];
    v7 = v14;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  [v13 duration];
  if (v14 == 1)
  {

    v8 = v12;
    goto LABEL_16;
  }

LABEL_12:
  if (v7)
  {

    *v2 = v13;
    if (a1)
    {
      v9 = [a1 tracklist];
      v10 = v2;
      v11 = sub_1007D38E4();

      v10[1] = v11;
    }

    else
    {

      v2[1] = 0;
    }

    return;
  }

  v8 = v13;
LABEL_16:
}

void sub_10019B540()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001A8B04();
    v3 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
    if (v3 && (v4 = [v3 tracklist], v5 = objc_msgSend(v4, "playingItem"), v4, v5) && (v6 = objc_msgSend(v5, "nowPlayingAudioFormat"), v5, v6))
    {
      v7 = sub_10019B33C();

      v8 = v7;
    }

    else
    {
      v8 = 9;
    }

    sub_1001A8CA0(v8);
    sub_1001C4474(v2);
  }
}

void sub_10019B63C(char a1, char a2, void *a3, char a4)
{
  if (a1)
  {
    sub_1001A8CA0(a4);
  }

  if ((a2 & 1) != 0 && sub_1001A8B04() != 9 && (sub_1001A8B04() - 3) <= 6u)
  {
    [a3 updatePlayingItemAudioTraitButton];
    sub_1001C4B54();
  }
}

void sub_10019B6A8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v2)
    {
      v3 = v2;
      v9 = v1;
      v4 = [v9 state];
      v5 = sub_1001BDD38();
      if (v5)
      {
        v6 = 256;
      }

      else
      {
        v6 = 0;
      }

      if (v4 == 2)
      {
        ++v6;
      }

      v7 = v6 | 0x4000;
      v8 = *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode];
      *&v3[OBJC_IVAR____TtC5Music21NowPlayingContentView_mode] = v7;
      if (v8 & 0xC000) != 0x4000 || (((v4 == 2) ^ v8) & 1) != 0 || ((v5 ^ ((v8 & 0x100) >> 8)))
      {
        sub_10004C8F4();
        [v3 setNeedsLayout];
      }
    }
  }
}

void *sub_10019B7B4(uint64_t a1, id a2)
{
  v2 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (v2)
  {
    v4 = [v2 tracklist];
    if (a2)
    {
      a2 = [a2 tracklist];
    }

    sub_1007D3644(a2);
  }

  return sub_1001D01A8();
}

void sub_10019B83C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView;
  v5 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for NowPlayingContentView(0);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v9))
  {
    v10 = *(v2 + v4);
    if (!v10)
    {
      goto LABEL_11;
    }

    *(v10 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground) = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground);
    [*(v10 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView) setClipsToBounds:?];
  }

  v11 = *(v2 + v4);
  if (v11)
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = &v11[OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler];
    v14 = *&v11[OBJC_IVAR____TtC5Music21NowPlayingContentView_layoutHandler];
    *v13 = sub_1001CF190;
    v13[1] = v12;
    v15 = v11;

    sub_100020438(v14);
  }

LABEL_11:
  v16 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler);
  if (v16)
  {

    v16(v17);
    sub_100020438(v16);
  }

  if (!a1)
  {
    goto LABEL_29;
  }

  v18 = a1;
  v19 = sub_1001CAA44();
  v20 = *((swift_isaMask & *v19) + 0x110);
  v21 = type metadata accessor for NowPlayingContentView(0);
  v22 = sub_1001CF0F0(&unk_101189E80, type metadata accessor for NowPlayingContentView);
  v23 = v20(v18, v21, v22);

  if ((*(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange) & 1) == 0)
  {
    v24 = v18;
    v25 = [v24 superview];
    if (v25)
    {
      v26 = v25;
      v27 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView);
      sub_100009F78(0, &qword_101181620);
      v28 = v27;
      v29 = static NSObject.== infix(_:_:)();

      if (v29)
      {
        goto LABEL_23;
      }
    }

    v30 = [v24 superview];
    Strong = swift_unknownObjectWeakLoadStrong();
    v32 = Strong;
    if (v30)
    {
      if (Strong)
      {
        sub_100009F78(0, &qword_101181620);
        v33 = static NSObject.== infix(_:_:)();

        if (v33)
        {
          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    else
    {
      if (!Strong)
      {
LABEL_23:
        isa = [v24 constraints];

        if (!isa)
        {
          sub_100009F78(0, &qword_1011838A0);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
          isa = Array._bridgeToObjectiveC()().super.isa;
        }

        [objc_opt_self() deactivateConstraints:isa];

        [v24 removeFromSuperview];
        goto LABEL_28;
      }
    }
  }

LABEL_28:

LABEL_29:
  v35 = *(v2 + v4);
  if (v35)
  {
    v36 = v35;
    v37 = sub_1001CAA44();
    v38 = *((swift_isaMask & *v37) + 0x108);
    v39 = type metadata accessor for NowPlayingContentView(0);
    v40 = sub_1001CF0F0(&unk_101189E80, type metadata accessor for NowPlayingContentView);
    v38(v36, v39, v40);

    v41 = *(v2 + v4);
    if (v41)
    {
      v42 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v43 = &v41[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler];
      v44 = *&v41[OBJC_IVAR____TtC5Music21NowPlayingContentView_artworkDidChangeHandler];
      *v43 = sub_1001CF198;
      v43[1] = v42;
      v45 = v41;

      sub_100020438(v44);

      v46 = *(v2 + v4);
      if (v46)
      {
        v47 = v46;
        v48 = String._bridgeToObjectiveC()();
        [v47 _setLayoutDebuggingIdentifier:v48];
      }
    }
  }

  sub_10019BFA4();
}

void sub_10019BDCC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v4)
    {
      type metadata accessor for NowPlayingContentView(0);
      v5 = v4;
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        type metadata accessor for CGRect(0);
        [v6 frame];
        v8 = &v3[OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame];
        v17 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame];
        v18 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame + 16];
        if (static ApproximatelyEquatable.!=~ infix(_:_:)())
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            [v6 frame];
            sub_1005E200C(v3, v9, v10, v11, v12);
            swift_unknownObjectRelease();
          }

          [v6 frame];
          *v8 = v13;
          *(v8 + 1) = v14;
          *(v8 + 2) = v15;
          *(v8 + 3) = v16;
        }
      }
    }
  }
}

void sub_10019BF18()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler);
    v2 = Strong;
    sub_100030444(v1);

    if (v1)
    {
      v1();
      sub_100020438(v1);
    }
  }
}

void sub_10019BFA4()
{
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
  if (!v1)
  {
    return;
  }

  if (v0[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] == 2 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
  {
    v3 = Strong;
    [Strong addSubview:v1];
  }

  else
  {
    [*&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] addSubview:v1];
  }

  v0[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates] = 0;
  sub_1001B5B98(v1);
  v4 = v1;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10010FC20(&qword_101183990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBDC10;
  v6 = [v4 centerXAnchor];
  v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide;
  v8 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide];
  if (!v8)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = [v8 centerXAnchor];
  v10 = [v6 constraintEqualToAnchor:v9];

  *(v5 + 32) = v10;
  v11 = [v4 centerYAnchor];
  v12 = *&v0[v7];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = [v12 centerYAnchor];
  v14 = [v11 constraintEqualToAnchor:v13];

  *(v5 + 40) = v14;
  v15 = [v4 widthAnchor];
  v16 = *&v0[v7];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = [v16 widthAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];

  *(v5 + 48) = v18;
  v19 = [v4 heightAnchor];

  v20 = *&v0[v7];
  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = [v20 heightAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];

  *(v5 + 56) = v22;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewConstraints] = v5;

  v23 = objc_opt_self();
  sub_100009F78(0, &qword_1011838A0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v23 activateConstraints:isa];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v26 = v25;
  [v25 setNeedsLayout];
}

id sub_10019C338()
{
  v1 = v0;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] = 0;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewConstraints] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView] = 0;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken] = 0;
  v0[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState] = 3;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView] = 0;
  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
  type metadata accessor for PassthroughView();
  *&v1[v2] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_shouldAnimateArtworkChange] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkViewMask] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_outgoingArtwork] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait] = 9;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton] = 0;
  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
  v4 = type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController] = 0;
  v5 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton] = 0;
  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
  v7 = [objc_allocWithZone(UIView) init];
  v8 = UIView.forAutolayout.getter();

  *&v1[v6] = v8;
  v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView;
  type metadata accessor for NowPlayingAttributionView();
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = UIView.forAutolayout.getter();

  *&v1[v9] = v11;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView] = 0;
  v12 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  type metadata accessor for NowPlayingShuffleButton();
  *&v1[v12] = [swift_getObjCClassFromMetadata() buttonWithType:0];
  v13 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  type metadata accessor for NowPlayingRepeatButton();
  *&v1[v13] = [swift_getObjCClassFromMetadata() buttonWithType:0];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton] = 0;
  v14 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonConfiguration];
  v14[1] = 0;
  v14[2] = 0;
  *v14 = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton] = 0;
  v15 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButtonConfiguration];
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton] = 0;
  v16 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButtonConfiguration];
  v16[1] = 0;
  v16[2] = 0;
  *v16 = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView] = 0;
  v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  type metadata accessor for NowPlayingRouteSharePlayTogetherControl();
  *&v1[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_singIndicatorView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherParticipantsSubscription] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentRegularLayoutConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentExtendedLayoutConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerRegularLayoutConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerExtendedCollapsedLayoutConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_placeholderArtworkLayoutGuideConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackViewCollapsedConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsCompactConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsRegularConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelTransportControlsConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionLabelFullScreenLyricsConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsCompactConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportAccessoryButtonsRegularConstraints] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundTopConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideMotionBackgroundCollapsedTopConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeMaskLayer] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playerSubscriptions] = &_swiftEmptySetSingleton;
  v18 = OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager;
  *&v1[v18] = [objc_opt_self() sharedManager];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideFullBleedConstraints] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingShouldShowMotionBackground] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_deferArtworkModeUpdates] = 0;
  v19 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkDidChangeHandler];
  *v19 = 0;
  v19[1] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingSharePlayTogetherSessionManagement] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_isInTakeoverMode] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_needsTopViewsUpdate] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTopOffset] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_animationData] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_areControlsHidden] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_sessionWaitTimer] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_goToMenu] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bindings] = _swiftEmptyArrayStorage;
  v20 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame];
  *v20 = 0u;
  v20[1] = 0u;
  v21 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousArtworkFrame];
  *v21 = 0u;
  v21[1] = 0u;
  v22 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds];
  *v22 = 0u;
  v22[1] = 0u;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer] = 0;
  v23 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemNavigationStyle];
  *v23 = 0;
  *(v23 + 1) = 0;
  v23[16] = -1;
  v24 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController;
  type metadata accessor for TransportControlsController();
  v25 = swift_allocObject();
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;
  *(v25 + 48) = 0u;
  *(v25 + 64) = 0u;
  *(v25 + 80) = 0u;
  *&v1[v24] = v25;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___leaveSessionButton] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_didAnimateReactionOnce] = 0;
  *(v25 + 96) = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitWatchdog] = 0;
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

  v32 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics];
  *v32 = xmmword_100EBEE10;
  *(v32 + 2) = v29;
  *(v32 + 3) = 0;
  *(v32 + 4) = v30;
  *(v32 + 5) = 0xC056000000000000;
  *(v32 + 6) = v27;
  *(v32 + 7) = 0;
  v32[64] = 0;
  *(v32 + 72) = xmmword_100EBEE20;
  *(v32 + 11) = 0;
  *(v32 + 12) = v28;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation] = 0;
  v1[OBJC_IVAR___MusicNowPlayingControlsViewController_presentingVideo] = 0;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput] = 0;
  v48[32] = 0;
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

  v40 = v39(v48);
  v41.reverseCount = v37;
  v41.forwardCount = v38;
  Player.NowPlayingConfiguration.insert(_:)(v41);
  v40(v48, 0);
  *&v1[v33] = v35;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___glissCoordinator] = 0;
  v47.receiver = v1;
  v47.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  v42 = objc_msgSendSuper2(&v47, "initWithNibName:bundle:", 0, 0);
  v43 = qword_10117F2A0;
  v44 = v42;
  if (v43 != -1)
  {
    swift_once();
  }

  v45 = *(*off_101183280 + 96);

  v45(v44);

  return v44;
}

id sub_10019CE00()
{
  if (qword_10117F2A0 != -1)
  {
    swift_once();
  }

  v1 = *(*off_101183280 + 104);

  v2 = v0;
  v1();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10019D69C()
{
  type metadata accessor for TintColorObservingView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = &v1[OBJC_IVAR____TtC5Music22TintColorObservingView_tintColorDidChangeCallback];
  swift_beginAccess();
  v4 = *v3;
  *v3 = sub_1001D307C;
  v3[1] = v2;

  sub_100020438(v4);

  [v0 setView:v1];
}

void sub_10019D7CC()
{
  v1 = v0;
  v2 = sub_10010FC20(&unk_101183B10);
  v595 = *(v2 - 8);
  __chkstk_darwin(v2);
  v594 = &v553 - v3;
  v4 = type metadata accessor for NSNotificationCenter.Publisher();
  v596 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v553 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&unk_101182130);
  v589 = *(v7 - 8);
  v590 = v7;
  __chkstk_darwin(v7);
  v588 = &v553 - v8;
  v9 = sub_10010FC20(&unk_101183B20);
  v592 = *(v9 - 8);
  v593 = v9;
  __chkstk_darwin(v9);
  v591 = &v553 - v10;
  v11 = sub_10010FC20(&qword_101183A40);
  v583 = *(v11 - 8);
  v584 = v11;
  __chkstk_darwin(v11);
  v582 = &v553 - v12;
  v13 = sub_10010FC20(&qword_101183A48);
  v586 = *(v13 - 8);
  v587 = v13;
  __chkstk_darwin(v13);
  v585 = &v553 - v14;
  v15 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v15 - 8);
  v601 = &v553 - v16;
  v17 = sub_10010FC20(&unk_101189DD0);
  v577 = *(v17 - 8);
  v578 = v17;
  __chkstk_darwin(v17);
  v576 = &v553 - v18;
  v19 = sub_10010FC20(&qword_101183B30);
  v580 = *(v19 - 8);
  v581 = v19;
  __chkstk_darwin(v19);
  v579 = &v553 - v20;
  v21 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v21 - 8);
  v602 = &v553 - v22;
  v23 = _s7ContextVMa(0);
  __chkstk_darwin(v23);
  v25 = &v553 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for NowPlayingControlsViewController(0);
  v620.receiver = v0;
  v620.super_class = v26;
  objc_msgSendSuper2(&v620, "viewDidLoad");
  v27 = [v0 view];
  if (!v27)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  v28 = v27;
  v29 = [v27 layer];

  [v29 setAllowsGroupBlending:0];
  v607 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView] setHidden:1];
  v30 = [objc_allocWithZone(_UIGrabber) init];
  v31 = OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView;
  v32 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView] = v30;
  v33 = v30;

  if (!v33)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v573 = v2;
  v574 = v6;
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];

  v35 = *&v1[v31];
  if (!v35)
  {
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  LODWORD(v34) = 1148846080;
  [v35 setContentCompressionResistancePriority:0 forAxis:v34];
  v37 = *&v1[v31];
  if (!v37)
  {
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  LODWORD(v36) = 1148846080;
  [v37 setContentHuggingPriority:0 forAxis:v36];
  v38 = *&v1[v31];
  if (!v38)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  v39 = v38;
  v40 = String._bridgeToObjectiveC()();
  [v39 _setLayoutDebuggingIdentifier:v40];

  v598 = v31;
  v41 = *&v1[v31];
  if (!v41)
  {
LABEL_202:
    __break(1u);
    goto LABEL_203;
  }

  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = sub_100009F78(0, &qword_101183B38);
  v44 = v41;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2BD8, v42, v43);

  v45 = [objc_opt_self() buttonWithType:0];
  v46 = OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton;
  v47 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton] = v45;
  v48 = v45;

  if (!v48)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v609 = v23;
  [v48 setExclusiveTouch:1];

  v49 = *&v1[v46];
  if (!v49)
  {
LABEL_204:
    __break(1u);
    goto LABEL_205;
  }

  [v49 setTranslatesAutoresizingMaskIntoConstraints:0];
  v50 = *&v1[v46];
  if (!v50)
  {
LABEL_205:
    __break(1u);
    goto LABEL_206;
  }

  v51 = v4;
  v52 = v50;
  v53 = String._bridgeToObjectiveC()();
  [v52 _setLayoutDebuggingIdentifier:v53];

  v54 = *&v1[v46];
  if (!v54)
  {
LABEL_206:
    __break(1u);
    goto LABEL_207;
  }

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = sub_100009F78(0, &qword_101183A18);
  v57 = v54;
  v600 = v56;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D325C, v55, v56);

  v58 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v59 = [*&v1[v58] layer];
  [v59 setAllowsGroupBlending:0];

  v575 = v58;
  v60 = *&v1[v58];
  v61 = String._bridgeToObjectiveC()();
  [v60 _setLayoutDebuggingIdentifier:v61];

  v62 = [objc_allocWithZone(UIView) init];
  v63 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
  v64 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView] = v62;
  v65 = v62;

  if (!v65)
  {
LABEL_207:
    __break(1u);
    goto LABEL_208;
  }

  v66 = [v65 layer];

  [v66 setAllowsGroupBlending:0];
  v67 = *&v1[v63];
  if (!v67)
  {
LABEL_208:
    __break(1u);
    goto LABEL_209;
  }

  v68 = [v67 layer];
  [v68 setAllowsGroupOpacity:0];

  v69 = *&v1[v63];
  if (!v69)
  {
LABEL_209:
    __break(1u);
    goto LABEL_210;
  }

  v70 = v51;
  [v69 setTranslatesAutoresizingMaskIntoConstraints:0];
  v597 = v63;
  v71 = *&v1[v63];
  v72 = v609;
  if (!v71)
  {
LABEL_210:
    __break(1u);
    goto LABEL_211;
  }

  v73 = v71;
  v74 = 0xD000000000000010;
  v75 = String._bridgeToObjectiveC()();
  [v73 _setLayoutDebuggingIdentifier:v75];

  type metadata accessor for PassthroughView();
  v76 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v77 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView;
  v78 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView] = v76;
  v79 = v76;

  v80 = [v79 layer];
  [v80 setAllowsGroupBlending:0];

  v81 = *&v1[v77];
  if (!v81)
  {
LABEL_211:
    __break(1u);
    goto LABEL_212;
  }

  v571 = v70;
  v572 = v46;
  [v81 setTranslatesAutoresizingMaskIntoConstraints:0];
  v606 = v77;
  v82 = *&v1[v77];
  if (!v82)
  {
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v83 = v82;
  v84 = String._bridgeToObjectiveC()();
  [v83 _setLayoutDebuggingIdentifier:v84];

  _s10ControllerCMa(0);
  swift_allocObject();
  v85 = sub_100250490();
  v86 = _s7ContextV6SourceOMa(0);
  (*(*(v86 - 8) + 56))(v25, 1, 1, v86);
  v87 = &v25[v72[5]];
  *v87 = 0;
  v87[8] = -1;
  *&v25[v72[6]] = 0;
  v25[v72[7]] = 1;
  v25[v72[8]] = 0;
  v88 = objc_allocWithZone(_s7ControlCMa(0));

  v89 = sub_100257CBC(v25, v85);
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController] = v85;
  v570 = v85;

  v90 = [objc_allocWithZone(type metadata accessor for ReactionEffectInteraction()) init];
  v91 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction] = v90;
  v92 = v90;

  v93 = v89;
  [v93 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v93 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];
  v569 = v92;
  [v93 addInteraction:v92];
  [v93 setExclusiveTouch:1];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v94) = 1148846080;
  [v93 setContentCompressionResistancePriority:0 forAxis:v94];
  v95 = String._bridgeToObjectiveC()();
  [v93 _setLayoutDebuggingIdentifier:v95];

  v96 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton;
  v97 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton] = v93;
  v568 = v93;

  v98 = sub_100009F78(0, &qword_1011839A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v99 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v100 = sub_1001AA510();
  v567 = v99;
  [v100 addAction:v99 forControlEvents:0x4000];

  v101 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton] setContextMenuInteractionEnabled:1];
  [*&v1[v101] setShowsMenuAsPrimaryAction:1];
  v102 = v616;
  v617 = *&v1[v96];
  v103 = v617;
  v104 = sub_1001AB0B4();
  v105 = *&v1[v101];
  v618 = v104;
  v619 = v105;
  v106 = _swiftEmptyArrayStorage;
  aBlock = _swiftEmptyArrayStorage;
  v107 = v105;
  v108 = 0;
  v109 = 3;
LABEL_18:
  if (v108 <= 3)
  {
    v110 = 3;
  }

  else
  {
    v110 = v108;
  }

  while (v108 != 3)
  {
    if (v110 == v108)
    {
LABEL_194:
      __break(1u);
      goto LABEL_195;
    }

    v111 = v616[v108++ + 4];
    if (v111)
    {
      v112 = v111;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v609 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v106 = aBlock;
      goto LABEL_18;
    }
  }

  *&v603 = v98;
  type metadata accessor for HitMyRectStackView();
  sub_10010FC20(&qword_1011839B8);
  swift_arrayDestroy();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v114 = objc_allocWithZone(ObjCClassFromMetadata);
  v609 = sub_100009F78(0, &qword_101181620);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v116 = [v114 initWithArrangedSubviews:isa];

  v117 = OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView;
  v118 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView] = v116;
  v119 = v116;

  [v119 setTranslatesAutoresizingMaskIntoConstraints:0];
  v120 = *&v1[v117];
  if (!v120)
  {
    goto LABEL_213;
  }

  v599 = ObjCClassFromMetadata;
  [v120 setAxis:0];
  v121 = *&v1[v117];
  v108 = v607;
  v109 = &stru_101148000;
  if (!v121)
  {
    goto LABEL_214;
  }

  [v121 setSpacing:16.0];
  v122 = *&v1[v117];
  if (!v122)
  {
    goto LABEL_215;
  }

  [v122 setAlignment:1];
  v123 = *&v1[v117];
  if (!v123)
  {
    goto LABEL_216;
  }

  [v123 setBaselineRelativeArrangement:1];
  v124 = *&v1[v117];
  if (!v124)
  {
    goto LABEL_217;
  }

  [v124 setClipsToBounds:0];
  v125 = *&v1[v117];
  if (!v125)
  {
    goto LABEL_218;
  }

  v126 = [v125 layer];
  [v126 setAllowsGroupBlending:0];

  v566 = v117;
  v127 = *&v1[v117];
  if (!v127)
  {
    goto LABEL_219;
  }

  v128 = v127;
  v129 = String._bridgeToObjectiveC()();
  [v128 _setLayoutDebuggingIdentifier:v129];

  v604 = sub_10010FC20(&qword_101183990);
  v130 = swift_allocObject();
  *(v130 + 16) = xmmword_100EBC6D0;
  v131 = *&v1[v108];
  *(v130 + 32) = v131;
  v132 = v131;
  *(v130 + 40) = sub_1001AFCCC();
  v133 = objc_allocWithZone(UIStackView);
  v134 = Array._bridgeToObjectiveC()().super.isa;

  v135 = [v133 initWithArrangedSubviews:v134];

  v74 = OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView;
  v136 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView] = v135;
  v137 = v135;

  if (!v137)
  {
    goto LABEL_220;
  }

  v102 = &stru_101148000;
  [v137 setTranslatesAutoresizingMaskIntoConstraints:0];

  v138 = *&v1[v74];
  if (!v138)
  {
    goto LABEL_221;
  }

  [v138 setAxis:1];
  v139 = *&v1[v74];
  if (!v139)
  {
    goto LABEL_222;
  }

  [v139 setAlignment:1];
  v140 = *&v1[v74];
  if (!v140)
  {
    goto LABEL_223;
  }

  [v140 setSpacing:0.0];
  v141 = *&v1[v74];
  if (!v141)
  {
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v142 = [v141 layer];
  [v142 setAllowsGroupBlending:0];

  v143 = *&v1[v74];
  if (!v143)
  {
    goto LABEL_225;
  }

  v144 = v143;
  v145 = String._bridgeToObjectiveC()();
  [v144 _setLayoutDebuggingIdentifier:v145];

  v146 = *&v1[v74];
  if (!v146)
  {
    goto LABEL_226;
  }

  v147 = qword_10117F308;
  v106 = v146;
  if (v147 != -1)
  {
LABEL_195:
    swift_once();
  }

  [v106 setCustomSpacing:*&v1[v108] afterView:*&qword_101183300];

  v148 = [objc_allocWithZone(type metadata accessor for PlayerTimeControl()) init];
  v149 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  v605 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl] = v148;
  v150 = v148;

  if (!v150)
  {
    goto LABEL_227;
  }

  if (qword_10117F8E0 != -1)
  {
    swift_once();
  }

  v151 = qword_101219078;
  [v150 setTintColor:qword_101219078];

  v152 = v605;
  v153 = *&v1[v605];
  if (!v153)
  {
    goto LABEL_228;
  }

  [v153 setExclusiveTouch:1];
  v154 = *&v1[v152];
  if (!v154)
  {
    goto LABEL_229;
  }

  [v154 v102[83].attr];
  v155 = *&v1[v152];
  if (!v155)
  {
    goto LABEL_230;
  }

  v156 = v155;
  v157 = String._bridgeToObjectiveC()();
  [v156 *(v109 + 2376)];

  type metadata accessor for AudioTraitButton();
  v158 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v159 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v160 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton] = v158;
  v161 = v158;

  [v161 setTintColor:v151];
  v162 = *&v1[v159];
  if (!v162)
  {
    goto LABEL_231;
  }

  [v162 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  [v1 updatePlayingItemAudioTraitButton];
  v163 = *&v1[v159];
  if (!v163)
  {
    goto LABEL_232;
  }

  v565 = v74;
  v164 = [v163 layer];
  [v164 setMasksToBounds:0];

  v165 = *&v1[v159];
  if (!v165)
  {
    goto LABEL_233;
  }

  v166 = [v165 layer];
  v167 = objc_opt_self();
  v168 = [v167 whiteColor];
  v169 = [v168 CGColor];

  [v166 setShadowColor:v169];
  v170 = *&v1[v159];
  if (!v170)
  {
    goto LABEL_234;
  }

  v171 = v159;
  v172 = [v170 layer];
  [v172 setShadowOpacity:0.0];

  v173 = *&v1[v159];
  if (!v173)
  {
    goto LABEL_235;
  }

  v174 = [v173 layer];
  [v174 setShadowRadius:0.0];

  v175 = *&v1[v159];
  if (!v175)
  {
    goto LABEL_236;
  }

  v176 = [v175 layer];
  [v176 setShadowOffset:{0.0, 0.0}];

  v177 = *&v1[v159];
  if (!v177)
  {
    goto LABEL_237;
  }

  v178 = v177;
  v179 = String._bridgeToObjectiveC()();
  [v178 _setLayoutDebuggingIdentifier:v179];

  v180 = *&v1[v171];
  if (!v180)
  {
    goto LABEL_238;
  }

  v608 = v167;
  *&v180[OBJC_IVAR____TtC5Music16AudioTraitButton_hitRectMinimumSize] = xmmword_100EBEE40;
  [v180 setTranslatesAutoresizingMaskIntoConstraints:0];
  v561 = v171;
  v181 = *&v1[v171];
  if (!v181)
  {
    goto LABEL_239;
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v182 = v181;
  v183 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v182 addAction:v183 forControlEvents:64];

  v184 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v185 = *&v1[v184];
  v186 = v608;
  v187 = [v608 whiteColor];
  v188 = *&v185[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor];
  *&v185[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedColor] = v187;
  v189 = v187;

  sub_10004FD5C();
  v190 = *&v1[v184];
  v190[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_isGlowEnabled] = 1;
  v191 = v190;
  sub_10004FD5C();

  v192 = *&v1[v184];
  v193 = [v1 view];
  if (!v193)
  {
    goto LABEL_240;
  }

  v194 = v193;
  v195 = [v193 tintColor];

  v196 = *&v192[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor];
  *&v192[OBJC_IVAR____TtC5Music23NowPlayingShuffleButton_selectedBackgroundColor] = v195;
  v197 = v195;

  sub_10004FD5C();
  v198 = *&v1[v184];
  v199 = String._bridgeToObjectiveC()();
  [v198 _setLayoutDebuggingIdentifier:v199];

  v564 = v184;
  v200 = *&v1[v184];
  v201 = type metadata accessor for NowPlayingShuffleButton();
  v202 = v200;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001A2838, 0, v201);

  v203 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v204 = *&v1[v203];
  v205 = [v186 whiteColor];
  v206 = *&v204[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor];
  *&v204[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedColor] = v205;
  v207 = v205;

  sub_100050478();
  v208 = *&v1[v203];
  v208[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_isGlowEnabled] = 1;
  v209 = v208;
  sub_100050478();

  v210 = *&v1[v203];
  v211 = [v1 view];
  if (!v211)
  {
    goto LABEL_241;
  }

  v212 = v211;
  v213 = [v211 tintColor];

  v214 = *&v210[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor];
  *&v210[OBJC_IVAR____TtC5Music22NowPlayingRepeatButton_selectedBackgroundColor] = v213;
  v215 = v213;

  sub_100050478();
  v216 = *&v1[v203];
  v217 = String._bridgeToObjectiveC()();
  [v216 _setLayoutDebuggingIdentifier:v217];

  v562 = v203;
  v218 = *&v1[v203];
  v219 = type metadata accessor for NowPlayingRepeatButton();
  v220 = v218;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001A2B64, 0, v219);

  v221 = type metadata accessor for NowPlayingTransportButton();
  v222 = swift_getObjCClassFromMetadata();
  v223 = [v222 buttonWithType:0];
  v224 = OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton;
  v225 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton] = v223;
  v226 = v223;

  [v226 setExclusiveTouch:1];
  v227 = *&v1[v224];
  if (!v227)
  {
    goto LABEL_242;
  }

  sub_100009F78(0, &qword_101183B40);
  v228 = v227;
  v229 = UIImage.init(systemName:pointSize:weight:)(68.0, 0x647261776B636162, 0xED00006C6C69662ELL, 5);
  [v228 setImage:v229 forState:0];

  v230 = *&v1[v224];
  if (!v230)
  {
    goto LABEL_243;
  }

  [v230 setHitRectInsets:{-25.0, -30.0, -25.0, 0.0}];
  v231 = *&v1[v224];
  if (!v231)
  {
    goto LABEL_244;
  }

  v232 = qword_10117F918;
  v233 = v231;
  if (v232 != -1)
  {
    swift_once();
  }

  v234 = qword_1012190B0;
  [v233 setTintColor:qword_1012190B0];

  v235 = *&v1[v224];
  if (!v235)
  {
    goto LABEL_245;
  }

  v236 = v235;
  v237 = String._bridgeToObjectiveC()();
  [v236 _setLayoutDebuggingIdentifier:v237];

  v238 = *&v1[v224];
  if (!v238)
  {
    goto LABEL_246;
  }

  v239 = [v238 layer];
  [v239 setAllowsGroupBlending:0];

  v240 = *&v1[v224];
  if (!v240)
  {
    goto LABEL_247;
  }

  v241 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v242 = v240;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2C04, v241, v221);

  v243 = *&v1[v224];
  if (!v243)
  {
    goto LABEL_248;
  }

  v244 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v245 = v243;
  ControlEventHandling<>.on(_:handler:)(0x1000000, sub_1001D2C30, v244, v221);

  v246 = *&v1[v224];
  if (!v246)
  {
    goto LABEL_249;
  }

  v247 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v248 = v246;
  ControlEventHandling<>.on(_:handler:)(0x2000000, sub_1001D2C5C, v247, v221);

  v249 = [v222 buttonWithType:0];
  v250 = OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton;
  v251 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton] = v249;
  v252 = v249;

  [v252 setExclusiveTouch:1];
  v253 = *&v1[v250];
  if (!v253)
  {
    goto LABEL_250;
  }

  v254 = v253;
  v255 = UIImage.init(systemName:pointSize:weight:)(68.0, 0x2E64726177726F66, 0xEC0000006C6C6966, 5);
  [v254 setImage:v255 forState:0];

  v256 = *&v1[v250];
  if (!v256)
  {
    goto LABEL_251;
  }

  [v256 setTintColor:v234];
  v257 = *&v1[v250];
  if (!v257)
  {
    goto LABEL_252;
  }

  [v257 setHitRectInsets:{-25.0, 0.0, -25.0, -30.0}];
  v258 = *&v1[v250];
  if (!v258)
  {
    goto LABEL_253;
  }

  v259 = v258;
  v260 = String._bridgeToObjectiveC()();
  [v259 _setLayoutDebuggingIdentifier:v260];

  v261 = *&v1[v250];
  if (!v261)
  {
    goto LABEL_254;
  }

  v262 = [v261 layer];
  [v262 setAllowsGroupBlending:0];

  v263 = *&v1[v250];
  if (!v263)
  {
    goto LABEL_255;
  }

  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v265 = v263;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2C88, v264, v221);

  v266 = *&v1[v250];
  if (!v266)
  {
    goto LABEL_256;
  }

  v267 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v268 = v266;
  ControlEventHandling<>.on(_:handler:)(0x1000000, sub_1001D2CB4, v267, v221);

  v269 = *&v1[v250];
  if (!v269)
  {
    goto LABEL_257;
  }

  v270 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v271 = v269;
  ControlEventHandling<>.on(_:handler:)(0x2000000, sub_1001D2CE0, v270, v221);

  v272 = [v222 buttonWithType:0];
  v273 = OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton;
  v274 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton] = v272;
  v275 = v272;

  [v275 setTintColor:v234];
  v276 = *&v1[v273];
  if (!v276)
  {
    goto LABEL_258;
  }

  v277 = objc_opt_self();
  v278 = v276;
  *&v603 = v277;
  [v277 easyTouchDefaultHitRectInsets];
  [v278 setHitRectInsets:?];

  v279 = *&v1[v273];
  if (!v279)
  {
    goto LABEL_259;
  }

  [v279 setExclusiveTouch:1];
  v280 = *&v1[v273];
  if (!v280)
  {
    goto LABEL_260;
  }

  v281 = v280;
  v282 = String._bridgeToObjectiveC()();
  [v281 _setLayoutDebuggingIdentifier:v282];

  v283 = *&v1[v273];
  if (!v283)
  {
    goto LABEL_261;
  }

  v284 = [v283 layer];
  [v284 setAllowsGroupBlending:0];

  v285 = *&v1[v273];
  if (!v285)
  {
    goto LABEL_262;
  }

  v286 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v287 = v285;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2D0C, v286, v221);

  v288 = swift_allocObject();
  *(v288 + 16) = xmmword_100EBE270;
  v289 = *&v1[v224];
  if (!v289)
  {
    goto LABEL_263;
  }

  *(v288 + 32) = v289;
  v290 = *&v1[v273];
  if (!v290)
  {
    goto LABEL_264;
  }

  v563 = xmmword_100EBE270;
  *(v288 + 40) = v290;
  v291 = *&v1[v250];
  if (!v291)
  {
    goto LABEL_265;
  }

  *(v288 + 48) = v291;
  v292 = objc_allocWithZone(v599);
  v293 = v291;
  v294 = v290;
  v295 = v289;
  v296 = Array._bridgeToObjectiveC()().super.isa;

  v297 = [v292 initWithArrangedSubviews:v296];

  v298 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView;
  v299 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView] = v297;
  v300 = v297;

  v301 = [v608 blackColor];
  [v300 setTintColor:v301];

  v302 = *&v1[v298];
  if (!v302)
  {
    goto LABEL_266;
  }

  [v302 setTranslatesAutoresizingMaskIntoConstraints:0];
  v303 = *&v1[v298];
  if (!v303)
  {
    goto LABEL_267;
  }

  [v303 setSemanticContentAttribute:1];
  v304 = *&v1[v298];
  if (!v304)
  {
    goto LABEL_268;
  }

  [v304 setAxis:0];
  v305 = *&v1[v298];
  if (!v305)
  {
    goto LABEL_269;
  }

  [v305 setDistribution:2];
  v306 = *&v1[v298];
  if (!v306)
  {
    goto LABEL_270;
  }

  [v306 setAlignment:3];
  v307 = *&v1[v298];
  if (!v307)
  {
    goto LABEL_271;
  }

  v308 = v307;
  v309 = String._bridgeToObjectiveC()();
  [v308 _setLayoutDebuggingIdentifier:v309];

  type metadata accessor for VolumeSlider();
  v310 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v311 = UIView.forAutolayout.getter();

  v312 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider];
  v560 = OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider] = v311;
  v313 = v311;

  v314 = String._bridgeToObjectiveC()();
  [v313 _setLayoutDebuggingIdentifier:v314];

  v315 = [objc_allocWithZone(MPRouteLabel) init];
  v316 = UIView.forAutolayout.getter();

  v317 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel;
  v318 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel] = v316;
  v319 = v316;

  [v319 setTextAlignment:1];
  v320 = *&v1[v317];
  if (!v320)
  {
    goto LABEL_272;
  }

  sub_100009F78(0, &qword_101183A00);
  v321 = v320;
  v322 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v321 setFont:v322];

  v323 = *&v1[v606];
  if (!v323)
  {
    goto LABEL_273;
  }

  v559 = v298;
  if (!*&v1[v317])
  {
    goto LABEL_274;
  }

  [v323 addSubview:?];
  v74 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  v324 = *(*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v325 = String._bridgeToObjectiveC()();
  v599 = objc_opt_self();
  v326 = [(objc_class *)v599 systemImageNamed:v325];

  if (!v326)
  {
    goto LABEL_275;
  }

  [v324 setAccessoryImage:v326];

  [*(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton) setRouteLabelHidden:1];
  v327 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v328 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v327 setFont:v328];

  [*(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton) setExclusiveTouch:1];
  [*(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton) setHitRectInsets:{-10.0, -28.0, -20.0, -28.0}];
  v329 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v330 = String._bridgeToObjectiveC()();
  [v329 _setLayoutDebuggingIdentifier:v330];

  v331 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v332 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v333 = sub_100009F78(0, &qword_101183B48);
  v334 = v331;
  ControlEventHandling<>.on(_:handler:)(1, sub_1001D2D14, v332, v333);

  v335 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v336 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v337 = v335;
  ControlEventHandling<>.on(_:handler:)(128, sub_1001D2D1C, v336, v333);

  v338 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_routeButton);
  v339 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v340 = v338;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2D24, v339, v333);

  v341 = *(*&v1[v74] + OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_sharePlayTogetherButton);
  v342 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v343 = v341;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2D2C, v342, v600);

  v344 = sub_1001BEF20();
  v345 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v614 = sub_1001D2D5C;
  v615 = v345;
  aBlock = _NSConcreteStackBlock;
  v611 = 1107296256;
  v612 = sub_10002BC98;
  v613 = &unk_10109FEC0;
  v346 = _Block_copy(&aBlock);

  [v344 setDismissHandler:v346];
  _Block_release(v346);

  v347 = [objc_allocWithZone(MPButton) init];
  v102 = OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton;
  v348 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton] = v347;
  v349 = v347;

  if (!v349)
  {
    goto LABEL_276;
  }

  [v349 setTranslatesAutoresizingMaskIntoConstraints:0];

  v350 = *(&v102->name + v1);
  if (!v350)
  {
    goto LABEL_277;
  }

  v600 = v74;
  v351 = v350;
  [v603 easyTouchDefaultHitRectInsets];
  [v351 setHitRectInsets:?];

  v352 = *(&v102->name + v1);
  if (!v352)
  {
    goto LABEL_278;
  }

  [v352 setAdjustsImageWhenDisabled:0];
  v353 = sub_1001B0138();
  v106 = v353;
  v354 = v353 + 64;
  v355 = 1 << *(v353 + 32);
  v356 = -1;
  if (v355 < 64)
  {
    v356 = ~(-1 << v355);
  }

  v108 = v356 & *(v353 + 64);
  v357 = (v355 + 63) >> 6;

  v358 = 0;
  if (v108)
  {
    while (1)
    {
      v109 = v358;
LABEL_105:
      v359 = *(&v102->name + v1);
      if (!v359)
      {
        break;
      }

      v360 = __clz(__rbit64(v108));
      v108 &= v108 - 1;
      [v359 setImage:*(v106[7] + ((v109 << 9) | (8 * v360))) forState:*(v106[6] + ((v109 << 9) | (8 * v360)))];
      v358 = v109;
      if (!v108)
      {
        goto LABEL_102;
      }
    }

    __break(1u);
    goto LABEL_197;
  }

  while (1)
  {
LABEL_102:
    v109 = v358 + 1;
    if (__OFADD__(v358, 1))
    {
      __break(1u);
      goto LABEL_194;
    }

    if (v109 >= v357)
    {
      break;
    }

    v108 = *(v354 + 8 * v109);
    ++v358;
    if (v108)
    {
      goto LABEL_105;
    }
  }

  v361 = *(&v102->name + v1);
  if (!v361)
  {
    goto LABEL_279;
  }

  v362 = qword_10117F2C8;
  v363 = v361;
  if (v362 != -1)
  {
    swift_once();
  }

  v364 = type metadata accessor for UIView.Corner();
  v365 = sub_1000060E4(v364, qword_101183288);
  v366 = *(v364 - 8);
  v367 = *(v366 + 16);
  v368 = v602;
  v367(v602, v365, v364);
  v558 = *(v366 + 56);
  v558(v368, 0, 1, v364);
  UIView.corner.setter();

  v369 = *(&v102->name + v1);
  if (!v369)
  {
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  v555 = v367;
  v556 = v366 + 16;
  v557 = v365;
  v370 = v369;
  v371 = String._bridgeToObjectiveC()();
  [v370 _setLayoutDebuggingIdentifier:v371];

  v372 = *(&v102->name + v1);
  if (!v372)
  {
    goto LABEL_281;
  }

  v373 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v374 = sub_100009F78(0, &qword_101183B50);
  v375 = v372;
  v554 = v374;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2D64, v373, v374);

  v376 = [objc_allocWithZone(MPButton) init];
  v377 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton;
  v378 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton] = v376;
  v379 = v376;

  if (!v379)
  {
    goto LABEL_282;
  }

  [v379 setTranslatesAutoresizingMaskIntoConstraints:0];

  v380 = *&v1[v377];
  if (!v380)
  {
    goto LABEL_283;
  }

  v381 = v380;
  [v603 easyTouchDefaultHitRectInsets];
  [v381 setHitRectInsets:?];

  v382 = *&v1[v377];
  if (!v382)
  {
    goto LABEL_284;
  }

  v383 = v382;
  v384 = String._bridgeToObjectiveC()();
  v385 = [(objc_class *)v599 systemImageNamed:v384];

  if (v385)
  {
    v386 = sub_1001B00B4();
    v387 = [v385 imageWithSymbolConfiguration:v386];
  }

  else
  {
    v387 = 0;
  }

  v388 = v608;
  [v383 setImage:v387 forState:0];

  v389 = *&v1[v377];
  if (!v389)
  {
    goto LABEL_285;
  }

  v390 = v602;
  v555(v602, v557, v364);
  v558(v390, 0, 1, v364);
  v391 = v389;
  UIView.corner.setter();

  v392 = *&v1[v377];
  if (!v392)
  {
    goto LABEL_286;
  }

  v393 = v392;
  v394 = String._bridgeToObjectiveC()();
  [v393 _setLayoutDebuggingIdentifier:v394];

  v395 = *&v1[v377];
  if (!v395)
  {
    goto LABEL_287;
  }

  v396 = v395;
  v397 = [v388 clearColor];
  [v396 setBackgroundColor:v397];

  v398 = *&v1[v377];
  if (!v398)
  {
    goto LABEL_288;
  }

  v399 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v400 = v398;
  ControlEventHandling<>.on(_:handler:)(64, sub_1001D2D6C, v399, v554);

  sub_1001C3DB8();
  sub_1001C36E8();
  v401 = swift_allocObject();
  *(v401 + 16) = v563;
  v402 = *(&v102->name + v1);
  if (!v402)
  {
    goto LABEL_289;
  }

  v403 = v401;
  v404 = *&v1[v600];
  *(v401 + 32) = v402;
  *(v401 + 40) = v404;
  v405 = *&v1[v377];
  if (!v405)
  {
    goto LABEL_290;
  }

  type metadata accessor for PassThroughStackView();
  *(v403 + 48) = v405;
  v406 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v407 = v404;
  v408 = v405;
  v409 = v402;
  v410 = Array._bridgeToObjectiveC()().super.isa;

  v411 = [v406 initWithArrangedSubviews:v410];

  v412 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView;
  v413 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView] = v411;
  v414 = v411;

  [v414 setTranslatesAutoresizingMaskIntoConstraints:0];
  v415 = *&v1[v412];
  if (!v415)
  {
LABEL_291:
    __break(1u);
LABEL_292:
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    __break(1u);
LABEL_295:
    __break(1u);
LABEL_296:
    __break(1u);
LABEL_297:
    __break(1u);
LABEL_298:
    __break(1u);
LABEL_299:
    __break(1u);
LABEL_300:
    __break(1u);
LABEL_301:
    __break(1u);
LABEL_302:
    __break(1u);
LABEL_303:
    __break(1u);
LABEL_304:
    __break(1u);
LABEL_305:
    __break(1u);
LABEL_306:
    __break(1u);
LABEL_307:
    __break(1u);
LABEL_308:
    __break(1u);
LABEL_309:
    __break(1u);
LABEL_310:
    __break(1u);
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    __break(1u);
LABEL_318:
    __break(1u);
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
LABEL_322:
    __break(1u);
LABEL_323:
    __break(1u);
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
LABEL_326:
    __break(1u);
LABEL_327:
    __break(1u);
LABEL_328:
    __break(1u);
LABEL_329:
    __break(1u);
LABEL_330:
    __break(1u);
LABEL_331:
    __break(1u);
LABEL_332:
    __break(1u);
LABEL_333:
    __break(1u);
    goto LABEL_334;
  }

  [v415 setLayoutMarginsRelativeArrangement:1];
  v416 = *&v1[v412];
  if (!v416)
  {
    goto LABEL_292;
  }

  [v416 setLayoutMargins:{12.0, 12.0, 12.0, 12.0}];
  v417 = *&v1[v412];
  if (!v417)
  {
    goto LABEL_293;
  }

  [v417 setAxis:0];
  v418 = *&v1[v412];
  if (!v418)
  {
    goto LABEL_294;
  }

  [v418 setDistribution:3];
  v419 = *&v1[v412];
  if (!v419)
  {
    goto LABEL_295;
  }

  [v419 setAlignment:3];
  v420 = *&v1[v412];
  if (!v420)
  {
    goto LABEL_296;
  }

  [v420 setSpacing:20.0];
  v421 = *&v1[v412];
  if (!v421)
  {
    goto LABEL_297;
  }

  v422 = [v421 layer];
  [v422 setAllowsGroupBlending:0];

  v423 = *&v1[v412];
  if (!v423)
  {
    goto LABEL_298;
  }

  v424 = v423;
  v425 = String._bridgeToObjectiveC()();
  [v424 _setLayoutDebuggingIdentifier:v425];

  v426 = [objc_allocWithZone(UIImageView) init];
  v427 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
  v428 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView] = v426;
  v429 = v426;

  if (!v429)
  {
    goto LABEL_299;
  }

  [v429 setTranslatesAutoresizingMaskIntoConstraints:0];

  v430 = *&v1[v427];
  if (!v430)
  {
    goto LABEL_300;
  }

  v431 = qword_10117F8F8;
  v432 = v430;
  if (v431 != -1)
  {
    swift_once();
  }

  [v432 setBackgroundColor:qword_101219090];

  v433 = *&v1[v427];
  if (!v433)
  {
    goto LABEL_301;
  }

  [v433 setContentMode:4];
  v434 = *&v1[v427];
  if (!v434)
  {
    goto LABEL_302;
  }

  v435 = [v434 layer];
  [v435 setCornerRadius:10.0];

  v436 = *&v1[v427];
  if (!v436)
  {
    goto LABEL_303;
  }

  [v436 setHidden:1];
  v437 = *&v1[v427];
  if (!v437)
  {
    goto LABEL_304;
  }

  v438 = v437;
  v439 = String._bridgeToObjectiveC()();
  [v438 _setLayoutDebuggingIdentifier:v439];

  sub_1001C355C();
  v440 = [objc_opt_self() currentDevice];
  if (![v440 userInterfaceIdiom])
  {
    sub_10010FC20(&qword_101183B78);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    UIScreen.Dimensions.size.getter(COERCE_DOUBLE(1));
    *(inited + 56) = &type metadata for NotificationTrigger;
    *(inited + 64) = &protocol witness table for NotificationTrigger;
    *(inited + 32) = v442;
    *(inited + 40) = v443;
    v444 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v445 = swift_allocObject();
    *(v445 + 16) = v444;
    *(v445 + 24) = v440;
    type metadata accessor for Whitetail.Binding();
    swift_allocObject();
    v446 = UIDeviceOrientationDidChangeNotification;

    v447 = v440;
    Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1001D2E14, v445);

    v448 = OBJC_IVAR___MusicNowPlayingControlsViewController_bindings;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v1[v448] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v448] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v449 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController;
  v450 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController];
  v451 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v452 = *(v450 + 88);
  *(v450 + 88) = sub_1001D2D74;
  *(v450 + 96) = v451;

  sub_100020438(v452);

  v453 = *(*&v1[v449] + 88);
  if (v453)
  {

    v453(v454);
    sub_100020438(v453);
  }

  v455 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v456 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer;
  v457 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkTapGestureRecognizer] = v455;
  v458 = v455;

  if (!v458)
  {
    goto LABEL_305;
  }

  [v458 setDelegate:v1];

  v459 = [v1 view];
  if (!v459)
  {
    goto LABEL_306;
  }

  if (!*&v1[v456])
  {
    goto LABEL_307;
  }

  v460 = v459;
  [v459 addGestureRecognizer:?];

  v461 = *&v1[v456];
  if (!v461)
  {
    goto LABEL_308;
  }

  v462 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v463 = sub_100009F78(0, &qword_101183B58);

  v464 = v461;
  UIGestureRecognizerHandling<>.addHandler(_:)(sub_1001D2D7C, v462, v463);

  v465 = [objc_allocWithZone(UIPinchGestureRecognizer) init];
  v466 = OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer;
  v467 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_videoPinchGestureRecognizer] = v465;
  v468 = v465;

  if (!v468)
  {
    goto LABEL_309;
  }

  [v468 setDelegate:v1];

  v469 = [v1 view];
  if (!v469)
  {
    goto LABEL_310;
  }

  v470 = v606;
  if (!*&v1[v466])
  {
    goto LABEL_311;
  }

  v471 = v469;
  [v469 addGestureRecognizer:?];

  v472 = *&v1[v466];
  if (!v472)
  {
    goto LABEL_312;
  }

  v473 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v474 = sub_100009F78(0, &unk_101183B60);

  v475 = v472;
  UIGestureRecognizerHandling<>.addHandler(_:)(sub_1001D2D84, v473, v474);

  [*&v607[v1] addSubview:*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView]];
  v476 = v597;
  v477 = v598;
  v478 = *&v1[v597];
  v480 = v564;
  v479 = v565;
  if (!v478)
  {
    goto LABEL_313;
  }

  if (!*&v1[v566])
  {
    goto LABEL_314;
  }

  [v478 addSubview:?];
  v481 = *&v1[v476];
  if (!v481)
  {
    goto LABEL_315;
  }

  v602 = v440;
  if (!*&v1[v479])
  {
    goto LABEL_316;
  }

  [v481 addSubview:?];
  v482 = *&v1[v470];
  v483 = v605;
  if (!v482)
  {
    goto LABEL_317;
  }

  [v482 addSubview:*&v1[v480]];
  v484 = *&v1[v470];
  if (!v484)
  {
    goto LABEL_318;
  }

  [v484 addSubview:*&v1[v562]];
  v485 = *&v1[v470];
  if (!v485)
  {
    goto LABEL_319;
  }

  if (!*&v1[v560])
  {
    goto LABEL_320;
  }

  [v485 addSubview:?];
  v486 = *&v1[v470];
  if (!v486)
  {
    goto LABEL_321;
  }

  if (!*&v1[v559])
  {
    goto LABEL_322;
  }

  [v486 addSubview:?];
  v487 = *&v1[v470];
  if (!v487)
  {
    goto LABEL_323;
  }

  if (!*&v1[v427])
  {
    goto LABEL_324;
  }

  [v487 addSubview:?];
  v488 = v575;
  if (!*&v1[v476])
  {
    goto LABEL_325;
  }

  [*&v1[v575] addSubview:?];
  if (!*&v1[v470])
  {
    goto LABEL_326;
  }

  [*&v1[v488] addSubview:?];
  if (!*&v1[v483])
  {
    goto LABEL_327;
  }

  [*&v1[v488] addSubview:?];
  if (!*&v1[v561])
  {
    goto LABEL_328;
  }

  [*&v1[v488] addSubview:?];
  v489 = [v1 traitCollection];
  v490 = [v489 userInterfaceIdiom];

  if (!v490)
  {
    v492 = v572;
    if (!*&v1[v412])
    {
      goto LABEL_336;
    }

    [*&v1[v488] addSubview:?];
    if (!*&v1[v477])
    {
      goto LABEL_337;
    }

    [*&v1[v488] addSubview:?];
    v499 = [v1 view];
    if (!v499)
    {
      goto LABEL_338;
    }

    v498 = v499;
    v497 = *&v1[v488];
    goto LABEL_182;
  }

  v491 = [v1 view];
  v492 = v572;
  if (!v491)
  {
    goto LABEL_331;
  }

  v493 = v491;
  [v491 addSubview:*&v1[v488]];

  v494 = [v1 view];
  if (!v494)
  {
    goto LABEL_332;
  }

  if (!*&v1[v477])
  {
    goto LABEL_333;
  }

  v495 = v494;
  [v494 addSubview:?];

  v496 = [v1 view];
  if (v496)
  {
    v497 = *&v1[v412];
    if (!v497)
    {
      goto LABEL_335;
    }

    v498 = v496;
LABEL_182:
    [v498 addSubview:v497];

    v500 = [v1 view];
    if (!v500)
    {
      goto LABEL_329;
    }

    if (*&v1[v492])
    {
      v501 = v500;
      [v500 addSubview:?];

      sub_1001C6E7C();
      sub_1001B040C();
      v502 = [objc_allocWithZone(type metadata accessor for NowPlayingContentView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v503 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
      *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView] = v502;
      v504 = v502;
      sub_10019B83C(v503);

      if (qword_10117F5F8 != -1)
      {
        swift_once();
      }

      v505 = qword_101218AC8;
      v506 = v576;
      (*(*qword_101218AC8 + 504))();
      v609 = sub_100009F78(0, &qword_101182960);
      v507 = static OS_dispatch_queue.main.getter();
      aBlock = v507;
      v608 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v508 = *(v608 - 1);
      v509 = *(v508 + 56);
      v606 = v508 + 56;
      v607 = v509;
      v510 = v601;
      (v509)(v601, 1, 1, v608);
      v604 = &protocol conformance descriptor for Published<A>.Publisher;
      sub_100020674(&unk_101189E00, &unk_101189DD0);
      v605 = sub_10001C070(&qword_101184920, &qword_101182960);
      v512 = v578;
      v511 = v579;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v510, &qword_101182140);

      (*(v577 + 8))(v506, v512);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      *&v603 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
      sub_100020674(&qword_101183B70, &qword_101183B30);
      v513 = v581;
      Publisher<>.sink(receiveValue:)();

      (*(v580 + 8))(v511, v513);
      v514 = OBJC_IVAR___MusicNowPlayingControlsViewController_playerSubscriptions;
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v516 = v582;
      (*(*v505 + 552))(v515);
      v517 = static OS_dispatch_queue.main.getter();
      aBlock = v517;
      (v607)(v510, 1, 1, v608);
      sub_100020674(&unk_101183A50, &qword_101183A40);
      v518 = v584;
      v519 = v585;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v510, &qword_101182140);

      (*(v583 + 8))(v516, v518);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_101183A60, &qword_101183A48);
      v520 = v587;
      Publisher<>.sink(receiveValue:)();

      (*(v586 + 8))(v519, v520);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v522 = v588;
      (*(*v505 + 648))(v521);
      v523 = static OS_dispatch_queue.main.getter();
      aBlock = v523;
      (v607)(v510, 1, 1, v608);
      sub_100020674(&qword_101184280, &unk_101182130);
      v525 = v590;
      v524 = v591;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v510, &qword_101182140);

      (*(v589 + 8))(v522, v525);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&unk_101182180, &unk_101183B20);
      v526 = v593;
      Publisher<>.sink(receiveValue:)();

      (*(v592 + 8))(v524, v526);
      swift_beginAccess();
      v604 = v514;
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_10010FC20(&qword_101183B78);
      v527 = swift_initStackObject();
      v528 = 1;
      v603 = xmmword_100EBC6B0;
      *(v527 + 16) = xmmword_100EBC6B0;
      if (qword_10117FCC8 != -1)
      {
        swift_once();
      }

      v529 = qword_101219538;
      UIScreen.Dimensions.size.getter(*&v528);
      *(v527 + 56) = &type metadata for NotificationTrigger;
      *(v527 + 64) = &protocol witness table for NotificationTrigger;
      *(v527 + 32) = v530;
      *(v527 + 40) = v531;
      v532 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for Whitetail.Binding();
      swift_allocObject();
      v533 = v529;

      Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v527, 1, sub_1001D2DA4, v532);

      v534 = OBJC_IVAR___MusicNowPlayingControlsViewController_bindings;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v534] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v534] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v535 = swift_initStackObject();
      v536 = *&v603;
      *(v535 + 16) = v603;
      UIScreen.Dimensions.size.getter(v536);
      *(v535 + 56) = &type metadata for NotificationTrigger;
      *(v535 + 64) = &protocol witness table for NotificationTrigger;
      *(v535 + 32) = v537;
      *(v535 + 40) = v538;
      v539 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_allocObject();
      v540 = MPMediaLibraryDidChangeNotification;

      Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v535, 1, sub_1001D2DD4, v539);

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v1[v534] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v534] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v541 = [objc_opt_self() defaultCenter];
      v542 = static MAMusicHaptics.enabledStatusDidChangeNotification.getter();
      v543 = v574;
      NSNotificationCenter.publisher(for:object:)();

      v544 = static OS_dispatch_queue.main.getter();
      aBlock = v544;
      v545 = v601;
      (v607)(v601, 1, 1, v608);
      sub_1001CF0F0(&qword_101183B80, &type metadata accessor for NSNotificationCenter.Publisher);
      v546 = v594;
      v547 = v571;
      Publisher.receive<A>(on:options:)();
      sub_1000095E8(v545, &qword_101182140);

      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_101183B88, &unk_101183B10);
      v548 = v573;
      Publisher<>.sink(receiveValue:)();

      (*(v595 + 8))(v546, v548);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      v549 = [objc_opt_self() sharedInstance];
      v550 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v614 = sub_1001D2E0C;
      v615 = v550;
      aBlock = _NSConcreteStackBlock;
      v611 = 1107296256;
      v612 = sub_10002BC98;
      v613 = &unk_10109FEE8;
      v551 = _Block_copy(&aBlock);

      [v549 registerUpdateBlock:v551 forRetrieveSelector:Selector.init(_:)() withListener:v1];
      _Block_release(v551);

      sub_1001A512C();
      v552 = [objc_opt_self() sharedMonitor];
      [v552 registerObserver:v1];

      (*(v596 + 8))(v543, v547);
      return;
    }

    goto LABEL_330;
  }

LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
}

void sub_1001A1E80()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1001A1EE4()
{
  v0 = type metadata accessor for MetricsPageProperties();
  __chkstk_darwin(v0 - 8);
  v2 = &v20[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_10010FC20(&qword_101183A20);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  v6 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_1001BE170(v2);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x41747865746E6F63, 0xED00006E6F697463, 5, 28, v5, 0, 0, 6, v8, 0, 0, 0xFF00u, v2, 0);
    v12 = *MetricsReportingController.shared.unsafeMutableAddressor();
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
    (*((swift_isaMask & *v12) + 0xB8))(v8, v13, v15, v17 & 1, v18, *(v16 + v19));

    return sub_1001D1908(v8, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

void sub_1001A21C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (((1 << sub_1001A8B04()) & 0x399) == 0)
    {
      v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState;
      if (v1[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState] - 1 <= 1)
      {
        v3 = objc_opt_self();
        v4 = [v3 sharedInstance];
        v5 = [v3 sharedInstance];
        v6 = [v5 hapticMusicActive];

        [v4 setHapticMusicActive:v6 ^ 1];
        if (v1[v2])
        {
          v7 = [v3 sharedInstance];
          v8 = [v7 hapticMusicActive];

          if (v8)
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }

          v1[v2] = v9;
        }

        [v1 updatePlayingItemAudioTraitButton];
        goto LABEL_33;
      }

      v10 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
      if (v10)
      {
        v11 = OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure;
        v12 = v10[OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure];
        v10[OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure] = 1;
        if ((v12 & 1) == 0)
        {
          v13 = v10;
          [v13 alpha];
          if (v14 != 0.0 && ([v13 isHidden] & 1) == 0)
          {
            v15 = [v13 isHighlighted];
            v16 = 0.5;
            if ((v15 & 1) == 0)
            {
              v16 = 1.0;
              if (v10[v11])
              {
                v16 = 0.5;
              }
            }

            [v13 setAlpha:v16];
          }
        }

        if (!*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying])
        {
          goto LABEL_33;
        }

        v17 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying] tracklist];
        v18 = [v17 playingItem];

        if (!v18)
        {
          goto LABEL_33;
        }

        v19 = [v18 musicAudio];

        if (!v19)
        {
          goto LABEL_33;
        }

        swift_getObjectType();
        v20 = [v19 activeFormat];
        MPCPlayerAudioFormat.inputDetails.getter();
        v22 = v21;

        v43[0] = v22;
        v23 = 0;
        v43[1] = sub_100119638();
        v43[2] = v24;
        v25 = _swiftEmptyArrayStorage;
LABEL_23:
        v26 = &v43[2 * v23];
        while (++v23 != 3)
        {
          v27 = v26 + 2;
          v28 = *v26;
          v26 += 2;
          if (v28)
          {
            v29 = *(v27 - 3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_100498B7C(0, *(v25 + 2) + 1, 1, v25);
            }

            v31 = *(v25 + 2);
            v30 = *(v25 + 3);
            if (v31 >= v30 >> 1)
            {
              v25 = sub_100498B7C((v30 > 1), v31 + 1, 1, v25);
            }

            *(v25 + 2) = v31 + 1;
            v32 = &v25[16 * v31];
            *(v32 + 4) = v29;
            *(v32 + 5) = v28;
            goto LABEL_23;
          }
        }

        sub_10010FC20(&qword_1011815E0);
        swift_arrayDestroy();
        sub_10010FC20(&qword_101183BC8);
        sub_100020674(&unk_101183BD0, &qword_101183BC8);
        BidirectionalCollection<>.joined(separator:)();

        swift_unknownObjectRelease();
        objc_allocWithZone(type metadata accessor for AudioTraitDisclosureViewController());

        v33 = sub_10053B1C8();
        [v33 setOverrideUserInterfaceStyle:{2, v25}];
        v34 = [v33 view];
        if (v34)
        {
          v35 = v34;

          v36 = [objc_opt_self() labelColor];
          v37 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
          v38 = [v36 resolvedColorWithTraitCollection:v37];

          [v35 setTintColor:v38];
          v39 = swift_allocObject();
          *(v39 + 16) = v1;
          v40 = &v33[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
          v41 = *&v33[OBJC_IVAR____TtC5Music34AudioTraitDisclosureViewController_dismissHandler];
          *v40 = sub_1001D3074;
          v40[1] = v39;
          v42 = v1;
          sub_100020438(v41);
          [v42 presentViewController:v33 animated:1 completion:0];

          v1 = v33;
          goto LABEL_33;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_33:
  }
}

void sub_1001A2758(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure;
    v3 = v1[OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure];
    v1[OBJC_IVAR____TtC5Music16AudioTraitButton_isShowingDisclosure] = 0;
    if (v3 == 1)
    {
      v7 = v1;
      [v7 alpha];
      if (v4 != 0.0 && ([v7 isHidden] & 1) == 0)
      {
        v5 = [v7 isHighlighted];
        v6 = 0.5;
        if ((v5 & 1) == 0)
        {
          v6 = 1.0;
          if (v1[v2])
          {
            v6 = 0.5;
          }
        }

        [v7 setAlpha:v6];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001A286C(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1001A2904, v3, v2);
}

uint64_t sub_1001A2904()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.ShuffleCommand;
  *(v0 + 48) = &protocol witness table for Player.ShuffleCommand;
  *(v0 + 16) = 0;
  *(v0 + 80) = &_s18NowPlayingUISourceON;
  *(v0 + 88) = &off_10109D788;
  *(v0 + 56) = 0;
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_1001A2A1C;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

uint64_t sub_1001A2A1C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001D3160;
  }

  else
  {
    v4[17] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001D3260;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001A2B98(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1001A2C30, v3, v2);
}

uint64_t sub_1001A2C30()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = &type metadata for Player.RepeatCommand;
  *(v0 + 48) = &protocol witness table for Player.RepeatCommand;
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

uint64_t sub_1001A2D48(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001A2EFC;
  }

  else
  {
    v4[17] = a1;
    sub_1000095E8((v4 + 7), &unk_101183910);
    sub_10000959C((v4 + 2));
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_1001A2E90;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001A2E90()
{

  **(v0 + 96) = *(v0 + 136);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001A2EFC()
{

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  **(v0 + 96) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_1001A2F84(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *a3;
    v10 = *(Strong + *a3);
    if (v10)
    {
      if ([v10 isHolding])
      {
LABEL_12:

        return;
      }

      v11 = *&v8[*a4 + 16];
      if (v11)
      {
        v12 = *(v11 + 16);

        if (v12 && (v13 = sub_1006CCC5C(0), (v14 & 1) != 0))
        {
          v15 = *(*(v11 + 56) + 16 * v13);

          v21 = a1;
          v15(&v21);
        }

        else
        {
        }
      }

      v16 = *&v8[v9];
      if (v16)
      {
        v17 = *&v16[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v17)
        {
          v18 = *((swift_isaMask & *v17) + 0x110);
          v19 = v16;
          v20 = v17;
          v18();

          v8 = v19;
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1001A30F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3 + 16);
    if (v9)
    {
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_1006CCC5C(1), (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + 16 * v11);

        v19 = a1;
        v13(&v19);

        v14 = *&v8[*a4];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        if (v15)
        {
          v16 = *((swift_isaMask & *v15) + 0x130);
          v17 = v14;
          v18 = v15;
          v16(0.5);

          v8 = v17;
        }
      }

      else
      {
      }
    }
  }
}

void sub_1001A324C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3 + 16);
    if (v9)
    {
      v10 = *(v9 + 16);

      if (v10 && (v11 = sub_1006CCC5C(2), (v12 & 1) != 0))
      {
        v13 = *(*(v9 + 56) + 16 * v11);

        v19 = a1;
        v13(&v19);
      }

      else
      {
      }
    }

    v14 = *&v8[*a4];
    if (v14)
    {
      v15 = *&v14[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v15)
      {
        v16 = *((swift_isaMask & *v15) + 0x138);
        v17 = v14;
        v18 = v15;
        v16();

        v8 = v17;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1001A33A0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButtonConfiguration + 16);
    v4 = Strong;

    if (v3)
    {
      if (*(v3 + 16) && (v5 = sub_1006CCC5C(0), (v6 & 1) != 0))
      {
        v7 = *(*(v3 + 56) + 16 * v5);

        v8 = a1;
        v7(&v8);
      }

      else
      {
      }
    }
  }
}

void sub_1001A3470(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1001BEF20();
    v5 = [a1 accessoryImageView];
    [v4 setSourceView:v5];

    v6 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls;
    v7 = [*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___mediaControls] configuration];
    v8 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
    v9 = [a1 accessoryImageView];
    v10 = sub_100460AE8(v9, 1);
    v12 = v11;
    v14 = v13;
    v16 = v15;

    [v7 setSourceRect:{v10, v12, v14, v16}];
    v17 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 24];
    if (v17 <= *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 40])
    {
      v17 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 40];
    }

    [*&v3[v6] setPreferredWidth:v17];
    [*&v3[v6] startPrewarming];
  }
}

void sub_1001A35F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001BEF20();

    [v2 stopPrewarming];
  }
}

void sub_1001A3664()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1001BEF20();
    [v2 present];

    v1[OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker] = 1;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer;
      v6 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_lyricsFullScreenTimer);
      if (v6)
      {
        v7 = v6;
        [v7 invalidate];
      }

      v1 = *(v4 + v5);
      *(v4 + v5) = 0;
      swift_unknownObjectRelease();
    }
  }
}

void sub_1001A3738()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_isPresentingRoutePicker) = 0;
    if (*(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation))
    {
      *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_needsSharePlayTogetherTooltipPresentation) = 0;
      sub_1001C16E0();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1005C4F50(4.0);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_1001A37E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton;
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton);
    if (v3)
    {
      v4 = v3;
      [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];

      v5 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
      if (v5)
      {
        [v5 setSelected:0];
        v6 = *&v1[v2];
        if (v6)
        {
          v7 = [v6 isSelected];
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            if (v8)
            {
              sub_1005E8180();
LABEL_10:
              swift_unknownObjectRelease();
            }
          }

          else if (v8)
          {
            sub_1005E8440();
            goto LABEL_10;
          }

          sub_1001C3DB8();
          sub_1001C30CC();
          sub_1001C36E8();

          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_1001A38FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton;
    v3 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton);
    if (v3)
    {
      v4 = v3;
      [v4 setSelected:{objc_msgSend(v4, "isSelected") ^ 1}];

      v5 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
      if (v5)
      {
        [v5 setSelected:0];
        v6 = *&v1[v2];
        if (v6)
        {
          v7 = [v6 isSelected];
          v8 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            if (v8)
            {
              sub_1005E8898();
LABEL_10:
              swift_unknownObjectRelease();
            }
          }

          else if (v8)
          {
            sub_1005E8AD8();
            goto LABEL_10;
          }

          sub_1001C30CC();
          sub_1001C36E8();
          sub_1001C3DB8();

          return;
        }

LABEL_15:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }
}

void sub_1001A3A18(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([a2 orientation] - 1 <= 3 && sub_1001D2E1C(objc_msgSend(a2, "orientation")) && !*&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput])
    {
      v5 = *&v4[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
      if (v5)
      {
        if (*(v5 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext))
        {
          v6 = sub_1001AA510();
          v7 = [v6 contextMenuInteraction];

          [v7 dismissMenu];
          sub_1001C2854();
        }
      }
    }
  }
}

uint64_t sub_1001A3B18()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsController);
    v2 = v1[2];
    v3 = v1[3];
    v5 = v1[4];
    v4 = v1[5];
    v6 = v1[6];
    v7 = v1[7];
    v8 = v1[8];
    v9 = v1[9];
    v10 = v1[10];
    v11 = result;
    sub_10010FC20(&qword_101183BB0);
    v12 = swift_allocObject();
    v144 = v3;
    v145 = v2;
    *(v12 + 32) = v2;
    *(v12 + 40) = v3;
    *(v12 + 48) = v5;
    v13 = *&v11[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton];
    *(v12 + 56) = v13;
    *(v12 + 64) = -1;
    *(v12 + 72) = 1;
    v147 = v6;
    v148 = v4;
    *(v12 + 80) = v4;
    *(v12 + 88) = v6;
    v14 = v12;
    *(v12 + 96) = v7;
    v15 = *&v11[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton];
    *(v12 + 104) = v15;
    *(v12 + 112) = 0;
    *(v12 + 120) = 2;
    v150 = v9;
    v151 = v8;
    *(v12 + 128) = v8;
    *(v12 + 136) = v9;
    *(v12 + 144) = v10;
    v152 = v11;
    v16 = *&v11[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton];
    *(v12 + 152) = v16;
    *(v12 + 160) = 1;
    *(v12 + 168) = 1;
    v17 = v16;
    v143 = v5;
    swift_bridgeObjectRetain_n();
    v146 = v7;
    swift_bridgeObjectRetain_n();
    v149 = v10;
    swift_bridgeObjectRetain_n();
    v18 = v13;
    v19 = v15;
    swift_beginAccess();
    v20 = 0;
    v154 = v14;
    while (1)
    {
      v23 = v14 + v20;
      v24 = *(v14 + v20 + 56);
      if (!v24)
      {
        goto LABEL_6;
      }

      v25 = *(v23 + 48);
      if (!v25)
      {
        v30 = *(v23 + 64);
        v31 = *(v23 + 72);
        v32 = &v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
        v34 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
        v33 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
        v181 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
        v182 = v34;
        v183 = v33;
        v36 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
        v35 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
        v37 = *&v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
        v187 = v24[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
        v185 = v36;
        v186 = v35;
        v184 = v37;
        *(v32 + 2) = 0u;
        *(v32 + 3) = 0u;
        *(v32 + 4) = 0u;
        *(v32 + 5) = 0u;
        v32[96] = 0;
        *v32 = 0u;
        *(v32 + 1) = 0u;
        v38 = v24;
        sub_1000095E8(&v181, &qword_101183BC0);
        v39 = *(v32 + 2);
        v40 = *v32;
        *&v188.c = *(v32 + 1);
        *&v188.tx = v39;
        *&v188.a = v40;
        v41 = *(v32 + 3);
        v42 = *(v32 + 4);
        v43 = *(v32 + 5);
        v192 = v32[96];
        v190 = v42;
        v191 = v43;
        v189 = v41;
        v44 = *(v32 + 2);
        v155 = *(v32 + 1);
        v156 = v44;
        v45 = *(v32 + 3);
        v46 = *(v32 + 4);
        v47 = *(v32 + 5);
        v160 = v32[96];
        v158 = v46;
        v159 = v47;
        v157 = v45;
        if (*&v188.b)
        {
          v205[0] = *&v188.a;
          v205[3] = v157;
          v205[4] = v158;
          v205[5] = v159;
          v206 = v160;
          v205[1] = v155;
          v205[2] = v156;
          __src = *&v188.a;
          *v178 = *&v188.c;
          v180 = v192;
          *v179 = v190;
          *&v179[16] = v191;
          *&v178[16] = *&v188.tx;
          *&v178[32] = v189;
          sub_1001D2EC0(&__src, &v172);
          [v38 setImage:0 forState:0];
          v48 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView;
          v49 = *&v38[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
          if (v49)
          {
            v50 = *&v38[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
          }

          else
          {
            v71 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
            v174 = v190;
            v175 = v191;
            v176 = v192;
            v172 = v188;
            v173 = v189;
            sub_1001D2EC0(&v172, &v167);
            v72 = CoreAnimationPackageView.init(definition:)(v205);
            v50 = UIView.forAutolayout.getter();

            v49 = 0;
          }

          v73 = *((swift_isaMask & *v50) + 0xA0);
          sub_1000089F8(&v188, &v172, &qword_101183BC0);
          v74 = v49;
          v73(v205);
          v75 = [v38 tintColor];
          (*((swift_isaMask & *v50) + 0xD8))(v75);
          if ([v38 isHighlighted])
          {
            CGAffineTransformMakeScale(&v172, 0.8, 0.8);
          }

          else
          {
            v172.b = 0.0;
            v172.c = 0.0;
            v172.a = 1.0;
            v172.d = 1.0;
            v172.tx = 0.0;
            v172.ty = 0.0;
          }

          [v50 setTransform:&v172];
          v14 = v154;
          v76 = *&v38[v48];
          *&v38[v48] = v50;
          v77 = v50;
          sub_1000525EC(v76);

          sub_1000095E8(&v188, &qword_101183BC0);
        }

        else
        {
          v69 = *&v38[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
          *&v38[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView] = 0;
          sub_1000525EC(v69);
        }

        sub_1007EEB38(v30, v31);
        v79 = v78;
        if (v78)
        {
          v80 = [objc_opt_self() currentTraitCollection];
          [v80 horizontalSizeClass];

          v81 = objc_opt_self();
          if (v31 >= 2)
          {
            v82 = 44.0;
            v83 = 7;
          }

          else
          {
            v82 = 28.0;
            v83 = 5;
          }

          v84 = [v81 configurationWithPointSize:v83 weight:3 scale:v82];
          v85 = String._bridgeToObjectiveC()();

          v79 = [objc_opt_self() systemImageNamed:v85 withConfiguration:v84];
        }

        [v38 setImage:v79 forState:0];

        [v38 setEnabled:0];
        goto LABEL_59;
      }

      v27 = *(v23 + 32);
      v26 = *(v23 + 40);
      v28 = v24;

      [0 horizontalSizeClass];
      if (!v26)
      {
        break;
      }

      if (v26 == 1)
      {
        if (v27 == -1)
        {
          v29 = v200;
          static CAPackageDefinition.skipBackward.getter(v200);
        }

        else
        {
          if (v27 != 1)
          {
            break;
          }

          v29 = v199;
          static CAPackageDefinition.skipForward.getter(v199);
        }
      }

      else
      {
        if (v27)
        {
          if (v27 == 1)
          {
            static CAPackageDefinition.pause.getter(v195);
            v29 = v196;
            CAPackageDefinition.scaled(byX:y:)(v196, 0.92, 0.92);
            v68 = v195;
          }

          else
          {
            static CAPackageDefinition.stop.getter(v197);
            v29 = v198;
            CAPackageDefinition.scaled(byX:y:)(v198, 0.92, 0.92);
            v68 = v197;
          }
        }

        else
        {
          static CAPackageDefinition.play.getter(v193);
          v29 = v194;
          CAPackageDefinition.scaled(byX:y:)(v194, 0.92, 0.92);
          v68 = v193;
        }

        sub_10002A3D4(v68);
      }

      v86 = *(v29 + 11);
      v87 = v29[96];
      v88 = *(v29 + 72);
      v89 = *(v29 + 24);
      v90 = *(v29 + 40);
      v91 = *(v29 + 7);
      v92 = *(v29 + 8);
      v93 = *(v29 + 2);
      __src = *v29;
      *v178 = v93;
      *&v178[8] = v89;
      *&v178[24] = v90;
      *&v178[40] = v91;
      *v179 = v92;
      *&v179[8] = v88;
      *&v179[24] = v86;
      v180 = v87;
      v94 = &v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
      v96 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
      v95 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
      v181 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
      v182 = v96;
      v183 = v95;
      v98 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
      v97 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
      v99 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
      v187 = v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
      v185 = v98;
      v186 = v97;
      v184 = v99;
      memmove(&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition], &__src, 0x61uLL);
      sub_1001D2EC0(&__src, &v188);
      sub_1001D2EC0(&__src, &v188);
      sub_1000095E8(&v181, &qword_101183BC0);
      v100 = *(v94 + 2);
      v101 = *v94;
      *&v188.c = *(v94 + 1);
      *&v188.tx = v100;
      *&v188.a = v101;
      v102 = *(v94 + 3);
      v103 = *(v94 + 4);
      v104 = *(v94 + 5);
      v192 = v94[96];
      v190 = v103;
      v191 = v104;
      v189 = v102;
      v105 = *(v94 + 2);
      v161 = *(v94 + 1);
      v162 = v105;
      v106 = *(v94 + 3);
      v107 = *(v94 + 4);
      v108 = *(v94 + 5);
      v166 = v94[96];
      v164 = v107;
      v165 = v108;
      v163 = v106;
      if (!*&v188.b)
      {
        v112 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
        *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView] = 0;
        sub_1000525EC(v112);
        sub_10002A3D4(&__src);
        sub_10002A3D4(&__src);
LABEL_57:

        goto LABEL_58;
      }

      v201[0] = *&v188.a;
      v201[3] = v163;
      v201[4] = v164;
      v201[5] = v165;
      v202 = v166;
      v201[1] = v161;
      v201[2] = v162;
      v172 = v188;
      v176 = v192;
      v174 = v190;
      v175 = v191;
      v173 = v189;
      sub_1001D2EC0(&v172, &v167);
      [v28 setImage:0 forState:0];
      v109 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView;
      v110 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      if (v110)
      {
        v111 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      }

      else
      {
        v113 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
        v169 = v190;
        v170 = v191;
        v171 = v192;
        v167 = v188;
        v168 = v189;
        sub_1001D2EC0(&v167, &v155);
        v114 = CoreAnimationPackageView.init(definition:)(v201);
        v111 = UIView.forAutolayout.getter();

        v110 = 0;
      }

      v115 = *((swift_isaMask & *v111) + 0xA0);
      sub_1000089F8(&v188, &v167, &qword_101183BC0);
      v116 = v110;
      v115(v201);
      v117 = [v28 tintColor];
      (*((swift_isaMask & *v111) + 0xD8))(v117);
      if ([v28 isHighlighted])
      {
        CGAffineTransformMakeScale(&v167, 0.8, 0.8);
      }

      else
      {
        v167.b = 0.0;
        v167.c = 0.0;
        v167.a = 1.0;
        v167.d = 1.0;
        v167.tx = 0.0;
        v167.ty = 0.0;
      }

      [v111 setTransform:&v167];
      v14 = v154;
      v118 = *&v28[v109];
      *&v28[v109] = v111;
      v119 = v111;
      sub_1000525EC(v118);
      sub_10002A3D4(&__src);
      sub_10002A3D4(&__src);

      sub_1000095E8(&v188, &qword_101183BC0);
LABEL_58:
      v131 = *(v25 + 16);

      [v28 setEnabled:v131 != 0];
      if (v131)
      {
        v21 = v28;
        goto LABEL_4;
      }

LABEL_59:
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v133 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
        v134 = Strong;
        v135 = v133;
        v136 = v24;

        if (v133)
        {
          v137 = [v135 tracklist];

          v138 = [v137 playingItem];
          if (v138)
          {
            v22 = MPCPlayerResponseItem.isLiveContent.getter();

            goto LABEL_5;
          }
        }
      }

      else
      {
        v139 = v24;
      }

LABEL_4:
      v22 = 0;
LABEL_5:
      [v24 setHidden:v22 & 1];

LABEL_6:
      v20 += 48;
      if (v20 == 144)
      {
        swift_setDeallocating();
        sub_10010FC20(&qword_101183BB8);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v140 = &v152[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonConfiguration];
        *v140 = v145;
        *(v140 + 1) = v144;
        *(v140 + 2) = v143;

        v141 = &v152[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButtonConfiguration];
        *v141 = v148;
        *(v141 + 1) = v147;
        *(v141 + 2) = v146;

        v142 = &v152[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButtonConfiguration];
        *v142 = v151;
        *(v142 + 1) = v150;
        *(v142 + 2) = v149;
      }
    }

    v51 = &v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
    v53 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 16];
    v52 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 32];
    v181 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition];
    v182 = v53;
    v183 = v52;
    v55 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 64];
    v54 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 80];
    v56 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 48];
    v187 = v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageDefinition + 96];
    v185 = v55;
    v186 = v54;
    v184 = v56;
    *(v51 + 2) = 0u;
    *(v51 + 3) = 0u;
    *(v51 + 4) = 0u;
    *(v51 + 5) = 0u;
    v51[96] = 0;
    *v51 = 0u;
    *(v51 + 1) = 0u;
    sub_1000095E8(&v181, &qword_101183BC0);
    v57 = *(v51 + 2);
    v58 = *v51;
    *&v188.c = *(v51 + 1);
    *&v188.tx = v57;
    *&v188.a = v58;
    v59 = *(v51 + 3);
    v60 = *(v51 + 4);
    v61 = *(v51 + 5);
    v192 = v51[96];
    v190 = v60;
    v191 = v61;
    v189 = v59;
    v62 = *(v51 + 2);
    v155 = *(v51 + 1);
    v156 = v62;
    v63 = *(v51 + 3);
    v64 = *(v51 + 4);
    v65 = *(v51 + 5);
    v160 = v51[96];
    v158 = v64;
    v159 = v65;
    v157 = v63;
    if (*&v188.b)
    {
      v203[0] = *&v188.a;
      v203[3] = v157;
      v203[4] = v158;
      v203[5] = v159;
      v204 = v160;
      v203[1] = v155;
      v203[2] = v156;
      __src = *&v188.a;
      *v178 = *&v188.c;
      v180 = v192;
      *v179 = v190;
      *&v179[16] = v191;
      *&v178[16] = *&v188.tx;
      *&v178[32] = v189;
      sub_1001D2EC0(&__src, &v172);
      [v28 setImage:0 forState:0];
      v66 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      v153 = OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView;
      if (v66)
      {
        v67 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      }

      else
      {
        v120 = objc_allocWithZone(type metadata accessor for CoreAnimationPackageView());
        v174 = v190;
        v175 = v191;
        v176 = v192;
        v172 = v188;
        v173 = v189;
        sub_1001D2EC0(&v172, &v167);
        v121 = CoreAnimationPackageView.init(definition:)(v203);
        v67 = UIView.forAutolayout.getter();

        v66 = 0;
      }

      v122 = *((swift_isaMask & *v67) + 0xA0);
      sub_1000089F8(&v188, &v172, &qword_101183BC0);
      v123 = v66;
      v122(v203);
      v124 = [v28 tintColor];
      (*((swift_isaMask & *v67) + 0xD8))(v124);
      if ([v28 isHighlighted])
      {
        CGAffineTransformMakeScale(&v172, 0.8, 0.8);
      }

      else
      {
        v172.b = 0.0;
        v172.c = 0.0;
        v172.a = 1.0;
        v172.d = 1.0;
        v172.tx = 0.0;
        v172.ty = 0.0;
      }

      [v67 setTransform:&v172];
      v14 = v154;
      v125 = *&v28[v153];
      *&v28[v153] = v67;
      v126 = v67;
      sub_1000525EC(v125);

      sub_1000095E8(&v188, &qword_101183BC0);
    }

    else
    {
      v70 = *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView];
      *&v28[OBJC_IVAR____TtC5Music25NowPlayingTransportButton_packageView] = 0;
      sub_1000525EC(v70);
    }

    sub_1007EEB38(v27, v26);
    v112 = v127;
    if (v127)
    {
      v128 = [objc_opt_self() currentTraitCollection];
      [v128 horizontalSizeClass];

      v129 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:28.0];
      v130 = String._bridgeToObjectiveC()();

      v112 = [objc_opt_self() systemImageNamed:v130 withConfiguration:v129];
    }

    [v28 setImage:v112 forState:0];
    goto LABEL_57;
  }

  return result;
}

void sub_1001A4B30()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView);
    if (v2 && *(v2 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext) && !*(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput))
    {
      sub_1001C2854();
    }

    else
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        if (v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mode] - 1 <= 1)
        {
          v4 = *(v3 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode) >> 62;
          if (v4)
          {
            if (v4 == 1)
            {
              sub_1005E8440();
            }
          }

          else
          {
            sub_1005E8AD8();
          }
        }

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1001A4C24(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100008FE4(a1, v7);
    sub_10010FC20(&qword_101183BA8);
    sub_100009F78(0, &unk_101183B60);
    if (swift_dynamicCast())
    {
      [v6 scale];
      if (v4 > 1.0)
      {
        v5 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkView];
        if (v5)
        {
          if (*(v5 + OBJC_IVAR____TtC5Music21NowPlayingContentView_videoContext))
          {
            if (!*&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_videoOutput])
            {
              sub_1001C2854();
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

void sub_1001A4D34(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath);
    *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlayingPath) = v1;
    v5 = v1;

    sub_1001D01A8();
  }
}

void sub_1001A4DAC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession);
    *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession) = v1;
    v5 = v1;
    sub_1001C0E68(v4);
  }
}

void sub_1001A4E28(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!v1 || (v4 = [objc_opt_self() shared], v5 = objc_msgSend(v4, "activeUserState"), v4, v5) && (v6 = objc_msgSend(v5, "music"), v5, v6) && (v7 = objc_msgSend(v6, "userProfile"), v6, v7) && (v8 = objc_msgSend(v7, "displayNameAccepted"), v7, v8))
    {
      v9 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_sharePlayTogetherSession];
      if (v9)
      {
LABEL_11:

        return;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = *&v3[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl];
    v11 = &v10[OBJC_IVAR____TtC5Music39NowPlayingRouteSharePlayTogetherControl_style];
    *v11 = v9;
    v11[8] = 1;
    v12 = v10;
    sub_1004604BC();

    goto LABEL_11;
  }
}

void sub_1001A4F80(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1001A4FDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1001A512C();
  }
}

void sub_1001A5030()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState;
    if (*(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState))
    {
      v3 = [objc_opt_self() sharedInstance];
      v4 = [v3 hapticMusicActive];

      if (v4)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }

      v1[v2] = v5;
    }

    sub_1001A512C();
  }
}

id sub_1001A512C()
{
  result = AXDeviceSupportsHapticMusic();
  if (result)
  {
    v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager];
    v3 = [v2 musicHapticsEnabled];
    v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken;
    v5 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken];
    if (v3)
    {
      if (!v5)
      {
        [v2 setTreatCodesAsAdamIDs:1];
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11[4] = sub_1001D2674;
        v11[5] = v6;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_1001A5378;
        v11[3] = &unk_10109F8F8;
        v7 = _Block_copy(v11);

        v8 = [v2 addStatusObserver:v7];
        _Block_release(v7);
        *&v0[v4] = v8;
LABEL_7:
        swift_unknownObjectRelease();
        return [v0 updatePlayingItemAudioTraitButton];
      }
    }

    else if (!v5)
    {
      return [v0 updatePlayingItemAudioTraitButton];
    }

    swift_unknownObjectRetain();
    if (([v2 musicHapticsEnabled] & 1) == 0)
    {
      [v2 removeStatusObserver:v5];
      *&v0[v4] = 0;
      swift_unknownObjectRelease();
      v0[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState] = 3;
      v9 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
      v10 = v9;
      sub_100198E90(v9);
      swift_unknownObjectRelease();

      return [v0 updatePlayingItemAudioTraitButton];
    }

    goto LABEL_7;
  }

  return result;
}

void sub_1001A5300()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
    v3 = v2;
    sub_100198E90(v2);
  }
}

uint64_t sub_1001A5378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(v5, v7, a3);
}

void sub_1001A53F4(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  objc_msgSendSuper2(&v8, "viewWillAppear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else
  {
    sub_1002ADCE0();
  }

  v4 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView];
  if (v4)
  {
    v5 = v4;
    v6 = [v1 presentingViewController];
    v7 = v6;
    if (v6)
    {
    }

    [v5 setHidden:v7 == 0];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001A5514(char a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for NowPlayingControlsViewController(0);
  v17.receiver = v2;
  v17.super_class = v7;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1);
  if ((*(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_didAnimateReactionOnce) & 1) == 0)
  {
    v8 = sub_1001BF760();
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass() && MPModelPlaylist.hasJoinedCollaboration.getter())
      {
        v10 = sub_1001BF9B4();
        if (v10)
        {
          v11 = v10;
          v12 = type metadata accessor for TaskPriority();
          (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
          type metadata accessor for MainActor();
          v13 = v11;
          v14 = v2;
          v15 = static MainActor.shared.getter();
          v16 = swift_allocObject();
          v16[2] = v15;
          v16[3] = &protocol witness table for MainActor;
          v16[4] = v13;
          v16[5] = v14;
          sub_1001F4CB8(0, 0, v6, &unk_100EBF590, v16);
        }
      }
    }
  }
}

uint64_t sub_1001A5728(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  v3 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction];
  if (v3)
  {
    v4 = v3;
    dispatch thunk of ReactionEffectInteraction.clearReactions()();
  }

  if (qword_10117F8A8 != -1)
  {
    swift_once();
  }

  sub_10058BB38(1, 0);
}

uint64_t sub_1001A5838(char a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  objc_msgSendSuper2(&v15, "viewDidDisappear:", a1 & 1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
  }

  else
  {
    if (qword_10117F228 != -1)
    {
      swift_once();
    }

    sub_100663058(v1, qword_101218668);
  }

  if (*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsToken])
  {
    [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager] removeStatusObserver:?];
  }

  v4 = OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask;
  v5 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask] = 0;
  if (!v5 || (Task.cancel()(), !*&v1[v4]))
  {
    v6 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton];
    if (v6)
    {
      sub_100009F78(0, &qword_101181620);
      v7 = qword_10117F980;
      v8 = v6;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = qword_101219130;
      v10 = swift_allocObject();
      *(v10 + 16) = v8;
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      *(v11 + 24) = v1;
      v12 = v8;
      v13 = v1;
      static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v9, 0, sub_1001D3178, v10, sub_1001D3254, v11, 0.65, 0.0);
    }
  }
}

void sub_1001A5AD4()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v57 - v3;
  v5 = type metadata accessor for NowPlayingControlsViewController(0);
  v63.receiver = v0;
  v63.super_class = v5;
  objc_msgSendSuper2(&v63, "viewDidLayoutSubviews");
  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide;
  v7 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide];
  if (!v7)
  {
    __break(1u);
    goto LABEL_22;
  }

  type metadata accessor for CGRect(0);
  [v7 layoutFrame];
  v59 = v8;
  v60 = v9;
  v61 = v10;
  v62 = v11;
  v12 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame];
  v13 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame + 16];
  v57 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousContentLayoutGuideFrame];
  v58 = v13;
  if ((static ApproximatelyEquatable.!=~ infix(_:_:)() & 1) == 0)
  {
LABEL_8:
    v21 = [v1 view];
    if (v21)
    {
      v22 = v21;
      [v21 bounds];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v59 = v24;
      v60 = v26;
      v61 = v28;
      v62 = v30;
      v31 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds];
      v32 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds + 16];
      v57 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_previousBounds];
      v58 = v32;
      if (static ApproximatelyEquatable.!=~ infix(_:_:)())
      {
        v33 = [v1 view];
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

        *v31 = v36;
        *(v31 + 1) = v38;
        *(v31 + 2) = v40;
        *(v31 + 3) = v42;
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        sub_1000060E4(v43, qword_1012190C8);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "[NowPlayingControlsViewController] bounds changed, updating metrics", v46, 2u);
        }

        sub_1001C0A54();
      }

      v47 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
      if (v47)
      {
        v48 = qword_10117F2C8;
        v49 = v47;
        if (v48 != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for UIView.Corner();
        v51 = sub_1000060E4(v50, qword_101183288);
        v52 = *(v50 - 8);
        v53 = *(v52 + 16);
        v53(v4, v51, v50);
        v54 = *(v52 + 56);
        v54(v4, 0, 1, v50);
        UIView.corner.setter();

        v55 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
        if (v55)
        {
          v53(v4, v51, v50);
          v54(v4, 0, 1, v50);
          v56 = v55;
          UIView.corner.setter();

          return;
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_6:
    v16 = *&v1[v6];
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    [v16 layoutFrame];
    *v12 = v17;
    *(v12 + 1) = v18;
    *(v12 + 2) = v19;
    *(v12 + 3) = v20;
    goto LABEL_8;
  }

  v14 = *&v1[v6];
  if (v14)
  {
    v15 = v14;
    sub_1005E1C1C(v1, v15);

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

LABEL_27:
  __break(1u);
}

void sub_1001A5F60(void *a1)
{
  v2 = v1;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  objc_msgSendSuper2(&v28, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      sub_100009F78(0, &unk_101183B00);
      v6 = a1;
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }
    }
  }

  else
  {
    if (!v4)
    {
      return;
    }
  }

  v8 = [v2 traitCollection];
  if (a1)
  {
    v9 = [a1 layoutDirection];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v8 layoutDirection];
  if (a1 && v9 == v10 || (sub_1001C355C(), a1))
  {
    sub_100050078();
    v11 = UITraitCollection.subscript.getter() & 1;
  }

  else
  {
    v11 = 2;
  }

  sub_100050078();
  v12 = UITraitCollection.subscript.getter();
  if (v11 == 2 || ((v12 ^ v11) & 1) != 0)
  {
    goto LABEL_39;
  }

  if (a1)
  {
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();
    v13 = v27;
  }

  else
  {
    v13 = 3;
  }

  sub_1001D1C24();
  sub_1001D1C78();
  UITraitCollection.subscript.getter();
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_39;
    }

    v14 = 0x4572616C75676572;
    v15 = 0xEF6465646E657478;
  }

  else
  {
    if (v13)
    {
      v14 = 0x72616C75676572;
    }

    else
    {
      v14 = 0x746361706D6F63;
    }

    v15 = 0xE700000000000000;
  }

  v16 = 0xE700000000000000;
  v17 = 0x72616C75676572;
  if (v27 != 1)
  {
    v17 = 0x4572616C75676572;
    v16 = 0xEF6465646E657478;
  }

  if (v27)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0x746361706D6F63;
  }

  if (v27)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (v14 != v18 || v15 != v19)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_40;
    }

LABEL_39:
    v21 = [v2 traitCollection];
    sub_1001D1C24();
    sub_1001D1C78();
    UITraitCollection.subscript.getter();

    v22 = *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType);
    *(v2 + OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType) = v27;
    sub_1001BE68C(v22);
    sub_1001C30CC();
    sub_1001C6E7C();
    goto LABEL_40;
  }

LABEL_40:
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1000060E4(v23, qword_1012190C8);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "[NowPlayingControlsViewController] trait collection changed, updating metrics", v26, 2u);
  }

  sub_1001C0A54();
}

void sub_1001A63DC()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for NowPlayingControlsViewController(0);
  objc_msgSendSuper2(&v5, "viewSafeAreaInsetsDidChange");
  if (qword_10117F938 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_1012190C8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[NowPlayingControlsViewController] safe area insets changed, updating metrics", v4, 2u);
  }

  sub_1001C0A54();
}

void *sub_1001A652C()
{
  type metadata accessor for LifecyclePatrol();
  swift_allocObject();
  result = LifecyclePatrol.init()();
  off_101183280 = result;
  return result;
}

uint64_t sub_1001A656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  sub_10010FC20(&unk_101181520);
  v5[3] = swift_task_alloc();
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[6] = v6;
  *v6 = v5;
  v6[1] = sub_1001A6654;

  return sub_10024F974();
}

uint64_t sub_1001A6654(uint64_t a1)
{
  *(*v1 + 56) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A6798, v3, v2);
}

uint64_t sub_1001A6798()
{
  v1 = v0[7];

  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v0[7];
  v3 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  while (1)
  {
    v6 = v0[7];
    if ((v6 & 0xC000000000000001) != 0)
    {

      if (v5)
      {
        sub_100009F78(0, &qword_101186EF0);
        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v5 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v5 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
          }
        }

        v6 = v0[7];
      }

      if (v3)
      {

        _CocoaArrayWrapper.subscript.getter();
        v8 = v7;
        v10 = v9;
        v12 = v11;

        v5 = v12 >> 1;
        goto LABEL_17;
      }
    }

    else
    {
    }

    v10 = 0;
    v8 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
LABEL_17:
    swift_unknownObjectRetain();
    if (v10 == v5)
    {
      break;
    }

    v36 = _swiftEmptyArrayStorage;
    v3 = v10;
LABEL_24:
    if (v3 >= v10)
    {
      v20 = v10;
      if (v3 <= v5)
      {
        v21 = v5;
      }

      else
      {
        v21 = v3;
      }

      while (v21 != v3)
      {
        v22 = v3 + 1;
        v23 = *(v8 + 8 * v3);
        v24 = [v23 reactionText];
        if (v24)
        {
          v25 = v24;
          v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v27;
          v35 = v26;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_100498B7C(0, *(v36 + 2) + 1, 1, v36);
          }

          v29 = *(v36 + 2);
          v28 = *(v36 + 3);
          if (v29 >= v28 >> 1)
          {
            v36 = sub_100498B7C((v28 > 1), v29 + 1, 1, v36);
          }

          *(v36 + 2) = v29 + 1;
          v30 = &v36[16 * v29];
          *(v30 + 4) = v35;
          *(v30 + 5) = v34;
          v31 = v5 - 1 == v3++;
          v10 = v20;
          if (v31)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }

        ++v3;
        if (v5 == v22)
        {
          goto LABEL_19;
        }
      }
    }

    __break(1u);
LABEL_40:
    v32 = _CocoaArrayWrapper.endIndex.getter();
    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      __break(1u);
    }

    if (v32 >= 3)
    {
      v33 = 3;
    }

    else
    {
      v33 = v32;
    }

    if (v32 >= 0)
    {
      v5 = v33;
    }

    else
    {
      v5 = 3;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < v5)
    {
      goto LABEL_49;
    }
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_19:
  v13 = v0[3];
  v14 = v0[2];
  swift_unknownObjectRelease_n();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  v16 = v14;
  v17 = static MainActor.shared.getter();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = &protocol witness table for MainActor;
  v18[4] = v16;
  v18[5] = v36;
  sub_1001F4CB8(0, 0, v13, &unk_100EBF5A0, v18);

LABEL_20:

  v19 = v0[1];

  return v19();
}

uint64_t sub_1001A6B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Logger();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A6C4C, v8, v7);
}

uint64_t sub_1001A6C4C()
{
  v31 = v0;
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_mode);
  if (v2 != 3 && v2 != 0)
  {
    goto LABEL_20;
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v4 = GroupActivitiesManager.hasJoined.getter();
  v5 = sub_1001BF760();
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v7 = MPModelPlaylist.hasJoinedCollaboration.getter();

      if (((v4 | v7) & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];

  sub_10066FFD8(v11);

  v12 = Logger.collaboration.unsafeMutableAddressor();
  (*(v9 + 16))(v8, v12, v10);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[5];
  v17 = v0[6];
  v18 = v0[4];
  if (v15)
  {
    v29 = v0[6];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315138;
    v21 = Set.description.getter();
    v23 = sub_1000105AC(v21, v22, &v30);

    *(v19 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v13, v14, "[Reaction] Will animate latest reactions=%s", v19, 0xCu);
    sub_10000959C(v20);

    (*(v16 + 8))(v29, v18);
  }

  else
  {

    (*(v16 + 8))(v17, v18);
  }

  v24 = v0[2];
  v25 = *(v24 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction);
  if (v25)
  {
    v26 = v25;
    dispatch thunk of ReactionEffectInteraction.showReactions(_:)();

    v24 = v0[2];
  }

  *(v24 + OBJC_IVAR___MusicNowPlayingControlsViewController_didAnimateReactionOnce) = 1;
LABEL_20:

  v27 = v0[1];

  return v27();
}

id sub_1001A6F20()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v6 - 8);
  v8 = &v36 - v7;
  v9 = v0[OBJC_IVAR___MusicNowPlayingControlsViewController_mode];
  if (v9 != 3 && v9 != 0)
  {
    goto LABEL_11;
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v11 = GroupActivitiesManager.hasJoined.getter();
  v12 = sub_1001BF760();
  if (!v12)
  {
LABEL_21:
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

  v13 = v12;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_21;
  }

  v14 = MPModelPlaylist.hasJoinedCollaboration.getter();

  if (((v11 | v14) & 1) == 0)
  {
LABEL_11:
    if (*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController])
    {

      sub_10025485C();
    }

    v15 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction];
    if (v15)
    {
      v16 = v15;
      dispatch thunk of ReactionEffectInteraction.clearReactions()();
    }

    v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton;
    result = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
    if (result)
    {
      [result setAlpha:0.0];
      result = *&v1[v17];
      if (result)
      {

        return [result setHidden:1];
      }
    }

    return result;
  }

LABEL_22:
  v19 = sub_1001BF760();
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1001BF9B4();
      if (v23)
      {
        v24 = v23;
        if (!MPModelPlaylist.hasJoinedCollaboration.getter())
        {

          goto LABEL_28;
        }

        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
        type metadata accessor for MainActor();
        v37 = v1;
        v26 = v24;
        v20 = v20;
        v27 = static MainActor.shared.getter();
        v28 = swift_allocObject();
        v28[2] = v27;
        v28[3] = &protocol witness table for MainActor;
        v28[4] = v37;
        v28[5] = v26;
        v28[6] = v22;
        sub_1001F4CB8(0, 0, v8, &unk_100EBF500, v28);
      }
    }
  }

LABEL_28:
  if (GroupActivitiesManager.sessionForReactionAssociation()())
  {
    v29 = Logger.groupActivities.unsafeMutableAddressor();
    (*(v3 + 16))(v5, v29, v2);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "[Reaction] Attaching the session to the picker.", v32, 2u);
    }

    (*(v3 + 8))(v5, v2);
    v33 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionEffectInteraction];
    if (v33)
    {
      v34 = v33;
      dispatch thunk of ReactionEffectInteraction.associateWithSession<A>(_:)();
    }
  }

  v35 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton;
  result = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
  if (result)
  {
    [result setAlpha:1.0];
    result = *&v1[v35];
    if (result)
    {
      return [result setHidden:0];
    }
  }

  return result;
}

uint64_t sub_1001A73C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10010FC20(&unk_101181520);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = _s7ContextVMa(0);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v10 = _s7ContextV6SourceOMa(0);
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  sub_10010FC20(&qword_101183AD0);
  v6[17] = swift_task_alloc();
  v6[18] = type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[20] = v12;
  v6[21] = v11;

  return _swift_task_switch(sub_1001A75F8, v12, v11);
}

uint64_t sub_1001A75F8()
{
  *(v0 + 176) = CFAbsoluteTimeGetCurrent();
  if (qword_10117F278 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = type metadata accessor for UserProfile();
  *(v0 + 184) = v2;
  v3 = *(v2 - 8);
  *(v0 + 192) = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000095E8(*(v0 + 136), &qword_101183AD0);
    v4 = *(v0 + 16);
    v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController;
    *(v0 + 216) = 0;
    *(v0 + 224) = v5;
    v6 = *(v4 + v5);
    *(v0 + 232) = v6;
    if (v6)
    {
      v7 = *(v0 + 24);

      v8 = swift_task_alloc();
      *(v0 + 240) = v8;
      *v8 = v0;
      v8[1] = sub_1001A82CC;

      return sub_100252CE8(v7);
    }

    else
    {

      v11 = *(v0 + 224);
      v12 = *(v0 + 16);
      **(v0 + 128) = *(v0 + 24);
      swift_storeEnumTagMultiPayload();
      v13 = *(v12 + v11);
      if (!v13 || (v14 = *(v13 + 24), v14 == 255))
      {
        v22 = *(v0 + 32);
        v23 = *(v0 + 24);
        v24 = v22;
        v61 = 0;
        v60 = -1;
      }

      else
      {
        v15 = *(v0 + 128);
        v16 = *(v0 + 32);
        v17 = *(v13 + 16);
        v18 = *(v0 + 24);
        v19 = v16;

        sub_1001D249C(v17, v14);
        sub_100252894(v15, v17, v14 & 1);
        v61 = v20;
        v60 = v21;

        sub_1000D9134(v17, v14);
      }

      v25 = *(v0 + 216);
      v26 = *(v0 + 120);
      v28 = *(v0 + 104);
      v27 = *(v0 + 112);
      v29 = *(v0 + 64);
      v30 = *(v0 + 72);
      v32 = *(v0 + 48);
      v31 = *(v0 + 56);
      sub_1001D17C8(*(v0 + 128), v28, _s7ContextV6SourceOMa);
      (*(v26 + 56))(v28, 0, 1, v27);
      v33 = v28 + v30[5];
      *v33 = v61;
      *(v33 + 8) = v60;
      *(v28 + v30[6]) = v25;
      *(v28 + v30[7]) = 1;
      *(v28 + v30[8]) = 0;
      Current = CFAbsoluteTimeGetCurrent();
      v35 = Logger.collaboration.unsafeMutableAddressor();
      (*(v31 + 16))(v29, v35, v32);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 176);
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = Current - v38;
        _os_log_impl(&_mh_execute_header, v36, v37, "[Reaction] Did update context in %f seconds", v39, 0xCu);
      }

      v41 = *(v0 + 56);
      v40 = *(v0 + 64);
      v42 = *(v0 + 48);

      (*(v41 + 8))(v40, v42);
      v43 = sub_1001BF760();
      if (v43)
      {
        v44 = *(v0 + 32);
        v45 = v43;
        v46 = [v43 identifiers];

        v47 = [v44 identifiers];
        LODWORD(v45) = [v46 intersectsSet:v47];

        if (v45)
        {
          v48 = *(v0 + 96);
          v49 = *(v0 + 104);
          v50 = *(v0 + 80);
          v51 = *(v0 + 40);
          v52 = *(v0 + 16);
          v53 = type metadata accessor for TaskPriority();
          (*(*(v53 - 8) + 56))(v51, 1, 1, v53);
          sub_1001D17C8(v49, v48, _s7ContextVMa);
          v54 = v52;
          v55 = static MainActor.shared.getter();
          v56 = (*(v50 + 80) + 40) & ~*(v50 + 80);
          v57 = swift_allocObject();
          v57[2] = v55;
          v57[3] = &protocol witness table for MainActor;
          v57[4] = v54;
          sub_1001D24B0(v48, v57 + v56, _s7ContextVMa);
          sub_1001F4F78(0, 0, v51, &unk_100EBF568, v57);
        }
      }

      v58 = *(v0 + 128);
      sub_1001D1908(*(v0 + 104), _s7ContextVMa);
      sub_1001D1908(v58, _s7ContextV6SourceOMa);

      v59 = *(v0 + 8);

      return v59();
    }
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 200) = v10;
    *v10 = v0;
    v10[1] = sub_1001A7C7C;

    return sub_10024FC74();
  }
}

uint64_t sub_1001A7C7C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_1001A7DA4, v4, v3);
}

uint64_t sub_1001A7DA4()
{
  (*(*(v0 + 192) + 8))(*(v0 + 136), *(v0 + 184));
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionController;
  *(v0 + 216) = *(v0 + 208);
  *(v0 + 224) = v2;
  v3 = *(v1 + v2);
  *(v0 + 232) = v3;
  if (v3)
  {
    v4 = *(v0 + 24);

    v5 = swift_task_alloc();
    *(v0 + 240) = v5;
    *v5 = v0;
    v5[1] = sub_1001A82CC;

    return sub_100252CE8(v4);
  }

  else
  {

    v7 = *(v0 + 224);
    v8 = *(v0 + 16);
    **(v0 + 128) = *(v0 + 24);
    swift_storeEnumTagMultiPayload();
    v9 = *(v8 + v7);
    if (!v9 || (v10 = *(v9 + 24), v10 == 255))
    {
      v18 = *(v0 + 32);
      v19 = *(v0 + 24);
      v20 = v18;
      v57 = 0;
      v56 = -1;
    }

    else
    {
      v11 = *(v0 + 128);
      v12 = *(v0 + 32);
      v13 = *(v9 + 16);
      v14 = *(v0 + 24);
      v15 = v12;

      sub_1001D249C(v13, v10);
      sub_100252894(v11, v13, v10 & 1);
      v57 = v16;
      v56 = v17;

      sub_1000D9134(v13, v10);
    }

    v21 = *(v0 + 216);
    v22 = *(v0 + 120);
    v24 = *(v0 + 104);
    v23 = *(v0 + 112);
    v25 = *(v0 + 64);
    v26 = *(v0 + 72);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    sub_1001D17C8(*(v0 + 128), v24, _s7ContextV6SourceOMa);
    (*(v22 + 56))(v24, 0, 1, v23);
    v29 = v24 + v26[5];
    *v29 = v57;
    *(v29 + 8) = v56;
    *(v24 + v26[6]) = v21;
    *(v24 + v26[7]) = 1;
    *(v24 + v26[8]) = 0;
    Current = CFAbsoluteTimeGetCurrent();
    v31 = Logger.collaboration.unsafeMutableAddressor();
    (*(v27 + 16))(v25, v31, v28);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = *(v0 + 176);
      v35 = swift_slowAlloc();
      *v35 = 134217984;
      *(v35 + 4) = Current - v34;
      _os_log_impl(&_mh_execute_header, v32, v33, "[Reaction] Did update context in %f seconds", v35, 0xCu);
    }

    v37 = *(v0 + 56);
    v36 = *(v0 + 64);
    v38 = *(v0 + 48);

    (*(v37 + 8))(v36, v38);
    v39 = sub_1001BF760();
    if (v39)
    {
      v40 = *(v0 + 32);
      v41 = v39;
      v42 = [v39 identifiers];

      v43 = [v40 identifiers];
      LODWORD(v41) = [v42 intersectsSet:v43];

      if (v41)
      {
        v44 = *(v0 + 96);
        v45 = *(v0 + 104);
        v46 = *(v0 + 80);
        v47 = *(v0 + 40);
        v48 = *(v0 + 16);
        v49 = type metadata accessor for TaskPriority();
        (*(*(v49 - 8) + 56))(v47, 1, 1, v49);
        sub_1001D17C8(v45, v44, _s7ContextVMa);
        v50 = v48;
        v51 = static MainActor.shared.getter();
        v52 = (*(v46 + 80) + 40) & ~*(v46 + 80);
        v53 = swift_allocObject();
        v53[2] = v51;
        v53[3] = &protocol witness table for MainActor;
        v53[4] = v50;
        sub_1001D24B0(v44, v53 + v52, _s7ContextVMa);
        sub_1001F4F78(0, 0, v47, &unk_100EBF568, v53);
      }
    }

    v54 = *(v0 + 128);
    sub_1001D1908(*(v0 + 104), _s7ContextVMa);
    sub_1001D1908(v54, _s7ContextV6SourceOMa);

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1001A82CC()
{
  v1 = *v0;

  v2 = *(v1 + 168);
  v3 = *(v1 + 160);

  return _swift_task_switch(sub_1001A8410, v3, v2);
}

uint64_t sub_1001A8410()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 16);
  **(v0 + 128) = *(v0 + 24);
  swift_storeEnumTagMultiPayload();
  v3 = *(v2 + v1);
  if (!v3 || (v4 = *(v3 + 24), v4 == 255))
  {
    v12 = *(v0 + 32);
    v13 = *(v0 + 24);
    v14 = v12;
    v52 = 0;
    v51 = -1;
  }

  else
  {
    v5 = *(v0 + 128);
    v6 = *(v0 + 32);
    v7 = *(v3 + 16);
    v8 = *(v0 + 24);
    v9 = v6;

    sub_1001D249C(v7, v4);
    sub_100252894(v5, v7, v4 & 1);
    v52 = v10;
    v51 = v11;

    sub_1000D9134(v7, v4);
  }

  v15 = *(v0 + 216);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  v19 = *(v0 + 64);
  v20 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  sub_1001D17C8(*(v0 + 128), v18, _s7ContextV6SourceOMa);
  (*(v16 + 56))(v18, 0, 1, v17);
  v23 = v18 + v20[5];
  *v23 = v52;
  *(v23 + 8) = v51;
  *(v18 + v20[6]) = v15;
  *(v18 + v20[7]) = 1;
  *(v18 + v20[8]) = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v25 = Logger.collaboration.unsafeMutableAddressor();
  (*(v21 + 16))(v19, v25, v22);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 176);
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    *(v29 + 4) = Current - v28;
    _os_log_impl(&_mh_execute_header, v26, v27, "[Reaction] Did update context in %f seconds", v29, 0xCu);
  }

  v31 = *(v0 + 56);
  v30 = *(v0 + 64);
  v32 = *(v0 + 48);

  (*(v31 + 8))(v30, v32);
  v33 = sub_1001BF760();
  if (v33)
  {
    v34 = *(v0 + 32);
    v35 = v33;
    v36 = [v33 identifiers];

    v37 = [v34 identifiers];
    LODWORD(v35) = [v36 intersectsSet:v37];

    if (v35)
    {
      v38 = *(v0 + 96);
      v39 = *(v0 + 104);
      v40 = *(v0 + 80);
      v41 = *(v0 + 40);
      v42 = *(v0 + 16);
      v43 = type metadata accessor for TaskPriority();
      (*(*(v43 - 8) + 56))(v41, 1, 1, v43);
      sub_1001D17C8(v39, v38, _s7ContextVMa);
      v44 = v42;
      v45 = static MainActor.shared.getter();
      v46 = (*(v40 + 80) + 40) & ~*(v40 + 80);
      v47 = swift_allocObject();
      v47[2] = v45;
      v47[3] = &protocol witness table for MainActor;
      v47[4] = v44;
      sub_1001D24B0(v38, v47 + v46, _s7ContextVMa);
      sub_1001F4F78(0, 0, v41, &unk_100EBF568, v47);
    }
  }

  v48 = *(v0 + 128);
  sub_1001D1908(*(v0 + 104), _s7ContextVMa);
  sub_1001D1908(v48, _s7ContextV6SourceOMa);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1001A8874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a1;
  _s7ContextVMa(0);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001A8948, v7, v6);
}

uint64_t sub_1001A8948()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton);
  if (v2)
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    sub_1001D17C8(*(v0 + 80), v3, _s7ContextVMa);
    v5 = OBJC_IVAR____TtCE5MusicO11MusicCoreUI9Reactions7Control_context;
    swift_beginAccess();
    sub_1001D17C8(v2 + v5, v4, _s7ContextVMa);
    swift_beginAccess();
    v6 = v2;
    sub_1001D2610(v3, v2 + v5);
    swift_endAccess();
    sub_100258AD8(v4);

    sub_1001D1908(v4, _s7ContextVMa);
    sub_1001D1908(v3, _s7ContextVMa);
  }

  **(v0 + 64) = v2 == 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1001A8B04()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  v3 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
  v4 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  if (v4)
  {
    v5 = [v4 tracklist];
    v6 = [v5 vocalsControlCommand];

    if (v6)
    {
      v7 = [v6 isActive];
      swift_unknownObjectRelease();
      v8 = *(v0 + v3);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = 0;
      v8 = *(v0 + v3);
      if (!v8)
      {
        goto LABEL_11;
      }
    }

    v9 = [v8 tracklist];
    v10 = [v9 playingItem];

    if (v10)
    {
      [v10 duration];

      if (v2 != 0) | v7 & 1 || (v12)
      {
        return *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait);
      }

      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_11:
  if (v2 || (v7 & 1) != 0)
  {
    return *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait);
  }

LABEL_13:
  if (![*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager) musicHapticsEnabled])
  {
    return *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait);
  }

  result = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState);
  if (result == 3)
  {
    return *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait);
  }

  return result;
}

void sub_1001A8CA0(char a1)
{
  v3 = [objc_opt_self() currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  v5 = OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying;
  v6 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
  if (v6)
  {
    v7 = [v6 tracklist];
    v8 = [v7 vocalsControlCommand];

    if (v8)
    {
      v9 = [v8 isActive];
      swift_unknownObjectRelease();
      v10 = *&v1[v5];
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
      v10 = *&v1[v5];
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    v11 = [v10 tracklist];
    v12 = [v11 playingItem];

    if (v12)
    {
      [v12 duration];

      if (v4 != 0) | v9 & 1 || (v48)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  if (v4 || (v9 & 1) != 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (![*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_musicHapticsManager] musicHapticsEnabled] || (v13 = v1[OBJC_IVAR___MusicNowPlayingControlsViewController_hapticsState], v13 == 3))
  {
LABEL_15:
    LOBYTE(v13) = a1;
  }

  v1[OBJC_IVAR___MusicNowPlayingControlsViewController__playingItemAudioTrait] = v13;
  v14 = *&v1[v5];
  if (v14)
  {
    v15 = [v14 tracklist];
    v16 = [v15 playingItem];

    if (v16)
    {
      if (*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_smartTransitionIndicatorView])
      {
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000060E4(v17, qword_1012190C8);
        v18 = v16;
        oslog = Logger.logObject.getter();
        v19 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v46 = v21;
          *v20 = 136446210;
          v22 = [v18 contentItemIdentifier];
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;

          v26 = sub_1000105AC(v23, v25, &v46);

          *(v20 + 4) = v26;
          _os_log_impl(&_mh_execute_header, oslog, v19, "[AudioTrait](%{public}s) We are currently showing the Mixing label", v20, 0xCu);
          sub_10000959C(v21);

LABEL_33:

          return;
        }
      }

      else
      {
        if (qword_10117F938 != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        sub_1000060E4(v27, qword_1012190C8);
        v18 = v16;
        v28 = v1;
        oslog = Logger.logObject.getter();
        v29 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(oslog, v29))
        {
          v30 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v30 = 136446722;
          v31 = [v18 contentItemIdentifier];
          v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v34 = v33;

          v35 = sub_1000105AC(v32, v34, &v49);

          *(v30 + 4) = v35;
          *(v30 + 12) = 2082;
          LOBYTE(v46) = sub_1001A8B04();
          sub_10010FC20(&qword_101183AC0);
          v36 = String.init<A>(describing:)();
          v38 = sub_1000105AC(v36, v37, &v49);

          *(v30 + 14) = v38;
          *(v30 + 22) = 2082;
          v39 = [v18 nowPlayingAudioFormat];
          v40 = v39;
          if (v39)
          {
            v41 = [v39 badging];
          }

          else
          {
            v41 = 0;
          }

          v46 = v41;
          v47 = v40 == 0;
          sub_10010FC20(&qword_101183AC8);
          v42 = String.init<A>(describing:)();
          v44 = sub_1000105AC(v42, v43, &v49);

          *(v30 + 24) = v44;
          _os_log_impl(&_mh_execute_header, oslog, v29, "[AudioTrait](%{public}s) Updated playing item audio trait=%{public}s based on audio format badge=%{public}s", v30, 0x20u);
          swift_arrayDestroy();

          goto LABEL_33;
        }
      }
    }
  }
}

void sub_1001A9244()
{
  v1 = type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v96 - v3;
  v5 = sub_10010FC20(&qword_101180C90);
  __chkstk_darwin(v5 - 8);
  v99 = &v96 - v6;
  v7 = type metadata accessor for AttributeContainer();
  v100 = *(v7 - 8);
  v101 = v7;
  __chkstk_darwin(v7);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v98 = &v96 - v11;
  __chkstk_darwin(v12);
  v14 = &v96 - v13;
  v102 = type metadata accessor for UIButton.Configuration();
  v15 = *(v102 - 8);
  __chkstk_darwin(v102);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v96 - v19;
  __chkstk_darwin(v21);
  v23 = &v96 - v22;
  v103 = v0;
  v24 = sub_1001A8B04();
  if (v24 > 7u)
  {
    if (v24 == 8)
    {
      static UIButton.Configuration.plain()();
      static UIBackgroundConfiguration.clear()();
      UIButton.Configuration.background.setter();
      v50 = [objc_opt_self() clearColor];
      v51 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v51(v104, 0);
      v52 = sub_1001A9F5C(8u);
      v53 = v102;
      v47 = v103;
      if (v52)
      {
        v54 = v52;
        if (qword_10117F8E0 != -1)
        {
          swift_once();
        }

        v55 = [v54 imageWithTintColor:qword_101219078 renderingMode:1];
        UIButton.Configuration.image.setter();
        v56 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
        UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
        AttributeContainer.init()();
        sub_100009F78(0, &qword_101183A00);
        v104[0] = static UIFont.preferredFont(forTextStyle:weight:)();
        sub_10016D0B4();
        AttributeContainer.subscript.setter();
        sub_1001AA298(8u);
        if (v57)
        {
          v58 = v100;
          v59 = *(v100 + 16);
          v97 = v55;
          v59(v98, v9, v101);
          v96 = v54;
          v60 = v99;
          AttributedString.init(_:attributes:)();
          v61 = type metadata accessor for AttributedString();
          (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
          UIButton.Configuration.attributedTitle.setter();

          (*(v58 + 8))(v9, v101);
          v53 = v102;
        }

        else
        {
          (*(v100 + 8))(v9, v101);
        }
      }

      UIButton.Configuration.contentInsets.setter();
      UIButton.Configuration.imagePadding.setter();
      v83 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
      v84 = *&v47[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
      if (!v84)
      {
        goto LABEL_47;
      }

      (*(v15 + 16))(v4, v17, v53);
      (*(v15 + 56))(v4, 0, 1, v53);
      v85 = v84;
      UIButton.configuration.setter();

      v86 = *&v47[v83];
      if (!v86)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      v87 = v86;
      v88 = AccessibilityIdentifier.nowPlayingAudioBadgeSpatialButton.unsafeMutableAddressor();
      v89 = *v88;
      v90 = v88[1];
      type metadata accessor for AudioTraitButton();

      UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v89, v90);

      (*(v15 + 8))(v17, v53);
      goto LABEL_38;
    }

    if (v24 == 9)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v24 - 3 < 2)
    {
      static UIButton.Configuration.plain()();
      static UIBackgroundConfiguration.clear()();
      UIButton.Configuration.background.setter();
      v25 = [objc_opt_self() clearColor];
      v26 = UIButton.Configuration.background.modify();
      UIBackgroundConfiguration.backgroundColor.setter();
      v26(v104, 0);
      v27 = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleCaption1 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      if (!v27)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v28 = v27;
      v29 = [objc_opt_self() configurationWithFont:v27];

      v30 = v29;
      UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
      v31 = sub_1001A9F5C(v24);
      v33 = v102;
      v32 = v103;
      if (v31)
      {
        if (qword_10117F8E0 != -1)
        {
          v95 = v31;
          swift_once();
          v31 = v95;
        }

        v34 = v31;
        v35 = [v31 imageWithTintColor:qword_101219078 renderingMode:1];
        UIButton.Configuration.image.setter();
      }

      v36 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
      v37 = *&v32[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
      if (!v37)
      {
        goto LABEL_45;
      }

      (*(v15 + 16))(v4, v20, v33);
      (*(v15 + 56))(v4, 0, 1, v33);
      v38 = v37;
      UIButton.configuration.setter();

      v39 = *&v32[v36];
      if (!v39)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v40 = v39;
      v41 = AccessibilityIdentifier.nowPlayingAudioBadgeDolbyButton.unsafeMutableAddressor();
      v42 = *v41;
      v43 = v41[1];
      type metadata accessor for AudioTraitButton();

      UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v42, v43);

      (*(v15 + 8))(v20, v33);
      goto LABEL_33;
    }

    if (v24 == 7)
    {
LABEL_18:
      v47 = v103;
      v48 = *&v103[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
      if (!v48)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      (*(v15 + 56))(v4, 1, 1, v102);
      v49 = v48;
      UIButton.configuration.setter();

      goto LABEL_38;
    }
  }

  static UIButton.Configuration.borderedTinted()();
  v44 = [v103 traitCollection];
  sub_100050078();
  v45 = UITraitCollection.subscript.getter();

  if (v45)
  {
    if (qword_10117F900 != -1)
    {
      swift_once();
    }

    v46 = qword_101219098;
  }

  else
  {
    v46 = [objc_opt_self() tertiaryLabelColor];
  }

  v62 = v46;
  sub_100009F78(0, &qword_101183A00);
  v63 = static UIFont.preferredFont(forTextStyle:weight:)();
  v64 = [objc_opt_self() configurationWithFont:v63 scale:2];

  v97 = v64;
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v65 = sub_1001A9F5C(v24);
  if (v65)
  {
    v66 = v65;
    v67 = [v65 imageWithTintColor:v62 renderingMode:1];
    UIButton.Configuration.image.setter();
  }

  AttributeContainer.init()();
  v104[0] = static UIFont.preferredFont(forTextStyle:weight:)();
  sub_10016D0B4();
  AttributeContainer.subscript.setter();
  v104[0] = v62;
  sub_1001D29B8();
  v68 = v62;
  AttributeContainer.subscript.setter();
  sub_1001AA298(v24);
  if (v69)
  {
    (*(v100 + 16))(v98, v14, v101);
    v70 = v99;
    AttributedString.init(_:attributes:)();
    v71 = type metadata accessor for AttributedString();
    (*(*(v71 - 8) + 56))(v70, 0, 1, v71);
    UIButton.Configuration.attributedTitle.setter();
  }

  UIButton.Configuration.contentInsets.setter();
  UIButton.Configuration.imagePadding.setter();
  v72 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v72(v104, 0);
  v73 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v74 = v103;
  v75 = *&v103[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
  if (!v75)
  {
    goto LABEL_48;
  }

  v99 = v68;
  v76 = v102;
  (*(v15 + 16))(v4, v23, v102);
  (*(v15 + 56))(v4, 0, 1, v76);
  v77 = v75;
  UIButton.configuration.setter();

  v78 = *&v74[v73];
  if (v78)
  {
    v79 = v78;
    v80 = AccessibilityIdentifier.nowPlayingAudioBadgeLosslessButton.unsafeMutableAddressor();
    v81 = *v80;
    v82 = v80[1];
    type metadata accessor for AudioTraitButton();

    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v81, v82);

    (*(v100 + 8))(v14, v101);
    (*(v15 + 8))(v23, v76);
LABEL_33:
    v47 = v103;
LABEL_38:
    v91 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
    v92 = *&v47[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
    if (v92)
    {
      v93 = v92;
      [v93 setUserInteractionEnabled:(0x66u >> sub_1001A8B04()) & 1];

      v94 = *&v47[v91];
      if (v94)
      {
        [v94 layoutIfNeeded];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
}

id sub_1001A9F5C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    if (a1 > 2u)
    {
      if (a1 == 3)
      {
        if (qword_10117F878 == -1)
        {
          goto LABEL_14;
        }
      }

      else if (qword_10117F878 == -1)
      {
LABEL_14:
        v2 = qword_101218F90;
        v3 = String._bridgeToObjectiveC()();
        v1 = [objc_opt_self() imageNamed:v3 inBundle:v2];

        goto LABEL_15;
      }

LABEL_17:
      swift_once();
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  if (a1 - 5 < 2)
  {
    if (qword_10117F878 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (a1 != 7)
  {
LABEL_11:
    v2 = String._bridgeToObjectiveC()();
    v1 = [objc_opt_self() _systemImageNamed:v2];
LABEL_15:

    return v1;
  }

  return 0;
}

uint64_t sub_1001AA298(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  result = 0;
  if (a1 > 4u)
  {
    if (a1 == 7)
    {
      return result;
    }
  }

  else if (a1 > 2u)
  {
    return result;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void *sub_1001AA530()
{
  v0 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for HitMyRectButton();
  static UIButton.Configuration.plain()();
  v1 = UIButton.init(configuration:primaryAction:)();
  sub_100009F78(0, &unk_1011845F0);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1;

  v4.value = 0;
  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v4, 0, sub_1001D23C4, v2).super.super.isa;

  [v3 setMenu:isa];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = sub_1001D23CC;
  v19 = v6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v16 = sub_10027D328;
  v17 = &unk_10109F880;
  v7 = _Block_copy(&aBlock);

  [v3 setConfigurationUpdateHandler:v7];
  _Block_release(v7);
  [v3 setPreferredMenuElementOrder:2];
  aBlock = xmmword_100EBEE50;
  v16 = 0;
  v17 = 0;
  LOBYTE(v18) = 0;
  (*((swift_isaMask & *v3) + 0x60))(&aBlock);
  v8 = v3;
  [v8 setExclusiveTouch:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:0 forAxis:v9];
  v10 = String._bridgeToObjectiveC()();
  [v8 _setLayoutDebuggingIdentifier:v10];

  v11 = AccessibilityIdentifier.contextualMenuButton.unsafeMutableAddressor();
  v12 = *v11;
  v13 = v11[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v12, v13);
  [v8 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v8 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];

  return v8;
}

void *sub_1001AA898()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = Strong;
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    v4 = sub_1001AA510();
  }

  else
  {
    v4 = 0;
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = sub_1001AA510();

    [v7 bounds];
    v18 = v8;
    v19 = v9;
    v17 = v10;
    v20 = v11;

    *&v13 = v17;
    *&v12 = v18;
    *(&v12 + 1) = v19;
    *(&v13 + 1) = v20;
  }

  else
  {
    v12 = 0uLL;
    v13 = 0uLL;
  }

  v22[0] = v12;
  v22[1] = v13;
  v23 = v6 == 0;
  PresentationSource.Position.init(view:rect:permittedArrowDirections:)(v4, v22, 15, v21);
  v5 = _swiftEmptyArrayStorage;
  v14 = sub_1001C9574(_swiftEmptyArrayStorage, v21);
  sub_1000095E8(v21, &qword_101183998);

  if (v14)
  {
    v15 = [v14 children];

    sub_100009F78(0, &qword_10118CDE0);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v5;
}

uint64_t sub_1001AAA54(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v45 = &v39 - v3;
  v4 = type metadata accessor for UIBackgroundConfiguration();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for UIButton.Configuration();
  v14 = *(v44 - 8);
  __chkstk_darwin(v44);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    v42 = v4;
    static UIButton.Configuration.plain()();
    v40 = v18;
    v19 = [v40 traitCollection];
    v39 = sub_100050078();
    LOBYTE(v18) = UITraitCollection.subscript.getter();

    v41 = v5;
    if (v18)
    {
      v20 = [objc_opt_self() whiteColor];
      [a1 setTintColor:v20];
    }

    else
    {
      [a1 setTintColor:0];
    }

    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() systemImageNamed:v21];

    UIButton.Configuration.image.setter();
    v23 = objc_opt_self();
    v24 = a1;
    v25 = [a1 traitCollection];
    v26 = [v23 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v25];

    [v26 pointSize];
    v28 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:v27];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    (*(v11 + 104))(v13, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v10);
    UIButton.Configuration.cornerStyle.setter();
    static UIBackgroundConfiguration.clear()();
    v29 = v40;
    v30 = [v40 traitCollection];

    v31 = UITraitCollection.subscript.getter();
    if (v31)
    {
      if (qword_10117F8F0 != -1)
      {
        swift_once();
      }

      v32 = qword_101219088;
      UIBackgroundConfiguration.backgroundColor.setter();
      v33 = [v24 layer];
      [v33 setCompositingFilter:kCAFilterPlusL];
    }

    else
    {
      v34 = [objc_opt_self() tertiarySystemFillColor];
      UIBackgroundConfiguration.backgroundColor.setter();
      v33 = [v24 layer];
      [v33 setCompositingFilter:0];
    }

    UIBackgroundConfiguration.cornerRadius.setter();
    v36 = v41;
    v35 = v42;
    (*(v41 + 16))(v43, v9, v42);
    UIButton.Configuration.background.setter();
    v38 = v44;
    v37 = v45;
    (*(v14 + 16))(v45, v16, v44);
    (*(v14 + 56))(v37, 0, 1, v38);
    UIButton.configuration.setter();

    (*(v36 + 8))(v9, v35);
    return (*(v14 + 8))(v16, v38);
  }

  return result;
}

void *sub_1001AB0D4()
{
  v0 = type metadata accessor for UIButton.Configuration();
  __chkstk_darwin(v0 - 8);
  type metadata accessor for HitMyRectButton();
  static UIButton.Configuration.plain()();
  sub_100009F78(0, &qword_1011839A0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v1 = UIButton.init(configuration:primaryAction:)();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_1001D22C8;
  v16 = v2;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v13 = sub_10027D328;
  v14 = &unk_10109F830;
  v3 = _Block_copy(&aBlock);
  v4 = v1;

  [v4 setConfigurationUpdateHandler:v3];
  _Block_release(v3);
  aBlock = xmmword_100EBEE50;
  v13 = 0;
  v14 = 0;
  LOBYTE(v15) = 0;
  (*((swift_isaMask & *v4) + 0x60))(&aBlock);
  v5 = v4;
  [v5 setExclusiveTouch:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v6) = 1148846080;
  [v5 setContentCompressionResistancePriority:0 forAxis:v6];
  v7 = String._bridgeToObjectiveC()();
  [v5 _setLayoutDebuggingIdentifier:v7];

  v8 = AccessibilityIdentifier.nowPlayingFavoriteButton.unsafeMutableAddressor();
  v9 = *v8;
  v10 = v8[1];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v10);
  [v5 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
  [v5 setMaximumContentSizeCategory:UIContentSizeCategoryExtraLarge];

  return v5;
}

void sub_1001AB400()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_1001F4CB8(0, 0, v2, &unk_100EBF4E0, v8);
  }
}

uint64_t sub_1001AB554()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1001AC2B0();
}

uint64_t sub_1001AB600()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AB73C, v1, v0);
}

uint64_t sub_1001AB73C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001AB79C(void *a1)
{
  v2 = sub_10010FC20(&unk_101183AB0);
  __chkstk_darwin(v2 - 8);
  v4 = &v61 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = __chkstk_darwin(v5);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v61 - v8;
  v10 = type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10010FC20(&qword_101183A98);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v63 = type metadata accessor for UIButton.Configuration();
  v17 = *(v63 - 8);
  __chkstk_darwin(v63);
  v19 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v21 = result;
  v61 = v4;
  static UIButton.Configuration.plain()();
  v22 = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
  swift_beginAccess();
  sub_1000089F8(&v21[v22], v16, &qword_101183A98);
  if ((*(v11 + 48))(v16, 1, v10))
  {
    sub_1000095E8(v16, &qword_101183A98);
    v23 = *&v21[OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying];
    if (v23)
    {
      v24 = v23;
      v66 = MPCPlayerResponse.isPlayingItemFavorited.getter();
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    sub_1001D17C8(v16, v13, type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
    sub_1000095E8(v16, &qword_101183A98);
    v66 = v13[*(v10 + 20)];
    sub_1001D1908(v13, type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
  }

  v25 = v21;
  v26 = [v25 traitCollection];
  sub_100050078();
  v27 = UITraitCollection.subscript.getter();

  if (v27)
  {
    v28 = [objc_opt_self() whiteColor];
    [a1 setTintColor:v28];
  }

  else
  {
    [a1 setTintColor:0];
  }

  v29 = [a1 imageView];
  if (v29)
  {
    v30 = v29;
    v31 = [v25 traitCollection];
    v32 = UITraitCollection.subscript.getter();

    if (v32)
    {
      v33 = [objc_opt_self() whiteColor];
    }

    else
    {
      v34 = [a1 tintColor];
      if (v34)
      {
        v35 = v34;
        v36 = [a1 traitCollection];
        v37 = [v35 resolvedColorWithTraitCollection:v36];

        if (v37)
        {
          goto LABEL_17;
        }
      }

      v33 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    v37 = v33;
LABEL_17:
    v38 = 0.2;
    if ((v66 & 1) == 0)
    {
      v38 = 0.0;
    }

    UIView.Shadow.init(color:opacity:radius:offset:)(v37, v67, v38, 5.0, 0.0, 0.0);
    UIView.shadow.setter(v67);
  }

  v39 = objc_opt_self();
  v40 = [a1 traitCollection];
  v41 = [v39 preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v40];

  [v41 pointSize];
  v43 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:v42];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  v44 = String._bridgeToObjectiveC()();

  v45 = [objc_opt_self() systemImageNamed:v44];

  UIButton.Configuration.image.setter();
  static UIBackgroundConfiguration.clear()();
  v46 = [v25 traitCollection];

  LOBYTE(v44) = UITraitCollection.subscript.getter();
  if (v44)
  {
    v47 = v64;
    if (qword_10117F8F0 != -1)
    {
      swift_once();
    }

    v48 = qword_101219088;
    UIBackgroundConfiguration.backgroundColor.setter();
    v49 = [a1 layer];
    [v49 setCompositingFilter:kCAFilterPlusL];
    v50 = v65;
  }

  else
  {
    v51 = [objc_opt_self() tertiarySystemFillColor];
    UIBackgroundConfiguration.backgroundColor.setter();
    v49 = [a1 layer];
    [v49 setCompositingFilter:0];
    v47 = v64;
    v50 = v65;
  }

  UIBackgroundConfiguration.cornerRadius.setter();
  (*(v47 + 16))(v62, v9, v50);
  UIButton.Configuration.background.setter();
  v52 = UIAccessibilityTraitSelected;
  v53 = [a1 accessibilityTraits];
  v54 = v53 & v52;
  if (v66)
  {
    if (v54 == v52)
    {
      v55 = 0;
    }

    else
    {
      v55 = v52;
    }

    v56 = v55 | v53;
  }

  else
  {
    v57 = v54 == 0;
    v58 = -1;
    if (!v57)
    {
      v58 = ~v52;
    }

    v56 = v58 & v53;
  }

  [a1 setAccessibilityTraits:v56];
  v59 = v61;
  v60 = v63;
  (*(v17 + 16))(v61, v19, v63);
  (*(v17 + 56))(v59, 0, 1, v60);
  UIButton.configuration.setter();

  (*(v47 + 8))(v9, v50);
  return (*(v17 + 8))(v19, v60);
}

Swift::Int sub_1001AC088(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001CF0F0(&unk_1011838B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void sub_1001AC12C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1001CF0F0(&unk_1011838B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int sub_1001AC1B8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001CF0F0(&unk_1011838B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_1001AC258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static UUID.== infix(_:_:)())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1001AC2B0()
{
  v1[25] = v0;
  v1[26] = type metadata accessor for Notice.Variant(0);
  v1[27] = swift_task_alloc();
  type metadata accessor for Locale();
  v1[28] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[29] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20);
  v1[30] = swift_task_alloc();
  type metadata accessor for MetricsEvent.Click(0);
  v1[31] = swift_task_alloc();
  type metadata accessor for MetricsPageProperties();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v2 = type metadata accessor for SymbolEffectOptions();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  v3 = type metadata accessor for BounceSymbolEffect();
  v1[37] = v3;
  v1[38] = *(v3 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v4 = type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate(0);
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = sub_10010FC20(&qword_101183A98);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[48] = v6;
  v1[49] = v5;

  return _swift_task_switch(sub_1001AC5D4, v6, v5);
}

uint64_t sub_1001AC5D4()
{
  v44 = v0;
  v1 = *(v0 + 200);
  v2 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_nowPlaying);
  *(v0 + 400) = v2;
  if (v2)
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
    *(v0 + 408) = OBJC_IVAR___MusicNowPlayingControlsViewController_favoritingUpdate;
    swift_beginAccess();
    sub_1000089F8(v1 + v6, v3, &qword_101183A98);
    LODWORD(v3) = (*(v5 + 48))(v3, 1, v4);
    v7 = v2;
    if (v3 == 1)
    {
      v8 = *(v0 + 360);
      v9 = *(v0 + 336);
      v10 = *(v0 + 344);
      v11 = *(v0 + 328);
      sub_1000095E8(*(v0 + 368), &qword_101183A98);
      v12 = MPCPlayerResponse.isPlayingItemFavorited.getter();
      *(v0 + 448) = v12 & 1;
      UUID.init()();
      *(v10 + *(v11 + 20)) = (v12 & 1) == 0;
      sub_1001D17C8(v10, v8, type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
      v13 = *(v9 + 56);
      *(v0 + 416) = v13;
      *(v0 + 424) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v13(v8, 0, 1, v11);
      swift_beginAccess();
      sub_10006B010(v8, v1 + v6, &qword_101183A98);
      swift_endAccess();
      v14 = sub_1001AB0B4();
      [v14 setNeedsUpdateConfiguration];

      if ((v12 & 1) == 0)
      {
        v15 = [*(*(v0 + 200) + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton) imageView];
        if (v15)
        {
          v16 = v15;
          v17 = *(v0 + 312);
          v18 = *(v0 + 320);
          v19 = *(v0 + 296);
          v20 = *(v0 + 304);
          v22 = *(v0 + 280);
          v21 = *(v0 + 288);
          v23 = *(v0 + 272);
          BounceSymbolEffect.init()();
          BounceSymbolEffect.up.getter();
          v24 = *(v20 + 8);
          v24(v18, v19);
          static SymbolEffectOptions.default.getter();
          sub_1001CF0F0(&qword_101183AA8, &type metadata accessor for BounceSymbolEffect);
          UIImageView.addSymbolEffect<A>(_:options:animated:completion:)();

          (*(v22 + 8))(v21, v23);
          v24(v17, v19);
        }
      }

      if (qword_10117F8A8 != -1)
      {
        swift_once();
      }

      sub_10058BB38(0, 0);

      if (qword_10117F608 != -1)
      {
        swift_once();
      }

      *(v0 + 40) = &type metadata for Player.FavoriteCommand;
      *(v0 + 48) = &protocol witness table for Player.FavoriteCommand;
      *(v0 + 16) = 0;
      *(v0 + 80) = &_s18NowPlayingUISourceON;
      *(v0 + 88) = &off_10109D788;
      *(v0 + 56) = 0;
      v25 = swift_task_alloc();
      *(v0 + 432) = v25;
      *v25 = v0;
      v25[1] = sub_1001ACCBC;

      return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
    }

    v31 = *(v0 + 368);

    sub_1000095E8(v31, &qword_101183A98);
    if (qword_10117FA80 != -1)
    {
      swift_once();
    }

    v32 = *(v0 + 200);
    v33 = type metadata accessor for Logger();
    sub_1000060E4(v33, qword_101219180);
    v34 = v32;
    v28 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v35))
    {
      v36 = *(v0 + 360);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v43 = v38;
      *v37 = 136315138;
      sub_1000089F8(v1 + v6, v36, &qword_101183A98);
      v39 = String.init<A>(describing:)();
      v41 = sub_1000105AC(v39, v40, &v43);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v28, v35, "Failed to toggleFavorite: Ongoing update in progress: %s", v37, 0xCu);
      sub_10000959C(v38);
    }
  }

  else
  {

    if (qword_10117FA80 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_1000060E4(v27, qword_101219180);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to toggleFavorite: no nowPlaying response", v30, 2u);
    }
  }

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_1001ACCBC(void *a1)
{
  v4 = *v2;
  *(*v2 + 440) = v1;

  if (v1)
  {
    v5 = *(v4 + 384);
    v6 = *(v4 + 392);
    v7 = sub_1001AD1E0;
  }

  else
  {

    sub_1000095E8(v4 + 56, &unk_101183910);
    sub_10000959C(v4 + 16);
    v5 = *(v4 + 384);
    v6 = *(v4 + 392);
    v7 = sub_1001ACE00;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1001ACE00()
{
  v1 = *(v0 + 448);

  if (v1)
  {
    v2 = 23;
  }

  else
  {
    v3 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v3 notificationOccurred:0];

    v2 = 22;
  }

  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 248);
  sub_1001BE170(v5);
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);

  v11 = sub_10010C578(&off_101099698);
  sub_1000095E8(&unk_1010996B8, &qword_101183AA0);
  sub_1001D17C8(v5, v4, type metadata accessor for MetricsPageProperties);
  MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v8, v9, 5, v2, v6, 0, 0, 12, v7, v11, 0, 0x300u, v4, 0);
  v12 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v13 = sub_10053771C();
  v15 = v14;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 400);
  v27 = *(v0 + 264);
  v28 = *(v0 + 344);
  v17 = *(v0 + 248);
  v18 = qword_101218AD0;
  v19 = GroupActivitiesManager.hasJoined.getter();
  v20 = GroupActivitiesManager.participantsCount.getter();
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v12) + 0xB8))(v17, v13, v15, v19 & 1, v20, *(v18 + v21));

  sub_1001D1908(v17, type metadata accessor for MetricsEvent.Click);
  sub_1001D1908(v27, type metadata accessor for MetricsPageProperties);
  sub_1001D1908(v28, type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
  v22 = *(v0 + 408);
  v23 = *(v0 + 360);
  v24 = *(v0 + 200);
  (*(v0 + 416))(v23, 1, 1, *(v0 + 328));
  swift_beginAccess();
  sub_10006B010(v23, v24 + v22, &qword_101183A98);
  swift_endAccess();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001AD1E0()
{
  v24 = v0;

  sub_1000095E8(v0 + 56, &unk_101183910);
  sub_10000959C(v0 + 16);
  if (qword_10117FA80 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101219180);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 440);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    *(v0 + 192) = v4;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000105AC(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform ToggleFavoriteCommand with error: %s", v5, 0xCu);
    sub_10000959C(v6);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v12 = v11;
  v13 = UIViewController.noticePresenter.getter();
  v14 = *(v0 + 400);
  v15 = *(v0 + 344);
  if (v13)
  {
    v16 = v13;
    v17 = *(v0 + 216);
    *v17 = v10;
    v17[1] = v12;
    swift_storeEnumTagMultiPayload();
    (*(*v16 + 192))(v17, 1);

    sub_1001D1908(v17, type metadata accessor for Notice.Variant);
    sub_1001D1908(v15, type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
  }

  else
  {
    sub_1001D1908(*(v0 + 344), type metadata accessor for NowPlayingControlsViewController.FavoritingUpdate);
  }

  v18 = *(v0 + 408);
  v19 = *(v0 + 360);
  v20 = *(v0 + 200);
  (*(v0 + 416))(v19, 1, 1, *(v0 + 328));
  swift_beginAccess();
  sub_10006B010(v19, v20 + v18, &qword_101183A98);
  swift_endAccess();

  v21 = *(v0 + 8);

  return v21();
}

void *sub_1001AD6F0()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101183A90);
  __chkstk_darwin(v2 - 8);
  v4 = v30 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin(v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = sub_1002991D8();

  if ((v9 & 1) == 0 || *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton))
  {
    return 0;
  }

  SymbolButton.Configuration.init()(v7);
  variable initialization expression of SymbolButton.Configuration.symbol(v32);
  v38 = v32[0];
  sub_1000095E8(&v38, &qword_1011815E0);
  LOBYTE(v30[0]) = 0;
  v12 = *(v7 + 5);
  v30[4] = *(v7 + 4);
  v30[5] = v12;
  v30[6] = *(v7 + 6);
  v31 = *(v7 + 14);
  v13 = *(v7 + 1);
  v30[0] = *v7;
  v30[1] = v13;
  v14 = *(v7 + 3);
  v30[2] = *(v7 + 2);
  v30[3] = v14;
  sub_1001D223C(v30);
  v15 = v32[1];
  *v7 = xmmword_100EBEE60;
  *(v7 + 1) = v15;
  *(v7 + 4) = 0x402E000000000000;
  v7[40] = 0;
  *(v7 + 41) = v33[0];
  *(v7 + 11) = *(v33 + 3);
  *(v7 + 6) = 6;
  *(v7 + 56) = v34;
  *(v7 + 72) = v35;
  *(v7 + 88) = v36;
  *(v7 + 104) = v37;
  static UIView.Corner.rounded.getter();
  v16 = type metadata accessor for UIView.Corner();
  (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
  sub_10006B010(v4, &v7[*(v5 + 36)], &qword_101183A90);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v19 = SymbolButton.init(configuration:handler:)(v7, sub_1001D2290, v17);
  v10 = SymbolButton.withProvider(_:)(sub_1001ADBBC, 0);

  v20 = (*((swift_isaMask & *v10) + 0x1B8))(1);
  (*((swift_isaMask & *v10) + 0x228))(v20, 35.0, 68.0);
  v21 = v10;
  [v21 setExclusiveTouch:1];
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:0 forAxis:v22];
  v23 = [v21 layer];
  v24 = [objc_opt_self() whiteColor];
  v25 = [v24 CGColor];

  [v23 setShadowColor:v25];
  v26 = [v21 layer];
  LODWORD(v27) = 1055286886;
  [v26 setShadowOpacity:v27];

  v28 = [v21 layer];
  [v28 setShadowOffset:{0.0, 0.0}];

  v29 = [v21 layer];
  [v29 setShadowRadius:4.0];

  return v10;
}

uint64_t sub_1001ADBBC(uint64_t a1, uint64_t a2)
{
  *(a2 + *(type metadata accessor for SymbolButton.Configuration(0) + 76)) = 0;
  v3 = UIViewConfigurationState.traitCollection.getter();
  sub_100050078();
  v4 = UITraitCollection.subscript.getter();

  v5 = *(a2 + 208);
  if (v4)
  {
    if (v5 != 1)
    {
      if (qword_10117F8F0 != -1)
      {
        swift_once();
        v5 = *(a2 + 208);
      }

      v6 = qword_101219088;
      v7 = qword_101219088;

      *(a2 + 208) = v6;
    }

    if (qword_10117F8E8 != -1)
    {
      swift_once();
    }

    v8 = qword_101219080;
    v9 = *(a2 + 112);
    v10 = qword_101219080;

    *(a2 + 112) = v8;
    if (*(a2 + 208) != 1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *(a2 + 216) = v11;
      *(a2 + 224) = v13;
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(a2 + 88) = v14;
    *(a2 + 96) = v16;
  }

  else
  {
    if (v5 == 1)
    {

      *(a2 + 112) = 0;
    }

    else
    {
      v18 = [objc_opt_self() tertiarySystemFillColor];

      *(a2 + 208) = v18;
      *(a2 + 112) = 0;
      if (*(a2 + 208) != 1)
      {

        *(a2 + 216) = 0;
        *(a2 + 224) = 0;
      }
    }

    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
  }

  return result;
}

id sub_1001ADD8C()
{
  v0 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v0 - 8);
  v87 = &v86 - v1;
  v93 = type metadata accessor for URL();
  v98 = *(v93 - 8);
  v2 = __chkstk_darwin(v93);
  v91 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v95 = &v86 - v4;
  v5 = sub_10010FC20(&qword_101183A20);
  v88 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v90 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v89 = &v86 - v9;
  v10 = __chkstk_darwin(v8);
  v94 = &v86 - v11;
  __chkstk_darwin(v10);
  v96 = &v86 - v12;
  v13 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Date.FormatStyle.DateStyle();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  static Date.FormatStyle.DateStyle.numeric.getter();
  static Date.FormatStyle.TimeStyle.complete.getter();
  v92 = Date.formatted(date:time:)();
  v26 = v25;
  (*(v14 + 8))(v16, v13);
  (*(v18 + 8))(v20, v17);
  (*(v22 + 8))(v24, v21);
  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(224);
  v27._countAndFlagsBits = 0xD00000000000007BLL;
  v27._object = 0x8000000100E3FD00;
  String.append(_:)(v27);
  v28 = &v97[OBJC_IVAR___MusicNowPlayingControlsViewController_autoMixTransitionInformation];
  swift_beginAccess();
  v29 = *v28;
  v30 = *v28;
  v31 = sub_1001AE954(v29);
  v33 = v32;

  v34._countAndFlagsBits = v31;
  v34._object = v33;
  String.append(_:)(v34);

  v35._object = 0x8000000100E3FD80;
  v35._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v35);
  v36 = *(v28 + 1);
  v37 = v36;
  v38 = sub_1001AE954(v36);
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 10;
  v42._object = 0xE100000000000000;
  String.append(_:)(v42);
  v43 = *v28;
  v44 = *(v28 + 1);
  v45 = v44;
  v46 = v43;
  v47 = sub_1001AEAE4(v43, v44);
  v49 = v48;

  v50 = v93;
  v51 = v96;
  v52._countAndFlagsBits = v47;
  v52._object = v49;
  String.append(_:)(v52);

  v53._countAndFlagsBits = 0xD00000000000004ALL;
  v53._object = 0x8000000100E3FDA0;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v92;
  v92 = v26;
  v54._object = v26;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 46;
  v55._object = 0xE100000000000000;
  String.append(_:)(v55);
  v100 = v102;
  v101 = v103;
  v56 = v98;
  v57 = *(v98 + 56);
  v57(v51, 1, 1, v50);
  type metadata accessor for MusicDownloadedSongCatalogStore();
  static MusicDownloadedSongCatalogStore.shared.getter();
  v58 = URL.tapToRadarDirectory.unsafeMutableAddressor();
  v59 = v56;
  v60 = *(v56 + 16);
  v61 = v95;
  v60(v95, v58, v50);
  v62 = v94;
  MusicDownloadedSongCatalogStore.outputDiagnostics(to:)();

  (*(v59 + 8))(v61, v50);
  sub_1000095E8(v51, &qword_101183A20);
  v57(v62, 0, 1, v50);
  sub_10003D17C(v62, v51, &qword_101183A20);
  v63 = v101;
  v95 = v100;

  result = [v97 view];
  if (result)
  {
    v65 = result;

    v66 = UIView.screenshot.getter();

    if (v66)
    {
      sub_10010FC20(&qword_101183990);
      v67 = swift_allocObject();
      *(v67 + 1) = xmmword_100EBC6C0;
      v67[4] = v66;
    }

    else
    {
      v67 = _swiftEmptyArrayStorage;
    }

    sub_10010FC20(&unk_101183A80);
    v68 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v69 = swift_allocObject();
    sub_1000089F8(v51, v69 + v68, &qword_101183A20);
    v70 = v89;
    sub_1000089F8(v69 + v68, v89, &qword_101183A20);
    v71 = v90;
    sub_10003D17C(v70, v90, &qword_101183A20);
    v72 = v98;
    if ((*(v98 + 48))(v71, 1, v50) == 1)
    {
      sub_1000095E8(v71, &qword_101183A20);
      v73 = _swiftEmptyArrayStorage;
    }

    else
    {
      v74 = *(v72 + 32);
      v74(v91, v71, v50);
      v73 = _swiftEmptyArrayStorage;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1004992E4(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
      }

      v76 = *(v73 + 2);
      v75 = *(v73 + 3);
      if (v76 >= v75 >> 1)
      {
        v73 = sub_1004992E4(v75 > 1, v76 + 1, 1, v73);
      }

      *(v73 + 2) = v76 + 1;
      v74(v73 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v76, v91, v50);
    }

    swift_setDeallocating();
    sub_1000095E8(v69 + v68, &qword_101183A20);
    swift_deallocClassInstance();
    v77 = sub_1006E1288(_swiftEmptyArrayStorage);
    static Alert.Action.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(0, 0, v95, v63, v67, v77, v73, &off_1010996D8, &v102, 0);

    v78 = v103;
    if (v103)
    {
      v79 = v102;
      v81 = v106;
      v80 = v107;
      v108 = v104;
      v109 = v105;
      v82 = type metadata accessor for TaskPriority();
      v83 = v87;
      (*(*(v82 - 8) + 56))(v87, 1, 1, v82);
      v110[0] = v79;
      v110[1] = v78;
      v111 = v108;
      type metadata accessor for MainActor();
      sub_100118E9C(v110, v99);
      sub_100118E9C(&v111, v99);
      sub_100030444(v81);
      v84 = static MainActor.shared.getter();
      v85 = swift_allocObject();
      *(v85 + 16) = v84;
      *(v85 + 24) = &protocol witness table for MainActor;
      *(v85 + 32) = v79;
      *(v85 + 40) = v78;
      *(v85 + 48) = v108;
      *(v85 + 64) = v109;
      *(v85 + 72) = v81;
      *(v85 + 80) = v80;
      sub_1001F4CB8(0, 0, v83, &unk_100EBF4B0, v85);

      sub_100015BB0(v110);
      sub_100015BB0(&v111);
      sub_100020438(v81);
    }

    return sub_1000095E8(v96, &qword_101183A20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1001AE954(id result)
{
  if (result)
  {
    result = [result metadataObject];
    if (result)
    {
      v1 = result;
      v2 = [result innermostModelObject];

      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 title];
        if (v5)
        {
          v6 = v5;
          v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v9 = v8;
        }

        else
        {
          v7 = 0;
          v9 = 0xE000000000000000;
        }

        v10._countAndFlagsBits = v7;
        v10._object = v9;
        String.append(_:)(v10);

        v11._countAndFlagsBits = 0x44496D6164612820;
        v11._object = 0xEA0000000000203ALL;
        String.append(_:)(v11);
        v12 = [v4 identifiers];
        v13 = MPIdentifierSet.bestStoreIdentifier.getter();
        v15 = v14;

        if (v15)
        {
          v16 = v13;
        }

        else
        {
          v16 = 0;
        }

        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0xE000000000000000;
        }

        v18 = v17;
        String.append(_:)(*&v16);

        v19._countAndFlagsBits = 41;
        v19._object = 0xE100000000000000;
        String.append(_:)(v19);

        return 0;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

id sub_1001AEAE4(id result, void *a2)
{
  if (result)
  {
    result = [result metadataObject];
    if (result)
    {
      v3 = result;
      v4 = [result innermostModelObject];

      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        sub_100009F78(0, &qword_101192200);
        v7 = sub_100009F78(0, &qword_101183A28);
        v8 = [v6 identifiers];
        v9 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v7, 3, 2u, v8);
        v11 = v10;

        if (v11)
        {
          v12 = sub_1001AECEC(a2);
          if (v13)
          {
            v14 = v12;
            v15 = v13;
            _StringGuts.grow(_:)(51);
            v16._object = 0x8000000100E3FE40;
            v16._countAndFlagsBits = 0xD000000000000019;
            String.append(_:)(v16);
            v17._countAndFlagsBits = v9;
            v17._object = v11;
            String.append(_:)(v17);

            v18._countAndFlagsBits = 0x6E696D6F636E6926;
            v18._object = 0xEA00000000003D67;
            String.append(_:)(v18);
            v19._countAndFlagsBits = v14;
            v19._object = v15;
            String.append(_:)(v19);

            v20._countAndFlagsBits = 0x6E6F20534F692820;
            v20._object = 0xEC0000000A29796CLL;
            String.append(_:)(v20);
            return 0;
          }
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

id sub_1001AECEC(id result)
{
  if (result)
  {
    result = [result metadataObject];
    if (result)
    {
      v1 = result;
      v2 = [result innermostModelObject];

      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = v3;
        sub_100009F78(0, &qword_101192200);
        v5 = sub_100009F78(0, &qword_101183A28);
        v6 = [v4 identifiers];
        v7 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(v5, 3, 2u, v6);

        return v7;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001AEE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 88) = type metadata accessor for MainActor();
  *(v4 + 96) = static MainActor.shared.getter();
  v6 = *(a4 + 40);
  if (v6)
  {
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = 0;
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v4 + 104) = v7;
    *v7 = v4;
    v7[1] = sub_1001AEF9C;

    return v11(a4, v4 + 16);
  }

  else
  {
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1001AF0E0, v10, v9);
  }
}

uint64_t sub_1001AEF9C()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001AF0E0, v1, v0);
}

uint64_t sub_1001AF0E0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1001AF140(char a1)
{
  v3 = sub_1001AD6F0();
  if (!v3)
  {
    return;
  }

  v4 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton);
  *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton) = v3;
  v5 = v3;

  v6 = OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView;
  v7 = *(v1 + OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v5;
  [v7 insertArrangedSubview:v21 atIndex:0];
  sub_10010FC20(&qword_101183990);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6D0;
  v9 = [v21 heightAnchor];
  v10 = [v21 widthAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v8 + 32) = v11;
  v12 = [v21 heightAnchor];

  v13 = *(v1 + v6);
  if (!v13)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v14 = objc_opt_self();
  v15 = [v13 heightAnchor];
  v16 = [v12 constraintEqualToAnchor:v15];

  *(v8 + 40) = v16;
  sub_100009F78(0, &qword_1011838A0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 activateConstraints:isa];

  if (a1)
  {
    [v21 setAlpha:0.0];

    sub_100009F78(0, &qword_101181620);
    if (qword_10117F980 != -1)
    {
      swift_once();
    }

    v18 = qword_101219130;
    v19 = swift_allocObject();
    *(v19 + 16) = v21;
    v20 = v21;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v18, 0, sub_1001D2178, v19, 0, 0, 0.65, 0.0);
  }

  else
  {
  }
}

uint64_t sub_1001AF484(double a1)
{
  v3 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v36 - v5;
  v7 = OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton;
  v8 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_ttrSmartTransitionButton];
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v1;
    if (a1 > 0.0)
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
      type metadata accessor for MainActor();
      v11 = v8;
      v12 = v1;
      v13 = v1;

      v14 = static MainActor.shared.getter();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = &protocol witness table for MainActor;
      *(v15 + 32) = a1;
      *(v15 + 40) = sub_1001D20A4;
      *(v15 + 48) = v9;
      v16 = sub_1001F4CB8(0, 0, v6, &unk_100EBF490, v15);
      v17 = OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask;
      v18 = *&v13[OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask];
      *&v13[OBJC_IVAR___MusicNowPlayingControlsViewController_removeTTRSmartTransitionButtonTask] = v16;
      if (v18)
      {

        Task.cancel()();
        if (!*&v13[v17])
        {
LABEL_12:
          v27 = *&v12[v7];
          if (v27)
          {
            sub_100009F78(0, &qword_101181620);
            v28 = qword_10117F980;
            v29 = v27;
            if (v28 != -1)
            {
              swift_once();
            }

            v30 = qword_101219130;
            v31 = swift_allocObject();
            *(v31 + 16) = v29;
            v32 = swift_allocObject();
            *(v32 + 16) = v29;
            *(v32 + 24) = v13;
            v33 = v29;
            v34 = v13;
            v35 = v33;
            static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v30, 0, sub_1001D3178, v31, sub_1001D3254, v32, 0.65, 0.0);
          }
        }
      }

      else
      {

        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }

    sub_100009F78(0, &qword_101181620);
    v19 = qword_10117F980;
    v20 = v8;
    v21 = v1;
    if (v19 != -1)
    {
      swift_once();
    }

    v22 = qword_101219130;
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    v24 = swift_allocObject();
    *(v24 + 16) = v20;
    *(v24 + 24) = v21;
    v25 = v20;
    v26 = v21;
    static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v22, 0, sub_1001D3178, v23, sub_1001D20AC, v24, 0.65, 0.0);
  }

  return result;
}

uint64_t sub_1001AF8F0(void *a1, void *a2)
{
  sub_100009F78(0, &qword_101181620);
  if (qword_10117F980 != -1)
  {
    swift_once();
  }

  v4 = qword_101219130;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a1;
  v8 = a2;
  static UIView.animate(withTimingFunction:duration:delay:options:animations:completion:)(v4, 0, sub_1001D3178, v5, sub_1001D3254, v6, 0.65, 0.0);
}

uint64_t sub_1001AFA20(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v6[4] = type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v6[6] = v8;
  *v8 = v6;
  v8[1] = sub_1001AFAD4;

  return static Task<>.sleep(for:)(a1);
}

uint64_t sub_1001AFAD4()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_1001D316C;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_1001AFC58;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_1001AFC58()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    (*(v0 + 16))();
  }

  v1 = *(v0 + 8);

  return v1();
}

id sub_1001AFCCC()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView;
  v2 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView];
  }

  else
  {
    v4 = v0;
    v5 = objc_opt_self();
    v6 = [v5 preferredFontForTextStyle:UIFontTextStyleHeadline];
    v7 = [v0 traitCollection];
    sub_100050078();
    v8 = UITraitCollection.subscript.getter();

    if (v8)
    {
      if (qword_10117F8E8 != -1)
      {
        swift_once();
      }

      v9 = qword_101219080;
    }

    else
    {
      v9 = [objc_opt_self() labelColor];
    }

    v10 = v9;
    NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)(1, v24, 32.0, 0.0, 24.0, 0.0, 24.0);
    v11 = [v5 preferredFontForTextStyle:{UIFontTextStyleSubheadline, NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(v6, v10, 0, v24, 1, 0, 0, v25)}];
    if (qword_10117F900 != -1)
    {
      swift_once();
    }

    v12 = qword_101219098;
    v13 = objc_opt_self();
    v14 = v12;
    v15 = NowPlaying.TrackTitleStackView.Label.Attributes.Action.init(primary:menu:disabledColor:)(0, 0, [v13 secondaryLabelColor]);
    NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)(v11, v14, 0, v24, v15, v16, v17, v26);
    v18 = objc_allocWithZone(type metadata accessor for NowPlaying.TrackTitleStackView(0));
    v19 = NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(v25, v26);
    v20 = UIView.forAutolayout.getter();

    v21 = *&v4[v1];
    *&v4[v1] = v20;
    v3 = v20;

    v2 = 0;
  }

  v22 = v2;
  return v3;
}

id sub_1001B00B4()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration;
  v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___bottomButtonsConfiguration);
  }

  else
  {
    v4 = [objc_opt_self() configurationWithPointSize:6 weight:20.0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

unint64_t sub_1001B0138()
{
  v1 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages;
  if (*(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages))
  {
    v2 = *(v0 + OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___lyricsButtonStateImages);
  }

  else
  {
    sub_10010FC20(&qword_101183A68);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBDC20;
    *(inited + 32) = 0;
    v4 = String._bridgeToObjectiveC()();
    v5 = objc_opt_self();
    v6 = [v5 systemImageNamed:v4];

    if (v6)
    {
      v7 = sub_1001B00B4();
      v8 = [v6 imageWithSymbolConfiguration:v7];
    }

    else
    {
      v8 = 0;
    }

    *(inited + 40) = v8;
    *(inited + 48) = 4;
    v9 = String._bridgeToObjectiveC()();
    v10 = [v5 systemImageNamed:v9];

    if (v10)
    {
      v11 = sub_1001B00B4();
      v12 = [v10 imageWithSymbolConfiguration:v11];
    }

    else
    {
      v12 = 0;
    }

    *(inited + 56) = v12;
    v2 = sub_10010C328(inited);
    swift_setDeallocating();
    sub_10010FC20(&unk_101183A70);
    swift_arrayDestroy();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_1001B0338()
{
  v5 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints];
  v1 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView];

  if (([v1 isHidden] & 1) == 0)
  {
    v2 = v0;
    v3 = sub_1001CFE60(&v5, v2);

    if (v5 >> 62)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
      if (v4 >= v3)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4 >= v3)
      {
LABEL_4:
        sub_1003BB630(v3, v4);
        return;
      }
    }

    __break(1u);
  }
}

void sub_1001B040C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(UILayoutGuide) init];
  v3 = *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide];
  v868 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide;
  *&v0[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuide] = v2;
  v4 = v2;

  if (!v4)
  {
    __break(1u);
    goto LABEL_234;
  }

  v5 = String._bridgeToObjectiveC()();
  [v4 setIdentifier:v5];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  if (!*&v1[v868])
  {
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  v7 = v6;
  [v6 addLayoutGuide:?];

  v8 = [objc_allocWithZone(UILayoutGuide) init];
  v9 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide;
  v10 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuide] = v8;
  v11 = v8;

  if (!v11)
  {
LABEL_236:
    __break(1u);
    goto LABEL_237;
  }

  v12 = String._bridgeToObjectiveC()();
  [v11 setIdentifier:v12];

  if (!*&v1[v9])
  {
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v871 = OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView;
  [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerView] addLayoutGuide:?];
  v13 = [objc_allocWithZone(UILayoutGuide) init];
  v14 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide;
  v15 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkPlaceholderLayoutGuide] = v13;
  v16 = v13;

  if (!v16)
  {
LABEL_238:
    __break(1u);
    goto LABEL_239;
  }

  v17 = String._bridgeToObjectiveC()();
  [v16 setIdentifier:v17];

  v863 = v14;
  if (!*&v1[v14])
  {
LABEL_239:
    __break(1u);
    goto LABEL_240;
  }

  [*&v1[v871] addLayoutGuide:?];
  v18 = [objc_allocWithZone(UILayoutGuide) init];
  v19 = String._bridgeToObjectiveC()();
  [v18 setIdentifier:v19];

  v862 = v18;
  [*&v1[v871] addLayoutGuide:v18];
  v20 = [objc_allocWithZone(UILayoutGuide) init];
  v21 = String._bridgeToObjectiveC()();
  [v20 setIdentifier:v21];

  v870 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView;
  v22 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerView];
  if (!v22)
  {
LABEL_240:
    __break(1u);
    goto LABEL_241;
  }

  v851 = v20;
  [v22 addLayoutGuide:v20];
  v23 = [objc_allocWithZone(UILayoutGuide) init];
  v24 = String._bridgeToObjectiveC()();
  [v23 setIdentifier:v24];

  v866 = v23;
  [*&v1[v871] addLayoutGuide:v23];
  v25 = [objc_allocWithZone(UILayoutGuide) init];
  v26 = String._bridgeToObjectiveC()();
  [v25 setIdentifier:v26];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_241:
    __break(1u);
    goto LABEL_242;
  }

  v28 = v27;
  v860 = v25;
  [v27 addLayoutGuide:v25];

  v29 = [objc_allocWithZone(UILayoutGuide) init];
  v30 = String._bridgeToObjectiveC()();
  [v29 setIdentifier:v30];

  v31 = [v1 view];
  if (!v31)
  {
LABEL_242:
    __break(1u);
    goto LABEL_243;
  }

  v32 = v31;
  v856 = v29;
  [v31 addLayoutGuide:v29];

  v33 = sub_1001AFCCC();
  (*((swift_isaMask & *v33) + 0xC8))(0x79616C5020776F4ELL, 0xEB00000000676E69);

  v857 = OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView;
  v34 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberView];
  if (!v34)
  {
LABEL_243:
    __break(1u);
    goto LABEL_244;
  }

  v35 = [v34 topAnchor];
  v36 = [v1 view];
  if (!v36)
  {
LABEL_244:
    __break(1u);
    goto LABEL_245;
  }

  v37 = v36;
  v38 = [v36 safeAreaLayoutGuide];

  v39 = [v38 topAnchor];
  v869 = &v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics];
  v40 = [v35 constraintEqualToAnchor:v39 constant:*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metrics + 8]];

  v41 = OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint;
  v42 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_grabberYConstraint] = v40;

  sub_10010FC20(&qword_101183990);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100EBDC10;
  v44 = *&v1[v868];
  if (!v44)
  {
LABEL_245:
    __break(1u);
    goto LABEL_246;
  }

  v45 = [v44 leadingAnchor];
  v46 = [*&v1[v871] leadingAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v43 + 32) = v47;
  v48 = *&v1[v868];
  if (!v48)
  {
LABEL_246:
    __break(1u);
    goto LABEL_247;
  }

  v49 = [v48 trailingAnchor];
  v50 = [*&v1[v871] trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v43 + 40) = v51;
  v855 = OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton;
  v52 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_shuffleButton] trailingAnchor];
  v53 = OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView;
  v54 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsStackView];
  if (!v54)
  {
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
    goto LABEL_249;
  }

  v55 = [v54 leadingAnchor];
  if (qword_10117F2B8 != -1)
  {
    swift_once();
  }

  v56 = *&qword_101218758;
  v57 = [v52 constraintEqualToAnchor:v55 constant:-*&qword_101218758];

  *(v43 + 48) = v57;
  v854 = OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton;
  v58 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_repeatButton] leadingAnchor];
  v59 = *&v1[v53];
  if (!v59)
  {
    goto LABEL_248;
  }

  v60 = [v59 trailingAnchor];
  v61 = [v58 constraintEqualToAnchor:v60 constant:v56];

  *(v43 + 56) = v61;
  v62 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentRegularLayoutConstraints;
  swift_beginAccess();
  *&v1[v62] = v43;

  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100EBEE70;
  v64 = *&v1[v868];
  if (!v64)
  {
LABEL_249:
    __break(1u);
    goto LABEL_250;
  }

  v65 = [v64 leadingAnchor];
  v66 = *&v1[v857];
  if (!v66)
  {
LABEL_250:
    __break(1u);
    goto LABEL_251;
  }

  v67 = [v66 leadingAnchor];
  v68 = [v65 constraintEqualToAnchor:v67];

  *(v63 + 32) = v68;
  v69 = *&v1[v868];
  if (!v69)
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v70 = [v69 trailingAnchor];
  v71 = [v1 view];
  if (!v71)
  {
LABEL_252:
    __break(1u);
    goto LABEL_253;
  }

  v72 = v71;
  v73 = [v71 trailingAnchor];

  v74 = [v70 constraintEqualToAnchor:v73 constant:-52.0];
  *(v63 + 40) = v74;
  v75 = *&v1[v868];
  if (!v75)
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v76 = [v75 bottomAnchor];
  v864 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView;
  v77 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsStackView];
  if (!v77)
  {
LABEL_254:
    __break(1u);
    goto LABEL_255;
  }

  v78 = [v77 topAnchor];
  v79 = [v76 constraintEqualToAnchor:v78];

  *(v63 + 48) = v79;
  v80 = *&v1[v868];
  if (!v80)
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  v81 = [v80 topAnchor];
  v82 = [v1 view];
  if (!v82)
  {
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
    goto LABEL_258;
  }

  v83 = v82;
  v84 = [v82 topAnchor];

  if (qword_10117F2A8 != -1)
  {
    swift_once();
  }

  v85 = [v81 constraintEqualToAnchor:v84 constant:*&qword_101218748];

  *(v63 + 56) = v85;
  v86 = [*&v1[v855] leadingAnchor];
  v87 = [v866 leadingAnchor];
  v88 = [v86 constraintGreaterThanOrEqualToAnchor:v87 constant:-2.0];

  *(v63 + 64) = v88;
  v89 = [*&v1[v854] trailingAnchor];
  v90 = [v866 trailingAnchor];
  v91 = [v89 constraintGreaterThanOrEqualToAnchor:v90 constant:2.0];

  *(v63 + 72) = v91;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentExtendedLayoutConstraints] = v63;

  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_100EBC6D0;
  v93 = [*&v1[v871] leadingAnchor];
  v94 = [v1 view];
  if (!v94)
  {
    goto LABEL_257;
  }

  v95 = v94;
  v96 = [v94 leadingAnchor];

  v97 = [v93 constraintEqualToAnchor:v96];
  *(v92 + 32) = v97;
  v98 = [*&v1[v871] trailingAnchor];
  v99 = [v1 view];
  if (!v99)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v100 = v99;
  v101 = [v99 trailingAnchor];

  v102 = [v98 constraintEqualToAnchor:v101];
  *(v92 + 40) = v102;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerRegularLayoutConstraints] = v92;

  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_100EBE270;
  v104 = [*&v1[v871] centerXAnchor];
  v105 = [v856 centerXAnchor];
  v106 = [v104 constraintEqualToAnchor:v105];

  *(v103 + 32) = v106;
  v867 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl;
  v107 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeSharePlayTogetherControl] leadingAnchor];
  v108 = [*&v1[v871] leadingAnchor];
  v109 = [v107 constraintEqualToAnchor:v108];

  *(v103 + 40) = v109;
  v110 = [*&v1[v871] widthAnchor];
  v872 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl;
  v111 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControl];
  if (!v111)
  {
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  v112 = [v111 widthAnchor];
  v113 = [v110 constraintEqualToAnchor:v112];

  *(v103 + 48) = v113;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_mainContainerExtendedCollapsedLayoutConstraints] = v103;

  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_100EBE270;
  v115 = *&v1[v863];
  if (!v115)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v116 = [v115 centerXAnchor];
  v117 = [*&v1[v871] centerXAnchor];
  v118 = [v116 constraintEqualToAnchor:v117];

  *(v114 + 32) = v118;
  v119 = *&v1[v863];
  if (!v119)
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  v120 = [v119 widthAnchor];
  v121 = [v120 constraintEqualToConstant:v869[3]];

  *(v114 + 40) = v121;
  v122 = *&v1[v863];
  if (!v122)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v123 = [v122 heightAnchor];
  v124 = [v123 constraintEqualToConstant:v869[4]];

  *(v114 + 48) = v124;
  v125 = OBJC_IVAR___MusicNowPlayingControlsViewController_placeholderArtworkLayoutGuideConstraints;
  swift_beginAccess();
  *&v1[v125] = v114;

  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_100EBDC10;
  v127 = *&v1[v9];
  if (!v127)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v128 = [v127 widthAnchor];
  v129 = [v128 constraintEqualToConstant:v869[3]];

  *(v126 + 32) = v129;
  v130 = *&v1[v9];
  if (!v130)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v131 = [v130 heightAnchor];
  v132 = [v131 constraintEqualToConstant:v869[4]];

  *(v126 + 40) = v132;
  v133 = *&v1[v9];
  if (!v133)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v134 = [v133 centerXAnchor];
  v135 = [*&v1[v871] centerXAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];

  *(v126 + 48) = v136;
  v137 = *&v1[v9];
  if (!v137)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v138 = [v137 topAnchor];
  v139 = [*&v1[v871] topAnchor];
  v140 = [v138 constraintEqualToAnchor:v139 constant:v869[2]];

  *(v126 + 56) = v140;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideRegularConstraints] = v126;

  v141 = *&v1[v9];
  if (!v141)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v142 = [v141 topAnchor];
  v143 = [*&v1[v871] safeAreaLayoutGuide];
  v144 = [v143 topAnchor];

  v859 = OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType;
  v145 = [v142 constraintEqualToAnchor:v144 constant:dbl_100EBF630[v1[OBJC_IVAR___MusicNowPlayingControlsViewController_currentLayoutType]]];

  v146 = OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint;
  v147 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkYConstraint] = v145;

  v148 = swift_allocObject();
  *(v148 + 16) = xmmword_100EBDC10;
  v149 = *&v1[v146];
  if (!v149)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  v150 = v148;
  *(v148 + 32) = v149;
  v151 = *&v1[v9];
  if (!v151)
  {
LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  v152 = v149;
  v153 = [v151 leadingAnchor];
  v154 = [*&v1[v871] leadingAnchor];
  v155 = [v153 constraintEqualToAnchor:v154 constant:dbl_100EBF630[v1[v859]]];

  v150[5] = v155;
  v156 = *&v1[v9];
  if (!v156)
  {
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  v157 = [v156 widthAnchor];
  if (qword_10117F2B0 != -1)
  {
    swift_once();
  }

  v158 = *&qword_101218750;
  v159 = [v157 constraintEqualToConstant:*&qword_101218750];

  v150[6] = v159;
  v160 = *&v1[v9];
  if (!v160)
  {
    goto LABEL_271;
  }

  v161 = [v160 heightAnchor];
  v162 = *&v1[v9];
  if (!v162)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  v163 = [v162 widthAnchor];
  v164 = [v161 constraintEqualToAnchor:v163];

  v150[7] = v164;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideCollapsedConstraints] = v150;

  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_100EBDC10;
  v166 = *&v1[v9];
  if (!v166)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  v167 = [v166 widthAnchor];
  v168 = [v1 view];
  if (!v168)
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v169 = v168;
  v170 = [v168 widthAnchor];

  v171 = [v167 constraintEqualToAnchor:v170];
  *(v165 + 32) = v171;
  v172 = *&v1[v9];
  if (!v172)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v173 = [v172 heightAnchor];
  v174 = [v1 view];
  if (!v174)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  v175 = v174;
  v176 = [v174 heightAnchor];

  v177 = [v173 constraintEqualToAnchor:v176];
  *(v165 + 40) = v177;
  v178 = *&v1[v9];
  if (!v178)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v179 = [v178 centerXAnchor];
  v180 = [v1 view];
  if (!v180)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  v181 = v180;
  v182 = [v180 centerXAnchor];

  v183 = [v179 constraintEqualToAnchor:v182];
  *(v165 + 48) = v183;
  v184 = *&v1[v9];
  if (!v184)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  v185 = [v184 topAnchor];
  v186 = [v1 view];
  if (!v186)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v187 = v186;
  v188 = [v186 topAnchor];

  v189 = [v185 constraintEqualToAnchor:v188];
  *(v165 + 56) = v189;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_artworkLayoutGuideFullBleedConstraints] = v165;

  v190 = *&v1[v870];
  if (!v190)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v191 = [v190 topAnchor];
  v192 = *&v1[v863];
  if (!v192)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  v193 = [v192 bottomAnchor];
  v194 = [v191 constraintEqualToAnchor:v193];

  LODWORD(v195) = 1148829696;
  v196 = [v194 withPriority:v195];

  v197 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint;
  v198 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerMinYConstraint] = v196;

  v199 = *&v1[v870];
  if (!v199)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v200 = [v199 centerYAnchor];
  v201 = [v862 centerYAnchor];
  v202 = [v200 constraintEqualToAnchor:v201];

  LODWORD(v203) = 1148829696;
  v204 = [v202 withPriority:v203];

  v205 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerCenterYConstraint] = v204;

  v206 = [v862 heightAnchor];
  v207 = [v206 constraintEqualToConstant:90.0];

  v208 = OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint;
  v209 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_topContainerLayoutGuideHeightConstraint] = v207;

  v210 = swift_allocObject();
  *(v210 + 16) = xmmword_100EBEE80;
  v211 = *&v1[v197];
  if (!v211)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  v212 = v210;
  v846 = v208;
  *(v210 + 32) = v211;
  v213 = *&v1[v870];
  if (!v213)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  v214 = v211;
  v215 = [v213 centerYAnchor];
  v216 = [v862 centerYAnchor];
  v217 = [v215 constraintGreaterThanOrEqualToAnchor:v216];

  v212[5] = v217;
  v218 = *&v1[v870];
  if (!v218)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  v219 = [v218 leadingAnchor];
  v220 = *&v1[v872];
  if (!v220)
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  v221 = [v220 leadingAnchor];
  v222 = [v219 constraintEqualToAnchor:v221 constant:-24.0];

  v212[6] = v222;
  v223 = *&v1[v870];
  if (!v223)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v224 = [v223 trailingAnchor];
  v225 = *&v1[v872];
  if (!v225)
  {
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  v226 = [v225 trailingAnchor];
  v227 = [v224 constraintEqualToAnchor:v226];

  v212[7] = v227;
  v228 = *&v1[v870];
  if (!v228)
  {
LABEL_290:
    __break(1u);
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  v229 = [v228 heightAnchor];
  v230 = sub_1001AA510();
  v231 = [v230 heightAnchor];

  v232 = [v229 constraintGreaterThanOrEqualToAnchor:v231];
  v212[8] = v232;
  v849 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView;
  v233 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionView] leadingAnchor];
  v848 = OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView;
  v234 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_attributionContainerView] leadingAnchor];
  if (qword_10117F310 != -1)
  {
    swift_once();
  }

  v235 = *&qword_101183308;
  v236 = [v233 constraintEqualToAnchor:v234 constant:24.0 - *&qword_101183308];

  v212[9] = v236;
  v861 = OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView;
  v237 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_buttonsStackView];
  if (!v237)
  {
    goto LABEL_291;
  }

  v238 = [v237 centerYAnchor];
  v239 = [v851 centerYAnchor];
  v240 = [v238 constraintEqualToAnchor:v239];

  v212[10] = v240;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController__metadataStackViewRegularConstraints] = v212;

  v241 = swift_allocObject();
  *(v241 + 16) = xmmword_100EBEE70;
  v242 = *&v1[v870];
  if (!v242)
  {
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  v243 = [v242 centerYAnchor];
  v244 = *&v1[v9];
  if (!v244)
  {
LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  v245 = [v244 centerYAnchor];
  v246 = [v243 constraintEqualToAnchor:v245 constant:3.0];

  *(v241 + 32) = v246;
  v852 = OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView;
  v247 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackView];
  if (!v247)
  {
LABEL_294:
    __break(1u);
    goto LABEL_295;
  }

  v248 = [v247 leadingAnchor];
  v249 = [v1 view];
  if (!v249)
  {
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  v250 = v249;
  v251 = [v249 layoutMarginsGuide];

  v252 = [v251 leadingAnchor];
  v253 = [v248 constraintEqualToAnchor:v252 constant:v158];

  *(v241 + 40) = v253;
  v254 = *&v1[v870];
  if (!v254)
  {
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

  v255 = [v254 trailingAnchor];
  v256 = *&v1[v872];
  if (!v256)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  v257 = [v256 trailingAnchor];
  v258 = [v255 constraintEqualToAnchor:v257];

  *(v241 + 48) = v258;
  v259 = *&v1[v870];
  if (!v259)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  v260 = [v259 heightAnchor];
  v845 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton;
  v261 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___contextSystemButton] heightAnchor];
  v262 = [v260 constraintGreaterThanOrEqualToAnchor:v261];

  *(v241 + 56) = v262;
  v263 = [*&v1[v849] leadingAnchor];
  v264 = [*&v1[v848] leadingAnchor];
  v265 = [v263 constraintEqualToAnchor:v264 constant:12.0 - v235];

  *(v241 + 64) = v265;
  v266 = *&v1[v861];
  if (!v266)
  {
LABEL_299:
    __break(1u);
    goto LABEL_300;
  }

  v267 = [v266 centerYAnchor];
  v268 = *&v1[v870];
  if (!v268)
  {
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v269 = [v268 centerYAnchor];
  v270 = [v267 constraintEqualToAnchor:v269];

  *(v241 + 72) = v270;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_metadataStackViewCollapsedConstraints] = v241;

  v271 = *&v1[v872];
  if (!v271)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  v272 = [v271 widthAnchor];
  v273 = [v272 constraintEqualToConstant:v869[5]];

  v274 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint];
  v844 = OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_timeControlWidthConstraint] = v273;

  v847 = OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton;
  v275 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButton];
  if (!v275)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v276 = [v275 widthAnchor];
  v277 = [v276 constraintEqualToConstant:40.0];

  v278 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint];
  v843 = OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_leftButtonWidthConstraint] = v277;

  v279 = [v866 heightAnchor];
  v280 = [v279 constraintEqualToConstant:0.0];

  v281 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_transportControlsLayoutGuideHeightConstraint] = v280;

  v858 = OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider;
  v282 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlider];
  if (!v282)
  {
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  v283 = [*(v282 + OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide) bottomAnchor];
  v284 = [v860 topAnchor];
  v285 = [v283 constraintEqualToAnchor:v284 constant:v869[11]];

  v286 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint];
  v842 = OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_volumeSlideBottomConstraint] = v285;

  v287 = [v860 heightAnchor];
  v288 = [v287 constraintEqualToConstant:108.0];

  v289 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint];
  v841 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsLayoutGuideHeightConstraint] = v288;

  v290 = [*&v1[v867] leadingAnchor];
  v291 = [v1 view];
  if (!v291)
  {
LABEL_304:
    __break(1u);
    goto LABEL_305;
  }

  v292 = v291;
  v293 = [v291 leadingAnchor];

  v294 = [v290 constraintEqualToAnchor:v293];
  v295 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint;
  v296 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeButtonRegularLeadingConstraint] = v294;

  v297 = swift_allocObject();
  *(v297 + 16) = xmmword_100EBEE90;
  v298 = *&v1[v864];
  if (!v298)
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  v299 = [v298 centerXAnchor];
  v865 = OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView;
  v300 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomContainerView];
  if (!v300)
  {
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  v301 = [v300 centerXAnchor];
  v302 = [v299 constraintEqualToAnchor:v301];

  *(v297 + 32) = v302;
  v303 = *&v1[v864];
  if (!v303)
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  v304 = [v303 widthAnchor];
  v305 = [v304 constraintEqualToConstant:290.0];

  *(v297 + 40) = v305;
  v306 = *&v1[v864];
  if (!v306)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v307 = [v306 heightAnchor];
  v308 = [v307 constraintEqualToConstant:62.0];

  *(v297 + 48) = v308;
  v309 = *&v1[v864];
  if (!v309)
  {
LABEL_309:
    __break(1u);
    goto LABEL_310;
  }

  v310 = [v309 centerYAnchor];
  v311 = [v860 centerYAnchor];
  v312 = [v310 constraintLessThanOrEqualToAnchor:v311];

  *(v297 + 56) = v312;
  v313 = *&v1[v864];
  if (!v313)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  v314 = [v313 bottomAnchor];
  v315 = *&v1[v865];
  if (!v315)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  v316 = [v315 safeAreaLayoutGuide];
  v317 = [v316 bottomAnchor];

  v318 = [v314 constraintGreaterThanOrEqualToAnchor:v317 constant:-2.0];
  *(v297 + 64) = v318;
  v319 = OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel;
  v320 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_routeLabel];
  if (!v320)
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v321 = [v320 topAnchor];
  v322 = [*&v1[v867] bottomAnchor];
  v323 = [v321 constraintEqualToAnchor:v322 constant:6.0];

  *(v297 + 72) = v323;
  v324 = *&v1[v319];
  if (!v324)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v325 = [v324 centerXAnchor];
  v326 = [*&v1[v867] centerXAnchor];
  v327 = [v325 constraintEqualToAnchor:v326];

  *(v297 + 80) = v327;
  v328 = *&v1[v319];
  if (!v328)
  {
LABEL_314:
    __break(1u);
    goto LABEL_315;
  }

  v329 = [v328 leadingAnchor];
  v853 = OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton;
  v330 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_lyricsButton];
  if (!v330)
  {
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  v331 = [v330 trailingAnchor];
  v332 = [v329 constraintGreaterThanOrEqualToAnchor:v331];

  *(v297 + 88) = v332;
  v333 = *&v1[v319];
  if (!v333)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v334 = [v333 trailingAnchor];
  v850 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton;
  v335 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueButton];
  if (!v335)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v336 = [v335 leadingAnchor];
  v337 = [v334 constraintLessThanOrEqualToAnchor:v336];

  *(v297 + 96) = v337;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsCompactConstraints] = v297;

  v338 = swift_allocObject();
  *(v338 + 16) = xmmword_100EBEEA0;
  v339 = *&v1[v295];
  if (!v339)
  {
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v340 = v338;
  *(v338 + 32) = v339;
  v341 = *&v1[v867];
  v342 = v339;
  v343 = [v341 centerYAnchor];
  v344 = *&v1[v853];
  if (!v344)
  {
LABEL_319:
    __break(1u);
    goto LABEL_320;
  }

  v345 = [v344 centerYAnchor];
  v346 = [v343 constraintEqualToAnchor:v345];

  v340[5] = v346;
  v347 = [*&v1[v867] trailingAnchor];
  v348 = *&v1[v864];
  if (!v348)
  {
LABEL_320:
    __break(1u);
    goto LABEL_321;
  }

  v349 = [v348 leadingAnchor];
  v350 = [v347 constraintLessThanOrEqualToAnchor:v349];

  v340[6] = v350;
  v351 = *&v1[v319];
  if (!v351)
  {
LABEL_321:
    __break(1u);
    goto LABEL_322;
  }

  v352 = [v351 leadingAnchor];
  v353 = [*&v1[v867] trailingAnchor];
  v354 = [v352 constraintEqualToAnchor:v353 constant:6.0];

  v340[7] = v354;
  v355 = *&v1[v319];
  if (!v355)
  {
LABEL_322:
    __break(1u);
    goto LABEL_323;
  }

  v356 = [v355 centerYAnchor];
  v357 = [*&v1[v867] centerYAnchor];
  v358 = [v356 constraintEqualToAnchor:v357];

  v340[8] = v358;
  v359 = *&v1[v319];
  if (!v359)
  {
LABEL_323:
    __break(1u);
    goto LABEL_324;
  }

  v360 = [v359 trailingAnchor];
  v361 = *&v1[v853];
  if (!v361)
  {
LABEL_324:
    __break(1u);
    goto LABEL_325;
  }

  v362 = [v361 leadingAnchor];
  v363 = [v360 constraintLessThanOrEqualToAnchor:v362];

  v340[9] = v363;
  v364 = *&v1[v864];
  if (!v364)
  {
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v365 = [v364 topAnchor];
  v366 = [v860 topAnchor];
  v367 = [v365 constraintEqualToAnchor:v366 constant:-12.0];

  v340[10] = v367;
  v368 = *&v1[v864];
  if (!v368)
  {
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v369 = [v368 trailingAnchor];
  v370 = [v1 view];
  if (!v370)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v371 = v370;
  v372 = [v370 layoutMarginsGuide];

  v373 = [v372 trailingAnchor];
  v374 = [v369 constraintEqualToAnchor:v373 constant:12.0];

  v340[11] = v374;
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_bottomButtonsRegularConstraints] = v340;

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  v376 = OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton;
  v377 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playingItemAudioTraitButton];
  if (!v377)
  {
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  v378 = [v377 centerXAnchor];
  v379 = *&v1[v872];
  if (!v379)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  v380 = [v379 centerXAnchor];
  v381 = [v378 constraintEqualToAnchor:v380];

  *(inited + 32) = v381;
  v382 = *&v1[v376];
  if (!v382)
  {
LABEL_330:
    __break(1u);
    goto LABEL_331;
  }

  v383 = [v382 centerYAnchor];
  v384 = *&v1[v872];
  if (!v384)
  {
LABEL_331:
    __break(1u);
    goto LABEL_332;
  }

  v385 = v383;
  v386 = [*(v384 + OBJC_IVAR____TtC5Music17PlayerTimeControl_elapsedTimeLabel) centerYAnchor];
  v387 = [v385 constraintEqualToAnchor:v386];

  *(inited + 40) = v387;
  v388 = swift_allocObject();
  *(v388 + 16) = xmmword_100EBEEB0;
  v389 = [v856 leadingAnchor];
  v390 = [v1 view];
  if (!v390)
  {
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  v391 = v390;
  v392 = [v390 leadingAnchor];

  v393 = [v389 constraintEqualToAnchor:v392];
  *(v388 + 32) = v393;
  v394 = [v856 trailingAnchor];
  v395 = *&v1[v868];
  if (!v395)
  {
LABEL_333:
    __break(1u);
    goto LABEL_334;
  }

  v396 = [v395 leadingAnchor];
  v397 = [v394 constraintEqualToAnchor:v396];

  *(v388 + 40) = v397;
  v398 = [v856 topAnchor];
  v399 = [v1 view];
  if (!v399)
  {
LABEL_334:
    __break(1u);
    goto LABEL_335;
  }

  v400 = v399;
  v401 = [v399 topAnchor];

  v402 = [v398 constraintEqualToAnchor:v401];
  *(v388 + 48) = v402;
  v403 = [v856 bottomAnchor];
  v404 = [v1 view];
  if (!v404)
  {
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

  v405 = v404;
  v406 = [v404 bottomAnchor];

  v407 = [v403 constraintEqualToAnchor:v406];
  *(v388 + 56) = v407;
  v408 = [*&v1[v871] topAnchor];
  v409 = [v1 view];
  if (!v409)
  {
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  v410 = v409;
  v411 = [v409 topAnchor];

  v412 = [v408 constraintEqualToAnchor:v411];
  *(v388 + 64) = v412;
  v413 = [*&v1[v871] bottomAnchor];
  v414 = [v1 view];
  if (!v414)
  {
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v415 = v414;
  v416 = [v414 bottomAnchor];

  v417 = [v413 constraintEqualToAnchor:v416];
  *(v388 + 72) = v417;
  v418 = OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton;
  v419 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_dismissButton];
  if (!v419)
  {
LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  v420 = [v419 topAnchor];
  v421 = [v1 view];
  if (!v421)
  {
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  v422 = v421;
  v423 = [v421 safeAreaLayoutGuide];

  v424 = [v423 topAnchor];
  v425 = [v420 constraintEqualToAnchor:v424];

  *(v388 + 80) = v425;
  v426 = *&v1[v418];
  if (!v426)
  {
LABEL_340:
    __break(1u);
    goto LABEL_341;
  }

  v427 = [v426 bottomAnchor];
  v428 = [*&v1[v871] safeAreaLayoutGuide];
  v429 = [v428 topAnchor];

  v430 = [v427 constraintEqualToAnchor:v429 constant:dbl_100EBF630[v1[v859]]];
  *(v388 + 88) = v430;
  v431 = *&v1[v418];
  if (!v431)
  {
LABEL_341:
    __break(1u);
    goto LABEL_342;
  }

  v432 = [v431 leadingAnchor];
  v433 = [v1 view];
  if (!v433)
  {
LABEL_342:
    __break(1u);
    goto LABEL_343;
  }

  v434 = v433;
  v435 = [v433 leadingAnchor];

  v436 = [v432 constraintEqualToAnchor:v435];
  *(v388 + 96) = v436;
  v437 = *&v1[v418];
  if (!v437)
  {
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v438 = [v437 trailingAnchor];
  v439 = [v1 view];
  if (!v439)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v440 = v439;
  v441 = [v439 trailingAnchor];

  v442 = [v438 constraintEqualToAnchor:v441];
  *(v388 + 104) = v442;
  v443 = *&v1[v41];
  if (!v443)
  {
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  *(v388 + 112) = v443;
  v444 = *&v1[v857];
  if (!v444)
  {
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  v445 = v443;
  v446 = [v444 centerXAnchor];
  v447 = [v1 view];
  if (!v447)
  {
LABEL_347:
    __break(1u);
    goto LABEL_348;
  }

  v448 = v447;
  v449 = [v447 centerXAnchor];

  v450 = [v446 constraintEqualToAnchor:v449];
  *(v388 + 120) = v450;
  v451 = *&v1[v846];
  if (!v451)
  {
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  *(v388 + 128) = v451;
  v452 = v451;
  v453 = [v862 leadingAnchor];
  v454 = *&v1[v872];
  if (!v454)
  {
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  v455 = [v454 leadingAnchor];
  v456 = [v453 constraintEqualToAnchor:v455];

  *(v388 + 136) = v456;
  v457 = [v862 trailingAnchor];
  v458 = *&v1[v872];
  if (!v458)
  {
LABEL_350:
    __break(1u);
    goto LABEL_351;
  }

  v459 = [v458 trailingAnchor];
  v460 = [v457 constraintEqualToAnchor:v459];

  *(v388 + 144) = v460;
  v461 = [v862 topAnchor];
  v462 = *&v1[v863];
  if (!v462)
  {
LABEL_351:
    __break(1u);
    goto LABEL_352;
  }

  v463 = [v462 bottomAnchor];
  v464 = [v461 constraintEqualToAnchor:v463];

  *(v388 + 152) = v464;
  v465 = [v862 bottomAnchor];
  v466 = *&v1[v872];
  if (!v466)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  v467 = v465;
  v468 = *(v466 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v469 = *((swift_isaMask & *v468) + 0x1D8);
  v470 = v468;
  v471 = v469();

  v472 = [v471 topAnchor];
  v473 = [v467 constraintEqualToAnchor:v472 constant:10.0];

  LODWORD(v474) = 1144750080;
  v475 = [v473 withPriority:v474];

  *(v388 + 160) = v475;
  v476 = *&v1[v861];
  if (!v476)
  {
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  v477 = [v476 trailingAnchor];
  v478 = *&v1[v870];
  if (!v478)
  {
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  v479 = [v478 trailingAnchor];
  v480 = [v477 constraintEqualToAnchor:v479];

  *(v388 + 168) = v480;
  v481 = *&v1[v861];
  if (!v481)
  {
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  v482 = [v481 heightAnchor];
  v483 = [v482 constraintEqualToConstant:32.0];

  *(v388 + 176) = v483;
  v484 = [*&v1[v845] heightAnchor];
  v485 = *&v1[v861];
  if (!v485)
  {
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v486 = [v485 heightAnchor];
  v487 = [v484 constraintEqualToAnchor:v486];

  *(v388 + 184) = v487;
  v488 = [*&v1[v845] widthAnchor];
  v489 = [*&v1[v845] heightAnchor];
  v490 = [v488 constraintEqualToAnchor:v489];

  *(v388 + 192) = v490;
  v491 = OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton;
  v492 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_reactionButton];
  if (!v492)
  {
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v493 = [v492 heightAnchor];
  v494 = *&v1[v861];
  if (!v494)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  v495 = [v494 heightAnchor];
  v496 = [v493 constraintEqualToAnchor:v495];

  *(v388 + 200) = v496;
  v497 = *&v1[v491];
  if (!v497)
  {
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  v498 = [v497 widthAnchor];
  v499 = *&v1[v491];
  if (!v499)
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  v500 = [v499 heightAnchor];
  v501 = [v498 constraintEqualToAnchor:v500];

  *(v388 + 208) = v501;
  v502 = sub_1001AB0B4();
  v503 = [v502 heightAnchor];

  v504 = *&v1[v861];
  if (!v504)
  {
LABEL_361:
    __break(1u);
    goto LABEL_362;
  }

  v505 = [v504 heightAnchor];
  v506 = [v503 constraintEqualToAnchor:v505];

  *(v388 + 216) = v506;
  v507 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton;
  v508 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___favoriteSystemButton] widthAnchor];
  v509 = [*&v1[v507] heightAnchor];
  v510 = [v508 constraintEqualToAnchor:v509];

  *(v388 + 224) = v510;
  v511 = [*&v1[v507] widthAnchor];
  v512 = *&v1[v861];
  if (!v512)
  {
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  v513 = [v512 heightAnchor];
  v514 = [v511 constraintEqualToAnchor:v513];

  *(v388 + 232) = v514;
  v515 = *&v1[v852];
  if (!v515)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  v516 = [v515 leadingAnchor];
  v517 = *&v1[v870];
  if (!v517)
  {
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  v518 = [v517 leadingAnchor];
  v519 = [v516 constraintEqualToAnchor:v518];

  *(v388 + 240) = v519;
  v520 = *&v1[v852];
  if (!v520)
  {
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  v521 = [v520 trailingAnchor];
  v522 = *&v1[v861];
  if (!v522)
  {
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  v523 = [v522 leadingAnchor];
  v524 = [v521 constraintEqualToAnchor:v523 constant:-4.0];

  *(v388 + 248) = v524;
  v525 = *&v1[v852];
  if (!v525)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  v526 = [v525 topAnchor];
  v527 = *&v1[v870];
  if (!v527)
  {
LABEL_368:
    __break(1u);
    goto LABEL_369;
  }

  v528 = [v527 topAnchor];
  v529 = [v526 constraintEqualToAnchor:v528];

  *(v388 + 256) = v529;
  v530 = *&v1[v852];
  if (!v530)
  {
LABEL_369:
    __break(1u);
    goto LABEL_370;
  }

  v531 = [v530 bottomAnchor];
  v532 = *&v1[v870];
  if (!v532)
  {
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  v533 = [v532 bottomAnchor];
  v534 = [v531 constraintEqualToAnchor:v533];

  *(v388 + 264) = v534;
  v535 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView;
  v536 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___titlesStackView] leadingAnchor];
  v537 = *&v1[v852];
  if (!v537)
  {
LABEL_371:
    __break(1u);
    goto LABEL_372;
  }

  v538 = [v537 leadingAnchor];
  v539 = [v536 constraintEqualToAnchor:v538];

  *(v388 + 272) = v539;
  v540 = [*&v1[v535] trailingAnchor];
  v541 = *&v1[v852];
  if (!v541)
  {
LABEL_372:
    __break(1u);
    goto LABEL_373;
  }

  v542 = [v541 trailingAnchor];
  v543 = [v540 constraintEqualToAnchor:v542];

  *(v388 + 280) = v543;
  v544 = *&v1[v844];
  if (!v544)
  {
LABEL_373:
    __break(1u);
    goto LABEL_374;
  }

  *(v388 + 288) = v544;
  v545 = *&v1[v872];
  if (!v545)
  {
LABEL_374:
    __break(1u);
    goto LABEL_375;
  }

  v546 = v544;
  v547 = [v545 centerXAnchor];
  v548 = [*&v1[v871] centerXAnchor];
  v549 = [v547 constraintEqualToAnchor:v548];

  *(v388 + 296) = v549;
  v550 = *&v1[v865];
  if (!v550)
  {
LABEL_375:
    __break(1u);
    goto LABEL_376;
  }

  v551 = [v550 topAnchor];
  v552 = *&v1[v872];
  if (!v552)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v553 = v551;
  v554 = *(v552 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v555 = *((swift_isaMask & *v554) + 0x1D8);
  v556 = v554;
  v557 = v555();

  v558 = [v557 bottomAnchor];
  v559 = [v553 constraintEqualToAnchor:v558];

  *(v388 + 304) = v559;
  v560 = *&v1[v865];
  if (!v560)
  {
LABEL_377:
    __break(1u);
    goto LABEL_378;
  }

  v561 = [v560 leadingAnchor];
  v562 = [*&v1[v871] leadingAnchor];
  v563 = [v561 constraintEqualToAnchor:v562];

  *(v388 + 312) = v563;
  v564 = *&v1[v865];
  if (!v564)
  {
LABEL_378:
    __break(1u);
    goto LABEL_379;
  }

  v565 = [v564 trailingAnchor];
  v566 = [*&v1[v871] trailingAnchor];
  v567 = [v565 constraintEqualToAnchor:v566];

  *(v388 + 320) = v567;
  v568 = *&v1[v865];
  if (!v568)
  {
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  v569 = [v568 bottomAnchor];
  v570 = [*&v1[v871] bottomAnchor];
  v571 = [v569 constraintEqualToAnchor:v570];

  *(v388 + 328) = v571;
  v572 = *&v1[v843];
  if (!v572)
  {
LABEL_380:
    __break(1u);
    goto LABEL_381;
  }

  *(v388 + 336) = v572;
  v573 = OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton;
  v574 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_playPauseStopButton];
  if (!v574)
  {
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  v575 = v572;
  v576 = [v574 widthAnchor];
  v577 = *&v1[v847];
  if (!v577)
  {
LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  v578 = [v577 widthAnchor];
  v579 = [v576 constraintEqualToAnchor:v578];

  *(v388 + 344) = v579;
  v580 = OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton;
  v581 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_rightButton];
  if (!v581)
  {
LABEL_383:
    __break(1u);
    goto LABEL_384;
  }

  v582 = [v581 widthAnchor];
  v583 = *&v1[v847];
  if (!v583)
  {
LABEL_384:
    __break(1u);
    goto LABEL_385;
  }

  v584 = [v583 widthAnchor];
  v585 = [v582 constraintEqualToAnchor:v584];

  *(v388 + 352) = v585;
  v586 = *&v1[v847];
  if (!v586)
  {
LABEL_385:
    __break(1u);
    goto LABEL_386;
  }

  v587 = [v586 heightAnchor];
  v588 = *&v1[v847];
  if (!v588)
  {
LABEL_386:
    __break(1u);
    goto LABEL_387;
  }

  v589 = [v588 widthAnchor];
  v590 = [v587 constraintEqualToAnchor:v589];

  *(v388 + 360) = v590;
  v591 = *&v1[v573];
  if (!v591)
  {
LABEL_387:
    __break(1u);
    goto LABEL_388;
  }

  v592 = [v591 heightAnchor];
  v593 = *&v1[v573];
  if (!v593)
  {
LABEL_388:
    __break(1u);
    goto LABEL_389;
  }

  v594 = [v593 widthAnchor];
  v595 = [v592 constraintEqualToAnchor:v594];

  *(v388 + 368) = v595;
  v596 = *&v1[v580];
  if (!v596)
  {
LABEL_389:
    __break(1u);
    goto LABEL_390;
  }

  v597 = [v596 heightAnchor];
  v598 = *&v1[v580];
  if (!v598)
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v599 = [v598 widthAnchor];
  v600 = [v597 constraintEqualToAnchor:v599];

  *(v388 + 376) = v600;
  v601 = [v866 leadingAnchor];
  v602 = *&v1[v872];
  if (!v602)
  {
LABEL_391:
    __break(1u);
    goto LABEL_392;
  }

  v603 = [v602 leadingAnchor];
  v604 = [v601 constraintEqualToAnchor:v603];

  *(v388 + 384) = v604;
  v605 = [v866 trailingAnchor];
  v606 = *&v1[v872];
  if (!v606)
  {
LABEL_392:
    __break(1u);
    goto LABEL_393;
  }

  v607 = [v606 trailingAnchor];
  v608 = [v605 constraintEqualToAnchor:v607];

  *(v388 + 392) = v608;
  v609 = [v866 topAnchor];
  v610 = *&v1[v872];
  if (!v610)
  {
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v611 = v609;
  v612 = *(v610 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v613 = *((swift_isaMask & *v612) + 0x1D8);
  v614 = v612;
  v615 = v613();

  v616 = [v615 bottomAnchor];
  v617 = [v611 constraintEqualToAnchor:v616 constant:5.0];

  *(v388 + 400) = v617;
  v618 = [v866 bottomAnchor];
  v619 = *&v1[v858];
  if (!v619)
  {
LABEL_394:
    __break(1u);
    goto LABEL_395;
  }

  v620 = v618;
  v621 = [*(v619 + OBJC_IVAR____TtC5Music12VolumeSlider_trackLayoutGuide) topAnchor];
  v622 = [v620 constraintEqualToAnchor:v621];

  *(v388 + 408) = v622;
  v623 = *&v1[v53];
  if (!v623)
  {
LABEL_395:
    __break(1u);
    goto LABEL_396;
  }

  v624 = [v623 topAnchor];
  v625 = *&v1[v865];
  if (!v625)
  {
LABEL_396:
    __break(1u);
    goto LABEL_397;
  }

  v626 = [v625 topAnchor];
  v627 = [v624 constraintEqualToAnchor:v626 constant:24.0];

  *(v388 + 416) = v627;
  v628 = *&v1[v573];
  if (!v628)
  {
LABEL_397:
    __break(1u);
    goto LABEL_398;
  }

  v629 = [v628 centerXAnchor];
  v630 = *&v1[v865];
  if (!v630)
  {
LABEL_398:
    __break(1u);
    goto LABEL_399;
  }

  v631 = [v630 centerXAnchor];
  v632 = [v629 constraintEqualToAnchor:v631];

  *(v388 + 424) = v632;
  v633 = *&v1[v53];
  if (!v633)
  {
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  v634 = [v633 centerYAnchor];
  v635 = [v866 centerYAnchor];
  v636 = [v634 constraintEqualToAnchor:v635];

  *(v388 + 432) = v636;
  v637 = [*&v1[v855] widthAnchor];
  v638 = [v637 constraintEqualToConstant:32.0];

  *(v388 + 440) = v638;
  v639 = [*&v1[v855] heightAnchor];
  v640 = [*&v1[v855] widthAnchor];
  v641 = [v639 constraintEqualToAnchor:v640];

  *(v388 + 448) = v641;
  v642 = [*&v1[v854] widthAnchor];
  v643 = [v642 constraintEqualToConstant:32.0];

  *(v388 + 456) = v643;
  v644 = [*&v1[v854] heightAnchor];
  v645 = [*&v1[v854] widthAnchor];
  v646 = [v644 constraintEqualToAnchor:v645];

  *(v388 + 464) = v646;
  v647 = *&v1[v842];
  if (!v647)
  {
LABEL_400:
    __break(1u);
    goto LABEL_401;
  }

  *(v388 + 472) = v647;
  v648 = *&v1[v858];
  if (!v648)
  {
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  v649 = v647;
  v650 = [v648 leadingAnchor];
  v651 = *&v1[v872];
  if (!v651)
  {
LABEL_402:
    __break(1u);
    goto LABEL_403;
  }

  v652 = [v651 leadingAnchor];
  v653 = [v650 constraintEqualToAnchor:v652 constant:1.0];

  *(v388 + 480) = v653;
  v654 = *&v1[v858];
  if (!v654)
  {
LABEL_403:
    __break(1u);
    goto LABEL_404;
  }

  v655 = [v654 trailingAnchor];
  v656 = *&v1[v872];
  if (!v656)
  {
LABEL_404:
    __break(1u);
    goto LABEL_405;
  }

  v657 = [v656 trailingAnchor];
  v658 = [v655 constraintEqualToAnchor:v657 constant:-1.0];

  *(v388 + 488) = v658;
  v659 = *&v1[v858];
  if (!v659)
  {
LABEL_405:
    __break(1u);
    goto LABEL_406;
  }

  v660 = [v659 heightAnchor];
  v661 = [v660 constraintEqualToConstant:40.0];

  *(v388 + 496) = v661;
  v662 = *&v1[v853];
  if (!v662)
  {
LABEL_406:
    __break(1u);
    goto LABEL_407;
  }

  v663 = [v662 heightAnchor];
  v664 = [v663 constraintEqualToConstant:38.0];

  *(v388 + 504) = v664;
  v665 = *&v1[v853];
  if (!v665)
  {
LABEL_407:
    __break(1u);
    goto LABEL_408;
  }

  v666 = [v665 widthAnchor];
  v667 = *&v1[v853];
  if (!v667)
  {
LABEL_408:
    __break(1u);
    goto LABEL_409;
  }

  v668 = [v667 heightAnchor];
  v669 = [v666 constraintEqualToAnchor:v668];

  *(v388 + 512) = v669;
  v670 = *&v1[v850];
  if (!v670)
  {
LABEL_409:
    __break(1u);
    goto LABEL_410;
  }

  v671 = [v670 heightAnchor];
  v672 = [v671 constraintEqualToConstant:38.0];

  *(v388 + 520) = v672;
  v673 = *&v1[v850];
  if (!v673)
  {
LABEL_410:
    __break(1u);
    goto LABEL_411;
  }

  v674 = [v673 widthAnchor];
  v675 = *&v1[v850];
  if (!v675)
  {
LABEL_411:
    __break(1u);
    goto LABEL_412;
  }

  v676 = [v675 heightAnchor];
  v677 = [v674 constraintEqualToAnchor:v676];

  *(v388 + 528) = v677;
  v678 = [v860 leadingAnchor];
  v679 = *&v1[v872];
  if (!v679)
  {
LABEL_412:
    __break(1u);
    goto LABEL_413;
  }

  v680 = [v679 leadingAnchor];
  v681 = [v678 constraintEqualToAnchor:v680];

  *(v388 + 536) = v681;
  v682 = [v860 trailingAnchor];
  v683 = *&v1[v872];
  if (!v683)
  {
LABEL_413:
    __break(1u);
    goto LABEL_414;
  }

  v684 = [v683 trailingAnchor];
  v685 = [v682 constraintEqualToAnchor:v684];

  *(v388 + 544) = v685;
  v686 = [v860 bottomAnchor];
  v687 = *&v1[v865];
  if (!v687)
  {
LABEL_414:
    __break(1u);
    goto LABEL_415;
  }

  v688 = [v687 bottomAnchor];
  v689 = [v686 constraintEqualToAnchor:v688];

  LODWORD(v690) = 1144750080;
  v691 = [v689 withPriority:v690];

  *(v388 + 552) = v691;
  v692 = [v860 bottomAnchor];
  v693 = *&v1[v865];
  if (!v693)
  {
LABEL_415:
    __break(1u);
    goto LABEL_416;
  }

  v694 = [v693 bottomAnchor];
  v695 = [v692 constraintLessThanOrEqualToAnchor:v694];

  *(v388 + 560) = v695;
  v696 = [*&v1[v867] bottomAnchor];
  v697 = *&v1[v865];
  if (!v697)
  {
LABEL_416:
    __break(1u);
    goto LABEL_417;
  }

  v698 = [v697 bottomAnchor];
  v699 = [v696 constraintLessThanOrEqualToAnchor:v698];

  *(v388 + 568) = v699;
  v700 = *&v1[v841];
  if (!v700)
  {
LABEL_417:
    __break(1u);
    goto LABEL_418;
  }

  *(v388 + 576) = v700;
  v701 = OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView;
  v702 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_queueModeBadgeView];
  if (!v702)
  {
LABEL_418:
    __break(1u);
    goto LABEL_419;
  }

  v703 = v700;
  v704 = [v702 widthAnchor];
  v705 = [v704 constraintEqualToConstant:20.0];

  *(v388 + 584) = v705;
  v706 = *&v1[v701];
  if (!v706)
  {
LABEL_419:
    __break(1u);
    goto LABEL_420;
  }

  v707 = [v706 heightAnchor];
  v708 = *&v1[v701];
  if (!v708)
  {
LABEL_420:
    __break(1u);
    goto LABEL_421;
  }

  v709 = [v708 widthAnchor];
  v710 = [v707 constraintEqualToAnchor:v709];

  *(v388 + 592) = v710;
  v711 = *&v1[v701];
  if (!v711)
  {
LABEL_421:
    __break(1u);
    goto LABEL_422;
  }

  v712 = [v711 trailingAnchor];
  v713 = *&v1[v850];
  if (!v713)
  {
LABEL_422:
    __break(1u);
    goto LABEL_423;
  }

  v714 = [v713 trailingAnchor];
  v715 = [v712 constraintEqualToAnchor:v714 constant:9.0];

  *(v388 + 600) = v715;
  v716 = *&v1[v701];
  if (!v716)
  {
LABEL_423:
    __break(1u);
    goto LABEL_424;
  }

  v717 = [v716 topAnchor];
  v718 = *&v1[v850];
  if (!v718)
  {
LABEL_424:
    __break(1u);
LABEL_425:
    __break(1u);
    goto LABEL_426;
  }

  v719 = [v718 topAnchor];
  v720 = [v717 constraintEqualToAnchor:v719 constant:-9.0];

  *(v388 + 608) = v720;
  v721 = [*&v1[v849] topAnchor];
  v722 = [*&v1[v848] topAnchor];
  v723 = [v721 constraintEqualToAnchor:v722];

  *(v388 + 616) = v723;
  v724 = [*&v1[v849] bottomAnchor];
  v725 = [*&v1[v848] bottomAnchor];
  v726 = [v724 constraintEqualToAnchor:v725];

  *(v388 + 624) = v726;
  v727 = [*&v1[v849] trailingAnchor];
  v728 = [*&v1[v848] trailingAnchor];
  v729 = [v727 constraintEqualToAnchor:v728];

  *(v388 + 632) = v729;
  v730 = [*&v1[v849] heightAnchor];
  if (qword_10117F300 != -1)
  {
    swift_once();
  }

  v731 = [v730 constraintGreaterThanOrEqualToConstant:*&qword_1011832F8];

  *(v388 + 640) = v731;
  v732 = [*&v1[v867] heightAnchor];
  v733 = [v732 constraintEqualToConstant:38.0];

  *(v388 + 648) = v733;
  v734 = [*&v1[v855] centerYAnchor];
  v735 = [v866 centerYAnchor];
  v736 = [v734 constraintEqualToAnchor:v735];

  *(v388 + 656) = v736;
  v737 = [*&v1[v854] centerYAnchor];
  v738 = [v866 centerYAnchor];
  v739 = [v737 constraintEqualToAnchor:v738];

  *(v388 + 664) = v739;
  v740 = swift_initStackObject();
  *(v740 + 16) = xmmword_100EBDC10;
  v741 = [v851 topAnchor];
  v742 = [*&v1[v535] topAnchor];
  v743 = [v741 constraintEqualToAnchor:v742];

  *(v740 + 32) = v743;
  v744 = [v851 leadingAnchor];
  v745 = [*&v1[v535] leadingAnchor];
  v746 = [v744 constraintEqualToAnchor:v745];

  *(v740 + 40) = v746;
  v747 = [v851 trailingAnchor];
  v748 = [*&v1[v535] trailingAnchor];
  v749 = [v747 constraintEqualToAnchor:v748];

  *(v740 + 48) = v749;
  v750 = [v851 bottomAnchor];
  v751 = [*&v1[v535] bottomAnchor];
  v752 = [v750 constraintEqualToAnchor:v751];

  *(v740 + 56) = v752;
  sub_100124054(v740);
  v753 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v753))
  {
    v754 = swift_initStackObject();
    *(v754 + 16) = xmmword_100EBDC10;
    v755 = sub_1001BEF94();
    v756 = [v755 topAnchor];

    v757 = [v1 view];
    if (!v757)
    {
LABEL_435:
      __break(1u);
      goto LABEL_436;
    }

    v758 = v757;
    v759 = [v757 safeAreaLayoutGuide];

    v760 = [v759 topAnchor];
    v761 = [v756 constraintEqualToAnchor:v760];

    *(v754 + 32) = v761;
    v762 = OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___leaveSessionButton;
    v763 = [*&v1[OBJC_IVAR___MusicNowPlayingControlsViewController____lazy_storage___leaveSessionButton] heightAnchor];
    v764 = [v763 constraintEqualToConstant:28.0];

    *(v754 + 40) = v764;
    v765 = [*&v1[v762] widthAnchor];
    v766 = [*&v1[v762] heightAnchor];
    v767 = [v765 constraintEqualToAnchor:v766];

    *(v754 + 48) = v767;
    v768 = [*&v1[v762] trailingAnchor];
    v769 = [v1 view];
    if (!v769)
    {
LABEL_436:
      __break(1u);
      goto LABEL_437;
    }

    v770 = v769;
    v771 = [v769 trailingAnchor];

    v772 = [v768 constraintEqualToAnchor:v771 constant:-10.0];
    *(v754 + 56) = v772;
    sub_100124054(v754);
  }

  v773 = swift_initStackObject();
  *(v773 + 16) = xmmword_100EBC6C0;
  v774 = *&v1[v857];
  if (!v774)
  {
    goto LABEL_425;
  }

  v775 = [v774 widthAnchor];
  v776 = [v775 constraintEqualToConstant:60.0];

  *(v773 + 32) = v776;
  sub_100124054(v773);
  v777 = *&v1[v868];
  if (!v777)
  {
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v778 = [v777 bottomAnchor];
  v779 = *&v1[v872];
  if (!v779)
  {
LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v780 = v778;
  v781 = *(v779 + OBJC_IVAR____TtC5Music17PlayerTimeControl_slider);
  v782 = *((swift_isaMask & *v781) + 0x1D8);
  v783 = v781;
  v784 = v782();

  v785 = [v784 topAnchor];
  v786 = [v780 constraintEqualToAnchor:v785];

  v787 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint;
  v788 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideBottomConstraint] = v786;

  v789 = *&v1[v868];
  if (!v789)
  {
LABEL_428:
    __break(1u);
    goto LABEL_429;
  }

  v790 = [v789 bottomAnchor];
  v791 = [v1 view];
  if (!v791)
  {
LABEL_429:
    __break(1u);
    goto LABEL_430;
  }

  v792 = v791;
  v793 = [v791 bottomAnchor];

  v794 = [v790 constraintEqualToAnchor:v793];
  v795 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideSplitViewBottomConstraint] = v794;

  v796 = *&v1[v868];
  if (!v796)
  {
LABEL_430:
    __break(1u);
LABEL_431:
    __break(1u);
    goto LABEL_432;
  }

  v797 = [v796 topAnchor];
  v798 = [*&v1[v871] safeAreaLayoutGuide];
  v799 = [v798 topAnchor];

  v800 = [v797 constraintEqualToAnchor:v799 constant:v158 + dbl_100EBF630[v1[v859]]];
  v801 = OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint;
  v802 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideTopConstraint] = v800;

  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v753) & 1) != 0 || (v803 = [objc_opt_self() currentDevice], v804 = objc_msgSend(v803, "userInterfaceIdiom"), v803, !v804))
  {
    sub_1001B5A0C(v1);
  }

  else
  {
    v805 = *&v1[v801];
    if (!v805)
    {
LABEL_438:
      __break(1u);
      goto LABEL_439;
    }

    swift_beginAccess();
    v806 = v805;
    sub_100198E18();
    swift_endAccess();
  }

  v807 = *&v1[v868];
  if (!v807)
  {
    goto LABEL_431;
  }

  v808 = [v807 topAnchor];
  v809 = [*&v1[v871] safeAreaLayoutGuide];
  v810 = [v809 topAnchor];

  v811 = [v808 constraintEqualToAnchor:v810 constant:dbl_100EBF630[v1[v859]]];
  v812 = *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint];
  *&v1[OBJC_IVAR___MusicNowPlayingControlsViewController_contentLayoutGuideExtendedTopConstraint] = v811;

  v813 = *&v1[v787];
  if (!v813)
  {
LABEL_432:
    __break(1u);
    goto LABEL_433;
  }

  swift_beginAccess();
  v814 = v813;
  sub_100198E18();
  swift_endAccess();
  v815 = *&v1[v863];
  if (!v815)
  {
LABEL_433:
    __break(1u);
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  v816 = [v815 topAnchor];
  v817 = [*&v1[v871] topAnchor];
  v818 = [v816 constraintEqualToAnchor:v817 constant:v869[2]];

  swift_beginAccess();
  sub_100198E18();
  swift_endAccess();

  sub_100124054(v819);

  sub_100124054(v820);
  sub_1001B0338();
  sub_100124054(v821);

  sub_100124054(v822);
  v873[0] = 11;
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v753))
  {
    v823 = swift_initStackObject();
    *(v823 + 16) = xmmword_100EBC6C0;
    v824 = *&v1[v801];
    if (!v824)
    {
LABEL_437:
      __break(1u);
      goto LABEL_438;
    }

    v825 = &selRef_trackNumber;
    v826 = v869;
    goto LABEL_226;
  }

  v827 = [objc_opt_self() currentDevice];
  v828 = [v827 userInterfaceIdiom];

  v825 = &selRef_trackNumber;
  v826 = v869;
  if (v828)
  {
    goto LABEL_227;
  }

  v823 = swift_initStackObject();
  *(v823 + 16) = xmmword_100EBC6C0;
  v824 = *&v1[v801];
  if (v824)
  {
LABEL_226:
    *(v823 + 32) = v824;
    v829 = v823;
    v830 = v824;
    sub_100124054(v829);
LABEL_227:

    sub_100124054(v831);

    sub_100124054(v832);
    if (qword_10117F938 != -1)
    {
      swift_once();
    }

    v833 = type metadata accessor for Logger();
    sub_1000060E4(v833, qword_1012190C8);
    v834 = Logger.logObject.getter();
    v835 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v834, v835))
    {
      v836 = swift_slowAlloc();
      *v836 = 0;
      _os_log_impl(&_mh_execute_header, v834, v835, "[NowPlayingControlsViewController] setting up constraints, updating metrics", v836, 2u);
    }

    v837 = [v1 v825[31]];
    if (v837)
    {
      v838 = v837;

      [v838 setFrame:{0.0, 0.0, 414.0, 896.0}];

      HI.SizeClass.init(_:)(414.0);
      *v826 = xmmword_100EBEEC0;
      *(v826 + 1) = xmmword_100EBEED0;
      *(v826 + 2) = xmmword_100EBEEE0;
      v826[6] = 137.846154;
      v826[7] = 0.0;
      *(v826 + 64) = 1;
      *(v826 + 65) = *v873;
      *(v826 + 17) = *&v873[3];
      *(v826 + 9) = xmmword_100EBEEF0;
      *(v826 + 11) = xmmword_100EBEF00;
      sub_1001BFEE0();
      sub_1001C3B38();
      v839 = objc_opt_self();
      sub_100009F78(0, &qword_1011838A0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v839 activateConstraints:isa];

      return;
    }

    goto LABEL_434;
  }

LABEL_439:
  __break(1u);
}