void sub_1005B8470(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (!a1)
    {
LABEL_16:

      return;
    }

    v4 = *(Strong + OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView);
    v5 = a1;
    if (v4)
    {
      v6 = v4;
      v17.value.super.isa = a1;
      v17.is_nil = 0;
      ArtworkView.setImage(image:animated:)(v17, v7);
    }

    v8 = sub_1001B79D8();
    if (v8 >> 62)
    {
      v15 = v8;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v15;
      if (v16)
      {
        goto LABEL_7;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v9 = v8[4];
      }

      v10 = v9;

      type metadata accessor for VideoView();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = qword_100988CC0;
        v13 = v11;
        v14 = [*(v11 + qword_100988CC0) layer];
        [v14 removeAllAnimations];

        [*(v13 + v12) setImage:a1];
      }

      goto LABEL_15;
    }

LABEL_15:
    [v3 setNeedsLayout];

    v3 = a1;
    goto LABEL_16;
  }
}

void sub_1005B8624(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (a1)
    {
      v12 = a1;
      v13 = v12;
      if (a6)
      {
        v14 = [v12 CGImage];
        if (!v14)
        {
          __break(1u);
          return;
        }

        v15 = v14;
        [v13 scale];
        v17 = [objc_allocWithZone(UIImage) initWithCGImage:v15 scale:2 orientation:v16];
      }

      else
      {
        v17 = v12;
      }

      sub_1001BAC24(v17, a7);

      v11 = v17;
    }
  }
}

double *sub_1005B8730(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a7;
  v33 = a6;
  v31 = a5;
  v28 = a4;
  *&v34 = a1;
  *(&v34 + 1) = a2;
  v10 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v10 - 8);
  v30 = &v27 - v11;
  v12 = type metadata accessor for AspectRatio();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LockupMediaLayout.DisplayType();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v27 - v18;
  v29 = type metadata accessor for LockupMediaLayout.Metrics();
  v20 = *(v29 - 8);
  __chkstk_darwin(v29);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  v36[0] = 0x4021000000000000;
  if (a3)
  {
    v23 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v23 = 0;
  }

  sub_1001B70FC(v23, a8, v19);

  sub_10002C0AC(v36, v35);
  (*(v14 + 16))(v16, v19, v13);
  if (v34 != 0)
  {
    goto LABEL_14;
  }

  result = sub_1001B9B24(a3, v28, 0, 1);
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  v25 = result;
  v26 = _CocoaArrayWrapper.endIndex.getter();
  result = v25;
  if (!v26)
  {
LABEL_13:

LABEL_14:
    AspectRatio.init(_:_:)();
    goto LABEL_15;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_10:

    Artwork.size.getter();
    AspectRatio.init(_:_:)();

LABEL_15:
    sub_100031660(v31, v30, &unk_1009732A0);
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    (*(v14 + 8))(v19, v13);
    sub_100007000(v36);
    type metadata accessor for LockupMediaLayout();
    sub_1005B8B74(&qword_10097AE60, &type metadata accessor for LockupMediaLayout);
    dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
    return (*(v20 + 8))(v22, v29);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005B8B74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005B8BCC()
{
  result = qword_10098D790;
  if (!qword_10098D790)
  {
    sub_10002D1A8(&qword_100980960);
    sub_100081618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D790);
  }

  return result;
}

unint64_t sub_1005B8C58(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  v215 = a8;
  v222 = a7;
  v225 = a5;
  v226 = a6;
  v218 = a4;
  v223 = a3;
  v229 = a2;
  v12 = sub_10002849C(&qword_10097AE68);
  __chkstk_darwin(v12 - 8);
  v194 = &v182 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v205 = &v182 - v15;
  v188 = type metadata accessor for CornerStyle();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v186 = &v182 - v18;
  v19 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v19 - 8);
  v184 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v21 - 8);
  v213 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v214 = &v182 - v24;
  v25 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v25 - 8);
  v212 = &v182 - v26;
  v27 = type metadata accessor for VideoControls();
  __chkstk_darwin(v27 - 8);
  v193 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v182 - v30;
  __chkstk_darwin(v31);
  v209 = &v182 - v32;
  __chkstk_darwin(v33);
  v208 = &v182 - v34;
  v211 = type metadata accessor for VideoFillMode();
  v210 = *(v211 - 8);
  __chkstk_darwin(v211);
  v199 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v207 = &v182 - v37;
  v217 = type metadata accessor for VideoConfiguration();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v201 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v227 = &v182 - v40;
  v221 = type metadata accessor for ScreenshotsDisplayStyle();
  v41 = *(v221 - 8);
  __chkstk_darwin(v221);
  v43 = &v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for ScreenshotDisplayConfiguration();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v183 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v182 - v46;
  v48 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v48 - 8);
  v198 = &v182 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v182 - v51;
  v220 = type metadata accessor for AspectRatio();
  v219 = *(v220 - 8);
  __chkstk_darwin(v220);
  v197 = &v182 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v55 = type metadata accessor for LockupMediaLayout.DisplayType();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v189 = &v182 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v195 = &v182 - v59;
  __chkstk_darwin(v60);
  v62 = &v182 - v61;
  v224 = type metadata accessor for LockupMediaLayout.Metrics();
  v228 = *(v224 - 8);
  __chkstk_darwin(v224);
  v196 = &v182 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v66 = &v182 - v65;
  v233 = &type metadata for CGFloat;
  v234 = &protocol witness table for CGFloat;
  v232 = 0x4021000000000000;
  sub_10002C0AC(&v232, v231);
  v190 = v56;
  v68 = *(v56 + 16);
  v67 = (v56 + 16);
  v204 = v55;
  v203 = v67;
  v202 = v68;
  v68(v62, v226, v55);
  v206 = a1;
  if (v229 | a1)
  {
    v69 = v223;
LABEL_11:
    AspectRatio.init(_:_:)();
    goto LABEL_12;
  }

  v69 = v223;
  result = sub_1001B9B24(v223, v218, 0, 1);
  if (result >> 62)
  {
    v71 = result;
    v72 = _CocoaArrayWrapper.endIndex.getter();
    result = v71;
    if (v72)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_10:

    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }
  }

  Artwork.size.getter();
  AspectRatio.init(_:_:)();

LABEL_12:
  sub_100031660(v225, v52, &unk_1009732A0);
  LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
  sub_100007000(&v232);
  v73 = OBJC_IVAR____TtC8AppStore15LockupMediaView_metrics;
  v74 = v230;
  swift_beginAccess();
  v75 = v228;
  v76 = &v74[v73];
  v77 = v224;
  (*(v228 + 24))(v76, v66, v224);
  swift_endAccess();
  [v74 setNeedsLayout];
  v78 = *(v75 + 8);
  v78(v66, v77);
  v228 = v75 + 8;
  if (v69)
  {
    v79 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v79 = 0;
  }

  type metadata accessor for Screenshots();
  sub_10061B788(v79, v47);

  v80 = &v230[OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayConfiguration];
  swift_beginAccess();
  sub_1001BAB64(v47, v80);
  swift_endAccess();
  sub_1001B7B88();
  sub_1001BABC8(v47);
  if (v69)
  {
    v81 = Screenshots.mediaPlatform.getter();
  }

  else
  {
    v81 = 0;
  }

  v82 = v221;
  v47 = v230;
  *&v230[OBJC_IVAR____TtC8AppStore15LockupMediaView_platform] = v81;

  sub_1001B7D8C();

  (*(v41 + 16))(v43, v222, v82);
  v83 = OBJC_IVAR____TtC8AppStore15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v41 + 24))(&v47[v83], v43, v82);
  swift_endAccess();
  [v47 setNeedsLayout];
  (*(v41 + 8))(v43, v82);
  if (v229)
  {
    (*(v210 + 104))(v207, enum case for VideoFillMode.scaleAspectFill(_:), v211);

    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    (*(v219 + 56))(v52, 0, 1, v220);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v84 = v212;
    Video.videoUrl.getter();
    v85 = type metadata accessor for URL();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    v86 = v214;
    Video.templateMediaEvent.getter();
    v87 = v213;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView);
    v88 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v87, &unk_100973A50);
    sub_10002B894(v86, &unk_100973A50);
    sub_10002B894(v84, &qword_100982460);
    sub_10002B894(&v232, &qword_10096FB90);
    Strong = swift_unknownObjectWeakLoadStrong();
    v67 = &StringUserDefaultsDebugSetting;
    if (Strong)
    {
      v90 = Strong;
      v91 = [Strong superview];
      if (v91)
      {
        v92 = v91;
        sub_100005744(0, &qword_100972EB0);
        v93 = v47;
        v94 = static NSObject.== infix(_:_:)();

        if ((v94 & 1) == 0)
        {
          goto LABEL_25;
        }

        v95 = swift_unknownObjectWeakLoadStrong();
        if (!v95)
        {
          goto LABEL_25;
        }

        v90 = v95;
        [v95 removeFromSuperview];
      }
    }

LABEL_25:
    swift_unknownObjectWeakAssign();
    v96 = swift_unknownObjectWeakLoadStrong();
    if (v96)
    {
      v97 = v96;
      [v47 addSubview:v96];
    }

    sub_1001B8790();
    [v47 setNeedsLayout];

    v98 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v99 = *&v47[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v100 = v217;
    v101 = v216;
    if (v99)
    {
      [v99 removeFromSuperview];
      v102 = *&v47[v98];
    }

    else
    {
      v102 = 0;
    }

    *&v47[v98] = 0;

    [v47 setNeedsLayout];

    (*(v101 + 8))(v227, v100);
    return [v47 v67[41].base_meths];
  }

  if (v206 && (a11 & 1) == 0)
  {
    swift_retain_n();
    v110 = [v47 traitCollection];
    v234 = &protocol witness table for CGFloat;
    v233 = &type metadata for CGFloat;
    v232 = 0x4021000000000000;
    sub_10002C0AC(&v232, v231);
    v202(v195, v226, v204);
    v111 = v197;
    AspectRatio.init(_:_:)();
    sub_100031660(v225, v52, &unk_1009732A0);
    v112 = v196;
    LockupMediaLayout.Metrics.init(interItemSpacing:displayType:mediaAspectRatio:boundingAspectRatio:)();
    sub_100007000(&v232);
    LockupMediaLayout.Metrics.mediaAspectRatio.getter();
    AspectRatio.height(fromWidth:)();
    (*(v219 + 8))(v111, v220);

    v113 = Artwork.config(_:mode:prefersLayeredImage:)();
    v114 = sub_100033938(0, 1, 1, _swiftEmptyArrayStorage);
    v116 = *(v114 + 2);
    v115 = *(v114 + 3);
    if (v116 >= v115 >> 1)
    {
      v114 = sub_100033938((v115 > 1), v116 + 1, 1, v114);
    }

    v78(v112, v224);
    *(v114 + 2) = v116 + 1;
    v117 = &v114[2 * v116 + 4];
    *v117 = v113;
    *(v117 + 8) = 0;
    v118 = *(v114 + 4);

    v119 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v67 = &StringUserDefaultsDebugSetting;
    if (v118)
    {

      Artwork.style.getter();
      ArtworkView.style.setter();
      [v119 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      [v119 setContentMode:2];
      v120 = v119;
      dispatch thunk of RoundedCornerView.borderWidth.setter();
      v121 = *(v80 + 48);
      dispatch thunk of RoundedCornerView.borderColor.setter();

      v122 = v183;
      sub_1001BAB00(v80, v183);
      v123 = *(v122 + 16);
      sub_1001BABC8(v122);
      v124 = v187;
      v125 = &enum case for CornerStyle.arc(_:);
      if (!v123)
      {
        v125 = &enum case for CornerStyle.continuous(_:);
      }

      v126 = v185;
      v127 = v188;
      (*(v187 + 104))(v185, *v125, v188);
      v128 = v186;
      (*(v124 + 32))(v186, v126, v127);
      ArtworkView.setCorner(radius:style:)();

      (*(v124 + 8))(v128, v127);
    }

    v129 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v130 = *&v47[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    v131 = v119;
    if (v130)
    {
      [v130 removeFromSuperview];
      v130 = *&v47[v129];
    }

    *&v47[v129] = v119;
    v156 = v119;

    [v47 addSubview:v156];
    [v47 setNeedsLayout];

    v157 = swift_unknownObjectWeakLoadStrong();
    if (!v157)
    {
      goto LABEL_71;
    }

    v158 = v157;
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView);
    v159 = [v158 superview];
    if (v159)
    {
      v160 = v159;
      sub_100005744(0, &qword_100972EB0);
      v161 = v47;
      v162 = static NSObject.== infix(_:_:)();

      if ((v162 & 1) == 0)
      {
        goto LABEL_71;
      }

      v163 = swift_unknownObjectWeakLoadStrong();
      if (!v163)
      {
        goto LABEL_71;
      }

      v158 = v163;
      [v163 removeFromSuperview];
    }

LABEL_71:
    swift_unknownObjectWeakAssign();
    v164 = swift_unknownObjectWeakLoadStrong();
    if (v164)
    {
      v165 = v164;
      [v47 addSubview:v164];
    }

    sub_1001B8790();
    [v47 setNeedsLayout];

    return [v47 v67[41].base_meths];
  }

  v67 = &StringUserDefaultsDebugSetting;
  if (!v218)
  {
    goto LABEL_80;
  }

  result = Trailers.videos.getter();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_34;
    }

    goto LABEL_79;
  }

LABEL_78:
  v168 = result;
  v169 = _CocoaArrayWrapper.endIndex.getter();
  result = v168;
  if (!v169)
  {
LABEL_79:

LABEL_80:
    v170 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v171 = *&v47[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v171)
    {
      [v171 removeFromSuperview];
      v172 = *&v47[v170];
    }

    else
    {
      v172 = 0;
    }

    *&v47[v170] = 0;

    [v47 v67[41].base_meths];
    v173 = swift_unknownObjectWeakLoadStrong();
    if (!v173)
    {
      goto LABEL_89;
    }

    v174 = v173;
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView);
    v175 = [v174 superview];
    if (v175)
    {
      v176 = v175;
      sub_100005744(0, &qword_100972EB0);
      v177 = v47;
      v178 = static NSObject.== infix(_:_:)();

      if ((v178 & 1) == 0)
      {
        goto LABEL_89;
      }

      v179 = swift_unknownObjectWeakLoadStrong();
      if (!v179)
      {
        goto LABEL_89;
      }

      v174 = v179;
      [v179 removeFromSuperview];
    }

LABEL_89:
    swift_unknownObjectWeakAssign();
    v180 = swift_unknownObjectWeakLoadStrong();
    if (v180)
    {
      v181 = v180;
      [v47 addSubview:v180];
    }

    sub_1001B8790();
    [v47 v67[41].base_meths];
    return [v47 v67[41].base_meths];
  }

LABEL_34:
  if ((result & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_37:

    v103 = v189;
    v104 = v204;
    v202(v189, v226, v204);
    v105 = v190;
    v106 = (*(v190 + 88))(v103, v104);
    v107 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v105 + 8))(v103, v104);
    if (v106 == v107)
    {
      v108 = 1;
      v109 = v205;
    }

    else
    {
      v132 = Trailers.mediaPlatform.getter();
      v109 = v205;
      sub_10061B788(v132, v205);

      v108 = 0;
    }

    v133 = v191;
    v134 = v192;
    (*(v191 + 56))(v109, v108, 1, v192);
    (*(v210 + 104))(v199, enum case for VideoFillMode.scaleAspectFill(_:), v211);
    Video.preview.getter();
    Artwork.size.getter();
    v135 = v198;
    AspectRatio.init(_:_:)();

    (*(v219 + 56))(v135, 0, 1, v220);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    LODWORD(v229) = Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    Video.looping.getter();
    v136 = v194;
    sub_100031660(v109, v194, &qword_10097AE68);
    if ((*(v133 + 48))(v136, 1, v134) == 1)
    {
      sub_10002B894(v136, &qword_10097AE68);
    }

    else
    {
      sub_1001BABC8(v136);
    }

    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    v137 = v232;
    Video.playbackId.getter();
    v138 = v212;
    Video.videoUrl.getter();
    v139 = type metadata accessor for URL();
    (*(*(v139 - 8) + 56))(v138, 0, 1, v139);
    v140 = v214;
    Video.templateMediaEvent.getter();
    v141 = v213;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1005B8B74(&qword_100973190, type metadata accessor for VideoView);
    v229 = v137;
    v142 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v141, &unk_100973A50);
    sub_10002B894(v140, &unk_100973A50);
    sub_10002B894(v138, &qword_100982460);
    sub_10002B894(&v232, &qword_10096FB90);
    v143 = swift_unknownObjectWeakLoadStrong();
    v144 = v205;
    if (!v143)
    {
      goto LABEL_61;
    }

    v145 = v143;
    v146 = [v143 superview];
    if (v146)
    {
      v147 = v146;
      sub_100005744(0, &qword_100972EB0);
      v148 = v47;
      v149 = static NSObject.== infix(_:_:)();

      v144 = v205;
      if ((v149 & 1) == 0)
      {
        goto LABEL_61;
      }

      v150 = swift_unknownObjectWeakLoadStrong();
      if (!v150)
      {
        goto LABEL_61;
      }

      v145 = v150;
      [v150 removeFromSuperview];
    }

