uint64_t sub_1003B43C8(char a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_1003B44F0, v4, v3);
}

uint64_t sub_1003B44F0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  v3 = *(v2 + OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying);
  *(v2 + OBJC_IVAR____TtC7Journal14PlaybackButton_isPlaying) = v1;
  if (v1 == v3)
  {
    v4 = *(v0 + 72);
  }

  else
  {
    v4 = *(v0 + 72);
    [*(v0 + 80) setNeedsUpdateConfiguration];
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_1003B4590()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal18MediaAssetGridView_artBlurView);
}

id sub_1003B4610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAssetGridView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediaAssetGridView()
{
  result = qword_100AE1838;
  if (!qword_100AE1838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003B47A0()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v4;

  sub_1003E9628(0, 0, v2, &unk_100952DA8, v6);
}

uint64_t sub_1003B48F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003B4230(a1, v4, v5, v6);
}

uint64_t sub_1003B49A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADF198);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B4A14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B4A5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003B35B4(a1, v4, v5, v6);
}

uint64_t sub_1003B4B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003B3DC4(a1, v4, v5, v6);
}

uint64_t sub_1003B4BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1003318E0(a1, v4, v5, v6);
}

id sub_1003B4CA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoPinAnnotation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003B4D14()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for RTFEditingViewController();
  objc_msgSendSuper2(&v14, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC7JournalP33_52B12D7015364A2A97B4965365E27BCB24RTFEditingViewController_cleanTextView];
    [v2 addSubview:v4];

    sub_100013178(0.0);

    v5 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v4 setFont:v5];

    v6 = objc_opt_self();
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 __systemImageNamedSwift:v7];

    v9 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v8 style:0 target:v1 action:"showRTFSheet"];
    v10 = [v1 navigationItem];
    sub_1000F24EC(&unk_100AD4780);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100941D50;
    *(v11 + 32) = v9;
    sub_1000065A8(0, &qword_100AD43B0);
    v12 = v9;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v10 setRightBarButtonItems:isa];
  }

  else
  {
    __break(1u);
  }
}

id sub_1003B53BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1003B5420()
{
  type metadata accessor for RTFEditingViewController();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_1003B5498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B5710();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B54FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B5710();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B5560()
{
  sub_1003B5710();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1003B5588()
{
  sub_1000F24EC(&unk_100AD4780);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100941D50;
  sub_1000065A8(0, &qword_100AF1DF0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100941830;
  sub_1000065A8(0, &qword_100AE18E8);
  *(v1 + 32) = static UITextFormattingViewControllerComponent.component(_:_:)();
  *(v1 + 40) = static UITextFormattingViewControllerComponent.component(_:_:)();
  *(v1 + 48) = static UITextFormattingViewControllerComponent.component(_:_:)();
  *(v1 + 56) = static UITextFormattingViewControllerComponent.component(_:_:)();
  v2 = static UITextFormattingViewControllerComponentGroup.group(_:)();

  *(v0 + 32) = v2;
  v3 = objc_allocWithZone(UITextFormattingViewControllerConfiguration);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithGroups:isa];

  return v5;
}

unint64_t sub_1003B5710()
{
  result = qword_100AE18F0;
  if (!qword_100AE18F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE18F0);
  }

  return result;
}

uint64_t sub_1003B5764()
{
  static AnyTransition.opacity.getter();
  static Animation.easeIn(duration:)();
  Animation.delay(_:)();

  AnyTransition.animation(_:)();

  static AnyTransition.opacity.getter();
  static Animation.easeOut(duration:)();
  AnyTransition.animation(_:)();

  v0 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_100B2F870 = v0;
  return result;
}

uint64_t sub_1003B5838()
{
  if (qword_100ACFCE8 != -1)
  {
    swift_once();
  }

  static AnyTransition.offset(x:y:)();
  v0 = AnyTransition.combined(with:)();

  qword_100B2F878 = v0;
  return result;
}

uint64_t sub_1003B58D0()
{
  static AnyTransition.identity.getter();
  static AnyTransition.opacity.getter();
  v0 = static AnyTransition.asymmetric(insertion:removal:)();

  qword_100B2F880 = v0;
  return result;
}

id sub_1003B5A10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaceholderAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003B5A68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100042028(&qword_100AE13E0, type metadata accessor for SuggestionsOverlayCoordinator.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__configuration;
  swift_beginAccess();
  return sub_1000082B4(v3 + v4, a2, &qword_100AE13F0);
}

uint64_t sub_1003B5B40(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000F24EC(&qword_100AE13F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_1000082B4(a1, &v9[-v5], &qword_100AE13F0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_100042028(&qword_100AE13E0, type metadata accessor for SuggestionsOverlayCoordinator.ViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100004F84(v6, &qword_100AE13F0);
}

uint64_t sub_1003B5C90()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE1920);
  sub_10000617C(v0, qword_100AE1920);
  return Logger.init(subsystem:category:)();
}

void sub_1003B5D14()
{
  v1 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v1);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator) + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) == 2)
  {
    v4 = type metadata accessor for UUID();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    swift_storeEnumTagMultiPayload();
    memset(v5, 0, sizeof(v5));
    sub_1003B5E4C(v3, v5);
    sub_100004F84(v5, &qword_100AD13D0);
    sub_1003BFC28(v3, type metadata accessor for CanvasContentInputType);
  }
}

uint64_t sub_1003B5E4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v12 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for CanvasContentInputType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003BF914(a1, v18, type metadata accessor for CanvasContentInputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        [v2 showCameraPicker];
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_1003B73DC();
        goto LABEL_31;
      }

      v32 = type metadata accessor for TaskPriority();
      (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
      type metadata accessor for MainActor();
      v33 = v2;
      v34 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = v34;
      *(v30 + 24) = &protocol witness table for MainActor;
      *(v30 + 32) = v33;
      v31 = &unk_1009530C0;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000082B4(a2, &v44, &qword_100AD13D0);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      v25 = v45;
      *(v24 + 24) = v44;
      *(v24 + 40) = v25;

      sub_100173A50(1, sub_1003BF790, v24);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      sub_100657630();
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_100170C4C(*v18);
        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        sub_100024EC0(v18, v14);
        sub_1003B7110(v14);
        sub_100004F84(v14, &qword_100AD1420);
        goto LABEL_31;
      }

      v26 = *v18;
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v11, 1, 1, v27);
      type metadata accessor for MainActor();
      v28 = v2;
      v29 = static MainActor.shared.getter();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = &protocol witness table for MainActor;
      *(v30 + 32) = v28;
      *(v30 + 40) = v26;
      v31 = &unk_1009530D0;
LABEL_26:
      sub_1003BF1BC(0, 0, v11, 0, 0, v31, v30);

      sub_100004F84(v11, &qword_100AD5170);
      goto LABEL_31;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v20 = *&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
      sub_1001707E8(1, 1);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1003BECA8(1);
        swift_unknownObjectRelease();
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v22 = Strong;
        [Strong becomeFirstResponder];
      }

      sub_100173CA8(1, v20);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1003B6E7C(a2);
    }

    else
    {
      sub_1000082B4(a2, &v44, &qword_100AD13D0);
      v35 = *(&v45 + 1);
      if (*(&v45 + 1))
      {
        v36 = sub_10000CA14(&v44, *(&v45 + 1));
        v37 = *(v35 - 8);
        v38 = __chkstk_darwin(v36);
        v40 = &v44 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v37 + 16))(v40, v38);
        v41 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v37 + 8))(v40, v35);
        sub_10000BA7C(&v44);
      }

      else
      {
        v41 = 0;
      }

      [v3 showPhotoMenuIfNeeded:v41];
      swift_unknownObjectRelease();
    }
  }

LABEL_31:
  v42 = sub_100658B00();
  sub_1002B30D0(v42);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  sub_1003BF914(a1, v8, type metadata accessor for CanvasContentInputType);
  (*(v16 + 56))(v8, 0, 1, v15);
  sub_1003C858C(v8);
}

uint64_t sub_1003B65C4()
{
  v1 = sub_10080DB2C();
  v2 = __OFSUB__(14, v1);
  result = 14 - v1;
  if (v2)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  v0 = result;
  if (qword_100AD0220 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100B30100);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = v0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempted to assign a photo picker selection limit of <0 (%ld). Defaulting to 0 to avoid crashes.", v7, 0xCu);
  }

  return 0;
}

void sub_1003B66C8()
{
  v1 = type metadata accessor for PhotoLibraryAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v59 = (&v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_1000F24EC(&qword_100AD5B20);
  __chkstk_darwin(v4 - 8);
  v6 = (&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v58 = (&v48 - v8);
  __chkstk_darwin(v9);
  v60 = (&v48 - v10);
  v11 = type metadata accessor for PHPickerConfiguration.Update();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v53 = v11;
      v54 = v6;
      v62 = v1;
      PHPickerConfiguration.Update.init()();
      v18 = v0;
      sub_1003B65C4();
      PHPickerConfiguration.Update.selectionLimit.setter();
      PHPickerViewController.updatePicker(using:)();
      v19 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
      v20 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
      swift_beginAccess();
      v63 = *(v19 + v20);
      v21 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions;
      swift_beginAccess();
      v22 = *(v18 + v21);
      v65 = _swiftEmptyArrayStorage;
      if (v22 >> 62)
      {
        goto LABEL_57;
      }

      for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v61 = v2;
        v50 = v17;
        v51 = v14;
        v52 = v12;
        v14 = v63;

        if (!i)
        {
          break;
        }

        v24 = 0;
        v2 = v22 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v22 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_54;
            }

            v25 = *(v22 + 8 * v24 + 32);
          }

          v17 = v25;
          v12 = (v24 + 1);
          if (__OFADD__(v24, 1))
          {
            break;
          }

          v64 = v25;
          __chkstk_darwin(v25);
          *(&v48 - 2) = &v64;
          if (sub_10005B088(sub_100333A7C, (&v48 - 4), v14))
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v14 = v63;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v12 == i)
          {
            v26 = v65;
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        ;
      }

      v26 = _swiftEmptyArrayStorage;
LABEL_21:

      if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
        if (v14)
        {
LABEL_24:
          v2 = 0;
          v63 = v26 & 0xC000000000000001;
          v28 = (v61 + 48);
          v56 = (v61 + 8);
          v57 = (v61 + 16);
          v12 = _swiftEmptyArrayStorage;
          v61 = v14;
LABEL_25:
          v49 = v12;
          v29 = v2;
          while (1)
          {
            if (v63)
            {
              v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v29 >= *(v26 + 2))
              {
                goto LABEL_56;
              }

              v30 = *&v26[v29 + 4];
            }

            v22 = v30;
            v2 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_55;
            }

            type metadata accessor for LivePhotoAsset();
            v31 = swift_dynamicCastClass();
            if (v31)
            {
              if (!*(v31 + OBJC_IVAR____TtC7Journal14LivePhotoAsset_metadata))
              {
                goto LABEL_27;
              }

              v32 = v22;

              v12 = v60;
            }

            else
            {
              type metadata accessor for VideoAsset();
              v33 = swift_dynamicCastClass();
              if (v33)
              {
                if (!*(v33 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata))
                {
                  goto LABEL_27;
                }

                v34 = v22;

                v12 = v58;
              }

              else
              {
                type metadata accessor for PhotoAsset();
                v35 = swift_dynamicCastClass();
                if (!v35 || !*(v35 + OBJC_IVAR____TtC7Journal10PhotoAsset_metadata))
                {
                  goto LABEL_27;
                }

                v36 = v22;

                v12 = v54;
              }
            }

            sub_100046ADC(v12);

            v37 = v62;
            v38 = v12;
            if ((*v28)(v12, 1, v62))
            {

              sub_100004F84(v12, &qword_100AD5B20);
              v14 = v61;
LABEL_27:

              goto LABEL_28;
            }

            v12 = v59;
            (*v57)(v59, v38, v37);
            sub_100004F84(v38, &qword_100AD5B20);
            v39 = PhotoLibraryAssetMetadata.assetIdentifier.getter();
            v17 = v40;

            (*v56)(v12, v37);
            v14 = v61;
            if (v17)
            {
              v41 = v49;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v41 = sub_10009BCC8(0, *(v41 + 2) + 1, 1, v41);
              }

              v44 = *(v41 + 2);
              v43 = *(v41 + 3);
              v45 = v41;
              v22 = v44 + 1;
              if (v44 >= v43 >> 1)
              {
                v45 = sub_10009BCC8((v43 > 1), v44 + 1, 1, v41);
              }

              v12 = v45;
              *(v45 + 2) = v22;
              v46 = &v45[16 * v44];
              *(v46 + 4) = v39;
              *(v46 + 5) = v17;
              if (v2 != v14)
              {
                goto LABEL_25;
              }

              goto LABEL_60;
            }

LABEL_28:
            ++v29;
            if (v2 == v14)
            {
              v12 = v49;
              goto LABEL_60;
            }
          }
        }
      }

      else
      {
        v14 = *(v26 + 2);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      v12 = _swiftEmptyArrayStorage;
LABEL_60:

      if (*(v12 + 2))
      {
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v50 deselectAssetsWithIdentifiers:isa];

        (*(v52 + 1))(v51, v53);
      }

      else
      {
        (*(v52 + 1))(v51, v53);
      }
    }

    else
    {
      v27 = v55;
    }
  }
}

void sub_1003B6E7C(uint64_t a1)
{
  v3 = [v1 presentedViewController];
  if (!v3 || (v4 = v3, type metadata accessor for CanvasDatePickerViewController(), v5 = swift_dynamicCastClass(), v4, !v5))
  {
    v6 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
    objc_allocWithZone(type metadata accessor for CanvasDatePickerViewController());

    v7 = v1;
    v8 = sub_10068CFE8(v6, v1, &off_100A6A7D8);
    v9 = [v8 popoverPresentationController];
    if (!v9)
    {
LABEL_12:
      sub_100171DA0(v8, 2, 1, *&v7[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator]);

      return;
    }

    v10 = v9;
    sub_1000082B4(a1, v16, &qword_100AD13D0);
    if (v16[3])
    {
      sub_1000F24EC(&qword_100AE19C0);
      if (swift_dynamicCast())
      {
        v11 = v15;
        swift_getKeyPath();
        swift_getKeyPath();
        swift_unknownObjectRetain();
        static UIViewController.ViewLoading.subscript.getter();

        v12 = sub_1003C9808();

        swift_unknownObjectRelease();

        if (v15 != v12)
        {
LABEL_11:
          [v10 setSourceItem:v11];
          swift_unknownObjectRelease();

          goto LABEL_12;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_100004F84(v16, &qword_100AD13D0);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v11 = sub_1003C9808();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;

      v11 = v14;
    }

    goto LABEL_11;
  }
}

void sub_1003B7110(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = byte_100AE1938;
  if (byte_100AE1938 == 3)
  {
    return;
  }

  (*(v5 + 104))(v8, enum case for JournalFeatureFlags.suggestionsAPI(_:), v4, v6);
  v10 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    if (v9 == 4)
    {
      v16 = 3;
    }

    else
    {
      if (v9 == 5)
      {
        v14 = *(*(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator) + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl);
        sub_1001733D0(v14 != 3);
        if (qword_100ACFD50 != -1)
        {
          swift_once();
        }

        *(qword_100B2F8C0 + OBJC_IVAR____TtC7Journal22SuggestionAngelManager_delegate + 8) = &off_100A6A838;
        swift_unknownObjectWeakAssign();
        v15 = sub_1003BF028(v14 != 3, a1);
        sub_1003ECB98(v15);

        return;
      }

      v16 = 4;
    }

    sub_1003B7E90(v16);
    return;
  }

  if (byte_100AE1938 - 2 >= 5 && (byte_100AE1938 & 1) != 0)
  {
    v11 = *(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      type metadata accessor for PermissionViewController();
      if (swift_dynamicCastClass())
      {
        sub_10069A1A8(4);

        return;
      }
    }

    type metadata accessor for PermissionViewController();
    v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v17[OBJC_IVAR____TtC7Journal24PermissionViewController_delegate + 8] = &off_100A6A868;
    swift_unknownObjectWeakAssign();
    sub_10069A1A8(4);
    sub_100171DA0(v17, 0, 1, v11);
  }

  else
  {
    sub_1003B7C3C(a1);
  }
}

void sub_1003B73DC()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for JournalFeatureFlags.location(_:), v6, v8);
  v11 = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    v20 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_37;
    }

    v22 = Strong;
    v23 = [Strong childViewControllers];

    sub_1000065A8(0, &qword_100AD4C80);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v24 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_19;
      }
    }

    else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_19:
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_50;
        }

        v25 = *(v24 + 32);
      }

      v26 = v25;

      type metadata accessor for LocationPickerCollectionViewController(0);
      if (swift_dynamicCastClass())
      {
        goto LABEL_54;
      }

LABEL_37:
      v31 = swift_unknownObjectWeakLoadStrong();
      if (!v31)
      {
        goto LABEL_47;
      }

      v32 = v31;
      v23 = [v31 childViewControllers];

      sub_1000065A8(0, &qword_100AD4C80);
      v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v33 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_40;
        }
      }

      else if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_40:
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_57;
          }

          v34 = *(v33 + 32);
        }

        v26 = v34;

        type metadata accessor for CanvasLocationsController();
        if (swift_dynamicCastClass())
        {
          goto LABEL_54;
        }

LABEL_47:
        type metadata accessor for LocationPickerCollectionViewController(0);
        v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        *&v35[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_pickerDelegate + 8] = &off_100A6A7F8;
        swift_unknownObjectWeakAssign();
        *&v35[OBJC_IVAR____TtC7Journal38LocationPickerCollectionViewController_journalEntry] = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
        swift_retain_n();

        sub_1006E4EB4();

        v26 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v35];
        [v26 setNavigationBarHidden:1];
        v36 = [v1 traitCollection];
        v37 = [v36 userInterfaceIdiom];

        [v26 setToolbarHidden:v37 != 5];
        v38 = v26;
        v39 = v20;
LABEL_53:
        sub_100171DA0(v38, 1, 1, v39);

        goto LABEL_54;
      }

      goto LABEL_47;
    }

    goto LABEL_37;
  }

  v12 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry];
  v13 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v41 = v12;
  v42 = v1;
  v14 = *(v12 + v13);
  if (v14 >> 62)
  {
LABEL_34:
    v44 = v14 & 0xFFFFFFFFFFFFFF8;
    v46 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v44 = v14 & 0xFFFFFFFFFFFFFF8;
    v46 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v14 & 0xC000000000000001;
  v43 = enum case for AssetType.multiPinMap(_:);
  v15 = (v3 + 104);
  v16 = (v3 + 8);

  v3 = 0;
  while (1)
  {
    if (v46 == v3)
    {

      v1 = v42;
      goto LABEL_16;
    }

    if (v45)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v44 + 16))
      {
        goto LABEL_33;
      }

      v18 = *(v14 + 8 * v3 + 32);
    }

    v19 = v18;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    (*v15)(v5, v43, v2);
    sub_100042028(&qword_100AD5B40, &type metadata accessor for AssetType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v49 == v47 && v50 == v48)
    {
      break;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    (*v16)(v5, v2);

    ++v3;
    if (v17)
    {
      goto LABEL_24;
    }
  }

  (*v16)(v5, v2);

LABEL_24:

  v23 = *&v42[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    goto LABEL_52;
  }

  v28 = v27;
  v29 = [v27 childViewControllers];

  sub_1000065A8(0, &qword_100AD4C80);
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v24 >> 62))
  {
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_51:

    goto LABEL_52;
  }

LABEL_50:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_51;
  }

LABEL_27:
  if ((v24 & 0xC000000000000001) != 0)
  {
LABEL_57:
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
    v26 = v30;

    type metadata accessor for CanvasLocationsController();
    if (!swift_dynamicCastClass())
    {

LABEL_52:
      type metadata accessor for CanvasLocationsController();
      v35 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      *&v35[OBJC_IVAR____TtC7Journal25CanvasLocationsController_journalEntry] = v41;

      *&v35[OBJC_IVAR____TtC7Journal25CanvasLocationsController_pickerDelegate + 8] = &off_100A6A7E8;
      swift_unknownObjectWeakAssign();
      *&v35[OBJC_IVAR____TtC7Journal25CanvasLocationsController_fullScreenDelegate + 8] = &off_100A6E678;
      swift_unknownObjectWeakAssign();
      v38 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v35];
      v26 = v38;
      v39 = v23;
      goto LABEL_53;
    }

