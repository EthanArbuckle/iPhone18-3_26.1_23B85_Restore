void Artwork.View.fittingImageSize(in:)(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    v3 = [v2 artworkCatalog];
    if (v3)
    {
      v4 = v3;
      MPArtworkCatalog.originalSize.getter();
    }

    return;
  }

  CGSize.aspectRatio.getter();
  v6 = v5;
  v7 = [*&v2[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView] image];
  if (v7)
  {
    v8 = v7;
    [v7 size];
  }

  else
  {
    v10 = [v2 artworkCatalog];
    if (!v10)
    {
      return;
    }

    v11 = v10;
    MPArtworkCatalog.originalSize.getter();
    v13 = v12;

    if (v13)
    {
      return;
    }
  }

  CGSize.aspectRatio.getter();
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    CGSize.aspectRatio.getter();
    if (vabdd_f64(v6, v9) > 0.1)
    {
      CGSize.aspectRatio.getter();
    }
  }
}

uint64_t sub_100058744()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1012190C8);
  sub_1000060E4(v0, qword_1012190C8);
  return static Logger.nowPlaying(_:)(2003134806, 0xE400000000000000);
}

uint64_t sub_1000587B4(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 14;
  v4 = (v1 & 1 | (2 * ((v1 >> 8) & 1))) + 2;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

id Artwork.View.currentImage.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView) image];

  return v1;
}

Swift::Void __swiftcall Artwork.View.layoutSubviews()()
{
  v28.receiver = v0;
  v28.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v28, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  [v0 bounds];
  Artwork.View.fittingImageSize(in:)(v5, v6);
  v8 = v7;
  v10 = v9;
  v11 = [v0 contentMode];
  if (v11 > 5)
  {
    if (v11 == 6)
    {
      [v0 bounds];
      MaxY = CGRectGetMaxY(v31);
      v32.origin.x = v2;
      v32.origin.y = v4;
      v32.size.width = v8;
      v32.size.height = v10;
      v4 = MaxY - CGRectGetHeight(v32);
    }

    else if (v11 == 8)
    {
      [v0 bounds];
      MaxX = CGRectGetMaxX(v29);
      v30.origin.x = v2;
      v30.origin.y = v4;
      v30.size.width = v8;
      v30.size.height = v10;
      v2 = MaxX - CGRectGetWidth(v30);
    }
  }

  v14 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_imageView];
  CGRect.centeringAlong(axes:in:)();
  [v14 setFrame:?];
  if (v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind + 8] != 255)
  {
    [*&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View_placeholderKind] setFrame:{v2, v4, v8, v10}];
  }

  v15 = &v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v16 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds];
  v17 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 8];
  v18 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 16];
  v19 = *&v0[OBJC_IVAR____TtCV11MusicCoreUI7Artwork4View__laidBounds + 24];
  [v0 bounds];
  v34.origin.x = v20;
  v34.origin.y = v21;
  v34.size.width = v22;
  v34.size.height = v23;
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  if (!CGRectEqualToRect(v33, v34))
  {
    [v0 bounds];
    *v15 = v24;
    *(v15 + 1) = v25;
    *(v15 + 2) = v26;
    *(v15 + 3) = v27;
    sub_10004BF1C();
  }

  sub_10004AF48();
}

Swift::Void __swiftcall Artwork.Placeholder.View.layoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_contentView];
  v2 = &v0[OBJC_IVAR____TtCVV11MusicCoreUI7Artwork11Placeholder4View_typedConfiguration];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = *(v2 + 3);
  v6 = *(v2 + 4);
  v7 = *(v2 + 2);
  v8 = v5;
  v9 = v3;
  v10 = v4;
  [v0 bounds];
  if (v11 > v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  if (v12 >= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  v15 = v6 * v13;
  if (v15 >= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [objc_opt_self() configurationWithPointSize:v16];
  v18 = [v8 configurationByApplyingConfiguration:v17];

  [v1 setPreferredSymbolConfiguration:v18];
  [v1 setContentMode:4];
  [v0 bounds];
  [v1 sizeThatFits:{v19, v20}];
  CGRect.centeringAlong(axes:in:)();
  [v1 setFrame:?];
}

void sub_100058CAC(char *a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = &a1[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate];
    Strong = swift_unknownObjectWeakLoadStrong();
    v6 = a1;
    if (Strong)
    {
      swift_unknownObjectRelease();
      if (Strong == v1)
      {
        *(v4 + 1) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v7 = &v6[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_delegate];
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      swift_unknownObjectRelease();
      if (v9 == v1)
      {
        *(v7 + 1) = 0;
        swift_unknownObjectWeakAssign();
      }
    }

    v10 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
    if (v10)
    {
      v11 = [v10 view];
      if (!v11)
      {
        __break(1u);
        goto LABEL_20;
      }

      v12 = v11;
      [v11 removeInteraction:v6];
    }
  }

  v13 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
  if (!v13)
  {
    return;
  }

  *&v13[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_transitioningDelegate + 8] = &off_1010BAC48;
  swift_unknownObjectWeakAssign();
  *&v13[OBJC_IVAR____TtC5Music30PalettePresentationInteraction_delegate + 8] = &off_1010BAC78;
  swift_unknownObjectWeakAssign();
  v29 = ObjectType;
  v30 = &off_1010BAC08;
  aBlock[0] = v1;
  v14 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_viewProvider;
  swift_beginAccess();
  v15 = v1;
  v16 = v13;
  sub_10006B010(aBlock, &v13[v14], &qword_101194670);
  swift_endAccess();
  v17 = OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController;
  v18 = *&v15[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v18)
  {
    v19 = [v18 view];
    if (v19)
    {
      v20 = v19;
      [v19 addInteraction:v16];

      v21 = *&v15[v17];
      if (v21)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        v23 = objc_allocWithZone(UISpringLoadedInteraction);
        v30 = sub_1006CCC14;
        v31 = v22;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1006BE4C0;
        v29 = &unk_1010BB078;
        v24 = _Block_copy(aBlock);
        v25 = v16;
        v26 = v21;
        v27 = [v23 initWithInteractionBehavior:0 interactionEffect:v26 activationHandler:v24];
        _Block_release(v24);

        sub_1000592E0(v27);
      }

      goto LABEL_17;
    }

LABEL_20:
    __break(1u);
    return;
  }

LABEL_17:
}

uint64_t sub_100058F9C()
{

  return swift_deallocObject();
}

void sub_100059054(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view;
  v4 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  if (v4)
  {
    if (!a1 || (sub_100009F78(0, &qword_101181620), v6 = v4, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      [v4 removeGestureRecognizer:*(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer)];
      v9 = *(v2 + v3);
      if (v9)
      {
        v10 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);

        [v9 removeGestureRecognizer:v10];
      }
    }
  }
}

void sub_1000591B4(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view;
  v5 = *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view);
  if (v5)
  {
    if (!a1)
    {
      *(v1 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_view) = 0;
      v13 = 0;

      v11 = *(v1 + v4);
      if (!v11)
      {
        return;
      }

      goto LABEL_8;
    }

    sub_100009F78(0, &qword_101181620);
    v6 = v5;
    v7 = a1;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return;
    }

    v9 = *(v2 + v4);
  }

  else
  {
    if (!a1)
    {
      return;
    }

    v9 = 0;
  }

  *(v2 + v4) = a1;
  v10 = a1;

  [v10 addGestureRecognizer:*(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_tapGestureRecognizer)];
  v11 = *(v2 + v4);
  if (!v11)
  {
    return;
  }

LABEL_8:
  v12 = *(v2 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_panGestureRecognizer);

  [v11 addGestureRecognizer:v12];
}

void sub_1000592E0(void *a1)
{
  v2 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction;
  v3 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction];
  *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_springLoadedInteraction] = a1;
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    v6 = [v1 view];
    if (!v6)
    {
      __break(1u);
      goto LABEL_12;
    }

    v7 = v6;
    [v6 removeInteraction:v5];

    v8 = *&v1[v2];
    if (!v8)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = v8;
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      v13 = v10;
      [v12 addInteraction:v13];

      goto LABEL_8;
    }

LABEL_12:
    __break(1u);
    return;
  }

  v9 = a1;
  v8 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_8:
}

uint64_t sub_1000593FC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext;
  v3 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);
  if (v3)
  {
    v4 = type metadata accessor for ApplicationMainMenu();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu____lazy_storage___submenus] = 0;
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders] = _swiftEmptyArrayStorage;
    *&v5[OBJC_IVAR____TtC5Music19ApplicationMainMenu_interfaceContext] = v3;
    v11.receiver = v5;
    v11.super_class = v4;
    swift_retain_n();
    v6 = objc_msgSendSuper2(&v11, "init");
    sub_100059768();

    v7 = *(v1 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder);
    *(v1 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder) = v6;
  }

  else
  {
    v7 = *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder);
    *(v0 + OBJC_IVAR____TtC5Music17MainSceneDelegate_responder) = 0;
  }

  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v8 = qword_101218AD0;
  swift_beginAccess();
  sub_100008FE4(v8 + 16, v14);
  sub_10010FC20(&qword_101190BE8);
  _s11CoordinatorCMa_0();
  if (swift_dynamicCast())
  {
    *(v13 + 16) = *(v1 + v2);
  }

  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  sub_100008FE4(qword_101218AD8 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator, v14);
  sub_10010FC20(&qword_101190BF0);
  _s11CoordinatorCMa_1();
  if (swift_dynamicCast())
  {
    *(v13 + 16) = *(v1 + v2);
  }

  if (qword_10117F610 != -1)
  {
    swift_once();
  }

  v9 = qword_101218AE0;

  swift_beginAccess();
  sub_100008FE4(v9 + 16, v14);
  sub_10010FC20(&qword_101190BF8);
  _s11CoordinatorCMa();
  result = swift_dynamicCast();
  if (result)
  {
    *(v12 + 16) = *(v1 + v2);
  }

  return result;
}

void sub_100059768()
{
  if (qword_10117F580 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218A28);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    v7 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
    swift_beginAccess();
    if (*(*&v2[v7] + 16))
    {
      swift_getObjectType();
      swift_getWitnessTable();
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_1000105AC(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "Rebuilding the main menu with submenuProvider: %{public}s", v5, 0xCu);
    sub_10000959C(v6);
  }

  v12 = [objc_opt_self() mainSystem];
  [v12 setNeedsRebuild];
}

uint64_t sub_100059964()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218A28);
  sub_1000060E4(v0, qword_101218A28);
  return static Logger.music(_:)();
}

uint64_t sub_1000599C8()
{
  v0 = _s11CoordinatorCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v5 = v0;
  v6 = &off_1010AC958;
  *&v4 = v1;
  type metadata accessor for Collaboration.Manager();
  v2 = swift_allocObject();
  result = sub_100059A8C(&v4, v2 + 16);
  qword_101218AE0 = v2;
  return result;
}

uint64_t sub_100059A8C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100059B3C(void (*a1)(void *, _BYTE *), uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v9 = v4;
  v17 = 0;
  v18 = 0;
  v10 = [v4 presentedViewController];
  if (v10 && (v11 = v10, __chkstk_darwin(v10), v16[2] = &v17, UIViewController.traverseViewControllerHierarchy(_:)(a1, v16), v11, (v12 = v17) != 0))
  {
    v13 = v18;
    v14 = qword_10117F228;
    swift_unknownObjectRetain();
    if (v14 != -1)
    {
      swift_once();
    }

    sub_1002B5C00(v9, v12, v13, qword_101218668, a2, a3);
    return swift_unknownObjectRelease_n();
  }

  else
  {
    if (qword_10117F228 != -1)
    {
      swift_once();
    }

    return a4(v9, qword_101218668);
  }
}

uint64_t sub_100059CA4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(a2 + 32);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (!v9 || *(v7 + 16 * v8) != result)
  {
    if (qword_10117F230 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000060E4(v10, qword_101181F90);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136446210;
      v16 = v11;
      sub_10010FC20(&qword_101182128);
      v17 = String.init<A>(describing:)();
      v19 = sub_1000105AC(v17, v18, &v26);

      *(v14 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Become active container=%{public}s", v14, 0xCu);
      sub_10000959C(v15);
    }

    v20 = *(a2 + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100059EE8(0, v20[2] + 1, 1, v20);
    }

    v22 = v20[2];
    v21 = v20[3];
    if (v22 >= v21 >> 1)
    {
      v20 = sub_100059EE8((v21 > 1), v22 + 1, 1, v20);
    }

    v20[2] = v22 + 1;
    v23 = &v20[2 * v22];
    v23[4] = v11;
    v23[5] = a3;
    v24 = *(a2 + 32);
    *(a2 + 32) = v20;
    v25 = v11;
    sub_100059F0C(v24);
  }

  return result;
}

uint64_t sub_100059F0C(uint64_t result)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v5 = *(result + 16);
  result += 16;
  v4 = v5;
  if (v5)
  {
    v6 = (result + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    v9 = *(v1 + 32);
    v44 = (v3 + 32);
    v10 = *(v9 + 16);
    result = swift_unknownObjectRetain();
    if (!v10)
    {
      if (!v8)
      {
        return result;
      }

LABEL_14:

      goto LABEL_17;
    }
  }

  else
  {
    v9 = *(v1 + 32);
    v44 = (v3 + 32);
    v10 = *(v9 + 16);
    if (!v10)
    {
      return result;
    }

    v7 = 0;
    v8 = 0;
  }

  v11 = *(v9 + 16 * v10 + 24);
  v12 = v8 == 0;
  result = swift_unknownObjectRetain();
  if (v8)
  {
    if (result)
    {
      v13 = v8 == result;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      swift_unknownObjectRelease();

      return swift_unknownObjectRelease();
    }

    if (!result)
    {
      goto LABEL_14;
    }
  }

  else if (!result)
  {
    return result;
  }

  ObjectType = swift_getObjectType();
  v15 = *(v11 + 8);

  swift_unknownObjectRetain();
  v15(v2, ObjectType, v11);
  swift_unknownObjectRelease();
  v9 = *v44;
  if (!v12)
  {
LABEL_17:
    if (!*(v9 + 16))
    {
      v16 = swift_getObjectType();
      v17 = *(v7 + 16);
      swift_unknownObjectRetain();
      v17(v2, v16, v7);
      swift_unknownObjectRelease();
    }
  }

  if (qword_10117F230 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_1000060E4(v18, qword_101181F90);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v46[0] = v22;
      *v21 = 136446210;
      v23 = *(*v2 + 240);

      v25 = v23(v24);
      v27 = v26;

      v28 = sub_1000105AC(v25, v27, v46);

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v20, "╭ Updated containers chain for videoContext=%{public}s", v21, 0xCu);
      sub_10000959C(v22);
    }

    v29 = *v44;
    v30 = *(*v44 + 16);

    if (!v30)
    {
      break;
    }

    v31 = 0;
    v2 = v29 + 32;
    v42 = v29 + 32;
    v43 = v30;
    while (v31 < *(v29 + 16))
    {
      v45 = *(v2 + 16 * v31);
      swift_unknownObjectRetain_n();

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.default.getter();
      swift_unknownObjectRelease();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v34 = 136315394;
        if (v31 == *(*v44 + 16) - 1)
        {
          v35 = 11572706;
        }

        else
        {
          v35 = 10393058;
        }

        v36 = v3;
        v37 = sub_1000105AC(v35, 0xA300000000000000, &v47);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        *v46 = v45;
        swift_unknownObjectRetain();
        sub_10010FC20(&qword_101182128);
        v38 = String.init<A>(describing:)();
        v40 = v29;
        v41 = sub_1000105AC(v38, v39, &v47);
        v3 = v36;
        v30 = v43;

        *(v34 + 14) = v41;
        v29 = v40;
        _os_log_impl(&_mh_execute_header, v32, v33, "%s %{public}s", v34, 0x16u);
        swift_arrayDestroy();

        v2 = v42;
      }

      swift_unknownObjectRelease();

      if (v30 == ++v31)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_31:

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_10005A43C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v2 = [Strong presentingViewController];
    if (v2)
    {
      v3 = v2;
      sub_1007EA6C8(v2, v12);
      if (v13)
      {
        v4 = v11;
        v11 = v3;
      }

      else
      {
        v5 = *(v0 + OBJC_IVAR____TtC5Music30PalettePresentationInteraction_animationController);
        if (v5)
        {
          v6 = *v12;
          v7 = *&v12[1];
          v8 = *&v12[2];
          v9 = *&v12[3];
          v10 = v5;
          [v10 setSourceFrame:{v6, v7, v8, v9}];
        }

        v4 = v3;
      }
    }
  }
}

uint64_t sub_10005A544()
{
  if (qword_10117FD70 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_1011A3E60))
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
    sub_1000095E8(v5, &unk_101183F30);
    return 0;
  }

  return result;
}