LABEL_61:
    swift_unknownObjectWeakAssign();
    v151 = swift_unknownObjectWeakLoadStrong();
    if (v151)
    {
      v152 = v151;
      [v47 addSubview:v151];
    }

    sub_1001B8790();
    [v47 v67[41].base_meths];

    v153 = OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView;
    v154 = *&v47[OBJC_IVAR____TtC8AppStore15LockupMediaView_creativeArtworkView];
    if (v154)
    {
      [v154 removeFromSuperview];
      v155 = *&v47[v153];
    }

    else
    {
      v155 = 0;
    }

    v166 = v217;
    v167 = v216;
    *&v47[v153] = 0;

    [v47 v67[41].base_meths];

    (*(v167 + 8))(v201, v166);
    sub_10002B894(v144, &qword_10097AE68);
    return [v47 v67[41].base_meths];
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_37;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005BA920(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1005BA968(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005BAAC8()
{
  v0 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_100005644(v0, qword_1009D2B70);
  sub_1000056A8(v0, qword_1009D2B70);
  return static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
}

uint64_t sub_1005BAB14()
{
  v0 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_100005644(v0, qword_1009D2B88);
  v1 = sub_1000056A8(v0, qword_1009D2B88);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1005BAB9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for CornerStyle();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097CC90);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v72 = &v67 - v15;
  v16 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v4[v17] = DynamicTypeLabel.__allocating_init(frame:)();
  v18 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v20, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v78.receiver = v5;
  v78.super_class = v25;
  v26 = objc_msgSendSuper2(&v78, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v69 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel]];
  v71 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView]];
  v70 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton]];
  v32 = qword_10096EA20;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v34, qword_1009D2B88);
  v35 = v72;
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v36 = type metadata accessor for FontUseCase();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v67 = v36;
  v68 = v38;
  v38(v35, 0, 1, v36);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v39 = v30;
  v40 = [v39 traitCollection];
  [*&v30[v31] setNumberOfLines:CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v40)];

  v41 = v69;
  v42 = *&v30[v69];
  v43 = v42[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  v42[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 7;
  v44 = v42;
  sub_1002C3F30(v43);

  *(*&v30[v41] + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = &off_1008CA208;
  swift_unknownObjectWeakAssign();

  v45 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v46 = v67;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v67);
  v68(v35, 0, 1, v46);
  v47 = v45;
  v48 = UIFontTextStyleSubheadline;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v49 = v70;
  v50 = *&v30[v70];
  v51 = v50;
  v52 = [v39 traitCollection];
  v53 = v73;
  v54 = ObjectType;
  sub_1001AEEC8(v50, v73);

  v55 = type metadata accessor for UIButton.Configuration();
  (*(*(v55 - 8) + 56))(v53, 0, 1, v55);
  UIButton.configuration.setter();

  v56 = sub_1001AF164();
  sub_100161AFC(v56, v57);

  [*&v30[v49] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v58 = *&v30[v71];
  v60 = v74;
  v59 = v75;
  v61 = v76;
  (*(v75 + 104))(v74, enum case for CornerStyle.continuous(_:), v76);
  v62 = v58;
  ArtworkView.setCorner(radius:style:)();

  (*(v59 + 8))(v60, v61);
  v63 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v64 = *&v39[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v64 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v63]];
  sub_10002849C(&qword_10097B110);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1007B10D0;
  *(v65 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v65 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v54;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v39;
}

id sub_1005BB378(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1001AF164();
  sub_1001AF188(v5, v6, a3, &off_1008CA218);

  v7 = [a1 traitCollection];
  v8 = *&a1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v9, qword_1009D2B88);
  [v8 setNumberOfLines:CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v7)];

  return [a1 setNeedsLayout];
}

id sub_1005BB4CC()
{
  [*&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  [*&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton] removeTarget:v0 action:"handleTapWithGestureRecognizer:" forControlEvents:0xFFFFFFFFLL];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedAppEventCardView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1005BB668()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100976848);
  v123 = *(v2 - 8);
  v124 = v2;
  __chkstk_darwin(v2);
  v122 = &v90 - v3;
  v4 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CondensedSearchResultCardLayout();
  v120 = *(v8 - 8);
  *&v121 = v8;
  __chkstk_darwin(v8);
  v119 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LayoutRect();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v106 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v128 = *(v126 - 8);
  __chkstk_darwin(v126);
  v103 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v129 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v127 = *(v125 - 8);
  __chkstk_darwin(v125);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for VerticalFlowLayout();
  v16 = *(v105 - 8);
  __chkstk_darwin(v105);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CondensedAppEventCardView();
  v149.receiver = v0;
  v149.super_class = v18;
  objc_msgSendSuper2(&v149, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v20 = v19;
  v22 = v21;
  v23 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
  sub_1002C65CC(v146);
  v24 = sub_1002C97E0(v0, v146, v20, v22);
  v26 = v25;
  sub_1001A927C(v146);
  [v23 setFrame:{0.0, 0.0, v24, v26}];
  v27 = [v0 traitCollection];
  v28 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v28)
  {
    v95 = v16;
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v29 = sub_1000056A8(v4, qword_1009D2B70);
    v30 = type metadata accessor for AppPromotionFormattedDateView();
    v148 = &protocol witness table for UIView;
    v147 = v30;
    v146[0] = v23;
    v31 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v32 = type metadata accessor for DynamicTypeLabel();
    v145 = &protocol witness table for UILabel;
    v144 = v32;
    v143[0] = v31;
    v33 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v34 = sub_1000AE6D8();
    v142 = &protocol witness table for UIView;
    v141 = v34;
    v140 = v33;
    v35 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v138 = type metadata accessor for ArtworkView();
    v139 = &protocol witness table for UIView;
    v137 = v35;
    sub_10002849C(&qword_10096FC30);
    v36 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v99 = *(v36 + 72);
    v37 = *(v36 + 80);
    v94 = v1;
    v38 = (v37 + 32) & ~v37;
    v39 = swift_allocObject();
    v93 = v39;
    *(v39 + 16) = xmmword_1007B5350;
    v124 = v39 + v38;
    v40 = v23;
    v41 = v31;
    v42 = v33;
    v43 = v35;
    CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
    v97 = v29;
    CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
    v92 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v44 = v127;
    v98 = *(v127 + 104);
    v100 = v127 + 104;
    v45 = v15;
    v98(v15);
    v46 = sub_10002849C(&unk_10098D820);
    v47 = *(v129 + 72);
    v109 = *(v129 + 80);
    v96 = (v109 + 32) & ~v109;
    v122 = v47;
    v123 = 3 * v47;
    v110 = 2 * v47;
    v111 = v46;
    v48 = swift_allocObject();
    v121 = xmmword_1007B1E00;
    *(v48 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v131[0] = v48;
    v119 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v118 = sub_10002849C(&unk_10098D830);
    v120 = sub_1000364CC();
    v50 = v101;
    v49 = v102;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v117 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v51 = v128;
    v52 = *(v128 + 104);
    v115 = v128 + 104;
    v116 = v52;
    v53 = v103;
    v54 = v126;
    v52(v103);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v55 = *(v51 + 8);
    v128 = v51 + 8;
    v114 = v55;
    v55(v53, v54);
    v56 = *(v129 + 8);
    v129 += 8;
    v113 = v56;
    v56(v50, v49);
    v57 = *(v44 + 8);
    v127 = v44 + 8;
    v112 = v57;
    v58 = v125;
    v57(v45, v125);
    sub_100036530(v132);
    sub_100007000(v134);
    CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
    v133 = 0;
    memset(v132, 0, sizeof(v132));
    v91 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v59 = v98;
    v98(v45);
    v60 = swift_allocObject();
    *(v60 + 16) = v121;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v131[0] = v60;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v61 = v126;
    v116(v53, v117, v126);
    v62 = v99;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v114(v53, v61);
    v113(v50, v49);
    v112(v45, v58);
    sub_100036530(v132);
    sub_100007000(v134);
    v90 = 2 * v62;
    v63 = v144;
    v64 = v145;
    v65 = sub_10002A400(v143, v144);
    v135 = v63;
    v136 = v64[1];
    v66 = sub_1000056E0(v134);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
    CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
    (v59)(v45, v91, v58);
    v67 = swift_allocObject();
    *(v67 + 16) = v121;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v130 = v67;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v68 = v126;
    v116(v53, v117, v126);
    v69 = v90;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v114(v53, v68);
    v113(v50, v49);
    v70 = v125;
    v112(v45, v125);
    sub_100036530(v131);
    sub_100007000(v132);
    sub_100007000(v134);
    v99 += v69;
    v135 = &type metadata for Double;
    v136 = &protocol witness table for Double;
    v134[0] = 0x4030000000000000;
    CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
    (v98)(v45, v92, v70);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v131[0] = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v72 = v126;
    v116(v53, v117, v126);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v114(v53, v72);
    v113(v50, v49);
    v112(v45, v70);
    sub_100036530(v132);
    sub_100007000(v134);
    v73 = v104;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    sub_100007000(&v137);
    sub_100007000(&v140);
    sub_100007000(v143);
    sub_100007000(v146);
    v75 = v105;
    v74 = v106;
    dispatch thunk of Layout.placeChildren(relativeTo:in:)();
    (*(v107 + 8))(v74, v108);
    return (*(v95 + 8))(v73, v75);
  }

  else
  {
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v77 = sub_1000056A8(v4, qword_1009D2B70);
    (*(v5 + 16))(v7, v77, v4);
    v78 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v147 = type metadata accessor for ArtworkView();
    v148 = sub_1005BEFC0(&qword_100989780, &type metadata accessor for ArtworkView);
    v146[0] = v78;
    v134[0] = v23;
    type metadata accessor for AppPromotionFormattedDateView();
    v79 = v78;
    Measurable.placeable.getter();
    v80 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v81 = type metadata accessor for DynamicTypeLabel();
    v142 = &protocol witness table for UILabel;
    v141 = v81;
    v140 = v80;
    v82 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v138 = sub_1000AE6D8();
    v139 = &protocol witness table for UIButton;
    v137 = v82;
    v83 = v80;
    v84 = v82;
    v85 = v119;
    CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
    v86 = [v1 traitCollection];
    sub_1005BEFC0(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout);
    v87 = v122;
    v88 = v121;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v89 = v124;
    dispatch thunk of Placeable.place(at:with:)();

    (*(v123 + 8))(v87, v89);
    return (*(v120 + 8))(v85, v88);
  }
}

double sub_1005BC728()
{
  v1 = v0;
  v113 = sub_10002849C(&qword_100976848);
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v3 = &v79 - v2;
  v107 = type metadata accessor for CondensedSearchResultCardLayout();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v116 = *(v114 - 8);
  __chkstk_darwin(v114);
  v90 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v117 = *(v89 - 8);
  __chkstk_darwin(v89);
  v9 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v115 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v109 = *(v12 - 8);
  v110 = v12;
  __chkstk_darwin(v12);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for VerticalFlowLayout();
  v92 = *(v15 - 8);
  v93 = v15;
  __chkstk_darwin(v15);
  v91 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
    v17 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
    v135 = type metadata accessor for AppPromotionFormattedDateView();
    v136 = &protocol witness table for UIView;
    v134 = v17;
    v18 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v132 = type metadata accessor for DynamicTypeLabel();
    v133 = &protocol witness table for UILabel;
    v131[0] = v18;
    v19 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v129 = sub_1000AE6D8();
    v130 = &protocol witness table for UIView;
    v128 = v19;
    v20 = *&v0[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v126 = type metadata accessor for ArtworkView();
    v127 = &protocol witness table for UIView;
    v125 = v20;
    sub_10002849C(&qword_10096FC30);
    v21 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
    v87 = *(v21 + 72);
    v22 = *(v21 + 80);
    v85 = v0;
    v23 = (v22 + 32) & ~v22;
    v24 = swift_allocObject();
    v84 = v24;
    *(v24 + 16) = xmmword_1007B5350;
    v113 = v24 + v23;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = v20;
    v112 = v14;
    CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
    CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
    v83 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
    v29 = v115;
    v30 = *(v115 + 104);
    v86 = v115 + 104;
    v94 = v30;
    v30(v11);
    v88 = sub_10002849C(&unk_10098D820);
    v31 = *(v117 + 72);
    v32 = *(v117 + 80);
    v33 = (v32 + 32) & ~v32;
    v107 = 3 * v31;
    v108 = v32;
    v105 = v31;
    v106 = 2 * v31;
    v34 = swift_allocObject();
    v104 = xmmword_1007B1E00;
    *(v34 + 16) = xmmword_1007B1E00;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v119[0] = v34;
    v103 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
    v102 = sub_10002849C(&unk_10098D830);
    v96 = sub_1000364CC();
    v35 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v101 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
    v36 = v116;
    v37 = *(v116 + 104);
    v99 = v116 + 104;
    v100 = v37;
    v38 = v90;
    v39 = v114;
    v37(v90);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v95 = *(v36 + 8);
    v116 = v36 + 8;
    v95(v38, v39);
    v40 = *(v117 + 8);
    v117 += 8;
    v98 = v40;
    v40(v9, v35);
    v41 = *(v29 + 8);
    v115 = v29 + 8;
    v97 = v41;
    v42 = v111;
    v41(v11, v111);
    sub_100036530(v120);
    sub_100007000(v122);
    CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
    v121 = 0;
    memset(v120, 0, sizeof(v120));
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v94(v11);
    v81 = v33;
    v43 = swift_allocObject();
    *(v43 + 16) = v104;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v119[0] = v43;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v44 = v114;
    v100(v38, v101, v114);
    v45 = v87;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v95(v38, v44);
    v98(v9, v35);
    v97(v11, v42);
    sub_100036530(v120);
    sub_100007000(v122);
    v80 = 2 * v45;
    v46 = v132;
    v47 = v133;
    v48 = sub_10002A400(v131, v132);
    v123 = v46;
    v124 = v47[1];
    v49 = sub_1000056E0(v122);
    (*(*(v46 - 8) + 16))(v49, v48, v46);
    CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
    CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
    v50 = v42;
    (v94)(v11, v82, v42);
    v51 = swift_allocObject();
    *(v51 + 16) = v104;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v118 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v52 = v114;
    v100(v38, v101, v114);
    v53 = v80;
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v95(v38, v52);
    v98(v9, v35);
    v97(v11, v50);
    sub_100036530(v119);
    sub_100007000(v120);
    sub_100007000(v122);
    v87 += v53;
    v123 = &type metadata for Double;
    v124 = &protocol witness table for Double;
    v122[0] = 0x4030000000000000;
    CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
    (v94)(v11, v83, v50);
    v54 = swift_allocObject();
    *(v54 + 16) = v104;
    static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
    static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
    v119[0] = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v55 = v114;
    v100(v38, v101, v114);
    static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
    v95(v38, v55);
    v98(v9, v35);
    v97(v11, v50);
    sub_100036530(v120);
    sub_100007000(v122);
    v56 = v91;
    VerticalFlowLayout.init(expandChildrenToFit:children:)();
    (*(v109 + 8))(v112, v110);
    sub_100007000(&v125);
    sub_100007000(&v128);
    sub_100007000(v131);
    sub_100007000(&v134);
    v57 = [v85 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1007B0B70;
    *(v58 + 32) = v57;
    v59 = v57;
    v60 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v61 = v93;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v63 = v62;

    (*(v92 + 8))(v56, v61);
  }

  else
  {
    v65 = v109;
    v64 = v110;
    if (qword_10096EA18 != -1)
    {
      swift_once();
    }

    v66 = sub_1000056A8(v64, qword_1009D2B70);
    (*(v65 + 16))(v14, v66, v64);
    v67 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView];
    v135 = type metadata accessor for ArtworkView();
    v136 = sub_1005BEFC0(&qword_100989780, &type metadata accessor for ArtworkView);
    v134 = v67;
    v68 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView];
    v132 = type metadata accessor for AppPromotionFormattedDateView();
    v133 = sub_1005BEFC0(&qword_10098D848, type metadata accessor for AppPromotionFormattedDateView);
    v131[0] = v68;
    v69 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel];
    v129 = type metadata accessor for DynamicTypeLabel();
    v130 = &protocol witness table for UILabel;
    v128 = v69;
    v70 = *&v1[OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton];
    v126 = sub_1000AE6D8();
    v127 = &protocol witness table for UIButton;
    v125 = v70;
    v71 = v67;
    v72 = v68;
    v73 = v69;
    v74 = v70;
    CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
    sub_1005BEFC0(&qword_100976850, &type metadata accessor for CondensedSearchResultCardLayout);
    v75 = v107;
    dispatch thunk of CustomLayout.layout.getter();
    swift_getOpaqueTypeConformance2();
    v76 = v113;
    dispatch thunk of Placeable.measure(toFit:with:)();
    v63 = v77;
    (*(v108 + 8))(v3, v76);
    (*(v4 + 8))(v6, v75);
  }

  return v63;
}