LABEL_54:

    return;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v30 = *(v24 + 32);
    goto LABEL_30;
  }

  __break(1u);
}

id sub_1003B7C3C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SuggestionsPickerConfiguration(0);
  __chkstk_darwin(v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
  sub_1001733D0(*(*&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator] + OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_focusedControl) != 3);
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.4;
  }

  sub_1000082B4(a1, v6 + *(v4 + 24), &qword_100AD1420);
  *v6 = v8;
  *(v6 + 8) = v7;
  result = [v1 view];
  if (result)
  {
    v10 = result;
    v11 = [result window];

    v12 = [v11 windowScene];
    if (!v12)
    {
      return sub_1003BFC28(v6, type metadata accessor for SuggestionsPickerConfiguration);
    }

    v13 = qword_100ACFCD0;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    if ([v14 _sceneComponentForKey:qword_100AE1160])
    {
      type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
      v15 = swift_dynamicCastClass();
      if (v15)
      {
        v16 = v15;

LABEL_16:
        sub_1003BE4F8(v6, v2, v16);

        return sub_1003BFC28(v6, type metadata accessor for SuggestionsPickerConfiguration);
      }

      swift_unknownObjectRelease();
    }

    v17 = objc_allocWithZone(type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent());
    v16 = sub_1003A9FFC(v14);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1003B7E90(unsigned __int8 a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    type metadata accessor for PermissionViewController();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *(v6 + OBJC_IVAR____TtC7Journal24PermissionViewController_permissionViewType);

      if (v7 != 5 && v7 == a1)
      {
        return;
      }
    }

    else
    {
    }
  }

  type metadata accessor for PermissionViewController();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v8[OBJC_IVAR____TtC7Journal24PermissionViewController_delegate + 8] = &off_100A6A868;
  swift_unknownObjectWeakAssign();
  sub_10069A1A8(a1);
  sub_100171DA0(v8, 0, 1, v3);
}

void sub_1003B80B0()
{
  v1 = v0;
  v2 = type metadata accessor for PHPickerConfiguration.AssetRepresentationMode();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE1A50);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PHPickerConfiguration.Selection();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for PHPickerConfiguration();
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v27 - v15;
  v28 = *&v0[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v18 = Strong, objc_opt_self(), v19 = swift_dynamicCastObjCClass(), v18, !v19))
  {
    v20 = [objc_opt_self() sharedPhotoLibrary];
    PHPickerConfiguration.init(photoLibrary:)();
    sub_1003B65C4();
    PHPickerConfiguration.selectionLimit.setter();
    v21 = [v1 traitCollection];
    v22 = [v21 userInterfaceIdiom];

    if (v22 != 5)
    {
      (*(v27 + 104))(v10, enum case for PHPickerConfiguration.Selection.continuous(_:), v8);
      PHPickerConfiguration.selection.setter();
    }

    v23 = type metadata accessor for PHPickerFilter();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    PHPickerConfiguration.filter.setter();
    (*(v29 + 104))(v4, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v30);
    PHPickerConfiguration.preferredAssetRepresentationMode.setter();
    v24 = OBJC_IVAR____TtC7Journal20CanvasViewController_photoPickerLatestAssetAdditions;
    swift_beginAccess();
    *&v1[v24] = _swiftEmptyArrayStorage;

    sub_1000065A8(0, &qword_100AE1A58);
    v25 = v31;
    (*(v11 + 16))(v13, v16, v31);
    v26 = PHPickerViewController.init(configuration:)();
    sub_100042028(&unk_100AE1A60, type metadata accessor for CanvasViewController);
    swift_unknownObjectRetain();
    PHPickerViewController.delegate.setter();
    sub_100171DA0(v26, 1, 1, v28);

    (*(v11 + 8))(v16, v25);
  }
}

uint64_t sub_1003B8600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v6;
  v4[29] = v5;

  return _swift_task_switch(sub_1003B8698, v6, v5);
}

uint64_t sub_1003B8698()
{
  v1 = objc_opt_self();
  v0[30] = v1;
  v2 = [v1 authorizationStatusForMediaType:AVMediaTypeVideo];
  if (v2)
  {
    v3 = v2;
    v4 = v0[26];

    v5 = [v4 traitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 == 5)
    {
      v7 = [v1 authorizationStatusForMediaType:AVMediaTypeVideo];
      if (v3 == 3 && v7 != 2)
      {
LABEL_7:
        v9 = *(v0[26] + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v11 = Strong, objc_opt_self(), v12 = swift_dynamicCastObjCClass(), v11, !v12))
        {
          v13 = [objc_opt_self() availableMediaTypesForSourceType:1];
          if (v13)
          {
            v14 = v13;
            v15 = v0[26];
            v16 = [objc_allocWithZone(UIImagePickerController) init];
            [v16 setMediaTypes:v14];

            [v16 setSourceType:1];
            [v16 setAllowsEditing:0];
            [v16 setDelegate:v15];
            [v16 setShowsCameraControls:1];
            [v16 setVideoMaximumDuration:7200.0];
            [v16 setVideoQuality:0];
            v17 = [v15 traitCollection];
            v18 = [v17 userInterfaceIdiom];

            if (v18 == 5)
            {
              v19 = v16;
              [v19 setModalPresentationStyle:1];
              [v19 setPreferredContentSize:{790.0, 615.0}];
            }

            else
            {
              [v16 setModalPresentationStyle:0];
              v23 = sub_1003BEF08();
              if ((v24 & 1) == 0)
              {
                [v16 setCameraDevice:v23];
              }
            }

            v25 = v0[26];
            sub_100171DA0(v16, 2, 1, v9);
            if (*(v25 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
            {

              sub_1003E893C();
            }

            else
            {
            }
          }
        }

        goto LABEL_17;
      }
    }

    else if (v3 == 3)
    {
      goto LABEL_7;
    }

    sub_1003B7E90(1u);
LABEL_17:
    v22 = v0[1];

    return v22();
  }

  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_1003B8ACC;
  v20 = swift_continuation_init();
  v21 = sub_1000F24EC(&qword_100AE19C8);
  v0[31] = v21;
  v0[25] = v21;
  v0[18] = _NSConcreteStackBlock;
  v0[19] = 1107296256;
  v0[20] = sub_1003B936C;
  v0[21] = &unk_100A6AC28;
  v0[22] = v20;
  [v1 requestAccessForMediaType:AVMediaTypeVideo completionHandler:v0 + 18];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003B8ACC()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1003B8BD4, v2, v1);
}

uint64_t sub_1003B8BD4()
{
  if (*(v0 + 256) == 1)
  {
    v1 = [*(v0 + 208) traitCollection];
    v2 = [v1 userInterfaceIdiom];

    if (v2 == 5)
    {
      v3 = *(v0 + 240);
      v4 = *(v0 + 248);
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 256;
      *(v0 + 88) = sub_1003B8FB4;
      v5 = swift_continuation_init();
      *(v0 + 200) = v4;
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1003B936C;
      *(v0 + 168) = &unk_100A6AC50;
      *(v0 + 176) = v5;
      [v3 requestAccessForMediaType:AVMediaTypeAudio completionHandler:v0 + 144];

      return _swift_continuation_await(v0 + 80);
    }

    v7 = *(*(v0 + 208) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = Strong, objc_opt_self(), v10 = swift_dynamicCastObjCClass(), v9, !v10))
    {
      v11 = [objc_opt_self() availableMediaTypesForSourceType:1];
      if (v11)
      {
        v12 = v11;
        v13 = *(v0 + 208);
        v14 = [objc_allocWithZone(UIImagePickerController) init];
        [v14 setMediaTypes:v12];

        [v14 setSourceType:1];
        [v14 setAllowsEditing:0];
        [v14 setDelegate:v13];
        [v14 setShowsCameraControls:1];
        [v14 setVideoMaximumDuration:7200.0];
        [v14 setVideoQuality:0];
        v15 = [v13 traitCollection];
        v16 = [v15 userInterfaceIdiom];

        if (v16 == 5)
        {
          v17 = v14;
          [v17 setModalPresentationStyle:1];
          [v17 setPreferredContentSize:{790.0, 615.0}];
        }

        else
        {
          [v14 setModalPresentationStyle:0];
          v18 = sub_1003BEF08();
          if ((v19 & 1) == 0)
          {
            [v14 setCameraDevice:v18];
          }
        }

        v20 = *(v0 + 208);
        sub_100171DA0(v14, 2, 1, v7);
        if (*(v20 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
        {

          sub_1003E893C();
        }

        else
        {
        }
      }
    }
  }

  else
  {

    sub_1003B7E90(1u);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1003B8FB4()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1003B90BC, v2, v1);
}

uint64_t sub_1003B90BC()
{

  if (*(v0 + 256) == 1)
  {
    v1 = *(*(v0 + 208) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v3 = Strong, objc_opt_self(), v4 = swift_dynamicCastObjCClass(), v3, !v4))
    {
      v5 = [objc_opt_self() availableMediaTypesForSourceType:1];
      if (v5)
      {
        v6 = v5;
        v7 = *(v0 + 208);
        v8 = [objc_allocWithZone(UIImagePickerController) init];
        [v8 setMediaTypes:v6];

        [v8 setSourceType:1];
        [v8 setAllowsEditing:0];
        [v8 setDelegate:v7];
        [v8 setShowsCameraControls:1];
        [v8 setVideoMaximumDuration:7200.0];
        [v8 setVideoQuality:0];
        v9 = [v7 traitCollection];
        v10 = [v9 userInterfaceIdiom];

        if (v10 == 5)
        {
          v11 = v8;
          [v11 setModalPresentationStyle:1];
          [v11 setPreferredContentSize:{790.0, 615.0}];
        }

        else
        {
          [v8 setModalPresentationStyle:0];
          v14 = sub_1003BEF08();
          if ((v15 & 1) == 0)
          {
            [v8 setCameraDevice:v14];
          }
        }

        v16 = *(v0 + 208);
        sub_100171DA0(v8, 2, 1, v1);
        if (*(v16 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
        {

          sub_1003E893C();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    sub_1003B7E90(1u);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1003B936C(uint64_t a1, char a2)
{
  v3 = *sub_10000CA14((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_1003B96A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 209) = a5;
  *(v5 + 152) = a4;
  v6 = type metadata accessor for JournalFeatureFlags();
  *(v5 + 160) = v6;
  *(v5 + 168) = *(v6 - 8);
  *(v5 + 176) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 184) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 192) = v8;
  *(v5 + 200) = v7;

  return _swift_task_switch(sub_1003B979C, v8, v7);
}

uint64_t sub_1003B979C()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 recordPermission];

  if (v3 == 1970168948)
  {
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_1003B9BC0;
    v4 = swift_continuation_init();
    *(v0 + 136) = sub_1000F24EC(&qword_100AE19C8);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1003B936C;
    *(v0 + 104) = &unk_100A6A9F8;
    *(v0 + 112) = v4;
    [v1 requestRecordPermissionWithCompletionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    if (v3 == 1735552628)
    {
      v5 = *(*(v0 + 152) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v7 = Strong, type metadata accessor for CanvasTranscribingAudioPickerController(), v8 = swift_dynamicCastClass(), v7, !v8))
      {
        v9 = [*(v0 + 152) traitCollection];
        v10 = [v9 userInterfaceIdiom];

        if (v10 && _UISolariumEnabled() && ((v11 = [objc_opt_self() currentTraitCollection], v12 = objc_msgSend(v11, "userInterfaceIdiom"), v11, v12 == 5) || v12 == 1 && (v14 = *(v0 + 168), v13 = *(v0 + 176), v15 = *(v0 + 160), (*(v14 + 104))(v13, enum case for JournalFeatureFlags.inspectorColumn(_:), v15), v16 = JournalFeatureFlags.isEnabled.getter(), (*(v14 + 8))(v13, v15), (v16 & 1) != 0)))
        {
          v17 = 3;
        }

        else
        {
          v17 = 1;
        }

        v18 = *(v0 + 209);
        v19 = objc_allocWithZone(type metadata accessor for CanvasTranscribingAudioPickerController());
        v20 = sub_100508438(0, v18, v17);
        v21 = *(sub_100507B94() + 48);

        if (v21)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          swift_retain_n();
          v22 = sub_100217CE4();
          [v22 addObject:v21];

          *(v21 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_pickerDelegate + 8) = &off_100A6A810;
          swift_unknownObjectWeakAssign();
        }

        sub_100171DA0(v20, v17, 1, v5);
      }
    }

    else
    {
      sub_1003B7E90(0);
    }

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1003B9BC0()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return _swift_task_switch(sub_1003B9CC8, v2, v1);
}

uint64_t sub_1003B9CC8()
{

  if (*(v0 + 208) == 1)
  {
    v1 = *(*(v0 + 152) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v3 = Strong, type metadata accessor for CanvasTranscribingAudioPickerController(), v4 = swift_dynamicCastClass(), v3, !v4))
    {
      v5 = [*(v0 + 152) traitCollection];
      v6 = [v5 userInterfaceIdiom];

      if (v6 && _UISolariumEnabled() && ((v7 = [objc_opt_self() currentTraitCollection], v8 = objc_msgSend(v7, "userInterfaceIdiom"), v7, v8 == 5) || v8 == 1 && (v10 = *(v0 + 168), v9 = *(v0 + 176), v11 = *(v0 + 160), (*(v10 + 104))(v9, enum case for JournalFeatureFlags.inspectorColumn(_:), v11), v12 = JournalFeatureFlags.isEnabled.getter(), (*(v10 + 8))(v9, v11), (v12 & 1) != 0)))
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }

      v14 = *(v0 + 209);
      v15 = objc_allocWithZone(type metadata accessor for CanvasTranscribingAudioPickerController());
      v16 = sub_100508438(0, v14, v13);
      v17 = *(sub_100507B94() + 48);

      if (v17)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        swift_retain_n();
        v18 = sub_100217CE4();
        [v18 addObject:v17];

        *(v17 + OBJC_IVAR____TtC7Journal29AudioAssetPersistenceStrategy_pickerDelegate + 8) = &off_100A6A810;
        swift_unknownObjectWeakAssign();
      }

      sub_100171DA0(v16, v13, 1, v1);
    }
  }

  else
  {
    sub_1003B7E90(0);
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1003B9FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1003BA08C, v6, v5);
}

uint64_t sub_1003BA08C()
{
  if (qword_100ACF988 != -1)
  {
    swift_once();
  }

  v0[6] = qword_100B2F3C0;
  v1 = sub_100027494(0);
  if (v2)
  {

    goto LABEL_10;
  }

  if (v1)
  {
    v3 = v1;

    if (v3 == 2)
    {
      v4 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v6 = Strong, type metadata accessor for CanvasStateOfMindPicker(), v7 = swift_dynamicCastClass(), v6, !v7))
      {
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v9 = objc_allocWithZone(type metadata accessor for CanvasStateOfMindPicker());
        v10 = sub_1006F542C(sub_1003BF9B8, v8);

        sub_100171DA0(v10, 1, 1, v4);
      }

      goto LABEL_11;
    }

LABEL_10:
    sub_1003B7E90(2u);
LABEL_11:
    v11 = v0[1];

    return v11();
  }

  v13 = v0[3];

  v14 = swift_task_alloc();
  v0[7] = v14;
  *v14 = v0;
  v14[1] = sub_1003BA2BC;

  return sub_100136530(v13, &protocol witness table for MainActor, &off_100A58E28);
}

uint64_t sub_1003BA2BC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_1003BA400, v3, v2);
}

uint64_t sub_1003BA400()
{

  v1 = sub_100027494(0);
  if ((v2 & 1) != 0 || v1 != 2)
  {
    sub_1003B7E90(2u);
  }

  else
  {
    v3 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v5 = Strong, type metadata accessor for CanvasStateOfMindPicker(), v6 = swift_dynamicCastClass(), v5, !v6))
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = objc_allocWithZone(type metadata accessor for CanvasStateOfMindPicker());
      v9 = sub_1006F542C(sub_1003BF9B8, v7);

      sub_100171DA0(v9, 1, 1, v3);
    }
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1003BA554(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;
    v9 = a1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;
    sub_1003E9628(0, 0, v4, &unk_1009531B0, v11);
  }
}

void sub_1003BA6BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100658B00();

    v19 = &OBJC_PROTOCOL____UITextFormattingResponder;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = v6;
      sub_1000082B4(a2, v17, &qword_100AD13D0);
      v8 = v18;
      if (v18)
      {
        v9 = sub_10000CA14(v17, v18);
        v10 = *(v8 - 8);
        v11 = __chkstk_darwin(v9);
        v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v10 + 16))(v13, v11);
        v14 = v5;
        v15 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v10 + 8))(v13, v8);
        sub_10000BA7C(v17);
      }

      else
      {
        v16 = v5;
        v15 = 0;
      }

      [v7 _showTextFormattingOptions:v15];
      swift_unknownObjectRelease();

      *(v5 + OBJC_IVAR____TtC7Journal15JournalTextView_isShowingFormattingController) = 1;
    }
  }
}

uint64_t sub_1003BA890()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v39[-v2];
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v11 = __chkstk_darwin(v10);
  v13 = &v39[-v12];
  result = __chkstk_darwin(v11);
  v17 = &v39[-v16];
  if (!qword_100AE1940)
  {
    v46 = v15;
    v47 = v5;
    v48 = v4;
    v49 = v0;
    UUID.init()();
    if (qword_100ACFD00 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_10000617C(v18, qword_100AE1920);
    v44 = *(v9 + 16);
    v45 = v9 + 16;
    v44(v13, v17, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v50 = v41;
      *v21 = 136315138;
      sub_100042028(&qword_100AE19B0, &type metadata accessor for UUID);
      v40 = v20;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v3;
      v24 = v23;
      v25 = *(v9 + 8);
      v43 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v26 = v13;
      v27 = v25;
      v25(v26, v8);
      v28 = sub_100008458(v22, v24, &v50);
      v3 = v42;

      *(v21 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v19, v40, "[%s Starting new availability inquiry...", v21, 0xCu);
      sub_10000BA7C(v41);
    }

    else
    {

      v29 = *(v9 + 8);
      v43 = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v30 = v13;
      v27 = v29;
      v29(v30, v8);
    }

    static Date.now.getter();
    Date.timeIntervalSinceReferenceDate.getter();
    v32 = v31;
    (*(v47 + 8))(v7, v48);
    byte_100AE1938 = 6;
    v33 = type metadata accessor for TaskPriority();
    (*(*(v33 - 8) + 56))(v3, 1, 1, v33);
    v34 = v46;
    v44(v46, v17, v8);
    type metadata accessor for MainActor();
    v35 = static MainActor.shared.getter();
    v36 = v3;
    v37 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v38 = swift_allocObject();
    *(v38 + 2) = v35;
    *(v38 + 3) = &protocol witness table for MainActor;
    *(v38 + 4) = v32;
    *(v38 + 5) = v49;
    (*(v9 + 32))(&v38[v37], v34, v8);
    qword_100AE1940 = sub_1003E9628(0, 0, v36, &unk_100953058, v38);

    return v27(v17, v8);
  }

  return result;
}

uint64_t sub_1003BADB4(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a6;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for UUID();
  *(v6 + 32) = v7;
  *(v6 + 40) = *(v7 - 8);
  *(v6 + 48) = swift_task_alloc();
  v8 = type metadata accessor for Date();
  *(v6 + 56) = v8;
  *(v6 + 64) = *(v8 - 8);
  *(v6 + 72) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 80) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 88) = v10;
  *(v6 + 96) = v9;

  return _swift_task_switch(sub_1003BAF08, v10, v9);
}

uint64_t sub_1003BAF08()
{
  v1 = *(v0 + 80);

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1003BAFC8;

  return (sub_1006D0D98)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1003BAFC8(char a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);

  return _swift_task_switch(sub_1003BB114, v4, v3);
}