uint64_t sub_10005A630()
{
  result = swift_slowAlloc();
  qword_1011A3E60 = result;
  return result;
}

id sub_10005A6C0(uint64_t a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for TraitNavigationController();
  v3 = objc_msgSendSuper2(&v19, "_traitCollectionForChildEnvironment:", a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return v3;
  }

  v5 = v4;
  swift_unknownObjectRetain();
  v6 = [v1 childViewControllers];
  sub_100009F78(0, &qword_101183D40);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v5;
  __chkstk_darwin(v8);
  v17[2] = &v18;
  LOBYTE(v6) = sub_10044AC70(sub_1007E9F0C, v17, v7);

  if ((v6 & 1) != 0 || (v9 = [v1 overrideTraitCollectionForChildViewController:v5]) == 0)
  {
    swift_unknownObjectRelease();
    return v3;
  }

  v10 = v9;
  if (v3)
  {
    sub_10010FC20(&qword_101183990);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBC6D0;
    *(v11 + 32) = v3;
    *(v11 + 40) = v10;
    sub_100009F78(0, &unk_101183B00);
    v12 = v3;
    v13 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() traitCollectionWithTraitsFromCollections:isa];
    swift_unknownObjectRelease();

    return v15;
  }

  else
  {
    swift_unknownObjectRelease();
    return v10;
  }
}

void sub_10005AA14()
{
  v1 = [v0 window];
  if (!v1)
  {
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
  v3 = *&v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize];
  v4 = *&v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 8];
  v5 = v0[OBJC_IVAR____TtC5Music21NowPlayingContentView_windowSize + 16];
  v6 = [v0 window];
  if (!v6)
  {
    if (v5)
    {
      return;
    }

    goto LABEL_11;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;

  if ((v5 & 1) != 0 || (v3 == v9 ? (v12 = v4 == v11) : (v12 = 0), !v12))
  {
LABEL_11:
    v13 = [v0 window];
    v14 = v13;
    if (v13)
    {
      [v13 bounds];
      v18 = v15;
      v19 = v16;

      *&v17 = v18;
      *(&v17 + 1) = v19;
    }

    else
    {
      v17 = 0uLL;
    }

    *v2 = v17;
    v2[16] = v14 == 0;
  }
}

id sub_10005AB4C()
{
  result = [objc_allocWithZone(type metadata accessor for GroupActivitiesManager.SuggestionProvider()) init];
  static GroupActivitiesManager.suggestionProvider = result;
  return result;
}

void sub_10005AC24()
{
  v1 = type metadata accessor for AppInterfaceContext.Activity(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v5 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - v7;
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = static StagedInstall.current()();
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v26 = v2;
    v28 = v0;
    v12 = String._bridgeToObjectiveC()();
    v13 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

    v14 = String._bridgeToObjectiveC()();
    v33 = sub_10045D7C0;
    v34 = 0;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10027D328;
    v32 = &unk_1010ACE50;
    v15 = _Block_copy(&aBlock);

    v16 = objc_opt_self();
    v17 = [v16 actionWithTitle:v14 style:2 handler:v15];
    _Block_release(v15);

    v18 = v27;
    [v27 addAction:v17];

    v19 = String._bridgeToObjectiveC()();
    v33 = UIScreen.Dimensions.size.getter;
    v34 = 0;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_10027D328;
    v32 = &unk_1010ACE78;
    v20 = _Block_copy(&aBlock);

    v21 = [v16 actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    [v18 addAction:v21];
    if (*(v28 + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext))
    {
      *v10 = v18;
      v10[8] = 1;
      *(v10 + 2) = &_swiftEmptySetSingleton;
      swift_storeEnumTagMultiPayload();
      sub_100115B50(v10, v8);
      sub_100115B50(v8, v5);
      v22 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      sub_100115BB4(v5, v23 + v22);

      v24 = v18;
      sub_100706900(v8, sub_100115C18, v23);

      sub_100115C8C(v8);
      sub_100115C8C(v10);
    }

    else
    {
    }
  }
}

uint64_t sub_10005B050()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

void sub_10005B4CC()
{
  sub_10005B57C();
  if (v0 <= 0x3F)
  {
    sub_10005B86C();
    if (v1 <= 0x3F)
    {
      sub_10005B8F8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PlaylistCreation.Context(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for PlaylistPicker.Context(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10005B57C()
{
  if (!qword_10119FF20)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(255);
    sub_1001109D0(&qword_101199BD0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FF20);
    }
  }
}

void sub_10005B61C()
{
  sub_10005B6C0();
  if (v0 <= 0x3F)
  {
    sub_10005B724();
    if (v1 <= 0x3F)
    {
      sub_10005B774();
      if (v2 <= 0x3F)
      {
        sub_10005B7DC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10005B6C0()
{
  if (!qword_10119FE60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE60);
    }
  }
}

void sub_10005B724()
{
  if (!qword_10118A150)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A150);
    }
  }
}

void sub_10005B774()
{
  if (!qword_10119FE68)
  {
    type metadata accessor for Artist();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE68);
    }
  }
}

void sub_10005B7DC()
{
  if (!qword_10119FE70)
  {
    sub_100009F78(255, &qword_101183D40);
    sub_1001109D0(&unk_10119F3A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FE70);
    }
  }
}

void sub_10005B86C()
{
  if (!qword_10119FF28)
  {
    sub_1001109D0(&qword_1011815E0);
    sub_1001109D0(&qword_10119FD30);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10119FF28);
    }
  }
}

void sub_10005B8F8()
{
  if (!qword_10119FF30)
  {
    sub_100009F78(255, &qword_101183D40);
    sub_1001109D0(&unk_10119FF38);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10119FF30);
    }
  }
}

unint64_t sub_10005B9A0()
{
  result = qword_10119FF70;
  if (!qword_10119FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119FF70);
  }

  return result;
}

void sub_10005BA18()
{
  sub_10005BAFC();
  if (v0 <= 0x3F)
  {
    sub_10002F678();
    if (v1 <= 0x3F)
    {
      sub_10003920C(319, &qword_10118F6F8, &unk_1011841D0);
      if (v2 <= 0x3F)
      {
        sub_10003920C(319, &qword_1011A11C0, &unk_10118F700);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005BAFC()
{
  if (!qword_101183080)
  {
    type metadata accessor for Playlist.Folder();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101183080);
    }
  }
}

void sub_10005BB74()
{
  type metadata accessor for PlaylistPicker.Mode(319);
  if (v0 <= 0x3F)
  {
    sub_10005BD4C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10005BC18()
{
  sub_10005BC8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Playlist.Folder.Item();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10005BC8C()
{
  if (!qword_10118A500)
  {
    type metadata accessor for Track();
    v0 = type metadata accessor for MusicItemCollection();
    if (!v1)
    {
      atomic_store(v0, &qword_10118A500);
    }
  }
}

void sub_10005BCEC()
{
  if (!qword_1011AE490)
  {
    type metadata accessor for Track();
    v0 = type metadata accessor for MusicItemCollection();
    if (!v1)
    {
      atomic_store(v0, &qword_1011AE490);
    }
  }
}

void sub_10005BD4C()
{
  if (!qword_101191270)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101191270);
    }
  }
}

uint64_t static StagedInstall.current()()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v47 - v6;
  __chkstk_darwin(v5);
  v9 = &v47 - v8;
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 2;
  }

  if (qword_1011A69A0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, qword_1011AB0C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Checking for a staged install of Music", v13, 2u);
  }

  URL.init(fileURLWithPath:)();
  v14 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  v17 = Logger.logObject.getter();
  if (v16)
  {
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Found Music.app in staged_system_apps", v19, 2u);
    }

    v20 = Data.init(contentsOf:options:)();
    v25 = v21 >> 62;
    if ((v21 >> 62) > 1)
    {
      if (v25 != 2 || *(v20 + 16) == *(v20 + 24))
      {
LABEL_23:
        sub_10002C064(v20, v21);
        v17 = Logger.logObject.getter();
        v22 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v17, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          v24 = "Unable to read data of staged executable";
          goto LABEL_25;
        }

        goto LABEL_26;
      }
    }

    else if (v25)
    {
      if (v20 == v20 >> 32)
      {
        goto LABEL_23;
      }
    }

    else if ((v21 & 0xFF000000000000) == 0)
    {
      goto LABEL_23;
    }

    v26 = v20;
    v49 = v21;
    v27 = [objc_opt_self() mainBundle];
    v28 = [v27 executableURL];

    if (!v28)
    {
LABEL_39:
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v31 = 2;
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Unable to read data of running executable", v40, 2u);

        sub_10002C064(v26, v49);
        (*(v1 + 8))(v9, v0);
        return v31;
      }

      sub_10002C064(v26, v49);

      goto LABEL_27;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v1 + 32))(v7, v4, v0);
    v29 = Data.init(contentsOf:options:)();
    v33 = v30 >> 62;
    if ((v30 >> 62) > 1)
    {
      if (v33 != 2)
      {
        goto LABEL_38;
      }

      v34 = *(v29 + 16);
      v35 = *(v29 + 24);
    }

    else
    {
      if (!v33)
      {
        if ((v30 & 0xFF000000000000) == 0)
        {
          goto LABEL_38;
        }

LABEL_42:
        v47 = v29;
        v48 = v30;
        v41 = sub_1009AC704(v29, v30, v26, v49);
        v42 = Logger.logObject.getter();
        if (v41)
        {
          v43 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Identical staged copy found";
LABEL_47:
            _os_log_impl(&_mh_execute_header, v42, v43, v45, v44, 2u);
          }
        }

        else
        {
          v43 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v42, v43))
          {
            v44 = swift_slowAlloc();
            *v44 = 0;
            v45 = "Found different binary in staged applications";
            goto LABEL_47;
          }
        }

        sub_10002C064(v47, v48);
        sub_10002C064(v26, v49);
        v46 = *(v1 + 8);
        v46(v7, v0);
        v46(v9, v0);
        return v41 & 1;
      }

      v34 = v29;
      v35 = v29 >> 32;
    }

    if (v34 != v35)
    {
      goto LABEL_42;
    }

LABEL_38:
    v36 = v29;
    v37 = v30;
    (*(v1 + 8))(v7, v0);
    sub_10002C064(v36, v37);
    goto LABEL_39;
  }

  v22 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v17, v22))
  {
LABEL_26:

LABEL_27:
    (*(v1 + 8))(v9, v0);
    return 2;
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = "✅ No staged copy found";
LABEL_25:
  _os_log_impl(&_mh_execute_header, v17, v22, v24, v23, 2u);

  (*(v1 + 8))(v9, v0);
  return 2;
}

uint64_t sub_10005C4C8()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011AB0C0);
  sub_1000060E4(v0, qword_1011AB0C0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005C54C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100009F78(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10005C59C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    v36 = a1;
    v10 = Logger.scenes.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v39[0] = v14;
      *v13 = 136446210;
      sub_100009F78(0, &qword_101189758);
      v34 = v3;
      sub_10005C54C(&qword_101189760, &qword_101189758);
      v15 = Set.description.getter();
      v17 = sub_1000105AC(v15, v16, v39);

      *(v13 + 4) = v17;
      v3 = v34;
      _os_log_impl(&_mh_execute_header, v11, v12, "[MainSceneDelegate] openURLContexts: %{public}s", v13, 0xCu);
      sub_10000959C(v14);
    }

    (*(v7 + 8))(v9, v6);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = __CocoaSet.count.getter() != 0;
      *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = v18;
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_101189758);
      sub_10005C54C(&qword_101189760, &qword_101189758);
      Set.Iterator.init(_cocoa:)();
      a2 = v39[0];
      v19 = v39[1];
      v21 = v39[2];
      v20 = v39[3];
      v22 = v39[4];
    }

    else
    {
      *(v3 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction) = *(a2 + 16) != 0;
      v23 = -1 << *(a2 + 32);
      v19 = a2 + 56;
      v21 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(a2 + 56);

      v20 = 0;
    }

    if (a2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v26 = v20;
      v27 = v22;
      v28 = v20;
      if (!v22)
      {
        break;
      }

LABEL_15:
      v29 = (v27 - 1) & v27;
      v30 = *(*(a2 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!v30)
      {
LABEL_21:
        sub_10005C9F8();

        return;
      }

      while (1)
      {
        v32 = v36;
        v33 = v30;
        sub_1002CFAEC(v33, v35);
        sub_1002C5A04();

        v20 = v28;
        v22 = v29;
        if ((a2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        v31 = __CocoaSet.Iterator.next()();
        if (v31)
        {
          v37 = v31;
          sub_100009F78(0, &qword_101189758);
          swift_dynamicCast();
          v30 = v38;
          v28 = v20;
          v29 = v22;
          if (v38)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= ((v21 + 64) >> 6))
      {
        goto LABEL_21;
      }

      v27 = *(v19 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  sub_10010FC20(&qword_1011AA660);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100EBE270;
  sub_10010FC20(&unk_1011A9FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBDC20;
  v7 = UIScreen.Dimensions.size.getter(COERCE_DOUBLE(2));
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v8;
  *(inited + 40) = v9;
  UIScreen.Dimensions.size.getter(v7);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v10;
  *(inited + 80) = v11;
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v13 = UISceneDidEnterBackgroundNotification;
  v14 = UISceneWillEnterForegroundNotification;

  v15 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_10005CE5C, v12);

  *(v5 + 32) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_100EBC6B0;
  UIScreen.Dimensions.size.getter(COERCE_DOUBLE(1));
  *(v16 + 56) = &type metadata for NotificationTrigger;
  *(v16 + 64) = &protocol witness table for NotificationTrigger;
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  v19 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v20 = UIScreenBrightnessDidChangeNotification;

  v21 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v16, 1, sub_10005D680, v19);

  *(v5 + 40) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_100EBC6B0;
  UIScreen.Dimensions.size.getter(COERCE_DOUBLE(1));
  *(v22 + 56) = &type metadata for NotificationTrigger;
  *(v22 + 64) = &protocol witness table for NotificationTrigger;
  *(v22 + 32) = v23;
  *(v22 + 40) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  v26 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v27 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v22, 1, sub_10005DC8C, v25);

  *(v5 + 48) = v27;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_10005CDCC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10005CE04()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005CE64();
  }

  return result;
}

void sub_10005CE64()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A90D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_10010FC20(&unk_1011AFA60);
  v38 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = sub_10010FC20(&qword_1011AC9B8);
  v39 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = sub_10010FC20(&qword_1011AC9C0);
  v40 = *(v11 - 8);
  v41 = v11;
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_10010FC20(&qword_1011AC9C8);
  v42 = *(v14 - 8);
  v43 = v14;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong activationState], v18, v19 == 2))
  {
    if (*(v1 + 40))
    {
      return;
    }

    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v37 = v4;
    v20 = type metadata accessor for Logger();
    sub_1000060E4(v20, qword_101219D38);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    sub_10010FC20(&qword_1011ACC50);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100020674(&qword_1011AD130, &unk_1011AFA60);
    Publisher.dropFirst(_:)();
    (*(v38 + 8))(v7, v5);
    sub_100020674(&qword_1011AC9D0, &qword_1011AC9B8);
    sub_100A37964();
    Publisher<>.removeDuplicates()();
    (*(v39 + 8))(v10, v8);
    sub_100009F78(0, &qword_1011A9F80);
    v25 = static OS_dispatch_queue.main.getter();
    v44 = v25;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    sub_100020674(&qword_1011AC9F0, &qword_1011AC9C0);
    sub_10001C070(&qword_1011AD100, &qword_1011A9F80);
    v28 = v41;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v27, &qword_1011A90D0);

    (*(v40 + 8))(v13, v28);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&qword_1011AC9F8, &qword_1011AC9C8);
    v29 = v43;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v16, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (qword_1011A6A80 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000060E4(v31, qword_101219D38);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }
}

uint64_t sub_10005D620(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10005D6A0(a2);
  }

  return result;
}

