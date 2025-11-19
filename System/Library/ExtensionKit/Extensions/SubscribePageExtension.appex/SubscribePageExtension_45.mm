void sub_100519638(char a1)
{
  if (a1)
  {
    v2 = *(v1 + qword_10093CB78);
    if (v2)
    {
      v7[4] = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
      v7[5] = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1005171C8;
      v7[3] = &unk_100879D10;
      v3 = _Block_copy(v7);
      v4 = v2;
      [v4 exitFullScreenAnimated:0 completionHandler:v3];
      _Block_release(v3);
    }

    v5 = *(v1 + qword_10093CB70);
    if (v5)
    {
      v6 = v5;
      sub_100743B84();
    }
  }

  else
  {
    *(v1 + qword_10093CBA8) = 1;
  }
}

void sub_100519738()
{
  v1 = qword_10093CB78;
  v2 = *(v0 + qword_10093CB78);
  if (v2)
  {
    v3 = [v2 view];
  }

  else
  {
    v3 = 0;
  }

  [v3 removeFromSuperview];

  v4 = *(v0 + v1);
  *(v0 + v1) = 0;
}

uint64_t sub_1005197B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v39 = a1;
  v5 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - v6;
  v7 = sub_10000C518(&qword_10093CCE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - v8;
  v10 = sub_10000C518(&qword_10093CCE8);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v37 - v14;
  v16 = sub_1007524D4();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(v3 + qword_100982220, v15, &unk_1009281C0);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    v38 = a3;
    (*(v17 + 32))(v19, v15, v16);
    v21 = qword_10093CB70;
    v22 = *(v3 + qword_10093CB70);
    if (!v22)
    {
      (*(v17 + 8))(v19, v16);
      v20 = 1;
      a3 = v38;
      return (*(v17 + 56))(a3, v20, 1, v16);
    }

    v23 = v3;
    v24 = v22;
    v25 = sub_100743B74();
    if (v25)
    {
      v26 = *(v23 + v21);
      if (v26)
      {
        v27 = [v26 currentItem];
        if (v27)
        {
          v28 = v27;
          v29 = [v27 asset];

          v30 = sub_100753064();
          v31 = [v29 statusOfValueForKey:v30 error:0];

          if (v31 == 2)
          {
            [v25 duration];
            [v25 currentTime];
            CMTimeGetSeconds(&time);

LABEL_12:
            v32 = sub_100746B44();
            v33 = *(v32 - 8);
            (*(v33 + 16))(v12, v39, v32);
            (*(v33 + 56))(v12, 0, 1, v32);
            v34 = sub_100746B54();
            (*(*(v34 - 8) + 56))(v9, 1, 1, v34);
            v35 = v40;
            sub_100743C04();
            a3 = v38;
            sub_100746B74();

            sub_10000C8CC(v35, &unk_100923970);
            sub_10000C8CC(v9, &qword_10093CCE0);
            sub_10000C8CC(v12, &qword_10093CCE8);
            (*(v17 + 8))(v19, v16);
            v20 = 0;
            return (*(v17 + 56))(a3, v20, 1, v16);
          }
        }
      }
    }

    v37 = 0;
    goto LABEL_12;
  }

  sub_10000C8CC(v15, &unk_1009281C0);
  v20 = 1;
  return (*(v17 + 56))(a3, v20, 1, v16);
}

uint64_t sub_100519D44@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C518(&unk_10093CC70);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = sub_100746B44();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for MediaMetricsEvent.ActionType.stop(_:), v12, v14);
  if (a2)
  {
    v17 = enum case for MediaMetricsEvent.ActionDetails.complete(_:);
    v18 = sub_100746B64();
    (*(*(v18 - 8) + 104))(v8, v17, v18);
  }

  else
  {
    v18 = sub_100746B64();
    if (a1)
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.pause(_:);
    }

    else
    {
      v19 = &enum case for MediaMetricsEvent.ActionDetails.autopause(_:);
    }

    (*(*(v18 - 8) + 104))(v8, *v19, v18);
  }

  sub_100746B64();
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  sub_100521040(v8, v11);
  sub_1005197B8(v16, v11, a3);
  sub_10000C8CC(v11, &unk_10093CC70);
  return (*(v13 + 8))(v16, v12);
}

void sub_100519FC4(void *a1)
{
  v1 = a1;
  sub_10051F2AC();
}

uint64_t sub_10051A00C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[qword_10093CB78];
  if (v9)
  {
    v10 = [v9 view];
  }

  else
  {
    v10 = 0;
  }

  [v10 setFrame:{v2, v4, v6, v8}];

  v11 = *&v0[qword_10093CB50];
  [v11 frame];
  [v11 setFrame:?];
  v15.origin.x = v2;
  v15.origin.y = v4;
  v15.size.width = v6;
  v15.size.height = v8;
  MidX = CGRectGetMidX(v15);
  v16.origin.x = v2;
  v16.origin.y = v4;
  v16.size.width = v6;
  v16.size.height = v8;
  [v11 setCenter:{MidX, CGRectGetMidY(v16)}];
  sub_10051A1A4();
  return sub_10051C5DC();
}

void sub_10051A15C(void *a1)
{
  v1 = a1;
  sub_10051A00C();
}

id sub_10051A1A4()
{
  v1 = qword_10093CB88;
  result = [*&v0[qword_10093CB88] isHidden];
  if ((result & 1) == 0)
  {
    v3 = *&v0[v1];
    [v0 bounds];
    [v3 sizeThatFits:{v4, v5}];
    v7 = v6;
    v9 = v8;

    v10 = &v0[qword_100982240];
    if (v0[qword_100982240 + 16])
    {
      [v0 bounds];
      x = v19.origin.x;
      y = v19.origin.y;
      width = v19.size.width;
      height = v19.size.height;
      MidX = CGRectGetMidX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      MidY = CGRectGetMidY(v20);
    }

    else
    {
      MidX = *v10;
      MidY = v10[1];
    }

    v17 = *&v0[v1];

    return [v17 setFrame:{MidX - v7 * 0.5, MidY - v9 * 0.5, v7, v9}];
  }

  return result;
}

uint64_t sub_10051A2F4()
{
  v1 = v0;
  v94 = sub_100744864();
  v2 = *(v94 - 8);
  __chkstk_darwin(v94);
  v4 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v96 = &v84 - v6;
  v7 = sub_100746494();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v85 = &v84 - v12;
  __chkstk_darwin(v13);
  v86 = &v84 - v14;
  __chkstk_darwin(v15);
  v92 = &v84 - v16;
  __chkstk_darwin(v17);
  v19 = &v84 - v18;
  v22 = __chkstk_darwin(v20);
  v23 = &v84 - v21;
  v24 = qword_10093CBA8;
  v25 = v1[qword_10093CBA8];
  v89 = v8;
  v87 = v26;
  if (v25 == 1)
  {
    v91 = v2;
    v27 = *&v1[qword_10093CB70];
    if (v27)
    {
      v28 = v27;
      sub_100743BD4();

      (*(v8 + 32))(v23, v19, v7);
      v29 = *(v8 + 104);
    }

    else
    {
      v29 = *(v8 + 104);
      v29(&v84 - v21, enum case for VideoPlayerState.unknown(_:), v7, v22);
    }

    v32 = v92;
    (v29)(v92, enum case for VideoPlayerState.paused(_:), v7);
    v33 = sub_100746484();
    v34 = *(v8 + 8);
    v34(v32, v7);
    v34(v23, v7);
    if (v33)
    {
      v1[v24] = 0;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_100521038;
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    v2 = v91;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v35 = qword_10093CB70;
  v36 = *&v1[qword_10093CB70];
  v88 = v7;
  v95 = v31;
  v90 = qword_10093CB70;
  if (!v36)
  {
    v43 = v2;
    v48 = 0;
    v49 = &v1[qword_100982270];
    v50 = v1[qword_100982270] ^ 1;
    goto LABEL_22;
  }

  v37 = [v36 currentItem];
  if (v37)
  {
    v38 = v4;
    v39 = v2;
    v40 = v37;
    [v37 currentTime];
    sub_100753BF4(0.0, 1000000000);
    v41 = sub_100753BE4();

    v2 = v39;
    v4 = v38;
    v31 = v95;
    v42 = *&v1[v35];
    if (v42)
    {
      goto LABEL_13;
    }

LABEL_17:
    v43 = v2;
    v45 = 0;
    goto LABEL_18;
  }

  v41 = 1;
  v42 = *&v1[v35];
  if (!v42)
  {
    goto LABEL_17;
  }

LABEL_13:
  v43 = v2;
  v44 = v42;
  v45 = sub_100743C14();

  v46 = *&v1[v35];
  if (!v46)
  {
LABEL_18:
    v48 = 0;
    goto LABEL_19;
  }

  v47 = v46;
  v48 = sub_100743C24();

LABEL_19:
  v49 = &v1[qword_100982270];
  v51 = v1[qword_100982270] | v48;
  v52 = v51 | v41;
  v50 = v51 ^ 1;
  if ((v52 & 1) == 0 && (v45 & 1) == 0)
  {
    v48 = 0;
    v50 = v1[qword_10093CB68];
  }

LABEL_22:
  v53 = v1[qword_10093CB58];
  v93 = v30;
  sub_10051AC10(v50 & 1, v53, v30, v31);
  v54 = v96;
  sub_10051789C(v96);
  sub_100744844();
  sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls);
  v55 = v94;
  v56 = sub_100754324();
  v59 = *(v43 + 8);
  v57 = v43 + 8;
  v58 = v59;
  v59(v4, v55);
  if (v56)
  {
    v60 = v48 ^ 1;
  }

  else
  {
    sub_100744854();
    v61 = sub_100754324();
    v58(v4, v55);
    if (v61)
    {
      v62 = *&v1[v90];
      v91 = v57;
      if (v62)
      {
        v63 = v62;
        v64 = v85;
        sub_100743BD4();

        v65 = v88;
        v66 = v89;
        v67 = v86;
        (*(v89 + 32))(v86, v64, v88);
        v68 = *(v66 + 104);
      }

      else
      {
        v65 = v88;
        v66 = v89;
        v68 = *(v89 + 104);
        v67 = v86;
        (v68)(v86, enum case for VideoPlayerState.unknown(_:), v88);
      }

      v69 = v92;
      v86 = v68;
      (v68)(v92, enum case for VideoPlayerState.paused(_:), v65);
      v70 = sub_100746484();
      v71 = *(v66 + 8);
      v71(v69, v65);
      v71(v67, v65);
      if (v70)
      {
        v60 = 1;
        v55 = v94;
        v54 = v96;
      }

      else
      {
        v72 = *&v1[v90];
        if (v72)
        {
          v73 = v72;
          v74 = v84;
          sub_100743BD4();

          (*(v89 + 32))(v87, v74, v65);
          v54 = v96;
          v75 = v86;
        }

        else
        {
          v75 = v86;
          (v86)(v87, enum case for VideoPlayerState.unknown(_:), v65);
          v54 = v96;
        }

        v76 = v92;
        (v75)(v92, enum case for VideoPlayerState.ended(_:), v65);
        v77 = v87;
        v60 = sub_100746484();
        v71(v76, v65);
        v71(v77, v65);
        v55 = v94;
      }
    }

    else
    {
      v60 = 0;
      v54 = v96;
    }
  }

  v78 = v60 & ~*v49;
  v79 = objc_opt_self();
  v80 = swift_allocObject();
  *(v80 + 16) = v1;
  *(v80 + 24) = v78 & 1;
  aBlock[4] = sub_100521004;
  aBlock[5] = v80;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100879CE8;
  v81 = _Block_copy(aBlock);
  v82 = v1;

  [v79 animateWithDuration:4 delay:v81 options:0 animations:0.2 completion:0.0];
  _Block_release(v81);
  sub_1000164A8(v93);
  return (v58)(v54, v55);
}

void sub_10051AB90(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = *(Strong + qword_10093CB70);
      v3 = Strong;
      v4 = v2;

      if (v2)
      {
        sub_100743B84();
      }
    }
  }
}

void sub_10051AC10(char a1, char a2, uint64_t (*a3)(), uint64_t a4)
{
  if (a2)
  {
    v8 = a1 & 1;
    if (a1)
    {
      v9 = 0.2;
    }

    else
    {
      v9 = 0.5;
    }

    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = v8;
    v27 = sub_100520FF8;
    v28 = v10;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000CF7B0;
    v26 = &unk_100879C20;
    v11 = _Block_copy(&v23);
    v12 = v4;

    if (a3)
    {
      v27 = a3;
      v28 = a4;
      v23 = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100144DD8;
      v26 = &unk_100879C98;
      a3 = _Block_copy(&v23);
    }

    v13 = objc_opt_self();
    [v13 animateWithDuration:4 delay:v11 options:a3 animations:v9 completion:0.0];
    _Block_release(a3);
    _Block_release(v11);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v8;
    v27 = sub_100521100;
    v28 = v14;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1000CF7B0;
    v26 = &unk_100879C70;
    v15 = _Block_copy(&v23);
    v16 = v12;

    [v13 animateWithDuration:4 delay:v15 options:0 animations:0.2 completion:0.0];
    _Block_release(v15);
  }

  else
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = a1 & 1;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100520FDC;
    *(v19 + 24) = v18;
    v27 = sub_100045E0C;
    v28 = v19;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10011B528;
    v26 = &unk_100879BD0;
    v20 = _Block_copy(&v23);
    v21 = v4;

    [v17 performWithoutAnimation:v20];
    _Block_release(v20);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id sub_10051AF98(char *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = 0.0;
  if (a2)
  {
    v6 = 1.0;
  }

  [*&a1[qword_10093CB50] setAlpha:v6];

  return [a1 layoutSubviews];
}

id sub_10051B058(uint64_t a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = 0.0;
    if (a2)
    {
      *&v5 = 1.0;
    }

    [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer) setOpacity:v5];
    swift_unknownObjectRelease();
  }

  v6 = *(a1 + qword_10093CB50);
  v7 = 0.0;
  if (a2)
  {
    v7 = 1.0;
  }

  return [v6 setAlpha:v7];
}

void sub_10051B108()
{
  v1 = qword_10093CB78;
  if (*&v0[qword_10093CB78])
  {
    return;
  }

  v2 = [objc_allocWithZone(type metadata accessor for AppStoreVideoPlayerViewController()) init];
  [v2 setShowsPlaybackControls:0];
  [v2 setAllowsVideoFrameAnalysis:0];
  [v2 setUpdatesNowPlayingInfoCenter:0];
  [v2 setCanPausePlaybackWhenExitingFullScreen:0];
  [v2 setPreferredUnobscuredArea:*&v0[qword_100982248]];
  [v2 setShowsMinimalPlaybackControlsWhenEmbeddedInline:1];
  [v2 setDelegate:v0];
  v3 = v2;
  v4 = [v3 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 setClipsToBounds:1];

  v6 = [v3 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6;
  v8 = [v0 backgroundColor];
  if (!v8)
  {
    sub_100016C60(0, &qword_100923500);
    v8 = sub_100753E34();
  }

  [v7 setBackgroundColor:v8];

  [v3 setModalPresentationStyle:5];
  [v3 setCanToggleVideoGravityWhenEmbeddedInline:0];
  v9 = [v3 view];
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v9 layer];

  sub_100746ED4();
  v12 = sub_100746EE4();
  v12();
  [v11 setMaskedCorners:sub_1007535E4()];

  v13 = [v3 view];
  if (!v13)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  [v0 bounds];
  [v14 setFrame:?];

  v15 = *&v0[qword_10093CB70];
  if (v15)
  {
    v16 = v15;
    [v16 _setDisallowsVideoLayerDisplayCompositing:1];
    [v3 setPlayer:v16];
  }

  v17 = [v3 view];
  if (!v17)
  {
    goto LABEL_19;
  }

  v18 = v17;
  [v0 insertSubview:v17 atIndex:0];

  v19 = *&v0[v1];
  *&v0[v1] = v3;

  sub_10051F2AC();
  v20 = [v3 view];

  if (!v20)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v21 = [v20 layer];

  [v21 setAllowsGroupBlending:0];
}

id sub_10051B4D0()
{
  v1 = v0;
  v2 = sub_100744864();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_100982270] == 1)
  {
    v7 = *&v0[qword_10093CB78];
    if (v7)
    {
      [v7 setShowsPlaybackControls:{1, v4}];
    }
  }

  else
  {
    v8 = *&v0[qword_10093CB70];
    if (v8 && (v9 = v8, v10 = sub_100743C24(), v9, (v10 & 1) != 0))
    {
      v11 = qword_10093CB78;
      v12 = *&v1[qword_10093CB78];
      if (v12)
      {
        v13 = v12;
        sub_10051789C(v6);
        v14 = sub_100744824();
        (*(v3 + 8))(v6, v2);
        [v13 setShowsPlaybackControls:v14 & 1];

        v15 = *&v1[v11];
        if (v15)
        {
          [v15 flashPlaybackControlsWithDuration:5.0];
        }
      }
    }

    else
    {
      v16 = *&v1[qword_10093CB78];
      if (v16)
      {
        [v16 setShowsPlaybackControls:{0, v4}];
      }
    }
  }

  return [v1 accessibilityUpdatePlayerControllerControls];
}

void sub_10051B68C()
{
  v1 = v0;
  if (qword_100921798 != -1)
  {
    swift_once();
  }

  v2 = *&qword_10093CB10;
  v3 = *algn_10093CB18;
  v4 = *&qword_10093CB20;
  v5 = unk_10093CB28;
  v6 = &v0[qword_100982238];
  v7 = *&v0[qword_100982238];
  v8 = *&v0[qword_100982238 + 16];
  v9 = [v0 traitCollection];
  v10 = sub_1007537F4();

  v11 = *&v1[qword_10093CB78];
  if (v11)
  {
    v12 = 8;
    if (v10)
    {
      v13 = 24;
    }

    else
    {
      v13 = 8;
    }

    if ((v10 & 1) == 0)
    {
      v12 = 24;
    }

    v14 = v3 + *&v6[v13];
    v15 = v5 + *&v6[v12];
    v16 = objc_opt_self();
    v17 = v11;
    v18 = [v16 valueWithUIEdgeInsets:{v2 + v7, v14, v4 + v8, v15}];
    [v17 setOverrideLayoutMarginsWhenEmbeddedInline:v18];
  }
}

void sub_10051B82C()
{
  v1 = v0;
  v2 = sub_1007521E4();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007521F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_100982270] != 1)
  {
LABEL_4:
    [v1 frame];
    v15 = [objc_opt_self() mainScreen];
    [v15 scale];

    sub_100753B64();
    v13 = v16;
    v14 = v17;
    goto LABEL_6;
  }

  sub_100016B4C(&v0[qword_100982230], aBlock, &unk_10093CC90);
  if (v37)
  {
    sub_10000C888(aBlock, v37);
    v12 = sub_100744E74();
    sub_10000C620(aBlock);
    v13 = 0.0;
    v14 = 0.0;
    if ((v12 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  sub_10000C8CC(aBlock, &unk_10093CC90);
  v13 = 0.0;
  v14 = 0.0;
LABEL_6:
  v18 = qword_10093CB70;
  v19 = *&v1[qword_10093CB70];
  if (!v19 || (v20 = v19, v21 = sub_100743B74(), v20, !v21) || (([v21 preferredMaximumResolution], v23 = v22, v25 = v24, v21, v23 == v13) ? (v26 = v25 == v14) : (v26 = 0), !v26))
  {
    sub_100016C60(0, &qword_100926D00);
    (*(v9 + 104))(v11, enum case for DispatchQoS.QoSClass.default(_:), v8);
    v27 = sub_1007537A4();
    (*(v9 + 8))(v11, v8);
    v28 = *&v1[v18];
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v13;
    *(v29 + 32) = v14;
    v38 = sub_100520F98;
    v39 = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v37 = &unk_100879B58;
    v30 = _Block_copy(aBlock);
    v31 = v28;
    sub_100752204();
    v35 = _swiftEmptyArrayStorage;
    sub_1005202A8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v30);

    (*(v34 + 8))(v4, v2);
    (*(v32 + 8))(v7, v33);
  }
}

void sub_10051BD24(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v5 = sub_100743B74();
    [v5 setPreferredMaximumResolution:{a2, a3}];
  }
}