uint64_t sub_1003BB114()
{
  v28 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 16);

  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v7 = v6;
  (*(v4 + 8))(v2, v3);
  byte_100AE1938 = v1;
  qword_100AE1940 = 0;

  if (qword_100ACFD00 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v11 = *(v0 + 24);
  v10 = *(v0 + 32);
  v12 = type metadata accessor for Logger();
  sub_10000617C(v12, qword_100AE1920);
  (*(v9 + 16))(v8, v11, v10);
  static DebugData.requiresDiagnosticsConsent.getter();
  static DebugData.requiresDiagnosticsConsent.getter();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 40);
  v16 = *(v0 + 48);
  v18 = *(v0 + 32);
  if (v15)
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136315650;
    sub_100042028(&qword_100AE19B0, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v17 + 8))(v16, v18);
    v24 = sub_100008458(v21, v23, &v27);

    *(v19 + 4) = v24;
    *(v19 + 12) = 1040;
    *(v19 + 14) = 3;
    *(v19 + 18) = 2048;
    *(v19 + 20) = v7 - v5;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%s] Inquiry complete, took %.*f seconds.", v19, 0x1Cu);
    sub_10000BA7C(v20);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1003BB3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = type metadata accessor for SettingsKey();
  v35 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - v13;
  v37 = type metadata accessor for CanvasContentInputType();
  v15 = *(v37 - 8);
  __chkstk_darwin(v37);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 40) != 1 || *(a2 + OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle) != 1 || (sub_10005AAB0(2) & 1) != 0;
  *v17 = v18;
  v19 = v37;
  swift_storeEnumTagMultiPayload();
  sub_1000082B4(a1, v14, &qword_100AD57F0);
  if ((*(v15 + 48))(v14, 1, v19) != 1)
  {
    sub_1003BFC28(v17, type metadata accessor for CanvasContentInputType);
    v25 = v14;
    return sub_1001EDE4C(v25, v36);
  }

  sub_100004F84(v14, &qword_100AD57F0);
  (*(v9 + 104))(v11, enum case for JournalFeatureFlags.suggestionsAPI(_:), v8);
  v20 = JournalFeatureFlags.isEnabled.getter();
  (*(v9 + 8))(v11, v8);
  if ((v20 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1000065A8(0, &qword_100AE1A30);
  v21 = static NSUserDefaults.shared.getter();
  v22 = v35;
  (*(v35 + 104))(v7, enum case for SettingsKey.skipJournalingSuggestions(_:), v5);
  SettingsKey.rawValue.getter();
  (*(v22 + 8))(v7, v5);
  v23 = String._bridgeToObjectiveC()();

  v24 = [v21 BOOLForKey:v23];

  if (v24)
  {
    goto LABEL_22;
  }

  if (byte_100AE1938 > 4u)
  {
    if (byte_100AE1938 == 5)
    {
      v30 = [objc_opt_self() currentDevice];
      v31 = [v30 userInterfaceIdiom];

      if (!v31)
      {
        goto LABEL_24;
      }
    }

    else if (byte_100AE1938 == 6)
    {
      if (qword_100ACFD00 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_10000617C(v26, qword_100AE1920);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Initial input type requested before an availability was identified. Defaulting to suggestion picker.", v29, 2u);
      }

      goto LABEL_24;
    }

LABEL_22:
    v25 = v17;
    return sub_1001EDE4C(v25, v36);
  }

  if (byte_100AE1938 - 3 < 2 || byte_100AE1938 != 2)
  {
    goto LABEL_22;
  }

LABEL_24:
  sub_1003BFC28(v17, type metadata accessor for CanvasContentInputType);
  v33 = type metadata accessor for UUID();
  (*(*(v33 - 8) + 56))(v36, 1, 1, v33);
  return swift_storeEnumTagMultiPayload();
}

void sub_1003BB960()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_100658B00();

    sub_1002B40C8();
  }
}

void sub_1003BB9C4()
{
  v0 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v0);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1006D1378() == 5)
    {
      v5 = type metadata accessor for UUID();
      (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
      swift_storeEnumTagMultiPayload();
      memset(v6, 0, sizeof(v6));
      sub_1003B5E4C(v2, v6);

      sub_100004F84(v6, &qword_100AD13D0);
      sub_1003BFC28(v2, type metadata accessor for CanvasContentInputType);
    }

    else
    {
    }
  }
}

uint64_t sub_1003BBC1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = swift_getObjectType();
  type metadata accessor for MainActor();
  v2[5] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[6] = v4;
  v2[7] = v3;

  return _swift_task_switch(sub_1003BBCC0, v4, v3);
}

uint64_t sub_1003BBCC0()
{
  v1 = v0[3];
  sub_100170C4C(1);
  if (*(v1 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }

  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1003BBD98;
  v3 = v0[2];

  return sub_100629040(v3);
}

uint64_t sub_1003BBD98()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1003BBEB8, v3, v2);
}

uint64_t sub_1003BBEB8()
{

  sub_1003BA890();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BBF1C()
{
  swift_getObjectType();
  sub_100170C4C(1);
  if (*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }

  return sub_1003BA890();
}

void sub_1003BBF98(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_100170C4C(1);
  if (a1)
  {
    if (a1 != 1)
    {
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
      type metadata accessor for MainActor();
      sub_10015DB6C(a1);
      v8 = v1;
      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v8;
      v10[5] = a1;
      sub_1003E9628(0, 0, v6, &unk_100953060, v10);
    }

    if (*&v2[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
    {

      sub_1003E8698();
    }

    sub_1003BA890();
  }
}

void sub_1003BC13C(void *a1, uint64_t a2)
{
  sub_10062A138(a2, a1);
  if (*(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }
}

void sub_1003BC1A8(void *a1)
{
  v2 = [a1 cameraDevice];
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 setInteger:v2 forKey:v4];

  v5 = *&v1[OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator];
  v6 = v1;
  sub_100176864(1, v5, v6);

  if (*&v6[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
  {

    sub_1003E8960();
  }
}

uint64_t sub_1003BC420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1003BC4B8, v7, v6);
}

uint64_t sub_1003BC4B8()
{
  v1 = v0[4];
  v0[7] = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[8] = v2;
  v0[9] = v4;

  return _swift_task_switch(sub_1003BC568, v2, v4);
}

uint64_t sub_1003BC568()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[10] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1003BC724;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_1003BC724()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1003BC868, v3, v2);
}

uint64_t sub_1003BC868()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return _swift_task_switch(sub_1000EC728, v1, v2);
}

uint64_t sub_1003BC8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1003BC964, v6, v5);
}

uint64_t sub_1003BC964()
{
  v1 = v0[3];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[6] = v2;
  v0[7] = v4;

  return _swift_task_switch(sub_1003BC9FC, v2, v4);
}

uint64_t sub_1003BC9FC()
{
  v1 = v0[2];
  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v4 = result;
    v5 = v0[3];
    v1;
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1003BCAF4;

    return sub_10078BBDC(v5, &protocol witness table for MainActor, ObjectType, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003BCAF4()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1003BCC14, v3, v2);
}

uint64_t sub_1003BCC14()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1003BCCD0;

  return (sub_1001DA5A8)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1003BCCD0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1003BCDF0, v3, v2);
}

uint64_t sub_1003BCDF0()
{

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1001F0E40, v1, v2);
}

void sub_1003BCE54(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for CanvasTranscribingAudioPickerController();
    Strong = swift_dynamicCastClass();
    if (!Strong)
    {

      Strong = 0;
    }
  }

  v9 = Strong != 0;

  v10 = type metadata accessor for TaskPriority();
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  type metadata accessor for MainActor();
  v12 = a1;
  v13 = v2;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = &protocol witness table for MainActor;
  *(v15 + 32) = a1;
  *(v15 + 40) = v9;
  *(v15 + 48) = v13;
  sub_1003E9628(0, 0, v6, &unk_1009531B8, v15);

  v16 = [v13 viewIfLoaded];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 window];

    if (v18)
    {
      v19 = [v18 windowScene];

      if (v19)
      {
        if ([v19 activationState] == 2)
        {
          v11(v6, 1, 1, v10);
          v20 = v13;
          v21 = static MainActor.shared.getter();
          v22 = swift_allocObject();
          v22[2] = v21;
          v22[3] = &protocol witness table for MainActor;
          v22[4] = v20;
          sub_1003E9628(0, 0, v6, &unk_1009531C8, v22);
        }
      }
    }
  }
}

uint64_t sub_1003BD0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Date();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_1003BD1E4, v7, v6);
}

uint64_t sub_1003BD1E4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_mindfulnessManager);
  v0[9] = v1;
  if (v1)
  {

    static Date.now.getter();
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_1003BD318;
    v3 = v0[5];

    return sub_1005BED00(v3, 0);
  }

  else
  {

    if (*(v0[2] + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
    {

      sub_1003E8B6C();
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1003BD318()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 64);
  v6 = *(v1 + 56);

  return _swift_task_switch(sub_1003BD4B8, v6, v5);
}

uint64_t sub_1003BD4B8()
{

  if (*(*(v0 + 16) + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8B6C();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1003BD54C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for SettingsKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v8 = static NSUserDefaults.shared.getter();
  (*(v5 + 104))(v7, enum case for SettingsKey.addCurrentLocation(_:), v4);
  SettingsKey.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  v9 = String._bridgeToObjectiveC()();

  LOBYTE(v4) = [v8 BOOLForKey:v9];

  if ((v4 & 1) == 0)
  {
    v10 = static NSUserDefaults.shared.getter();
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 BOOLForKey:v11];

    if ((v12 & 1) == 0)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String._bridgeToObjectiveC()();

      v14 = String._bridgeToObjectiveC()();

      v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v16 = String._bridgeToObjectiveC()();

      v29 = sub_1003BDB08;
      v30 = 0;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v24[1] = v1;
      v27 = sub_10016B4D8;
      v28 = &unk_100A6AA98;
      v17 = _Block_copy(&aBlock);

      v18 = objc_opt_self();
      v19 = [v18 actionWithTitle:v16 style:0 handler:v17];
      _Block_release(v17);

      [v15 addAction:v19];
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v20 = String._bridgeToObjectiveC()();

      v29 = sub_1003BDCA8;
      v30 = 0;
      aBlock = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_10016B4D8;
      v28 = &unk_100A6AAC0;
      v21 = _Block_copy(&aBlock);

      v22 = [v18 actionWithTitle:v20 style:1 handler:v21];
      _Block_release(v21);

      [v15 addAction:v22];
      v23 = UIViewController.forPresenting.getter();
      [v23 presentViewController:v15 animated:1 completion:0];
    }
  }
}

void sub_1003BDB08()
{
  v0 = type metadata accessor for SettingsKey();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v4 = static NSUserDefaults.shared.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:1 forKey:v5];

  v6 = static NSUserDefaults.shared.getter();
  (*(v1 + 104))(v3, enum case for SettingsKey.addCurrentLocation(_:), v0);
  SettingsKey.rawValue.getter();
  (*(v1 + 8))(v3, v0);
  v7 = String._bridgeToObjectiveC()();

  [v6 setBool:1 forKey:v7];
}

void sub_1003BDCA8()
{
  sub_1000065A8(0, &qword_100AE1A30);
  v0 = static NSUserDefaults.shared.getter();
  v1 = String._bridgeToObjectiveC()();
  [v0 setBool:1 forKey:v1];
}

void sub_1003BDD4C()
{
  sub_1001737C8(1, *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator));
  if (*(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker))
  {

    sub_1003E8698();
  }
}

void sub_1003BDDC0(uint64_t a1, void *a2)
{
  if (sub_1007AE3D8())
  {
    type metadata accessor for JurassicAlertController();
    if (qword_100AD0730 != -1)
    {
      swift_once();
    }

    if (qword_100AD0738 != -1)
    {
      swift_once();
    }

    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [swift_getObjCClassFromMetadata() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v7 = qword_100AD0740;
    v15 = a2;
    if (v7 != -1)
    {
      swift_once();
    }

    swift_retain_n();
    v8 = String._bridgeToObjectiveC()();
    v20 = sub_1003BFC00;
    v21 = v6;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10016B4D8;
    v19 = &unk_100A6AB60;
    v9 = _Block_copy(&aBlock);

    v10 = objc_opt_self();
    v11 = [v10 actionWithTitle:v8 style:0 handler:v9];
    _Block_release(v9);

    [v5 addAction:v11];
    if (qword_100AD0748 != -1)
    {
      swift_once();
    }

    v12 = String._bridgeToObjectiveC()();
    v20 = sub_1003BFC00;
    v21 = v6;
    aBlock = _NSConcreteStackBlock;
    v17 = 1107296256;
    v18 = sub_10016B4D8;
    v19 = &unk_100A6AB88;
    v13 = _Block_copy(&aBlock);

    v14 = [v10 actionWithTitle:v12 style:1 handler:v13];
    _Block_release(v13);

    [v5 addAction:v14];
    [v15 presentViewController:v5 animated:1 completion:0];
  }

  else
  {
    sub_100170C4C(1);
  }
}

void sub_1003BE168(void *a1)
{
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 style])
  {
    sub_1000065A8(0, &qword_100AE1A30);
    v7 = static NSUserDefaults.shared.getter();
    (*(v3 + 104))(v6, enum case for SettingsKey.alwaysUseMomentDate(_:), v2);
    SettingsKey.rawValue.getter();
    (*(v3 + 8))(v6, v2);
    v8 = String._bridgeToObjectiveC()();

    [v7 setBool:1 forKey:v8];
  }

  sub_100170C4C(1);
}

uint64_t sub_1003BE2F4(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032EC8;

  return sub_1003BADB4(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_1003BE3FC@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_1003BE47C(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_1003BE4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F24EC(&qword_100AE13F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = *(a3 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_viewModel);
  swift_getKeyPath();
  v22 = v9;
  sub_100042028(&qword_100AE13E0, type metadata accessor for SuggestionsOverlayCoordinator.ViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented;
  if (*(v9 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C99ViewModel__isPresented) != 1)
  {
    v21 = a3;
    sub_1003BF914(a1, v8, type metadata accessor for SuggestionsPickerConfiguration);
    v11 = type metadata accessor for SuggestionsPickerConfiguration(0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v20 - 2) = v9;
    *(&v20 - 1) = v8;
    v22 = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    sub_100004F84(v8, &qword_100AE13F0);
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    *(&v20 - 4) = v9;
    *(&v20 - 3) = a2;
    *(&v20 - 2) = &off_100A6A850;
    v22 = v9;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v9 + v10) == 1)
    {
      *(v9 + v10) = 1;
      sub_1003AA9D0(1);
    }

    else
    {
      v14 = swift_getKeyPath();
      __chkstk_darwin(v14);
      *(&v20 - 2) = v9;
      *(&v20 - 8) = 1;
      v22 = v9;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v15 = *(v21 + OBJC_IVAR____TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C914SceneComponent_window);
    [v15 setHidden:0];
    v16 = [v15 rootViewController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 view];

      if (!v18)
      {
        __break(1u);
        return;
      }

      v19 = [objc_opt_self() clearColor];
      [v18 setBackgroundColor:v19];
    }

    [v15 setAccessibilityViewIsModal:1];
    [v15 setAccessibilityElementsHidden:0];
  }
}

uint64_t sub_1003BE918(uint64_t a1, int a2)
{
  v28 = a1;
  v30 = a2;
  v2 = type metadata accessor for VisitAssetMetadata();
  v24 = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v27 = &v23 - v6;
  v8 = type metadata accessor for AssetPlacement();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v25 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = (&v23 - v12);
  *v13 = static AssetPlacement.maxGridCount.getter();
  (*(v9 + 104))(v13, enum case for AssetPlacement.grid(_:), v8);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  (*(v3 + 16))(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v2);
  (*(v9 + 16))(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v8);
  type metadata accessor for MainActor();
  v15 = v29;
  v16 = static MainActor.shared.getter();
  v17 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v18 = (v4 + *(v9 + 80) + v17) & ~*(v9 + 80);
  v19 = v18 + v10;
  v20 = swift_allocObject();
  *(v20 + 2) = v16;
  *(v20 + 3) = &protocol witness table for MainActor;
  *(v20 + 4) = v15;
  (*(v3 + 32))(&v20[v17], v26, v24);
  (*(v9 + 32))(&v20[v18], v25, v8);
  v21 = &v20[v19];
  *v21 = 1;
  v21[1] = v30;
  sub_1003E9628(0, 0, v27, &unk_100953068, v20);

  result = (*(v9 + 8))(v13, v8);
  if (*&v15[OBJC_IVAR____TtC7Journal20CanvasViewController_canvasIdleTracker])
  {

    sub_1003E8698();
  }

  return result;
}

void sub_1003BECA8(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for JournalFeatureFlags.suggestionsAPI(_:), v4);
  v8 = JournalFeatureFlags.isEnabled.getter();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [v2 view];
    if (!v9)
    {
      __break(1u);
      return;
    }

    v10 = v9;
    v11 = [v9 window];

    v12 = [v11 windowScene];
    if (v12)
    {
      if (qword_100ACFCD0 != -1)
      {
        swift_once();
      }

      if ([v12 _sceneComponentForKey:qword_100AE1160])
      {
        type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
        if (swift_dynamicCastClass())
        {
          sub_1003ABAF8();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    sub_1003ED2C8(0, a1 & 1);
  }

  if (*(v2 + OBJC_IVAR____TtC7Journal20CanvasViewController_needsDeferredTipDisplay) == 1)
  {
    sub_100661550();
  }
}

uint64_t sub_1003BEF08()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100004F84(v7, &qword_100AD13D0);
  }

  return 0;
}

id sub_1003BF028(char a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning();
  sub_1000082B4(a2, v6, &qword_100AD1420);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
  }

  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 0.4;
  }

  v12 = [objc_allocWithZone(MOSuggestionSheetOptions) initWithShowCancelButton:v7 showBlankEntryButton:0 peekDetentRatio:v7 presentFullScreen:a1 & 1 presentationIsAnimated:1 selectedTabIsRecommended:isa selectedSuggestionId:v11];

  return v12;
}

uint64_t sub_1003BF1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1000082B4(a3, v13, &qword_100AD5170);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_100004F84(v13, &qword_100AD5170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1003BF534(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_10062E270(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BF5F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for VisitAssetMetadata() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AssetPlacement() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v9;
  v14 = v1 + v9 + *(v8 + 64);
  v15 = *v14;
  v16 = v14[1];
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_100032EC8;

  return sub_100642904(a1, v10, v11, v12, v1 + v6, v13, v15, v16);
}

uint64_t sub_1003BF79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003B9FF4(a1, v4, v5, v6);
}

uint64_t sub_1003BF850(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1003B96A4(a1, v4, v5, v6, v7);
}

uint64_t sub_1003BF914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003BF9C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_100643D9C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003BFA80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100640E04(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003BFB4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003BD0F0(a1, v4, v5, v6);
}

uint64_t sub_1003BFC18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1003BFC28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003BFC88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1003B96A4(a1, v4, v5, v6, v7);
}

uint64_t sub_1003BFD4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1003B8600(a1, v4, v5, v6);
}

uint64_t sub_1003BFE44()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE1A70);
  sub_10000617C(v0, qword_100AE1A70);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003BFEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v6 = sub_1000F24EC(&unk_100AD6890);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_1003BFFB0, v7, v9);
}

uint64_t sub_1003BFFB0()
{
  static Date.timeIntervalSinceReferenceDate.getter();
  v2 = v1;
  v3 = sub_100132C9C();
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 24) = v7;
  v17 = *(v0 + 80);
  Regex.init(_regexString:version:)();
  *(swift_task_alloc() + 16) = v17;
  sub_1000F2B44();
  sub_1000F2B98();
  sub_1001A9064();
  RangeReplaceableCollection<>.replace<A, B, C>(_:maxReplacements:with:)();

  v8 = *(v5 + 8);
  v8(v4, v6);
  Regex.init(_regexString:version:)();
  _StringGuts.grow(_:)(19);
  v9 = sub_1003C0F88();
  v11 = v10;

  v12._object = 0x80000001008ED9F0;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  *(v0 + 32) = v9;
  *(v0 + 40) = v11;
  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();

  v8(v4, v6);
  *(v0 + 48) = 0x3E6C6D74683CLL;
  *(v0 + 56) = 0xE600000000000000;
  *(v0 + 64) = 0xD000000000000011;
  *(v0 + 72) = 0x80000001008EDA10;
  sub_1000F2BEC();
  RangeReplaceableCollection<>.replace<A, B>(_:with:maxReplacements:)();
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  sub_1003C0894("ExportPackage.renderHTML executed in %ss", v2);

  v15 = *(v0 + 8);

  return v15(v13, v14);
}