void sub_10005D6A0(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (qword_1011A6A80 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_1000060E4(v12, qword_101219D38);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = sub_100010678(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          sub_10000959C(v16);
        }

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = String.init<A>(describing:)();
          v28 = sub_100010678(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          sub_10000959C(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (qword_1011A6A80 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_1000060E4(v37, qword_101219D38);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = String.init<A>(describing:)();
          v44 = sub_100010678(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          sub_10000959C(v41);
        }
      }
    }

    else
    {
      if (qword_1011A6A80 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000060E4(v30, qword_101219D38);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = String.init<A>(describing:)();
        v36 = sub_100010678(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        sub_10000959C(v33);
      }

      else
      {
      }
    }
  }
}

void sub_10005DD8C(void *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v110 = &v102 - v8;
  v9 = __chkstk_darwin(v7);
  v105 = &v102 - v10;
  v11 = __chkstk_darwin(v9);
  v104 = &v102 - v12;
  __chkstk_darwin(v11);
  v14 = &v102 - v13;
  v15 = Logger.scenes.unsafeMutableAddressor();
  v16 = *(v3 + 16);
  v108 = v15;
  v112 = v3 + 16;
  v111 = v16;
  (v16)(v14);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v113 = v3;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v107 = v6;
    v22 = v21;
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446210;
    v24 = v2;
    v25 = [v17 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v2 = v24;
    v29 = sub_1000105AC(v26, v28, &aBlock);

    *(v22 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, "Main scene will enter foreground %{public}s", v22, 0xCu);
    sub_10000959C(v23);

    v6 = v107;
    v30 = v113;

    v31 = *(v30 + 8);
    v31(v14, v24);
  }

  else
  {

    v31 = *(v3 + 8);
    v31(v14, v2);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = qword_10117FC88;
    v35 = v17;
    if (v34 != -1)
    {
      swift_once();
    }

    v107 = v31;
    swift_beginAccess();
    v108 = v35;
    sub_10005EF28(&v120, v33);
    v36 = v120;
    swift_endAccess();

    sub_10005EDE8();
    v37 = [objc_opt_self() sharedCloudController];
    if (!v37)
    {
      __break(1u);
      return;
    }

    v38 = v37;
    [v37 becomeActive];

    [objc_opt_self() beginDiscoveringMediaLibraries];
    v39 = [objc_opt_self() currentNotificationCenter];
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    v118 = sub_10006043C;
    v119 = v40;
    aBlock = _NSConcreteStackBlock;
    v115 = 1107296256;
    v116 = sub_1000603D0;
    v117 = &unk_1010ACEF0;
    v41 = _Block_copy(&aBlock);
    v42 = v39;

    v106 = v42;
    [v42 getBadgeNumberWithCompletionHandler:v41];
    _Block_release(v41);
    ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();

    ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()();

    v43 = objc_opt_self();
    v44 = [v43 standardUserDefaults];
    SharePlayTogetherSession.needsDisplayNameAckDefaultsKey.unsafeMutableAddressor();

    v45 = String._bridgeToObjectiveC()();

    v46 = [v44 BOOLForKey:v45];

    v47 = [v43 standardUserDefaults];
    SharePlayTogetherSession.didShowDisplayNameAck.unsafeMutableAddressor();

    v48 = String._bridgeToObjectiveC()();

    v49 = [v47 BOOLForKey:v48];

    v50 = [objc_opt_self() sharedPrivacyInfo];
    LOBYTE(v48) = [v50 privacyAcknowledgementRequiredForMusic];

    if ((v48 & 1) == 0 && v46 && (v49 & 1) == 0)
    {
      v103 = v2;
      v51 = [objc_opt_self() sharedApplication];
      v52 = [v51 openSessions];
      sub_100009F78(0, &qword_101190C00);
      sub_10005C54C(&unk_101190C08, &qword_101190C00);
      v53 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045BB4C(v53);
      v55 = v54;

      aBlock = _UIWindowSceneSessionRoleCarPlay;
      __chkstk_darwin(v56);
      *(&v102 - 2) = &aBlock;
      LOBYTE(v53) = sub_10044D018(sub_10045DD68, (&v102 - 4), v55);

      if ((v53 & 1) == 0)
      {
        v72 = [objc_opt_self() shared];
        v73 = [v72 activeUserState];

        v74 = v103;
        if (v73 && (v75 = [v73 music], v73, v75) && (v76 = objc_msgSend(v75, "userProfile"), v75, v76) && (v77 = objc_msgSend(v76, "displayNameAccepted"), v76, v77))
        {
          v78 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v79 = v104;
          v111(v104, v78, v74);
          v80 = Logger.logObject.getter();
          v81 = static os_log_type_t.default.getter();
          v82 = os_log_type_enabled(v80, v81);
          v83 = v107;
          if (v82)
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&_mh_execute_header, v80, v81, "[MainSceneDelegate] [TermsAckFlow] Tried to display but term was already accepted, removing defaults key", v84, 2u);
          }

          v83(v79, v74);
          v85 = [v43 standardUserDefaults];

          v86 = String._bridgeToObjectiveC()();

          [v85 removeObjectForKey:v86];
        }

        else
        {
          v87 = Logger.sharePlayTogether.unsafeMutableAddressor();
          v88 = v105;
          v111(v105, v87, v74);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          v91 = os_log_type_enabled(v89, v90);
          v92 = v107;
          if (v91)
          {
            v93 = swift_slowAlloc();
            *v93 = 0;
            _os_log_impl(&_mh_execute_header, v89, v90, "[MainSceneDelegate] [TermsAckFlow] Displaying ack flow", v93, 2u);
          }

          v92(v88, v74);
          sub_100761BE4(v33, 0, sub_10045BFC8, 0, sub_10045BFDC, 0);
        }

        goto LABEL_29;
      }

      v2 = v103;
    }

    v60 = Logger.sharePlayTogether.unsafeMutableAddressor();
    v61 = v110;
    v111(v110, v60, v2);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 67240704;
      *(v64 + 4) = v46;
      *(v64 + 8) = 1026;
      *(v64 + 10) = v49;
      *(v64 + 14) = 1026;
      v65 = [objc_opt_self() sharedApplication];
      v66 = [v65 openSessions];
      sub_100009F78(0, &qword_101190C00);
      sub_10005C54C(&unk_101190C08, &qword_101190C00);
      v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10045BB4C(v67);
      v69 = v68;

      aBlock = _UIWindowSceneSessionRoleCarPlay;
      __chkstk_darwin(v70);
      *(&v102 - 2) = &aBlock;
      v71 = sub_10044D018(sub_10045D96C, (&v102 - 4), v69);

      *(v64 + 16) = v71 & 1;
      _os_log_impl(&_mh_execute_header, v62, v63, "[MainSceneDelegate] [TermsAckFlow] Not displaying ack flow. needsDisplayNameAck=%{BOOL,public}d, didShowDisplayNameAck=%{BOOL,public}d, CarPlay attached=%{BOOL,public}d", v64, 0x14u);
      v61 = v110;
    }

    (v107)(v61, v2);
LABEL_29:
    v94 = v109;
    v95 = v108;
    v96 = v106;
    v97 = [objc_opt_self() defaultCenter];
    if (qword_10117F748 != -1)
    {
      swift_once();
    }

    v98 = qword_101218D48;
    sub_10010FC20(&unk_1011839E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100EBC6B0;
    aBlock = 0xD000000000000018;
    v115 = 0x8000000100E4C560;
    AnyHashable.init<A>(_:)();
    v100 = *(v94 + OBJC_IVAR____TtC5Music17MainSceneDelegate_hasStartedFromUserAction);
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = v100;
    sub_100060CB0(inited);
    swift_setDeallocating();
    sub_1000095E8(inited + 32, &qword_1011801C8);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v97 postNotificationName:v98 object:0 userInfo:isa];

    return;
  }

  v111(v6, v108, v2);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Unsupported scene type", v59, 2u);
  }

  v31(v6, v2);
}

uint64_t sub_10005EBDC()
{

  return swift_deallocObject();
}

uint64_t sub_10005EC38()
{
  type metadata accessor for RoutingControllerWorkaround();
  swift_allocObject();
  result = sub_10005EC74();
  qword_101219500 = result;
  return result;
}

uint64_t sub_10005EC74()
{
  v1 = v0;
  *(v0 + 16) = &_swiftEmptySetSingleton;
  v2 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
  v3 = objc_allocWithZone(MPAVRoutingController);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithDataSource:v2 name:v4];

  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  sub_10005EDE8();
  v6 = MPAVRoutingControllerActiveSystemRouteDidChangeNotification;
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *(v1 + 32) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v6, 0, 1, 1, sub_1007350B0, v7);

  return v1;
}

uint64_t sub_10005EDB0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_10005EDE8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if ((v1 & 0xC000000000000001) != 0)
  {

    v2 = __CocoaSet.count.getter();

    if (v2)
    {
LABEL_3:
      v3 = objc_opt_self();
      aBlock[4] = sub_10006B1FC;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000603D0;
      aBlock[3] = &unk_1010BCF30;
      v4 = _Block_copy(aBlock);

      [v3 getActiveRouteWithTimeout:v4 completion:1.0];
      _Block_release(v4);
      return;
    }
  }

  else if (*(v1 + 16))
  {
    goto LABEL_3;
  }

  [*(v0 + 24) setDiscoveryMode:0];
}

uint64_t sub_10005EF28(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_100009F78(0, &qword_1011839F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10066F294(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1003B1538(v20 + 1, &qword_101183248);
    }

    v18 = v8;
    sub_100670AFC();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009F78(0, &qword_1011839F0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1003B7164(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_10005F170(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  sub_10010FC20(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(v6 + 40);
      v18 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = NSObject._rawHashValue(seed:)(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v26;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v10 = 0;
  v8 = v0;
  v9 = &v10;
  UnfairLock.locked<A>(_:)(sub_10005F51C);
  if (v10 == 1)
  {
    static TaskPriority.userInitiated.getter();
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;

    sub_1008A3074(0, 0, v4, &unk_100EF1890, v6);

    sub_1000095E8(v4, &qword_1011A7F00);
  }
}

void sub_10005F51C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if ((*(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) & 1) == 0)
  {
    **(v0 + 24) = 1;
    *(v1 + v2) = 1;
  }
}

uint64_t Logger.sharePlayTogether.unsafeMutableAddressor()
{
  if (qword_1011A6AE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.sharePlayTogether);
}

uint64_t sub_10005F5C0()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.sharePlayTogether);
  sub_1000060E4(v0, static Logger.sharePlayTogether);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10005F640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_10005F6F4(a1, v4, v5, v6);
}

uint64_t sub_10005F714()
{
  UnfairLock.locked<A>(_:)(sub_10005FD0C);
  v1 = *(v0 + 8);

  return v1();
}

void sub_10005F7AC(uint64_t a1)
{
  v3 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v3 - 8);
  v5 = v44 - v4;
  v6 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_1011A6838 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000060E4(v7, qword_1011A9CE8);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Needs Network Reachability Update", v10, 2u);
    }

    *(a1 + v6) = 0;
    v11 = [objc_opt_self() sharedCloudController];
    if (v11)
    {
      v12 = v11;
      if ([v11 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v13) = [v12 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49[4] = v54;
    v49[5] = v55;
    v49[6] = v56;
    v49[7] = v57;
    v49[0] = v50;
    v49[1] = v51;
    v49[2] = v52;
    v49[3] = v53;
    sub_100014984(v49);
    v14 = BYTE1(v49[0]);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    if (v13 == v14)
    {
      if (v17)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Network Reachability status does not differ from currently known capabilities.", v43, 2u);
      }
    }

    else
    {
      v58 = v5;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44[1] = v1;
        v20 = v19;
        *&v50 = v19;
        *v18 = 136315138;
        if (v13)
        {
          v21 = 0x1000000000000012;
        }

        else
        {
          v21 = 0x1000000000000016;
        }

        v22 = v13;
        if (v13)
        {
          v13 = "Not Reachable 🔌👎";
        }

        else
        {
          v13 = "hangeNotification";
        }

        v23 = sub_100010678(v21, v13 | 0x8000000000000000, &v50);
        LOBYTE(v13) = v22;

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Updating Network Reachability to: %s", v18, 0xCu);
        sub_10000959C(v20);
      }

      v24 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v46[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v46[5] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v46[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v46[7] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v46[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v46[1] = v27;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v46[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v46[3] = v28;
      *(&v47[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v47[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v47[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v47[7] = v26;
      *(v47 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v47[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v47[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v47[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v47[0]) = v46[0];
      BYTE1(v47[0]) = v13;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v52 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v53 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v50 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v51 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v56 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v57 = v31;
      v32 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v54 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v55 = v32;
      v48[0] = v50;
      v48[1] = v30;
      v48[2] = v52;
      v48[3] = v29;
      v48[4] = v54;
      v48[5] = v32;
      v48[6] = v56;
      v48[7] = v31;
      v33 = v47[0];
      v34 = v47[1];
      v35 = v47[3];
      v24[2] = v47[2];
      v24[3] = v35;
      *v24 = v33;
      v24[1] = v34;
      v36 = v47[4];
      v37 = v47[5];
      v38 = v47[7];
      v24[6] = v47[6];
      v24[7] = v38;
      v24[4] = v36;
      v24[5] = v37;
      sub_10001494C(v46, v45);
      sub_10001494C(&v50, v45);
      sub_10001494C(v47, v45);
      sub_100014984(v48);
      sub_10001645C(&v50);
      sub_100014984(&v50);
      sub_100014984(v47);
      v39 = type metadata accessor for TaskPriority();
      v40 = v58;
      (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
      type metadata accessor for MainActor();

      v41 = static MainActor.shared.getter();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = &protocol witness table for MainActor;
      v42[4] = a1;
      sub_100969440(0, 0, v40, &unk_100EF1D38, v42);
    }
  }
}

uint64_t sub_10005FD28()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A9CE8);
  sub_1000060E4(v0, qword_1011A9CE8);
  return Logger.init(subsystem:category:)();
}

void sub_1000603D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_10006043C(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 16);
    result = [result integerValue];
    if (result >= 1)
    {

      return [v2 setBadgeCount:0 withCompletionHandler:0];
    }
  }

  return result;
}

uint64_t sub_100060AA8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

NSString sub_100060C78()
{
  result = String._bridgeToObjectiveC()();
  qword_101218D48 = result;
  return result;
}

unint64_t sub_100060CB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011801C0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v13, &qword_1011801C8);
      result = sub_1000160B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100060DEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A8628);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, v13, &unk_1011A8630);
      result = sub_1000160B4(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100016270(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100060F2C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Whitetail.Binding.setNeedsUpdate()();
  }

  return result;
}

Swift::Void __swiftcall Whitetail.Binding.setNeedsUpdate()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  os_unfair_lock_lock((v0 + 32));
  swift_endAccess();
  if ((*(v0 + 36) & 1) == 0)
  {
    *(v0 + 36) = 1;
    sub_100027140();
    v12 = v5;
    v9 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_10006B30C;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010F0758;
    v10 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100024844();
    sub_10010FC20(&unk_1011BADE0);
    sub_100024A2C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v10);

    (*(v2 + 8))(v4, v1);
    (*(v6 + 8))(v8, v12);
  }

  swift_beginAccess();
  os_unfair_lock_unlock((v0 + 32));
  swift_endAccess();
}

Swift::Void __swiftcall Application.startedTest(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  if (a1.value._object)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  v10.receiver = v1;
  v10.super_class = type metadata accessor for Application();
  objc_msgSendSuper2(&v10, "startedTest:", v4);

  if (![v1 delegate] || (sub_10010FC20(&qword_10118C400), sub_10010FC20(&qword_10118C408), (swift_dynamicCast() & 1) == 0))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    goto LABEL_10;
  }

  v5 = *(&v8 + 1);
  if (!*(&v8 + 1))
  {
LABEL_10:
    sub_1000095E8(&v7, &qword_10118C3F8);
    return;
  }

  v6 = v9;
  sub_10000954C(&v7, *(&v8 + 1));
  if (object)
  {
    (*(v6 + 8))(v1, countAndFlagsBits, object, v5, v6);
    sub_10000959C(&v7);
  }

  else
  {
    __break(1u);
  }
}

void sub_100061494(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v7 - 8);
  v9 = v36 - v8;

  v10 = sub_100061BE0(a2, a3);
  if (v11 == -1)
  {
    v17 = [a1 _extendLaunchTest];
    if (!v17)
    {
      return;
    }

    v18 = [a1 connectedScenes];
    sub_100009F78(0, &qword_1011839F0);
    sub_100061F5C();
    v19 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100061FC4(v19);
    v21 = v20;

    if (v21 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_9:
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = sub_1007E90D4(0, v21);
        }

        else
        {
          if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_41:
            if (_CocoaArrayWrapper.endIndex.getter())
            {

              sub_10010EFBC(_swiftEmptyArrayStorage);
              v31 = v33;
              goto LABEL_33;
            }

LABEL_32:

            v31 = &_swiftEmptySetSingleton;
LABEL_33:
            v32 = swift_allocObject();
            *(v32 + 16) = v31;
            v36[-4] = __chkstk_darwin(v32);
            v36[-3] = sub_10059FA7C;
            v34 = v3;
            UIViewController.traverseViewControllerHierarchy(_:)(sub_10059FA84, &v36[-6]);
            sub_10059DF88(v32, sub_10059FA7C, v3, &unk_1010B4148, sub_100029B6C, &unk_1010B4160);

            return;
          }

          v22 = *(v21 + 32);
        }

        v23 = v22;

        v24 = [v23 delegate];

        if (v24 && (v36[0] = v24, sub_10010FC20(&unk_101184050), sub_10010FC20(&unk_101184EB0), (swift_dynamicCast() & 1) != 0))
        {
          if (*(&v38 + 1))
          {
            v25 = *(*sub_10000954C(&v37, *(&v38 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

            sub_10000959C(&v37);
            if (v25)
            {
              v26 = *(v25 + 32);
              if ((v26 & 0x8000000000000000) != 0)
              {

                return;
              }

              v19 = v26;
              v27 = [v19 selectedTab];
              if (!v27)
              {
                goto LABEL_34;
              }

              v28 = v27;
              v29 = sub_10003F0FC();

              if (v29 > 3u)
              {
                if (v29 > 5u && v29 != 6)
                {
                  goto LABEL_34;
                }
              }

              else if (!v29)
              {

LABEL_30:
                v21 = [v19 selectedViewController];

                if (v21)
                {
                  v3 = swift_allocObject();
                  *(v3 + 16) = a2;
                  *(v3 + 24) = a3;
                  if (!(_swiftEmptyArrayStorage >> 62))
                  {
                    goto LABEL_32;
                  }

                  goto LABEL_41;
                }

LABEL_35:

                return;
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_30;
              }

LABEL_34:

              goto LABEL_35;
            }

LABEL_45:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        else
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
        }

        sub_1000095E8(&v37, &unk_101184EA0);
        goto LABEL_45;
      }
    }

    else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_45;
  }

  if (v11 == 2 && v10 == 3 && (*&v37 = a2, *(&v37 + 1) = a3, v36[0] = 0x7262694C6D6F7246, v36[1] = 0xEB00000000797261, v12 = type metadata accessor for Locale(), (*(*(v12 - 8) + 56))(v9, 1, 1, v12), v35 = sub_100009838(), StringProtocol.range<A>(of:options:range:locale:)(), v14 = v13, sub_1000095E8(v9, &unk_101182EA0), (v14 & 1) == 0))
  {
    *&v37 = a2;
    *(&v37 + 1) = a3;

    String.removeSubrange(_:)();
    v16 = *(&v37 + 1);
    v15 = v37;
  }

  else
  {

    v15 = a2;
    v16 = a3;
  }

  sub_10059F378(v15, v16);
}

uint64_t sub_100061B34()
{

  return swift_deallocObject();
}

uint64_t sub_100061B6C()
{

  return swift_deallocObject();
}

uint64_t sub_100061BA4()
{

  return swift_deallocObject();
}

uint64_t sub_100061BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101182EA0);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7._countAndFlagsBits = 0x657370616C6C6F43;
  v7._object = 0xEE00646E61707845;
  if (String.hasPrefix(_:)(v7))
  {

    return 0;
  }

  v9._countAndFlagsBits = 0x746E6573657250;
  v9._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v9))
  {

    return 1;
  }

  v10._countAndFlagsBits = 0x7373696D736944;
  v10._object = 0xE700000000000000;
  if (String.hasPrefix(_:)(v10))
  {
    goto LABEL_6;
  }

  v11._countAndFlagsBits = 0x6574616C756D6953;
  v11._object = 0xEE006C6C6F726353;
  if (String.hasPrefix(_:)(v11))
  {
    v22[2] = a1;
    v22[3] = a2;
    v22[0] = 0x746E6F7A69726F48;
    v22[1] = 0xEA00000000006C61;
    v12 = type metadata accessor for Locale();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_100009838();
    StringProtocol.range<A>(of:options:range:locale:)();
    v14 = v13;
    sub_1000095E8(v6, &unk_101182EA0);

    return (v14 & 1) == 0;
  }

  v15._countAndFlagsBits = 0x6C6C6F726353;
  v15._object = 0xE600000000000000;
  if (String.hasPrefix(_:)(v15))
  {
LABEL_6:

    return 2;
  }

  v16._countAndFlagsBits = 0x6F54686374697753;
  v16._object = 0xE800000000000000;
  if (String.hasPrefix(_:)(v16) || (v17._countAndFlagsBits = 0x6154686374697753, v17._object = 0xE900000000000062, String.hasPrefix(_:)(v17)))
  {

    return 3;
  }

  v18._countAndFlagsBits = 0x657461746F52;
  v18._object = 0xE600000000000000;
  if (!String.hasPrefix(_:)(v18))
  {
    v20._countAndFlagsBits = 0x657A69736552;
    v20._object = 0xE600000000000000;
    v21 = String.hasPrefix(_:)(v20);

    if (v21)
    {
      return 4;
    }

    return 0;
  }

  result = sub_10059F220();
  if (v19)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100061F5C()
{
  result = qword_101183DE0;
  if (!qword_101183DE0)
  {
    sub_100009F78(255, &qword_1011839F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183DE0);
  }

  return result;
}