void sub_10051BD94()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + qword_100982270) = 0;
    sub_10051913C();
  }
}

void sub_10051BDF4(uint64_t a1)
{
  v3 = sub_100748F84();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v7, a1, v3, v5);
  if ((*(v4 + 88))(v7, v3) == enum case for VideoPlaybackFailure.videoDecodersUnavailable(_:))
  {
    (*(v4 + 96))(v7, v3);
    v8 = *v7;
    v9 = [objc_opt_self() defaultCenter];
    v10 = sub_100753894();
    sub_10000C518(&qword_100927760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A6580;
    v17 = sub_10074DAF4();
    v18 = v12;
    sub_1007544E4();
    *(inited + 96) = &type metadata for AnyHashable;
    v13 = swift_allocObject();
    *(inited + 72) = v13;
    sub_100066198(v1 + qword_100982260, v13 + 16);
    v17 = sub_10074DB04();
    v18 = v14;
    sub_1007544E4();
    *(inited + 168) = sub_10000C518(&unk_10093CCD0);
    *(inited + 144) = v8;
    v15 = v8;
    sub_100414D14(inited);
    swift_setDeallocating();
    sub_10000C518(&qword_100927768);
    swift_arrayDestroy();
    isa = sub_100752F34().super.isa;

    [v9 postNotificationName:v10 object:0 userInfo:isa];
  }

  else
  {
    (*(v4 + 8))(v7, v3);
  }
}

void sub_10051C0E4()
{
  sub_100746ED4();
  v1 = sub_100746EE4();
  v1();
  v2 = sub_1007535E4();
  v3 = [v0 layer];
  [v3 setMaskedCorners:v2];

  sub_100746EA4();
  v4 = *&v0[qword_10093CB78];
  if (v4)
  {
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 layer];

      [v7 setMaskedCorners:v2];
    }
  }

  v8 = [*&v0[qword_10093CB50] layer];
  [v8 setMaskedCorners:v2];
}

uint64_t sub_10051C214()
{
  sub_100746ED4();
  v0 = sub_100746EE4();

  return v0();
}

void sub_10051C25C(uint64_t a1)
{
  sub_100746ED4();
  v2 = sub_100746EE4();
  v2(a1);

  sub_10051C0E4();
}

void (*sub_10051C2BC(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  sub_100746ED4();
  v5 = sub_100746EE4();
  *(v4 + 40) = v5(v4);
  return sub_10051C35C;
}

void sub_10051C35C(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_10051C0E4();
  }

  free(v3);
}

void sub_10051C3C4(void *a1, double a2)
{
  v3 = a1;
  sub_10051C514(&selRef__setCornerRadius_, &selRef__cornerRadius, a2);
}

id sub_10051C450(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_10051C494(void *a1, double a2)
{
  v3 = a1;
  sub_10051C514(&selRef__setContinuousCornerRadius_, &selRef__continuousCornerRadius, a2);
}

id sub_10051C514(SEL *a1, SEL *a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v12, *a1, a3);
  v7 = *&v3[qword_10093CB78];
  if (v7)
  {
    v8 = [v7 view];
    if (v8)
    {
      v9 = v8;
      [v3 *a2];
      [v9 *a1];
    }
  }

  v10 = *&v3[qword_10093CB50];
  [v3 *a2];
  return [v10 *a1];
}

uint64_t sub_10051C5DC()
{
  v1 = v0;
  v2 = sub_100743584();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v28 = &v27 - v5;
  v6 = sub_100747D94();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = qword_100982288;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v14(v12, &v1[v13], v6);
  v15 = sub_100747D04();
  v16 = *(v7 + 8);
  v16(v12, v6);
  if ((v15 & 1) == 0)
  {
    [v1 _continuousCornerRadius];
    if (v20 == 0.0)
    {
      [v1 _cornerRadius];
      v21 = v30;
      if (v22 == 0.0)
      {
        v23 = v29;
        v24 = v31;
        (*(v30 + 104))(v29, enum case for CornerStyle.arc(_:), v31);
        goto LABEL_12;
      }

      [v1 _cornerRadius];
      v25 = enum case for CornerStyle.arc(_:);
    }

    else
    {
      [v1 _continuousCornerRadius];
      v25 = enum case for CornerStyle.continuous(_:);
      v21 = v30;
    }

    v23 = v29;
    v24 = v31;
    (*(v21 + 104))(v29, v25, v31);
    goto LABEL_12;
  }

  v14(v9, &v1[v13], v6);
  sub_100747D54();
  v18 = v17;
  v16(v9, v6);
  if (v18)
  {
    v19 = &enum case for CornerStyle.arc(_:);
  }

  else
  {
    [*&v1[qword_10093CB50] frame];
    v19 = &enum case for CornerStyle.continuous(_:);
  }

  v21 = v30;
  v24 = v31;
  v23 = v28;
  (*(v30 + 104))(v28, *v19, v31);
LABEL_12:
  sub_100746E34();
  return (*(v21 + 8))(v23, v24);
}

void sub_10051C954(uint64_t a1, uint64_t a2)
{
  v5 = qword_10093CBA0;
  v6 = *&v2[qword_10093CBA0];
  if (!v6 || [v6 phase] == 3 || (v7 = *&v2[v5]) != 0 && objc_msgSend(v7, "phase") == 4)
  {
    v8 = sub_100669078(a1);
    if (v8)
    {
      v9 = *&v2[v5];
      *&v2[v5] = v8;
      v10 = v8;

      [v10 locationInView:v2];
      v11 = [v2 hitTest:a2 withEvent:?];
      if (v11)
      {
        v12 = v11;
        sub_100016C60(0, &qword_100922300);
        v13 = v12;
        v14 = v2;
        v15 = v2;
        v16 = sub_100753FC4();

        if ((v16 & 1) == 0)
        {
          sub_100016C60(0, &unk_100929820);
          sub_1000665E0();
          v17 = v13;
          isa = sub_100753474().super.isa;
          [v17 touchesBegan:isa withEvent:a2];
        }

        v2 = v14;
      }

      sub_100016C60(0, &unk_100929820);
      sub_1000665E0();
      v19.super.isa = sub_100753474().super.isa;
      v21.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v21, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v2, v21.super_class, v22.receiver, v22.super_class);
    }

    else
    {
      sub_100016C60(0, &unk_100929820);
      sub_1000665E0();
      v19.super.isa = sub_100753474().super.isa;
      v22.super_class = type metadata accessor for VideoView();
      objc_msgSendSuper2(&v22, "touchesBegan:withEvent:", v19.super.isa, a2, v20.receiver, v20.super_class, v21.receiver, v21.super_class, v2, v22.super_class);
    }
  }

  else
  {
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v19.super.isa = sub_100753474().super.isa;
    v20.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v20, "touchesBegan:withEvent:", v19.super.isa, a2, v2, v20.super_class, v21.receiver, v21.super_class, v22.receiver, v22.super_class);
  }
}

uint64_t sub_10051CBE0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v6 = sub_100753484();
  v7 = a4;
  v8 = a1;
  sub_10051C954(v6, a4);
}

void sub_10051CCA8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v7 = qword_10093CBA0;
  v8 = *&v3[qword_10093CBA0];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  if ((sub_1002A4ED0(v9, a1) & 1) == 0)
  {

LABEL_8:
    sub_100016C60(0, &unk_100929820);
    sub_1000665E0();
    v19.super.isa = sub_100753474().super.isa;
    v21.super_class = type metadata accessor for VideoView();
    objc_msgSendSuper2(&v21, *a3, v19.super.isa, a2, v20.receiver, v20.super_class, v3, v21.super_class);
    goto LABEL_11;
  }

  v10 = *&v3[v7];
  *&v3[v7] = 0;

  [v9 locationInView:v3];
  v11 = [v3 hitTest:a2 withEvent:?];
  if (v11)
  {
    v12 = v11;
    sub_100016C60(0, &qword_100922300);
    v13 = v12;
    v14 = v3;
    v15 = v3;
    v16 = sub_100753FC4();

    if ((v16 & 1) == 0)
    {
      sub_100016C60(0, &unk_100929820);
      sub_1000665E0();
      v17 = v13;
      isa = sub_100753474().super.isa;
      [v17 *a3];

      v9 = v17;
    }

    v3 = v14;
  }

  else
  {
    v13 = v9;
  }

  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v19.super.isa = sub_100753474().super.isa;
  v20.super_class = type metadata accessor for VideoView();
  objc_msgSendSuper2(&v20, *a3, v19.super.isa, a2, v3, v20.super_class, v21.receiver, v21.super_class);
LABEL_11:
}

uint64_t sub_10051CED8(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_100016C60(0, &unk_100929820);
  sub_1000665E0();
  v8 = sub_100753484();
  v9 = a4;
  v10 = a1;
  sub_10051CCA8(v8, a4, a5);
}

char *sub_10051CF88()
{
  v1 = v0;
  v2 = qword_10093CB70;
  v3 = *(v0 + qword_10093CB70);
  if (v3)
  {
    v4 = v3;
    v5 = sub_100743B94();

    v6 = *(v1 + v2);
    if (v6)
    {
      v7 = v6;
      sub_100743BF4();

      v6 = *(v1 + v2);
    }

    *(v1 + v2) = 0;

    result = sub_1005172EC();
    if (v5)
    {
      sub_1005194D8();
      v9 = *((swift_isaMask & *v1) + qword_100982298 + 712);

      return v9();
    }
  }

  else
  {

    return sub_1005172EC();
  }

  return result;
}

void sub_10051D0A4(void *a1)
{
  v1 = a1;
  sub_10051CF88();
}

void sub_10051D0EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong setShowsPlaybackControls:1];
  }
}

void sub_10051D14C()
{
  v1 = sub_100749CD4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100749D14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v0[qword_10093CB70];
  if (v9)
  {
    v10 = v9;
    [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
    v11 = [v10 isMuted];
    [v0 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
    (*(v6 + 104))(v8, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v5);
    v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
    if (!v11)
    {
      v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
    }

    (*(v2 + 104))(v4, *v12, v1);
    sub_10051D504(v8, v4);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_10051D378()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    (*((swift_isaMask & *Strong) + qword_100982298 + 712))();
  }
}

void sub_10051D41C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_100520348(a4);

  swift_unknownObjectRelease();
}

void sub_10051D498(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_1005204EC(a4);
}

uint64_t sub_10051D504(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v70 = a2;
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v74 = &v62 - v4;
  v5 = sub_100752874();
  __chkstk_darwin(v5 - 8);
  v72 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10093CCA0);
  __chkstk_darwin(v7 - 8);
  v71 = &v62 - v8;
  v9 = sub_10000C518(&qword_10093CCA8);
  __chkstk_darwin(v9 - 8);
  v11 = &v62 - v10;
  v12 = sub_10000C518(&qword_10093CCB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v62 - v13;
  v15 = sub_10000C518(&qword_10093CCB8);
  __chkstk_darwin(v15 - 8);
  v17 = &v62 - v16;
  v76 = sub_100752614();
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v68 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v75 = &v62 - v20;
  v21 = sub_10000C518(&unk_1009281C0);
  __chkstk_darwin(v21 - 8);
  v23 = &v62 - v22;
  v24 = sub_1007524D4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016B4C(v2 + qword_100982228, v23, &unk_1009281C0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v28 = &unk_1009281C0;
    v29 = v23;
    return sub_10000C8CC(v29, v28);
  }

  (*(v25 + 32))(v27, v23, v24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v32 = Strong;
  v33 = qword_10093CB70;
  v34 = *(v2 + qword_10093CB70);
  if (!v34)
  {
    (*(v25 + 8))(v27, v24);
  }

  v35 = v2;
  v66 = v34;
  v36 = sub_100743B74();
  v67 = v32;
  v65 = v2;
  if (!v36)
  {
    goto LABEL_14;
  }

  v37 = v36;
  v38 = *(v35 + v33);
  if (!v38 || (v39 = [v38 currentItem]) == 0 || (v40 = v39, v41 = objc_msgSend(v39, "asset"), v40, v42 = sub_100753064(), v43 = objc_msgSend(v41, "statusOfValueForKey:error:", v42, 0), v41, v42, v43 != 2))
  {

LABEL_14:
    v64 = 0.0;
    v63 = 1;
    goto LABEL_15;
  }

  [v37 currentTime];
  Seconds = CMTimeGetSeconds(&time);

  v63 = 0;
  v64 = Seconds;
LABEL_15:
  sub_10000C518(&unk_10092C210);
  v62 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  *(swift_allocObject() + 16) = xmmword_1007A5A00;
  v45 = enum case for MediaClickMetricsEvent.TargetType.button(_:);
  v46 = sub_100749CE4();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v17, v45, v46);
  (*(v47 + 56))(v17, 0, 1, v46);
  v48 = sub_100749D14();
  v49 = *(v48 - 8);
  (*(v49 + 16))(v14, v69, v48);
  (*(v49 + 56))(v14, 0, 1, v48);
  v50 = sub_100749CD4();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v11, v70, v50);
  (*(v51 + 56))(v11, 0, 1, v50);
  LODWORD(v51) = *(v65 + qword_100982270);
  v52 = sub_100749CF4();
  v53 = *(v52 - 8);
  v54 = &enum case for MediaClickMetricsEvent.ActionContext.fullscreen(_:);
  if (!v51)
  {
    v54 = &enum case for MediaClickMetricsEvent.ActionContext.inline(_:);
  }

  v55 = v71;
  (*(*(v52 - 8) + 104))(v71, *v54, v52);
  (*(v53 + 56))(v55, 0, 1, v52);
  sub_100749D04();
  sub_10000C8CC(v55, &qword_10093CCA0);
  sub_10000C8CC(v11, &qword_10093CCA8);
  sub_10000C8CC(v14, &qword_10093CCB0);
  sub_10000C8CC(v17, &qword_10093CCB8);
  sub_100752864();
  v56 = v75;
  sub_100752604();
  v57 = sub_10000C518(&unk_100923210);
  v58 = v74;
  sub_1007526C4();
  v59 = *(v57 - 8);
  if ((*(v59 + 48))(v58, 1, v57) == 1)
  {

    (*(v73 + 8))(v56, v76);
    (*(v25 + 8))(v27, v24);
    v28 = &unk_100923960;
    v29 = v58;
    return sub_10000C8CC(v29, v28);
  }

  sub_1007433F4();
  v60 = v73;
  (*(v73 + 16))(v68, v56, v76);
  v61 = sub_1007433D4();
  sub_1003C13F0(v61, 1, v67, v58);

  (*(v60 + 8))(v75, v76);
  (*(v25 + 8))(v27, v24);
  return (*(v59 + 8))(v58, v57);
}

uint64_t sub_10051DF74(char *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *&a1[qword_10093CB70];
  if (v3)
  {
    v5 = a1;
    v6 = v3;
    v7 = a3();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_10051E010()
{
  swift_weakDestroy();
  sub_10000C4F0(v0 + qword_10093CB38);
  sub_10000C4F0(v0 + qword_10093CB40);
  sub_10000C4F0(v0 + qword_10093CB48);

  sub_10000C8CC(v0 + qword_100982220, &unk_1009281C0);
  sub_10000C8CC(v0 + qword_100982228, &unk_1009281C0);
  sub_10000C8CC(v0 + qword_100982230, &unk_10093CC90);

  v1 = qword_100982250;
  v2 = sub_100741264();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1000164A8(*(v0 + qword_100982258));
  sub_100016994(v0 + qword_100982260);
  sub_10000C4F0(v0 + qword_100982268);
  swift_unknownObjectWeakDestroy();
  v3 = qword_100982288;
  v4 = sub_100747D94();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_10093CBA0);
}

id sub_10051E204()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10051E23C(uint64_t a1)
{
  swift_weakDestroy();
  sub_10000C4F0(a1 + qword_10093CB38);
  sub_10000C4F0(a1 + qword_10093CB40);
  sub_10000C4F0(a1 + qword_10093CB48);

  sub_10000C8CC(a1 + qword_100982220, &unk_1009281C0);
  sub_10000C8CC(a1 + qword_100982228, &unk_1009281C0);
  sub_10000C8CC(a1 + qword_100982230, &unk_10093CC90);

  v2 = qword_100982250;
  v3 = sub_100741264();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_1000164A8(*(a1 + qword_100982258));
  sub_100016994(a1 + qword_100982260);
  sub_10000C4F0(a1 + qword_100982268);
  swift_unknownObjectWeakDestroy();
  v4 = qword_100982288;
  v5 = sub_100747D94();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + qword_10093CBA0);
}

void sub_10051E434()
{
  if (!qword_10093CC48)
  {
    sub_1007524D4();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10093CC48);
    }
  }
}

uint64_t sub_10051E4FC()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_10051E55C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_10093CB30;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_10051E644(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_100982268;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_10051E6B0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_100982268;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_10051E750;
}

void sub_10051E750(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_10051E7DC()
{
  v1 = *(v0 + qword_10093CB70);
  if (v1)
  {
    v2 = v1;
    sub_100743BE4();
  }
}

uint64_t sub_10051E87C@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_100982288;
  swift_beginAccess();
  v4 = sub_100747D94();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void (*sub_10051E908(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = sub_100747D94();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[7] = v9;
  v11 = qword_100982288;
  swift_beginAccess();
  v12 = *(v7 + 16);
  v4[8] = v12;
  v4[9] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v10, v1 + v11, v5);
  return sub_10051EA60;
}

void sub_10051EA60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  if (a2)
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);
    (*(v2 + 64))(*(v2 + 48), *(v2 + 56), v5);
    sub_1005192C8(v4);
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    sub_1005192C8(*(v2 + 56));
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_10051EB18@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10093CC70);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_100746B44();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for MediaMetricsEvent.ActionType.play(_:), v7, v9);
  if (a1)
  {
    v12 = sub_100746B64();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  }

  else
  {
    v13 = enum case for MediaMetricsEvent.ActionDetails.autoplay(_:);
    v14 = sub_100746B64();
    v15 = *(v14 - 8);
    (*(v15 + 104))(v6, v13, v14);
    (*(v15 + 56))(v6, 0, 1, v14);
  }

  sub_1005197B8(v11, v6, a2);
  sub_10000C8CC(v6, &unk_10093CC70);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10051ED70@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C518(&unk_10093CC70);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100746B44();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, enum case for MediaMetricsEvent.ActionType.seek(_:), v5, v7);
  v10 = enum case for MediaMetricsEvent.ActionDetails.autostart(_:);
  v11 = sub_100746B64();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v4, v10, v11);
  (*(v12 + 56))(v4, 0, 1, v11);
  sub_1005197B8(v9, v4, a1);
  sub_10000C8CC(v4, &unk_10093CC70);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10051EF64()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
    sub_1007471E4();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10051F038()
{
  v1 = v0 + qword_10093CB48;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10051F0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *(v3 + qword_10093CB70);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  LOBYTE(a3) = a3();

  return a3 & 1;
}

void sub_10051F1D8()
{
  v1 = *(v0 + qword_10093CB70);
  if (v1)
  {
    v2 = v1;
    if (sub_100743B94())
    {
      [v2 pause];
    }
  }
}