uint64_t sub_1003C0300@<X0>(uint64_t a1@<X2>, unint64_t *a2@<X8>)
{
  sub_1000F24EC(&unk_100AE1BE0);
  Regex.Match.output.getter();
  v4 = static String._fromSubstring(_:)();
  v6 = v5;

  if (*(a1 + 16))
  {
    v7 = sub_100094E98(v4, v6);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(a1 + 56) + 16 * v7);

      goto LABEL_11;
    }
  }

  else
  {
  }

  Regex.Match.output.getter();
  v12 = sub_1003C1524(v13, v14, v15, v16, 0xD000000000000013, 0x80000001008EF6C0);

  if (v12)
  {
    v10 = 0xD000000000000022;
  }

  else
  {
    v10 = 0;
  }

  if (v12)
  {
    result = 0x80000001008EF6E0;
  }

  else
  {
    result = 0xE000000000000000;
  }

LABEL_11:
  *a2 = v10;
  a2[1] = result;
  return result;
}

uint64_t sub_1003C0474(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v5;
  v3[9] = v4;

  return _swift_task_switch(sub_1003C0514, v5, v4);
}

uint64_t sub_1003C0514()
{
  v8 = *(v0 + 24);
  [*(*(v0 + 40) + OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_webView) setNavigationDelegate:*(v0 + 40)];
  static Date.timeIntervalSinceReferenceDate.getter();
  *(v0 + 80) = v1;
  v2 = static MainActor.shared.getter();
  *(v0 + 88) = v2;
  v3 = swift_allocObject();
  *(v0 + 96) = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v8;
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  v6 = sub_1000065A8(0, &qword_100AE1BF0);
  *v5 = v0;
  v5[1] = sub_1003C0694;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, v2, &protocol witness table for MainActor, 0xD000000000000026, 0x80000001008EF710, sub_1003C159C, v4, v6);
}

uint64_t sub_1003C0694()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1003C0818, v3, v2);
}

uint64_t sub_1003C0818()
{
  v1 = v0[10];

  v2 = *(v0 + 2);
  sub_1003C0894("PrintableHTMLContentController.loadWebView executed in %ss", v1);
  v3 = *(v0 + 1);

  return v3(v2);
}

void sub_1003C0894(const char *a1, double a2)
{
  if (qword_100ACFD08 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AE1A70);
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    sub_1000F24EC(&unk_100AD5B10);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100940080;
    Current = CFAbsoluteTimeGetCurrent();
    *(v8 + 56) = &type metadata for Double;
    *(v8 + 64) = &protocol witness table for Double;
    *(v8 + 32) = Current - a2;
    v10 = String.init(format:_:)();
    v12 = sub_100008458(v10, v11, &v14);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v5, a1, v6, 0xCu);
    sub_10000BA7C(v7);
  }
}

void sub_1003C0A4C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE1BF8);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_1000F24EC(&qword_100AE1BC8);
    v8 = *(v7 - 8);
    (*(v8 + 16))(v4, a1, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    v9 = OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_continuation;
    swift_beginAccess();
    sub_1003C15A8(v4, v6 + v9);
    swift_endAccess();
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_webView);

    URL._bridgeToObjectiveC()(v13);
    v15 = v14;
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v19 = [v12 loadFileURL:v15 allowingReadAccessToURL:v17];
  }
}

id sub_1003C0D90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrintableHTMLContentController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PrintableHTMLContentController()
{
  result = qword_100AE1BB0;
  if (!qword_100AE1BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003C0E68()
{
  sub_1003C0F08();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1003C0F08()
{
  if (!qword_100AE1BC0)
  {
    sub_1000F2A18(&qword_100AE1BC8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE1BC0);
    }
  }
}

uint64_t sub_1003C0F88()
{
  v0 = type metadata accessor for ColorResource();
  v59 = *(v0 - 8);
  v60 = v0;
  __chkstk_darwin(v0);
  v58 = &v57 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = 0;
  v62 = 0xE000000000000000;
  _StringGuts.grow(_:)(7274);
  v2._countAndFlagsBits = 0xD00000000000064ELL;
  v2._object = 0x80000001008EDA30;
  String.append(_:)(v2);
  v3 = objc_opt_self();
  v4 = [v3 tertiarySystemFillColor];
  v5 = objc_opt_self();
  v6 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v7 = [v4 resolvedColorWithTraitCollection:v6];

  v8 = sub_100417480();
  v10 = v9;

  v11._countAndFlagsBits = v8;
  v11._object = v10;
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0xD0000000000006F2;
  v12._object = 0x80000001008EE080;
  String.append(_:)(v12);
  v13 = [v3 secondaryLabelColor];
  v14 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v15 = [v13 resolvedColorWithTraitCollection:v14];

  v16 = sub_100417480();
  v18 = v17;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000DADLL;
  v20._object = 0x80000001008EE780;
  String.append(_:)(v20);
  v21 = [v3 blackColor];
  v22 = [v21 colorWithAlphaComponent:0.6];

  v23 = sub_100417480();
  v25 = v24;

  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0xD00000000000005FLL;
  v27._object = 0x80000001008EF530;
  String.append(_:)(v27);
  v28 = [v3 labelColor];
  v29 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v30 = [v28 resolvedColorWithTraitCollection:v29];

  v31 = [v30 colorWithAlphaComponent:0.6];
  v32 = sub_100417480();
  v34 = v33;

  v35._countAndFlagsBits = v32;
  v35._object = v34;
  String.append(_:)(v35);

  v36._countAndFlagsBits = 0xD000000000000048;
  v36._object = 0x80000001008EF590;
  String.append(_:)(v36);
  v37 = [v3 secondaryLabelColor];
  v38 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  v40 = [v39 colorWithAlphaComponent:0.4];
  v41 = sub_100417480();
  v43 = v42;

  v44._countAndFlagsBits = v41;
  v44._object = v43;
  String.append(_:)(v44);

  v45._object = 0x80000001008EF5E0;
  v45._countAndFlagsBits = 0xD000000000000042;
  String.append(_:)(v45);
  sub_1000065A8(0, &qword_100AD4C70);
  if (qword_100AD0BE8 != -1)
  {
    swift_once();
  }

  v46 = v60;
  v47 = sub_10000617C(v60, qword_100B312C8);
  (*(v59 + 16))(v58, v47, v46);
  v48 = UIColor.init(resource:)();
  v49 = [v5 traitCollectionWithUserInterfaceStyle:1];
  v50 = [v48 resolvedColorWithTraitCollection:v49];

  v51 = sub_100417480();
  v53 = v52;

  v54._countAndFlagsBits = v51;
  v54._object = v53;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0xD000000000000088;
  v55._object = 0x80000001008EF630;
  String.append(_:)(v55);
  return v61;
}

uint64_t sub_1003C1524(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_1003C15A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE1BF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C1618(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AE1BC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v17 - v6;
  v8 = sub_1000F24EC(&qword_100AE1BF8);
  __chkstk_darwin(v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v17 - v12;
  v14 = OBJC_IVAR____TtC7Journal30PrintableHTMLContentController_continuation;
  swift_beginAccess();
  sub_1003C1848(v2 + v14, v13);
  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_1003C18B8(v13);
  }

  else
  {
    (*(v5 + 16))(v7, v13, v4);
    sub_1003C18B8(v13);
    v17[0] = a1;
    v15 = a1;
    CheckedContinuation.resume(returning:)();
    (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 56))(v10, 1, 1, v4);
  swift_beginAccess();
  sub_1003C15A8(v10, v2 + v14);
  return swift_endAccess();
}

uint64_t sub_1003C1848(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE1BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003C18B8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE1BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003C1988()
{
  v10 = 0;
  v11 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);
  v9.receiver = v0;
  v9.super_class = type metadata accessor for MosaicLayout.Attributes();
  v1 = objc_msgSendSuper2(&v9, "debugDescription");
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003C1CF8(1);

  v2 = static String._fromSubstring(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x7954657A6973203BLL;
  v6._object = 0xED0000203D206570;
  String.append(_:)(v6);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 62;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v10;
}

id sub_1003C1B24(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal12MosaicLayout_cachedAttributes] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC7Journal12MosaicLayout_contentBounds];
  *v3 = 0u;
  v3[1] = 0u;
  v1[OBJC_IVAR____TtC7Journal12MosaicLayout_sizeType] = 2;
  v4 = &v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerTopCornerRadius];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[OBJC_IVAR____TtC7Journal12MosaicLayout_outerBottomCornerRadius];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v1[OBJC_IVAR____TtC7Journal12MosaicLayout_isExpanded] = 0;
  v1[OBJC_IVAR____TtC7Journal12MosaicLayout_enforceShowCompressedAssetGrid] = 0;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MosaicLayout();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1003C1C40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003C1C88(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1003C1CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1003C1CF8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = result;
  result = String.count.getter();
  if (__OFSUB__(result, v1))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  String.index(_:offsetBy:limitedBy:)();

  return String.subscript.getter();
}

uint64_t sub_1003C1DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_1000F24EC(&unk_100AD8A90);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100940050;
    *(v8 + 32) = 0;
    *(v8 + 40) = a1;
    IndexPath.init(arrayLiteral:)();
    v9 = sub_1005883D4();
    if (v9)
    {
      v10 = v9;
      LOBYTE(a2) = (*((swift_isaMask & *v9) + 0x228))();
    }

    else
    {
      LOBYTE(a2) = 0;
    }

    (*(v5 + 8))(v7, v4);
  }

  return a2 & 1;
}

uint64_t sub_1003C1F2C(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 144) = v3;
  *(v4 + 177) = a3;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 152) = v5;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_1003C1FC0, v5, v7);
}

uint64_t sub_1003C1FC0()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_1003C20EC;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&unk_100AE1D90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D6930;
  v0[13] = &unk_100A6AD80;
  v0[14] = v2;
  [v1 requestAuthorizationWithOptions:6 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1003C20EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  v3 = *(v1 + 160);
  v4 = *(v1 + 152);
  if (v2)
  {
    v5 = sub_1003C23F8;
  }

  else
  {
    v5 = sub_1003C221C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003C221C()
{
  v1 = *(v0 + 176);
  v2 = [objc_opt_self() defaultCenter];
  if (qword_100ACFD18 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 144);
  v4 = *(v0 + 177);
  [v2 postNotificationName:qword_100B2F890 object:v3];

  v5 = *(v3 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults);
  [v5 setIsJournalingScheduleEnabled:0];
  [v5 setIsStreakReminderEnabled:0];
  if ((v1 & v4) == 1)
  {
    if (qword_100ACFD10 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AE1CA0);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "😊 notifications authorization granted 😊", v9, 2u);
    }
  }

  v10 = *(v0 + 8);

  return v10(v1);
}