double sub_1005BD6DC()
{
  v103 = type metadata accessor for VerticalFlowLayout.HorizontalPlacement();
  v107 = *(v103 - 8);
  __chkstk_darwin(v103);
  v77 = &v63 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for VerticalFlowLayout.ExclusionCondition();
  v108 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v63 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for VerticalFlowLayout.VerticalPlacement();
  v3 = *(v2 - 8);
  v105 = v2;
  v106 = v3;
  __chkstk_darwin(v2);
  v72 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VerticalFlowLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v78 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for FontSource();
  v8 = *(v101 - 8);
  __chkstk_darwin(v101);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v102 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for PageGrid();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v86 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1005BEFC0(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v119[0])
  {
    return 0.0;
  }

  v100 = v11;
  v85 = v119[0];
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v17 = v119[0];
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  v104 = sub_1000056A8(v18, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v19 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v84 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096D610 != -1)
  {
    swift_once();
  }

  v70 = v6;
  v71 = v5;
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100438080(&unk_1009CF260, v17);
  swift_unknownObjectRelease();
  swift_allocObject();
  v83 = LayoutViewPlaceholder.init(measurements:)();
  AppEventSearchResult.appEvent.getter();
  AppEvent.title.getter();
  v99 = v20;

  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v21, qword_1009D2B88);
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  v22 = v101;
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v101);
  v23 = [v17 traitCollection];
  FontSource.font(compatibleWith:)(v23);

  (*(v8 + 8))(v10, v22);
  v24 = type metadata accessor for Feature();
  v120 = v24;
  v121 = sub_1005BEFC0(&qword_100972E50, &type metadata accessor for Feature);
  v25 = sub_1000056E0(v119);
  (*(*(v24 - 8) + 104))(v25, enum case for Feature.measurement_with_labelplaceholder(_:), v24);
  isFeatureEnabled(_:)();
  sub_100007000(v119);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v102 + 8))(v13, v100);
  static CondensedSearchResultCardLayout.estimatedSizeForViewButtonInAXLayouts.getter();
  swift_allocObject();
  v26 = LayoutViewPlaceholder.init(representing:)();
  v118[3] = v19;
  v118[4] = &protocol witness table for LayoutViewPlaceholder;
  v117[4] = &protocol witness table for LayoutViewPlaceholder;
  v118[0] = v83;
  v117[3] = v19;
  v117[0] = v26;
  v69 = v26;
  v116[4] = &protocol witness table for LayoutViewPlaceholder;
  v116[3] = v19;
  v116[0] = v84;
  sub_10002849C(&qword_10096FC30);
  v27 = *(type metadata accessor for VerticalFlowLayout.Child() - 8);
  v82 = *(v27 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v68 = v29;
  *(v29 + 16) = xmmword_1007B5350;
  v87 = v29 + v28;

  CondensedSearchResultCardLayout.Metrics.artworkTopMargin.getter();
  CondensedSearchResultCardLayout.Metrics.artworkAXBottomMargin.getter();
  v66 = enum case for VerticalFlowLayout.VerticalPlacement.top(_:);
  v30 = v106;
  v31 = *(v106 + 104);
  v88 = v106 + 104;
  v89 = v31;
  v67 = v17;
  v32 = v72;
  v31(v72);
  v90 = sub_10002849C(&unk_10098D820);
  v33 = *(v108 + 72);
  v34 = *(v108 + 80);
  v80 = (v34 + 32) & ~v34;
  v101 = 3 * v33;
  v102 = v34;
  v99 = v33;
  v100 = 2 * v33;
  v35 = swift_allocObject();
  v98 = xmmword_1007B1E00;
  *(v35 + 16) = xmmword_1007B1E00;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v110[0] = v35;
  v96 = sub_1005BEFC0(&qword_10096FC38, &type metadata accessor for VerticalFlowLayout.ExclusionCondition);
  v95 = sub_10002849C(&unk_10098D830);
  v97 = sub_1000364CC();
  v36 = v75;
  v37 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v94 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v38 = v107;
  v39 = *(v107 + 104);
  v92 = v107 + 104;
  v93 = v39;
  v40 = v77;
  v41 = v103;
  v39(v77);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v79 = *(v38 + 8);
  v107 = v38 + 8;
  v79(v40, v41);
  v81 = *(v108 + 8);
  v108 += 8;
  v81(v36, v37);
  v42 = *(v30 + 8);
  v106 = v30 + 8;
  v91 = v42;
  v42(v32, v105);
  sub_100036530(v111);
  sub_100007000(v113);
  CondensedSearchResultCardLayout.Metrics.headerTextSpace.getter();
  v112 = 0;
  memset(v111, 0, sizeof(v111));
  v65 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  v89(v32);
  v43 = swift_allocObject();
  *(v43 + 16) = v98;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v110[0] = v43;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v93(v40, v94, v41);
  v44 = v82;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v45 = v79;
  v79(v40, v41);
  v81(v36, v37);
  v46 = v105;
  v91(v32, v105);
  sub_100036530(v111);
  sub_100007000(v113);
  v64 = 2 * v44;
  v47 = v120;
  v48 = v121;
  v49 = sub_10002A400(v119, v120);
  v114 = v47;
  v115 = *(v48 + 8);
  v50 = sub_1000056E0(v113);
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  CondensedSearchResultCardLayout.Metrics.titleTextSpace.getter();
  CondensedSearchResultCardLayout.Metrics.titleTextBottomMargin.getter();
  (v89)(v32, v65, v46);
  v51 = swift_allocObject();
  *(v51 + 16) = v98;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v109 = v51;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v52 = v103;
  v93(v40, v94, v103);
  v53 = v64;
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v45(v40, v52);
  v54 = v81;
  v81(v36, v37);
  v55 = v105;
  v91(v32, v105);
  sub_100036530(v110);
  sub_100007000(v111);
  sub_100007000(v113);
  v82 += v53;
  v114 = &type metadata for Double;
  v115 = &protocol witness table for Double;
  v113[0] = 0x4030000000000000;
  CondensedSearchResultCardLayout.Metrics.artworkBottomMargin.getter();
  (v89)(v32, v66, v55);
  v56 = swift_allocObject();
  *(v56 + 16) = v98;
  static VerticalFlowLayout.ExclusionCondition.isHidden.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoHeight.getter();
  static VerticalFlowLayout.ExclusionCondition.hasNoContent.getter();
  v110[0] = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v57 = v103;
  v93(v40, v94, v103);
  static VerticalFlowLayout.Child.make(forView:topSpace:bottomSpace:verticalPlacement:horizontalPlacement:excludeWhen:)();
  v79(v40, v57);
  v54(v36, v37);
  v91(v32, v55);
  sub_100036530(v111);
  sub_100007000(v113);
  v58 = v78;
  VerticalFlowLayout.init(expandChildrenToFit:children:)();
  sub_100007000(v116);
  sub_100007000(v117);
  sub_100007000(v118);
  v59 = v71;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v61 = v60;
  swift_unknownObjectRelease();

  (*(v73 + 8))(v86, v74);
  sub_100007000(v119);
  (*(v70 + 8))(v58, v59);
  return v61;
}

double sub_1005BE734()
{
  v45 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  __chkstk_darwin(v45);
  v50 = &v43 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for CondensedSearchResultCardLayout();
  v55 = *(v1 - 8);
  v56 = v1;
  __chkstk_darwin(v1);
  v53 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for LabelPlaceholder();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontUseCase();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DynamicTextAppearance();
  v8 = *(v49 - 8);
  __chkstk_darwin(v49);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  __chkstk_darwin(v14);
  v46 = &v43 - v15;
  v16 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for PageGrid();
  v47 = *(v17 - 8);
  v48 = v17;
  __chkstk_darwin(v17);
  v59 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEventSearchResult();
  sub_1005BEFC0(&qword_100973DC0, &type metadata accessor for AppEventSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  v58 = v69[0];
  if (!v69[0])
  {
    return 0.0;
  }

  v44 = v5;
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.componentMeasuringSize(spanning:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = v69[0];
  swift_getObjectType();
  v43.super.isa = [v19 traitCollection];
  v57 = AppEventSearchResult.appEvent.getter();
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v45, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  v21 = v20;
  v23 = v22;
  if (qword_10096D610 != -1)
  {
    swift_once();
  }

  swift_unknownObjectRetain();
  v24 = sub_100438080(&unk_1009CF260, v19);
  v26 = v25;
  swift_unknownObjectRelease();
  DynamicTextAppearance.init()();
  v27 = v44;
  v45 = v19;
  if (qword_10096EA20 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for CondensedSearchResultCardLayout.Configuration();
  sub_1000056A8(v28, qword_1009D2B88);
  CondensedSearchResultCardLayout.Configuration.titleFont.getter();
  DynamicTextAppearance.withFontUseCase(_:)();
  v27[1](v7, v4);
  v29 = *(v8 + 8);
  v30 = v49;
  (v29)(v10, v49);
  v44 = v29;
  isa = v43.super.isa;
  CondensedSearchResultCardLayout.Configuration.titleNumberOfLines(in:)(v43);
  v32 = v46;
  DynamicTextAppearance.withNumberOfLines(_:)();
  (v29)(v13, v30);
  AppEvent.title.getter();
  (*(v8 + 16))(v13, v32, v30);
  LabelPlaceholder.Options.init(rawValue:)();
  v33 = v51;
  LabelPlaceholder.init(_:with:where:)();
  v69[3] = &type metadata for FixedSizedPlaceholder;
  v34 = sub_100168330();
  v69[4] = v34;
  *v69 = v24;
  v69[1] = v26;
  v35 = v54;
  v68[3] = v54;
  v68[4] = &protocol witness table for LabelPlaceholder;
  v36 = sub_1000056E0(v68);
  v37 = v52;
  (*(v52 + 16))(v36, v33, v35);
  v66 = &type metadata for FixedSizedPlaceholder;
  v67 = v34;
  v65 = xmmword_1007D71A0;
  v64[3] = &type metadata for FixedSizedPlaceholder;
  v64[4] = v34;
  v64[0] = v21;
  v64[1] = v23;
  static CondensedSearchResultCardLayout.Metrics.appEvent.getter();
  sub_10002C0AC(v64, &v63);
  sub_10002C0AC(v69, &v62);
  sub_10002C0AC(v68, &v61);
  sub_10002C0AC(&v65, &v60);
  v38 = v53;
  CondensedSearchResultCardLayout.init(metrics:artwork:headerText:titleText:viewButton:isTextBaselineAligned:)();
  sub_100007000(v64);
  sub_100007000(&v65);
  sub_100007000(v68);
  sub_100007000(v69);
  sub_1005BEFC0(&qword_10098D840, &type metadata accessor for CondensedSearchResultCardLayout);
  v39 = v56;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v41 = v40;
  swift_unknownObjectRelease();

  (*(v55 + 8))(v38, v39);
  (*(v37 + 8))(v33, v35);
  (v44)(v32, v30);
  (*(v47 + 8))(v59, v48);
  return v41;
}

uint64_t sub_1005BEFC0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1005BF008()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventFormattedDateView;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_titleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v1 + v3) = DynamicTypeLabel.__allocating_init(frame:)();
  v4 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_viewButton;
  *(v1 + v4) = [objc_opt_self() buttonWithType:0];
  v5 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_artworkView;
  if (qword_10096EA18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for CondensedSearchResultCardLayout.Metrics();
  sub_1000056A8(v6, qword_1009D2B70);
  CondensedSearchResultCardLayout.Metrics.artworkSize.getter();
  *(v1 + v5) = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v7, v8}];
  v9 = OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *(v1 + v9) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v10 = (v1 + OBJC_IVAR____TtC8AppStore25CondensedAppEventCardView_appEventViewTappedAction);
  *v10 = 0;
  v10[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView()
{
  result = qword_10098D878;
  if (!qword_10098D878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1005BF26C(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10098D858;
  type metadata accessor for ArtworkView();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10098D860;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10098D868;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_10098D870];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v6[qword_10098D850] = sub_1002EB7C0(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_10098D860;
  v26 = *&v24[qword_10098D860];
  v26[OBJC_IVAR____TtC8AppStore12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *&v24[v25];
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *&v24[v25];
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_10098D868;
  v35 = *&v27[qword_10098D868];
  sub_10002849C(&qword_100973210);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1007B15F0;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_100005744(0, &qword_10097FB70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*&v24[v25]];
    [v27 addSubview:*&v27[v34]];
    [v27 addSubview:*&v27[qword_10098D858]];
    [v27 addSubview:*&v27[qword_10098D850]];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1005BF6C4()
{
  xmmword_1009D2BA0 = xmmword_1007D72A0;
  *algn_1009D2BB0 = xmmword_1007D72B0;
  result = 10.0;
  xmmword_1009D2BC0 = xmmword_1007D72C0;
  unk_1009D2BD0 = xmmword_1007D72D0;
  qword_1009D2BE0 = 0x4020000000000000;
  return result;
}

double sub_1005BF700()
{
  xmmword_1009D2BF0 = xmmword_1007D72E0;
  unk_1009D2C00 = xmmword_1007D72B0;
  result = 146.0;
  xmmword_1009D2C10 = xmmword_1007D72F0;
  unk_1009D2C20 = xmmword_1007D7300;
  qword_1009D2C30 = 0x4020000000000000;
  return result;
}

__n128 sub_1005BF73C@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_10098D870 + 32);
  v13 = *(v2 + qword_10098D870 + 48);
  v14 = *(v2 + qword_10098D870 + 64);
  v10 = *(v2 + qword_10098D870);
  v11 = *(v2 + qword_10098D870 + 16);
  v4 = *(v2 + qword_10098D850);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_1005C04E0();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView();
  *(v5 + 120) = sub_1005C0534(&qword_10098D8D0, type metadata accessor for InAppPurchaseView);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  Measurable.placeable.getter();
  v7 = *(v2 + qword_10098D858);
  *(v5 + 232) = type metadata accessor for ArtworkView();
  *(v5 + 240) = sub_1005C0534(&qword_100989780, &type metadata accessor for ArtworkView);
  *(v5 + 208) = v7;
  sub_100005744(0, &qword_10097E628);
  v8 = v7;
  Measurable.placeable.getter();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_1005BF90C()
{
  type metadata accessor for CustomLayoutView();
  v1 = method lookup function for CustomLayoutView();
  v1();
  v2 = v0 + qword_10098D870;
  v3 = *(v0 + qword_10098D850);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_10098D870 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_10098D858);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_1005BFB18()
{
  v1 = *(v0 + qword_10098D868);
}

void sub_1005BFB78(uint64_t a1)
{
  v2 = *(a1 + qword_10098D868);
}

uint64_t sub_1005BFBEC()
{
  v1 = OfferItem.iapArtwork.getter();
  OfferItem.offerLockup.getter();
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCastClass())
  {
    InAppPurchaseLockup.parent.getter();
    v2 = Lockup.icon.getter();
  }

  else
  {

    OfferItem.offerLockup.getter();
    v2 = Lockup.icon.getter();
  }

  if (v2 && (v3 = Artwork.backgroundColor.getter()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = Artwork.backgroundGradientColor.getter();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = Artwork.backgroundColor.getter();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = Artwork.backgroundGradientColor.getter();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_10098D860);
  sub_10002849C(&qword_100973210);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1007BB060;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_1001C0CEC();
}

uint64_t sub_1005BFE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_1000056E0(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_10002C0AC(v44, v43);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for OfferItem();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = OfferItem.iapArtwork.getter();
    OfferItem.offerLockup.getter();
    type metadata accessor for InAppPurchaseLockup();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      InAppPurchaseLockup.parent.getter();
      v19 = Lockup.icon.getter();
    }

    else
    {

      OfferItem.offerLockup.getter();
      v19 = Lockup.icon.getter();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v21 = *(v20 + qword_10098D858);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v21 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      Artwork.crop.getter();
      v22 = Artwork.Crop.preferredContentMode.getter();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      type metadata accessor for ArtworkView();
      sub_1005C0534(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v26 = *(v24 + qword_10098D850);
      v27 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v29 = *(v26 + v27);
      Artwork.crop.getter();
      v30 = Artwork.Crop.preferredContentMode.getter();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      type metadata accessor for ArtworkView();
      sub_1005C0534(&qword_100970E80, &type metadata accessor for ArtworkView);
      v32 = v31;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }
  }

  return sub_100007000(v44);
}

void sub_1005C0414()
{
  v1 = qword_10098D858;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10098D860;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_10098D868;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1005C04E0()
{
  result = qword_10098D8C8;
  if (!qword_10098D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098D8C8);
  }

  return result;
}

uint64_t sub_1005C0534(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005C05C8()
{
  v22 = type metadata accessor for Shelf.PresentationHints();
  v0 = *(v22 - 8);
  __chkstk_darwin(v22);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v12 = *(v7 + 8);
  v12(v9, v6);
  v13 = ShelfLayoutContext.traitCollection.getter();
  v14 = type metadata accessor for SnapshotPageTraitEnvironment();
  v15 = objc_allocWithZone(v14);
  v16 = &v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v16 = v11;
  *(v16 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v15[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v13;
  v23.receiver = v15;
  v23.super_class = v14;
  v17 = objc_msgSendSuper2(&v23, "init");
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v12(v9, v6);
  sub_10047AC28(v17);

  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.inProductPageSpotlight.getter();
  sub_1005C08B4(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v18 = v22;
  dispatch thunk of SetAlgebra.isSuperset(of:)();
  v19 = *(v0 + 8);
  v19(v2, v18);
  return (v19)(v5, v18);
}

uint64_t sub_1005C08B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005C0B60()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_10098D970);
  sub_1000056A8(v0, qword_10098D970);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

char *sub_1005C0BFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v10 - 8);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DirectionalTextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v17 - 8);
  v19 = &v61 - v18;
  v20 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_metrics;
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v22 = sub_1000056A8(v21, qword_1009D25F0);
  (*(*(v21 - 8) + 16))(&v5[v20], v22, v21);
  v23 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor;
  v61 = sub_100005744(0, &qword_100970180);
  *&v5[v23] = static UIColor.componentBackgroundStandout.getter();
  if (qword_10096EA38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FontUseCase();
  v25 = sub_1000056A8(v24, qword_10098D910);
  v26 = *(v24 - 8);
  v66 = *(v26 + 16);
  v66(v19, v25, v24);
  v65 = *(v26 + 56);
  v65(v19, 0, 1, v24);
  v27 = *(v14 + 104);
  v64 = enum case for DirectionalTextAlignment.none(_:);
  v63 = v27;
  v27(v16);
  v28 = type metadata accessor for DynamicTypeLabel();
  v62 = v13;
  v29 = v28;
  v30 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EA40 != -1)
  {
    swift_once();
  }

  v31 = sub_1000056A8(v24, qword_10098D928);
  v66(v19, v31, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v32 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096EA48 != -1)
  {
    swift_once();
  }

  v33 = sub_1000056A8(v24, qword_10098D940);
  v66(v19, v33, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v34 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body] = v35;
  v36 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton] = sub_1000F5284(0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v37 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView] = sub_1002EB7C0(v12, 1);
  if (qword_10096EA50 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v24, qword_10098D958);
  v66(v19, v38, v24);
  v65(v19, 0, 1, v24);
  v63(v16, v64, v62);
  v39 = objc_allocWithZone(v29);
  *&v5[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v68.receiver = v5;
  v68.super_class = v40;
  v41 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v45 = v41;
  [v45 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v46 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel]];
  v47 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton]];
  v48 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body]];
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView]];
  v49 = OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription;
  [v45 addSubview:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription]];
  v50 = [*&v45[v48] layer];
  [v50 setCornerRadius:20.0];

  v51 = *&v45[v46];
  v52 = [v45 tintColor];
  [v51 setTextColor:v52];

  v53 = *&v45[v47];
  v54 = static UIColor.secondaryText.getter();
  [v53 setTextColor:v54];

  [*&v45[v48] setBackgroundColor:*&v45[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor]];
  v55 = qword_10096EA58;
  v56 = *&v45[v49];
  if (v55 != -1)
  {
    swift_once();
  }

  v57 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v57, qword_10098D970);
  v67 = v45;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  v58 = *&v45[v49];
  v59 = static UIColor.secondaryText.getter();
  [v58 setTextColor:v59];

  return v45;
}