uint64_t sub_10051F2AC()
{
  v1 = v0;
  v2 = sub_100744864();
  v74 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v68 - v6;
  v7 = sub_100744894();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100747D94();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v68 - v14;
  v16 = *(v0 + qword_10093CB70);
  if (v16)
  {
    v17 = v9;
    v18 = v11;
    v19 = qword_100982288;
    swift_beginAccess();
    v20 = v1 + v19;
    v11 = v18;
    (*(v18 + 16))(v15, v20, v10);
    v21 = v16;
    sub_100747D64();
    (*(v11 + 8))(v15, v10);
    sub_100743BB4();

    v9 = v17;
  }

  v68 = v4;
  v77 = v2;
  v75 = qword_10093CB78;
  v22 = *(v1 + qword_10093CB78);
  if (v22)
  {
    v23 = v9;
    v24 = v11;
    v25 = qword_100982288;
    swift_beginAccess();
    v26 = v1 + v25;
    v11 = v24;
    (*(v24 + 16))(v15, v26, v10);
    v27 = v22;
    v28 = sub_100747D24();
    (*(v11 + 8))(v15, v10);
    [v27 setAllowsEnteringFullScreen:v28 & 1];

    v9 = v23;
  }

  v76 = *(v1 + qword_10093CB50);
  v29 = qword_100982288;
  swift_beginAccess();
  v30 = (v11 + 16);
  v72 = *(v11 + 16);
  v72(v15, &v29[v1], v10);
  sub_100747D84();
  v31 = *(v11 + 8);
  v73 = v11 + 8;
  v71 = v31;
  v31(v15, v10);
  v32 = sub_100744874();
  v33 = v78[1];
  v33(v9, v7);
  [v76 setContentMode:v32];
  v34 = *(v1 + v75);
  if (v34)
  {
    v72(v15, &v29[v1], v10);
    v78 = v34;
    sub_100747D84();
    v71(v15, v10);
    v35 = sub_100744884();
    v33(v9, v7);
    v36 = v78;
    [v78 setVideoGravity:v35 forLayoutClass:0];
  }

  v69 = v10;
  v78 = v30;
  v76 = v29;
  sub_10051789C(v79);
  sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls);
  v37 = v68;
  v38 = v77;
  sub_100754394();
  sub_1005202A8(&unk_10093CC80, &type metadata accessor for VideoControls);
  v39 = sub_100753014();
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v41(v37, v38);
  [v1 setUserInteractionEnabled:(v39 & 1) == 0];
  v42 = *(v1 + qword_10093CB88);
  sub_100744844();
  v43 = sub_100754324();
  v41(v37, v38);
  if (v43)
  {
    v44 = v41;
    v45 = 0;
  }

  else
  {
    sub_100744854();
    v46 = sub_100754324();
    v44 = v41;
    v41(v37, v38);
    v45 = v46 ^ 1;
  }

  v47 = v76;
  [v42 setHidden:{v45 & 1, v68}];

  v48 = v75;
  v49 = *(v1 + v75);
  if (v49)
  {
    v50 = v49;
    [v50 setShowsPlaybackControls:sub_100744824() & 1];

    v47 = v76;
    v51 = *(v1 + v48);
    if (v51)
    {
      v74 = v40;
      v52 = *((swift_isaMask & *v1) + qword_100982298 + 752);
      v53 = v51;
      v54 = (v52() & 1) != 0 ? 1 : *(v1 + qword_100982290);
      [v53 setShowsMinimalPlaybackControlsWhenEmbeddedInline:v54];

      v55 = *(v1 + v48);
      v47 = v76;
      if (v55)
      {
        v56 = v55;
        sub_100744834();
        v57 = v77;
        v58 = sub_100754324();
        v44(v37, v57);
        if (v58)
        {
          v59 = 1;
        }

        else
        {
          v59 = *(v1 + qword_100982270);
        }

        [v56 setPlaybackControlsIncludeVolumeControls:v59];
      }
    }
  }

  sub_10051A2F4();
  v60 = &v47[v1];
  v61 = v69;
  v62 = v70;
  v72(v70, v60, v69);
  v63 = sub_100747D04();
  v71(v62, v61);
  if (v63)
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
    if ((*(v1 + qword_100982270) & 1) == 0)
    {
      sub_1007433C4();
      sub_100743234();
      sub_100746E64();
      sub_100743244();
    }
  }

  else
  {
    v64 = v79;
    v65 = v77;
    v66 = v44;
  }

  sub_100746E74();
  sub_10051C5DC();
  sub_10051B4D0();
  sub_10051B68C();
  return v66(v64, v65);
}

uint64_t sub_10051FB10(char a1)
{
  v2 = sub_1007521E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752224();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1009202F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009294C8;
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = AVAudioSessionCategoryPlayback;
    v10[5] = AVAudioSessionModeDefault;
    v10[6] = 0;
    v22 = sub_1005210FC;
    v23 = v10;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_100879AE0;
  }

  else
  {
    if (qword_1009202F8 != -1)
    {
      swift_once();
    }

    v17[0] = qword_1009294C8;
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = AVAudioSessionCategoryPlayback;
    v12[5] = AVAudioSessionModeDefault;
    v12[6] = 1;
    v22 = sub_100520EC4;
    v23 = v12;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v11 = &unk_100879A90;
  }

  v20 = sub_1000CF7B0;
  v21 = v11;
  v13 = _Block_copy(&aBlock);
  v14 = AVAudioSessionCategoryPlayback;
  v15 = AVAudioSessionModeDefault;
  sub_100752204();
  v17[1] = _swiftEmptyArrayStorage;
  sub_1005202A8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750);
  sub_1000A8054();
  sub_1007543A4();
  sub_100753784();
  _Block_release(v13);
  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
}

uint64_t sub_10051FEB8(uint64_t a1)
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
    sub_100747224();
    swift_unknownObjectRelease();
  }

  v3 = v1 + qword_10093CB48;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
    (*(v4 + 16))(a1, v1, v6, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  sub_10051B4D0();
  return sub_10051A2F4();
}

void sub_10052001C()
{
  v1 = v0;
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    v6 = qword_100982288;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v6, v2);
    sub_100747D64();
    (*(v3 + 8))(v5, v2);
    sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
    sub_100747204();
    swift_unknownObjectRelease();
  }

  if (*(v1 + qword_100982270) == 1)
  {
    v7 = *(v1 + qword_10093CB78);
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100520328;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005171C8;
      aBlock[3] = &unk_1008799F0;
      v9 = _Block_copy(aBlock);
      v10 = v7;

      [v10 exitFullScreenAnimated:1 completionHandler:v9];
      _Block_release(v9);
    }
  }
}

uint64_t sub_1005202A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005202F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100520330(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100520348(void *a1)
{
  v3 = v1 + qword_10093CB38;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  *(v1 + qword_100982278) = 1;
  v13 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v14 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003ED3AC;
  v12 = &unk_100879A18;
  v6 = _Block_copy(&v9);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = sub_100520EB8;
  v14 = v7;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1003ED3AC;
  v12 = &unk_100879A40;
  v8 = _Block_copy(&v9);

  [a1 animateAlongsideTransition:v6 completion:v8];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1005204EC(uint64_t a1)
{
  v2 = v1;
  v48 = sub_100747D94();
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100744864();
  v49 = *(v6 - 8);
  __chkstk_darwin(v6);
  v47 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v43 - v9;
  v10 = sub_100749CD4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100749D14();
  v15 = *(v14 - 8);
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        [v2 updateAudioSessionCategoryWithIsAudioOn:{1, v16}];
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
        v19 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
LABEL_17:
        (*(v11 + 104))(v13, *v19, v10);
        v32 = v18;
        v33 = v13;
LABEL_27:
        sub_10051D504(v32, v33);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        return;
      case 4:
        v36 = *(v2 + qword_10093CB70);
        if (v36)
        {
          v37 = [v36 isMuted] ^ 1;
        }

        else
        {
          v37 = 0;
        }

        *(v2 + qword_10093CB98) = v37;
        *(v2 + qword_100982270) = 1;
        sub_10051913C();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.fullscreen(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.enterFullscreen(_:), v10);
        v32 = v18;
        v33 = v13;
        goto LABEL_27;
      case 5:
        *(v2 + qword_100982270) = 0;
        sub_10051913C();
        (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.inline(_:), v14);
        (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.exitFullscreen(_:), v10);
        sub_10051D504(v18, v13);
        (*(v11 + 8))(v13, v10);
        (*(v15 + 8))(v18, v14);
        v20 = v2 + qword_10093CB38;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v20 + 1);
          ObjectType = swift_getObjectType();
          (*(v21 + 16))(ObjectType, v21);
          swift_unknownObjectRelease();
        }

        break;
    }
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return;
      }

      [v2 updateAudioSessionCategoryWithIsAudioOn:{0, v16}];
      (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v14);
      v19 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      goto LABEL_17;
    }

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
      sub_100747214();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.pause(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.pause(_:), v10);
    sub_10051D504(v18, v13);
    (*(v11 + 8))(v13, v10);
    v34 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v2) + qword_100982298 + 752))(v34) & 1) == 0)
    {
      [v2 updateAudioSessionCategoryWithIsAudioOn:0];
      v35 = *(v2 + qword_10093CB70);
      if (v35)
      {
        [v35 setMuted:1];
      }
    }
  }

  else
  {
    v44 = v6;
    v23 = v2;
    v24 = v2 + qword_100982268;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43[1] = *(v24 + 1);
      swift_getObjectType();
      sub_1005202A8(&qword_1009230E0, type metadata accessor for VideoView);
      sub_1007471F4();
      swift_unknownObjectRelease();
    }

    (*(v15 + 104))(v18, enum case for MediaClickMetricsEvent.TargetId.play(_:), v14);
    (*(v11 + 104))(v13, enum case for MediaClickMetricsEvent.ActionType.play(_:), v10);
    sub_10051D504(v18, v13);
    (*(v11 + 8))(v13, v10);
    v25 = (*(v15 + 8))(v18, v14);
    if (((*((swift_isaMask & *v23) + qword_100982298 + 752))(v25) & 1) == 0)
    {
      v26 = sub_10074C5C4();
      v27 = qword_100982288;
      v28 = (v45 + 16);
      v29 = (v45 + 8);
      if (v26)
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_100747D44();
      }

      else
      {
        swift_beginAccess();
        v30 = v48;
        (*v28)(v5, &v23[v27], v48);
        v31 = v46;
        sub_100747D14();
      }

      v38 = v44;
      (*v29)(v5, v30);
      v39 = v47;
      sub_100744834();
      sub_1005202A8(&qword_1009295E8, &type metadata accessor for VideoControls);
      v40 = sub_100754324();
      v41 = *(v49 + 8);
      v41(v39, v38);
      v41(v31, v38);
      if (v40)
      {
        [v23 updateAudioSessionCategoryWithIsAudioOn:1];
        v42 = *&v23[qword_10093CB70];
        if (v42)
        {
          [v42 setMuted:0];
        }
      }
    }
  }
}

uint64_t sub_100520EC8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100520F28()
{
  sub_10000C620(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100520F60()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100520FA4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_100521008()
{
  v1 = 0.0;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + qword_10093CB88) setAlpha:v1];
}

uint64_t sub_100521040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10093CC70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100521164(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100750B04();
  sub_100039C50(v7, a2);
  sub_10000D0FC(v7, a2);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981800);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_10000D134(v13);
  (*(v4 + 16))(v10, v6, v3);
  sub_100750B14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100521340()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_10093CDB8);
  sub_10000D0FC(v4, qword_10093CDB8);
  *v3 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleFootnote;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005214AC()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10093CDD0);
  sub_10000D0FC(v0, qword_10093CDD0);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

void sub_100521548()
{
  v1 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_10074C3E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100925560);
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(v0 + qword_1009822B0))
  {
    v14 = *(v0 + qword_1009822A8);
    if (v14)
    {
      v19 = *(v0 + qword_10093CE08);

      v18 = sub_10074EF04();
      v15 = sub_10074EDF4();
      v16 = sub_10000C518(&unk_10092EEA0);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      (*(v5 + 104))(v7, enum case for OfferButtonSubtitlePosition.below(_:), v4);
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_100523F80(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
      sub_10074A9C4();
      sub_10015DE40(v18, v15, 0, v13, v10, v14, 0, 0);

      (*(v20 + 8))(v10, v8);
      sub_10000C8CC(v13, &unk_100925540);
    }
  }
}

uint64_t sub_1005218D4(uint64_t a1)
{
  v3 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  v6 = sub_10074C3E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&unk_100925560);
  v22 = *(v10 - 8);
  v23 = v10;
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v13 - 8);
  v15 = v21 - v14;
  v16 = qword_1009822A8;
  *(v1 + qword_1009822A8) = a1;

  if (*(v1 + qword_1009822B0) && (v17 = *(v1 + v16)) != 0)
  {
    v21[1] = *(v1 + qword_10093CE08);

    v21[0] = sub_10074EF04();
    v18 = sub_10074EDF4();
    v19 = sub_10000C518(&unk_10092EEA0);
    (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
    (*(v7 + 104))(v9, enum case for OfferButtonSubtitlePosition.below(_:), v6);
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_100523F80(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
    sub_10074A9C4();
    sub_10015DE40(v21[0], v18, 0, v15, v12, v17, 0, 0);

    (*(v22 + 8))(v12, v23);
    return sub_10000C8CC(v15, &unk_100925540);
  }

  else
  {
  }
}

id sub_100521CB0()
{
  v1 = v0;
  v2 = *&v0[qword_1009822B0];
  if (v2 && (v3 = *&v0[qword_1009822A8]) != 0)
  {
    v4 = *&v0[qword_10093CDF0];

    sub_10074EF34();
    if (v5)
    {
      v6 = sub_100753064();
    }

    else
    {
      v6 = 0;
    }

    [v4 setText:v6];

    if (qword_100921398 != -1)
    {
      swift_once();
    }

    v7 = sub_100750534();
    v8 = sub_10000D0FC(v7, qword_100981800);
    sub_10055FC7C(v2, v8, v3);
    v9 = *&v1[qword_10093CE00];
    sub_100741D24();
    if (v10)
    {
      v11 = sub_100753064();
    }

    else
    {
      v11 = 0;
    }

    [v9 setText:v11];
  }

  else
  {
    [*&v0[qword_10093CDF0] setText:0];
    sub_10004E1D8();
    [*&v0[qword_10093CE00] setText:0];
  }

  sub_100521548();

  return [v1 setNeedsLayout];
}

char *sub_100521E88(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100752AC4();
  v69 = *(v10 - 8);
  v70 = v10;
  __chkstk_darwin(v10);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750534();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074AB44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v72 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v18 - 8);
  v20 = v62 - v19;
  v21 = sub_100741E54();
  __chkstk_darwin(v21 - 8);
  v23 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_1009822A8] = 0;
  *&v5[qword_1009822B0] = 0;
  sub_100741DD4();
  v24 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[qword_10093CDE8] = sub_10027562C(v23, 1);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v25 = sub_10000D0FC(v12, qword_100981800);
  v26 = *(v13 + 16);
  v26(v20, v25, v12);
  v27 = *(v13 + 56);
  v62[1] = v13 + 56;
  v66 = v27;
  v27(v20, 0, 1, v12);
  v28 = *(v16 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v28;
  v28(v72);
  v29 = sub_100745C84();
  v62[0] = v15;
  v30 = v29;
  v31 = objc_allocWithZone(v29);
  v32 = sub_100745C74();
  v65 = qword_10093CDF0;
  *&v5[qword_10093CDF0] = v32;
  v33 = v67;
  v26(v67, v25, v12);
  v34 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  v35 = sub_10004DA8C(v33, 1, 4);
  v36 = qword_10093CDF8;
  *&v5[qword_10093CDF8] = v35;
  if (qword_1009213A0 != -1)
  {
    swift_once();
  }

  v37 = sub_10000D0FC(v12, qword_100981818);
  v26(v20, v37, v12);
  v66(v20, 0, 1, v12);
  v63(v72, v64, v62[0]);
  v38 = objc_allocWithZone(v30);
  v39 = sub_100745C74();
  v40 = qword_10093CE00;
  *&v5[qword_10093CE00] = v39;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[qword_10093CE08] = sub_100154454(0);
  v42 = *&v5[v65];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v43 = v42;
  v44 = v68;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520);
  sub_10000C8CC(&v76, &unk_100923520);
  sub_100753C74();

  v45 = v70;
  v46 = *(v69 + 8);
  v46(v44, v70);
  v47 = *&v5[v36];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v48 = v47;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520);
  sub_10000C8CC(&v76, &unk_100923520);
  sub_100753C74();

  v46(v44, v45);
  v49 = *&v5[v40];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v50 = v49;
  sub_100752A74();
  sub_10000C8CC(&v74, &unk_100923520);
  sub_10000C8CC(&v76, &unk_100923520);
  sub_100753C74();

  v46(v44, v45);
  v73.receiver = v5;
  v73.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v52 = [v51 contentView];
  [v52 addSubview:*&v51[qword_10093CDE8]];

  v53 = [v51 contentView];
  [v53 addSubview:*&v51[qword_10093CDF0]];

  v54 = [v51 contentView];
  [v54 addSubview:*&v51[qword_10093CDF8]];

  v55 = qword_10093CE00;
  v56 = *&v51[qword_10093CE00];
  sub_100016C60(0, &qword_100923500);
  v57 = v56;
  v58 = sub_100753DF4();
  [v57 setTextColor:v58];

  v59 = [v51 contentView];
  [v59 addSubview:*&v51[v55]];

  v60 = [v51 contentView];
  [v60 addSubview:*&v51[qword_10093CE08]];

  return v51;
}