uint64_t sub_1003C23F8()
{
  swift_willThrow();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003C2474(uint64_t a1, void *a2)
{
  v3 = sub_10000CA14((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000F24EC(&qword_100AD5BC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1003C2520()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE1CA0);
  v1 = sub_10000617C(v0, qword_100AE1CA0);
  if (qword_100AD01E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B30058);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_1003C25E8()
{
  result = String._bridgeToObjectiveC()();
  qword_100B2F890 = result;
  return result;
}

uint64_t sub_1003C2620(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD00000000000001ALL;
  }

  if (v2)
  {
    v4 = "l.streakReminder";
  }

  else
  {
    v4 = "com.apple.journal.newEntry";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v7 = "com.apple.journal.newEntry";
  }

  else
  {
    v7 = "l.streakReminder";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1003C26CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C274C()
{
  String.hash(into:)();
}

Swift::Int sub_1003C27B8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003C2834@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100A590D8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1003C2894(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.journal.newEntry";
  }

  else
  {
    v3 = "l.streakReminder";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t *sub_1003C28D4(uint64_t *result, uint64_t *a2)
{
  v2 = 1440 * *result;
  if ((*result * 1440) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result[1];
  v4 = (v3 * 60) >> 64;
  v5 = 60 * v3;
  if (v4 != v5 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result[2];
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = 1440 * *a2;
  if ((*a2 * 1440) >> 64 != v10 >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = a2[1];
  v12 = 60 * v11;
  if ((v11 * 60) >> 64 != (60 * v11) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = __OFADD__(v10, v12);
  v13 = v10 + v12;
  if (v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = a2[2];
  v6 = __OFADD__(v13, v14);
  v15 = v13 + v14;
  if (!v6)
  {
    return (v9 == v15);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1003C2990(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 472) = a4;
  *(v5 + 184) = a3;
  *(v5 + 192) = v4;
  v7 = type metadata accessor for DateComponents();
  *(v5 + 200) = v7;
  *(v5 + 208) = *(v7 - 8);
  *(v5 + 216) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  *(v5 + 224) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v5 + 232) = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  *(v5 + 240) = swift_task_alloc();
  v8 = type metadata accessor for Calendar.Component();
  *(v5 + 248) = v8;
  *(v5 + 256) = *(v8 - 8);
  *(v5 + 264) = swift_task_alloc();
  v9 = type metadata accessor for Calendar();
  *(v5 + 272) = v9;
  *(v5 + 280) = *(v9 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  *(v5 + 304) = swift_task_alloc();
  *(v5 + 312) = swift_task_alloc();
  *(v5 + 320) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v5 + 328) = v10;
  *(v5 + 336) = *(v10 - 8);
  *(v5 + 344) = swift_task_alloc();
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  *(v5 + 376) = v11;
  *(v5 + 384) = v13;

  return _swift_task_switch(sub_1003C2CA8, v11, v13);
}

uint64_t sub_1003C2CA8()
{
  v1 = *(v0 + 184);
  v2 = type metadata accessor for StreakSummary();
  v3 = *(v1 + *(v2 + 28));
  if (v3 < 2)
  {
LABEL_10:
    v40 = *(*(v0 + 192) + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v40 removePendingNotificationRequestsWithIdentifiers:isa];

    v42 = *(v0 + 8);

    return v42();
  }

  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  sub_100088AC8(v1 + *(v2 + 24), v6);
  v7 = *(v5 + 48);
  *(v0 + 392) = v7;
  *(v0 + 400) = (v5 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v6, 1, v4) == 1)
  {
    sub_100004F84(*(v0 + 320), &unk_100AD4790);
    goto LABEL_10;
  }

  v57 = v3;
  v8 = *(v0 + 368);
  v9 = *(v0 + 328);
  v10 = *(v0 + 336);
  v12 = *(v0 + 312);
  v11 = *(v0 + 320);
  v13 = *(v0 + 256);
  v14 = *(v0 + 264);
  v15 = *(v0 + 248);
  v16 = *(v10 + 32);
  *(v0 + 408) = v16;
  *(v0 + 416) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v58 = v16;
  v59 = v9;
  v16(v8, v11);
  static Calendar.current.getter();
  (*(v13 + 104))(v14, enum case for Calendar.Component.day(_:), v15);
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v13 + 8))(v14, v15);
  if (v7(v12, 1, v59) == 1)
  {
    v17 = *(v0 + 368);
    v18 = *(v0 + 328);
    v19 = *(v0 + 336);
    v20 = *(v0 + 312);
    (*(*(v0 + 280) + 8))(*(v0 + 296), *(v0 + 272));
    (*(v19 + 8))(v17, v18);
    sub_100004F84(v20, &unk_100AD4790);
    goto LABEL_10;
  }

  v21 = *(v0 + 352);
  v22 = *(v0 + 328);
  v23 = *(v0 + 336);
  v58(*(v0 + 360), *(v0 + 312), v22);
  static Date.now.getter();
  v24 = static Date.> infix(_:_:)();
  v25 = *(v23 + 8);
  *(v0 + 424) = v25;
  *(v0 + 432) = (v23 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v25(v21, v22);
  if ((v24 & 1) == 0)
  {
    v35 = *(v0 + 368);
    v36 = *(v0 + 328);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);
    v39 = *(v0 + 280);
    v25(*(v0 + 360), v36);
    (*(v39 + 8))(v37, v38);
    v25(v35, v36);
    goto LABEL_10;
  }

  v26 = *(v0 + 192);
  v27 = *(v0 + 472);
  v28 = [objc_allocWithZone(UNMutableNotificationContent) init];
  *(v0 + 440) = v28;
  String.LocalizationValue.init(stringLiteral:)();
  v29 = *(v26 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_bundle);
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v30 = String._bridgeToObjectiveC()();

  [v28 setTitle:v30];

  v31 = String._bridgeToObjectiveC()();
  [v28 setCategoryIdentifier:v31];

  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._object = 0x80000001008EFA30;
  v32._countAndFlagsBits = 0x1000000000000017;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  if (v27)
  {
    *(v0 + 168) = v57;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v33 = "You’ve journaled for ";
    v34 = 0xD00000000000003CLL;
  }

  else
  {
    *(v0 + 176) = v57;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v33 = "notification body";
    v34 = 0xD00000000000003BLL;
  }

  v44 = v33 | 0x8000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v34);
  String.LocalizationValue.init(stringInterpolation:)();
  v45 = v29;
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v46 = String._bridgeToObjectiveC()();

  [v28 setBody:v46];

  if (qword_100AD0BA8 != -1)
  {
    swift_once();
  }

  v47 = *(v0 + 192);
  Calendar.dateComponents(_:from:)();
  v48 = *(v47 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_defaults);
  [v48 streakReminderHour];
  DateComponents.hour.setter();
  [v48 streakReminderMinute];
  DateComponents.minute.setter();
  v49 = DateComponents._bridgeToObjectiveC()().super.isa;
  v50 = [objc_opt_self() triggerWithDateMatchingComponents:v49 repeats:0];
  *(v0 + 448) = v50;

  v51 = v28;
  v52 = v50;
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() requestWithIdentifier:v53 content:v51 trigger:v52];
  *(v0 + 456) = v54;

  v55 = *(v47 + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1003C34B8;
  v56 = swift_continuation_init();
  *(v0 + 136) = sub_1000F24EC(&unk_100AE1D70);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1003C2474;
  *(v0 + 104) = &unk_100A6AD58;
  *(v0 + 112) = v56;
  [v55 addNotificationRequest:v54 withCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_1003C34B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 464) = v2;
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);
  if (v2)
  {
    v5 = sub_1003C3A68;
  }

  else
  {
    v5 = sub_1003C35E8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1003C35E8()
{
  v56 = v0;
  if (qword_100ACFD10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = type metadata accessor for Logger();
  sub_10000617C(v5, qword_100AE1CA0);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v52 = v7;
    v8 = *(v0 + 392);
    v9 = *(v0 + 328);
    v10 = *(v0 + 304);
    v11 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55 = v48;
    buf = v11;
    *v11 = 136315138;
    swift_beginAccess();
    Calendar.date(from:)();
    v54 = v6;
    if (v8(v10, 1, v9) == 1)
    {
      v12 = *(v0 + 392);
      v13 = *(v0 + 328);
      v14 = *(v0 + 304);
      static Date.distantFuture.getter();
      if (v12(v14, 1, v13) != 1)
      {
        sub_100004F84(*(v0 + 304), &unk_100AD4790);
      }
    }

    else
    {
      (*(v0 + 408))(*(v0 + 344), *(v0 + 304), *(v0 + 328));
    }

    v36 = *(v0 + 456);
    v37 = *(v0 + 448);
    v23 = *(v0 + 424);
    v39 = *(v0 + 360);
    v40 = *(v0 + 440);
    v24 = *(v0 + 344);
    v25 = *(v0 + 328);
    v26 = *(v0 + 288);
    v28 = *(v0 + 272);
    v27 = *(v0 + 280);
    v45 = *(v0 + 216);
    v47 = *(v0 + 368);
    v38 = *(v0 + 208);
    v41 = *(v0 + 296);
    v43 = *(v0 + 200);
    sub_10005C3F4();
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v23(v24, v25);
    v32 = *(v27 + 8);
    v32(v26, v28);
    v33 = sub_100008458(v29, v31, &v55);

    *(buf + 4) = v33;
    _os_log_impl(&_mh_execute_header, v54, v52, "Scheduled next streak reminder notification for %s", buf, 0xCu);
    sub_10000BA7C(v48);

    v23(v39, v25);
    v32(v41, v28);
    v23(v47, v25);
    (*(v38 + 8))(v45, v43);
  }

  else
  {
    v15 = *(v0 + 448);
    v16 = *(v0 + 440);
    v17 = *(v0 + 424);
    v53 = *(v0 + 368);
    v18 = *(v0 + 328);
    v44 = *(v0 + 360);
    v46 = *(v0 + 296);
    v42 = *(v0 + 288);
    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v21 = *(v0 + 208);
    v49 = *(v0 + 200);
    bufa = *(v0 + 216);

    v22 = *(v19 + 8);
    v22(v42, v20);
    v17(v44, v18);
    v22(v46, v20);
    v17(v53, v18);
    (*(v21 + 8))(bufa, v49);
  }

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1003C3A68()
{
  swift_willThrow();
  if (qword_100ACFD10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AE1CA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to schedule streak reminder: %@", v4, 0xCu);
    sub_100004F84(v5, &unk_100AD4BB0);
  }

  v7 = v0[57];
  v18 = v0[56];
  v8 = v2;
  v9 = v0[53];
  v10 = v0[45];
  v11 = v0[46];
  v12 = v0[41];
  v19 = v0[37];
  v20 = v0[55];
  v13 = v0[35];
  v17 = v0[34];
  v14 = v0[26];
  v21 = v0[25];
  v22 = v0[27];

  swift_willThrow();
  v9(v10, v12);
  (*(v13 + 8))(v19, v17);
  v9(v11, v12);
  (*(v14 + 8))(v22, v21);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1003C3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003C3F70, v6, v5);
}

uint64_t sub_1003C3F70()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];

  v0[7] = _Block_copy(v2);
  v5 = v4;
  v6 = v3;
  v7 = v1;
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_1003C4054;
  v9 = v0[3];

  return sub_1003C4900(v9);
}

uint64_t sub_1003C4054()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1003C4354(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  v10 = a4;
  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1003C4440;

  return (sub_1003C4FF4)(0, 0, v9);
}

uint64_t sub_1003C4440(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v9 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v7 = *(v9 + 8);

  return v7();
}

unint64_t sub_1003C4644()
{
  result = qword_100AE1D60;
  if (!qword_100AE1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE1D60);
  }

  return result;
}

uint64_t *sub_1003C4698@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result >> 5;
  if (v3 < 0x13B)
  {
    v4 = *result / 0x5A0u;
    v7 = v2 % 0x5A0u;
    v5 = v2 % 0x5A0u / 0x3C;
    v6 = v7 % 0x3Cu;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v3 > 0x13A;
  return result;
}

void sub_1003C4704(uint64_t *a1@<X8>)
{
  v2 = 1440 * *v1;
  if ((*v1 * 1440) >> 64 != v2 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v1[1];
  v4 = (v3 * 60) >> 64;
  v5 = 60 * v3;
  if (v4 != v5 >> 63)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = __OFADD__(v2, v5);
  v7 = v2 + v5;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v1[2];
  v6 = __OFADD__(v7, v8);
  v9 = v7 + v8;
  if (!v6)
  {
    *a1 = v9;
    return;
  }

LABEL_9:
  __break(1u);
}

id sub_1003C4764(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1003C4840()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_1003C4354(v2, v3, v5, v4);
}

uint64_t sub_1003C4900(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_1003C4998, v4, v3);
}

uint64_t sub_1003C4998()
{
  v1 = *(v0 + 24) + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_actionHandler;
  v2 = *v1;
  *(v0 + 56) = *v1;
  *(v0 + 64) = *(v1 + 8);
  if (!v2)
  {

    if (qword_100ACFD10 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000617C(v14, qword_100AE1CA0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Received a notification response from outside the main app; ignoring.", v17, 2u);
    }

    goto LABEL_24;
  }

  v3 = *(v0 + 16);

  v4 = [v3 actionIdentifier];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  v9 = _findStringSwitchCase(cases:string:)(&off_100A590D8, v8);

  if (v9 <= 1)
  {
LABEL_3:
    v10 = *(v0 + 32);
    v11 = [*(v0 + 16) notification];
    *(v0 + 72) = v11;

    v35 = (v2 + *v2);
    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_1003C4E2C;

    return v35(v10, &protocol witness table for MainActor, v11, v9);
  }

  v18 = [*(v0 + 16) actionIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {

    goto LABEL_18;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_18:
    v25 = [*(v0 + 16) notification];
    v26 = [v25 request];

    v27 = [v26 content];
    v28 = [v27 categoryIdentifier];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32._countAndFlagsBits = v29;
    v32._object = v31;
    v9 = _findStringSwitchCase(cases:string:)(&off_100A59088, v32);

    if (!v9)
    {

      goto LABEL_3;
    }

    if (v9 == 1)
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
      }

      v9 = 0;
      goto LABEL_3;
    }
  }

  sub_100004DF8(v2);

LABEL_24:
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1003C4E2C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_1003C4F88, v4, v3);
}

uint64_t sub_1003C4F88()
{
  sub_100004DF8(*(v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003C4FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  if (a1)
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

  return _swift_task_switch(sub_1003C5080, v4, v6);
}

uint64_t sub_1003C5080()
{
  v1 = [*(v0 + 16) request];
  v2 = [v1 content];

  v3 = [v2 categoryIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&off_100A59088, v7);

  if (v8 == 1)
  {
    v9 = 26;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1003C5178()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032ECC;

  return sub_1003C3ED4(v2, v3, v5, v4);
}

void sub_1003C5250()
{
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  objc_msgSendSuper2(&v7, "_bridgedUpdateConfigurationUsingState:", isa);

  v2 = [v0 contentView];
  v3 = [objc_opt_self() labelColor];
  [v2 setTintColor:v3];

  v4 = [v0 layer];
  v5 = UICellConfigurationState.isEditing.getter();
  v6 = -1.0;
  if (v5)
  {
    v6 = 0.0;
  }

  [v4 setZPosition:v6];
}

uint64_t sub_1003C5434()
{
  v1 = type metadata accessor for UICellAccessory.AccessoryType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for UICellAccessory();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SidebarEditingCollectionViewCell();
  v32.receiver = v0;
  v32.super_class = v9;
  objc_msgSendSuper2(&v32, "prepareForReuse");
  v10 = UICollectionViewListCell.accessories.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v13 = *(v6 + 16);
    v12 = v6 + 16;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v24 = v10;
    v15 = v10 + v14;
    v30 = *(v12 + 56);
    v31 = v13;
    v16 = v2;
    v17 = (v2 + 88);
    v29 = enum case for UICellAccessory.AccessoryType.customView(_:);
    v18 = (v12 - 8);
    v26 = (v16 + 96);
    v27 = (v16 + 8);
    v25 = v5;
    v28 = v12;
    v13(v8, v10 + v14, v5);
    while (1)
    {
      UICellAccessory.accessoryType.getter();
      v19 = (*v17)(v4, v1);
      if (v19 == v29)
      {
        (*v26)(v4, v1);
        v20 = *v4;
        objc_opt_self();
        v21 = swift_dynamicCastObjCClass();
        if (v21)
        {
          __chkstk_darwin(v21);
          *(&v24 - 2) = v22;
          UIControl.enumerateEventHandlers(_:)();

          v5 = v25;
        }

        else
        {
        }

        (*v18)(v8, v5);
      }

      else
      {
        (*v18)(v8, v5);
        (*v27)(v4, v1);
      }

      v15 += v30;
      if (!--v11)
      {
        break;
      }

      v31(v8, v15, v5);
    }
  }
}

id sub_1003C5864()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarEditingCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1003C5898(id result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    return [*(v3 + 16) removeAction:result forControlEvents:a3];
  }

  return result;
}

id sub_1003C58B8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapController;
  *&v4[v9] = [objc_allocWithZone(PXPlacesMapController) init];
  *&v4[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_pinPipeline] = 0;
  *&v4[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_loadingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapNeedsUpdate] = 1;
  *&v4[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore] = [objc_allocWithZone(type metadata accessor for SidebarPinsStore()) init];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SidebarEntryMapView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  sub_1003C5A9C();

  return v10;
}

void sub_1003C5A9C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapController];
  v3 = [v2 mapView];
  [v1 addSubview:v3];

  v4 = [v2 mapView];
  sub_100013178(0.0);

  v5 = [v2 mapView];
  type metadata accessor for EntryMapMarkerAnnotationView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [v5 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];

  v7 = [v2 mapView];
  [v7 registerClass:ObjCClassFromMetadata forAnnotationViewWithReuseIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier];

  [v2 setChangeDelegate:v1];
  [v2 setStateDelegate:v1];
  v8 = [v2 mapView];
  [v8 setMapViewDelegate:v1];

  v9 = [v2 mapView];
  [v9 _setShowsLabels:0];

  v10 = [v2 mapView];
  [v10 setShowsAttribution:0];

  v11 = [v2 mapView];
  [v11 setMapType:5];

  v12 = [objc_allocWithZone(MKStandardMapConfiguration) init];
  v13 = [objc_opt_self() filterExcludingAllCategories];
  [v12 setPointOfInterestFilter:v13];

  v14 = [v2 mapView];
  [v14 setPreferredConfiguration:v12];

  v15 = sub_1003C5DAC();
  v17 = v16;
  v18 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_pinPipeline;
  v19 = *&v1[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_pinPipeline];
  *&v1[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_pinPipeline] = v15;
  v22 = v15;

  v20 = *&v1[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore];
  *&v1[OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore] = v17;
  v21 = v17;

  if (*&v1[v18])
  {
    [v2 addPipeline:?];
  }

  [v2 resumePipelines:0];
}

id sub_1003C5DAC()
{
  v1 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore;
  v2 = [objc_allocWithZone(PXPlacesMapGeometricClusterLayout) initWithDataSource:*(*(v0 + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore) + OBJC_IVAR____TtC7Journal16SidebarPinsStore_store)];
  v3 = [objc_allocWithZone(PXPlacesMapInPlaceUpdatePlan) init];
  v4 = [objc_allocWithZone(type metadata accessor for LocationPinRenderer()) init];
  v4[OBJC_IVAR____TtC7Journal19LocationPinRenderer_allowsClustering] = 0;
  v5 = [objc_allocWithZone(PXPlacesMapPipeline) initWithLayout:v2 updatePlan:v3 renderer:v4 selectionHandler:v4];

  v6 = *(v0 + v1);
  return v5;
}

id sub_1003C5E9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SidebarEntryMapView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1003C6164()
{
  v1 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore;
  [*(*(v0 + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_locationMapPinsStore) + OBJC_IVAR____TtC7Journal16SidebarPinsStore_store) minimalEncompassingMapRect];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(v0 + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapController);
  v11 = [v10 mapView];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v38.width = CGSizeZero.width;
  v38.height = CGSizeZero.height;
  v40.width = v13;
  v40.height = v15;
  if (CGSizeEqualToSize(v38, v40))
  {
    width = v7;
    height = v9;
    goto LABEL_17;
  }

  _MKMapRectThatFits();
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v44.origin.x = v3;
  v44.origin.y = v5;
  v44.size.width = v7;
  v44.size.height = v9;
  if (MKMapRectContainsRect(v41, v44))
  {
    v3 = x;
    v5 = y;
LABEL_17:
    v42.origin.x = v3;
    v42.origin.y = v5;
    v42.size.width = width;
    v42.size.height = height;
    v43 = MKCoordinateRegionForMapRect(v42);
    if (sub_10032C294(v43.center.latitude, v43.center.longitude, v43.span.latitudeDelta, v43.span.longitudeDelta))
    {
      v35 = [v10 mapView];
      [v35 setVisibleMapRect:1 animated:{v3, v5, width, height}];
    }

    return;
  }

  v20 = [*(*(v0 + v1) + OBJC_IVAR____TtC7Journal16SidebarPinsStore_store) allItems];
  v21 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v21 + 16);
  if (v22)
  {
    v23 = sub_1003E7908(*(v21 + 16), 0);
    v24 = sub_1001C23CC(&v36, (v23 + 4), v22, v21);
    sub_100014FF8();
    if (v24 == v22)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v23 = _swiftEmptyArrayStorage;
LABEL_9:
  v25 = sub_100584C20(v23);

  if (!v25)
  {
    return;
  }

  v36 = sub_1004FCDD4(v26);
  sub_1003C6958(&v36);

  v27 = v36;
  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_13;
    }
  }

  else if (*(v36 + 16))
  {
LABEL_13:
    if ((v27 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*(v27 + 16))
      {
        __break(1u);

        __break(1u);
        return;
      }

      v28 = *(v27 + 32);
    }

    v29 = v28;

    [*&v29[OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_location] coordinate];
    v30 = MKMapPointForCoordinate(v39);
    [objc_opt_self() canonicalMapRect:{v30.x - width * 0.5, v30.y - height * 0.5, width, height}];
    _MKMapRectThatFits();
    v3 = v31;
    v5 = v32;
    width = v33;
    height = v34;

    goto LABEL_17;
  }
}

uint64_t sub_1003C65CC(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v25[-v8];
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v25[-v15];
  v17 = *a1;
  v18 = *a2;
  v19 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_100088AC8(v17 + v19, v9);
  v20 = *(v11 + 48);
  if (v20(v9, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v9, 1, v10) != 1)
    {
      sub_10012C9CC(v9);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
  }

  v21 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
  swift_beginAccess();
  sub_100088AC8(v18 + v21, v6);
  if (v20(v6, 1, v10) == 1)
  {
    Date.init()();
    if (v20(v6, 1, v10) != 1)
    {
      sub_10012C9CC(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v6, v10);
  }

  v22 = static Date.> infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v16, v10);
  return v22 & 1;
}