void sub_100061FC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100062364();
    sub_100061F5C();
    Set.Iterator.init(_cocoa:)();
    v1 = v29;
    v2 = v30;
    v3 = v31;
    v4 = v32;
    v5 = v33;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v26 = v1;
LABEL_8:
  v9 = v4;
  while (1)
  {
    if (v1 < 0)
    {
      if (!__CocoaSet.Iterator.next()() || (sub_100062364(), swift_dynamicCast(), v13 = v28, v4 = v9, v12 = v5, !v28))
      {
LABEL_35:
        sub_10005C9F8();
        return;
      }

      goto LABEL_19;
    }

    v10 = v9;
    v11 = v5;
    v4 = v9;
    if (!v5)
    {
      break;
    }

LABEL_15:
    v12 = (v11 - 1) & v11;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v13)
    {
      goto LABEL_35;
    }

LABEL_19:
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v27 = v12;
      v16 = v13;
      v17 = [v15 session];
      v18 = [v17 role];

      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {

LABEL_27:
        v5 = v27;
        if ([v16 delegate])
        {
          type metadata accessor for MainSceneDelegate();
          v25 = swift_dynamicCastClass();

          if (v25)
          {
            swift_unknownObjectRelease();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v26;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
        }

        else
        {
        }

        v9 = v4;
        v1 = v26;
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v24)
        {
          goto LABEL_27;
        }

        v9 = v4;
        v1 = v26;
        v5 = v27;
      }
    }

    else
    {

      v9 = v4;
      v5 = v12;
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_100062364()
{
  result = qword_1011839F0;
  if (!qword_1011839F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011839F0);
  }

  return result;
}

Swift::Void __swiftcall Window.layoutSubviews()()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for Window();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v2 = [v0 screen];
  v3 = UIScreen.dimensions.getter();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = &v1[OBJC_IVAR____TtC5Music6Window_lastSeenDimensions];
  if ((static UIScreen.Dimensions.== infix(_:_:)() & 1) == 0)
  {
    v10[2] = v3;
    v10[3] = v5;
    v10[4] = v7;
    v10[5] = v9;
    v11 = &v1[OBJC_IVAR____TtC5Music6Window_screenDimensionsDidChangeHandler];
    swift_beginAccess();
    v12 = *v11;
    if (*v11)
    {

      v12(v13, v3, v5, v7, v9);
      sub_100020438(v12);
    }
  }

  [v1 bounds];
  v15 = v14;
  v17 = v16;
  type metadata accessor for CGSize(0);
  if (static ApproximatelyEquatable.!=~ infix(_:_:)())
  {
    *v10 = v15;
    v10[1] = v17;
    v18 = &v1[OBJC_IVAR____TtC5Music6Window_boundsSizeDidChangeHandler];
    swift_beginAccess();
    v19 = *v18;
    if (*v18)
    {

      v19(v20, v15, v17);
      sub_100020438(v19);
    }
  }
}

uint64_t static UIScreen.Dimensions.== infix(_:_:)()
{
  if ((static CGSize.==~ infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static CGSize.==~ infix(_:_:)();
}

void sub_100062670()
{
  v1 = v0;
  v49.receiver = v0;
  v49.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v49, "viewDidLayoutSubviews");
  v2 = [v0 selectedViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (!v4)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v50.origin.x = v7;
    v50.origin.y = v9;
    v50.size.width = v11;
    v50.size.height = v13;
    Width = CGRectGetWidth(v50);
    v15 = HI.SizeClass.init(_:)(Width);
    v16 = HI.SizeClass.margin.getter(v15);
    v17 = [v1 bottomAccessory];
    if (v17)
    {
    }

    v18 = [v1 traitCollection];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 6)
    {
      HI.BottomPlayer.Ornament.overlappingHeight.unsafeMutableAddressor();
      v20 = [v1 bottomAccessory];
      if (v20)
      {
      }
    }

    [v3 additionalSafeAreaInsets];
    [v3 setAdditionalSafeAreaInsets:?];
    v21 = [v3 view];
    if (!v21)
    {
      goto LABEL_31;
    }

    v22 = v21;
    [v21 setDirectionalLayoutMargins:{0.0, v16, 0.0, v16}];
  }

  v23 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_bottomPlayerViewController];
  if (v23)
  {
    v24 = v23;
    v25 = [v1 traitCollection];
    v26 = [v25 horizontalSizeClass];

    if (v26 >= 2)
    {
      if (v26 != 2)
      {
LABEL_18:
        v30 = *&v1[OBJC_IVAR____TtC5Music16TabBarController_miniPlayerPaletteInteraction];
        if (v30)
        {
          v31 = v30;
          sub_10005A43C();
        }

        goto LABEL_21;
      }

      v29 = [v24 view];
      if (!v29)
      {
LABEL_33:
        __break(1u);
        return;
      }

      v28 = v29;
      [v29 setDirectionalLayoutMargins:{12.0, 8.0, 12.0, 8.0}];
    }

    else
    {
      v27 = [v24 view];
      if (!v27)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v28 = v27;
      [v27 setDirectionalLayoutMargins:{9.0, 16.0, 9.0, 20.0}];
    }

    goto LABEL_18;
  }

LABEL_21:
  v32 = [v1 selectedViewController];
  if (v32)
  {
    v33 = v32;
    type metadata accessor for NavigationController();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      [v34 _layoutTopViewController];
    }
  }

  v35 = [v1 view];
  if (!v35)
  {
    __break(1u);
    goto LABEL_30;
  }

  v36 = v35;
  v37 = UIView.noticePresenter.getter();

  if (v37)
  {
    sub_100062AB8();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = (*(*v37 + 304))(v48);
    v47[3] = v39;
    v47[4] = v41;
    v47[5] = v43;
    v47[6] = v45;
    v46(v48, 0);
  }
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_100062AB8()
{
  v2 = [v0 presentedViewController];
  if (!v2)
  {
LABEL_4:
    v3 = [v0 selectedViewController];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 view];

      if (!v5)
      {
        __break(1u);
        goto LABEL_7;
      }
    }

    else
    {
      v7 = [v0 view];
      if (!v7)
      {
        goto LABEL_14;
      }

      v5 = v7;
    }

    [v5 directionalLayoutMargins];
    goto LABEL_12;
  }

  v1 = v2;
  if ([v2 isBeingDismissed])
  {

    goto LABEL_4;
  }

LABEL_7:
  v6 = [v1 view];
  if (v6)
  {
    v5 = v6;
    [v6 directionalLayoutMargins];

LABEL_12:
    return;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

void sub_100062D6C(void *a1, void (*a2)(id))
{
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = [objc_opt_self() systemRoute];
  }

  v4 = a1;
  a2(v5);
}

void sub_100062E00(void *a1)
{
  if (qword_1011A6A80 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, qword_101219D38);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = v14;
    *v6 = 136446210;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100010678(v9, v11, &v15);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Updating playerPath with route=%{public}s", v6, 0xCu);
    sub_10000959C(v14);
  }

  __chkstk_darwin(v13);
  UnfairLock.locked<A>(_:)(sub_100063008);
}

void sub_100063028(uint64_t a1, void *a2)
{
  v4 = sub_10002E360();
  v5 = *&v4[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];

  v6 = [v5 route];
  if (v6 && (sub_100009F78(0, &qword_1011ADA28), v7 = v6, v8 = a2, v9 = static NSObject.== infix(_:_:)(), v7, v8, (v9 & 1) != 0) && ((v10 = [v7 connection]) == 0 || (v11 = v10, v12 = objc_msgSend(v10, "isInvalidated"), v11, (v12 & 1) == 0)))
  {
  }

  else
  {
    v13 = [a2 isDeviceRoute];
    v14 = objc_opt_self();
    if (v13)
    {
      v15 = v14;
      if (qword_1011A6A50 != -1)
      {
        swift_once();
      }

      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 systemMusicPathWithRoute:a2 playerID:v16];
    }

    else
    {
      v17 = [v14 pathWithRoute:a2 bundleID:0 playerID:0];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v17;

    static Published.subscript.setter();
    sub_100A5A9A8();

    v19 = *(a1 + OBJC_IVAR____TtC9MusicCore6Player____lazy_storage___nowPlayingDataSource);
    v20 = OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path;
    v21 = *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path];
    *&v19[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_path] = v18;
    sub_100009F78(0, &qword_1011A8538);
    v22 = v18;
    v23 = v19;
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      v24 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
      v25 = [v24 request];
      if (v25)
      {
        v26 = *&v19[v20];
        v27 = v25;
        [v25 setPlayerPath:v26];
      }

      [v24 setNeedsReloadForSignificantRequestChange];
    }

    v28 = _MPAVRouteConnectionDidInvalidateNotification;
    v29 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v30 = v22;
    *(a1 + OBJC_IVAR____TtC9MusicCore6Player_playerPathInvalidationObserver) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v28, v22, 1, 1, sub_100A6FD84, v29);

    v31 = [v30 route];
    if (v31)
    {
      v32 = v31;
      v33 = [objc_allocWithZone(MPVolumeControllerRouteDataSource) initWithGroupRoute:v31 outputDeviceRoute:0];
      v34 = [objc_opt_self() sharedController];
      [v34 setActiveDataSource:v33];
    }

    else
    {
    }
  }
}

void sub_100063448(uint64_t *a1)
{
  v1 = *a1;
  v2 = objc_opt_self();
  v3 = [v2 sharedRestrictionsMonitor];
  [v3 setMaximumMovieRatingForAgeGate:v1];

  v4 = [v2 sharedRestrictionsMonitor];
  [v4 setMaximumTVShowRatingForAgeGate:v1];
}

uint64_t sub_1000634F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1000635A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063718(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009740(a1, v4);
}

uint64_t sub_1000637D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063888(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100008F30;

  return sub_100009648(a1, v4);
}

uint64_t sub_100063940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1000639F4(a1, v4, v5, v6);
}

uint64_t sub_1000639F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_100A5A490;

  return Player.startEngineIfNeeded()();
}

uint64_t Player.startEngineIfNeeded()()
{
  v1[16] = v0;
  v1[17] = type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v3;
  v1[20] = v2;

  return _swift_task_switch(sub_100063B40, v3, v2);
}

uint64_t sub_100063B40()
{
  v1 = v0[16];
  v2 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v1 + v2) == 2)
  {

    v7 = v0[1];

    return v7();
  }

  else
  {
    if (!*(v1 + v2))
    {
      *(v1 + v2) = 1;
      sub_100063C5C(0);
    }

    v3 = static MainActor.shared.getter();
    v0[21] = v3;
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

    return _swift_task_switch(sub_100064108, v4, v6);
  }
}

void sub_100063C5C(unsigned __int8 a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
  swift_beginAccess();
  if (*(v2 + v4) != a1)
  {
    if (qword_1011A6A80 != -1)
    {
      goto LABEL_36;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      sub_1000060E4(v5, qword_101219D38);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "╭ Updated Engine State", v8, 2u);
      }

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v39[0] = v12;
        *v11 = 136446210;
        if (*(v2 + v4) > 1u)
        {
          if (*(v2 + v4) == 2)
          {
            v13 = 0xA900000000000079;
            v14 = 0x6461655220859CE2;
          }

          else
          {
            v13 = 0xAE0064656C6C6174;
            v14 = 0x53208FB8EFA09AE2;
          }
        }

        else if (*(v2 + v4))
        {
          v13 = 0xAD0000676E697472;
          v14 = 0x61745320809A9FF0;
        }

        else
        {
          v13 = 0xA700000000000000;
          v14 = 0x66664F208C9DE2;
        }

        v15 = sub_100010678(v14, v13, v39);

        *(v11 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v9, v10, "╰ %{public}s", v11, 0xCu);
        sub_10000959C(v12);
      }

      if (*(v2 + v4) <= 1u)
      {
        break;
      }

      if (*(v2 + v4) != 2)
      {
        return;
      }

      v27 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
      swift_beginAccess();
      v28 = *(v2 + v27);
      v29 = *(v28 + 16);

      if (!v29)
      {
LABEL_28:

        *(v2 + v27) = &_swiftEmptyArrayStorage;

        return;
      }

      v30 = 0;
      v31 = v28 + 40;
      while (v30 < *(v28 + 16))
      {
        ++v30;
        v32 = *(v31 - 8);

        v32(v33);

        v31 += 16;
        if (v29 == v30)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
    }

    if (*(v2 + v4))
    {
      v34 = sub_10001B5D8([*(v2 + OBJC_IVAR____TtC9MusicCore6Player_engine) start]);
      v35 = v34;
      v36 = *(v34 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads);
      *(v34 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads) = 1;
      if (v36 != 1)
      {
        [*(v34 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller) beginAutomaticResponseLoading];
      }

      v23 = sub_10002E360();
      v37 = v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 1;
      if ((v37 & 1) == 0)
      {
        v25 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v26 = "beginAutomaticResponseLoading";
        goto LABEL_34;
      }
    }

    else
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "❌ Stopped engine… which is not supposed to happen", v18, 2u);
      }

      v20 = sub_10001B5D8(v19);
      v21 = v20;
      v22 = *(v20 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads);
      *(v20 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads) = 0;
      if (v22)
      {
        [*(v20 + OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller) endAutomaticResponseLoading];
      }

      v23 = sub_10002E360();
      v24 = v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads];
      v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_automaticallyReloads] = 0;
      if (v24)
      {
        v25 = *&v23[OBJC_IVAR____TtCC9MusicCore6PlayerP33_031AD420BBF8BBF113A2662767DAC2BB10DataSource_controller];
        v26 = "endAutomaticResponseLoading";
LABEL_34:
        v38 = v23;
        [v25 v26];

        return;
      }
    }
  }
}