void sub_100522720()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101.receiver = v1;
  v101.super_class = ObjectType;
  objc_msgSendSuper2(&v101, "layoutSubviews", v5);
  v8 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = *&v1[qword_10093CE08];
  v18 = &v17[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize];
  if (v17[OBJC_IVAR____TtC22SubscribePageExtension11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v19 = OBJC_IVAR____TtC22SubscribePageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000C824(&v17[v19], v100);
    sub_10000C888(v100, v100[3]);
    sub_10074AE54();
    v21 = v20;
    v23 = v22;
    sub_10000C620(v100);
    v97 = v21;
    *v18 = v21;
    v18[1] = v23;
    v96 = v23;
    *(v18 + 16) = 0;
  }

  else
  {
    v24 = *v18;
    v96 = v18[1];
    v97 = v24;
  }

  if (qword_1009217A8 != -1)
  {
    swift_once();
  }

  v25 = sub_100750B04();
  sub_10000D0FC(v25, qword_10093CD88);
  sub_1007502D4();
  sub_100750564();
  v90 = v26;
  v27 = *(v4 + 8);
  v27(v7, v3);
  if (qword_1009217B8 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CDB8);
  sub_1007502D4();
  sub_100750564();
  v29 = v28;
  v27(v7, v3);
  v30 = *&v1[qword_10093CDE8];
  sub_100741E14();
  v32 = v31;
  v34 = v33;
  v102.origin.x = v10;
  v102.origin.y = v12;
  v102.size.width = v14;
  v102.size.height = v16;
  v87 = CGRectGetMidX(v102) + v32 * -0.5;
  v89 = v32;
  v88 = v34;
  sub_100753B24();
  [v30 setFrame:?];
  v103.origin.x = v10;
  v103.origin.y = v12;
  v103.size.width = v14;
  v103.size.height = v16;
  v35 = CGRectGetWidth(v103) - v97 - v29;
  v36 = *&v1[qword_10093CE00];
  v104.origin.x = v10;
  v104.origin.y = v12;
  v104.size.width = v14;
  v104.size.height = v16;
  [v36 sizeThatFits:{v35, CGRectGetHeight(v104)}];
  v105.origin.x = v10;
  v105.origin.y = v12;
  v105.size.width = v14;
  v105.size.height = v16;
  CGRectGetMaxY(v105);
  v106.origin.x = v10;
  v106.origin.y = v12;
  v106.size.width = v14;
  v106.size.height = v16;
  CGRectGetMinX(v106);
  [v36 lastBaselineFromBottom];
  Width = v35;
  sub_100753B24();
  [v36 setFrame:?];
  v37 = [v36 text];
  if (v37)
  {

    [v36 lastBaselineMaxY];
    v39 = v38;
  }

  else
  {
    v107.origin.x = v10;
    v107.origin.y = v12;
    v107.size.width = v14;
    v107.size.height = v16;
    v39 = CGRectGetMaxY(v107) + -20.0;
  }

  v108.origin.x = v10;
  v108.origin.y = v12;
  v108.size.width = v14;
  v108.size.height = v16;
  MaxX = CGRectGetMaxX(v108);
  v92 = v10;
  v91 = v12;
  v94 = MaxX - v97;
  v93 = v39 - v96;
  sub_100753B24();
  v42 = v41;
  v44 = v43;
  v86 = v14;
  v85 = v16;
  v46 = v45;
  v48 = v47;
  v49 = type metadata accessor for OfferButton();
  v99.receiver = v17;
  v99.super_class = v49;
  objc_msgSendSuper2(&v99, "frame");
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v98.receiver = v17;
  v98.super_class = v49;
  objc_msgSendSuper2(&v98, "setFrame:", v42, v44, v46, v48);
  sub_100153BE0(v51, v53, v55, v57);
  if (qword_1009217B0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CDA0);
  sub_1007502D4();
  sub_100750564();
  v59 = v58;
  v27(v7, v3);
  v60 = *&v1[qword_10093CDF0];
  v61 = v86;
  v62 = v85;
  [v60 sizeThatFits:{v86, v85}];
  v64 = v63;
  v109.origin.y = 70.0;
  v109.origin.x = v87;
  v109.size.width = v89;
  v109.size.height = v88;
  MaxY = CGRectGetMaxY(v109);
  if (qword_1009217A0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v25, qword_10093CD70);
  sub_1007502D4();
  v66 = [v60 traitCollection];
  sub_100750AD4();
  v68 = v67;

  [v60 firstBaselineFromTop];
  v70 = v69;
  v27(v7, v3);
  v89 = v59;
  v71 = v59 + v64 + MaxY + v68 - v70;
  v110.origin.x = v94;
  v110.origin.y = v93;
  v110.size.width = v97;
  v110.size.height = v96;
  MinY = CGRectGetMinY(v110);
  v73 = v92;
  v74 = v91;
  if (MinY >= v71)
  {
    v111.origin.x = v92;
    v111.origin.y = v91;
    v111.size.width = v61;
    v111.size.height = v62;
    CGRectGetWidth(v111);
  }

  v112.origin.x = v73;
  v112.origin.y = v74;
  v112.size.width = v61;
  v112.size.height = v62;
  CGRectGetMinX(v112);
  sub_100753B24();
  [v60 setFrame:?];
  v75 = *&v1[qword_10093CDF8];
  [v75 sizeThatFits:{v61, v62}];
  v77 = v76;
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921398 != -1)
  {
    swift_once();
  }

  v78 = sub_100750534();
  sub_10000D0FC(v78, qword_100981800);
  v79 = [v1 traitCollection];
  v80 = sub_100753C14();

  [v60 lastBaselineMaxY];
  v82 = v90 + v81;
  sub_100753C24();
  v84 = v89 + v77 + v82 - v83;
  v113.origin.x = v94;
  v113.origin.y = v93;
  v113.size.width = v97;
  v113.size.height = v96;
  if (CGRectGetMinY(v113) >= v84)
  {
    v114.origin.x = v73;
    v114.origin.y = v74;
    v114.size.width = v61;
    v114.size.height = v62;
    Width = CGRectGetWidth(v114);
  }

  v115.origin.x = v73;
  v115.origin.y = v74;
  v115.size.width = v61;
  v115.size.height = v62;
  CGRectGetMinX(v115);
  sub_100753B24();
  [v75 setFrame:?];
}

void sub_1005230BC(void *a1)
{
  v1 = a1;
  sub_100522720();
}

uint64_t sub_100523104(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_1006C7184(a1, a2, a3 & 1);
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v9[qword_10093CDE8];
    sub_100276968(v15);

    *&v4[qword_1009822B0] = *&v9[qword_1009822B0];
    swift_retain_n();

    sub_100521CB0();
  }

  return result;
}

void sub_100523268(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100741C54();
  v60 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v59 = &v50 - v14;
  v15 = sub_10074FB54();
  v58 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v56 = &v50 - v18;
  __chkstk_darwin(v19);
  v21 = &v50 - v20;
  v23 = __chkstk_darwin(v22);
  v25 = &v50 - v24;
  sub_1006EB5F4(a1, a2, a3, a4, v23);
  v26 = sub_10074FB64();
  sub_100741A44();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v61 = v27;
    v51 = v12;
    v52 = v26;
    v53 = v10;
    sub_1007442C4();
    sub_100752764();
    v54 = a4;
    sub_100752D34();
    v62 = v64;
    v63 = v5;
    [*&v5[qword_10097ED48] setText:0];
    v57 = a1;
    sub_10074FB74();
    v28 = v58;
    v50 = *(v58 + 104);
    v50(v21, enum case for TodayCard.Style.dark(_:), v15);
    sub_100523F80(&qword_1009239F0, &type metadata accessor for TodayCard.Style);
    sub_100753274();
    sub_100753274();
    if (v64 == v66 && v65 == v67)
    {
      v29 = 1;
    }

    else
    {
      v29 = sub_100754754();
    }

    v30 = *(v28 + 8);
    v30(v21, v15);
    v30(v25, v15);

    if (v29)
    {
      v31 = 2;
      v32 = v63;
    }

    else
    {
      v33 = v56;
      sub_10074FB74();
      v34 = v55;
      v50(v55, enum case for TodayCard.Style.light(_:), v15);
      sub_100753274();
      sub_100753274();
      v32 = v63;
      if (v64 == v66 && v65 == v67)
      {
        v30(v34, v15);
        v30(v33, v15);

        v31 = 1;
      }

      else
      {
        v35 = sub_100754754();
        v30(v34, v15);
        v30(v33, v15);

        v31 = v35 & 1;
      }
    }

    [v32 setOverrideUserInterfaceStyle:v31];
    v36 = sub_10074FA74();
    if (!v36)
    {
      sub_100016C60(0, &qword_100923500);
      v36 = sub_100753E64();
    }

    v37 = v36;
    v38 = [v32 backgroundView];
    if (v38)
    {
      v39 = v38;
      [v38 setBackgroundColor:v37];
    }

    v40 = *&v32[qword_10093CDE8];
    v58 = sub_100741A34();
    v57 = v37;
    v41 = v59;
    sub_100741D34();
    v42 = OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_theme;
    swift_beginAccess();
    v43 = v60;
    v44 = v53;
    (*(v60 + 24))(&v40[v42], v41, v53);
    swift_endAccess();
    v56 = *(v43 + 16);
    v45 = v51;
    (v56)(v51, &v40[v42], v44);
    sub_100275D50(v45);
    v46 = *(v43 + 8);
    v46(v45, v44);
    v46(v41, v44);
    v47 = v57;
    [v40 setBackgroundColor:v57];
    sub_1006C2A3C(v58, v40, v62);
    (v56)(v41, &v40[v42], v44);
    sub_100275D50(v41);
    v46(v41, v44);
    [v40 setNeedsLayout];

    v49 = v63;
    sub_1005218D4(v48);
    *&v49[qword_1009822B0] = sub_100741A34();

    sub_100521CB0();

    [v49 setNeedsLayout];
  }

  else
  {
  }
}

uint64_t sub_100523980(uint64_t a1, uint64_t a2)
{
  sub_1006EA238();
  sub_10000C824(a1, v8);
  sub_10000C518(&unk_100923100);
  sub_10074FBB4();
  result = swift_dynamicCast();
  if (result)
  {
    sub_10074FB64();

    sub_100741A44();
    if (swift_dynamicCastClass())
    {
      v6 = *(v2 + qword_10093CDE8);
      v7 = sub_100741A34();
      sub_1006C2A3C(v7, v6, a2);
    }
  }

  return result;
}

uint64_t sub_100523A7C(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  if (*(v3 + qword_10097ED58))
  {
    v5 = *(v3 + qword_10097ED58 + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 128);
    swift_unknownObjectRetain();
    v7(a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, a3);
  v11.value.super.isa = 0;
  v11.is_nil = 0;
  sub_100743384(v11, v8);
  sub_1007433C4();
  sub_100523F80(&qword_100925570, &type metadata accessor for ArtworkView);
  sub_100744274();
  return sub_100744274();
}

id sub_100523BCC(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_1009217C0 != -1)
    {
      swift_once();
    }

    v6 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v6, qword_10093CDD0);
    v7 = v1;
    sub_100743464();

    [*&v7[qword_10093CDF0] setTextAlignment:{v8, v1}];
    [*&v7[qword_10093CDF8] setTextAlignment:v8];
    return [*&v7[qword_10093CE00] setTextAlignment:v8];
  }

  return result;
}

void sub_100523D38(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_100523BCC(a3);
}

uint64_t sub_100523DA4()
{
}

uint64_t sub_100523E34(uint64_t a1)
{
}

uint64_t type metadata accessor for InAppPurchaseTodayCardCollectionViewCell()
{
  result = qword_10093CE38;
  if (!qword_10093CE38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100523F80(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_100524028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimatedTransitionWithTasks();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100524090(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005240D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100524128(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = (v5 + 48);
    v8 = (v5 + 48);
    do
    {
      v9 = *v8;
      v8 += 24;
      if (v9 == a1)
      {
        v10 = *(v7 - 2);

        v10(a1, 1);
      }

      v7 = v8;
      --v6;
    }

    while (v6);
  }

  if (a1 == 2)
  {
    *(v1 + v3) = _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100524224()
{
  result = qword_10093D290;
  if (!qword_10093D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D290);
  }

  return result;
}

char *sub_100524278(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100747424();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100750534();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v15, qword_100980A68);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_1009217C8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000D0FC(v11, qword_10093D2A0);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v5[v19] = sub_1004AE6A0(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009217D0 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10093D2B8];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_100524664()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100747424();
  sub_100039C50(v4, qword_10093D2A0);
  v18 = sub_10000D0FC(v4, qword_10093D2A0);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v16 = sub_10000D0FC(v5, qword_100980A68);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = sub_100750B04();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_10000D134(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  sub_100750B14();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_10000D134(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v19);
  v9(v11, v3, v0);
  sub_100750B14();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return sub_100747404();
}

id sub_1005249C8()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_10093D2B8 = result;
  return result;
}

uint64_t sub_100524B40()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  sub_1007477B4();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  sub_1007477B4();
  MinX = CGRectGetMinX(v17);
  sub_1007477B4();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v14 = *v12;
  if (*v12)
  {

    v14(v15);
    return sub_1000164A8(v14);
  }

  return result;
}

void sub_100524CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v24);
      sub_10000C518(&qword_1009242A0);
      sub_10074FBB4();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10074FBA4(), , v13))
      {
        sub_10074CA84();
        if (swift_dynamicCastClass())
        {
          sub_10074CA74();
          sub_100743D74();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10045862C(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_100749544();

            (*(v8 + 8))(v10, v7);
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

uint64_t sub_100525144()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1005251A4(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_10052523C()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1);
  return v2;
}

uint64_t sub_100525298(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6);
}

void (*sub_100525358(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_1005256F0;
}

unint64_t sub_100525424()
{
  result = qword_10093D318;
  if (!qword_10093D318)
  {
    sub_10074CA84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D318);
  }

  return result;
}

uint64_t sub_10052547C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    sub_10074F694();
    sub_10074F694();
  }

  [v9 layoutDirection];
  sub_1007539B4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = sub_10074CA74();
  sub_100117C00(v19, a2);
}

uint64_t sub_100525638()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100525670()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1005256A8()
{

  sub_10000C620(v0 + 32);

  return _swift_deallocObject(v0, 72, 7);
}

void sub_1005256FC()
{
  v1 = v0;
  v2 = sub_100747424();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100750534();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_100920F08 != -1)
  {
    swift_once();
  }

  v11 = sub_10000D0FC(v6, qword_100980A68);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_1009217C8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v2, qword_10093D2A0);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *(v1 + v10) = sub_1004AE6A0(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_1009217D0 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_10093D2B8];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  sub_100754644();
  __break(1u);
}

double sub_1005259EC()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100525B14();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100525B14()
{
  v0 = sub_10074EAB4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_10074F704();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  (*(v8 + 8))(v10, v7);
  sub_100747BD4();
  sub_10074EA74();
  sub_100525E38(&unk_100925360, &type metadata accessor for Shelf.PresentationHints);
  v11 = sub_100754324();
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  if (v11)
  {
    if (qword_100920980 != -1)
    {
      swift_once();
    }

    v13 = qword_10097FB10;
  }

  else
  {
    if (qword_100920988 != -1)
    {
      swift_once();
    }

    v13 = qword_10097FB28;
  }

  v14 = sub_100743424();
  sub_10000D0FC(v14, v13);
  sub_100747BA4();
  sub_100743444();
  sub_100525E38(&qword_100926410, &type metadata accessor for BrickLayout);
  sub_100750D34();
  v16 = v15;
  swift_unknownObjectRelease();
  return v16;
}

uint64_t sub_100525E38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100525E84()
{
  v0 = sub_10000C518(&qword_100923E88);
  __chkstk_darwin(v0 - 8);
  v40 = &v34 - v1;
  v42 = sub_10074F654();
  v49 = *(v42 - 8);
  __chkstk_darwin(v42);
  v3 = (&v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000C518(&qword_100923230);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  sub_10000C518(&qword_100923E90);
  v16 = *(sub_10074F584() - 8);
  v48 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v39 = v18;
  *(v18 + 16) = xmmword_1007A7250;
  v46 = v18 + v17;
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10001CC10();
  sub_10074F5F4();
  v50 = 0x4030000000000000;
  v51 = 0x4020000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v45 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v24 = *(v49 + 104);
  v49 += 104;
  v47 = v24;
  v25 = v42;
  v24(v3);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  v44 = v6;
  sub_10074F614();
  v41 = v15;
  v43 = v12;
  sub_10074F544();
  v50 = 0x3FF0000000000000;
  v51 = 0x3FF8000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4024000000000000;
  sub_10074F5F4();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v47(v3, v45, v25);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v28 = v48;
  top = UIEdgeInsetsZero.top;
  v38 = left;
  sub_10074F544();
  v51 = 0x4008000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v36;
  v29 = v42;
  v30 = v47;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v35 = 2 * v28 + v48;
  v51 = 0x4010000000000000;
  sub_10074F614();
  v51 = 0x4034000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v30(v3, v45, v29);
  sub_1007535A4();
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  v34 = v9;
  sub_10074F544();
  v35 = 4 * v48;
  v51 = 0x4014000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  v36 = vdupq_n_s64(0x404A000000000000uLL);
  *v3 = v36;
  v31 = v45;
  v32 = v42;
  v47(v3, v45, v42);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  sub_10074F544();
  v51 = 0x4018000000000000;
  sub_10074F614();
  v51 = 0x4038000000000000;
  sub_10074F614();
  v50 = 0x4034000000000000;
  v51 = 0x4030000000000000;
  sub_10074F5F4();
  *v3 = v36;
  v47(v3, v31, v32);
  LOBYTE(v51) = 0;
  sub_10074F614();
  v51 = 0;
  sub_10074F614();
  result = sub_10074F544();
  qword_10093D3D0 = v39;
  return result;
}

void sub_1005268A0(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(a1 & 1);
  }
}

void sub_100526950(uint64_t a1, uint64_t a2, char a3)
{
  v6 = v3 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize;
  *v6 = a1;
  *(v6 + 8) = a2;
  v7 = a3 & 1;
  *(v6 + 16) = a3 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((swift_isaMask & *Strong) + 0xF8))(a1, a2, v7);
  }
}

void sub_100526A24(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = a1;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *((swift_isaMask & *Strong) + 0x110);
    v5 = Strong;

    v3(v4);
  }
}

void sub_100526AF4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(a1);
  }
}

uint64_t sub_100526BAC(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  swift_beginAccess();
  sub_10020FB98(a1, v1 + v6);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_100016B4C(v1 + v6, v5, &unk_100926C40);
    (*((swift_isaMask & *v8) + 0x140))(v5);
  }

  return sub_10000C8CC(a1, &unk_100926C40);
}

uint64_t sub_100526D00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    if (v6 != Strong)
    {
      v7 = *(v4 + 8);
      swift_getObjectType();
      v8 = [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView) image];
      (*(v7 + 8))();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_7;
    }

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_7:

  return swift_unknownObjectRelease();
}

void sub_100526E10()
{
  v1 = sub_10074DAE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  v8 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10074F704();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
  if ((v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16] & 1) == 0 && *&v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics])
  {
    v42 = v2;
    v17 = *v15;
    v16 = v15[1];
    v18 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016B4C(&v0[v18], v10, &unk_100926C40);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_10000C8CC(v10, &unk_100926C40);
    }

    else
    {
      (*(v12 + 32))(v14, v10, v11);
      v19 = v0[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory];
      if (v19 != 7)
      {

        v20 = v0;
        sub_1006E88C4(v19);
        v21 = v42;
        v22 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
        v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
        if (v19 != 6)
        {
          v23 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
        }

        if (v19 != 4)
        {
          v22 = v23;
        }

        (*(v42 + 104))(v4, *v22, v1);
        (*(v21 + 32))(v7, v4, v1);
        v24 = sub_1007532B4();

        (*(v21 + 8))(v7, v1);
        v25 = v20[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded];
        [v20 bounds];
        v27 = v26;
        v29 = v28;
        v31 = v30;
        v33 = v32;
        v34 = [v20 traitCollection];
        v35 = sub_1005824A4(v34, v27, v29, v31, v33, v17, v16, v24, v25);
        v37 = v36;
        v39 = v38;
        v41 = v40;

        [*&v20[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView] setFrame:{v35, v37, v39, v41}];
      }

      (*(v12 + 8))(v14, v11);
    }
  }
}

char *sub_100527228(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  *&v4[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory] = 7;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  v12 = sub_10074F704();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
  v14 = sub_10074F164();
  (*(*(v14 - 8) + 56))(&v4[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  v16 = sub_100741494();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24.receiver = v4;
  v24.super_class = type metadata accessor for RevealingImageView();
  v17 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v18 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  v19 = *&v17[OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView];
  v20 = v17;
  [v19 setContentMode:2];
  v21 = *&v17[v18];
  v22 = v20;
  [v22 addSubview:v21];
  [v22 setClipsToBounds:1];

  return v22;
}

void sub_1005274D4(void *a1)
{
  v3 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (Strong == a1)
    {
    }

    else
    {
      v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView);
      v8 = Strong;
      v9 = [v7 image];
      v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize);
      v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 8);
      v12 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize + 16);
      v13 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics);
      v14 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
      swift_beginAccess();
      sub_100016B4C(v1 + v14, v5, &unk_100926C40);
      v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory);

      sub_100527FD0(v9, v10, v11, v12, v13, v5, v15);

      sub_10000C8CC(v5, &unk_100926C40);
    }
  }
}

void sub_1005276FC(void *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v50 = a10;
  v16 = sub_10000C518(&unk_100926C40);
  __chkstk_darwin(v16 - 8);
  v51 = &v46 - v17;
  v18 = sub_100741494();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000C518(&qword_100925B78);
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = sub_10000C518(&qword_100925B80);
  __chkstk_darwin(v24 - 8);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (!a1)
    {

      return;
    }

    v47 = a9;
    v48 = a1;
    v32 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    (*(v19 + 16))(v29, a8, v18);
    (*(v19 + 56))(v29, 0, 1, v18);
    v33 = *(v21 + 48);
    sub_100016B4C(v31 + v32, v23, &qword_100925B80);
    sub_100016B4C(v29, &v23[v33], &qword_100925B80);
    v34 = *(v19 + 48);
    if (v34(v23, 1, v18) == 1)
    {
      v35 = v48;
      v36 = v48;
      sub_10000C8CC(v29, &qword_100925B80);
      if (v34(&v23[v33], 1, v18) == 1)
      {
        sub_10000C8CC(v23, &qword_100925B80);
LABEL_11:
        v42 = sub_10074F704();
        v43 = *(v42 - 8);
        v44 = v51;
        (*(v43 + 16))(v51, v50, v42);
        (*(v43 + 56))(v44, 0, 1, v42);
        v45 = v35;
        sub_100527FD0(v35, *&a2, *&a3, 0, v47, v44, a11);

        sub_10000C8CC(v44, &unk_100926C40);
        return;
      }

LABEL_9:
      sub_10000C8CC(v23, &qword_100925B78);

      return;
    }

    sub_100016B4C(v23, v26, &qword_100925B80);
    v37 = v34(&v23[v33], 1, v18);
    v35 = v48;
    if (v37 == 1)
    {
      v38 = v48;
      sub_10000C8CC(v29, &qword_100925B80);
      (*(v19 + 8))(v26, v18);
      goto LABEL_9;
    }

    v39 = v49;
    (*(v19 + 32))(v49, &v23[v33], v18);
    sub_100528548();
    v46 = v35;
    v40 = sub_100753014();
    v41 = *(v19 + 8);
    v41(v39, v18);
    sub_10000C8CC(v29, &qword_100925B80);
    v41(v26, v18);
    v35 = v48;
    sub_10000C8CC(v23, &qword_100925B80);
    if (v40)
    {
      goto LABEL_11;
    }
  }
}