uint64_t sub_1003C6958(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100206E70(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1003C69D4(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1003C69D4(uint64_t *a1)
{
  v3 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v3 - 8);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v43 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v58 = v43 - v14;
  v15 = a1[1];
  v16 = _minimumMergeRunLength(_:)(v15);
  if (v16 < v15)
  {
    if (v15 >= -1)
    {
      v17 = v16;
      if (v15 <= 1)
      {
        v18 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for DataAggregator.EntryPlace(0);
        v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) = v15 / 2;
      }

      v42 = v18 & 0xFFFFFFFFFFFFFF8;
      v57[0] = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
      v57[1] = v15 / 2;
      sub_1003C6E30(v57, v56, a1, v17);
      *(v42 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v15 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  if (v15 >= 2)
  {
    v52 = v12;
    v53 = v5;
    v43[1] = v1;
    v19 = *a1;
    v20 = (v10 + 48);
    v48 = (v10 + 8);
    v49 = (v10 + 32);
    v21 = -1;
    v22 = 1;
    v54 = v19;
    v50 = (v10 + 48);
    v51 = v8;
    v44 = v15;
    do
    {
      v46 = v22;
      v47 = v21;
      v23 = *(v54 + 8 * v22);
      v24 = v21;
      v45 = v19;
      do
      {
        v25 = *v19;
        v26 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        sub_100088AC8(v23 + v26, v8);
        v27 = *v20;
        if ((*v20)(v8, 1, v9) == 1)
        {
          v28 = v23;
          v29 = v25;
          Date.init()();
          if (v27(v8, 1, v9) != 1)
          {
            sub_10012C9CC(v8);
          }
        }

        else
        {
          (*v49)(v58, v8, v9);
          v30 = v23;
          v31 = v25;
        }

        v32 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v55 = v25;
        v33 = v25 + v32;
        v34 = v53;
        sub_100088AC8(v33, v53);
        if (v27(v34, 1, v9) == 1)
        {
          v35 = v52;
          Date.init()();
          v36 = v9;
          if (v27(v34, 1, v9) != 1)
          {
            sub_10012C9CC(v34);
          }
        }

        else
        {
          v35 = v52;
          (*v49)(v52, v34, v9);
          v36 = v9;
        }

        v37 = v58;
        v38 = static Date.> infix(_:_:)();
        v39 = *v48;
        (*v48)(v35, v36);
        v39(v37, v36);

        v20 = v50;
        v8 = v51;
        v9 = v36;
        if ((v38 & 1) == 0)
        {
          break;
        }

        if (!v54)
        {
          goto LABEL_28;
        }

        v40 = *v19;
        v23 = *(v19 + 8);
        *v19 = v23;
        *(v19 + 8) = v40;
        v19 -= 8;
      }

      while (!__CFADD__(v24++, 1));
      v22 = v46 + 1;
      v19 = v45 + 8;
      v21 = v47 - 1;
    }

    while (v46 + 1 != v44);
  }
}

void sub_1003C6E30(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v134 = a1;
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v10 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v132 - v12;
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  __chkstk_darwin(v17);
  v142 = &v132 - v18;
  v19 = type metadata accessor for Date();
  __chkstk_darwin(v19);
  __chkstk_darwin(v20);
  v154 = &v132 - v21;
  __chkstk_darwin(v22);
  __chkstk_darwin(v23);
  v144 = &v132 - v27;
  v143 = a3;
  v28 = *(a3 + 8);
  if (v28 < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_107:
    a3 = *v134;
    if (!*v134)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v157 = v31;
      v128 = *(v31 + 2);
      if (v128 >= 2)
      {
        while (*v143)
        {
          v129 = *&v31[16 * v128];
          v130 = *&v31[16 * v128 + 24];
          sub_1003C7ABC((*v143 + 8 * v129), (*v143 + 8 * *&v31[16 * v128 + 16]), (*v143 + 8 * v130), a3);
          if (v5)
          {
            goto LABEL_117;
          }

          if (v130 < v129)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_100204C44(v31);
          }

          if (v128 - 2 >= *(v31 + 2))
          {
            goto LABEL_134;
          }

          v131 = &v31[16 * v128];
          *v131 = v129;
          *(v131 + 1) = v130;
          v157 = v31;
          sub_100204BB8(v128 - 1);
          v31 = v157;
          v128 = *(v157 + 2);
          if (v128 <= 1)
          {
            goto LABEL_117;
          }
        }

        goto LABEL_144;
      }

LABEL_117:

      return;
    }

LABEL_140:
    v31 = sub_100204C44(v31);
    goto LABEL_109;
  }

  v138 = v26;
  v146 = v25;
  v132 = a4;
  v29 = 0;
  v30 = (v24 + 48);
  v150 = (v24 + 8);
  v151 = (v24 + 32);
  v31 = _swiftEmptyArrayStorage;
  v147 = v10;
  v152 = v13;
  v139 = v16;
  v149 = (v24 + 48);
  while (1)
  {
    v32 = v29;
    if (v29 + 1 >= v28)
    {
      v42 = v29 + 1;
    }

    else
    {
      v145 = v28;
      a3 = *v143;
      v33 = *(*v143 + 8 * (v29 + 1));
      v155 = *(*v143 + 8 * v29);
      v34 = v155;
      v156 = v33;
      v153 = v33;
      v35 = v34;
      LODWORD(v148) = sub_1003C65CC(&v156, &v155);
      v36 = v142;
      if (v5)
      {

        return;
      }

      v37 = v32 + 2;
      v133 = v32;
      v137 = 8 * v32;
      v38 = (a3 + 8 * v32 + 16);
      v140 = v31;
      v141 = 0;
      while (1)
      {
        v42 = v145;
        if (v145 == v37)
        {
          break;
        }

        v43 = *(v38 - 1);
        v44 = *v38;
        v45 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        sub_100088AC8(v44 + v45, v36);
        v46 = *v30;
        if ((*v30)(v36, 1, v19) == 1)
        {
          v47 = v44;
          v48 = v43;
          Date.init()();
          if (v46(v36, 1, v19) != 1)
          {
            sub_10012C9CC(v36);
          }
        }

        else
        {
          (*v151)(v144, v36, v19);
          v49 = v44;
          v50 = v43;
        }

        v51 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v52 = v43 + v51;
        v53 = v139;
        sub_100088AC8(v52, v139);
        v54 = v46(v53, 1, v19);
        v153 = v43;
        if (v54 == 1)
        {
          v39 = v138;
          Date.init()();
          if (v46(v53, 1, v19) != 1)
          {
            sub_10012C9CC(v53);
          }
        }

        else
        {
          v39 = v138;
          (*v151)(v138, v53, v19);
        }

        v40 = v144;
        a3 = static Date.> infix(_:_:)();
        v41 = *v150;
        (*v150)(v39, v19);
        v41(v40, v19);

        ++v37;
        ++v38;
        v5 = v141;
        v31 = v140;
        v13 = v152;
        v36 = v142;
        v30 = v149;
        if ((v148 ^ a3))
        {
          v42 = v37 - 1;
          break;
        }
      }

      v32 = v133;
      v55 = v137;
      if (v148)
      {
        if (v42 < v133)
        {
          goto LABEL_139;
        }

        if (v133 < v42)
        {
          v56 = 8 * v42 - 8;
          v57 = v42;
          v58 = v133;
          do
          {
            if (v58 != --v57)
            {
              v60 = *v143;
              if (!*v143)
              {
                goto LABEL_143;
              }

              v59 = *(v60 + v55);
              *(v60 + v55) = *(v60 + v56);
              *(v60 + v56) = v59;
            }

            ++v58;
            v56 -= 8;
            v55 += 8;
          }

          while (v58 < v57);
        }
      }
    }

    v61 = v143[1];
    if (v42 >= v61)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v42, v32))
    {
      goto LABEL_136;
    }

    if (v42 - v32 >= v132)
    {
LABEL_37:
      a3 = v42;
      if (v42 < v32)
      {
        goto LABEL_135;
      }

      goto LABEL_38;
    }

    if (__OFADD__(v32, v132))
    {
      goto LABEL_137;
    }

    if (v32 + v132 >= v61)
    {
      a3 = v143[1];
    }

    else
    {
      a3 = v32 + v132;
    }

    if (a3 < v32)
    {
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v42 == a3)
    {
      goto LABEL_37;
    }

    v140 = v31;
    v141 = v5;
    v148 = *v143;
    v133 = v32;
    v108 = v32 - v42;
    v109 = v148 + 8 * v42 - 8;
    v135 = a3;
LABEL_90:
    v145 = v42;
    v110 = *(v148 + 8 * v42);
    v136 = v108;
    v137 = v109;
LABEL_91:
    v111 = *v109;
    v112 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    sub_100088AC8(v110 + v112, v13);
    v113 = *v30;
    if ((*v30)(v13, 1, v19) == 1)
    {
      v114 = v110;
      v115 = v111;
      Date.init()();
      if (v113(v13, 1, v19) != 1)
      {
        sub_10012C9CC(v13);
      }
    }

    else
    {
      (*v151)(v154, v13, v19);
      v116 = v110;
      v117 = v111;
    }

    v118 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
    swift_beginAccess();
    v153 = v111;
    v119 = v111 + v118;
    v120 = v147;
    sub_100088AC8(v119, v147);
    if (v113(v120, 1, v19) == 1)
    {
      v121 = v146;
      Date.init()();
      v122 = v19;
      if (v113(v120, 1, v19) != 1)
      {
        sub_10012C9CC(v120);
      }
    }

    else
    {
      v121 = v146;
      (*v151)(v146, v120, v19);
      v122 = v19;
    }

    v123 = v154;
    v124 = static Date.> infix(_:_:)();
    v125 = *v150;
    (*v150)(v121, v122);
    v125(v123, v122);

    if (v124)
    {
      break;
    }

    v13 = v152;
    v30 = v149;
    v19 = v122;
LABEL_89:
    v42 = v145 + 1;
    v109 = v137 + 8;
    v108 = v136 - 1;
    a3 = v135;
    if (v145 + 1 != v135)
    {
      goto LABEL_90;
    }

    v5 = v141;
    v31 = v140;
    v32 = v133;
    if (v135 < v133)
    {
      goto LABEL_135;
    }

LABEL_38:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v135 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_1003E4B80(0, *(v31 + 2) + 1, 1, v31);
    }

    v64 = *(v31 + 2);
    v63 = *(v31 + 3);
    a3 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v31 = sub_1003E4B80((v63 > 1), v64 + 1, 1, v31);
    }

    *(v31 + 2) = a3;
    v65 = &v31[16 * v64];
    v66 = v135;
    *(v65 + 4) = v32;
    *(v65 + 5) = v66;
    v153 = *v134;
    if (!v153)
    {
      goto LABEL_145;
    }

    if (v64)
    {
      while (2)
      {
        v67 = a3 - 1;
        if (a3 >= 4)
        {
          v72 = &v31[16 * a3 + 32];
          v73 = *(v72 - 64);
          v74 = *(v72 - 56);
          v78 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          if (v78)
          {
            goto LABEL_122;
          }

          v77 = *(v72 - 48);
          v76 = *(v72 - 40);
          v78 = __OFSUB__(v76, v77);
          v70 = v76 - v77;
          v71 = v78;
          if (v78)
          {
            goto LABEL_123;
          }

          v79 = &v31[16 * a3];
          v81 = *v79;
          v80 = *(v79 + 1);
          v78 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v78)
          {
            goto LABEL_125;
          }

          v78 = __OFADD__(v70, v82);
          v83 = v70 + v82;
          if (v78)
          {
            goto LABEL_128;
          }

          if (v83 >= v75)
          {
            v101 = &v31[16 * v67 + 32];
            v103 = *v101;
            v102 = *(v101 + 1);
            v78 = __OFSUB__(v102, v103);
            v104 = v102 - v103;
            if (v78)
            {
              goto LABEL_132;
            }

            if (v70 < v104)
            {
              v67 = a3 - 2;
            }
          }

          else
          {
LABEL_57:
            if (v71)
            {
              goto LABEL_124;
            }

            v84 = &v31[16 * a3];
            v86 = *v84;
            v85 = *(v84 + 1);
            v87 = __OFSUB__(v85, v86);
            v88 = v85 - v86;
            v89 = v87;
            if (v87)
            {
              goto LABEL_127;
            }

            v90 = &v31[16 * v67 + 32];
            v92 = *v90;
            v91 = *(v90 + 1);
            v78 = __OFSUB__(v91, v92);
            v93 = v91 - v92;
            if (v78)
            {
              goto LABEL_130;
            }

            if (__OFADD__(v88, v93))
            {
              goto LABEL_131;
            }

            if (v88 + v93 < v70)
            {
              goto LABEL_71;
            }

            if (v70 < v93)
            {
              v67 = a3 - 2;
            }
          }
        }

        else
        {
          if (a3 == 3)
          {
            v68 = *(v31 + 4);
            v69 = *(v31 + 5);
            v78 = __OFSUB__(v69, v68);
            v70 = v69 - v68;
            v71 = v78;
            goto LABEL_57;
          }

          v94 = &v31[16 * a3];
          v96 = *v94;
          v95 = *(v94 + 1);
          v78 = __OFSUB__(v95, v96);
          v88 = v95 - v96;
          v89 = v78;
LABEL_71:
          if (v89)
          {
            goto LABEL_126;
          }

          v97 = &v31[16 * v67];
          v99 = *(v97 + 4);
          v98 = *(v97 + 5);
          v78 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v78)
          {
            goto LABEL_129;
          }

          if (v100 < v88)
          {
            break;
          }
        }

        v105 = v67 - 1;
        if (v67 - 1 >= a3)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v143)
        {
          goto LABEL_142;
        }

        a3 = *&v31[16 * v105 + 32];
        v106 = *&v31[16 * v67 + 40];
        sub_1003C7ABC((*v143 + 8 * a3), (*v143 + 8 * *&v31[16 * v67 + 32]), (*v143 + 8 * v106), v153);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v106 < a3)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100204C44(v31);
        }

        if (v105 >= *(v31 + 2))
        {
          goto LABEL_121;
        }

        v107 = &v31[16 * v105];
        *(v107 + 4) = a3;
        *(v107 + 5) = v106;
        v157 = v31;
        sub_100204BB8(v67);
        v31 = v157;
        a3 = *(v157 + 2);
        if (a3 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v28 = v143[1];
    v29 = v135;
    if (v135 >= v28)
    {
      goto LABEL_107;
    }
  }

  v13 = v152;
  if (v148)
  {
    v126 = *v109;
    v110 = *(v109 + 8);
    *v109 = v110;
    *(v109 + 8) = v126;
    v109 -= 8;
    v127 = __CFADD__(v108++, 1);
    v30 = v149;
    v19 = v122;
    if (v127)
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_1003C7ABC(void **a1, void **a2, char *a3, void **a4)
{
  v8 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v8 - 8);
  v86 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v87 = (&v79 - v11);
  __chkstk_darwin(v12);
  v85 = (&v79 - v13);
  __chkstk_darwin(v14);
  v84 = (&v79 - v15);
  v16 = type metadata accessor for Date();
  __chkstk_darwin(v16);
  v83 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v79 - v19;
  __chkstk_darwin(v20);
  v82 = (&v79 - v21);
  __chkstk_darwin(v22);
  v89 = (&v79 - v24);
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v27 = a3 - a2;
  }

  v28 = v27 >> 3;
  if (v26 >= v27 >> 3)
  {
    if (a4 != a2 || &a2[v28] <= a4)
    {
      v52 = v23;
      memmove(a4, a2, 8 * v28);
      v23 = v52;
    }

    v92 = &a4[v28];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v53 = (v23 + 48);
      v81 = (v23 + 8);
      v82 = (v23 + 32);
      v84 = (v23 + 48);
      v91 = a4;
      v80 = a1;
      do
      {
        v88 = a2;
        v54 = a2 - 1;
        v55 = a3 - 8;
        v56 = v92;
        v57 = v87;
        v85 = v54;
        while (1)
        {
          v58 = *(v56 - 1);
          v89 = v56 - 1;
          v59 = *v54;
          v60 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
          swift_beginAccess();
          sub_100088AC8(v58 + v60, v57);
          v61 = *v53;
          if ((*v53)(v57, 1, v16) == 1)
          {
            v62 = v58;
            v63 = v59;
            Date.init()();
            if (v61(v57, 1, v16) != 1)
            {
              sub_10012C9CC(v57);
            }
          }

          else
          {
            (*v82)(v90, v57, v16);
            v64 = v58;
            v65 = v59;
          }

          v66 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
          swift_beginAccess();
          v67 = v59 + v66;
          v68 = v86;
          sub_100088AC8(v67, v86);
          v69 = v55;
          if (v61(v68, 1, v16) == 1)
          {
            v70 = v83;
            Date.init()();
            if (v61(v68, 1, v16) != 1)
            {
              sub_10012C9CC(v68);
            }
          }

          else
          {
            v70 = v83;
            (*v82)(v83, v68, v16);
          }

          v71 = v90;
          v72 = static Date.> infix(_:_:)();
          v73 = v70;
          v74 = v72;
          v75 = *v81;
          (*v81)(v73, v16);
          v75(v71, v16);

          a3 = v69;
          v76 = v69 + 1;
          if (v74)
          {
            break;
          }

          v57 = v87;
          v56 = v89;
          if (v76 != v92)
          {
            *v69 = *v89;
          }

          v55 = (v69 - 1);
          v92 = v56;
          v53 = v84;
          v54 = v85;
          if (v56 <= v91)
          {
            v92 = v56;
            a4 = v91;
            a2 = v88;
            goto LABEL_53;
          }
        }

        v77 = v85;
        if (v76 != v88)
        {
          *v69 = *v85;
        }

        a4 = v91;
        v53 = v84;
        if (v92 <= v91)
        {
          break;
        }

        a2 = v77;
      }

      while (v77 > v80);
      a2 = v77;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v26] <= a4)
    {
      v29 = v23;
      memmove(a4, a1, 8 * v26);
      v23 = v29;
    }

    v92 = &a4[v26];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v30 = a2;
      v31 = (v23 + 48);
      v86 = (v23 + 8);
      v87 = (v23 + 32);
      v90 = (v23 + 48);
      v83 = a3;
      while (1)
      {
        v88 = v30;
        v32 = *v30;
        v33 = *a4;
        v34 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v35 = v84;
        sub_100088AC8(v32 + v34, v84);
        v36 = *v31;
        v37 = (*v31)(v35, 1, v16);
        v91 = a4;
        if (v37 == 1)
        {
          v38 = v32;
          v39 = v33;
          Date.init()();
          if (v36(v35, 1, v16) != 1)
          {
            sub_10012C9CC(v35);
          }
        }

        else
        {
          (*v87)(v89, v35, v16);
          v40 = v32;
          v41 = v33;
        }

        v42 = OBJC_IVAR____TtCC7Journal14DataAggregator10EntryPlace_createdDate;
        swift_beginAccess();
        v43 = v33 + v42;
        v44 = v85;
        sub_100088AC8(v43, v85);
        v45 = v36(v44, 1, v16);
        v46 = v82;
        if (v45 == 1)
        {
          Date.init()();
          if (v36(v44, 1, v16) != 1)
          {
            sub_10012C9CC(v44);
          }
        }

        else
        {
          (*v87)(v82, v44, v16);
        }

        v47 = v89;
        v48 = static Date.> infix(_:_:)();
        v49 = *v86;
        (*v86)(v46, v16);
        v49(v47, v16);

        if ((v48 & 1) == 0)
        {
          break;
        }

        v50 = v88;
        v30 = v88 + 1;
        a4 = v91;
        v51 = v83;
        if (a1 != v88)
        {
          goto LABEL_24;
        }

LABEL_25:
        ++a1;
        v31 = v90;
        if (a4 >= v92 || v30 >= v51)
        {
          goto LABEL_27;
        }
      }

      v50 = v91;
      a4 = v91 + 1;
      v30 = v88;
      v51 = v83;
      if (a1 == v91)
      {
        goto LABEL_25;
      }

LABEL_24:
      *a1 = *v50;
      goto LABEL_25;
    }

LABEL_27:
    a2 = a1;
  }

LABEL_53:
  if (a2 != a4 || a2 >= (a4 + ((v92 - a4 + (v92 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v92 - a4));
  }

  return 1;
}

void sub_1003C8294()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    sub_10026620C(v1, &off_100A62798);
    swift_unknownObjectRelease();
  }

  v2 = OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapNeedsUpdate;
  if (*(v0 + OBJC_IVAR____TtC7Journal19SidebarEntryMapView_mapNeedsUpdate) == 1)
  {
    sub_1003C6164();
    *(v0 + v2) = 0;
  }
}

uint64_t sub_1003C832C(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v3 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    sub_10026620C(v3, &off_100A62798);
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = type metadata accessor for EntryMapViewRepresentable.Coordinator(0);
    sub_100266264(v4, &off_100A62798);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1003C83EC()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1003C84B4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  swift_beginAccess();
  return sub_1000082B4(v5 + v3, a1, &qword_100AD57F0);
}

uint64_t sub_1003C858C(uint64_t a1)
{
  v3 = sub_1000F24EC(&qword_100AD57F0);
  __chkstk_darwin(v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  swift_beginAccess();
  sub_1000082B4(v1 + v6, v5, &qword_100AD57F0);
  v7 = sub_1003D0640(v5, a1);
  sub_100004F84(v5, &qword_100AD57F0);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    sub_1000082B4(a1, v5, &qword_100AD57F0);
    swift_beginAccess();
    sub_1003D1308(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_100004F84(a1, &qword_100AD57F0);
}

uint64_t sub_1003C8794(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType;
  swift_beginAccess();
  sub_1003D1394(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1003C8800@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  swift_beginAccess();
  v4 = type metadata accessor for Date();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_1003C88F8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1003D0D50(&qword_100AD5BF0, &type metadata accessor for Date);
  v14[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v14[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v12 = v14[0];
    v14[-2] = v2;
    v14[-1] = v12;
    v14[1] = v2;
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v14[0], v4);
}

uint64_t sub_1003C8B98(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1003C8C34()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported);
}

uint64_t sub_1003C8CDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported);
  return result;
}

uint64_t sub_1003C8D8C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1003C8EA4()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1003C8F64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1003C902C()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1003C90F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1003C9188()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  swift_unknownObjectRetain();
  return UIBarButtonItem.init(title:image:target:action:menu:)();
}

uint64_t sub_1003C9348()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  swift_unknownObjectRetain();
  return UIBarButtonItem.init(title:image:target:action:menu:)();
}

objc_class *sub_1003C94E8()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoRedoItem;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoRedoItem);
  if (v4)
  {
    v5 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoRedoItem);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD43B0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v6 = String.init(localized:table:bundle:locale:comment:)();
    v8 = v7;
    v9 = String._bridgeToObjectiveC()();
    v10 = [objc_opt_self() systemImageNamed:v9];

    sub_1000065A8(0, &unk_100AD4D00);
    sub_1000F24EC(&unk_100AD4780);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100941D50;
    v12 = objc_opt_self();
    v13 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1003D1284;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100657B94;
    aBlock[3] = &unk_100A6B130;
    v14 = _Block_copy(aBlock);

    v15 = [v12 elementWithUncachedProvider:v14];
    _Block_release(v14);
    *(v11 + 32) = v15;
    v23 = v11;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v27.value.super.isa = 0;
    v27.is_nil = 0;
    v17 = v0;
    v28.value.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v27, 0, 0xFFFFFFFFFFFFFFFFLL, v23, v24).super.super.isa;
    v18.value._countAndFlagsBits = v6;
    v18.value._object = v8;
    v26.value.super.isa = v10;
    v26.is_nil = 0;
    v19.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v18, v26, v28, v29).super.super.isa;
    v20 = *(v0 + v3);
    *(v17 + v3) = v19;
    v5 = v19.super.super.isa;

    v4 = 0;
  }

  v21 = v4;
  return v5;
}

id sub_1003C9808()
{
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___dateButton;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___dateButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___dateButton);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CanvasDateTitleBarButton()) init];
    sub_1000065A8(0, &qword_100AD4420);
    v5 = swift_allocObject();
    swift_weakInit();
    v14 = v5;
    v6 = v0;
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v4 addAction:v7 forControlEvents:{0x2000, 0, 0, 0, sub_1003D1274, v14}];

    v8 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1003D127C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016B4D8;
    aBlock[3] = &unk_100A6B108;
    v9 = _Block_copy(aBlock);
    v10 = v4;

    [v10 setConfigurationUpdateHandler:v9];
    _Block_release(v9);

    v11 = *(v6 + v1);
    *(v6 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

double *sub_1003C99F4()
{
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___pickerItemGroups;
  if (*(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___pickerItemGroups))
  {
    v2 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___pickerItemGroups);
  }

  else
  {
    v2 = sub_1003C9A58();
    *(v0 + v1) = v2;
  }

  return v2;
}

double *sub_1003C9A58()
{
  v1 = type metadata accessor for CanvasContentInputType();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100ACFA98 != -1)
  {
    swift_once();
  }

  v22 = _swiftEmptyArrayStorage;
  v5 = *(qword_100B2F538 + 16);
  if (v5)
  {
    v6 = qword_100B2F538 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v7 = *(v2 + 72);
    v8 = _swiftEmptyArrayStorage;
    do
    {
      sub_1003D10EC(v6, v4, type metadata accessor for CanvasContentInputType);
      v9 = sub_1003CCB0C(v4, 0);
      sub_1003D0D9C(v4, type metadata accessor for CanvasContentInputType);
      if (v9)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v22;
      }

      v6 += v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  swift_getKeyPath();
  v22 = v0;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v11 = [Strong traitCollection], swift_unknownObjectRelease(), !v11))
  {
    v11 = [objc_opt_self() currentTraitCollection];
  }

  v12 = [v11 userInterfaceIdiom];

  if (v12 == 5)
  {
    sub_1000F24EC(&unk_100AD4780);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100941D50;
    sub_1000065A8(0, &unk_100AEBED0);
    v14 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    result = v13;
    *(v13 + 32) = v14;
    return result;
  }

  if (!(v8 >> 62))
  {
    v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_18;
    }

LABEL_26:

    return _swiftEmptyArrayStorage;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (!v16)
  {
    goto LABEL_26;
  }

LABEL_18:
  v22 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v8 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = [v18 creatingFixedGroup];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v16 != v17);

    return v22;
  }

  return result;
}

uint64_t sub_1003C9E58()
{
  v1 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___textFormattingItem;
  v5 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___textFormattingItem);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___textFormattingItem);