uint64_t sub_100064108()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_100A5A634;
  v2 = swift_continuation_init();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = OBJC_IVAR____TtC9MusicCore6Player__onEngineIsReady;
  swift_beginAccess();
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v4) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1000642C0(0, v5[2] + 1, 1, v5);
    *(v1 + v4) = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1000642C0((v7 > 1), v8 + 1, 1, v5);
  }

  v5[2] = v8 + 1;
  v9 = &v5[2 * v8];
  v9[4] = sub_100A6DDA0;
  v9[5] = v3;
  *(v1 + v4) = v5;
  swift_endAccess();

  return _swift_continuation_await(v0 + 2);
}

void *sub_1000642E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011B7CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011B6050);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100064418(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BC0D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BC0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_10006454C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_10006460C(a1, v4, v5, v7, v6);
}

uint64_t sub_10006460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000646A4, v7, v6);
}

uint64_t sub_1000646A4()
{
  v1 = *(v0 + 24);

  sub_100064710(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_100064710(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    sub_100065164(v7, v8, v9);
    return;
  }

  v104 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v104;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = [v104 uniqueIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v16 = [v5 contentItemIdentifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = [v104 uniqueIdentifier];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = *v14;
    v25 = v14[1];
    v26 = v14[2];
    *v14 = 1;
    v14[1] = v17;
    v14[2] = v19;
    v14[3] = v21;
    v14[4] = v23;
    sub_100065164(v24, v25, v26);
    goto LABEL_18;
  }

  if (v11 == v14[3] && v13 == v14[4])
  {

    goto LABEL_18;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v27 = [v5 contentItemIdentifier];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = v14[2];
  if (v31)
  {
    if (v28 == v14[1] && v30 == v31)
    {
      v32 = 1;
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v32 = 0;
  }

  if (v14[2])
  {
    v33 = *v14;
  }

  else
  {
    v33 = 0;
  }

  if ([a1 videoOutput])
  {
    v107 = &OBJC_PROTOCOL___MPCVideoOutput_0;
    v34 = swift_dynamicCastObjCProtocolConditional();
    if (!v34 || (v35 = v34, swift_getObjectType(), sub_100009F78(0, &qword_1011AAEA0), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v103 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext();
    swift_allocObject();
    v36 = MPCPlayerResponse.VideoContext.init(output:)(v35);
    if ((v33 & 1) == 0 || (v32 & 1) == 0 || (v97 = v36, [a1 state] != 2))
    {

LABEL_40:

      return;
    }

    v96 = objc_opt_self();
    v37 = [v96 sharedApplication];
    v38 = [v37 openSessions];

    sub_100009F78(0, &qword_1011ACC58);
    sub_100A53570();
    v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v39 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v39 = v108;
      v40 = v109;
      v41 = v110;
      v42 = v111;
      v43 = v112;
    }

    else
    {
      v44 = -1 << *(v39 + 32);
      v40 = v39 + 56;
      v41 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v43 = v46 & *(v39 + 56);

      v42 = 0;
    }

    v47 = (v41 + 64) >> 6;
    v99 = v40;
    if (v39 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v48 = v42;
    v49 = v43;
    v50 = v42;
    if (!v43)
    {
      while (1)
      {
        v50 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if (v50 >= v47)
        {
LABEL_61:
          sub_10005C9F8();

          return;
        }

        v49 = *(v40 + 8 * v50);
        ++v48;
        if (v49)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v89 = v102;
      v88 = v103;
LABEL_89:
      sub_10005C9F8();

      v101 = 0;
      if (!v14[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v14 = 0;
LABEL_91:
      v90 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v91 = *(v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      sub_10000954C((v88 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v90);
      v105[0] = v97;
      v106 = 1;
      v92 = *(v91 + 8);

      v92(v105, v90, v91);

      sub_100A52D6C(v105);
      return;
    }

LABEL_50:
    v51 = (v49 - 1) & v49;
    v52 = *(*(v39 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
    while (1)
    {
      if (!v52)
      {
        goto LABEL_61;
      }

      v54 = v39;
      v102 = v52;
      v55 = [v52 role];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {
        break;
      }

      v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v61)
      {
        goto LABEL_63;
      }

      v42 = v50;
      v43 = v51;
      v39 = v54;
      v40 = v99;
      if ((v39 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v53 = __CocoaSet.Iterator.next()();
      if (!v53)
      {
        goto LABEL_61;
      }

      v113 = v53;
      swift_dynamicCast();
      v52 = v105[0];
      v50 = v42;
      v51 = v43;
    }

LABEL_63:
    sub_10005C9F8();

    v62 = [v102 scene];
    if (!v62 || (v63 = v62, v64 = [v62 activationState], v63, v64))
    {

      goto LABEL_40;
    }

    v65 = [v96 sharedApplication];
    v66 = [v65 openSessions];

    v67 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v67 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v67 = v113;
      v68 = v114;
      v69 = v115;
      v70 = v116;
      v71 = v117;
    }

    else
    {
      v72 = -1 << *(v67 + 32);
      v68 = v67 + 56;
      v69 = ~v72;
      v73 = -v72;
      if (v73 < 64)
      {
        v74 = ~(-1 << v73);
      }

      else
      {
        v74 = -1;
      }

      v71 = v74 & *(v67 + 56);

      v70 = 0;
    }

    v75 = (v69 + 64) >> 6;
    v98 = v68;
    if (v67 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v76 = v70;
    v77 = v71;
    v78 = v70;
    if (v71)
    {
LABEL_77:
      v100 = (v77 - 1) & v77;
      v79 = *(*(v67 + 48) + ((v78 << 9) | (8 * __clz(__rbit64(v77)))));
      while (1)
      {
        v80 = v67;
        if (!v79)
        {
          goto LABEL_93;
        }

        v101 = v79;
        v81 = [v79 role];
        v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v84 = v83;
        if (v82 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v84 == v85)
        {
          break;
        }

        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v87)
        {
          goto LABEL_95;
        }

        v70 = v78;
        v67 = v80;
        v68 = v98;
        v71 = v100;
        if ((v67 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v79 = v105[0];
        v78 = v70;
        v100 = v71;
      }

LABEL_95:
      sub_10005C9F8();

      v93 = [v101 scene];
      if (v93)
      {
        v94 = v93;
        v95 = [v93 activationState];

        if (v95 == -1)
        {
          v89 = v102;
          v88 = v103;
          if (!v14[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        break;
      }

      if (v78 >= v75)
      {
LABEL_88:
        v89 = v102;
        v88 = v103;
        goto LABEL_89;
      }

      v77 = *(v68 + 8 * v78);
      ++v76;
      if (v77)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_100065164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000651A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000652A0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);
    *(result + 16) = v1;

    sub_100065328(v3);
  }

  return result;
}

uint64_t sub_100065328(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10010FC20(&unk_101182130);
  v93 = *(v4 - 8);
  v94 = v4;
  __chkstk_darwin(v4);
  v92 = v82 - v5;
  v6 = sub_10010FC20(&unk_101183B20);
  v96 = *(v6 - 8);
  __chkstk_darwin(v6);
  v95 = v82 - v7;
  v8 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v8 - 8);
  v91 = v82 - v9;
  v10 = sub_10010FC20(&qword_101182148);
  v11 = *(v10 - 8);
  v87 = v10;
  v88 = v11;
  __chkstk_darwin(v10);
  v86 = v82 - v12;
  v13 = sub_10010FC20(&unk_101182150);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v89 = v82 - v16;
  v90 = v15;
  v17 = *(v1 + 32);
  v20 = *(v17 + 16);
  v18 = v17 + 16;
  v19 = v20;
  if (v20)
  {
    v21 = *(v1 + 16);
    v97 = *(v18 + 16 * v19);
    if (v21)
    {
      v22 = *(*v21 + 216);
      swift_unknownObjectRetain();

      v24 = v22(v23);

      if (a1)
      {
        v26 = (*(*a1 + 216))(v25);
        ObjectType = swift_getObjectType();
        *&v99 = v26;
        v27 = _bridgeAnythingToObjectiveC<A>(_:)();
        sub_10000959C(&v99);
      }

      else
      {
        v27 = 0;
      }

      v28 = [v24 isEqual:v27];

      swift_unknownObjectRelease();
      if (v28)
      {
        goto LABEL_21;
      }

      v29 = *(v2 + 16);
      if (v29)
      {
        v30 = qword_10117F230;

        if (v30 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_1000060E4(v31, qword_101181F90);
        swift_unknownObjectRetain();

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        swift_unknownObjectRelease();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v85 = v6;
          v35 = v34;
          v98[0] = swift_slowAlloc();
          *v35 = 136446466;
          v36 = *(*v29 + 240);
          v84 = v14;

          v38 = v36(v37);
          v40 = v39;

          v41 = sub_1000105AC(v38, v40, v98);

          *(v35 + 4) = v41;
          *(v35 + 12) = 2082;
          v99 = v97;
          swift_unknownObjectRetain();
          sub_10010FC20(&qword_101182128);
          v42 = String.init<A>(describing:)();
          v44 = sub_1000105AC(v42, v43, v98);

          *(v35 + 14) = v44;
          v14 = v84;
          _os_log_impl(&_mh_execute_header, v32, v33, "Adding videoContext==%{public}s to container=%{public}s", v35, 0x16u);
          swift_arrayDestroy();

          v6 = v85;
        }

        v45 = swift_getObjectType();
        (*(*(&v97 + 1) + 8))(v29, v45);
        goto LABEL_20;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    if (!a1)
    {
LABEL_21:
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    v46 = qword_10117F230;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000060E4(v47, qword_101181F90);
    swift_unknownObjectRetain();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v85 = v6;
      v51 = v50;
      v98[0] = swift_slowAlloc();
      *v51 = 136446466;
      v52 = *(*a1 + 240);
      v84 = v14;

      v54 = v52(v53);
      v56 = v55;

      v57 = sub_1000105AC(v54, v56, v98);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2082;
      v99 = v97;
      swift_unknownObjectRetain();
      sub_10010FC20(&qword_101182128);
      v58 = String.init<A>(describing:)();
      v60 = sub_1000105AC(v58, v59, v98);

      *(v51 + 14) = v60;
      v14 = v84;
      _os_log_impl(&_mh_execute_header, v48, v49, "Removing videoContext=%{public}s from container=%{public}s", v51, 0x16u);
      swift_arrayDestroy();

      v6 = v85;
    }

    v61 = swift_getObjectType();
    (*(*(&v97 + 1) + 16))(a1, v61);
LABEL_20:

    goto LABEL_21;
  }

LABEL_22:
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = sub_10010E5A8(&_swiftEmptyArrayStorage);
  }

  else
  {
    v62 = &_swiftEmptySetSingleton;
  }

  swift_beginAccess();
  *(v2 + 24) = v62;

  v64 = *(v2 + 16);
  if (v64)
  {
    v65 = *(*v64 + 192);

    v67 = v86;
    v65(v66);
    sub_100027010();
    v68 = static OS_dispatch_queue.main.getter();
    v85 = v6;
    v69 = v68;
    v98[0] = v68;
    v84 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v70 = *(v84 - 8);
    v83 = *(v70 + 56);
    *&v97 = v70 + 56;
    v71 = v14;
    v72 = v91;
    v83(v91, 1, 1, v84);
    v82[1] = &protocol conformance descriptor for Published<A>.Publisher;
    sub_100020674(&unk_101182160, &qword_101182148);
    v82[0] = sub_1000206BC();
    v73 = v89;
    v74 = v87;
    Publisher.receive<A>(on:options:)();
    sub_10013A3C8(v72);

    (*(v88 + 8))(v67, v74);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182170, &unk_101182150);
    v75 = v90;
    Publisher<>.sink(receiveValue:)();

    (*(v71 + 8))(v73, v75);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v77 = v92;
    (*(*v64 + 144))(v76);
    v78 = static OS_dispatch_queue.main.getter();
    v98[0] = v78;
    v83(v72, 1, 1, v84);
    sub_100020674(&qword_101184280, &unk_101182130);
    v80 = v94;
    v79 = v95;
    Publisher.receive<A>(on:options:)();
    sub_10013A3C8(v72);

    (*(v93 + 8))(v77, v80);
    swift_allocObject();
    swift_weakInit();
    sub_100020674(&unk_101182180, &unk_101183B20);
    v81 = v85;
    Publisher<>.sink(receiveValue:)();

    (*(v96 + 8))(v79, v81);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  return result;
}

uint64_t sub_100065F88()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_100065FC0(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = objc_allocWithZone(type metadata accessor for MCDSharePlayTogetherViewModel());
    v3 = v1;
    v4 = sub_10013A078(v3);
    v5 = qword_101218AE8;
    qword_101218AE8 = v4;
    v6 = v4;

    v7 = [objc_opt_self() defaultCenter];
    if (qword_10117F208 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_101218648 object:0];

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *((swift_isaMask & *v3) + 0x360);

    v9(sub_10035F630, v8);
  }

  else
  {
    v10 = qword_101218AE8;
    qword_101218AE8 = 0;

    v11 = [objc_opt_self() defaultCenter];
    v12 = v11;
    if (qword_10117F208 != -1)
    {
      swift_once();
      v11 = v12;
    }

    [v11 postNotificationName:qword_101218648 object:0];
  }
}

uint64_t sub_1000661F4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

NSString sub_10006622C()
{
  result = String._bridgeToObjectiveC()();
  qword_101218648 = result;
  return result;
}

void sub_1000662D0(id *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying);
    *(Strong + OBJC_IVAR____TtC5Music22QuickActionsController_nowPlaying) = v1;
    if (v4)
    {
      if (v1)
      {
        sub_100009F78(0, &qword_10118D500);
        v1 = v1;
        v5 = v4;
        v6 = static NSObject.== infix(_:_:)();

        if (v6)
        {

          v3 = v5;
LABEL_9:

          return;
        }
      }
    }

    else
    {
      if (!v1)
      {
        goto LABEL_9;
      }

      v1 = v1;
    }

    sub_10001C32C();

    v3 = v4;
    goto LABEL_9;
  }
}

uint64_t sub_1000663CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  sub_10010FC20(&qword_101182140);
  v4[7] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_10118D4D0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_10118D4D8);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Variant();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_101181AC8);
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000666E4, v10, v9);
}

uint64_t sub_100066630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1000663CC(a1, v4, v5, v6);
}

uint64_t sub_1000666E4()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v17 = v0[12];
  v18 = v0[18];
  v16 = v0[11];
  v6 = v0[10];
  v15 = v0[9];
  v13 = v0[8];
  v14 = v0[13];
  v12 = v0[7];
  v7 = v0[6];

  type metadata accessor for Playlist();
  MusicLibraryRequest.init()();
  swift_getKeyPath();
  (*(v3 + 104))(v4, enum case for Playlist.Variant.favoriteSongs(_:), v5);
  sub_100066AD0();
  MusicLibraryRequest<>.filter<A>(matching:equalTo:)();

  (*(v3 + 8))(v4, v5);
  sub_100020674(&qword_10118D4E0, &qword_101181AC8);
  *(v7 + OBJC_IVAR____TtC5Music22QuickActionsController_fspAutoupdatingResponse) = MusicAutoupdatableRequest.autoupdatingResponse.getter();

  dispatch thunk of MusicAutoupdatingResponse.$response.getter();

  sub_100009F78(0, &qword_101182960);
  v8 = static OS_dispatch_queue.main.getter();
  v0[5] = v8;
  v9 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v9 - 8) + 56))(v12, 1, 1, v9);
  sub_100020674(&qword_10118D4E8, &qword_10118D4D0);
  sub_1000206BC();
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v12, &qword_101182140);

  (*(v15 + 8))(v6, v13);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100020674(&qword_10118D4F0, &qword_10118D4D8);
  Publisher<>.sink(receiveValue:)();

  (*(v17 + 8))(v14, v16);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  (*(v18 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

unint64_t sub_100066AD0()
{
  result = qword_10118A3C0;
  if (!qword_10118A3C0)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118A3C0);
  }

  return result;
}

uint64_t sub_100066B2C(__int128 *a1)
{
  v1 = a1[5];
  v37 = a1[4];
  v38 = v1;
  v2 = a1[7];
  v39 = a1[6];
  v40 = v2;
  v3 = a1[1];
  v33 = *a1;
  v34 = v3;
  v4 = a1[3];
  v35 = a1[2];
  v36 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v30 = v40;
    v26[8] = v33;
    v26[9] = v34;
    v26[10] = v35;
    v26[11] = v36;
    UIScreen.Dimensions.size.getter(*&v35);
    v7 = (v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v8 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v9 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v10 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v32[2] = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v32[3] = v10;
    v32[0] = v8;
    v32[1] = v9;
    v11 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v12 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v13 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v32[6] = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v32[7] = v13;
    v32[4] = v11;
    v32[5] = v12;
    v14 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v15 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v16 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v31[2] = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v31[3] = v16;
    v31[0] = v14;
    v31[1] = v15;
    v17 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v19 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v18 = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v31[6] = *(v6 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v31[7] = v17;
    v31[4] = v19;
    v31[5] = v18;
    v20 = v33;
    v21 = v34;
    v22 = v36;
    v7[2] = v35;
    v7[3] = v22;
    *v7 = v20;
    v7[1] = v21;
    v23 = v27;
    v24 = v28;
    v25 = v30;
    v7[6] = v29;
    v7[7] = v25;
    v7[4] = v23;
    v7[5] = v24;
    sub_1000148F0(&v33, v26);
    sub_1000148F0(&v33, v26);
    sub_1000089F8(v32, v26, &qword_101182BC0);
    sub_1000095E8(v31, &qword_101182BC0);
    sub_100066CB0(v32);
    sub_1000095E8(v32, &qword_101182BC0);
    sub_100014984(&v33);
  }

  return result;
}

void sub_100066CB0(_OWORD *a1)
{
  v2 = v1;
  v4 = (v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  v5 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
  v46[4] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
  v46[5] = v5;
  v6 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
  v46[6] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
  v46[7] = v6;
  v7 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
  v46[0] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
  v46[1] = v7;
  v8 = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
  v46[2] = *(v2 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
  v46[3] = v8;
  if (sub_100066F78(v46) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = v4[1];
  }

  v10 = a1[5];
  v45[4] = a1[4];
  v45[5] = v10;
  v11 = a1[7];
  v45[6] = a1[6];
  v45[7] = v11;
  v12 = a1[1];
  v45[0] = *a1;
  v45[1] = v12;
  v13 = a1[3];
  v45[2] = a1[2];
  v45[3] = v13;
  if (sub_100066F78(v45) == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v9 ^ BYTE1(v45[0]);
  }

  v15 = *(v4 + 5);
  v40[4] = *(v4 + 4);
  v40[5] = v15;
  v16 = *(v4 + 7);
  v40[6] = *(v4 + 6);
  v40[7] = v16;
  v17 = *(v4 + 1);
  v40[0] = *v4;
  v40[1] = v17;
  v18 = *(v4 + 3);
  v40[2] = *(v4 + 2);
  v40[3] = v18;
  if (sub_100066F78(v40) == 1)
  {
    v19 = 4;
  }

  else
  {
    v19 = v4[96];
  }

  v20 = a1[5];
  v42[4] = a1[4];
  v42[5] = v20;
  v21 = a1[7];
  v43 = a1[6];
  v44 = v21;
  v22 = a1[1];
  v42[0] = *a1;
  v42[1] = v22;
  v23 = a1[3];
  v42[2] = a1[2];
  v42[3] = v23;
  v24 = sub_100066F78(v42);
  v25 = v19 == 4 && v24 == 1;
  if (v24 != 1 && v19 != 4)
  {
    v25 = sub_100017618(v43, v19);
  }

  v26 = *(v4 + 5);
  v39[4] = *(v4 + 4);
  v39[5] = v26;
  v27 = *(v4 + 7);
  v39[6] = *(v4 + 6);
  v39[7] = v27;
  v28 = *(v4 + 1);
  v39[0] = *v4;
  v39[1] = v28;
  v29 = *(v4 + 3);
  v39[2] = *(v4 + 2);
  v39[3] = v29;
  if (sub_100066F78(v39) == 1)
  {
    v30 = 2;
  }

  else
  {
    v30 = *v4;
  }

  v31 = a1[5];
  v41[4] = a1[4];
  v41[5] = v31;
  v32 = a1[7];
  v41[6] = a1[6];
  v41[7] = v32;
  v33 = a1[1];
  v41[0] = *a1;
  v41[1] = v33;
  v34 = a1[3];
  v41[2] = a1[2];
  v41[3] = v34;
  if (sub_100066F78(v41) == 1)
  {
    if (!((v30 != 2) | v14 & 1) && ((v25 ^ 1) & 1) == 0)
    {
      return;
    }
  }

  else if (v30 != 2 && !(v14 & 1 | ((v25 & 1) == 0)) && ((LOBYTE(v41[0]) ^ v30) & 1) == 0)
  {
    return;
  }

  if (qword_10117F6B0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000060E4(v35, qword_101218BD8);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Triggering profile fetch…", v38, 2u);
  }

  sub_100066FF4();
}

uint64_t sub_100066F78(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100066F90()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218BD8);
  sub_1000060E4(v0, qword_101218BD8);
  return static Logger.music(_:)();
}

void sub_100066FF4()
{
  v1 = sub_10010FC20(&qword_101183AD0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v41 - v5;
  v7 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v7 - 8);
  v9 = &v41 - v8;
  v10 = [objc_opt_self() sharedPrivacyInfo];
  v11 = [v10 privacyAcknowledgementRequiredForMusic];

  if (v11)
  {
    if (qword_10117F6B0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, qword_101218BD8);
    v42 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v42, v13, "GDPR has not been accepted - Bypassing profile fetch", v14, 2u);
    }

    v15 = v42;
  }

  else
  {
    v16 = v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities;
    v17 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 80);
    v44[4] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 64);
    v44[5] = v17;
    v18 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 112);
    v44[6] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 96);
    v44[7] = v18;
    v19 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 16);
    v44[0] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities);
    v44[1] = v19;
    v20 = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 48);
    v44[2] = *(v0 + OBJC_IVAR____TtC5Music19UserProfileObserver_capabilities + 32);
    v44[3] = v20;
    if (sub_100066F78(v44) == 1 || *(v16 + 1) != 1)
    {
      if (qword_10117F6B0 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_1000060E4(v32, qword_101218BD8);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "No network connection - Bypassing profile fetch", v35, 2u);
      }
    }

    else
    {
      v21 = *(v16 + 80);
      v43[4] = *(v16 + 64);
      v43[5] = v21;
      v22 = *(v16 + 112);
      v43[6] = *(v16 + 96);
      v43[7] = v22;
      v23 = *(v16 + 16);
      v43[0] = *v16;
      v43[1] = v23;
      v24 = *(v16 + 48);
      v43[2] = *(v16 + 32);
      v43[3] = v24;
      if (sub_100066F78(v43) == 1 || *v16 != 1)
      {
        if (qword_10117F6B0 != -1)
        {
          swift_once();
        }

        v36 = type metadata accessor for Logger();
        sub_1000060E4(v36, qword_101218BD8);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Not signed in — Clearing existing profile", v39, 2u);
        }

        v40 = type metadata accessor for UserProfile();
        (*(*(v40 - 8) + 56))(v6, 1, 1, v40);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_1000089F8(v6, v4, &qword_101183AD0);

        static Published.subscript.setter();
        sub_1000095E8(v6, &qword_101183AD0);
      }

      else
      {
        v25 = type metadata accessor for TaskPriority();
        (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
        v26 = swift_allocObject();
        swift_weakInit();
        type metadata accessor for MainActor();

        v27 = v0;
        v28 = static MainActor.shared.getter();
        v29 = swift_allocObject();
        v29[2] = v28;
        v29[3] = &protocol witness table for MainActor;
        v29[4] = v26;

        v30 = sub_1001F4CB8(0, 0, v9, &unk_100EBE5B0, v29);
        v31 = *(v27 + OBJC_IVAR____TtC5Music19UserProfileObserver_task);
        *(v27 + OBJC_IVAR____TtC5Music19UserProfileObserver_task) = v30;
        if (v31)
        {

          if ((static Task.== infix(_:_:)() & 1) == 0)
          {
            Task.cancel()();
          }
        }
      }
    }
  }
}