id sub_100527C88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RevealingImageView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RevealingImageView()
{
  result = qword_10093D440;
  if (!qword_10093D440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100527DE0()
{
  sub_100527F7C(319, qword_1009265D0, &type metadata accessor for PageGrid);
  if (v0 <= 0x3F)
  {
    sub_100527F7C(319, &qword_100937E60, &type metadata accessor for Artwork.URLTemplate);
    if (v1 <= 0x3F)
    {
      sub_100527F7C(319, &unk_10093D450, &type metadata accessor for UUID);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100527F7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100527FD0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a4;
  v15 = sub_10000C518(&unk_100926C40);
  *&v16 = __chkstk_darwin(v15 - 8).n128_u64[0];
  v18 = &v43 - v17;
  v19 = *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView);
  v44 = a1;
  v45 = v19;
  [v19 setImage:{a1, v16}];
  v46 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics;
  *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = a5;

  v20 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *((swift_isaMask & *Strong) + 0x110);
    v43 = v20;
    swift_bridgeObjectRetain_n();
    v23(a5);
  }

  else
  {
  }

  v24 = (v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize);
  *v24 = a2;
  v24[1] = a3;
  v25 = v47 & 1;
  *(v24 + 16) = v47 & 1;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    (*((swift_isaMask & *v26) + 0xF8))(a2, a3, v25);
  }

  sub_100016B4C(a6, v18, &unk_100926C40);
  sub_100526BAC(v18);
  v28 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory;
  *(v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = a7;
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    (*((swift_isaMask & *v29) + 0x128))(a7);
  }

  v31 = v8 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v32 = *(v31 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(v44, ObjectType, v32);
    swift_unknownObjectRelease();
  }

  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = [v45 image];
    v37 = *v24;
    v38 = v24[1];
    v39 = *(v24 + 16);
    v40 = *(v8 + v46);
    v41 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
    swift_beginAccess();
    sub_100016B4C(v8 + v41, v18, &unk_100926C40);
    v42 = *(v8 + v28);

    sub_100527FD0(v36, v37, v38, v39, v40, v18, v42);

    sub_10000C8CC(v18, &unk_100926C40);
  }

  sub_100526E10();
}

void sub_100528370()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_isTransitioning) = 0;
  v1 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_artworkLayoutWithMetrics) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_sizeCategory) = 7;
  v3 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_pageGrid;
  v4 = sub_10074F704();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkTemplate;
  v6 = sub_10074F164();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_currentArtworkHandlerKey;
  v8 = sub_100741494();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension18RevealingImageView_mirrorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

unint64_t sub_100528548()
{
  result = qword_100925B88;
  if (!qword_100925B88)
  {
    sub_100741494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100925B88);
  }

  return result;
}

id sub_1005285A0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_descriptionLabel];
  sub_1007443F4();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setText:v4];

  v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16StandardLinkView_summaryLabel];
  sub_1007443E4();
  if (v6)
  {
    v7 = sub_100753064();
  }

  else
  {
    v7 = 0;
  }

  [v5 setText:v7];

  return [v1 setNeedsLayout];
}

unint64_t sub_1005286D0(void *a1)
{
  v54 = sub_1007484E4();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100748504();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10074CD14();
  v7 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074F704();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007445F4();
  sub_1005290F8(&qword_10093C510, &type metadata accessor for PrivacyHeader);
  result = sub_1007468B4();
  v56 = v76;
  if (v76)
  {
    v51 = v4;
    swift_getKeyPath();
    sub_100746914();

    sub_10074F674();
    (*(v11 + 8))(v13, v10);
    sub_100038D38();
    if (qword_100921240 != -1)
    {
      swift_once();
    }

    v50 = v6;
    v15 = sub_100750534();
    sub_10000D0FC(v15, qword_1009813F8);
    swift_getKeyPath();
    sub_100746914();

    v16 = v76;
    v17 = sub_100753C14();

    sub_1007445E4();
    sub_100743E94();

    v18 = sub_100743074();

    v19 = sub_10074F3F4();
    v77 = v19;
    v63 = sub_1005290F8(&qword_10092AC70, &type metadata accessor for Feature);
    v78 = v63;
    v20 = sub_10000D134(&v76);
    v21 = *(v19 - 8);
    v22 = *(v21 + 104);
    v62 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v61 = v22;
    v60 = v21 + 104;
    v22(v20);
    v23 = v18;
    v24 = v17;
    sub_10074FC74();
    sub_10000C620(&v76);
    v65 = v24;
    sub_10074CCD4();
    sub_10074CCE4();
    v25 = *(v7 + 8);
    v64 = v7 + 8;
    v59 = v25;
    v25(v9, v66);
    result = sub_1007445D4();
    v26 = result;
    if (result >> 62)
    {
      v48 = result;
      result = sub_100754664();
      v26 = v48;
      v27 = result;
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49[1] = a1;
    v52 = v3;
    v49[0] = v23;
    if (v27)
    {
      if (v27 < 1)
      {
        __break(1u);
        return result;
      }

      v28 = 0;
      v57 = v26 & 0xC000000000000001;
      v29 = _swiftEmptyArrayStorage;
      v58 = v26;
      do
      {
        if (v57)
        {
          sub_100754574();
        }

        else
        {
        }

        sub_10074CFD4();
        sub_100743E94();

        v30 = v65;
        v31 = sub_100743074();

        v74 = v19;
        v75 = v63;
        v32 = sub_10000D134(v73);
        v61(v32, v62, v19);
        v33 = v30;
        v34 = v31;
        sub_10074FC74();
        sub_10000C620(v73);
        sub_10074CCD4();
        sub_10074CCE4();
        v59(v9, v66);
        sub_10000C824(v73, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_100254FA8(0, v29[2] + 1, 1, v29);
        }

        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          v29 = sub_100254FA8((v35 > 1), v36 + 1, 1, v29);
        }

        ++v28;

        sub_10000C620(v73);
        v29[2] = v36 + 1;
        sub_100032CCC(&v70, &v29[5 * v36 + 4]);
      }

      while (v27 != v28);
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    sub_100746914();

    v37 = v73[0];
    sub_100751364();

    v38 = sub_100750F34();
    swift_allocObject();
    v39 = sub_100750F14();
    if (qword_100920B80 != -1)
    {
      swift_once();
    }

    v40 = v54;
    v41 = sub_10000D0FC(v54, qword_100980170);
    (*(v53 + 16))(v55, v41, v40);
    sub_1007445C4();
    v42 = v77;
    v43 = v78;
    v44 = sub_10000C888(&v76, v77);
    v74 = v42;
    v75 = *(v43 + 8);
    v45 = sub_10000D134(v73);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    sub_100157548(v29);

    v71 = v38;
    v72 = &protocol witness table for LayoutViewPlaceholder;
    v69 = &protocol witness table for LayoutViewPlaceholder;
    *&v70 = v39;
    v68 = v38;
    v67 = v39;
    swift_retain_n();
    v46 = v50;
    sub_1007484F4();
    swift_getKeyPath();
    sub_100746914();

    sub_1005290F8(&unk_1009332B0, &type metadata accessor for PrivacyHeaderLayout);
    v47 = v52;
    sub_100750404();

    swift_unknownObjectRelease();

    (*(v51 + 8))(v46, v47);
    return sub_10000C620(&v76);
  }

  return result;
}

uint64_t sub_1005290F8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100529140(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10000C518(&qword_10093D4E0);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = sub_100744574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v122 = v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = v106 - v12;
  __chkstk_darwin(v13);
  v116 = v106 - v14;
  __chkstk_darwin(v15);
  v117 = v106 - v16;
  __chkstk_darwin(v17);
  v119 = v106 - v18;
  v19 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v19 - 8);
  v113 = v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v106 - v22;
  __chkstk_darwin(v24);
  v26 = v106 - v25;
  __chkstk_darwin(v27);
  v29 = v106 - v28;
  __chkstk_darwin(v30);
  v120 = v106 - v31;
  v121 = OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100016C60(0, &unk_1009403B0);
  v35 = sub_1007532A4();

  if ((sub_1007532D4() & 1) == 0)
  {

LABEL_12:
    sub_10000C518(&qword_100930CA0);
    v45 = v122;
    sub_1007457F4();
    v46 = sub_100744564();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_10052AB0C();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return sub_100752D74();
  }

  v36 = *(v9 + 56);
  v111 = v8;
  v36(v120, 1, 1, v8);
  v37 = swift_unknownObjectUnownedLoadStrong();
  v38 = [v37 selectedIndex];

  v112 = v9;
  v110 = v35;
  v107 = v35 >> 62;
  if (v35 >> 62)
  {
    v39 = sub_100754664();
  }

  else
  {
    v39 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = swift_unknownObjectUnownedLoadStrong();
  v41 = [v40 selectedIndex];

  if (v38 < v39)
  {
    v42 = v112;
    if ((v110 & 0xC000000000000001) == 0)
    {
      v43 = v120;
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v41 < *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v44 = *(v110 + 8 * v41 + 32);
LABEL_10:
        [v44 tag];

        sub_100744544();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = sub_100754574();
    v43 = v120;
    goto LABEL_10;
  }

  sub_100744544();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10000C8CC(v43, &qword_10092FD68);
  sub_10052AEC0(v29, v43);
  sub_10052AA9C(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10000C8CC(v23, &qword_10092FD68);
    sub_10000C518(&qword_100930CA0);
    v51 = v122;
    sub_1007457F4();
    v52 = sub_100744564();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_10052AB0C();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = sub_100752D74();
    sub_10000C8CC(v43, &qword_10092FD68);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  sub_1007457F4();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = sub_100744534();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = sub_100744534();
      v64(v61, v41);
      if ((v62 & 1) == 0)
      {
        v70 = v114;
        (v116)(v114, enum case for NavigationTab.selected(_:), v41);
        v42 = v117;
        v67 = v118;
        v72 = v106[0];
LABEL_34:
        v72(v42, v70, v41);
        v66 = v112;
        goto LABEL_35;
      }
    }

    v42 = v117;
    if (v107)
    {
      v62 = v110;
      result = sub_100754664();
      v65 = v62;
    }

    else
    {
      v65 = v110;
      result = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v111;
    v2 = v113;
    if (result)
    {
      if ((v65 & 0xC000000000000001) == 0)
      {
        if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_64;
        }

        v68 = *(v65 + 32);
        goto LABEL_31;
      }

LABEL_62:
      v68 = sub_100754574();
LABEL_31:
      v69 = v68;
      [v68 tag];
      sub_100744544();

      result = (v39)(v2, 1, v41);
      if (result == 1)
      {
LABEL_67:
        __break(1u);
        return result;
      }

      v70 = v114;
      v71 = v2;
      v72 = v106[0];
      (v106[0])(v114, v71, v41);
      v67 = v118;
      goto LABEL_34;
    }

LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v60 == enum case for NavigationTab.selected(_:))
  {
    v66 = v112;
    v42 = v117;
    (*(v112 + 16))(v117, v58, v41);
  }

  else
  {
    v42 = v117;
    sub_1007457F4();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  sub_100745584();
  sub_100745564();
  sub_100744524();
  sub_1007454D4();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  sub_100742984();
  sub_1006FE868(v74);

  sub_100742B14();
  sub_100752754();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    sub_100742AF4();
  }

  sub_10000C518(&qword_100930CA0);
  v116 = sub_100752DE4();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = sub_100745814();
    v78 = sub_100745804();
    sub_10052A0E8(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    sub_100752D54();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10000C8CC(v120, &qword_10092FD68);
    return v79;
  }

  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = sub_100745804();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = sub_100754664();
  result = v105;
LABEL_43:
  v83 = v111;
  v84 = v115;
  if (!v82)
  {

    goto LABEL_51;
  }

  v114 = v62;
  if ((result & 0xC000000000000001) != 0)
  {
    v85 = v64;
    sub_100754574();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  sub_100742CD4();
  if (swift_dynamicCastClass())
  {
    sub_100742CB4();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = sub_100741264();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = sub_10074C4A4();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = sub_100745814();
    v89 = sub_100745804();
    sub_10052A0E8(v42, v110, v88 & 1, v89, v118);

    sub_100752D54();

    v90 = v42;
    v91 = v112;
  }

  else
  {
    v114 = swift_unknownObjectUnownedLoadStrong();
    v92 = v122;
    v63(v122, v42, v83);
    v91 = v112;
    v93 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v121 = v64;
    v94 = (v10 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
    v95 = (v94 + 15) & 0xFFFFFFFFFFFFFFF8;
    v96 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    v98 = v83;
    v99 = v97;
    v100 = v108;
    *(v97 + 16) = v108;
    (v106[0])(v97 + v93, v92, v98);
    *(v99 + v94) = v110;
    *(v99 + v95) = v123;
    *(v99 + v96) = v118;
    *(v99 + ((v96 + 15) & 0xFFFFFFFFFFFFFFF8)) = v116;
    aBlock[4] = sub_10052B048;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_100879F80;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10000C8CC(v115, &unk_100923970);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10000C8CC(v120, &qword_10092FD68);
  return v116;
}

uint64_t sub_10052A048(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100745814();
  v9 = sub_100745804();
  sub_10052A0E8(a2, a3, v8 & 1, v9, a5);

  sub_100752D54();
}

uint64_t sub_10052A0E8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10000C518(&qword_10093D4B0);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10000C518(&qword_10092FD68);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = sub_100744574();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = sub_100744534();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC22SubscribePageExtension29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100016C60(0, &qword_10092B0C0);
    v30.super.isa = sub_100753294().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = sub_100754664();
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v31 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v66;
    if (!v31)
    {
      goto LABEL_27;
    }
  }

  v33 = 0;
  v70 = v74 & 0xFFFFFFFFFFFFFF8;
  v71 = v74 & 0xC000000000000001;
  v68 = (v21 + 56);
  v69 = (v21 + 16);
  v34 = (v21 + 48);
  v58 = (v21 + 48);
  v59 = (v21 + 32);
  v67 = v31;
  while (v71)
  {
    v36 = sub_100754574();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    sub_100744544();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_10052AA9C(v32, v13);
    sub_10052AA9C(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10000C8CC(v76, &qword_10092FD68);
      sub_10000C8CC(v32, &qword_10092FD68);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_10052AA9C(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10000C8CC(v76, &qword_10092FD68);
      v21 = v66;
      sub_10000C8CC(v66, &qword_10092FD68);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10000C8CC(v13, &qword_10093D4B0);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_10052AE24(&unk_10093D4C0, &type metadata accessor for NavigationTab);
    v62 = sub_100753014();
    v21 = v63;
    v63(v42, v20);
    sub_10000C8CC(v76, &qword_10092FD68);
    v43 = v66;
    sub_10000C8CC(v66, &qword_10092FD68);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10000C8CC(v13, &qword_10092FD68);
    v24 = v75;
    if (v62)
    {
      goto LABEL_22;
    }

LABEL_9:

    ++v33;
    if (v37 == v67)
    {
      goto LABEL_27;
    }
  }

  if (v33 >= *(v70 + 16))
  {
    __break(1u);
    goto LABEL_26;
  }

  v36 = *(v74 + 8 * v33 + 32);
  v37 = v33 + 1;
  if (!__OFADD__(v33, 1))
  {
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  sub_10000C8CC(v13, &qword_10092FD68);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_1006F66C8(v33);

    v30.super.isa = v24;
  }

  else
  {
  }

LABEL_3:

LABEL_27:
  v46 = swift_unknownObjectUnownedLoadStrong();
  v47 = [v46 selectedViewController];

  if (v47)
  {
    if (v54)
    {
      objc_opt_self();
      v48 = swift_dynamicCastObjCClass();
      if (v48)
      {
      }
    }

    sub_1007525F4();
    sub_100744CB4();
    swift_allocObject();
    v49 = sub_100744C94();
    v50 = sub_10052AB90(v49, 1, v57, sub_1003C1694);

    return v50;
  }

  else
  {
    sub_10000C518(&qword_100930CA0);
    sub_10052AB0C();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return sub_100752D74();
  }
}

id sub_10052A988()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052AA9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FD68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10052AB0C()
{
  result = qword_10093D4B8;
  if (!qword_10093D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4B8);
  }

  return result;
}

uint64_t sub_10052AB90(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10000C518(&unk_100923210);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  sub_1007526C4();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000C8CC(v10, &unk_100923960);
    sub_10000C518(&qword_100930CA0);
    sub_10052AE6C();
    swift_allocError();
    *v15 = 1;
    return sub_100752D74();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_10052AE24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10052AE6C()
{
  result = qword_10093D4D0;
  if (!qword_10093D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D4D0);
  }

  return result;
}

uint64_t sub_10052AEC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10092FD68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10052AF30()
{
  v1 = sub_100744574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10052B048()
{
  v1 = *(sub_100744574() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10052A048(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_10052B0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10052B114(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10052B164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10052B1B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_10052B1D0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10052B200()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata);
  v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension33NotesMetadataActivityItemProvider____lazy_storage___notesMetadata + 8);
  v4 = v2;
  if (v3 >> 60 == 15)
  {
    swift_unknownObjectWeakInit();
    v4 = sub_10052B2B8();
    v6 = v5;
    swift_unknownObjectWeakDestroy();
    v7 = *v1;
    v8 = v1[1];
    *v1 = v4;
    v1[1] = v6;
    sub_10052BE30(v4, v6);
    sub_10052BE84(v7, v8);
  }

  sub_10052BE98(v2, v3);
  return v4;
}

uint64_t sub_10052B2B8()
{
  v0 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v0 - 8);
  v2 = &v34 - v1;
  v3 = sub_100741264();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_10000C518(&qword_10092C1F8);
    inited = swift_initStackObject();
    v34 = xmmword_1007A5A00;
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = 1701667182;
    *(inited + 40) = 0xE400000000000000;
    v10 = sub_10074A834();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v10;
    *(inited + 56) = v11;
    v12 = sub_100414AE8(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &qword_10092C200);
    sub_10074A804();
    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_10000C8CC(v2, &unk_100923970);
    }

    else
    {
      (*(v4 + 32))(v6, v2, v3);
      v38 = v3;
      v13 = sub_10000D134(&v37);
      (*(v4 + 16))(v13, v6, v3);
      sub_10000C610(&v37, v36);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_1006743B4(v36, 7107189, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
      (*(v4 + 8))(v6, v3);
      v12 = v35;
    }

    v15 = sub_10074A844();
    if (v16)
    {
      v38 = &type metadata for String;
      *&v37 = v15;
      *(&v37 + 1) = v16;
      sub_10000C610(&v37, v36);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_1006743B4(v36, 0x796E61706D6F63, 0xE700000000000000, v17);
      v12 = v35;
    }

    v18 = sub_10074A814();
    if (v19)
    {
      v38 = &type metadata for String;
      *&v37 = v18;
      *(&v37 + 1) = v19;
      sub_10000C610(&v37, v36);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_1006743B4(v36, 0x79726F6765746163, 0xE800000000000000, v20);
      v12 = v35;
    }

    v21 = sub_10074A824();
    if ((v22 & 1) == 0)
    {
      v38 = &type metadata for Int64;
      *&v37 = v21;
      sub_10000C610(&v37, v36);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_1006743B4(v36, 0x7A69735F656C6966, 0xE900000000000065, v23);
      v12 = v35;
    }

    v24 = sub_10074A854();
    if (v25)
    {
      v38 = &type metadata for String;
      *&v37 = v24;
      *(&v37 + 1) = v25;
      sub_10000C610(&v37, v36);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v12;
      sub_1006743B4(v36, 0x79745F616964656DLL, 0xEA00000000006570, v26);
    }

    v27 = objc_opt_self();
    isa = sub_100752F34().super.isa;

    *&v37 = 0;
    v29 = [v27 archivedDataWithRootObject:isa requiringSecureCoding:0 error:&v37];

    v30 = v37;
    if (v29)
    {
      v31 = sub_100741274();

      return v31;
    }

    else
    {
      v32 = v30;
      sub_100741134();

      swift_willThrow();
      if (qword_100921ED0 != -1)
      {
        swift_once();
      }

      v33 = sub_100752E44();
      sub_10000D0FC(v33, qword_1009832E8);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = v34;
      sub_1007523A4();
      sub_100752D04();

      return 0;
    }
  }

  return result;
}

void sub_10052B978(uint64_t *a1@<X8>)
{
  v3 = [v1 activityType];
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  v5 = sub_100753094();
  v7 = v6;
  if (v5 == sub_100753094() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_100754754();

    if ((v10 & 1) == 0)
    {

LABEL_8:
      a1[3] = &type metadata for String;
      *a1 = 0;
      a1[1] = 0xE000000000000000;
      return;
    }
  }

  v11 = sub_10052B200();
  v13 = v12;
  a1[3] = &type metadata for Data;

  *a1 = v11;
  a1[1] = v13;
}

void sub_10052BA74(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = sub_100753094();
  v5 = v4;
  if (v3 == sub_100753094() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100754754();

    if ((v8 & 1) == 0)
    {
LABEL_7:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  v9 = sub_10052B200();
  *(a2 + 24) = &type metadata for Data;
  *a2 = v9;
  *(a2 + 8) = v10;
}

id sub_10052BD88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesMetadataActivityItemProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10052BE30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10052BE84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100386870(a1, a2);
  }

  return a1;
}

uint64_t sub_10052BE98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10052BE30(a1, a2);
  }

  return a1;
}

unint64_t sub_10052BEAC(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_100753094();
    v4 = v3;
    if (v2 == sub_100753094() && v4 == v5)
    {
      v9 = v1;
    }

    else
    {
      v7 = sub_100754754();
      v8 = v1;

      if ((v7 & 1) == 0)
      {

        return 0;
      }
    }

    return 0xD00000000000001ELL;
  }

  return result;
}