uint64_t sub_1005C162C()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InAppPurchaseSearchResultLayout();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InAppPurchaseSearchResultContentView();
  v63.receiver = v1;
  v63.super_class = v10;
  objc_msgSendSuper2(&v63, "layoutSubviews");
  (*(v5 + 16))(v7, &v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_metrics], v4);
  v11 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_offerButton];
  v35[2] = v10;
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = &v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v11[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v13 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v11[v13], v60);
    sub_10002A400(v60, v61);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v15 = v14;
    v17 = v16;
    sub_100007000(v60);
    *v12 = v15;
    *(v12 + 1) = v17;
    v12[16] = 0;
  }

  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  v18 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
  v19 = type metadata accessor for DynamicTypeLabel();
  v35[1] = v7;
  v61 = v19;
  v62 = &protocol witness table for UILabel;
  v60[0] = v18;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel];
  v58 = v19;
  v59 = &protocol witness table for UILabel;
  v57 = v20;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];
  v55 = v19;
  v56 = &protocol witness table for UILabel;
  v54 = v21;
  v52 = type metadata accessor for OfferButton();
  v53 = &protocol witness table for UIView;
  v51 = v11;
  v35[0] = v11;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView];
  v49 = type metadata accessor for InAppPurchaseView();
  v50 = &protocol witness table for UIView;
  v47 = &protocol witness table for UILabel;
  v48 = v22;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription];
  v46 = v19;
  v45 = v23;
  v24 = *&v1[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_body];
  v43 = sub_100005744(0, &qword_100972EB0);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v18;
  v26 = v20;
  v27 = v21;
  v28 = v35[0];
  v29 = v22;
  v30 = v23;
  v31 = v24;
  v32 = v36;
  InAppPurchaseSearchResultLayout.init(metrics:inAppPurchaseText:titleText:subtitleText:offerButton:inAppPurchaseIcon:inAppPurchaseDescription:inAppPurchaseBackgroundView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v33 = v39;
  InAppPurchaseSearchResultLayout.placeChildren(relativeTo:in:)();
  (*(v40 + 8))(v33, v41);
  return (*(v37 + 8))(v32, v38);
}

id sub_1005C1A88(void *a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096EA58 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_10098D970);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

uint64_t sub_1005C1C28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v70 = type metadata accessor for InAppPurchaseTheme();
  v76 = *(v70 - 8);
  __chkstk_darwin(v70);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v10 - 8);
  v12 = &v62 - v11;
  v75 = type metadata accessor for OfferButtonSubtitlePosition();
  v71 = *(v75 - 8);
  __chkstk_darwin(v75);
  v72 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_1009701A0);
  v74 = *(v14 - 8);
  __chkstk_darwin(v14);
  v73 = (&v62 - v15);
  v16 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v16 - 8);
  v18 = &v62 - v17;
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v77)
  {
    v68 = v9;
    v69 = v6;
    v20 = InAppPurchaseSearchResult.lockup.getter();

    type metadata accessor for ArtworkLoader();
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v67 = v77;

    v21 = v20;
    Lockup.title.getter();
    v23 = v22;
    v24 = *&v2[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_titleLabel];
    v65 = v14;
    v66 = a2;
    v64 = v12;
    if (v22)
    {
      v25 = String._bridgeToObjectiveC()();
    }

    else
    {
      v25 = 0;
    }

    [v24 setText:v25];

    [v24 setHidden:v23 == 0];
    [v3 setNeedsLayout];
    v26 = InAppPurchaseLockup.isSubscription.getter();
    v27 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppPurchaseLabel];
    v28 = "onalLayout.swift";
    if (v26)
    {
      v28 = "ultType.Heading.InAppPurchase";
      v29 = 0xD00000000000003ALL;
    }

    else
    {
      v29 = 0xD00000000000002DLL;
    }

    v30 = v28 | 0x8000000000000000;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(*&v29, v31);
    v32 = String._bridgeToObjectiveC()();

    [v27 setText:v32];

    InAppPurchaseLockup.parent.getter();
    v33 = Lockup.title.getter();
    v35 = v34;

    if (v35)
    {
      v36._countAndFlagsBits = 0xD000000000000035;
      v36._object = 0x800000010080C060;
      v37._countAndFlagsBits = 0;
      v37._object = 0xE000000000000000;
      localizedString(_:comment:)(v36, v37);
      sub_10002849C(&unk_10097E350);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1007B10D0;
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_1000BFD1C();
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      String.init(format:_:)();

      v39 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];

      v40 = String._bridgeToObjectiveC()();

      [v39 setText:v40];

      [v39 setHidden:0];
    }

    else
    {
      v41 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_subtitleLabel];
      [v41 setText:0];
      [v41 setHidden:1];
    }

    v42 = v64;
    [v3 setNeedsLayout];
    InAppPurchaseLockup.descriptionText.getter();
    v44 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription];
    if (v43)
    {
      v45 = String._bridgeToObjectiveC()();
      [v44 setText:v45];

      [v44 setHidden:0];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_inAppDescription] setText:0];
      [v44 setHidden:1];
    }

    [v3 setNeedsLayout];
    v46 = Lockup.offerDisplayProperties.getter();
    v47 = Lockup.buttonAction.getter();
    v63 = v21;

    v48 = sub_10002849C(&unk_100973240);
    (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
    v49 = v71;
    v50 = v75;
    (*(v71 + 104))(v72, enum case for OfferButtonSubtitlePosition.below(_:), v75);
    (*(v49 + 56))(v42, 1, 1, v50);
    sub_1005C2FDC(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
    v51 = v73;
    AccessibilityConditional.init(value:axValue:)();
    sub_10064AFA4(v46, v47, 0, v18, v51, v66, 0, 0);

    v74[1](v51, v65);
    sub_10025B2D0(v18);
    v52 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView];
    v78.value.super.isa = 0;
    v78.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v78, v53);
    v79.value.super.isa = 0;
    v79.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v79, v54);
    type metadata accessor for ArtworkView();
    sub_1005C2FDC(&qword_100970E80, &type metadata accessor for ArtworkView);
    v55 = v67;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    v75 = *&v3[OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_bodyBackgroundColor];
    v56 = v68;
    InAppPurchaseLockup.theme.getter();
    v57 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    v58 = v76;
    v59 = v70;
    (*(v76 + 24))(&v52[v57], v56, v70);
    swift_endAccess();
    v73 = *(v58 + 16);
    v60 = v69;
    v73(v69, &v52[v57], v59);
    sub_1002EBEE4(v60);
    v74 = v3;
    v61 = *(v58 + 8);
    v61(v60, v59);
    v61(v56, v59);
    [v52 setBackgroundColor:v75];
    sub_1001BCDCC(v63, v52, v55);
    v73(v56, &v52[v57], v59);
    sub_1002EBEE4(v56);
    v61(v56, v59);
    [v52 setNeedsLayout];
    [v74 setNeedsLayout];
  }

  return result;
}

id sub_1005C25D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InAppPurchaseSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InAppPurchaseSearchResultContentView()
{
  result = qword_10098D9C0;
  if (!qword_10098D9C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1005C274C(uint64_t a1, uint64_t a2)
{
  sub_10002C0AC(a1, v6);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for InAppPurchaseSearchResult();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = InAppPurchaseSearchResult.lockup.getter();

    sub_1001BCDCC(v5, *(v2 + OBJC_IVAR____TtC8AppStore36InAppPurchaseSearchResultContentView_iconView), a2);
  }

  return result;
}

uint64_t sub_1005C2808(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, a3);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v3);
  type metadata accessor for ArtworkView();
  sub_1005C2FDC(&qword_100970E80, &type metadata accessor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1005C28F4()
{
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  result = ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    InAppPurchaseSearchResult.lockup.getter();
    v1 = sub_1001BD3AC();

    ArtworkLoader.prefetchArtwork(using:)(v1);
  }

  return result;
}