uint64_t sub_100067618()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100067658()
{

  if (qword_10117F8A0 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100067F80, 0, 0);
}

void *sub_1000676F0()
{
  result = sub_100067718(_swiftEmptyArrayStorage);
  off_101196190 = result;
  return result;
}

unint64_t sub_100067718(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011804B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C10(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100067814(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&unk_1011A85E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001FD3C(v5, v6, sub_10000F930);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100067924(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B1618);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000F8B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100067A20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011B9BB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100019C40(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100067B1C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100067B80(a2);
  }
}

void sub_100067B80(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009F78(0, &qword_1011A9F80);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x8000000100E5C330;
      AnyHashable.init<A>(_:)();
      if (*(v14 + 16))
      {
        v15 = sub_1000160B4(v28);
        if (v16)
        {
          sub_10000DD18(*(v14 + 56) + 32 * v15, v27);
          sub_10001621C(v28);

          sub_100016270(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          AnyHashable.init<A>(_:)();
          sub_10000DD18(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_100068158(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_10001621C(v28);
          sub_10000959C(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_10001621C(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_100067F80()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006C5E8, v2, v1);
}

_OWORD *sub_10006800C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000160B4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1006C8CD0();
      goto LABEL_7;
    }

    sub_1006C199C(v13, a3 & 1);
    v19 = sub_1000160B4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000160F8(a2, v21);
      return sub_1006C793C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000959C(v17);

  return sub_100016270(a1, v17);
}

_OWORD *sub_100068158(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1000160B4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1008BA888();
      goto LABEL_7;
    }

    sub_1008B71C4(v13, a3 & 1);
    v19 = sub_1000160B4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1000160F8(a2, v21);
      return sub_1006C793C(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_10000959C(v17);

  return sub_100016270(a1, v17);
}

uint64_t sub_1000682A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008F30;

  return sub_100068364(a1, v4, v5, v7, v6);
}

uint64_t sub_100068364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  sub_10010FC20(&unk_10118B980);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for Notice(0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for MusicNotice();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_10010FC20(&qword_10118E170);
  v5[15] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_10118E178);
  v5[16] = v8;
  v5[17] = *(v8 - 8);
  v5[18] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_10118E180);
  v5[19] = v9;
  v5[20] = *(v9 - 8);
  v10 = swift_task_alloc();
  v5[21] = v10;
  v5[22] = type metadata accessor for MainActor();
  v5[23] = static MainActor.shared.getter();
  v11 = swift_task_alloc();
  v5[24] = v11;
  *v11 = v5;
  v11[1] = sub_1003E3338;

  return MusicPageProvider.notices()(v10);
}

uint64_t sub_100068654()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_100068708();
}

uint64_t sub_100068708()
{
  v1 = type metadata accessor for LibraryImportStatus();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  sub_10010FC20(&qword_10118E158);
  v0[8] = swift_task_alloc();
  v2 = sub_10010FC20(&qword_10118E160);
  v0[9] = v2;
  v0[10] = *(v2 - 8);
  v0[11] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_10118E168);
  v0[12] = v3;
  v0[13] = *(v3 - 8);
  v4 = swift_task_alloc();
  v0[14] = v4;
  v0[15] = type metadata accessor for MainActor();
  v0[16] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v0[17] = v5;
  *v5 = v0;
  v5[1] = sub_1003E4358;

  return MusicPageProvider.libraryImportStatus.getter(v4);
}

void sub_100068948(id a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying;
  v5 = *&v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_nowPlaying];
  if (v5)
  {
    v6 = [v5 tracklist];
    if (a1)
    {
      v7 = [a1 tracklist];
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1007D3644(v7);
    v9 = v10;
  }

  else
  {
    v8 = 0;
    v9 = 1;
  }

  sub_1002B2290(v8, v9 & 1);
  v11 = *&v2[v4];
  v49 = &_s18NowPlayingUISourceON;
  v50 = &off_10109D788;
  v48[0] = 2;
  v12 = v11;

  sub_100069390(v11, v48);

  sub_1000095E8(v48, &unk_101183910);
  sub_1002B06E4();
  v48[0] = 10;
  v13 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v13))
  {
    v14 = *&v2[v4];
    v15 = *(*&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager] + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
    v16 = *(v15 + 24);
    *(v15 + 24) = v14;
    v17 = v14;

    sub_100069C14();
    goto LABEL_9;
  }

  v18 = [v2 view];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 window];

    if (!v20 || (v17 = [v20 windowScene], v20, !v17))
    {
LABEL_15:
      v25 = *&v2[v4];
      if (v25 && (v26 = [v25 tracklist], v27 = objc_msgSend(v26, "playingItem"), v26, v27))
      {
        [v27 duration];
        v28 = v51;
      }

      else
      {
        v28 = 0;
      }

      sub_10006A548(v28);
      v29 = *&v2[v4];
      swift_beginAccess();
      v30 = v29;
      sub_10019B380(v29, a1);
      swift_endAccess();

      v31 = *&v2[v4];
      if (v31)
      {
        v32 = [v31 tracklist];
        v33 = [v32 playingItem];

        if (!a1)
        {
          if (!v33)
          {
            v33 = 0;
            v34 = 0;
LABEL_40:

            v33 = v34;
            goto LABEL_41;
          }

          goto LABEL_25;
        }
      }

      else
      {
        v33 = 0;
        v34 = 0;
        if (!a1)
        {
          goto LABEL_40;
        }
      }

      v35 = [a1 tracklist];
      a1 = [v35 playingItem];

      if (!v33)
      {
        v39 = 0;
        v37 = 0;
        v34 = 0;
        if (!a1)
        {
          goto LABEL_40;
        }

        goto LABEL_29;
      }

LABEL_25:
      v36 = [v33 contentItemIdentifier];
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v39 = v38;

      if (!a1)
      {
        v34 = 0;
        if (!v39)
        {
          goto LABEL_40;
        }

        goto LABEL_36;
      }

LABEL_29:
      v40 = [a1 contentItemIdentifier];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v43 = v42;

      if (v39)
      {
        if (v43)
        {
          if (v37 == v41 && v39 == v43)
          {

LABEL_41:

            return;
          }

          v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v47)
          {

            goto LABEL_41;
          }

LABEL_37:
          v44 = v33;
          v33 = a1;
          type metadata accessor for ApplicationMainMenu();
          v45 = sub_100314AEC();
          if (v45)
          {
            v46 = v45;
            sub_100059768();
          }

          goto LABEL_41;
        }
      }

      else
      {
        v34 = a1;
        if (!v43)
        {
          goto LABEL_40;
        }
      }

LABEL_36:

      goto LABEL_37;
    }

    if (UISceneActivationState.isForeground.getter([v17 activationState]))
    {
      v21 = *&v2[v4];
      v22 = *(*&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController_motionArtworkManager] + OBJC_IVAR____TtC5Music20MotionArtworkManager_metadataService);
      v23 = *(v22 + 24);
      *(v22 + 24) = v21;
      v24 = v21;

      sub_100069C14();
      v17 = v24;
    }

LABEL_9:

    goto LABEL_15;
  }

  __break(1u);
}

id UIWindowScene.rootViewController.getter()
{
  v0 = UIWindowScene.mainWindow.getter();
  v1 = [v0 rootViewController];

  return v1;
}

void sub_100068E6C(void *a1)
{
  v19 = a1;
  v2 = sub_10010FC20(&unk_101181520);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog;
  v6 = *&v1[OBJC_IVAR____TtC5Music21NowPlayingContentView__internalCatalog];
  v7 = v6;
  LOBYTE(v6) = Optional<A>.isArtworkVisuallyIdentical(to:)(v6, v19);

  if ((v6 & 1) == 0)
  {
    v8 = *&v1[v5];
    v9 = v19;
    *&v1[v5] = v19;
    v19 = v9;

    if (v1[OBJC_IVAR____TtC5Music21NowPlayingContentView_pauseArtworkUpdates])
    {
      v10 = type metadata accessor for TaskPriority();
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for MainActor();

      v12 = v1;
      v13 = static MainActor.shared.getter();
      v14 = swift_allocObject();
      v14[2] = v13;
      v14[3] = &protocol witness table for MainActor;
      v14[4] = v11;

      v15 = sub_1001F4CB8(0, 0, v4, &unk_100EDADB8, v14);
      v16 = *&v12[OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask];
      *&v12[OBJC_IVAR____TtC5Music21NowPlayingContentView_updateConfigurationTask] = v15;
      if (v16)
      {

        Task.cancel()();
      }

      return;
    }

    sub_10004C8F4();
    [v1 setNeedsLayout];
  }

  v17 = v19;
}