void *sub_10052BF94(uint64_t a1, int *a2)
{
  v60 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v60);
  v61 = &v53 - v5;
  v6 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = &v53 - v9;
  __chkstk_darwin(v10);
  v59 = &v53 - v11;
  v12 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v12 - 8);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v62 = &v53 - v15;
  __chkstk_darwin(v16);
  v63 = &v53 - v17;
  v18 = sub_10074E984();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v54 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = sub_10000C518(&unk_10092E450);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53 - v26;
  v55 = v2;
  v64 = sub_10049CD00(a1, a2);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v28 = *(v25 + 8);
  v28(v27, v24);
  v29 = v19;
  v30 = (*(v19 + 88))(v23, v18);
  if (v30 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v32 = v57;
    v31 = v58;
    sub_100747BB4();
    sub_10000C8CC(v32, &unk_10093D6E0);
    v33 = v59;
    sub_100028CD0(v31, v59);
    v34 = (*(v25 + 48))(v33, 1, v24);
    v58 = a1;
    if (v34 == 1)
    {
      sub_10000C8CC(v33, &unk_10093D6E0);
      v35 = 1;
      v36 = v29;
      v37 = v63;
    }

    else
    {
      swift_getKeyPath();
      v37 = v63;
      sub_1007525B4();

      v28(v33, v24);
      v35 = 0;
      v36 = v29;
    }

    v38 = v62;
    v39 = *(v36 + 56);
    v39(v37, v35, 1, v18);
    (*(v36 + 104))(v38, enum case for Shelf.ContentType.reviewSummary(_:), v18);
    v39(v38, 0, 1, v18);
    v40 = v61;
    v41 = *(v60 + 48);
    sub_100028D40(v37, v61);
    sub_100028D40(v38, v40 + v41);
    v42 = *(v36 + 48);
    if (v42(v40, 1, v18) == 1)
    {
      sub_10000C8CC(v38, &unk_100933370);
      sub_10000C8CC(v37, &unk_100933370);
      if (v42(v40 + v41, 1, v18) == 1)
      {
        sub_10000C8CC(v40, &unk_100933370);
LABEL_17:
        v43 = 28.0;
        v44 = 12.0;
        v45 = v58;
        v46 = 5;
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v47 = v56;
    sub_100028D40(v40, v56);
    if (v42(v40 + v41, 1, v18) == 1)
    {
      sub_10000C8CC(v62, &unk_100933370);
      sub_10000C8CC(v63, &unk_100933370);
      (*(v36 + 8))(v47, v18);
LABEL_14:
      sub_10000C8CC(v40, &qword_10092C380);
      return v64;
    }

    v48 = v40 + v41;
    v49 = v54;
    (*(v36 + 32))(v54, v48, v18);
    sub_10013DFA4();
    v50 = sub_100753014();
    v51 = *(v36 + 8);
    v51(v49, v18);
    sub_10000C8CC(v62, &unk_100933370);
    sub_10000C8CC(v63, &unk_100933370);
    v51(v47, v18);
    sub_10000C8CC(v40, &unk_100933370);
    if (v50)
    {
      goto LABEL_17;
    }
  }

  else if (v30 == enum case for Shelf.ContentType.productReview(_:))
  {
    sub_10052C6E0(&v64, a1);
  }

  else
  {
    if (v30 == enum case for Shelf.ContentType.productReviewAction(_:))
    {
      v43 = -24.0;
      v44 = -16.0;
      v45 = a1;
      v46 = 1;
LABEL_18:
      sub_10052D8D0(&v64, v43, v44, v45, v46);
      return v64;
    }

    (*(v19 + 8))(v23, v18);
  }

  return v64;
}

void sub_10052C6E0(void *a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = sub_10074C9A4();

    if (v5)
    {
      v6 = sub_100743814();
      Strong = v7;
    }

    else
    {
      v6 = 0;
      Strong = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  v8 = sub_1001D68B4(a2, v6, Strong);

  sub_1007539C4();
  v9 = sub_100753064();

  v39 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v8 elementKind:v9 alignment:1];

  v10 = *a1;
  v37 = *a1 >> 62;
  v38 = a1;
  if (v37)
  {
    goto LABEL_48;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v12 = 0;
  v13 = v10 & 0xC000000000000001;
  while (v11 != v12)
  {
    if (v13)
    {
      v14 = sub_100754574();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v14 = *(v10 + 8 * v12 + 32);
    }

    v15 = v14;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      v11 = sub_100754664();
      goto LABEL_8;
    }

    v16 = [v14 elementKind];
    v17 = sub_100753094();
    v19 = v18;

    if (v17 == sub_100753094() && v19 == v20)
    {

LABEL_26:
      if (!v37)
      {
        v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v24 = v39;
        if (v23)
        {
          goto LABEL_28;
        }

LABEL_45:

        *v38 = _swiftEmptyArrayStorage;
        return;
      }

      v23 = sub_100754664();
      v24 = v39;
      if (!v23)
      {
        goto LABEL_45;
      }

LABEL_28:
      sub_1007545C4();
      if ((v23 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        do
        {
          if (v13)
          {
            v29 = sub_100754574();
          }

          else
          {
            v29 = *(v10 + 8 * v25 + 32);
          }

          v30 = v29;
          v31 = [v29 elementKind];
          v32 = sub_100753094();
          v34 = v33;

          if (v32 == sub_100753094() && v34 == v35)
          {

            v27 = v24;
          }

          else
          {
            v26 = sub_100754754();

            if (v26)
            {
              v27 = v24;
            }

            else
            {
              v27 = v30;
            }
          }

          ++v25;
          v28 = v27;

          sub_1007545A4();
          sub_1007545D4();
          sub_1007545E4();
          sub_1007545B4();
        }

        while (v23 != v25);
        goto LABEL_45;
      }

      __break(1u);
      goto LABEL_50;
    }

    v22 = sub_100754754();

    ++v12;
    if (v22)
    {
      goto LABEL_26;
    }
  }

  v39 = v39;
  sub_100753284();
  if (*((*v38 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_22;
  }

LABEL_50:
  sub_100753304();
LABEL_22:
  sub_100753344();
}

double sub_10052CB1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v25 = a3;
  v9 = sub_100747C14();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SeparatorSupplementaryView();
  if (sub_1007539C4() == a1 && v13 == a2)
  {

LABEL_5:
    a5[3] = sub_10000C518(&qword_100934200);
    a5[4] = sub_100150440(&qword_10093D6D0, &qword_100934200);
    sub_10000D134(a5);

    sub_1007539D4();
LABEL_6:
    sub_10074D744();
    return result;
  }

  v24 = v10;
  v14 = sub_100754754();

  if (v14)
  {
    goto LABEL_5;
  }

  type metadata accessor for ProductReviewsShelfHeaderView();
  if (sub_1007539C4() == a1 && v16 == a2)
  {

LABEL_11:
    a5[3] = sub_10000C518(&qword_1009392E0);
    a5[4] = sub_100150440(&unk_10093D6C0, &qword_1009392E0);
    v23[2] = sub_10000D134(a5);

    v23[1] = sub_1007539D4();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = v24;
    (*(v24 + 16))(v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v9);
    v20 = (*(v19 + 80) + 24) & ~*(v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    (*(v19 + 32))(v21 + v20, v12, v9);
    goto LABEL_6;
  }

  v17 = sub_100754754();

  if (v17)
  {
    goto LABEL_11;
  }

  v22 = v25;

  return sub_1004989E4(a1, a2, v22, a4, a5);
}

uint64_t sub_10052CE6C(uint64_t a1)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747564();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  sub_100747534();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_10050F87C();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10052D08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_weakLoadStrong() && (v8 = sub_10074C9A4(), , v8))
    {
      v9 = sub_100743814();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    if (swift_weakLoadStrong())
    {
      v12.super.super.isa = sub_10052D194().super.super.isa;
    }

    else
    {
      v12.super.super.isa = 0;
    }

    sub_1001D58B4(a6, v9, v11, v12.super.super.isa);
  }

  return result;
}

UIMenu sub_10052D194()
{
  v0 = sub_10074C984();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_36:
    v3 = sub_100754664();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        v5 = v4;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            v6 = sub_100754574();
            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
              goto LABEL_34;
            }
          }

          else
          {
            if (v5 >= *(v2 + 16))
            {
              goto LABEL_35;
            }

            v6 = *(v1 + 8 * v5 + 32);

            v4 = v5 + 1;
            if (__OFADD__(v5, 1))
            {
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          sub_10074ECB4();
          if (v7)
          {
            break;
          }

          ++v5;
          if (v4 == v3)
          {
            goto LABEL_37;
          }
        }

        sub_10074ECA4();
        v8 = swift_dynamicCast();
        v9 = v25;
        if (!v8)
        {
          v9 = 0;
        }

        v23 = v9;
        if (v8)
        {
          v10 = v26;
        }

        else
        {
          v10 = 0;
        }

        if (sub_10074C9A4())
        {
          v22 = sub_100743824();
          v24 = v11;

          if (v10)
          {
            if (v24)
            {
              if (v23 == v22 && v10 == v24)
              {
              }

              else
              {
                sub_100754754();
              }

              goto LABEL_30;
            }

LABEL_28:

            goto LABEL_30;
          }

          if (v24)
          {
            goto LABEL_28;
          }
        }

        else if (v10)
        {
          goto LABEL_28;
        }

LABEL_30:
        sub_100016C60(0, &qword_100929CC0);
        v12 = swift_allocObject();
        swift_weakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = v6;
        v21._rawValue = 0;
        sub_100753FF4();
        sub_100753284();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
      }

      while (v4 != v3);
    }
  }

LABEL_37:

  if (_swiftEmptyArrayStorage >> 62)
  {
    if (sub_100754664())
    {
      goto LABEL_39;
    }

LABEL_50:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_50;
  }

LABEL_39:
  v14 = sub_10074C994();
  if (v15)
  {
    v16 = v14;
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

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_100016C60(0, &qword_1009257B0);

    v18 = sub_100754654();
  }

  else
  {

    sub_100754764();
    sub_100016C60(0, &qword_1009257B0);
    v18 = _swiftEmptyArrayStorage;
  }

  sub_100016C60(0, &qword_1009257B8);
  v28._countAndFlagsBits = v16;
  v28._object = v17;
  v29.value._countAndFlagsBits = 0;
  v29.value._object = 0;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v19.value = 0;
  return sub_100753C34(v28, v29, v27, v19, 0xFFFFFFFFFFFFFFFFLL, v18, v21);
}

uint64_t sub_10052D5D0()
{

  sub_10000C4F0(v0 + 24);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_10052D63C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10052D674()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10052D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_100747C14() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  return sub_10052D08C(a1, a2, a3, a4, v10, v11);
}

uint64_t sub_10052D7D4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4[3] = sub_100016C60(0, &qword_100929CC0);
    v4[0] = a1;
    v3 = a1;
    sub_10074C9F4();

    return sub_10000C8CC(v4, &unk_100923520);
  }

  return result;
}

uint64_t sub_10052D884()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10052D8D0(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v28 = a1;
  v29 = a5;
  v7 = sub_100754724();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_1009249B0);
  v11 = *(v30 - 8);
  __chkstk_darwin(v30);
  v13 = &v27 - v12;
  v31 = a3;
  v32 = a2;
  sub_10000C518(&unk_100923AE0);
  sub_100743484();
  v14 = objc_opt_self();
  v15 = [v14 fractionalWidthDimension:1.0];
  v16 = sub_100747B94();
  sub_100747554();
  v18 = v17;

  v19 = [v14 absoluteDimension:v18];
  v20 = [objc_opt_self() sizeWithWidthDimension:v15 heightDimension:v19];

  type metadata accessor for SeparatorSupplementaryView();
  sub_1007539C4();
  sub_100747BA4();
  sub_1007502D4();
  sub_100743514();
  v22 = v21;
  swift_unknownObjectRelease();
  v23 = v28;
  (*(v8 + 8))(v10, v7);
  v24 = sub_100753064();

  v25 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v20 elementKind:v24 alignment:v29 absoluteOffset:{0.0, v22}];

  sub_100753284();
  if (*((*v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  return (*(v11 + 8))(v13, v30);
}

uint64_t sub_10052DC84(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = sub_100750304();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v15[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_100750B04();
  sub_100039C50(v9, a2);
  sub_10000D0FC(v9, a2);
  v10 = *a3;
  *v8 = v10;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v15[3] = v5;
  v15[4] = &protocol witness table for FontSource;
  v11 = sub_10000D134(v15);
  (*(v6 + 16))(v11, v8, v5);
  v12 = v10;
  sub_100750B14();
  return (*(v6 + 8))(v8, v5);
}

void sub_10052DDF4(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v11 = &v91[-v10];
  v12 = sub_10074A3F4();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10074A454();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_10074A374();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v91[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)], enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  sub_10074A3E4();
  sub_10074A384();
  v21 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v22] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *&v4[v24] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = sub_100753064();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemMaterialTextOverlay();
    *v32 = 0;
    *(v32 + 1) = 0;
    v101.receiver = v4;
    v101.super_class = v33;
    v34 = objc_msgSendSuper2(&v101, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v99 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground];
    sub_1006F3F14(26.0);

    v40 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
    v41 = qword_1009215A0;
    v42 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_100750534();
    v44 = sub_10000D0FC(v43, qword_100981E18);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v94 = v45;
    v95 = *(v45 + 56);
    v95(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v40] setNumberOfLines:1];
    v47 = *&v38[v40];
    v48 = objc_opt_self();
    v49 = v47;
    v100 = v48;
    v50 = [v48 secondaryLabelColor];
    v51 = v40;
    v52 = v50;
    [v49 setTextColor:v50];

    v98 = v51;
    v53 = [*&v38[v51] layer];
    v97 = kCAFilterPlusL;
    [v53 setCompositingFilter:?];

    v54 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
    v55 = qword_1009215B0;
    v56 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = sub_10000D0FC(v43, qword_100981E48);
    v46(v11, v57, v43);
    v58 = v95;
    v95(v11, 0, 1, v43);
    sub_100745BA4();

    [*&v38[v54] setNumberOfLines:2];
    v59 = *&v38[v54];
    v60 = [v100 labelColor];
    v96 = v54;
    v61 = v60;
    [v59 setTextColor:v60];

    v62 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
    v63 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
    *v11 = UIFontTextStyleFootnote;
    v11[1] = UIFontWeightRegular;
    v92 = enum case for FontUseCase.preferredFontDerivative(_:);
    v64 = v11;
    v65 = v94[13];
    v65(v64);
    v58(v64, 0, 1, v43);
    v94 = UIFontTextStyleFootnote;
    v66 = v63;
    sub_100745BA4();

    v67 = v62;
    [*&v38[v62] setNumberOfLines:2];
    v68 = *&v38[v62];
    v93 = v62;
    v69 = v68;
    v70 = [v100 secondaryLabelColor];
    [v69 setTextColor:v70];

    v71 = [*&v38[v67] layer];
    v72 = v97;
    [v71 setCompositingFilter:v97];

    v73 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
    v74 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    *v64 = v94;
    v64[1] = UIFontWeightBold;
    (v65)(v64, v92, v43);
    v58(v64, 0, 1, v43);
    v75 = v74;
    sub_100745BA4();

    [*&v38[v73] setNumberOfLines:1];
    v76 = *&v38[v73];
    v77 = v100;
    v78 = [v100 labelColor];
    [v76 setTextColor:v78];

    v79 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
    v80 = *&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView];
    v81 = objc_opt_self();
    v82 = v80;
    v83 = [v81 configurationWithTextStyle:UIFontTextStyleBody];
    [v82 setPreferredSymbolConfiguration:v83];

    v84 = *&v38[v79];
    v85 = [v77 secondaryLabelColor];
    [v84 setTintColor:v85];

    v86 = [*&v38[v79] layer];
    [v86 setCompositingFilter:v72];

    v87 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer] setEnabled:0];
    v88 = *&v38[v87];
    v89 = v38;
    [v88 addTarget:v89 action:"handleSelection:"];
    v90 = *&v38[v87];
    [v90 setDelegate:v89];

    [v89 addGestureRecognizer:*&v38[v87]];
    [v89 addSubview:*&v38[v99]];
    [v89 addSubview:*&v38[v98]];
    [v89 addSubview:*&v38[v96]];
    [v89 addSubview:*&v38[v93]];
    [v89 addSubview:*&v38[v73]];
    [v89 addSubview:*&v38[v79]];
    sub_10052FD90();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10052EA80@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  v29 = sub_1007510A4();
  v28 = *(v29 - 8);
  __chkstk_darwin(v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = sub_10074A464();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v14 + 16))(v16, v3 + v17, v13);
  sub_10074A394();
  (*(v14 + 8))(v16, v13);
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  sub_100530F74(&qword_10092A550);
  sub_100753274();
  sub_100753274();
  if (v39[0] == v36[0] && v39[1] == v36[1])
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_100754754();
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);

  sub_10052EFF4(v39);
  if ((v30 & 1) == 0)
  {
    v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView);
    v37 = sub_1001A28CC();
    v38 = &protocol witness table for UIImageView;
    v36[0] = v23;
    v24 = v23;
    sub_1007510E4();
    v34 = sub_100751104();
    v35 = &protocol witness table for Center;
    sub_10000D134(v33);
    sub_100751114();
    (*(v28 + 104))(v5, enum case for Pin.Edge.trailingEdge(_:), v29);
    sub_10000C824(v39, v36);
    v32[3] = sub_1007511A4();
    v32[4] = &protocol witness table for Margins;
    sub_10000D134(v32);
    sub_100751194();
    v37 = sub_1007510B4();
    v38 = &protocol witness table for Pin;
    sub_10000D134(v36);
    sub_1007510C4();
    if ((v18 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_10000C824(v39, v32);
    sub_1007510D4();
    v34 = sub_100751104();
    v35 = &protocol witness table for Center;
    sub_10000D134(v33);
    sub_100751114();
    goto LABEL_10;
  }

  v20 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView);
  type metadata accessor for CarouselItemMaterialTextOverlay();
  sub_1007477B4();
  [v20 sizeThatFits:{v21, v22}];
  sub_10000C824(v39, v33);
  v37 = sub_1007511A4();
  v38 = &protocol witness table for Margins;
  sub_10000D134(v36);
  sub_100751194();
  if (v18)
  {
    goto LABEL_9;
  }