LABEL_5:
    v10 = v5;
    return v6;
  }

  swift_storeEnumTagMultiPayload();
  v7 = sub_1003CCB0C(v3, 0);
  result = sub_1003D0D9C(v3, type metadata accessor for CanvasContentInputType);
  if (v7)
  {
    v9 = *(v0 + v4);
    *(v0 + v4) = v7;
    v6 = v7;

    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

objc_class *sub_1003C9F4C()
{
  v1 = type metadata accessor for JournalFeatureFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___drawingItem;
  v8 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___drawingItem);
  if (v8)
  {
    v9 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___drawingItem);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD4420);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:v10];

    swift_allocObject();
    swift_weakInit();
    v12 = v0;
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1000065A8(0, &qword_100AD43B0);
    v14 = v13;
    v20.value.super.isa = 0;
    v20.is_nil = v13;
    v21.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v20, v21, v22).super.super.isa;
    [(objc_class *)isa setMenuRepresentation:v14];
    (*(v2 + 104))(v4, enum case for JournalFeatureFlags.richCanvas(_:), v1);
    LOBYTE(v13) = JournalFeatureFlags.isEnabled.getter();
    (*(v2 + 8))(v4, v1);
    [(objc_class *)isa setHidden:(v13 & 1) == 0];

    v16 = *(v12 + v7);
    *(v12 + v7) = isa;
    v9 = isa;

    v8 = 0;
  }

  v17 = v8;
  return v9;
}

objc_class *sub_1003CA2BC()
{
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___editItem;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___editItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___editItem);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD43B0);
    sub_1000065A8(0, &qword_100AD4420);
    swift_allocObject();
    swift_weakInit();
    v4 = v0;
    v9.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v9.is_nil = 0;
    v5.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemEdit, v9, v10).super.super.isa;
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5.super.super.isa;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

objc_class *sub_1003CA3E0()
{
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___doneItem;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___doneItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___doneItem);
  }

  else
  {
    sub_1000065A8(0, &qword_100AD43B0);
    sub_1000065A8(0, &qword_100AD4420);
    v4 = swift_allocObject();
    swift_weakInit();
    v10 = v4;
    v5 = v0;
    v11.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v11.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v11, v12).super.super.isa;
    [(objc_class *)isa setHidden:1, 0, 0, 0, sub_1003D122C, v10];
    v7 = *(v0 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_1003CA518()
{
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___inputAccessoryView;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___inputAccessoryView);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = sub_1003CA584();
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    sub_10015DB5C(v4);
  }

  sub_10015DB6C(v2);
  return v3;
}

char *sub_1003CA584()
{
  if (_UISolariumEnabled())
  {
    return 0;
  }

  type metadata accessor for CanvasInputAccessoryView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *&v1[OBJC_IVAR____TtC7Journal24CanvasInputAccessoryView_toolbar];
  sub_1003CAA28(2u);
  sub_1000065A8(0, &qword_100AD43B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setItems:isa];

  return v1;
}

id sub_1003CA66C(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2();
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

uint64_t sub_1003CA6CC()
{
  v0 = type metadata accessor for CanvasContentInputType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  sub_1000065A8(0, &qword_100AD43B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v6 = String.init(localized:table:bundle:locale:comment:)();
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9];

  v11.value._countAndFlagsBits = v6;
  v11.value._object = v8;
  v20.value.super.isa = v10;
  v20.is_nil = 0;
  v21.value.super.super.isa = 0;
  v12.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, v20, v21, v22).super.super.isa;
  if (qword_100ACFAA0 != -1)
  {
    swift_once();
  }

  v19 = _swiftEmptyArrayStorage;
  v13 = *(qword_100B2F540 + 16);
  if (v13)
  {
    v14 = qword_100B2F540 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v15 = *(v1 + 72);
    do
    {
      sub_1003D10EC(v14, v3, type metadata accessor for CanvasContentInputType);
      v16 = sub_1003CCB0C(v3, 3u);
      sub_1003D0D9C(v3, type metadata accessor for CanvasContentInputType);
      if (v16)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v14 += v15;
      --v13;
    }

    while (v13);
  }

  sub_1000065A8(0, &unk_100AEBED0);
  v17 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

  return v17;
}

unint64_t sub_1003CAA28(unsigned __int8 a1)
{
  v3 = a1 - 1;
  v4 = [objc_opt_self() flexibleSpaceItem];
  [v4 setHidesSharedBackground:0];
  if (qword_100ACFA90 != -1)
  {
    swift_once();
  }

  v5 = v3;
  v6 = qword_100B2F530;

  v7 = v4;
  v8 = sub_1003D0914(v6, v1, a1, v5 < 2, v7);

  if (v5 > 1)
  {
    goto LABEL_8;
  }

  if (v8 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

LABEL_8:

    return v8;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1000F24EC(&unk_100AD4780);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100941D50;
  *(v9 + 32) = v7;
  v11 = v9;
  sub_1006ADC88(v8);
  return v11;
}

void *sub_1003CABA0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v6 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v9 = v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v65 - v15;
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator___observationRegistrar;
  v79 = v2;
  v18 = sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  v74 = v17;
  v73 = v18;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v65[1] = v9;
    *&v66 = v6;
    v70 = a1;
    v75 = [result isEditing];
    v72 = [v20 navigationItem];
    v71 = [v20 traitCollection];
    v21 = [v20 undoManager];
    v69 = v20;
    v68 = v21;
    if (v21)
    {
      v22 = v21;
      v23 = [v21 canUndo];
      v24 = [v22 canRedo];
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    swift_getKeyPath();
    v79 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
    swift_beginAccess();
    (*(v11 + 16))(v16, v2 + v25, v10);
    static Date.now.getter();
    sub_10048FF40(2, 0, v13);
    v26 = *(v11 + 8);
    v26(v13, v10);
    v26(v16, v10);
    v27 = String._bridgeToObjectiveC()();

    v28 = v72;
    [v72 setBackButtonTitle:v27];

    v29 = v23 | v24;
    v78 = _swiftEmptyArrayStorage;
    v30 = _swiftEmptyArrayStorage;
    if ((v75 & (v23 | v24)) == 1)
    {
      v31 = v71;
      if ([v71 horizontalSizeClass] == 2 && objc_msgSend(v31, "userInterfaceIdiom") != 5)
      {
        v32 = sub_1003C9168();
        [v32 setEnabled:v23];

        v33 = sub_1003C9328();
        [v33 setEnabled:v24];

        sub_1000F24EC(&unk_100AD4780);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100941D60;
        v35 = *(v2 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoItem);
        *(inited + 32) = v35;
        v36 = *(v2 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___redoItem);
        *(inited + 40) = v36;
        v37 = v35;
        v38 = v36;
        sub_1006ADC88(inited);
        v30 = v78;
      }

      else
      {
        v30 = _swiftEmptyArrayStorage;
      }
    }

    sub_1000065A8(0, &qword_100AD43B0);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v40 = v70;
    [v28 setLeftBarButtonItems:isa animated:v70 & 1];

    v41 = sub_1003C9808();
    v42 = v75;
    [v41 setEnabled:v75];

    v43 = *(v2 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___dateButton);
    v67 = v30;
    v44 = v43;
    if (v42)
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v45 = String._bridgeToObjectiveC()();
    }

    else
    {
      v45 = 0;
    }

    [v44 setAccessibilityHint:v45];

    if (v75)
    {
      v46 = v71;
      if ([v71 horizontalSizeClass] == 2)
      {
        sub_1003C99F4();
      }

      sub_1000065A8(0, &unk_100AEBED0);
      v47 = Array._bridgeToObjectiveC()().super.isa;

      [v28 setCenterItemGroups:v47];

      v77 = _swiftEmptyArrayStorage;
      sub_1000F24EC(&unk_100AD4780);
      v48 = swift_initStackObject();
      v66 = xmmword_100941D60;
      *(v48 + 16) = xmmword_100941D60;
      *(v48 + 32) = sub_1003C9F4C();
      *(v48 + 40) = sub_1003C9E58();
      sub_1006ADC88(v48);
      if ((v29 & 1) != 0 && [v46 horizontalSizeClass] == 1)
      {
        v49 = sub_1003C94E8();
        v50 = v49;
        if (v23)
        {
          v51 = "undo:";
        }

        else
        {
          v51 = 0;
        }

        [(objc_class *)v49 setAction:v51];

        v52 = swift_initStackObject();
        *(v52 + 16) = v66;
        *(v52 + 32) = [objc_opt_self() fixedSpaceItem];
        v53 = *(v2 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___undoRedoItem);
        *(v52 + 40) = v53;
        v54 = v53;
        sub_1006ADC88(v52);
      }
    }

    else
    {
      sub_1000065A8(0, &unk_100AEBED0);
      v55 = Array._bridgeToObjectiveC()().super.isa;

      [v28 setCenterItemGroups:v55];

      v77 = _swiftEmptyArrayStorage;
      v46 = v71;
    }

    v56 = Array._bridgeToObjectiveC()().super.isa;
    [v28 setRightBarButtonItems:v56 animated:v40 & 1];

    v57 = sub_1003CA2BC();
    swift_getKeyPath();
    v76 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v58 = v75;
    [(objc_class *)v57 setHidden:v75 & 1 | ((*(v2 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__isEditingSupported) & 1) == 0)];

    v59 = sub_1003CA3E0();
    [(objc_class *)v59 setHidden:v58 ^ 1];

    if ((v58 ^ 1))
    {
      sub_1003CB648(0);
      sub_1003CB88C(0);
    }

    else
    {
      if ([v46 userInterfaceIdiom])
      {
        v60 = 0;
      }

      else
      {
        v60 = _UISolariumEnabled() ^ 1;
      }

      sub_1003CB648(v60);
      sub_1003CB88C([v46 horizontalSizeClass] == 1);
      if ([v46 horizontalSizeClass] != 2 && ((_UISolariumEnabled() & 1) != 0 || !sub_1003CBAEC()) && (objc_msgSend(v46, "userInterfaceIdiom") != 1 || !sub_1003CBAEC()))
      {
        if ([v46 userInterfaceIdiom] || (swift_getKeyPath(), v76 = v2, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !swift_unknownObjectWeakLoadStrong()))
        {

          v61 = 0;
        }

        else
        {
          v63 = sub_100658B00();
          v64 = sub_100544E50();
          v61 = [v64 isVisible];

          swift_unknownObjectRelease();
        }

        goto LABEL_30;
      }
    }

    v61 = 1;
LABEL_30:
    v62 = [v69 navigationController];
    [v62 setToolbarHidden:v61 animated:v40 & 1];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003CB648(char a1)
{
  swift_getKeyPath();
  v14 = v1;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000F24EC(&unk_100AD4780);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941D60;
    *(v4 + 32) = sub_100658B00();
    *(v4 + 40) = sub_100658670();
    result = swift_unknownObjectRelease();
    if (!(v4 >> 62))
    {
      goto LABEL_3;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v5 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  v4 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
  }

LABEL_4:
  if (v5 >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = (v4 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v4 + 8 * v6 + 32);
      v8 = v7;
      v9 = [v7 inputAccessoryView];
      v10 = v9;
      if (v9)
      {
      }

      if ([v8 isFirstResponder])
      {
        break;
      }

      if (a1)
      {
        v11 = 0;
LABEL_18:
        v12 = sub_1003CA518();
LABEL_19:
        [v8 setInputAccessoryView:v12];

        if (v11)
        {
          [v8 reloadInputViews];
        }

        goto LABEL_7;
      }

      [v8 setInputAccessoryView:0];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
      }
    }

    v11 = (v10 != 0) ^ a1;
    if (a1)
    {
      goto LABEL_18;
    }

    v12 = 0;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003CB88C(char a1)
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000F24EC(&unk_100AD4780);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100941D60;
    *(v3 + 32) = sub_100658B00();
    *(v3 + 40) = sub_100658670();
    result = swift_unknownObjectRelease();
    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v4 >= 1)
  {
    v5 = 0;
    v11 = xmmword_100941D50;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = [v7 inputAssistantItem];
      if (a1)
      {
        sub_1000F24EC(&unk_100AD4780);
        v10 = swift_allocObject();
        *(v10 + 16) = v11;
        *(v10 + 32) = sub_1003CA64C();
      }

      ++v5;
      sub_1000065A8(0, &unk_100AEBED0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v9 setTrailingBarButtonGroups:isa];
    }

    while (v4 != v5);
  }

  __break(1u);
  return result;
}