uint64_t sub_1005C2A14(uint64_t a1)
{
  *(a1 + 24) = sub_1005C2FDC(&qword_10098D9D8, type metadata accessor for InAppPurchaseSearchResultContentView);
  result = sub_1005C2FDC(&qword_10098D9E0, type metadata accessor for InAppPurchaseSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

double sub_1005C2A98()
{
  v0 = type metadata accessor for OfferButtonMetrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v24 - v5;
  v7 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v27 = *(v7 - 8);
  v28 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for PageGrid();
  v26 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseSearchResult();
  sub_1005C2FDC(&qword_10098D9E8, &type metadata accessor for InAppPurchaseSearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v29)
  {
    return 0.0;
  }

  v25 = v11;
  InAppPurchaseSearchResult.lockup.getter();

  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  PageGrid.init(from:breakpointOverrides:)();

  Lockup.title.getter();

  Lockup.subtitle.getter();

  v14 = sub_100079F24();
  PageGrid.componentMeasuringSize(spanning:)();
  CGSize.subtracting(insets:)();
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v15 = v28;
  v16 = sub_1000056A8(v28, qword_1009D25F0);
  v17 = v27;
  (*(v27 + 16))(v9, v16, v15);
  v18 = [v14 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v19 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v19 = qword_100991028;
  }

  v21 = sub_1000056A8(v0, v19);
  (*(v1 + 16))(v3, v21, v0);

  (*(v1 + 32))(v6, v3, v0);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();
  v20 = v22;

  swift_unknownObjectRelease();
  (*(v1 + 8))(v6, v0);
  (*(v17 + 8))(v9, v28);
  (*(v26 + 8))(v13, v25);
  return v20;
}

uint64_t sub_1005C2FDC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005C3030(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      v15 = v14;
      v1 = sub_10003687C(v14, 0);
      sub_100395A84(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100549964(v1);
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_100549964(v1);
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

unint64_t sub_1005C3244(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (v19)
    {
      v20 = v19;
      v1 = sub_10003687C(v19, 0);
      sub_100396904(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100549964(v1);
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_100549964(v1);
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1005C3454(size_t a1)
{
  v2 = type metadata accessor for DebugMetricsEvent();
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v29 = v23 - v8;
  v9 = *(a1 + 16);
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_5;
    }

    v13 = *(a1 + 16);
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, v15 + v16 * v10, v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_14;
    }

    v19 = v16 * v12;
    v20 = v15 + v16 * v12;
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_100548DC8(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= *(a1 + 16))
    {
      goto LABEL_15;
    }

    v22(v21 + v19, v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_5:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1005C3680()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005C36D4(int a1)
{
  _StringGuts.grow(_:)(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0x64726177726F66;
    }

    else
    {
      v2 = 1701736302;
    }

    if (a1 == 1)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v2 = 0x647261776B636162;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v6 = 0xEC000000676E6972;
  v7 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v7 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v8 = v7;
  }

  else
  {
    v8 = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE900000000000067;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11._countAndFlagsBits = 8250;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = Double.description.getter();
  String.append(_:)(v12);

  v13._object = 0x800000010081BFC0;
  v13._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v13);
  if ((a1 & 0x10000) != 0)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  return 0;
}

uint64_t sub_1005C3894(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 10))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  return sub_1005C72C4(*(a1 + 8) | v2, *(a2 + 8) | v3, *a1, *a2);
}

uint64_t sub_1005C38CC()
{
  if (*(v0 + 10))
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  return sub_1005C36D4(*(v0 + 8) | v1);
}

Swift::Int sub_1005C38EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005C3988()
{
  String.hash(into:)();
}

Swift::Int sub_1005C3A10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3AA8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005C74E4(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3AD8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3B30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1005C3C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1005C3CCC()
{
  String.hash(into:)();
}

Swift::Int sub_1005C3D60()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1005C3E04@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1005C7590(*a1);
  *a2 = result;
  return result;
}

void sub_1005C3E34(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1005C3E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

id sub_1005C3F9C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_100399324(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_1005C42B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_1006E1C58(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_1005C56E0();
    v5 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_1005C485C(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

uint64_t sub_1005C4438(uint64_t result)
{
  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating] = result;
  if (v3 != (result & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [*(result + OBJC_IVAR____TtC8AppStore16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1005C4510()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_1005C5C54(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_1005C5C54(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = (v19 - 1);
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
    v20 = (v21 - 1);
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_1005C5A24(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void *sub_1005C485C(void *result)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || result && v2[2] == result[2])
  {
    return result;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_10046AE64(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = _CocoaArrayWrapper.endIndex.getter();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v26 = v2[2];
    v27 = *(v25 + 16);
    swift_unknownObjectRelease();
    if (v26 != v27)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      result = (v14 - 1);
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v15 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    result = (v15 - 1);
    if (!__OFSUB__(v15, 1))
    {
LABEL_25:
      sub_1005C5A24(result);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v16 = *&v1[v6];
  if (!(v16 >> 62))
  {
    result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v16 & 0xC000000000000001) == 0)
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v17 = *(v16 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_33:
  v18 = v2[2];

  v19 = *(v17 + 16);

  if (v18 != v19)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
LABEL_38:
    v21 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v22 = __OFSUB__(v21, 1);
    v23 = v21 - 1;
    if (!v22)
    {
      v24 = v2[2];
      if (v24 == v23)
      {
        result = 0;
LABEL_42:
        sub_1005C5C54(result);
        goto LABEL_45;
      }

      result = (v24 + 1);
      if (!__OFADD__(v24, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

id sub_1005C4C74(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  result = [v3 setScrollEnabled:?];
  v40 = _swiftEmptyArrayStorage;
  v35 = v11;
  v13 = *&v3[v11];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v13)
    {
      v14 = 0;
      v15 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
      v33 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex;
      v36 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v18 = *(a1 + 32 + 8 * a2);
        }

        v19 = v18;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v20 = swift_allocObject();
        *(v20 + 16) = v14;
        *(v20 + 24) = a2;
        *(v20 + 32) = v19;

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v37 = v40;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = *&v3[v15];
        *&v3[v15] = 0x8000000000000000;
        sub_1000514A8(v20, v14, isUniquelyReferenced_nonNull_native);
        *&v3[v15] = v39;
        swift_endAccess();
        [v3 addSubview:*(v20 + 32)];
        v22 = *(v20 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v41);
        [v3 bounds];
        Width = CGRectGetWidth(v42);
        [v3 bounds];
        [v22 setFrame:{0.0, MinY, Width, CGRectGetHeight(v43)}];

        [*(v20 + 32) layoutIfNeeded];
        v25 = type metadata accessor for Feature.iOS();
        v38[3] = v25;
        v38[4] = sub_1005C7530();
        v26 = sub_1000056E0(v38);
        (*(*(v25 - 8) + 104))(v26, v36, v25);
        LOBYTE(v25) = isFeatureEnabled(_:)();
        sub_100007000(v38);
        if ((v25 & 1) != 0 && *&v3[v33] == -1)
        {
          *&v3[v33] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_10046B0E0(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v27 = [v5 layoutDirection];

        if (v27 == 1)
        {
          break;
        }

        v28 = *&v3[v35];
        v16 = __OFSUB__(v28, 1);
        v29 = (v28 - 1);
        if (v16)
        {
          goto LABEL_51;
        }

        if (a2 != v29)
        {
          v16 = __OFADD__(a2++, 1);
          if (v16)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v17 == v13)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v17 == v13)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v14;
        if (v17 >= v13)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v16 = __OFSUB__(a2--, 1);
        if (v16)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v30 = *&v3[v35];
        a2 = v30 - 1;
        if (__OFSUB__(v30, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v37 = _swiftEmptyArrayStorage;
LABEL_47:
    v31 = *&v3[v32];
    *&v3[v32] = v37;
    sub_1005C42B4(v31);
  }

  return result;
}

void sub_1005C519C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_1003D7340(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_1005C4510();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_1003A87C4(a1 | 0x100, 1.0);

        sub_1005C4438(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_1003A87C4(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_1005C55AC(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_1005C56E0()
{
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1005C7588;
    *(v4 + 24) = v3;
    v7[4] = sub_10006F094;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_1000489A8;
    v7[3] = &unk_1008CA458;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

uint64_t sub_1005C5870(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }
}

id sub_1005C5A24(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_1005C42B4(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v17];
    v1[v18] = 0;
    return result;
  }

  v4 = result;
  v5 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_1003D7340(v4);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (v4 == v9)
    {
      v4 = 0;
    }

    else
    {
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

id sub_1005C5C54(uint64_t a1)
{
  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v4 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = result;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_1005C3030(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers] = v8;
    sub_1005C42B4(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    result = [v1 setContentOffset:v28];
    v1[v29] = 0;
    return result;
  }

  v7 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_1003D7340(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_1005C5F48()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_1005C485C(v13);
}

unint64_t sub_1005C6164()
{
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers;
  result = *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers);
  if (result >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = result;

  result = sub_1001445D8(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = result;
        v3 = _CocoaArrayWrapper.endIndex.getter();
        result = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_1005C66A4(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = *(v4 + 2);
      v14 = *(v4 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_1001445D8((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      *(v4 + 2) = v15 + 1;
      v16 = &v4[2 * v15];
      *(v16 + 4) = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v20 = result;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = *(v4 + 2);
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_1003A7FA0();
          sub_1003A82A4();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }

  return result;
}

id sub_1005C66A4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_1005C6B28(void *a1)
{
  sub_1005C4438(0);
  v3 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v5 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v6 = v4, objc_msgSend(*(v5 + 32), "frame"), v6 == v7))
  {
    *(v1 + v3) = 0;

    sub_1005C6C5C(0);
  }

  else
  {
    *(v1 + v3) = 1;

    sub_1005C519C(1u);
  }
}

void sub_1005C6C5C(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for AutoScrollConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_1005C5A24(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_1005C5C54(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10046B0E0(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = type metadata accessor for Feature.iOS();
      v35 = v18;
      v36 = sub_1005C7530();
      v19 = sub_1000056E0(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = isFeatureEnabled(_:)();
      sub_100007000(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        AutoScrollConfiguration.autoScrollRestartDelay.getter();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_100469E30(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = type metadata accessor for Feature.iOS();
    v35 = v25;
    v36 = sub_1005C7530();
    v26 = sub_1000056E0(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = isFeatureEnabled(_:)();
    sub_100007000(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_1005C70B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005C7270()
{
  result = qword_10098DB28;
  if (!qword_10098DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DB28);
  }

  return result;
}

uint64_t sub_1005C72C4(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

unint64_t sub_1005C74E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B01C8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1005C7530()
{
  result = qword_10097CC80;
  if (!qword_10097CC80)
  {
    type metadata accessor for Feature.iOS();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097CC80);
  }

  return result;
}

unint64_t sub_1005C7590(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0230, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_1005C75DC()
{
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_100399324(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1005C76F8()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_1005C4510();
  }

  sub_1005C5F48();
  sub_1005C6164();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for Feature.iOS();
    v19 = v10;
    v11 = sub_1005C7530();
    v20 = v11;
    v12 = sub_1000056E0(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = isFeatureEnabled(_:)();
    sub_100007000(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC8AppStore16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_1000056E0(v18);
      v14(v16, v13, v10);
      v17 = isFeatureEnabled(_:)();
      sub_100007000(v18);
      if ((v17 & 1) == 0)
      {
        sub_10046BD0C(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1005C78A8()
{
  if ((*(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC8AppStore22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_1005C4510();
    }

    sub_1005C5F48();

    sub_1005C6164();
  }
}

unint64_t sub_1005C798C()
{
  result = qword_10098DB38;
  if (!qword_10098DB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DB38);
  }

  return result;
}

uint64_t ArcadeSubscribePageLayout.init(metrics:headerView:contentView:detailsView:offerButton:dismissButton:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(a7, __src, 0x108uLL);
  v13 = *(a2 + 16);
  *(a7 + 264) = *a2;
  *(a7 + 280) = v13;
  *(a7 + 296) = *(a2 + 32);
  v14 = *(a3 + 16);
  *(a7 + 304) = *a3;
  *(a7 + 320) = v14;
  *(a7 + 336) = *(a3 + 32);
  sub_100005A38(a4, a7 + 344);
  sub_100005A38(a5, a7 + 384);

  return sub_100005A38(a6, a7 + 424);
}

uint64_t ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v52 = a2;
  v53 = type metadata accessor for LayoutRect();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = type metadata accessor for FloatingPointRoundingRule();
  v13 = *(v49 - 8);
  __chkstk_darwin(v49);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005FC74(v6 + 264, &v59);
  v16 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    sub_100005A38(&v59, v54);
    sub_10002A400(v54, v55);
    Measurable.measuredSize(fitting:in:)();
    v18 = v17;
    v20 = v19;
    v65.origin.x = a3;
    v65.origin.y = a4;
    v65.size.width = a5;
    v65.size.height = a6;
    v21 = CGRectGetMidX(v65) + v18 * -0.5;
    v66.origin.x = a3;
    v66.origin.y = a4;
    v66.size.width = a5;
    v66.size.height = a6;
    MinY = CGRectGetMinY(v66);
    sub_10002A400(v54, v55);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v54);
  }

  else
  {
    sub_10005FD2C(&v59);
    v21 = 0.0;
    MinY = 0.0;
    v18 = 0.0;
    v20 = 0;
  }

  sub_10005FC74(v6 + 304, &v59);
  v23 = *(&v60 + 1);
  if (*(&v60 + 1))
  {
    *&v47 = v20;
    sub_100005A38(&v59, v54);
    swift_getObjectType();
    sub_1005C87FC(a1, v6, a5);
    *&v48 = v24;
    sub_10002A400(v6, *(v6 + 24));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v26 = v25;
    (*(v13 + 8))(v15, v49);
    if (v16)
    {
      v67.origin.x = v21;
      v67.origin.y = MinY;
      v67.size.width = v18;
      *&v67.size.height = v47;
      v26 = v26 + CGRectGetMaxY(v67);
    }

    v68.origin.x = a3;
    v68.origin.y = a4;
    v68.size.width = a5;
    v68.size.height = a6;
    MinX = CGRectGetMinX(v68);
    v69.origin.x = a3;
    v69.origin.y = a4;
    v69.size.width = a5;
    v69.size.height = a6;
    Width = CGRectGetWidth(v69);
    sub_10002A400(v54, v55);
    v44 = Width;
    v45 = MinX;
    v29 = v26;
    v30 = *&v48;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(v54);
  }

  else
  {
    sub_10005FD2C(&v59);
    v44 = 0.0;
    v45 = 0.0;
    v29 = 0.0;
    v30 = 0.0;
  }

  v31 = *(v6 + 80);
  v48 = *(v6 + 96);
  v49 = v31;
  sub_10002C0AC(v6 + 112, v61);
  v32 = *(v6 + 152);
  v46 = *(v6 + 168);
  v47 = v32;
  sub_10002C0AC(v6 + 184, &v63);
  sub_10002C0AC(v6 + 224, &v64);
  v59 = v49;
  v60 = v48;
  v62 = v46;
  *&v61[40] = v47;
  sub_10048BE84(&v59, v54);
  sub_10002C0AC(v6 + 344, &v56);
  sub_10002C0AC(v6 + 384, &v57);
  sub_10002C0AC(v6 + 424, &v58);
  swift_getObjectType();
  sub_1005C8AB4(a5, a1, v54);
  v34 = v33;
  if (v23 && (v70.size.width = v44, v70.origin.x = v45, v70.origin.y = v29, v43 = v29, v70.size.height = v30, v35 = v30, v36 = v34 + CGRectGetMaxY(v70), v71.origin.x = a3, v71.origin.y = a4, v71.size.width = a5, v71.size.height = a6, CGRectGetMaxY(v71) < v36))
  {
    v72.size.width = v44;
    v72.origin.x = v45;
    v72.origin.y = v43;
    v72.size.height = v35;
    MaxY = CGRectGetMaxY(v72);
  }

  else
  {
    v73.origin.x = a3;
    v73.origin.y = a4;
    v73.size.width = a5;
    v73.size.height = a6;
    MaxY = CGRectGetMaxY(v73) - v34;
  }

  v74.origin.x = a3;
  v74.origin.y = a4;
  v74.size.width = a5;
  v74.size.height = a6;
  v38 = CGRectGetMinX(v74);
  v75.origin.x = a3;
  v75.origin.y = a4;
  v75.size.width = a5;
  v75.size.height = a6;
  v39 = CGRectGetWidth(v75);
  v40 = v50;
  sub_1005C8258(v38, MaxY, v39, v34);
  LayoutRect.origin.getter();
  LayoutRect.size.getter();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetHeight(v76);
  v77.origin.x = a3;
  v77.origin.y = a4;
  v77.size.width = a5;
  v77.size.height = a6;
  CGRectGetMinX(v77);
  v78.origin.x = a3;
  v78.origin.y = a4;
  v78.size.width = a5;
  v78.size.height = a6;
  CGRectGetMinY(v78);
  v79.origin.x = a3;
  v79.origin.y = a4;
  v79.size.width = a5;
  v79.size.height = a6;
  CGRectGetWidth(v79);
  LayoutRect.init(representing:)();
  (*(v51 + 8))(v40, v53);
  sub_10048BEE0(v54);
  return sub_10048BF34(&v59);
}

double ArcadeSubscribePageLayout.contentViewSize(fitting:in:)(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1005C87FC(a1, v2, a2);
}

void ArcadeSubscribePageLayout.Metrics.detailsMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
}

void ArcadeSubscribePageLayout.Metrics.offerButtonMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = a3;
  v4[22] = a4;
}

uint64_t ArcadeSubscribePageLayout.Metrics.buttonsSpacing.setter(__int128 *a1)
{
  sub_100007000(v1 + 184);

  return sub_100005A38(a1, v1 + 184);
}

uint64_t ArcadeSubscribePageLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 224);

  return sub_100005A38(a1, v1 + 224);
}

uint64_t sub_1005C8258(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = type metadata accessor for FloatingPointRoundingRule();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 16);
  v36 = *v4;
  v37 = v14;
  sub_10002A400((v4 + 104), *(v4 + 128));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v35 = v15;
  v16 = *(v11 + 8);
  v16(v13, v10);
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetWidth(v38);
  v39.origin.x = a1;
  v39.origin.y = a2;
  v39.size.width = a3;
  v39.size.height = a4;
  CGRectGetHeight(v39);
  sub_10002A400(v5 + 23, v5[26]);
  Measurable.measuredSize(fitting:in:)();
  v18 = v17;
  v20 = v19;
  v40.origin.x = a1;
  v40.origin.y = a2;
  v40.size.width = a3;
  v40.size.height = a4;
  v21 = CGRectGetMidX(v40) + v18 * -0.5;
  v41.origin.x = a1;
  v41.origin.y = a2;
  v41.size.width = a3;
  v41.size.height = a4;
  v22 = v36 + CGRectGetMinY(v41);
  sub_10002A400(v5 + 23, v5[26]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v34 = v21;
  v42.origin.x = v21;
  v42.origin.y = v22;
  v42.size.width = v18;
  v36 = v20;
  v42.size.height = v20;
  CGRectGetMaxY(v42);
  sub_10002A400(v5 + 28, v5[31]);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_10002A400((v4 + 224), *(v4 + 248));
    dispatch thunk of LayoutView.frame.setter();
  }

  else
  {
    sub_10002A400((v4 + 32), *(v4 + 56));
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v33 = v23;
    v16(v13, v10);
    v43.origin.x = a1;
    v43.origin.y = a2;
    v43.size.width = a3;
    v43.size.height = a4;
    v24 = CGRectGetWidth(v43) - *(v4 + 80) - *(v4 + 96);
    sub_10002A400((v4 + 224), *(v4 + 248));
    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    CGRectGetWidth(v44);
    Measurable.measuredSize(fitting:in:)();
    if (v24 <= v25)
    {
      v24 = v25;
    }

    v45.origin.x = a1;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    Width = CGRectGetWidth(v45);
    if (Width < v24)
    {
      v24 = Width;
    }

    v46.origin.x = a1;
    v46.origin.y = a2;
    v46.size.width = a3;
    v46.size.height = a4;
    v27 = CGRectGetMidX(v46) + v24 * -0.5;
    v47.origin.x = v34;
    v47.origin.y = v22;
    v47.size.width = v18;
    v47.size.height = v36;
    v28 = v37 + CGRectGetMaxY(v47);
    sub_10002A400((v4 + 224), *(v4 + 248));
    v29 = v33;
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v48.origin.x = v27;
    v48.origin.y = v28;
    v48.size.width = v24;
    v48.size.height = v29;
    CGRectGetMaxY(v48);
  }

  sub_10002A400((v4 + 264), *(v4 + 288));
  v30 = dispatch thunk of LayoutView.isHidden.getter();
  sub_10002A400((v4 + 264), *(v4 + 288));
  if ((v30 & 1) == 0)
  {
    Measurable.measuredSize(fitting:in:)();
    v49.origin.x = a1;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    CGRectGetMidX(v49);
    sub_10002A400((v4 + 264), *(v4 + 288));
    CGRect.withLayoutDirection(in:relativeTo:)();
  }

  dispatch thunk of LayoutView.frame.setter();
  return LayoutRect.init(representing:)();
}

double sub_1005C87A0(uint64_t a1, double a2)
{
  swift_getObjectType();

  return sub_1005C8AB4(a2, a1, v2);
}

double sub_1005C87FC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 80);
  v16 = *(a2 + 96);
  v17 = v10;
  sub_10002C0AC(a2 + 112, v26);
  v11 = *(a2 + 152);
  v14 = *(a2 + 168);
  v15 = v11;
  sub_10002C0AC(a2 + 184, &v28);
  sub_10002C0AC(a2 + 224, &v29);
  v25[0] = v17;
  v25[1] = v16;
  v27 = v14;
  *&v26[40] = v15;
  sub_10048BE84(v25, v21);
  sub_10002C0AC(a2 + 344, &v22);
  sub_10002C0AC(a2 + 384, &v23);
  sub_10002C0AC(a2 + 424, &v24);
  sub_10002A400(a2, *(a2 + 24));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  sub_1005C8AB4(a3, a1, v21);
  sub_10005FC74(a2 + 264, &v18);
  if (v19)
  {
    sub_100005A38(&v18, v20);
    sub_10002A400(v20, v20[3]);
    Measurable.measuredSize(fitting:in:)();
    sub_100007000(v20);
  }

  else
  {
    sub_10005FD2C(&v18);
  }

  sub_10002A400((a2 + 40), *(a2 + 64));
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v12(v9, v6);
  sub_10048BEE0(v21);
  sub_10048BF34(v25);
  return a3;
}

double sub_1005C8AB4(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(a3 + 23, a3[26]);
  Measurable.measuredSize(fitting:in:)();
  sub_10002A400(a3 + 18, a3[21]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  sub_10002A400(a3 + 28, a3[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 4, a3[7]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v9(v8, v5);
  }

  sub_10002A400(a3 + 33, a3[36]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 33, a3[36]);
    Measurable.measuredSize(fitting:in:)();
  }

  sub_10002A400(a3 + 28, a3[31]);
  if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
  {
    sub_10002A400(a3 + 33, a3[36]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a3 + 13, a3[16]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v9(v8, v5);
    }
  }

  return a1;
}

uint64_t sub_1005C8DFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005C8E44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005C8F1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005C8F64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1005C9004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1005C904C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1005C9110(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for PageGrid();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1005C91E4(a1, v4);
  v7 = v6;
  sub_10046DF7C(v4);
  return v7;
}

uint64_t sub_1005C91E4(uint64_t a1, id a2)
{
  v124 = a2;
  v3 = sub_10002849C(&qword_10098DB40);
  v116 = *(v3 - 8);
  __chkstk_darwin(v3);
  v115 = &v88 - v4;
  v110 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v111 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ReviewSummaryLayout();
  v113 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for DynamicTextAppearance();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v102 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v88 - v9;
  v101 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for TextAppearance();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v94 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v95 = &v88 - v13;
  __chkstk_darwin(v14);
  v96 = &v88 - v15;
  v108 = type metadata accessor for LabelPlaceholder();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v106 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v120 = &v88 - v18;
  v119 = type metadata accessor for AttributedString();
  v118 = *(v119 - 1);
  __chkstk_darwin(v119);
  v117 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for ComponentLayoutOptions();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v90 = &v88 - v22;
  v123 = type metadata accessor for ProductReview.ReviewSource();
  v23 = *(v123 - 8);
  __chkstk_darwin(v123);
  v25 = (&v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v26 - 8);
  v127 = sub_10002849C(&qword_100986DE8);
  v122 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v88 - v27;
  v28 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v28 - 8);
  v30 = &v88 - v29;
  v31 = type metadata accessor for PageGrid();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v128 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductReview();
  sub_1005CA428(&qword_100971EE0, &type metadata accessor for ProductReview);
  v34 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v125 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v89 = v3;
  sub_1000A833C(v124, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v121 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_10046DF7C(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v128, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  ItemLayoutContext.state.getter();
  v40 = v126;
  StateLens.init(_:)();
  ProductReview.source.getter();
  v41 = v123;
  v42 = (*(v23 + 88))(v25, v123);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_10006C318();
    v44 = v127;
    StateLens<A>.currentValue.getter();
    v45 = sub_10047EC1C(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v128;
    PageGrid.componentMeasuringSize(spanning:)();
    v47 = sub_100079F24();
    swift_getObjectType();
    sub_10077ADC4(v43, v45 & 1, v45 & 1, v47);

    swift_unknownObjectRelease();

    (*(v122 + 8))(v40, v44);
    return (*(v121 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v122 + 8))(v40, v127);
    (*(v121 + 8))(v128, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v48 = *v25;
  sub_10006C318();
  StateLens<A>.currentValue.getter();
  v88 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v49 = v90;
    ItemLayoutContext.componentLayoutOptions.getter();
    v50 = v91;
    static ComponentLayoutOptions.overflowed.getter();
    sub_1005CA428(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions);
    v51 = v93;
    dispatch thunk of SetAlgebra.isSuperset(of:)();
    v52 = *(v92 + 8);
    v52(v50, v51);
    v52(v49, v51);
  }

  PageGrid.componentMeasuringSize(spanning:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v53 = v134;
  v54 = v117;
  ReviewSummary.attributedBodyWithTitle.getter();
  v55 = sub_1006A1914(v54, 0, v53);
  v118[1](v54, v119);
  v56 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v55];
  v57 = [v55 length];
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v53;
  *(v58 + 32) = v56;
  *(v58 + 40) = 1;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_10010279C;
  *(v59 + 24) = v58;
  v132 = sub_1001027AC;
  v133 = v59;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v131 = &unk_1008CA7A0;
  v60 = _Block_copy(aBlock);
  v124 = v53;
  v61 = v56;

  [v55 enumerateAttributesInRange:0 options:v57 usingBlock:{0x100000, v60}];

  _Block_release(v60);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v63 = v94;
  TextAppearance.init()();
  v64 = v95;
  TextAppearance.withLineBreakMode(_:)();
  v65 = *(v97 + 8);
  v66 = v98;
  v65(v63, v98);
  TextAppearance.withNumberOfLines(_:)();
  v65(v64, v66);
  LabelPlaceholder.Options.init(rawValue:)();
  v119 = v61;
  LabelPlaceholder.init(_:with:where:)();
  v67 = ReviewSummary.subtitle.getter();
  v69 = v68;
  v70 = ReviewSummary.subtitleArtwork.getter();
  v71 = v99;
  ReviewSummary.subtitleArtworkAlignment.getter();
  v72 = sub_1006A25DC(v67, v69, v70, v71);

  (*(v100 + 8))(v71, v101);
  v118 = v72;
  isEscapingClosureAtFileLocation = v102;
  DynamicTextAppearance.init()();
  v53 = v115;
  if (qword_10096DFC0 != -1)
  {
LABEL_20:
    swift_once();
  }

  v123 = v48;
  v73 = type metadata accessor for FontUseCase();
  sub_1000056A8(v73, qword_1009D0EC0);
  DynamicTextAppearance.withFontUseCase(_:)();
  (*(v104 + 8))(isEscapingClosureAtFileLocation, v105);
  LabelPlaceholder.Options.init(rawValue:)();
  v74 = v106;
  LabelPlaceholder.init(_:with:where:)();
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v75 = v110;
  v76 = sub_1000056A8(v110, qword_1009D3418);
  (*(v109 + 16))(v111, v76, v75);
  v77 = v108;
  v131 = v108;
  v132 = &protocol witness table for LabelPlaceholder;
  v78 = sub_1000056E0(aBlock);
  v79 = v107;
  v80 = *(v107 + 16);
  v81 = v120;
  v80(v78, v120, v77);
  v129[3] = v77;
  v129[4] = &protocol witness table for LabelPlaceholder;
  v82 = sub_1000056E0(v129);
  v80(v82, v74, v77);
  v83 = v112;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  sub_1005CA428(&qword_10098DB48, &type metadata accessor for ReviewSummaryLayout);
  v84 = v114;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v85 = v124;
  v86 = v89;
  dispatch thunk of Placeable.measure(toFit:with:)();

  (*(v116 + 8))(v53, v86);
  (*(v113 + 8))(v83, v84);
  v87 = *(v79 + 8);
  v87(v74, v77);
  v87(v81, v77);
  (*(v122 + 8))(v126, v127);
  return (*(v121 + 8))(v128, v88);
}

uint64_t sub_1005CA428(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1005CA480@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.isHidden.getter();
  *a1 = result & 1;
  return result;
}

void sub_1005CA4B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v158 = a2;
  v146 = type metadata accessor for PageGrid();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v131[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = type metadata accessor for FontSource();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v131[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10002849C(&unk_1009731F0);
  v163 = *(v5 - 8);
  __chkstk_darwin(v5);
  v143 = &v131[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v157 = &v131[-v8];
  v156 = type metadata accessor for ShelfBackground();
  v162 = *(v156 - 8);
  __chkstk_darwin(v156);
  v140 = &v131[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v155 = sub_10002849C(&qword_100981220);
  __chkstk_darwin(v155);
  v165 = &v131[-v10];
  v11 = sub_10002849C(&qword_100981228);
  __chkstk_darwin(v11 - 8);
  v150 = &v131[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v161 = &v131[-v14];
  __chkstk_darwin(v15);
  v159 = &v131[-v16];
  v151 = type metadata accessor for Shelf.ContentType();
  v160 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v131[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v142 = &v131[-v19];
  __chkstk_darwin(v20);
  v136 = &v131[-v21];
  v22 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v22);
  v24 = &v131[-v23];
  v25 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v25 - 8);
  v154 = &v131[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v153 = &v131[-v28];
  __chkstk_darwin(v29);
  v31 = &v131[-v30];
  __chkstk_darwin(v32);
  v138 = &v131[-v33];
  __chkstk_darwin(v34);
  v137 = &v131[-v35];
  __chkstk_darwin(v36);
  v139 = &v131[-v37];
  __chkstk_darwin(v38);
  v40 = &v131[-v39];
  __chkstk_darwin(v41);
  v43 = &v131[-v42];
  __chkstk_darwin(v44);
  v46 = &v131[-v45];
  v47 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v47 - 8);
  v152 = &v131[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v49);
  v51 = &v131[-v50];
  __chkstk_darwin(v52);
  v54 = &v131[-v53];
  v55 = ShelfLayoutContext.isFirstShelf.getter();
  v164 = a1;
  if (v55)
  {
    LODWORD(v152) = 0;
    v56 = v5;
    v57 = v163;
    v58 = v159;
LABEL_12:
    v69 = v161;
    goto LABEL_13;
  }

  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v40, &unk_10098FFB0);
  sub_100094E74(v43, v46);
  v59 = v163;
  v60 = *(v163 + 48);
  v134 = v163 + 48;
  v133 = v60;
  v61 = v60(v46, 1, v5);
  v135 = v5;
  if (v61 == 1)
  {
    sub_10002B894(v46, &unk_10098FFB0);
    v62 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v59 + 8))(v46, v5);
    v62 = 0;
  }

  v63 = v160;
  v64 = *(v160 + 56);
  v65 = v151;
  v64(v54, v62, 1, v151);
  (*(v63 + 104))(v51, enum case for Shelf.ContentType.unifiedMessage(_:), v65);
  v64(v51, 0, 1, v65);
  v66 = *(v22 + 48);
  sub_100031660(v54, v24, &unk_100992460);
  sub_100031660(v51, &v24[v66], &unk_100992460);
  v67 = *(v63 + 48);
  if (v67(v24, 1, v65) == 1)
  {
    sub_10002B894(v51, &unk_100992460);
    sub_10002B894(v54, &unk_100992460);
    v68 = v67(&v24[v66], 1, v65);
    v58 = v159;
    if (v68 == 1)
    {
      sub_10002B894(v24, &unk_100992460);
      v56 = v135;
      v69 = v161;
      goto LABEL_40;
    }

LABEL_11:
    sub_10002B894(v24, &qword_100975F10);
    LODWORD(v152) = 1;
    v56 = v135;
    v57 = v163;
    goto LABEL_12;
  }

  v70 = v152;
  sub_100031660(v24, v152, &unk_100992460);
  if (v67(&v24[v66], 1, v65) == 1)
  {
    sub_10002B894(v51, &unk_100992460);
    sub_10002B894(v54, &unk_100992460);
    (*(v160 + 8))(v70, v65);
    v58 = v159;
    goto LABEL_11;
  }

  v122 = v160;
  v123 = v136;
  (*(v160 + 32))(v136, &v24[v66], v65);
  sub_1005CC8CC(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  v132 = dispatch thunk of static Equatable.== infix(_:_:)();
  v124 = *(v122 + 8);
  v124(v123, v65);
  sub_10002B894(v51, &unk_100992460);
  sub_10002B894(v54, &unk_100992460);
  v124(v152, v65);
  sub_10002B894(v24, &unk_100992460);
  v56 = v135;
  v58 = v159;
  v69 = v161;
  if ((v132 & 1) == 0)
  {
    LODWORD(v152) = 1;
    v57 = v163;
    goto LABEL_13;
  }

LABEL_40:
  v125 = v137;
  v126 = v138;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v126, &unk_10098FFB0);
  v127 = v139;
  sub_100094E74(v125, v139);
  v128 = v133(v127, 1, v56);
  v57 = v163;
  if (v128 == 1)
  {
    sub_10002B894(v127, &unk_10098FFB0);
    v129 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v130 = LOBYTE(v166[0]);
    (*(v57 + 8))(v127, v56);
    v129 = v130 ^ 1;
  }

  LODWORD(v152) = v129;
LABEL_13:
  v71 = v153;
  v72 = v154;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v72, &unk_10098FFB0);
  sub_100094E74(v71, v31);
  if ((*(v57 + 48))(v31, 1, v56) == 1)
  {
    sub_10002B894(v31, &unk_10098FFB0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v57 + 8))(v31, v56);
    v73 = 0;
  }

  v74 = v162;
  v75 = *(v162 + 56);
  v76 = v156;
  v75(v58, v73, 1, v156);
  (*(v74 + 104))(v69, enum case for ShelfBackground.none(_:), v76);
  v75(v69, 0, 1, v76);
  v77 = *(v155 + 48);
  v78 = v165;
  sub_100031660(v58, v165, &qword_100981228);
  v79 = v78;
  sub_100031660(v69, &v78[v77], &qword_100981228);
  v80 = v74;
  v81 = v69;
  v82 = *(v80 + 48);
  if (v82(v79, 1, v76) == 1)
  {
    sub_10002B894(v81, &qword_100981228);
    v83 = v165;
    sub_10002B894(v58, &qword_100981228);
    if (v82(&v83[v77], 1, v76) == 1)
    {
      sub_10002B894(v83, &qword_100981228);
      v84 = 1;
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v85 = v150;
  sub_100031660(v79, v150, &qword_100981228);
  if (v82((v79 + v77), 1, v76) == 1)
  {
    sub_10002B894(v161, &qword_100981228);
    v83 = v165;
    sub_10002B894(v58, &qword_100981228);
    (*(v162 + 8))(v85, v76);
LABEL_21:
    sub_10002B894(v83, &qword_100981220);
    v84 = 0;
    goto LABEL_23;
  }

  v86 = v85;
  v87 = v162;
  v88 = v79 + v77;
  v89 = v140;
  (*(v162 + 32))(v140, v88, v76);
  sub_1005CC8CC(&qword_100981230, &type metadata accessor for ShelfBackground);
  v90 = v79;
  v84 = dispatch thunk of static Equatable.== infix(_:_:)();
  v91 = *(v87 + 8);
  v91(v89, v76);
  sub_10002B894(v161, &qword_100981228);
  sub_10002B894(v159, &qword_100981228);
  v91(v86, v76);
  sub_10002B894(v90, &qword_100981228);
LABEL_23:
  v92 = v157;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v93 = *(v57 + 8);
  v93(v92, v56);
  v94 = v166[0];
  if (v166[0])
  {
  }

  v95 = ShelfLayoutContext.traitCollection.getter();
  v96 = UITraitCollection.isSizeClassRegular.getter();

  if (!(v152 & 1 | (v94 != 0)))
  {
    if (v96)
    {
      v102 = v147;
      *v147 = UIFontTextStyleBody;
      v103 = v148;
      v104 = v149;
      (*(v148 + 104))(v102, enum case for FontSource.textStyle(_:), v149);
      v105 = type metadata accessor for StaticDimension();
      v106 = v158;
      v158[3] = v105;
      v106[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(v106);
      v166[3] = v104;
      v166[4] = &protocol witness table for FontSource;
      v107 = sub_1000056E0(v166);
      (*(v103 + 16))(v107, v102, v104);
      v108 = UIFontTextStyleBody;
      StaticDimension.init(_:scaledLike:)();
      (*(v103 + 8))(v102, v104);
      return;
    }

    goto LABEL_38;
  }

  if (!(v84 & 1 | (v94 != 0)))
  {
    v109 = v144;
    ShelfLayoutContext.contentPageGrid.getter();
    PageGrid.interRowSpace.getter();
    v111 = v110;
    (*(v145 + 8))(v109, v146);
    v112 = v158;
    v158[3] = &type metadata for CGFloat;
    v112[4] = &protocol witness table for CGFloat;
    *v112 = v111;
    return;
  }

  v97 = v143;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v98 = v142;
  ReadOnlyLens.subscript.getter();

  v93(v97, v56);
  v99 = v141;
  v100 = v151;
  (*(v160 + 104))(v141, enum case for Shelf.ContentType.unifiedMessage(_:), v151);
  sub_1005CC8CC(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v166[0] == v166[5] && v166[1] == v166[6])
  {
    v101 = *(v160 + 8);
    v101(v99, v100);
    v101(v98, v100);
  }

  else
  {
    v113 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v114 = *(v160 + 8);
    v114(v99, v100);
    v114(v98, v100);

    if ((v113 & 1) == 0)
    {
LABEL_38:
      v121 = v158;
      v158[3] = &type metadata for Double;
      v121[4] = &protocol witness table for Double;
      *v121 = 0;
      return;
    }
  }

  v115 = ShelfLayoutContext.traitCollection.getter();
  v116 = UITraitCollection.isSizeClassCompact.getter();

  if ((v116 & 1) == 0)
  {
    goto LABEL_38;
  }

  if (qword_10096E6D0 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for StaticDimension();
  v118 = sub_1000056A8(v117, qword_1009D2490);
  v119 = v158;
  v158[3] = v117;
  v119[4] = &protocol witness table for StaticDimension;
  v120 = sub_1000056E0(v119);
  (*(*(v117 - 8) + 16))(v120, v118, v117);
}

uint64_t sub_1005CB8B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v145 = a2;
  v116 = type metadata accessor for PageGrid();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v114 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for FloatingPointRoundingRule();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for FontSource();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = (&v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v146 = type metadata accessor for ShelfBackground();
  v141 = *(v146 - 8);
  __chkstk_darwin(v146);
  v123 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v114 - v8;
  __chkstk_darwin(v9);
  v138 = &v114 - v10;
  __chkstk_darwin(v11);
  v131 = &v114 - v12;
  v13 = sub_10002849C(&unk_10098FFB0);
  __chkstk_darwin(v13 - 8);
  v137 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v136 = &v114 - v16;
  __chkstk_darwin(v17);
  v140 = &v114 - v18;
  __chkstk_darwin(v19);
  v130 = &v114 - v20;
  __chkstk_darwin(v21);
  v128 = (&v114 - v22);
  __chkstk_darwin(v23);
  v25 = &v114 - v24;
  v26 = type metadata accessor for Shelf.ContentType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v142 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v143 = &v114 - v30;
  __chkstk_darwin(v31);
  v33 = &v114 - v32;
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10002849C(&unk_1009731F0);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v139 = &v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v129 = &v114 - v41;
  __chkstk_darwin(v42);
  v44 = &v114 - v43;
  v150 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v45 = *(v38 + 8);
  v147 = v37;
  v148 = v45;
  v46 = v37;
  v47 = v38 + 8;
  v45(v44, v46);
  v48 = *(v27 + 104);
  v135 = v27 + 104;
  v134 = v48;
  v48(v33, enum case for Shelf.ContentType.todayCard(_:), v26);
  v49 = sub_1005CC8CC(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v149 = v26;
  v133 = v49;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v151 == v155 && v152 == v156)
  {
    v122 = 1;
  }

  else
  {
    v122 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v50 = *(v27 + 8);
  v51 = v33;
  v52 = v149;
  v50(v51, v149);
  v132 = v50;
  v50(v36, v52);

  v53 = v128;
  v54 = v130;
  ShelfLayoutContext.surroundingShelves.getter();
  sub_10002B894(v53, &unk_10098FFB0);
  sub_100094E74(v54, v25);
  v55 = *(v38 + 48);
  v56 = v147;
  v130 = (v38 + 48);
  v128 = v55;
  v57 = v55(v25, 1, v147);
  v144 = v27 + 8;
  if (v57 == 1)
  {
    sub_10002B894(v25, &unk_10098FFB0);
    v117 = 0;
    v58 = v146;
    v59 = v141;
    v60 = v131;
    v61 = v148;
  }

  else
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v62 = v151;
    v61 = v148;
    v148(v25, v56);
    v58 = v146;
    v59 = v141;
    v60 = v131;
    if (v62)
    {

      v117 = 1;
    }

    else
    {
      v117 = 0;
    }
  }

  v63 = v129;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v64 = v147;
  ReadOnlyLens.subscript.getter();

  v61(v63, v64);
  v65 = *(v59 + 104);
  v66 = v138;
  LODWORD(v141) = enum case for ShelfBackground.none(_:);
  v131 = v65;
  (v65)(v138);
  v129 = sub_1005CC8CC(&qword_100981230, &type metadata accessor for ShelfBackground);
  v121 = dispatch thunk of static Equatable.== infix(_:_:)();
  v67 = *(v59 + 8);
  v67(v66, v58);
  v67(v60, v58);
  v146 = v47;
  v68 = v136;
  v69 = v137;
  ShelfLayoutContext.surroundingShelves.getter();
  v70 = v68;
  v71 = v64;
  sub_10002B894(v70, &unk_10098FFB0);
  v72 = v140;
  sub_100094E74(v69, v140);
  if (v128(v72, 1, v64) == 1)
  {
    sub_10002B894(v72, &unk_10098FFB0);
    v73 = 1;
  }

  else
  {
    swift_getKeyPath();
    v74 = v123;
    ReadOnlyLens.subscript.getter();

    v148(v72, v64);
    v75 = v124;
    (*(v59 + 32))(v124, v74, v58);
    (v131)(v60, v141, v58);
    v73 = dispatch thunk of static Equatable.== infix(_:_:)();
    v67(v60, v58);
    v67(v75, v58);
  }

  v76 = v143;
  v77 = ShelfLayoutContext.traitCollection.getter();
  v78 = UITraitCollection.isSizeClassRegular.getter();

  v79 = v139;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v148(v79, v71);
  v80 = v142;
  v134(v142, enum case for Shelf.ContentType.unifiedMessage(_:), v149);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v151 == v155 && v152 == v156)
  {
    v81 = v80;
    v82 = v149;
    v83 = v132;
    v132(v81, v149);
    v83(v76, v82);

LABEL_17:
    v87 = v125;
    *v125 = UIFontTextStyleBody;
    v88 = v126;
    v89 = v127;
    (*(v126 + 104))(v87, enum case for FontSource.textStyle(_:), v127);
    v90 = type metadata accessor for StaticDimension();
    v91 = v145;
    v145[3] = v90;
    v91[4] = &protocol witness table for StaticDimension;
    sub_1000056E0(v91);
    v153 = v89;
    v154 = &protocol witness table for FontSource;
    v92 = sub_1000056E0(&v151);
    (*(v88 + 16))(v92, v87, v89);
    v93 = UIFontTextStyleBody;
    StaticDimension.init(_:scaledLike:)();
    return (*(v88 + 8))(v87, v89);
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v85 = v149;
  v86 = v132;
  v132(v80, v149);
  v86(v76, v85);

  if (v84)
  {
    goto LABEL_17;
  }

  if ((v122 & 1) == 0)
  {
LABEL_23:
    v99 = type metadata accessor for StaticDimension();
    v100 = v145;
    v145[3] = v99;
    v100[4] = &protocol witness table for StaticDimension;
    v101 = sub_1000056E0(v100);
    if (v78)
    {
      if (qword_10096E6B8 != -1)
      {
        swift_once();
      }

      v102 = qword_1009D2448;
    }

    else
    {
      if (qword_10096E6B0 != -1)
      {
        swift_once();
      }

      v102 = qword_1009D2430;
    }

    v103 = sub_1000056A8(v99, v102);
    return (*(*(v99 - 8) + 16))(v101, v103, v99);
  }

  if (v121 & v73)
  {
    if (v117)
    {
      if (v78)
      {
        v95 = v114;
        ShelfLayoutContext.contentPageGrid.getter();
        PageGrid.interRowSpace.getter();
        v97 = v96;
        result = (*(v115 + 8))(v95, v116);
        v98 = v145;
        v145[3] = &type metadata for CGFloat;
        v98[4] = &protocol witness table for CGFloat;
        *v98 = v97;
      }

      else
      {
        if (qword_10096E6C0 != -1)
        {
          swift_once();
        }

        v110 = type metadata accessor for StaticDimension();
        v111 = sub_1000056A8(v110, qword_1009D2460);
        v112 = v145;
        v145[3] = v110;
        v112[4] = &protocol witness table for StaticDimension;
        v113 = sub_1000056E0(v112);
        return (*(*(v110 - 8) + 16))(v113, v111, v110);
      }

      return result;
    }

    goto LABEL_23;
  }

  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for StaticDimension();
  sub_1000056A8(v104, qword_1009D2448);
  v105 = ShelfLayoutContext.traitCollection.getter();
  v106 = v118;
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v108 = v107;

  result = (*(v119 + 8))(v106, v120);
  v109 = v145;
  v145[3] = &type metadata for CGFloat;
  v109[4] = &protocol witness table for CGFloat;
  *v109 = v108 + v108;
  return result;
}

uint64_t sub_1005CC8CC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1005CC914(char a1)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v1;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "setEnabled:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, "isEnabled"))
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.4;
  }

  [v4 setAlpha:v5];
  v6 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView];
  v9.receiver = v1;
  v9.super_class = ObjectType;
  if (objc_msgSendSuper2(&v9, "isEnabled"))
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.4;
  }

  return [v6 setAlpha:v7];
}

id sub_1005CC9EC()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_10098DB50 = result;
  return result;
}

id sub_1005CCA30()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_10098DB58 = result;
  return result;
}

void sub_1005CCB1C()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v7.receiver = v0;
  v7.super_class = ObjectType;
  [v2 setHidden:{objc_msgSendSuper2(&v7, "isSelected") ^ 1}];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel];
  v6.receiver = v0;
  v6.super_class = ObjectType;
  if (objc_msgSendSuper2(&v6, "isSelected"))
  {
    v4 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_100005744(0, &qword_100970180);
    v4 = static UIColor.primaryText.getter();
  }

  v5 = v4;
  [v3 setTextColor:v4];
}

uint64_t sub_1005CCC68@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for Resize.Rule();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v36 = type metadata accessor for HorizontalStack();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v30 - v16;
  HorizontalStack.init(with:)();
  v30 = *(v1 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = type metadata accessor for ArtworkView();
  v49 = sub_1005CE3CC();
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v9 + 3) = &type metadata for CGFloat;
  *(v9 + 4) = &protocol witness table for CGFloat;
  *v9 = 0x4046000000000000;
  v19(v9, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = type metadata accessor for Resize();
  v52 = &protocol witness table for Resize;
  sub_1000056E0(v50);
  v21 = v30;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v22 = v32;
  HorizontalStack.adding(_:with:)();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v14, v36);
  sub_100007000(v50);
  v25 = *(v33 + OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = type metadata accessor for DynamicTypeLabel();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_1000056E0(v50);
  v26 = v25;
  HorizontalStack.adding(_:with:)();
  v23(v22, v24);
  sub_100007000(v47);
  v49 = &protocol witness table for CGFloat;
  v48 = &type metadata for CGFloat;
  v46 = &protocol witness table for CGFloat;
  v47[0] = 0x4024000000000000;
  v45 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  v44 = 0x4024000000000000;
  v42 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  v41 = 0x4024000000000000;
  v39 = &type metadata for CGFloat;
  v38 = 0x4024000000000000;
  v27 = type metadata accessor for Margins();
  v28 = v37;
  v37[3] = v27;
  v28[4] = &protocol witness table for Margins;
  sub_1000056E0(v28);
  return Margins.init(_:top:leading:bottom:trailing:)();
}

id sub_1005CD1C8()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  sub_1005CCC68(v7);
  sub_10002A400(v7, v7[3]);
  LayoutMarginsAware<>.layoutFrame.getter();
  v2 = [v0 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  sub_100007000(v7);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v4 bounds];
  return [v5 setFrame:?];
}

void sub_1005CD4C8(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_10096EA60 != -1)
  {
    swift_once();
  }

  v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10098DB50 timingParameters:0.08];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v7[4] = sub_1005CE83C;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007A08;
  v7[3] = &unk_1008CA860;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 addAnimations:v5];
  _Block_release(v5);
  [v3 startAnimation];
}

double sub_1005CD888()
{
  sub_1005CCC68(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

char *sub_1005CD930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CornerStyle();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_100981210);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = type metadata accessor for AutomationSemantics();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = type metadata accessor for FontUseCase();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  type metadata accessor for ShadowView();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v25] = static ArtworkView.iconArtworkView.getter();
  v26 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  type metadata accessor for RoundedCornerView();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  *(v28 + 1) = v29;
  *&v4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = ArcadeDownloadPackCategory.id.getter();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  static AutomationSemantics.shelfItem(itemKind:id:parentId:)();
  sub_10003D444(v92);
  sub_10003D444(v93);
  UIView.setAutomationSemantics(_:)();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  ArtworkView.placeholderColor.setter();

  v83 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_10096DAC0;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = type metadata accessor for Shadow();
    v46 = sub_1000056A8(v45, qword_1009CFEA0);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    dispatch thunk of ShadowView.shadow.setter();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    dispatch thunk of ShadowView.setCorner(radius:style:)();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_100005744(0, &qword_100970180);
    v58 = v57;
    v59 = static UIColor.placeholderBackgroundStandout.getter();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    ArcadeDownloadPackCategory.title.getter();
    v64 = String._bridgeToObjectiveC()();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = static UIColor.primaryText.getter();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_10002849C(&qword_100973210);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_1007B15F0;
    v70 = v68;
    *(v69 + 32) = ArcadeDownloadPackCategory.gradientStartColor.getter();
    *(v69 + 40) = ArcadeDownloadPackCategory.gradientEndColor.getter();
    *&v70[OBJC_IVAR____TtC8AppStore12GradientView_colors] = v69;

    sub_1001C0CEC();

    v71 = [v30 subviews];
    sub_100005744(0, &qword_100972EB0);
    v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_4:
    v35 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v73 = *(v72 + 8 * v35 + 32);
      }

      v74 = v73;
      v75 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v73 setUserInteractionEnabled:0];

      ++v35;
      if (v75 == v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_10002849C(&qword_10097B110);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007B10D0;
  *(v77 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v93);
  return v78;
}

unint64_t sub_1005CE3CC()
{
  result = qword_100989780;
  if (!qword_100989780)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989780);
  }

  return result;
}

void sub_1005CE424()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_titleLabel;
  *v8 = UIFontTextStyleSubheadline;
  *(v8 + 1) = UIFontWeightSemibold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  v11 = type metadata accessor for FontUseCase();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v13 = UIFontTextStyleSubheadline;
  *(v1 + v9) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v14 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_shadowView;
  type metadata accessor for ShadowView();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_artworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v15) = static ArtworkView.iconArtworkView.getter();
  v16 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_backgroundView;
  type metadata accessor for RoundedCornerView();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005CE6F4(void *a1)
{
  if (qword_10096EA68 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10098DB58 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_10049C8D4;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100007A08;
  v6[3] = &unk_1008CA810;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

unint64_t sub_1005CE84C(uint64_t a1, uint64_t a2)
{
  v118 = a2;
  v123 = a1;
  v3 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v3 - 8);
  v115 = v106 - v4;
  v5 = sub_10002849C(&unk_100982AB0);
  __chkstk_darwin(v5 - 8);
  v7 = v106 - v6;
  v8 = type metadata accessor for NavigationTab();
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
  v19 = sub_10002849C(&qword_100975528);
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
  v121 = OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v33 = [Strong tabBar];

  v34 = [v33 items];
  if (!v34)
  {
    goto LABEL_12;
  }

  v109 = v7;
  sub_100005744(0, &qword_100982AC0);
  v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((Array.isNotEmpty.getter() & 1) == 0)
  {

LABEL_12:
    sub_10002849C(&qword_1009764A0);
    v45 = v122;
    TabChangeAction.navigationTab.getter();
    v46 = NavigationTab.rawValue.getter();
    v48 = v47;
    (*(v9 + 8))(v45, v8);
    sub_1005D01A8();
    swift_allocError();
    *v49 = v46;
    v49[1] = v48;
    return Promise.__allocating_init(error:)();
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
    v39 = _CocoaArrayWrapper.endIndex.getter();
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

        NavigationTab.init(intValue:)();
        v41 = v111;
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_61;
    }

    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v43 = v120;
    goto LABEL_10;
  }

  NavigationTab.init(intValue:)();
  v29 = v26;
  v41 = v111;
  v42 = v112;
  v43 = v120;
LABEL_15:
  sub_10002B894(v43, &qword_100975528);
  sub_1005D055C(v29, v43);
  sub_100127D74(v43, v23);
  v39 = *(v42 + 48);
  if (v39(v23, 1, v41) == 1)
  {

    sub_10002B894(v23, &qword_100975528);
    sub_10002849C(&qword_1009764A0);
    v51 = v122;
    TabChangeAction.navigationTab.getter();
    v52 = NavigationTab.rawValue.getter();
    v54 = v53;
    (*(v42 + 8))(v51, v41);
    sub_1005D01A8();
    swift_allocError();
    *v55 = v52;
    v55[1] = v54;
    v56 = Promise.__allocating_init(error:)();
    sub_10002B894(v43, &qword_100975528);
    return v56;
  }

  v108 = v2;
  v57 = *(v42 + 32);
  v58 = v119;
  v106[1] = v42 + 32;
  v106[0] = v57;
  v57(v119, v23, v41);
  v59 = v116;
  TabChangeAction.navigationTab.getter();
  v60 = (*(v42 + 88))(v59, v41);
  if (v60 == enum case for NavigationTab.infer(_:))
  {
    v61 = v122;
    v116 = *(v42 + 104);
    (v116)(v122, enum case for NavigationTab.search(_:), v41);
    v62 = static NavigationTab.== infix(_:_:)();
    v63 = v41;
    v64 = *(v42 + 8);
    v64(v61, v41);
    if ((v62 & 1) == 0)
    {
      v61 = v122;
      (v116)(v122, enum case for NavigationTab.loading(_:), v41);
      v62 = static NavigationTab.== infix(_:_:)();
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
      result = _CocoaArrayWrapper.endIndex.getter();
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
      v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_31:
      v69 = v68;
      [v68 tag];
      NavigationTab.init(intValue:)();

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
    TabChangeAction.navigationTab.getter();
    v66 = v112;
    (*(v112 + 8))(v59, v41);
  }

  v67 = v118;
LABEL_35:
  type metadata accessor for MetricsActivity();
  static MetricsActivity.current.getter();
  NavigationTab.pageContext.getter();
  dispatch thunk of MetricsActivity.changeContext(_:)();

  v73 = [objc_opt_self() standardUserDefaults];
  v63 = *(v66 + 16);
  v63(v122, v42, v41);
  v74 = v109;
  StoreTab.Identifier.init(navigationTab:)();
  sub_100736DBC(v74);

  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  BaseObjectGraph.optional<A>(_:)();
  v75 = aBlock[0];
  if (aBlock[0])
  {
    dispatch thunk of AppStoreOnDeviceRecommendationsManager.loadInferences(for:)();
  }

  sub_10002849C(&qword_1009764A0);
  v116 = Promise.__allocating_init()();
  v76 = swift_unknownObjectUnownedLoadStrong();
  v61 = [v76 presentedViewController];

  if (!v61)
  {
    goto LABEL_40;
  }

  if ([v61 isBeingDismissed])
  {

LABEL_40:
    v77 = TabChangeAction.popToRoot.getter();
    v78 = TabChangeAction.actions.getter();
    sub_1005CF7F4(v42, v110, v77 & 1, v78, v67);

    v79 = v116;
    Promise.pipe(to:)();

    v80 = v111;
    v81 = *(v112 + 8);
    v81(v42, v111);
    v81(v119, v80);
    sub_10002B894(v120, &qword_100975528);
    return v79;
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v64 = aBlock[0];
  type metadata accessor for ArticleContainerViewController();
  v62 = swift_dynamicCastClass();
  result = TabChangeAction.actions.getter();
  if (!(result >> 62))
  {
    v82 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_43;
  }

LABEL_64:
  v105 = result;
  v82 = _CocoaArrayWrapper.endIndex.getter();
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
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_47;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_67;
  }

  v85 = v64;

LABEL_47:

  type metadata accessor for FlowAction();
  if (swift_dynamicCastClass())
  {
    FlowAction.pageUrl.getter();

    v83 = v111;
    v64 = v85;
    v62 = v114;
    goto LABEL_52;
  }

  v83 = v111;
  v64 = v85;
  v62 = v114;
LABEL_51:
  v86 = type metadata accessor for URL();
  (*(*(v86 - 8) + 56))(v84, 1, 1, v86);
LABEL_52:
  v87 = static ResilientDeepLinkController.preventDismissingArticlesForFlowUrl(_:bag:)();
  if (v62 && (v87 & 1) != 0)
  {
    v88 = TabChangeAction.popToRoot.getter();
    v89 = TabChangeAction.actions.getter();
    sub_1005CF7F4(v42, v110, v88 & 1, v89, v118);

    Promise.pipe(to:)();

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
    aBlock[4] = sub_1005D05CC;
    aBlock[5] = v99;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100007A08;
    aBlock[3] = &unk_1008CA8B0;
    v101 = _Block_copy(aBlock);
    v102 = v100;
    v83 = v111;

    v90 = v117;

    v103 = v114;
    [v114 dismissViewControllerAnimated:1 completion:v101];
    _Block_release(v101);
  }

  sub_10002B894(v115, &qword_100982460);
  v104 = *(v91 + 8);
  v104(v90, v83);
  v104(v119, v83);
  sub_10002B894(v120, &qword_100975528);
  return v116;
}

uint64_t sub_1005CF754(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = TabChangeAction.popToRoot.getter();
  v9 = TabChangeAction.actions.getter();
  sub_1005CF7F4(a2, a3, v8 & 1, v9, a5);

  Promise.pipe(to:)();
}

uint64_t sub_1005CF7F4(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v10 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v10 - 8);
  v55 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&qword_10098DC00);
  __chkstk_darwin(v72);
  v13 = v53 - v12;
  v14 = sub_10002849C(&qword_100975528);
  __chkstk_darwin(v14 - 8);
  v65 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = v53 - v17;
  __chkstk_darwin(v18);
  v66 = v53 - v19;
  v20 = type metadata accessor for NavigationTab();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v24, enum case for NavigationTab.loading(_:), v20, v22);
  v73 = a1;
  v25 = static NavigationTab.== infix(_:_:)();
  v26 = *(v21 + 8);
  v61 = v24;
  v63 = v26;
  v64 = v21 + 8;
  v26(v24, v20);
  v53[1] = OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_rootTabBarController;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v28 = Strong;
  v56 = a4;
  v57 = a5;
  v60 = v5;
  if (v25)
  {
    v29 = *(v5 + OBJC_IVAR____TtC8AppStore29TabChangeActionImplementation_loadingNavigationController);
    [Strong setTransientViewController:v29 animated:0];

    sub_100005744(0, &qword_1009711C0);
    v30.super.isa = Array._bridgeToObjectiveC()().super.isa;
    [v29 setViewControllers:v30.super.isa];
    goto LABEL_3;
  }

  [Strong setTransientViewController:0 animated:0];

  v74 = a2;
  if (a2 >> 62)
  {
LABEL_26:
    v31 = _CocoaArrayWrapper.endIndex.getter();
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
    v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v37 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_20;
    }

LABEL_13:
    v75 = v36;
    [v36 tag];
    NavigationTab.init(intValue:)();
    v38 = v76;
    (*v69)(v76, v73, v20);
    (*v68)(v38, 0, 1, v20);
    v21 = *(v72 + 48);
    sub_100127D74(v32, v13);
    sub_100127D74(v38, &v13[v21]);
    v39 = *v34;
    if ((*v34)(v13, 1, v20) == 1)
    {
      sub_10002B894(v76, &qword_100975528);
      sub_10002B894(v32, &qword_100975528);
      v35 = v39(&v13[v21], 1, v20);
      v24 = v75;
      if (v35 == 1)
      {
        goto LABEL_21;
      }

      goto LABEL_8;
    }

    v40 = v65;
    sub_100127D74(v13, v65);
    if (v39(&v13[v21], 1, v20) == 1)
    {
      sub_10002B894(v76, &qword_100975528);
      v21 = v66;
      sub_10002B894(v66, &qword_100975528);
      v41 = v40;
      v32 = v21;
      v63(v41, v20);
      v24 = v75;
LABEL_8:
      sub_10002B894(v13, &qword_10098DC00);
      goto LABEL_9;
    }

    v42 = v61;
    (*v59)(v61, &v13[v21], v20);
    sub_1005D04C0(&unk_10098DC10, &type metadata accessor for NavigationTab);
    v62 = dispatch thunk of static Equatable.== infix(_:_:)();
    v21 = v63;
    v63(v42, v20);
    sub_10002B894(v76, &qword_100975528);
    v43 = v66;
    sub_10002B894(v66, &qword_100975528);
    v44 = v40;
    v32 = v43;
    (v21)(v44, v20);
    v34 = v58;
    sub_10002B894(v13, &qword_100975528);
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
  sub_10002B894(v13, &qword_100975528);
LABEL_22:
  v45 = swift_unknownObjectUnownedLoadStrong();
  [v45 setSelectedIndex:v33];

  v30.super.isa = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for StoreTabBarController();
  if (swift_dynamicCastClass())
  {
    sub_1001F5D40(v33);

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

    static ActionMetrics.notInstrumented.getter();
    type metadata accessor for CompoundAction();
    swift_allocObject();
    v49 = CompoundAction.init(title:actions:presentationStyle:actionMetrics:)();
    v50 = sub_1005D022C(v49, 1, v57, sub_1005FA21C);

    return v50;
  }

  else
  {
    sub_10002849C(&qword_1009764A0);
    sub_1005D01A8();
    swift_allocError();
    *v52 = 0;
    v52[1] = 0;
    return Promise.__allocating_init(error:)();
  }
}

id sub_1005D0094()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TabChangeActionImplementation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1005D01A8()
{
  result = qword_10098DC08;
  if (!qword_10098DC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DC08);
  }

  return result;
}

uint64_t sub_1005D022C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t, char *))
{
  v8 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_10002849C(&unk_100974490);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - v13;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B894(v10, &unk_100972A00);
    sub_10002849C(&qword_1009764A0);
    sub_1005D0508();
    swift_allocError();
    *v15 = 1;
    return Promise.__allocating_init(error:)();
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v17 = a4(a1, a2 & 1, a3, v14);
    (*(v12 + 8))(v14, v11);
    return v17;
  }
}

uint64_t sub_1005D04C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1005D0508()
{
  result = qword_10098DC20;
  if (!qword_10098DC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098DC20);
  }

  return result;
}

uint64_t sub_1005D055C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100975528);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005D05CC()
{
  v1 = *(type metadata accessor for NavigationTab() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1005CF754(v5, v0 + v2, v6, v7, v8);
}

uint64_t sub_1005D0680(uint64_t a1, unsigned int a2)
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

uint64_t sub_1005D06D0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1005D0724(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1005D073C(void *result, int a2)
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

double sub_1005D0788(uint64_t a1, int a2, int a3, void *a4)
{
  v161 = a4;
  v156 = a3;
  v169 = a2;
  v5 = sub_10002849C(&qword_1009964B0);
  v165 = *(v5 - 8);
  v166 = v5;
  __chkstk_darwin(v5);
  v164 = v148 - v6;
  v7 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  v157 = *(v7 - 8);
  v158 = v7;
  __chkstk_darwin(v7);
  v159 = v148 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductReviewCustomLayout();
  v10 = *(v9 - 8);
  v162 = v9;
  v163 = v10;
  __chkstk_darwin(v9);
  v160 = v148 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LabelPlaceholder();
  v167 = *(v12 - 8);
  v168 = v12;
  __chkstk_darwin(v12);
  v175 = v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v184 = v148 - v15;
  __chkstk_darwin(v16);
  v185 = v148 - v17;
  __chkstk_darwin(v18);
  v186 = v148 - v19;
  __chkstk_darwin(v20);
  v187 = v148 - v21;
  __chkstk_darwin(v22);
  v183 = v148 - v23;
  __chkstk_darwin(v24);
  v188 = v148 - v25;
  __chkstk_darwin(v26);
  v177 = v148 - v27;
  v28 = type metadata accessor for DynamicTextAppearance();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v154 = v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v155 = v148 - v32;
  __chkstk_darwin(v33);
  v35 = v148 - v34;
  __chkstk_darwin(v36);
  v182 = v148 - v37;
  __chkstk_darwin(v38);
  v151 = v148 - v39;
  __chkstk_darwin(v40);
  v152 = v148 - v41;
  __chkstk_darwin(v42);
  v174 = v148 - v43;
  __chkstk_darwin(v44);
  v149 = v148 - v45;
  __chkstk_darwin(v46);
  v150 = v148 - v47;
  __chkstk_darwin(v48);
  v179 = v148 - v49;
  __chkstk_darwin(v50);
  v180 = v148 - v51;
  __chkstk_darwin(v52);
  v181 = v148 - v53;
  __chkstk_darwin(v54);
  v189 = v148 - v55;
  __chkstk_darwin(v56);
  v58 = v148 - v57;
  __chkstk_darwin(v59);
  v173 = v148 - v60;
  __chkstk_darwin(v61);
  v63 = v148 - v62;
  __chkstk_darwin(v64);
  v66 = v148 - v65;
  __chkstk_darwin(v67);
  v69 = v148 - v68;
  __chkstk_darwin(v70);
  v178 = v148 - v71;
  v72 = Review.response.getter();
  if (v72)
  {
  }

  v170 = v72;
  v176 = v58;
  v191 = a1;
  v172 = v35;
  DynamicTextAppearance.init()();
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v192 = type metadata accessor for FontUseCase();
  sub_1000056A8(v192, qword_1009D0D28);
  DynamicTextAppearance.withFontUseCase(_:)();
  v73 = v29;
  v76 = *(v29 + 8);
  v74 = v29 + 8;
  v75 = v76;
  v76(v63, v28);
  v77 = v28;
  v78 = v169;
  v148[3] = ~v169;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v76(v66, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v148[2] = v81;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v194 = v75;
  v195 = v74;
  v75(v69, v77);
  v82 = Review.title.getter();
  if (v82)
  {
    v83 = v82;
    LanguageAwareString.string.getter();
  }

  v84 = *(v73 + 16);
  v190 = v73 + 16;
  v193 = v84;
  v84(v63, v178, v77);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v153 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v171 = LayoutViewPlaceholder.init(measureWith:)();
  v85 = v189;
  DynamicTextAppearance.init()();
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v86 = sub_1000056A8(v192, qword_1009D0D70);
  v87 = v176;
  v148[1] = v86;
  DynamicTextAppearance.withFontUseCase(_:)();
  v88 = v194;
  v194(v85, v80);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v88(v87, v80);
  v89 = v173;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v88(v63, v80);
  Review.dateText.getter();
  v90 = v89;
  v91 = v193;
  v193(v63, v90, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  v92 = v189;
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v192, qword_1009D0D88);
  DynamicTextAppearance.withFontUseCase(_:)();
  v88(v92, v80);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v88(v87, v80);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v88(v63, v80);
  v93 = Review.reviewerName.getter();
  if (v93)
  {
    v94 = v93;
    LanguageAwareString.string.getter();

    v91 = v193;
  }

  v91(v63, v181, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v95 = v189;
  DynamicTextAppearance.init()();
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v192, qword_1009D0DA0);
  v96 = v176;
  DynamicTextAppearance.withFontUseCase(_:)();
  v97 = v194;
  v194(v95, v80);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v97(v96, v80);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v97(v63, v80);
  v98 = Review.dateAuthorText.getter();
  if (v98)
  {
    v99 = v98;
    LanguageAwareString.string.getter();

    v193(v63, v180, v80);
  }

  else
  {
    v91(v63, v180, v80);
  }

  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v100 = sub_1000056A8(v192, qword_1009D0D58);
  v101 = v149;
  v148[0] = v100;
  DynamicTextAppearance.withFontUseCase(_:)();
  v102 = v194;
  v194(v63, v80);
  v103 = v150;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v102(v101, v80);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v102(v103, v80);
  v104 = Review.contents.getter();
  if (v104)
  {
    v105 = v104;
    LanguageAwareString.string.getter();
  }

  v106 = v193;
  v193(v63, v179, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v107 = v192;
  if (qword_10096DF40 != -1)
  {
    v147 = v192;
    swift_once();
    v107 = v147;
  }

  sub_1000056A8(v107, qword_1009D0D40);
  v108 = v151;
  DynamicTextAppearance.withFontUseCase(_:)();
  v109 = v194;
  v194(v63, v80);
  v110 = v152;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v109(v108, v80);
  v111 = v174;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v109(v110, v80);
  v112._object = 0x800000010081C190;
  v112._countAndFlagsBits = 0xD000000000000012;
  v113._countAndFlagsBits = 0;
  v113._object = 0xE000000000000000;
  localizedString(_:comment:)(v112, v113);
  v106(v63, v111, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v114 = v189;
  DynamicTextAppearance.init()();
  v115 = v176;
  DynamicTextAppearance.withFontUseCase(_:)();
  v116 = v109;
  v109(v114, v80);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v109(v115, v80);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v109(v63, v80);
  v117 = Review.response.getter();
  v118 = v175;
  if (v117)
  {
    Response.dateText.getter();

    v116 = v194;
  }

  v193(v63, v182, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  DynamicTextAppearance.init()();
  v119 = v154;
  DynamicTextAppearance.withFontUseCase(_:)();
  v116(v63, v80);
  v120 = v155;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v116(v119, v80);
  v121 = v172;
  DynamicTextAppearance.withLineBreakMode(_:)();
  v116(v120, v80);
  if (Review.response.getter())
  {
    v122 = Response.contents.getter();

    if (v122)
    {
      LanguageAwareString.string.getter();
    }
  }

  v193(v63, v121, v80);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v123 = v118;
  if (qword_10096ED78 != -1)
  {
    swift_once();
  }

  v124 = v158;
  v125 = sub_1000056A8(v158, qword_1009D3440);
  (*(v157 + 16))(v159, v125, v124);
  v126 = v168;
  v204[3] = v168;
  v204[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_1000056E0(v204);
  v128 = v167;
  v129 = *(v167 + 16);
  v129(v127, v177, v126);
  v203[3] = v126;
  v203[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_1000056E0(v203);
  v129(v130, v188, v126);
  v202[3] = v126;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_1000056E0(v202);
  v129(v131, v183, v126);
  v201[3] = v126;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_1000056E0(v201);
  v129(v132, v187, v126);
  v200[3] = v126;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_1000056E0(v200);
  v129(v133, v186, v126);
  v199[3] = v126;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_1000056E0(v199);
  v129(v134, v185, v126);
  v198[3] = v126;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v135 = sub_1000056E0(v198);
  v129(v135, v184, v126);
  v197[3] = v126;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v136 = sub_1000056E0(v197);
  v129(v136, v123, v126);
  v196 = v171;
  Measurable.placeable.getter();
  v137 = v160;
  ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)();
  v138 = [v161 traitCollection];
  sub_1005D2298(&qword_100991A00, &type metadata accessor for ProductReviewCustomLayout);
  v139 = v164;
  v140 = v162;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v141 = v166;
  dispatch thunk of Placeable.measure(toFit:with:)();
  v143 = v142;

  (*(v165 + 8))(v139, v141);
  (*(v163 + 8))(v137, v140);
  v144 = *(v128 + 8);
  v144(v175, v126);
  v145 = v194;
  v194(v172, v80);
  v144(v184, v126);
  v145(v182, v80);
  v144(v185, v126);
  v145(v174, v80);
  v144(v186, v126);
  v145(v179, v80);
  v144(v187, v126);
  v145(v180, v80);
  v144(v183, v126);
  v145(v181, v80);
  v144(v188, v126);
  v145(v173, v80);
  v144(v177, v126);
  v145(v178, v80);
  return v143;
}