LABEL_7:
  sub_10000C824(v36, v33);
LABEL_10:
  sub_10000C824(v33, v32);
  v25 = sub_1007511A4();
  v26 = v31;
  v31[3] = v25;
  v26[4] = &protocol witness table for Margins;
  sub_10000D134(v26);
  sub_100751194();
  sub_10000C620(v39);
  sub_10000C620(v36);
  return sub_10000C620(v33);
}

uint64_t sub_10052EFF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  ObjectType = swift_getObjectType();
  v71 = sub_1007507B4();
  v68 = *(v71 - 8);
  __chkstk_darwin(v71);
  v62 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v60 - v5;
  __chkstk_darwin(v6);
  v66 = &v60 - v7;
  v8 = sub_100750B04();
  v69 = *(v8 - 8);
  __chkstk_darwin(v8);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v9;
  __chkstk_darwin(v10);
  v72 = &v60 - v11;
  v12 = sub_10074A374();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  v19 = sub_10074A464();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v20 + 16))(v22, &v2[v23], v19);
  sub_10074A394();
  (*(v20 + 8))(v22, v19);
  (*(v13 + 104))(v15, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v12);
  sub_100530F74(&qword_10092A550);
  sub_100753274();
  sub_100753274();
  if (v73[0] == v76 && v73[1] == v77)
  {
    v24 = *(v13 + 8);
    v24(v15, v12);
    v24(v18, v12);

LABEL_5:
    v27 = qword_1009217F8;
    v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = qword_10093D738;
    goto LABEL_11;
  }

  v25 = sub_100754754();
  v26 = *(v13 + 8);
  v26(v15, v12);
  v26(v18, v12);

  if (v25)
  {
    goto LABEL_5;
  }

  v29 = qword_1009217F0;
  v61 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  if (v29 != -1)
  {
    swift_once();
  }

  v28 = qword_10093D720;
LABEL_11:
  v30 = v64;
  v31 = sub_10000D0FC(v8, v28);
  v64 = *(v69 + 16);
  (v64)(v72, v31, v8);
  v32 = v62;
  sub_100750794();
  v33 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v34 = sub_100745C84();
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v33;
  v35 = swift_allocObject();
  v36 = ObjectType;
  *(v35 + 16) = v2;
  *(v35 + 24) = v36;
  v37 = v36;
  v38 = v33;
  v39 = v2;
  sub_1007507A4();

  v60 = v8;
  v40 = *(v68 + 1);
  v41 = v32;
  v42 = v71;
  v40(v41, v71);
  v68 = v40;
  sub_10000C620(v73);
  v43 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v73[0] = v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v37;
  v62 = v39;
  v45 = v43;
  v46 = v66;
  sub_1007507A4();

  v40(v30, v42);
  sub_10000C620(v73);
  v74 = v34;
  v75 = &protocol witness table for UILabel;
  v47 = v61;
  v73[0] = v61;
  v48 = v65;
  v49 = v60;
  (v64)(v65, v72, v60);
  v50 = v69;
  v51 = (*(v69 + 80) + 24) & ~*(v69 + 80);
  v52 = (v63 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v62;
  *(v53 + 16) = v62;
  (*(v50 + 32))(v53 + v51, v48, v49);
  v55 = v71;
  *(v53 + v52) = ObjectType;
  v56 = v67;
  v67[3] = v55;
  v56[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v56);
  v57 = v47;
  v58 = v54;
  sub_1007507A4();

  v68(v46, v55);
  (*(v50 + 8))(v72, v49);
  return sub_10000C620(v73);
}

uint64_t sub_10052F7B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v22 = a6;
  v23 = a5;
  v8 = sub_10074A374();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A464();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v13 + 16))(v15, a2 + v16, v12);
  sub_10074A394();
  (*(v13 + 8))(v15, v12);
  sub_10074A354();
  (*(v9 + 8))(v11, v8);
  sub_100750744();
  v17 = sub_100750764();
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v17)
  {
    sub_100750784();
  }

  sub_100750734();
  if (*a4 != -1)
  {
    swift_once();
  }

  v18 = sub_100750B04();
  v19 = sub_10000D0FC(v18, v23);
  v24[3] = v18;
  v24[4] = &protocol witness table for StaticDimension;
  v20 = sub_10000D134(v24);
  (*(*(v18 - 8) + 16))(v20, v19, v18);
  return sub_100750714();
}

uint64_t sub_10052FA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10074A374();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074A464();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  (*(v10 + 16))(v12, a2 + v13, v9);
  sub_10074A394();
  (*(v10 + 8))(v12, v9);
  sub_10074A354();
  (*(v6 + 8))(v8, v5);
  sub_100750744();
  sub_10000C518(&unk_10093D7F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v15 = sub_100750764();
  *(inited + 32) = v15;
  v16 = sub_100750774();
  *(inited + 40) = v16;
  sub_100750784();
  sub_100750784();
  if (sub_100750784() != v15)
  {
    sub_100750784();
  }

  sub_100750784();
  if (sub_100750784() != v16)
  {
    sub_100750784();
  }

  sub_100750734();
  v17 = sub_100750B04();
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v18 = sub_10000D134(v23);
  v19 = *(*(v17 - 8) + 16);
  v19(v18, a3, v17);
  sub_100750714();
  if (qword_100921800 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v17, qword_10093D750);
  v24 = v17;
  v25 = &protocol witness table for StaticDimension;
  v21 = sub_10000D134(v23);
  v19(v21, v20, v17);
  return sub_100750724();
}

id sub_10052FD90()
{
  v1 = v0;
  v56 = sub_10074A3F4();
  v64 = *(v56 - 8);
  __chkstk_darwin(v56);
  v63 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v61 = &v53 - v4;
  __chkstk_darwin(v5);
  v57 = &v53 - v6;
  __chkstk_darwin(v7);
  v54 = &v53 - v8;
  v9 = sub_10074A374();
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10074A464();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v62 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v58 = &v53 - v16;
  __chkstk_darwin(v17);
  v55 = &v53 - v18;
  __chkstk_darwin(v19);
  v53 = &v53 - v20;
  __chkstk_darwin(v21);
  v23 = &v53 - v22;
  v24 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v25 = *(v13 + 16);
  v25(v23, &v0[v24], v12);
  sub_10074A394();
  v26 = *(v13 + 8);
  (v26)(v23, v12);
  v27 = [v0 traitCollection];
  v28 = sub_10074A364();

  v66[1](v11, v67);
  v29 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  v65 = v28;
  [v29 setTextAlignment:v28];
  v59 = v25;
  v60 = v24;
  v30 = v1;
  v31 = v53;
  v25(v53, &v1[v24], v12);
  v32 = v12;
  v33 = v54;
  sub_10074A404();
  v66 = v26;
  v67 = v13 + 8;
  (v26)(v31, v12);
  v34 = sub_10074A3C4();
  v35 = v33;
  v36 = v56;
  v64 = *(v64 + 8);
  (v64)(v35);
  if (!v34)
  {
    v34 = [objc_opt_self() secondaryLabelColor];
  }

  [v29 setTextColor:v34];

  v37 = v30;
  v38 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  [v38 setTextAlignment:v65];
  v39 = v59;
  v40 = v60;
  v41 = v55;
  v59(v55, &v30[v60], v32);
  v42 = v57;
  sub_10074A404();
  (v66)(v41, v32);
  v43 = sub_10074A3D4();
  (v64)(v42, v36);
  if (!v43)
  {
    v43 = [objc_opt_self() labelColor];
  }

  [v38 setTextColor:v43];

  v44 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  [v44 setTextAlignment:v65];
  v45 = v58;
  v39(v58, &v37[v40], v32);
  v46 = v61;
  sub_10074A404();
  (v66)(v45, v32);
  v47 = sub_10074A3A4();
  (v64)(v46, v36);
  if (!v47)
  {
    v47 = [objc_opt_self() secondaryLabelColor];
  }

  [v44 setTextColor:v47];

  v48 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  [v48 setTextAlignment:v65];
  v49 = v62;
  v39(v62, &v37[v40], v32);
  v50 = v63;
  sub_10074A404();
  (v66)(v49, v32);
  v51 = sub_10074A3B4();
  (v64)(v50, v36);
  if (!v51)
  {
    v51 = [objc_opt_self() labelColor];
  }

  [v48 setTextColor:v51];

  return [v37 setNeedsLayout];
}

id sub_100530504()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemMaterialTextOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CarouselItemMaterialTextOverlay()
{
  result = qword_10093D7D0;
  if (!qword_10093D7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100530680()
{
  result = sub_10074A464();
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

uint64_t sub_100530734(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v4 = a1;
  v4[1] = a2;
  sub_10001B5AC(a1);
  sub_10001B5AC(a1);
  sub_1000164A8(v5);
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_1000164A8(a1);
  }

  [v6 setEnabled:a1 != 0];

  return sub_1000164A8(a1);
}

id sub_1005307E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074A374();
  v75 = *(v4 - 8);
  __chkstk_darwin(v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v63 = &v56 - v7;
  __chkstk_darwin(v8);
  v59 = &v56 - v9;
  __chkstk_darwin(v10);
  v70 = &v56 - v11;
  __chkstk_darwin(v12);
  v69 = &v56 - v13;
  __chkstk_darwin(v14);
  v68 = &v56 - v15;
  v16 = sub_10074A464();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v58 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  __chkstk_darwin(v22);
  v24 = &v56 - v23;
  sub_10074A474();
  v25 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_displayOptions;
  swift_beginAccess();
  v26 = v17[3];
  v73 = v25;
  v26(&v2[v25], v24, v16);
  swift_endAccess();
  sub_10052FD90();
  v27 = v17[1];
  v60 = v24;
  v74 = v16;
  v71 = v27;
  v72 = v17 + 1;
  v27(v24, v16);
  v28 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel];
  sub_10074A4D4();
  if (v29)
  {
    v30 = sub_100753064();
  }

  else
  {
    v30 = 0;
  }

  [v28 setText:v30];

  v31 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel];
  sub_10074A4E4();
  if (v32)
  {
    v33 = sub_100753064();
  }

  else
  {
    v33 = 0;
  }

  [v31 setText:v33];

  v34 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel];
  sub_10074A494();
  if (v35)
  {
    v36 = sub_100753064();
  }

  else
  {
    v36 = 0;
  }

  v57 = v34;
  [v34 setText:v36];

  v37 = v17[2];
  v38 = v74;
  v61 = v17 + 2;
  v67 = v37;
  v37(v21, &v2[v73], v74);
  sub_10074A394();
  v71(v21, v38);
  v39 = v75;
  v40 = *(v75 + 104);
  v66 = enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:);
  v65 = v40;
  v40(v69);
  sub_100530F74(&qword_10092A550);
  sub_100753274();
  sub_100753274();
  v62 = a1;
  if (v78 == v76 && v79 == v77)
  {
    v41 = 1;
  }

  else
  {
    v41 = sub_100754754();
  }

  v42 = *(v39 + 8);
  v42(v69, v4);
  v75 = v39 + 8;
  v42(v68, v4);

  [v57 setHidden:v41 & 1];
  v69 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView];
  v43 = v74;
  v44 = v58;
  v67(v58, &v2[v73], v74);
  sub_10074A394();
  v71(v44, v43);
  v45 = v59;
  v65(v59, v66, v4);
  sub_100753274();
  sub_100753274();
  if (v78 == v76 && v79 == v77)
  {
    v46 = 1;
  }

  else
  {
    v46 = sub_100754754();
  }

  v42(v45, v4);
  v42(v70, v4);

  [v69 setHidden:v46 & 1];
  v47 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel];
  v48 = sub_10074A4A4();
  v50 = sub_100176AEC(v48, v49, [v2 effectiveUserInterfaceLayoutDirection]);

  [v47 setAttributedText:v50];

  v51 = v74;
  v52 = v60;
  v67(v60, &v2[v73], v74);
  v53 = v63;
  sub_10074A394();
  v71(v52, v51);
  v54 = v64;
  v65(v64, v66, v4);
  sub_100530F74(&qword_10093D7E8);
  LOBYTE(v52) = sub_100753014();
  v42(v54, v4);
  v42(v53, v4);
  [v47 setHidden:(v52 & 1) == 0];
  return [v2 setNeedsLayout];
}

uint64_t sub_100530F74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10074A374();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100530FB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100531068()
{
  v1 = sub_100750B04();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100531138(uint64_t a1)
{
  v3 = *(sub_100750B04() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10052FA50(a1, v4, v5);
}

void sub_1005311D8()
{
  v1 = sub_10074A3F4();
  __chkstk_darwin(v1 - 8);
  v2 = sub_10074A454();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074A374();
  v7 = __chkstk_darwin(v6);
  (*(v9 + 104))(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v7);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v2);
  sub_10074A3E4();
  sub_10074A384();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_materialBackground;
  *(v0 + v10) = [objc_allocWithZone(UIVisualEffectView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_badgeLabel;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v11) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_titleLabel;
  *(v0 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_descriptionLabel;
  *(v0 + v14) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_callToActionLabel;
  *(v0 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = sub_100753064();
  v17 = [objc_opt_self() systemImageNamed:v16];

  if (!v17)
  {
    __break(1u);
  }

  v18 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_chevronView;
  v19 = [objc_allocWithZone(UIImageView) initWithImage:v17];

  *(v0 + v18) = v19;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_tapGestureRecognizer;
  *(v0 + v20) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v21 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension31CarouselItemMaterialTextOverlay_selectionHandler);
  *v21 = 0;
  v21[1] = 0;
  sub_100754644();
  __break(1u);
}

id sub_100531548(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v150 = a8;
  v134 = a7;
  v149 = a6;
  v136 = a5;
  v135 = a4;
  v12 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v12 - 8);
  v129 = &v118 - v13;
  v130 = sub_100752914();
  v131 = *(v130 - 8);
  __chkstk_darwin(v130);
  v121 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_10074F284();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1007504F4();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074F314();
  __chkstk_darwin(v17 - 8);
  v148 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747EF4();
  v152 = *(v19 - 8);
  v153 = v19;
  __chkstk_darwin(v19);
  v151 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_100750534();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v133 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100934110);
  __chkstk_darwin(v22 - 8);
  v146 = &v118 - v23;
  v143 = sub_10074C3E4();
  v139 = *(v143 - 8);
  __chkstk_darwin(v143);
  v141 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925560);
  v144 = *(v25 - 8);
  v145 = v25;
  __chkstk_darwin(v25);
  v142 = &v118 - v26;
  v27 = sub_10000C518(&unk_100925540);
  __chkstk_darwin(v27 - 8);
  v140 = &v118 - v28;
  v29 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v29 - 8);
  v132 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = sub_10000C518(&unk_1009259A0);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  v39 = sub_100743084();
  v147 = *(v39 - 8);
  __chkstk_darwin(v39);
  v41 = &v118 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000C518(&qword_100935130);
  __chkstk_darwin(v42 - 8);
  v44 = &v118 - v43;
  v45 = sub_100747F54();
  if (v45)
  {
    v46 = v45;
    v47 = sub_10000C518(&qword_100929360);
    (*(*(v47 - 8) + 56))(v44, 1, 1, v47);
    sub_10013C000(v46, v44, v150);

    sub_10000C8CC(v44, &qword_100935130);
  }

  sub_100747F04();
  if (!v48)
  {
    v147 = sub_100747F14();
    v120 = sub_100747F44();
    sub_100747F24();
    v53 = sub_100747F34();
    v54 = &v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v55 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
    v56 = v136;
    *v54 = v135;
    *(v54 + 1) = v56;
    sub_1000164A8(v55);
    v57 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];

    v58 = sub_100753064();

    [v57 setTitle:v58 forState:0];

    [v57 addTarget:v8 action:"didTapDismiss:" forControlEvents:64];
    v119 = v53;
    if (v53)
    {
      sub_100749EC4();
      v59 = sub_100745E94();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v38, 0, 1, v59);
      sub_10053544C(v38, v35);
      if ((*(v60 + 88))(v35, v59) == enum case for OfferEnvironment.arcadeLaunchRepairCompactSheet(_:))
      {
        if (qword_1009212F8 != -1)
        {
          swift_once();
        }

        v61 = v138;
        v62 = sub_10000D0FC(v138, qword_100981620);
        v63 = v137;
        v64 = v122;
        (*(v137 + 16))(v122, v62, v61);
        (*(v63 + 56))(v64, 0, 1, v61);
        sub_1007466A4();
        v66 = v150;
        v65 = v151;
LABEL_28:
        v81 = sub_10000C518(&unk_10092EEA0);
        v82 = v140;
        (*(*(v81 - 8) + 56))(v140, 1, 1, v81);
        v83 = v139;
        v84 = v143;
        (*(v139 + 104))(v141, enum case for OfferButtonSubtitlePosition.below(_:), v143);
        (*(v83 + 56))(v146, 1, 1, v84);
        sub_1000E6544(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition);
        v85 = v142;
        sub_10074A9C4();
        sub_10015DE40(v119, v147, v120, v82, v85, v66, 0, 0);

        (*(v144 + 8))(v85, v145);
        sub_10000C8CC(v82, &unk_100925540);
        v73 = v152;
        goto LABEL_29;
      }

      (*(v60 + 8))(v35, v59);
    }

    else
    {
      v74 = sub_100745E94();
      (*(*(v74 - 8) + 56))(v38, 1, 1, v74);
      sub_10000C8CC(v38, &unk_1009259A0);
    }

    v65 = v151;
    if (v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] == 1)
    {
      v66 = v150;
      if (qword_1009212F8 != -1)
      {
        swift_once();
      }

      v75 = qword_100981620;
    }

    else
    {
      v66 = v150;
      if (qword_1009212E8 != -1)
      {
        swift_once();
      }

      v75 = qword_1009815F0;
    }

    v76 = v138;
    v77 = sub_10000D0FC(v138, v75);
    v78 = v137;
    v79 = v133;
    (*(v137 + 16))(v133, v77, v76);
    v80 = v132;
    (*(v78 + 32))(v132, v79, v76);
    (*(v78 + 56))(v80, 0, 1, v76);
    sub_1007466A4();
    goto LABEL_28;
  }

  v49 = [objc_allocWithZone(type metadata accessor for LinkableHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v50 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView;
  v51 = *&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
  if (v51)
  {
    [v51 removeFromSuperview];
    v52 = *&v8[v50];
  }

  else
  {
    v52 = 0;
  }

  *&v8[v50] = v49;
  v67 = v49;

  if (v67)
  {
    [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v67];
  }

  v68 = *&v8[v50] != 0;
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton] setHidden:v68];
  [*&v8[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton] setHidden:v68];
  [v8 setNeedsLayout];

  v69 = *&v8[v50];
  if (v69)
  {
    v70 = *(v69 + OBJC_IVAR____TtC22SubscribePageExtension18LinkableHeaderView_label);
    (*(v147 + 104))(v41, enum case for StyledText.MediaType.plainText(_:), v39);
    sub_100743094();
    swift_allocObject();
    v71 = v70;
    v72 = sub_100743054();
    sub_10004DF04(v72, 0, _swiftEmptyArrayStorage);
  }

  else
  {
  }

  v65 = v151;
  v73 = v152;