BOOL sub_1003CBAEC()
{
  swift_getKeyPath();
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000F24EC(&unk_100AD4780);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_100941D60;
    *(v0 + 32) = sub_100658B00();
    *(v0 + 40) = sub_100658670();
    swift_unknownObjectRelease();
  }

  else
  {
    v0 = _swiftEmptyArrayStorage;
  }

  if (v0 >> 62)
  {
LABEL_18:
    v1 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = 0;
  do
  {
    v3 = v2;
    if (v1 == v2)
    {
      break;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v4 = *(v0 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v6 = [v4 isEditing];

    v2 = v3 + 1;
  }

  while (!v6);

  return v1 != v3;
}

id sub_1003CBCAC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v24 = v1;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v8 = [Strong traitCollection], swift_unknownObjectRelease(), !v8))
  {
    v8 = [objc_opt_self() currentTraitCollection];
  }

  v9 = [v8 horizontalSizeClass];

  if (v9 == 2)
  {
    v10 = 0;
  }

  else if (sub_1003CBAEC() && (v11 = sub_1003CA518()) != 0)
  {

    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  sub_1003D10EC(a1, v6, type metadata accessor for CanvasContentInputType);
  v6[*(v4 + 20)] = v10;
  swift_getKeyPath();
  v24 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems;
  swift_beginAccess();
  v13 = *(v2 + v12);
  if (!*(v13 + 16))
  {
    goto LABEL_14;
  }

  v14 = sub_100362658(v6);
  if ((v15 & 1) == 0)
  {

LABEL_14:
    sub_1003D0D9C(v6, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
    v21 = 0;
    v18 = 0;
    goto LABEL_15;
  }

  v16 = *(v13 + 56) + 16 * v14;
  v17 = *(v16 + 8);
  v18 = *v16;
  v19 = v17;
  sub_1003D0D9C(v6, type metadata accessor for CanvasBarItemCoordinator.ItemKey);

  v20 = v18;
  v21 = v19;
LABEL_15:
  sub_10010CA14(v18, v21);
  return v18;
}

void sub_1003CBF6C(int a1)
{
  v60 = type metadata accessor for ColorResource();
  v3 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SymbolEffectOptions();
  v5 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for AutomaticSymbolEffect();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v75);
  v74 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v57 - v11;
  v12 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  v71 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000F24EC(&qword_100AE2408);
  __chkstk_darwin(v14 - 8);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v57 - v18;
  v67 = a1;
  v19 = String._bridgeToObjectiveC()();
  v20 = [objc_opt_self() systemImageNamed:v19];

  v68 = v20;
  if (v20)
  {
    swift_getKeyPath();
    v78 = v1;
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    v21 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems;
    swift_beginAccess();
    v23 = *(v21 + v22);
    v24 = v23 + 64;
    v25 = 1 << *(v23 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v23 + 64);
    v28 = (v25 + 63) >> 6;
    v61 = (v7 + 8);
    v62 = (v5 + 8);
    v58 = (v3 + 16);
    v72 = v23;

    v29 = 0;
    v69 = v16;
    v30 = v76;
    while (v27)
    {
      v33 = v29;
LABEL_18:
      v36 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v37 = v36 | (v33 << 6);
      v38 = v72;
      v39 = v70;
      sub_1003D10EC(*(v72 + 48) + *(v71 + 72) * v37, v70, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
      v40 = *(v38 + 56);
      v41 = sub_1000F24EC(&qword_100AE2410);
      v42 = *(v41 + 48);
      v77 = *(v40 + 16 * v37);
      v43 = v39;
      v16 = v69;
      sub_1003D1154(v43, v69, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
      *&v16[v42] = v77;
      (*(*(v41 - 8) + 56))(v16, 0, 1, v41);
      v44 = v77;
      v45 = *(&v77 + 1);
      v30 = v76;
LABEL_19:
      sub_1003D11BC(v16, v30);
      v46 = sub_1000F24EC(&qword_100AE2410);
      if ((*(*(v46 - 8) + 48))(v30, 1, v46) == 1)
      {

        return;
      }

      v47 = (v30 + *(v46 + 48));
      v32 = *v47;

      v48 = v73;
      sub_1003D10EC(v30, v73, type metadata accessor for CanvasContentInputType);
      sub_1003D0D9C(v30, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
      v49 = v74;
      swift_storeEnumTagMultiPayload();
      v50 = sub_1001ED0B4(v48, v49);
      sub_1003D0D9C(v49, type metadata accessor for CanvasContentInputType);
      sub_1003D0D9C(v48, type metadata accessor for CanvasContentInputType);
      if (v50)
      {
        v51 = v63;
        AutomaticSymbolEffect.init()();
        v52 = v65;
        static SymbolEffectOptions.default.getter();
        sub_1003D0D50(&qword_100AE2418, &type metadata accessor for AutomaticSymbolEffect);
        v53 = v64;
        UIBarButtonItem.setSymbolImage<A>(_:contentTransition:options:)();
        (*v62)(v52, v66);
        (*v61)(v51, v53);
        if (v67)
        {
          sub_1000065A8(0, &qword_100AD4C70);
          if (qword_100AD0BE0 != -1)
          {
            swift_once();
          }

          v54 = v60;
          v55 = sub_10000617C(v60, qword_100B312B0);
          (*v58)(v59, v55, v54);
          v31 = UIColor.init(resource:)();
        }

        else
        {
          v31 = 0;
        }

        [v32 setTintColor:v31];

        v32 = v31;
      }

      v30 = v76;
    }

    if (v28 <= v29 + 1)
    {
      v34 = v29 + 1;
    }

    else
    {
      v34 = v28;
    }

    v35 = v34 - 1;
    while (1)
    {
      v33 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v33 >= v28)
      {
        v56 = sub_1000F24EC(&qword_100AE2410);
        (*(*(v56 - 8) + 56))(v16, 1, 1, v56);
        v27 = 0;
        v29 = v35;
        goto LABEL_19;
      }

      v27 = *(v24 + 8 * v33);
      ++v29;
      if (v27)
      {
        v29 = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1003CC7EC()
{
  sub_100038534(v0 + 16);
  sub_100004F84(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__selectedType, &qword_100AD57F0);
  v1 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_10015DB5C(*(v0 + OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator____lazy_storage___inputAccessoryView));

  v3 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1003CC974()
{
  sub_1003CC7EC();

  return swift_deallocClassInstance();
}

Swift::Int sub_1003CC9D4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001EA278();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

Swift::Int sub_1003CCA68(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1001EA278();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

id sub_1003CCB0C(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  v181 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v5 = *(v181 - 8);
  __chkstk_darwin(v181);
  v180 = &v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v179 = &v153 - v8;
  v178 = type metadata accessor for GenerativeModelsAvailability.LanguageOption();
  v164 = *(v178 - 8);
  __chkstk_darwin(v178);
  v177 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v163 = *(v176 - 8);
  __chkstk_darwin(v176);
  v175 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for GenerativeModelsAvailability();
  v162 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for UIButton.Configuration();
  v167 = *(v168 - 1);
  __chkstk_darwin(v168);
  v160 = &v153 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v166 = &v153 - v14;
  v184 = type metadata accessor for JournalFeatureFlags();
  v182 = *(v184 - 8);
  __chkstk_darwin(v184);
  v183 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for CanvasContentInputType();
  v192 = *(v187 - 8);
  __chkstk_darwin(v187);
  v188 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v153 - v18;
  __chkstk_darwin(v20);
  v172 = &v153 - v21;
  __chkstk_darwin(v22);
  v186 = &v153 - v23;
  __chkstk_darwin(v24);
  v26 = &v153 - v25;
  __chkstk_darwin(v27);
  v161 = &v153 - v28;
  __chkstk_darwin(v29);
  v31 = &v153 - v30;
  v193 = v32;
  __chkstk_darwin(v33);
  v194 = &v153 - v34;
  v35 = type metadata accessor for CanvasBarItemCoordinator.ItemKey(0);
  v36 = v35 - 8;
  __chkstk_darwin(v35);
  v38 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003D10EC(a1, v38, type metadata accessor for CanvasContentInputType);
  v38[*(v36 + 28)] = a2;
  LODWORD(v185) = v4;
  if ((v4 - 1) <= 1)
  {
    swift_getKeyPath();
    aBlock[0] = v195;
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v40 = [Strong traitCollection], swift_unknownObjectRelease(), !v40))
    {
      v40 = [objc_opt_self() currentTraitCollection];
    }

    v41 = [v40 horizontalSizeClass];

    if (v41 == 1)
    {
      v42 = v194;
      *v194 = 0;
      swift_storeEnumTagMultiPayload();
      v43 = sub_1001ED0B4(a1, v42);
      sub_1003D0D9C(v42, type metadata accessor for CanvasContentInputType);
      if (v43 & 1) != 0 || (v44 = v194, swift_storeEnumTagMultiPayload(), v45 = sub_1001ED0B4(a1, v44), sub_1003D0D9C(v44, type metadata accessor for CanvasContentInputType), (v45))
      {
        v46 = v5;
        v47 = v182;
        v48 = v183;
        v49 = v184;
        (*(v182 + 104))(v183, enum case for JournalFeatureFlags.followupPrompts(_:), v184);
        v50 = JournalFeatureFlags.isEnabled.getter();
        v51 = v47;
        v5 = v46;
        (*(v51 + 8))(v48, v49);
        if (v50 & 1) != 0 && (sub_1001EC67C())
        {
          goto LABEL_49;
        }
      }
    }
  }

  sub_1003D10EC(a1, v31, type metadata accessor for CanvasContentInputType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 0xB)
  {
    goto LABEL_50;
  }

  if (((1 << EnumCaseMultiPayload) & 0x3BC) != 0)
  {
    goto LABEL_12;
  }

  if (((1 << EnumCaseMultiPayload) & 0xC00) != 0)
  {
    v74 = v5;
    v75 = v182;
    v76 = v183;
    v77 = v184;
    (*(v182 + 104))(v183, enum case for JournalFeatureFlags.followupPrompts(_:), v184);
    v78 = JournalFeatureFlags.isEnabled.getter();
    v79 = v75;
    v5 = v74;
    (*(v79 + 8))(v76, v77);
    if ((v78 & 1) == 0 || (sub_1001EC67C() & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_50:
    if (EnumCaseMultiPayload)
    {
      sub_100004F84(v31, &qword_100AD1420);
    }

    goto LABEL_12;
  }

  if (([objc_opt_self() isSourceTypeAvailable:1] & 1) == 0)
  {
LABEL_49:
    sub_1003D0D9C(v38, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
    return 0;
  }

LABEL_12:
  swift_getKeyPath();
  v53 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator___observationRegistrar;
  v54 = v195;
  aBlock[0] = v195;
  v55 = sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  v171 = v53;
  v170 = v55;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v56 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__trackedBarButtonItems;
  swift_beginAccess();
  v57 = *(v54 + v56);
  if (!*(v57 + 16))
  {
LABEL_16:
    v169 = v38;
    v157 = v5;
    v159 = v56;
    v64 = sub_1000065A8(0, &qword_100AD4420);
    v65 = swift_allocObject();
    swift_weakInit();
    v66 = v194;
    sub_1003D10EC(a1, v194, type metadata accessor for CanvasContentInputType);
    v67 = *(v192 + 80);
    v156 = ~v67;
    v68 = (v67 + 24) & ~v67;
    v191 = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = v65;
    v189 = v68;
    sub_1003D1154(v66, v69 + v68, type metadata accessor for CanvasContentInputType);
    v190 = v64;
    v158 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v70 = [objc_allocWithZone(UIBarButtonItem) init];
    v165 = v70;
    if (v185 != 2 || (_UISolariumEnabled() & 1) != 0)
    {
      v71 = v70;
      sub_1001EC9B8();
      if (v72)
      {
        v73 = String._bridgeToObjectiveC()();
      }

      else
      {
        v73 = 0;
      }

      v80 = v157;
      v81 = v169;
      v82 = v172;
      [v71 setTitle:v73];

      v83 = sub_1001ECD40();
      [v71 setImage:v83];

      sub_1003D10EC(a1, v82, type metadata accessor for CanvasContentInputType);
      v84 = swift_getEnumCaseMultiPayload();
      sub_1003D0D9C(v82, type metadata accessor for CanvasContentInputType);
      if (v84 != 11)
      {
        v106 = v158;
        [v71 setTarget:v158];
        [v71 setAction:"journal_performWithSender:"];
        goto LABEL_78;
      }

      v157 = v71;
      if (qword_100ACFAA8 != -1)
      {
        goto LABEL_82;
      }

LABEL_27:
      v85 = qword_100B2F548;
      v86 = *(qword_100B2F548 + 16);
      v87 = _swiftEmptyArrayStorage;
      if (v86)
      {
        aBlock[0] = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v88 = 0;
        v185 = (v85 + ((v191 + 32) & v156));
        LODWORD(v172) = enum case for JournalFeatureFlags.followupPrompts(_:);
        v168 = (v182 + 104);
        v182 += 8;
        LODWORD(v167) = enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:);
        v166 = (v164 + 13);
        v164 = v163 + 1;
        v163 = v162 + 1;
        LODWORD(v162) = enum case for GenerativeModelsAvailability.Availability.available(_:);
        v161 = (v80 + 104);
        v160 = (v80 + 8);
        v186 = v85;
        v89 = v189;
        while (1)
        {
          if (v88 >= *(v85 + 16))
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            swift_once();
            goto LABEL_27;
          }

          sub_1003D10EC(&v185[*(v192 + 72) * v88], v19, type metadata accessor for CanvasContentInputType);
          sub_1003D10EC(v19, v188, type metadata accessor for CanvasContentInputType);
          v96 = swift_getEnumCaseMultiPayload();
          if (v96 > 0xB)
          {
            break;
          }

          if (((1 << v96) & 0x3BC) == 0)
          {
            if (((1 << v96) & 0xC00) != 0)
            {
              v97 = v183;
              v98 = v184;
              (*v168)(v183, v172, v184);
              v99 = JournalFeatureFlags.isEnabled.getter();
              (*v182)(v97, v98);
              if (v99)
              {
                (*v166)(v177, v167, v178);
                v100 = v175;
                GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
                v101 = v173;
                static GenerativeModelsAvailability.current(parameters:)();
                (*v164)(v100, v176);
                v102 = v179;
                GenerativeModelsAvailability.availability.getter();
                (*v163)(v101, v174);
                v103 = v180;
                v104 = v181;
                (*v161)(v180, v162, v181);
                static GenerativeModelsAvailability.Availability.== infix(_:_:)();
                v105 = *v160;
                (*v160)(v103, v104);
                v105(v102, v104);
              }
            }

            else
            {
              if (v96 != 6)
              {
                break;
              }

              [objc_opt_self() isSourceTypeAvailable:1];
            }
          }

LABEL_29:
          v90 = swift_allocObject();
          swift_weakInit();
          v80 = type metadata accessor for CanvasContentInputType;
          v91 = v194;
          sub_1003D10EC(v19, v194, type metadata accessor for CanvasContentInputType);
          v92 = swift_allocObject();
          *(v92 + 16) = v90;
          sub_1003D1154(v91, v92 + v89, type metadata accessor for CanvasContentInputType);
          v93 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          sub_1001EC9B8();
          ++v88;
          v94 = String._bridgeToObjectiveC()();

          [v93 setTitle:v94];

          v95 = sub_1001ECD40();
          [v93 setImage:v95];

          sub_1003D0D9C(v19, type metadata accessor for CanvasContentInputType);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v85 = v186;
          if (v86 == v88)
          {

            v87 = aBlock[0];
            goto LABEL_44;
          }
        }

        if (v96)
        {
          sub_100004F84(v188, &qword_100AD1420);
        }

        goto LABEL_29;
      }

LABEL_44:
      v81 = v169;
      if (v87 >> 62)
      {
        sub_1000065A8(0, &unk_100ADC630);

        v114 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_1000065A8(0, &unk_100ADC630);
        v114 = v87;
      }

      sub_1000065A8(0, &unk_100AD4D00);
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      v198.value.super.isa = 0;
      v198.is_nil = 0;
      isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v115, 0, v198, 0, 0xFFFFFFFFFFFFFFFFLL, v114, v152).super.super.isa;
      [v157 setMenu:isa];

      v106 = v158;
LABEL_78:
      swift_getKeyPath();
      v147 = v195;
      aBlock[0] = v195;
      v62 = v165;
      v148 = v106;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock[0] = v147;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v149 = v159;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v197 = *(v147 + v149);
      *(v147 + v149) = 0x8000000000000000;
      sub_100202C3C(v62, v148, v81, isUniquelyReferenced_nonNull_native);
      *(v147 + v149) = v197;
      swift_endAccess();
      aBlock[0] = v147;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

      sub_1003D0D9C(v81, type metadata accessor for CanvasBarItemCoordinator.ItemKey);
      return v62;
    }

    v107 = v166;
    static UIButton.Configuration.borderless()();
    v108 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.cornerRadius.setter();
    v108(aBlock, 0);
    v109 = [objc_opt_self() labelColor];
    UIButton.Configuration.baseForegroundColor.setter();
    sub_1001ECD40();
    UIButton.Configuration.image.setter();
    v110 = [objc_opt_self() configurationWithWeight:5];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.Configuration.contentInsets.setter();
    sub_1000065A8(0, &qword_100ADFC10);
    (*(v167 + 16))(v160, v107, v168);
    v111 = UIButton.init(configuration:primaryAction:)();
    [v111 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v111 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
    [v111 setShowsLargeContentViewer:1];
    sub_1001EC9B8();
    if (v112)
    {
      v113 = String._bridgeToObjectiveC()();
    }

    else
    {
      v113 = 0;
    }

    v81 = v169;
    v117 = v161;
    [v111 setLargeContentTitle:v113];

    v118 = v111;
    sub_1001EC9B8();
    if (v119)
    {
      v120 = String._bridgeToObjectiveC()();
    }

    else
    {
      v120 = 0;
    }

    [v118 setAccessibilityLabel:v120];

    v121 = v194;
    sub_1003D10EC(a1, v194, type metadata accessor for CanvasContentInputType);
    v122 = (v191 + 16) & v156;
    v123 = swift_allocObject();
    sub_1003D1154(v121, v123 + v122, type metadata accessor for CanvasContentInputType);
    aBlock[4] = sub_1003D0DFC;
    aBlock[5] = v123;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10016B4D8;
    aBlock[3] = &unk_100A6B068;
    v124 = _Block_copy(aBlock);

    [v118 setConfigurationUpdateHandler:v124];
    _Block_release(v124);
    sub_1003D10EC(a1, v117, type metadata accessor for CanvasContentInputType);
    LODWORD(v124) = swift_getEnumCaseMultiPayload();
    sub_1003D0D9C(v117, type metadata accessor for CanvasContentInputType);
    if (v124 == 11)
    {
      v154 = v118;
      if (qword_100ACFAA8 != -1)
      {
        swift_once();
      }

      v19 = qword_100B2F548;
      v125 = *(qword_100B2F548 + 16);
      v80 = _swiftEmptyArrayStorage;
      if (v125)
      {
        aBlock[0] = _swiftEmptyArrayStorage;

        specialized ContiguousArray.reserveCapacity(_:)();
        v126 = 0;
        v185 = &v19[(v191 + 32) & v156];
        LODWORD(v172) = enum case for JournalFeatureFlags.followupPrompts(_:);
        v161 = (v182 + 104);
        v182 += 8;
        LODWORD(v160) = enum case for GenerativeModelsAvailability.LanguageOption.systemLanguage(_:);
        v164 += 13;
        ++v163;
        ++v162;
        LODWORD(v156) = enum case for GenerativeModelsAvailability.Availability.available(_:);
        v155 = v157 + 104;
        v157 += 8;
        v188 = v19;
        v127 = v189;
        while (1)
        {
          if (v126 >= *(v19 + 2))
          {
            goto LABEL_81;
          }

          sub_1003D10EC(&v185[*(v192 + 72) * v126], v26, type metadata accessor for CanvasContentInputType);
          sub_1003D10EC(v26, v186, type metadata accessor for CanvasContentInputType);
          v133 = swift_getEnumCaseMultiPayload();
          if (v133 > 0xB)
          {
            break;
          }

          if (((1 << v133) & 0x3BC) == 0)
          {
            if (((1 << v133) & 0xC00) != 0)
            {
              v134 = v183;
              v135 = v184;
              (*v161)(v183, v172, v184);
              v136 = JournalFeatureFlags.isEnabled.getter();
              (*v182)(v134, v135);
              if (v136)
              {
                (*v164)(v177, v160, v178);
                v137 = v175;
                GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:language:)();
                v138 = v173;
                static GenerativeModelsAvailability.current(parameters:)();
                (*v163)(v137, v176);
                v139 = v179;
                GenerativeModelsAvailability.availability.getter();
                (*v162)(v138, v174);
                v140 = v180;
                v141 = v181;
                (*v155)(v180, v156, v181);
                static GenerativeModelsAvailability.Availability.== infix(_:_:)();
                v142 = *v157;
                (*v157)(v140, v141);
                v142(v139, v141);
              }
            }

            else
            {
              if (v133 != 6)
              {
                break;
              }

              [objc_opt_self() isSourceTypeAvailable:1];
            }
          }

LABEL_61:
          v128 = swift_allocObject();
          swift_weakInit();
          v129 = v194;
          sub_1003D10EC(v26, v194, type metadata accessor for CanvasContentInputType);
          v130 = swift_allocObject();
          *(v130 + 16) = v128;
          sub_1003D1154(v129, v130 + v127, type metadata accessor for CanvasContentInputType);
          v80 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          sub_1001EC9B8();
          ++v126;
          v131 = String._bridgeToObjectiveC()();

          [v80 setTitle:v131];

          v132 = sub_1001ECD40();
          [v80 setImage:v132];

          sub_1003D0D9C(v26, type metadata accessor for CanvasContentInputType);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v19 = v188;
          if (v125 == v126)
          {

            v80 = aBlock[0];
            v81 = v169;
            goto LABEL_74;
          }
        }

        if (v133)
        {
          sub_100004F84(v186, &qword_100AD1420);
        }

        goto LABEL_61;
      }

LABEL_74:
      if (v80 >> 62)
      {
        sub_1000065A8(0, &unk_100ADC630);

        v144 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_1000065A8(0, &unk_100ADC630);
        v144 = v80;
      }

      sub_1000065A8(0, &unk_100AD4D00);
      v145._countAndFlagsBits = 0;
      v145._object = 0xE000000000000000;
      v199.value.super.isa = 0;
      v199.is_nil = 0;
      v146 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v145, 0, v199, 0, 0xFFFFFFFFFFFFFFFFLL, v144, v152).super.super.isa;
      v143 = v154;
      [v154 setMenu:v146];

      [v143 setShowsMenuAsPrimaryAction:1];
      v106 = v158;
    }

    else
    {
      v106 = v158;
      [v118 addAction:v158 forControlEvents:0x2000];
      v143 = v118;
    }

    [v165 setCustomView:v143];

    (*(v167 + 8))(v166, v168);
    goto LABEL_78;
  }

  v58 = sub_100362658(v38);
  if ((v59 & 1) == 0)
  {

    goto LABEL_16;
  }

  v60 = *(v57 + 56) + 16 * v58;
  v61 = *(v60 + 8);
  v62 = *v60;
  v63 = v61;
  sub_1003D0D9C(v38, type metadata accessor for CanvasBarItemCoordinator.ItemKey);

  return v62;
}

void sub_1003CE964(uint64_t a1, uint64_t a2)
{
  sub_1000082B4(a2, v7, &qword_100AD13D0);
  if (!v7[3])
  {
    sub_100004F84(v7, &qword_100AD13D0);
LABEL_6:
    swift_getKeyPath();
    v7[0] = v2;
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1003B5E4C(a1, a2);
      swift_unknownObjectRelease();
    }

    return;
  }

  sub_1000065A8(0, &qword_100AD43B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = [v6 isEnabled];

  if (v5)
  {
    goto LABEL_6;
  }
}

uint64_t sub_1003CEAD0(void *a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v4 - 8);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v27[-v8];
  __chkstk_darwin(v10);
  v12 = &v27[-v11];
  v13 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v13);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_1001ED0B4(a2, v15);
  sub_1003D0D9C(v15, type metadata accessor for CanvasContentInputType);
  if (a2)
  {
    UIButton.configuration.getter();
    v16 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v16 - 8) + 48))(v12, 1, v16))
    {
      sub_1000082B4(v12, v9, &qword_100AE4250);
      UIButton.configuration.setter();
      v17 = v12;
      return sub_100004F84(v17, &qword_100AE4250);
    }

    v20 = [objc_opt_self() clearColor];
    v21 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v21(v27, 0);
  }

  else
  {
    UIButton.configuration.getter();
    v18 = type metadata accessor for UIButton.Configuration();
    if ((*(*(v18 - 8) + 48))(v6, 1, v18))
    {
      sub_1000082B4(v6, v9, &qword_100AE4250);
      UIButton.configuration.setter();
      v17 = v6;
      return sub_100004F84(v17, &qword_100AE4250);
    }

    v22 = [a1 isSelected];
    v23 = objc_opt_self();
    v24 = &selRef_systemFillColor;
    if (!v22)
    {
      v24 = &selRef_clearColor;
    }

    v25 = [v23 *v24];
    v26 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v26(v27, 0);
  }

  return UIButton.configuration.setter();
}

uint64_t sub_1003CEE28(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    sub_1003CE964(a3, v6);

    return sub_100004F84(v6, &qword_100AD13D0);
  }

  return result;
}

uint64_t sub_1003CEEEC(void *a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v2);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_storeEnumTagMultiPayload();
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v6, 0, sizeof(v6));
    }

    sub_1003CE964(v4, v6);

    sub_100004F84(v6, &qword_100AD13D0);
    return sub_1003D0D9C(v4, type metadata accessor for CanvasContentInputType);
  }

  return result;
}

uint64_t sub_1003CF024()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v18 - v5;
  v7 = sub_1000F24EC(&qword_100AE4250);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  UIButton.configuration.getter();
  v13 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    sub_1000082B4(v12, v9, &qword_100AE4250);
    UIButton.configuration.setter();
    return sub_100004F84(v12, &qword_100AE4250);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      swift_getKeyPath();
      v18[0] = Strong;
      sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v16 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
      swift_beginAccess();
      (*(v1 + 16))(v6, Strong + v16, v0);

      static Date.now.getter();
      sub_10048FF40(2, 1, v3);
      v17 = *(v1 + 8);
      v17(v3, v0);
      v17(v6, v0);
    }

    UIButton.Configuration.title.setter();
    return UIButton.configuration.setter();
  }
}

uint64_t sub_1003CF350(void (*a1)(double *))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = sub_1003CF3E0();
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  a1(v2);
}

uint64_t sub_1003CF3E0()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  swift_getKeyPath();
  v23 = v0;
  sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  v20[1] = v3;
  if (Strong)
  {
    v6 = [Strong undoManager];
    swift_unknownObjectRelease();
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D60;
    v22 = v7;
    v8 = (v7 + 32);
    sub_1000065A8(0, &qword_100AD4420);
    v21 = v8;
    if (v6)
    {
      v9 = [v6 undoMenuItemTitle];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_6;
    }
  }

  else
  {
    sub_1000F24EC(&unk_100AD4780);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100941D60;
    v21 = (v10 + 32);
    v22 = v10;
    sub_1000065A8(0, &qword_100AD4420);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = 0;
LABEL_6:
  v11 = String._bridgeToObjectiveC()();

  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed:v11];

  if (v6)
  {
    [v6 canUndo];
  }

  swift_allocObject();
  swift_weakInit();
  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v15 = v21;
  *v21 = v14;
  if (v6)
  {
    v16 = [v6 redoMenuItemTitle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v17 = String._bridgeToObjectiveC()();
  v18 = [v12 systemImageNamed:v17];

  if (v6)
  {
    [v6 canRedo];
  }

  swift_allocObject();
  swift_weakInit();
  v15[1] = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  return v22;
}

void *sub_1003CF8D4(void *a1, uint64_t a2, SEL *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003CF96C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator);
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100176E00(1, v3, v4);
      swift_unknownObjectRelease();
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [swift_unknownObjectWeakLoadStrong() setNeedsUpdateProperties];
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003CFAF8(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getKeyPath();
    sub_1003D0D50(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong setEditing:a3 & 1 animated:{1, v5}];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}