uint64_t sub_1000690BC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000690F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t UIWindowScene.mainWindow.getter()
{
  if ([v0 delegate])
  {
    v1 = swift_dynamicCastObjCProtocolConditional();
    if (v1)
    {
      v2 = v1;
      if ([v1 respondsToSelector:"window"])
      {
        v3 = [v2 window];
        swift_unknownObjectRelease();
        return v3;
      }
    }

    swift_unknownObjectRelease();
  }

  v4 = [v0 windows];
  sub_100009F78(0, &qword_1011BAD28);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

LABEL_13:

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_11:
    v3 = v7;

    return v3;
  }

  __break(1u);
  return result;
}

void sub_1000692A4(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath);
  *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_playerPath) = a1;
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

    v7 = 0;
    a1 = a1;
    goto LABEL_7;
  }

  v7 = v3;
  if (!a1 || (sub_100009F78(0, &qword_10119C150), a1 = a1, v4 = v7, v5 = static NSObject.== infix(_:_:)(), v4, (v5 & 1) == 0))
  {
LABEL_7:
    sub_10004C8F4();

    v6 = v7;
    goto LABEL_8;
  }

  v6 = v4;
LABEL_8:
}

void sub_100069390(void *a1, uint64_t a2)
{
  v3 = v2;
  if (!a1)
  {
    v2[2] = 0;
    v2[3] = 0;
    v2[4] = 0;

    v2[5] = 0;
    v2[6] = 0;
    v2[7] = 0;

    v2[8] = 0;
    v2[9] = 0;
    v2[10] = 0;

    v16 = v2[11];
    if (v16)
    {

      v16(v17);

      sub_100020438(v16);
    }

    return;
  }

  v70 = a1;
  v5 = [v70 tracklist];
  v6 = [v5 playingItem];

  v7 = [v6 seekCommand];
  sub_10010FC20(&qword_1011A4138);
  inited = swift_initStackObject();
  v69 = xmmword_100EBDC20;
  *(inited + 1) = xmmword_100EBDC20;
  v9 = 0;
  v10 = 0;
  if (!v7)
  {
    goto LABEL_15;
  }

  v11 = [v7 preferredBackwardJumpIntervals];
  sub_100345730();
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v12 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_70:
    v13 = sub_1007E9138(0, v12);
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_73;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

  [v14 doubleValue];
  v10 = v15;

LABEL_15:
  inited[4] = v10;
  *(inited + 40) = 0;
  inited[6] = -1;
  *(inited + 56) = 1;
  v18 = swift_initStackObject();
  v12 = v18;
  *(v18 + 16) = v69;
  v67 = v6;
  v66[1] = v7;
  if (v7)
  {
    v19 = [v7 preferredForwardJumpIntervals];
    sub_100345730();
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v20 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = sub_1007E9138(0, v20);
        goto LABEL_21;
      }

      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v20 + 32);
LABEL_21:
        v22 = v21;

        [v22 doubleValue];
        v9 = v23;

        goto LABEL_24;
      }

LABEL_73:
      __break(1u);
      return;
    }
  }

LABEL_24:
  v6 = v66;
  *(v12 + 32) = v9;
  *(v12 + 40) = 0;
  *(v12 + 48) = 1;
  v68 = v12;
  *(v12 + 56) = 1;
  __chkstk_darwin(v18);
  v64 = v70;
  v65 = a2;
  *&v69 = a2;
  v24 = 0;
  v25 = sub_1001FAAB8(sub_1007F08CC, v63, inited);

  v7 = 0;
  a2 = *(v25 + 16);
  inited = _swiftEmptyArrayStorage;
LABEL_25:
  v26 = 24 * v7;
  while (a2 != v7)
  {
    if (v7 >= *(v25 + 16))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    ++v7;
    v27 = v26 + 24;
    v28 = *(v25 + v26 + 48);
    v26 += 24;
    if (*(v28 + 16))
    {
      v66[0] = v24;
      v29 = *(v25 + v27 + 8);
      v12 = *(v25 + v27 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = inited;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v71;
      }

      v6 = inited[2];
      v31 = inited[3];
      if (v6 >= v31 >> 1)
      {
        sub_10066C920((v31 > 1), v6 + 1, 1);
        inited = v71;
      }

      inited[2] = v6 + 1;
      v32 = &inited[3 * v6];
      v32[4] = v29;
      *(v32 + 40) = v12;
      v32[6] = v28;
      v24 = v66[0];
      goto LABEL_25;
    }
  }

  if (inited[2])
  {
    v33 = inited[4];
    v6 = *(inited + 40);
    v34 = inited[6];
  }

  else
  {
    v33 = 0;
    v6 = 0;
    v34 = 0;
  }

  v35 = v69;

  v3[2] = v33;
  v3[3] = v6;
  v3[4] = v34;

  __chkstk_darwin(v36);
  v64 = v70;
  v65 = v35;
  v37 = sub_1001FAAB8(sub_1007F031C, v63, &off_1010991E8);
  v66[0] = v24;
  v7 = 0;
  a2 = *(v37 + 16);
  inited = _swiftEmptyArrayStorage;
LABEL_38:
  v38 = 24 * v7;
  while (a2 != v7)
  {
    if (v7 >= *(v37 + 16))
    {
      goto LABEL_68;
    }

    ++v7;
    v39 = v38 + 24;
    v40 = *(v37 + v38 + 48);
    v38 += 24;
    if (*(v40 + 16))
    {
      v12 = *(v37 + v39 + 8);
      v41 = *(v37 + v39 + 16);

      v42 = swift_isUniquelyReferenced_nonNull_native();
      v71 = inited;
      if ((v42 & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v71;
      }

      v6 = inited[2];
      v43 = inited[3];
      if (v6 >= v43 >> 1)
      {
        sub_10066C920((v43 > 1), v6 + 1, 1);
        inited = v71;
      }

      inited[2] = v6 + 1;
      v44 = &inited[3 * v6];
      v44[4] = v12;
      *(v44 + 40) = v41;
      v44[6] = v40;
      goto LABEL_38;
    }
  }

  v12 = v68;
  if (inited[2])
  {
    v45 = inited[4];
    v6 = *(inited + 40);
    v46 = inited[6];
  }

  else
  {
    v45 = 0;
    v6 = 0;
    v46 = 0;
  }

  v47 = v69;
  v48 = v66[0];

  v3[5] = v45;
  v3[6] = v6;
  v3[7] = v46;

  __chkstk_darwin(v49);
  v64 = v70;
  v65 = v47;
  a2 = sub_1001FAAB8(sub_1007F08CC, v63, v12);
  *&v69 = v48;
  swift_setDeallocating();
  v7 = 0;
  v50 = *(a2 + 16);
  inited = _swiftEmptyArrayStorage;
LABEL_51:
  v51 = 24 * v7;
  while (v50 != v7)
  {
    if (v7 >= *(a2 + 16))
    {
      goto LABEL_69;
    }

    ++v7;
    v52 = v51 + 24;
    v12 = *(a2 + v51 + 48);
    v51 += 24;
    if (*(v12 + 16))
    {
      v53 = *(a2 + v52 + 8);
      v6 = *(a2 + v52 + 16);

      v54 = swift_isUniquelyReferenced_nonNull_native();
      v71 = inited;
      if ((v54 & 1) == 0)
      {
        sub_10066C920(0, inited[2] + 1, 1);
        inited = v71;
      }

      v56 = inited[2];
      v55 = inited[3];
      if (v56 >= v55 >> 1)
      {
        sub_10066C920((v55 > 1), v56 + 1, 1);
        inited = v71;
      }

      inited[2] = v56 + 1;
      v57 = &inited[3 * v56];
      v57[4] = v53;
      *(v57 + 40) = v6;
      v57[6] = v12;
      goto LABEL_51;
    }
  }

  if (inited[2])
  {
    v58 = inited[4];
    v59 = *(inited + 40);
    v60 = inited[6];
  }

  else
  {
    v58 = 0;
    v59 = 0;
    v60 = 0;
  }

  v3[8] = v58;
  v3[9] = v59;
  v3[10] = v60;

  v61 = v3[11];
  if (v61)
  {

    v61(v62);

    swift_unknownObjectRelease();
    sub_100020438(v61);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

void sub_100069C14()
{
  if (*(v0 + 16) != 1 || (v1 = *(v0 + 24)) == 0)
  {
    v11 = 0;
LABEL_9:
    v10 = (v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
    *v10 = 0;
    v10[1] = 0;

    sub_100069DB0();

    return;
  }

  v11 = v1;
  v2 = sub_1005765AC(v11);
  if (!v2)
  {

    goto LABEL_9;
  }

  v4 = v2;
  v5 = v3;
  v6 = (v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  v7 = *(v0 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  if (v7)
  {
    v8 = v6[1];

    v9 = sub_10047BEF8(v4, v7);

    if ((v9 & 1) != 0 && v5 == v8)
    {

      swift_bridgeObjectRelease_n();
      return;
    }
  }

  else
  {
  }

  *v6 = v4;
  v6[1] = v5;

  sub_100069DB0();
  sub_100577AE8(v4, v5);
}

uint64_t sub_100069DB0()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_10118EB40);
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - v3;
  v55 = type metadata accessor for Date();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MotionArtworkMetadataService.QueueState.Item(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v67 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10010FC20(&qword_101191960);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v51 - v15;
  v16 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState);
  if (v16)
  {
    v68 = v5;
    v17 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8);
    v18 = *(v16 + 16);
    v19 = _swiftEmptyArrayStorage;
    if (v18)
    {
      v52 = *(v1 + OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_queueState + 8);
      v72 = _swiftEmptyArrayStorage;
      swift_bridgeObjectRetain_n();
      v60 = v14;
      sub_10066CA84(0, v18, 0);
      v20 = v60;
      v19 = v72;
      v56 = OBJC_IVAR____TtC5Music28MotionArtworkMetadataService_cache;
      v21 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v51 = v16;
      v22 = v16 + v21;
      v23 = *(v11 + 72);
      v65 = (v8 + 48);
      v66 = v23;
      v53 = (v68 + 40);
      v58 = v4;
      v59 = v1;
      v57 = v7;
      do
      {
        v24 = v69;
        sub_1000089F8(v22, v69, &qword_101191960);
        sub_1000089F8(v24, v20, &qword_101191960);
        if ((*v65)(v20, 1, v7) == 1)
        {
          sub_1000095E8(v24, &qword_101191960);
          sub_1000095E8(v20, &qword_101191960);
          v25 = 0;
          v26 = 0;
          v27 = 0;
        }

        else
        {
          v28 = v67;
          sub_10057E118(v20, v67, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          v29 = v28[1];
          v63 = *v28;
          v30 = *(v1 + v56);
          v64 = v29;

          v31 = Album.id.getter();
          v33 = v32;
          swift_beginAccess();
          v61 = v31;
          v68 = v33;
          v34 = sub_100576274(&v70, v31, v33);
          v36 = v35;
          v37 = type metadata accessor for Cache.Entry(0);
          v38 = *(v37 - 8);
          v62 = *(v38 + 48);
          if (!v62(v36, 1, v37))
          {
            v39 = v54;
            Date.init()();
            (*v53)(v36, v39, v55);
          }

          (v34)(&v70, 0);
          v40 = v58;
          swift_endAccess();
          swift_beginAccess();
          v41 = *(v30 + 16);
          if (*(v41 + 16) && (v42 = sub_100019C10(v61, v68), (v43 & 1) != 0))
          {
            sub_10057E060(*(v41 + 56) + *(v38 + 72) * v42, v40);
            v44 = 0;
          }

          else
          {
            v44 = 1;
          }

          (*(v38 + 56))(v40, v44, 1, v37);
          v45 = v62(v40, 1, v37);
          v20 = v60;
          if (v45)
          {
            sub_1000095E8(v40, &qword_10118EB40);
            swift_endAccess();
            v27 = _swiftEmptyDictionarySingleton;
          }

          else
          {
            v27 = *(v40 + *(v37 + 20));

            sub_1000095E8(v40, &qword_10118EB40);
            swift_endAccess();
          }

          v1 = v59;
          v7 = v57;

          sub_10057E180(v67, type metadata accessor for MotionArtworkMetadataService.QueueState.Item);
          sub_1000095E8(v69, &qword_101191960);
          v25 = v63;
          v26 = v64;
        }

        v72 = v19;
        v47 = v19[2];
        v46 = v19[3];
        if (v47 >= v46 >> 1)
        {
          v64 = v26;
          v49 = v25;
          sub_10066CA84((v46 > 1), v47 + 1, 1);
          v26 = v64;
          v25 = v49;
          v20 = v60;
          v19 = v72;
        }

        v19[2] = v47 + 1;
        v48 = &v19[3 * v47];
        v48[4] = v25;
        v48[5] = v26;
        v48[6] = v27;
        v22 += v66;
        --v18;
      }

      while (v18);
      swift_bridgeObjectRelease_n();
      v17 = v52;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v70 = v19;
    v71 = v17;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v70 = 0;
    v71 = 0;
  }

  return static Published.subscript.setter();
}

uint64_t sub_10006A4CC()
{
  result = type metadata accessor for Album();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10006A548(char a1)
{
  v3 = sub_10010FC20(&unk_101181520);
  result = __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition];
  v1[OBJC_IVAR____TtC5Music26BottomPlayerViewController_isInTransition] = a1;
  if (v7 == 1 && (a1 & 1) == 0)
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    result = sub_1001F4CB8(0, 0, v6, &unk_100EC58F8, v11);
    v12 = *&v9[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask];
    *&v9[OBJC_IVAR____TtC5Music26BottomPlayerViewController_shouldShowSmartTransitionTTRButtonTask] = result;
    if (v12)
    {

      Task.cancel()();
    }
  }

  return result;
}

void sub_10006A6D8()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101182140);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10010FC20(&unk_101183B90);
  v6 = __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherSession);
  if (v10)
  {
    v20 = v6;
    v21 = v7;
    type metadata accessor for SharePlayTogetherSession(0);
    sub_1002B7108(&unk_101189E70, type metadata accessor for SharePlayTogetherSession);
    v11 = v10;
    v23 = ObservableObject<>.objectWillChange.getter();
    sub_100009F78(0, &qword_101182960);
    v12 = static OS_dispatch_queue.main.getter();
    v22 = v12;
    v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    type metadata accessor for ObservableObjectPublisher();
    sub_10001C070(&qword_101184920, &qword_101182960);
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v4, &qword_101182140);

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v14;
    sub_100020674(&qword_101183BA0, &unk_101183B90);
    v16 = v11;
    v17 = v20;
    v18 = Publisher<>.sink(receiveValue:)();

    (*(v21 + 8))(v9, v17);
    *(v1 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = v18;
  }

  else
  {
    v19 = *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount);
    *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharedListeningParticipantsCount) = 0;
    if (v19)
    {
      sub_10004F27C();
    }

    *(v0 + OBJC_IVAR____TtC5Music26BottomPlayerViewController_sharePlayTogetherParticipantsSubscription) = 0;

    sub_10004F27C();
  }
}

uint64_t sub_10006AA9C()
{

  return swift_deallocObject();
}

uint64_t sub_10006AADC()
{
  if (qword_1011A6B30 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_1000060E4(v1, static Logger.groupActivities);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "🚦 Initiating group session observer", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];

  type metadata accessor for GroupActivitiesManager.Activity(0);
  sub_100053024(&qword_1011AF0B0, type metadata accessor for GroupActivitiesManager.Activity);
  static GroupActivity.sessions()();
  GroupSession.Sessions.makeAsyncIterator()();
  (*(v6 + 8))(v5, v7);
  v8 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_session;
  v0[17] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_isLeaveCommandInProgress;
  v0[18] = v8;
  v0[19] = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_pendingSession;
  v0[20] = static MainActor.shared.getter();
  v9 = sub_100020674(&qword_1011AF970, &qword_1011AF968);
  v10 = swift_task_alloc();
  v0[21] = v10;
  *v10 = v0;
  v10[1] = sub_100ABA050;
  v11 = v0[9];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v11, v9);
}

uint64_t sub_10006AD2C()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.groupActivities);
  sub_1000060E4(v0, static Logger.groupActivities);
  sub_100009F78(0, &qword_1011AFB00);
  OS_os_log.init(subsystem:category:)();
  return Logger.init(_:)();
}