LABEL_29:
  v86 = sub_100534EBC(v9, v9, a1, a2);
  v88 = v87;
  sub_100747F64();
  v89 = v153;
  v90 = (*(v73 + 88))(v65, v153);
  if (v90 == enum case for ArcadeSubscribePage.PageType.generic(_:))
  {
    (*(v73 + 96))(v65, v89);
    v91 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v91 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    sub_1000E6544(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
    v92 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v93 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v94 = v91;
    if (v93)
    {
      [v93 removeFromSuperview];
      v95 = *&v9[v92];
    }

    else
    {
      v95 = 0;
    }

    *&v9[v92] = v91;
    v110 = v91;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

LABEL_44:

LABEL_47:
    return [v9 setNeedsLayout];
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.grid(_:))
  {
    (*(v73 + 96))(v65, v89);
    v96 = *v65;
    v97 = v65[1];
    v98 = v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] == 1;
    v99 = objc_allocWithZone(type metadata accessor for UpsellGridView());
    v100 = sub_1004566A0(v98);
    v101 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v102 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v103 = v100;
    if (v102)
    {
      [v102 removeFromSuperview];
      v102 = *&v9[v101];
    }

    *&v9[v101] = v100;
    v110 = v100;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    *&v110[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_impressionsCalculator] = v134;

    *&v110[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_primaryIcon] = v96;

    v111 = OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_remainingIcons;
    swift_beginAccess();
    *&v110[v111] = v97;

    *&v110[OBJC_IVAR____TtC22SubscribePageExtension14UpsellGridView_artworkLoader] = v149;

    sub_100456C70(v86, v88);

    goto LABEL_47;
  }

  if (v90 == enum case for ArcadeSubscribePage.PageType.singleIcon(_:))
  {
    (*(v73 + 96))(v65, v89);
    sub_100749504();
    v104 = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10074F2A4();
    v105 = v123;
    sub_100750504();
    sub_1007504B4();
    (*(v124 + 8))(v105, v125);
    v106 = v126;
    sub_10074F294();
    sub_10074F254();
    (*(v127 + 8))(v106, v128);
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v104 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    sub_1000E6544(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();
    v107 = v129;
    sub_1007494F4();
    v108 = v131;
    v109 = v130;
    if ((*(v131 + 48))(v107, 1, v130) == 1)
    {
      sub_10000C8CC(v107, &unk_100925380);
    }

    else
    {
      v113 = v121;
      (*(v108 + 32))();
      if (v134)
      {
        sub_100749544();
      }

      (*(v131 + 8))(v113, v109);
    }

    v114 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView;
    v115 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v116 = v104;
    if (v115)
    {
      [v115 removeFromSuperview];
      v117 = *&v9[v114];
    }

    else
    {
      v117 = 0;
    }

    *&v9[v114] = v104;
    v110 = v104;

    [*&v9[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] addSubview:v110];
    [v9 setNeedsLayout];

    goto LABEL_44;
  }

  (*(v73 + 8))(v65, v89);
  return [v9 setNeedsLayout];
}

void *sub_100532AA4@<X0>(char a1@<W0>, char a2@<W2>, void *a3@<X8>)
{
  v6 = sub_1007479B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_1009249B0);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_100750304();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4064C00000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x406DC00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4038000000000000;
      a3[18] = &type metadata for Double;
      a3[19] = &protocol witness table for Double;
      a3[15] = 0x4026000000000000;
      a3[23] = &type metadata for Double;
      a3[24] = &protocol witness table for Double;
      a3[20] = 0x4038000000000000;
      a3[28] = &type metadata for Double;
      a3[29] = &protocol witness table for Double;
      a3[25] = 0x402E000000000000;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v16 = sub_10000D0FC(v6, qword_100982798);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_100747994();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v19;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      a3[48] = &type metadata for Double;
      a3[49] = &protocol witness table for Double;
      a3[45] = 0x4028000000000000;
      a3[35] = 0;
      *(a3 + 18) = xmmword_1007C89D0;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      a3[3] = &type metadata for Double;
      a3[4] = &protocol witness table for Double;
      *a3 = 0x4069000000000000;
      a3[8] = &type metadata for Double;
      a3[9] = &protocol witness table for Double;
      a3[5] = 0x4074A00000000000;
      a3[13] = &type metadata for Double;
      a3[14] = &protocol witness table for Double;
      a3[10] = 0x4035000000000000;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v37 = sub_100750534();
      v77 = sub_10000D0FC(v37, qword_100981CC8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_100750B04();
      a3[18] = v70;
      a3[19] = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_10000D134(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_100750B14();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10000C518(&unk_100923AE0);
      v42 = v72;
      sub_100743494();
      sub_1007434C4();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      a3[28] = v70;
      a3[29] = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_10000D134(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_100750B14();
      v71 = v41;
      v41(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_10000D0FC(v79, qword_100982798);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_100747994();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      a3[33] = &type metadata for CGFloat;
      a3[34] = &protocol witness table for CGFloat;
      a3[30] = v52;
      a3[43] = &type metadata for CGFloat;
      a3[44] = &protocol witness table for CGFloat;
      a3[40] = 0x4014000000000000;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      a3[48] = v43;
      a3[49] = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_10000D134(v87);
      v46(v53, v15, v12);
      sub_100750B14();
      result = v71(v15, v12);
      a3[35] = 0;
      *(a3 + 18) = xmmword_1007C89D0;
      a3[38] = 0x4038000000000000;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v21 = sub_100750534();
      v77 = sub_10000D0FC(v21, qword_100981CC8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_100750B04();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_10000D134(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_100750B14();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10000C518(&unk_100923AE0);
      sub_100743494();
      sub_1007434C4();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_10000D134(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_100750B14();
      v70 = v25;
      v25(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_10000D0FC(v79, qword_100982798);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_100747994();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_10000D134(v84);
      (v72)(v35, v15, v12);
      sub_100750B14();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v54 = sub_100750534();
      v81 = sub_10000D0FC(v54, qword_100981CC8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_100750B04();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_10000D134(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_100750B14();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_10000D134(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_100750B14();
      v60(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_10000D0FC(v79, qword_100982798);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_100747994();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_10000D134(v84);
      v59(v67, v15, v12);
      sub_100750B14();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_1007C89E0;
    *&v87[37] = xmmword_1007C89E0;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1005339BC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1007479B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v32 = sub_10000D0FC(v8, qword_100982798);
      (*(v9 + 16))(v11, v32, v8);
      sub_100747994();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100012160(&v36, a3);
      *(a3 + 80) = xmmword_1007C8A30;
      *(a3 + 96) = xmmword_1007C8A40;
      v21 = xmmword_1007C89E0;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000D0FC(v8, qword_100982798);
    (*(v9 + 16))(v11, v23, v8);
    sub_100747994();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007C8A50;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007C8A20;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v27 = sub_10000D0FC(v8, qword_100982798);
    (*(v9 + 16))(v11, v27, v8);
    sub_100747994();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007C8A10;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_1009219A8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v8, qword_100982798);
  (*(v9 + 16))(v11, v12, v8);
  sub_100747994();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_1007C89F0;
  v21 = xmmword_1007C8A00;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_100533EB4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_10000C518(&qword_100929360);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_100921BC8 != -1)
    {
      swift_once();
    }

    v22 = qword_100982C38;
  }

  else
  {
    if (qword_100921BC0 != -1)
    {
      swift_once();
    }

    v22 = qword_100982C20;
  }

  v23 = a1;
  v24 = sub_10000D0FC(v11, v22);
  sub_100121090(v24, v13);
  sub_100534DB0(v13, v16);
  sub_10000C518(&unk_100923AE0);
  sub_1007434A4();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView] = sub_10058E048(v19);
  v26 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton] = sub_100154454(0);
  sub_1007466C4();
  v27 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_1009212F8 != -1)
    {
      swift_once();
    }

    v28 = qword_100981620;
  }

  else
  {
    if (qword_1009212E8 != -1)
    {
      swift_once();
    }

    v28 = qword_1009815F0;
  }

  v29 = sub_10000D0FC(v5, v28);
  v30 = v38;
  (*(v6 + 16))(v38, v29, v5);
  (*(v6 + 32))(v10, v30, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_1007466A4();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton] = v27;
  v40.receiver = v2;
  v40.super_class = ObjectType;
  v31 = v27;
  v32 = objc_msgSendSuper2(&v40, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor:v35];

  v36 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v34 addSubview:*&v34[v36]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView]];
  [*&v34[v36] addSubview:*&v34[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton]];
  [*&v34[v36] addSubview:v31];

  return v34;
}

uint64_t sub_1005344AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_100753804();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_1007537D4();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_100532AA4(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100016C60(0, &qword_100922300);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
      v84 = sub_1007466C4();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100534E68(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_1007537D4();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1005339BC(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100016C60(0, &qword_100922300);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
      v54 = sub_1007466C4();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100534E14(v67);
    }

    sub_100750334();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_100534AA4(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton);

    [v4 setAlpha:a1];
  }
}

unint64_t sub_100534D5C()
{
  result = qword_10093D868;
  if (!qword_10093D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D868);
  }

  return result;
}

uint64_t sub_100534DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100534EBC(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_100753804();

  if (v14)
  {
    v62 = v9;
    v15 = a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_1007537D4();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v86);
        [a2 bounds];
        v21 = CGRectGetWidth(v87);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_100532AA4(v18, v15, v66);
    v29 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v65 = type metadata accessor for LinkableHeaderView();
      v61 = &protocol witness table for UIView;
    }

    else
    {
      v65 = 0;
      v61 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v63 = v8;
    v64 = a1;
    if (v33)
    {
      v60 = sub_100016C60(0, &qword_100922300);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v60 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v79 = &protocol witness table for UIView;
    v78 = v48;
    v77 = v47;
    v49 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
    v81 = type metadata accessor for OfferButton();
    v82 = &protocol witness table for UIView;
    v80 = v49;
    v50 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
    v84 = sub_1007466C4();
    v85 = &protocol witness table for UIView;
    v83 = v50;
    memcpy(v67, v66, 0x190uLL);
    v67[50] = v29;
    v68 = 0;
    v69 = 0;
    v70 = v65;
    v71 = v61;
    v72 = v33;
    v74 = 0;
    v73 = 0;
    v75 = v60;
    v76 = v34;
    sub_10000C888(v67, v67[3]);
    v51 = v33;
    v52 = v47;
    v53 = v49;
    v54 = v50;
    v55 = v29;
    sub_100536120();
    v56 = v64;
    sub_100750564();
    v57 = v63;
    v58 = *(v62 + 8);
    v58(v12, v63);
    sub_1005354BC(v56, v67, a3, a4);
    sub_10000C888(&v67[5], v67[8]);
    sub_100536120();
    sub_100750564();
    v58(v12, v57);
    sub_100534E68(v67);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_1007537D4();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v88);
        [a2 bounds];
        v28 = CGRectGetWidth(v89);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1005339BC(v25, v22, v66, a3);
    v30 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_100750F34();
    v36 = v30;
    v37 = sub_100750F24();
    v67[42] = &protocol witness table for LayoutViewPlaceholder;
    v67[41] = v35;
    v67[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v67[47] = &protocol witness table for UIView;
    v67[46] = v39;
    v67[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v69 = &protocol witness table for UIView;
    v68 = v41;
    v67[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
    v43 = sub_1007466C4();
    v74 = &protocol witness table for UIView;
    v73 = v43;
    v70 = v42;
    memcpy(v67, v66, 0x108uLL);
    v67[33] = v30;
    v67[34] = 0;
    v67[35] = 0;
    v67[36] = v31;
    v67[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_100535844(a1, v67, a3);
    sub_100534E14(v67);
  }

  return a3;
}

uint64_t sub_10053544C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009259A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1005354BC(uint64_t a1, void *a2, double a3, double a4)
{
  *&v29 = a2 + 35;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 20, a2[23]);
  sub_100536120();
  sub_100750564();
  v13 = v12;
  v14 = *(v9 + 8);
  v14(v11, v8);
  sub_10000C888(a2 + 15, a2[18]);
  sub_100536120();
  sub_100750564();
  v16 = v15;
  v14(v11, v8);
  sub_10000C888(a2 + 25, a2[28]);
  sub_100536120();
  sub_100750564();
  v18 = v17;
  v14(v11, v8);
  sub_10000C824((a2 + 30), v38);
  v19 = *(v29 + 32);
  v20 = *(v29 + 16);
  v28 = *v29;
  v29 = v20;
  sub_10000C824((a2 + 40), &v41);
  sub_10000C824((a2 + 45), &v42);
  v37[0] = v16;
  v37[1] = v13;
  v37[2] = v18;
  v37[3] = v13;
  v39 = v29;
  *&v38[40] = v28;
  v40 = v19;
  sub_10047A958(v37, v33);
  sub_10000C824((a2 + 60), &v34);
  sub_10000C824((a2 + 65), &v35);
  sub_10000C824((a2 + 70), &v36);
  sub_10000C888(a2 + 10, a2[13]);
  sub_100536120();
  sub_100750564();
  v22 = v21;
  v14(v11, v8);
  sub_100535E18(a3, a1, v33);
  v24 = a4 - v22 - v23;
  sub_1000CD5F0((a2 + 50), &v30);
  if (v31)
  {
    sub_100012160(&v30, v32);
    sub_10000C888(v32, v32[3]);
    sub_100750414();
    v26 = v25;
    sub_10047AC98(v33);
    sub_10047ACC8(v37);
    v24 = v24 - v26;
    sub_10000C620(v32);
  }

  else
  {
    sub_10047AC98(v33);
    sub_10047ACC8(v37);
    sub_10000C8CC(&v30, &unk_100928A00);
  }

  return v24;
}

double sub_100535844(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10000C824(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10000C824(a2 + 184, &v28);
  sub_10000C824(a2 + 224, &v29);
  v25[1] = v16;
  v25[0] = v17;
  v27 = v14;
  *&v26[40] = v15;
  sub_1003F5168(v25, v21);
  sub_10000C824(a2 + 344, &v22);
  sub_10000C824(a2 + 384, &v23);
  sub_10000C824(a2 + 424, &v24);
  sub_10000C888(a2, *(a2 + 24));
  sub_100536120();
  sub_100750564();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_100535B10(a3, a1, v21);
  sub_1000CD5F0(a2 + 264, &v18);
  if (v19)
  {
    sub_100012160(&v18, v20);
    sub_10000C888(v20, v20[3]);
    sub_100750414();
    sub_10000C620(v20);
  }

  else
  {
    sub_10000C8CC(&v18, &unk_100928A00);
  }

  sub_10000C888((a2 + 40), *(a2 + 64));
  sub_100536120();
  sub_100750564();
  v12(v9, v6);
  sub_1003F54A8(v21);
  sub_1003F54D8(v25);
  return a3;
}

double sub_100535B10(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3 + 23, a3[26]);
  sub_100750414();
  sub_10000C888(a3 + 18, a3[21]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 28, a3[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 4, a3[7]);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
  }

  sub_10000C888(a3 + 33, a3[36]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 33, a3[36]);
    sub_100750414();
  }

  sub_10000C888(a3 + 28, a3[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 33, a3[36]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a3 + 13, a3[16]);
      sub_100536120();
      sub_100750564();
      v9(v8, v5);
    }
  }

  return a1;
}

double sub_100535E18(double a1, uint64_t a2, void *a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a3 + 24, a3[27]);
  sub_100750414();
  sub_10000C888(a3 + 19, a3[22]);
  sub_100536120();
  sub_100750564();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10000C888(a3 + 29, a3[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 4, a3[7]);
    sub_100536120();
    sub_100750564();
    v9(v8, v5);
  }

  sub_10000C888(a3 + 34, a3[37]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 34, a3[37]);
    sub_100750414();
  }

  sub_10000C888(a3 + 29, a3[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a3 + 34, a3[37]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a3 + 14, a3[17]);
      sub_100536120();
      sub_100750564();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100012160(a1, a4);
  sub_100012160(a2, (a4 + 5));
  result = sub_100012160(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = sub_100741574();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CD660(a1, v22);
  sub_100741544();
  v15 = sub_100741554();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10000C888(a2, a2[3]);
    sub_100750884();
    sub_1000CD6BC(a1);
  }

  else
  {
    sub_1000CD6BC(a1);
    sub_10000C824(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_10000C620(a2);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_100754724();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CD5F0(v4 + 248, v54);
  if (v55)
  {
    sub_10000C888(v54, v55);
    sub_100750394();
    sub_10000C620(v54);
  }

  else
  {
    sub_1002C9F48(v54);
  }

  sub_1000CD5F0(v4 + 288, v54);
  if (v55)
  {
    sub_10000C888(v54, v55);
    sub_100750394();
    sub_10000C620(v54);
  }

  else
  {
    sub_1002C9F48(v54);
  }

  sub_100753B14();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_1000CD5F0(v4 + 208, &v52);
  v50 = a1;
  v51 = a3;
  v48 = a2;
  v49 = a4;
  v45 = v14;
  v44 = v16;
  v43 = v18;
  v42 = v20;
  if (!v53)
  {
    sub_1002C9F48(&v52);
    goto LABEL_11;
  }

  sub_100012160(&v52, v54);
  sub_10000C888(v54, v55);
  if (sub_1007503A4())
  {
    sub_10000C620(v54);
LABEL_11:
    v47 = v14;
    v21 = v16;
    Height = v20;
    goto LABEL_13;
  }

  v23 = *(v4 + 120);
  sub_10000C888((v4 + 80), *(v4 + 104));
  sub_1007502D4();
  sub_100750564();
  v25 = v24;
  (*(v10 + 8))(v12, v9);
  v26 = v23 + v25;
  v56.origin.x = v14;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  v47 = v26 + CGRectGetMinX(v56);
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v14;
  v58.origin.y = v16;
  v58.size.width = v18;
  v58.size.height = v20;
  Width = CGRectGetWidth(v58);
  v59.size.width = v18;
  v18 = Width - v26;
  v59.origin.x = v14;
  v21 = MinY;
  v59.origin.y = v16;
  v59.size.height = v20;
  Height = CGRectGetHeight(v59);
  sub_10000C620(v54);
LABEL_13:
  sub_10000C888((v4 + 168), *(v4 + 192));
  sub_100750404();
  v30 = v29;
  v32 = v31;
  sub_10000C888(v4, *(v4 + 24));
  sub_100750584();
  v46 = v33;
  v34 = v47;
  v60.origin.x = v47;
  v60.origin.y = v21;
  v60.size.width = v18;
  v60.size.height = Height;
  MinX = CGRectGetMinX(v60);
  v61.origin.x = v34;
  v61.origin.y = v21;
  v61.size.width = v18;
  v61.size.height = Height;
  v36 = CGRectGetMinY(v61);
  v62.origin.x = v34;
  v62.origin.y = v21;
  v62.size.width = v18;
  v62.size.height = Height;
  v37 = CGRectGetWidth(v62);
  if (v37 >= v30)
  {
    v38 = v30;
  }

  else
  {
    v38 = v37;
  }

  v39 = v46 + v36;
  sub_10000C888((v4 + 168), *(v4 + 192));
  v47 = v32;
  sub_100753B24();
  sub_100750394();
  sub_1000CD5F0(v4 + 208, &v52);
  if (v53)
  {
    sub_100012160(&v52, v54);
    v46 = *(v4 + 120);
    v63.origin.x = MinX;
    v63.origin.y = v39;
    v63.size.width = v38;
    v40 = v47;
    v63.size.height = v47;
    CGRectGetMinY(v63);
    v64.origin.x = MinX;
    v64.origin.y = v39;
    v64.size.width = v38;
    v64.size.height = v40;
    CGRectGetHeight(v64);
    v65.origin.x = v45;
    v65.origin.y = v44;
    v65.size.width = v43;
    v65.size.height = v42;
    CGRectGetMinX(v65);
    sub_10000C888(v54, v55);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v54);
  }

  else
  {
    sub_1002C9F48(&v52);
  }

  return sub_100750314();
}