void sub_10006ADD4()
{
  v1 = v0;
  v2 = sub_100025CE0();
  if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2))
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_nowPlayingShouldShowMotionBackground);
  }

  else
  {
    v3 = sub_10065F7F8();
  }

  [*(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_containerView) setClipsToBounds:v3 & 1];
  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) == 0 && (v3 & 1) == 0)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
    *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
    if (v4)
    {
      [v4 removeFromSuperview];
    }
  }

  if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v2) & 1) != 0 && (sub_10065F7F8() & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot);
    *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_morphingMotionSnapshot) = 0;
    if (v5)
    {
      [v5 removeFromSuperview];
    }
  }

  if (!*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_motionData) || (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v9 == 255) || (sub_10004ADFC(v8, v9), (v9 & 1) != 0))
  {
    if (*(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_freezeSquareMotion))
    {
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_needsSquareMotionUpdate) = 1;
    }

    else
    {
      v6 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView);
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionKeyframeView) = 0;
      if (v6)
      {
        [v6 removeFromSuperview];
      }

      v7 = *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot);
      *(v1 + OBJC_IVAR____TtC5Music21NowPlayingContentView_squareMotionSnapshot) = 0;
      if (v7)
      {
        [v7 removeFromSuperview];
      }

      sub_10065CE7C(0, 1);
    }
  }
}

uint64_t sub_10006B010(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10010FC20(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006B078(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10006B204(void *a1, uint64_t a2)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = [objc_opt_self() systemRoute];
  }

  v4 = *(a2 + 24);
  v5 = a1;
  if ([v7 isDeviceRoute])
  {
    v6 = 0;
  }

  else
  {
    v6 = 2;
  }

  [v4 setDiscoveryMode:v6];
}

uint64_t sub_10006B2A8(uint64_t a1)
{
  swift_beginAccess();
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 36) = 0;
  os_unfair_lock_unlock((a1 + 32));
  v2 = swift_endAccess();
  return (*(a1 + 16))(v2);
}

uint64_t sub_10006B3B0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostError();
  v49 = *(v4 - 8);
  v50 = v4;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v54 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignposter();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v55 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = Logger.scenes.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v16, v12);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v48 = v6;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v47 = v2;
    v22 = v21;
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v56 = v23;
    *v22 = 136446210;
    v25 = [v17 description];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v12;
    v27 = v10;
    v28 = v26;
    v30 = v29;

    v31 = sub_1000105AC(v28, v30, &v56);

    *(v22 + 4) = v31;
    v10 = v27;
    _os_log_impl(&_mh_execute_header, v18, v19, "Main sceneDidBecomeActive %{public}s", v22, 0xCu);
    sub_10000959C(v24);
    v9 = v51;

    v2 = v47;

    (*(v13 + 8))(v15, v46);
  }

  else
  {

    (*(v13 + 8))(v15, v12);
  }

  v32 = OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState;
  v33 = v54;
  if (*(v2 + OBJC_IVAR____TtC5Music17MainSceneDelegate_signpostDidBecomeActiveIntervalState))
  {

    v34 = OSSignposter.launch.unsafeMutableAddressor();
    (*(v10 + 16))(v55, v34, v9);
    v35 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v36 = static os_signpost_type_t.end.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v51 = v9;

      v37 = v48;
      checkForErrorAndConsumeState(state:)();

      v39 = v49;
      v38 = v50;
      v40 = (*(v49 + 88))(v37, v50);
      v45 = v10;
      if (v40 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v41 = "[Error] Interval already ended";
      }

      else
      {
        (*(v39 + 8))(v37, v38);
        v41 = "";
      }

      v42 = swift_slowAlloc();
      *v42 = 0;
      v43 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v35, v36, v43, "MainScene.DidBecomeActive", v41, v42, 2u);

      v9 = v51;
      v10 = v45;
    }

    (*(v52 + 8))(v33, v53);
    (*(v10 + 8))(v55, v9);
    *(v2 + v32) = 0;
  }

  return static AppReview.recordAppOpened()();
}

uint64_t static AppReview.recordAppOpened()()
{
  v0 = sub_10010FC20(&qword_1011A7F00);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_100969440(0, 0, v2, &unk_100EFC7F0, v4);
}

uint64_t sub_10006B9D0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10006BA08()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10006BABC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return sub_10006BB68();
}

uint64_t sub_10006BB84()
{
  if (qword_1011A7020 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002F3F4;

  return StoreReviewGatingController.didEnterForeground()();
}

uint64_t sub_10006BC4C()
{
  v0 = objc_allocWithZone(ICStoreRequestContext);
  v5[4] = sub_10006BF5C;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_10006BD7C;
  v5[3] = &unk_1010DF718;
  v1 = _Block_copy(v5);
  v2 = [v0 initWithBlock:v1];
  _Block_release(v1);

  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v2];

    v4 = objc_allocWithZone(type metadata accessor for StoreReviewGatingController());
    result = StoreReviewGatingController.init(bag:)();
    qword_1011AFC18 = result;
  }

  return result;
}

void sub_10006BD7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10006BDC8(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v8 = a1;
    v5 = [v4 defaultIdentityStore];
    [v3 setIdentityStore:v5];

    v6 = [objc_opt_self() activeAccount];
    [v3 setIdentity:v6];

    [v3 setAllowsExpiredBags:1];
    v7 = [objc_allocWithZone(ICURLResponseAuthenticationProvider) initWithUserInteractionLevel:1];
    [v3 setAuthenticationProvider:v7];

    if (qword_1011A6990 != -1)
    {
      swift_once();
    }

    [v3 setClientInfo:static ICClientInfo.storeFlow];
  }
}

void *sub_10006BF60()
{
  v0 = [objc_allocWithZone(ICClientInfo) initWithSystemApplicationType:0];
  [v0 mutableCopy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10006C044();
  swift_dynamicCast();
  v1 = String._bridgeToObjectiveC()();
  [v3 setBagProfileVersion:v1];

  return v3;
}

void *sub_10006C024()
{
  result = sub_10006BF60();
  static ICClientInfo.storeFlow = result;
  return result;
}

unint64_t sub_10006C044()
{
  result = qword_1011AAE88;
  if (!qword_1011AAE88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011AAE88);
  }

  return result;
}

void sub_10006C090(char a1)
{
  v2 = v1;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v4 = sub_1002AE644();
  v5 = (*((swift_isaMask & *v4) + 0xE8))(v15);
  *(v6 + 24) = 1;
  v5(v15, 0);

  v7 = *&v2[OBJC_IVAR____TtC5Music26BottomPlayerViewController____lazy_storage___nowPlayingItemStackView];
  v8 = *((swift_isaMask & *v7) + 0x100);
  v9 = v7;
  v10 = v8(v15);
  *(v11 + 24) = 1;
  v10(v15, 0);

  v12 = [v2 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 window];

    sub_1002D9810(v14);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006C27C(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101181BE8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - v4;
  v6 = sub_10010FC20(&qword_10118D4F8);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  v9 = sub_10010FC20(&qword_101181AC0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  sub_10006C578(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1000095E8(v8, &qword_10118D4F8);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    MusicLibraryResponse.items.getter();
    sub_100020674(&unk_10118C130, &qword_101181BE8);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v3 + 8))(v5, v2);
    v16 = v18[2] != v18[1];
    v17 = v15[OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites];
    v15[OBJC_IVAR____TtC5Music22QuickActionsController_hasFavorites] = v16;
    if (v16 != v17)
    {
      sub_10001C32C();
    }
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_10006C578(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_10118D4F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006C5E8()
{

  swift_beginAccess();
  v1 = off_101196190;
  *(v0 + 72) = off_101196190;
  *(v0 + 40) = v1;

  return _swift_task_switch(sub_10006C7F4, 0, 0);
}

uint64_t EnvironmentVariable.isEnabled.getter(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = EnvironmentVariable.value.getter(a1, a2, a3);
  if (!v5)
  {
    return 0;
  }

  if (a3 <= 1u)
  {
    sub_10000988C();
    v6 = StringProtocol.contains<A>(_:)();

    return v6 & 1;
  }

  if (v4 == 49 && v5 == 0xE100000000000000 || (v8 = v4, v9 = v5, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v8 == 1702195828 && v9 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v8 == 5457241 && v9 == 0xE300000000000000)
  {

    v6 = 1;
    return v6 & 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v10 & 1;
}

uint64_t sub_10006C7F4()
{
  v37 = v0;
  if ((EnvironmentVariable.isEnabled.getter(0, 0, 2u) & 1) == 0)
  {
    LOBYTE(v35) = 0;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 1;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 2;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 3;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 4;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 5;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 6;
    sub_10058870C(&v35, (v0 + 5));
    LOBYTE(v35) = 7;
    sub_10058870C(&v35, (v0 + 5));
    goto LABEL_35;
  }

  v1 = 0;
  v2 = _swiftEmptyDictionarySingleton;
  do
  {
    v5 = *(&off_10109B9A0 + v1 + 32);
    if ((v5 - 3) >= 4)
    {
      if (v5 == 1)
      {

        v6 = 0xD000000000000025;
        v7 = 0x8000000100E50760;
      }

      else
      {
        v35 = 0;
        v36 = 0xE000000000000000;

        _StringGuts.grow(_:)(17);
        v8 = 0xD000000000000027;
        if (v5 == 2)
        {
          v8 = 0xD000000000000029;
        }

        v9 = "com.apple.Music.Tooltip.Sing";
        if (v5 != 2)
        {
          v9 = "anslationAndTransliteration";
        }

        if (v5)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0xD00000000000002CLL;
        }

        if (v5)
        {
          v11 = v9;
        }

        else
        {
          v11 = "llPlaylists";
        }

        v12 = v11 | 0x8000000000000000;
        String.append(_:)(*&v10);

        v13._countAndFlagsBits = 0x6F6E6B634173692ELL;
        v13._object = 0xEF64656764656C77;
        String.append(_:)(v13);
        v6 = v35;
        v7 = v36;
      }
    }

    else
    {

      v6 = 0xD000000000000029;
      v7 = 0x8000000100E3C7F0;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = v2;
    v15 = sub_100019C10(v6, v7);
    v17 = v2[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v21 = v16;
    if (v2[3] < v20)
    {
      sub_1006BFFAC(v20, isUniquelyReferenced_nonNull_native);
      v15 = sub_100019C10(v6, v7);
      if ((v21 & 1) != (v22 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

LABEL_25:
      if (v21)
      {
        goto LABEL_3;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v27 = v15;
    sub_1006C7E3C();
    v15 = v27;
    if (v21)
    {
LABEL_3:
      v3 = v15;

      v4 = v35;
      *(v35[7] + v3) = 0;

      v2 = v4;
      goto LABEL_4;
    }

LABEL_26:
    v23 = v35;
    v35[(v15 >> 6) + 8] |= 1 << v15;
    v24 = (v23[6] + 16 * v15);
    *v24 = v6;
    v24[1] = v7;
    *(v23[7] + v15) = 0;

    v25 = v23[2];
    v19 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v19)
    {
      goto LABEL_42;
    }

    v23[2] = v26;
    v2 = v23;
LABEL_4:
    ++v1;
  }

  while (v1 != 8);

  v0[5] = v2;
  if (qword_10117F8B0 == -1)
  {
    goto LABEL_32;
  }

LABEL_43:
  swift_once();
LABEL_32:
  v28 = type metadata accessor for Logger();
  sub_1000060E4(v28, qword_1011961A0);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "🤖 Debugging Mode Active — Setting all tips as non acknowledged", v31, 2u);
  }

LABEL_35:
  v0[10] = v0[5];
  v0[11] = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100588628, v33, v32);
}

uint64_t EnvironmentVariable.value.getter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = 0xD000000000000013;
  v5 = [objc_opt_self() processInfo];
  v6 = [v5 environment];

  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000017;
    }

    if (a3 == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "FEATUREFLAGS_ENABLED";
    }
  }

  else
  {
    v8 = "MUSIC_TOOLTIP_DEBUG_ALL";
  }

  if (*(v7 + 16))
  {
    v9 = sub_100019C28(v4, v8 | 0x8000000000000000);
    v11 = v10;

    if (v11)
    {
      v12 = *(*(v7 + 56) + 16 * v9);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {

    v12 = 0;
  }

  return v12;
}

void sub_10006D1B4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v3 = Strong;
        v4 = *(Strong + OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_endpoint);

        v5 = [v4 outputDevices];
        if (v5)
        {
          sub_100009F78(0, &qword_1011AF008);
          static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v6 = objc_opt_self();
      sub_100009F78(0, &qword_1011AF008);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v8 = [v6 symbolNameForOutputDevices:isa];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

uint64_t type metadata accessor for EnvironmentMonitor()
{
  result = qword_1011AFE48;
  if (!qword_1011AFE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10006D3A8()
{
  result = qword_1011AFDF8;
  if (!qword_1011AFDF8)
  {
    type metadata accessor for EnvironmentMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AFDF8);
  }

  return result;
}

char *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor()
{
  if (qword_1011A7118 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.hasExtendedColorDisplay;
}

uint64_t sub_10006D450(uint64_t result)
{
  if (qword_100EFCFE0[*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel)] == qword_100EFCFE0[result])
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__thermalLevel) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006D3A8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10006D578(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC9MusicCore18EnvironmentMonitor__isNetworkConstrained) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006D3A8();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10006D68C(void *a1, unsigned __int8 *a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t NSUserDefaults.showAllTVShows.getter()
{
  strcpy(v1, "showAllTVShows");
  v1[15] = -18;
  sub_10000988C();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v1[0];
    }
  }

  else
  {
    sub_100011E58(&v2);
    return 0;
  }

  return result;
}

uint64_t sub_10006D798()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v19[-v6];
  __chkstk_darwin(v8);
  v10 = &v19[-v9];
  String.LocalizationValue.init(stringLiteral:)();
  v11 = *(v2 + 16);
  v11(v7, v10, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v12 = qword_101219808;
  v11(v4, v7, v1);
  v13 = v12;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  v17 = *(v2 + 8);
  v17(v7, v1);
  result = (v17)(v10, v1);
  static AccessibilityString.favoriteBadgeLabel = v14;
  unk_10121B1E0 = v16;
  return result;
}

id sub_10006D9D8(uint64_t (*a1)(void))
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    v4 = a1();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006DA24(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

void NSUserDefaults.hasSeenDolbyDownloadConflictAlert.setter()
{
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

void sub_10006DB24(void **a1)
{
  v1 = *a1;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v1 setValue:isa forKey:v2];
}

char *DeviceCapabilities.deviceType.unsafeMutableAddressor()
{
  if (qword_1011A70F8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.deviceType;
}

char *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor()
{
  if (qword_1011A70E8 != -1)
  {
    swift_once();
  }

  return &static DeviceCapabilities.isInternalInstall;
}

id NSUserDefaults.hasSeenDolbyDownloadConflictAlert.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

BOOL sub_10006DD74(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10006DDA4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10006DDD0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_10006DEEC@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10006DF18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006DF38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100111C74(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10006DF78()
{
  if (sub_100DEE674(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_10006E0DC()
{
  if (sub_100DEE674(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t getEnumTagSinglePayload for SmartTransitionAnimation.CircleDrawing(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SmartTransitionAnimation.CircleDrawing(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t _s5SpecsV22SpringTimingParametersVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E3B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006E3D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10006E444()
{

  return swift_deallocObject();
}

uint64_t sub_10006E484()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_10006E4BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_10006E5EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Image.Placeholder();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GridView.Base.ViewModel.ImageConfiguration.Shape();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10006E710()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00) + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_10006EB8C()
{

  return swift_deallocObject();
}

uint64_t sub_10006EBF8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483644)
  {
    v4 = (*a1 >> 2) & 0xFFFFFF80 | (*a1 >> 1);
    v5 = -4 - v4;
    if ((-4 - v4) < 0)
    {
      v5 = -1;
    }

    if (v4 > 0x80000000)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = sub_10010FC20(&qword_10119F0B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t *sub_10006ECC8(uint64_t *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483644)
  {
    result[1] = 0;
    result[2] = 0;
    *result = (4 * (-3 - a2)) & 0x3FFFFFE00 | (2 * ((-3 - a2) & 0x7FLL));
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006EDC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101180F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006EE34(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101180F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006EE9C()
{

  return swift_deallocObject();
}

uint64_t sub_10006EEDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 34);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10010FC20(&qword_10119F0B0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10006EF98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 34) = a2 + 1;
  }

  else
  {
    v7 = sub_10010FC20(&qword_10119F0B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10006F04C()
{

  return swift_deallocObject();
}

uint64_t sub_10006F09C()
{
  v1 = type metadata accessor for MusicVideo();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_10006F1A0()
{

  return swift_deallocObject();
}

uint64_t sub_10006F1D8()
{
  v1 = type metadata accessor for Song();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    sub_10012B804(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}