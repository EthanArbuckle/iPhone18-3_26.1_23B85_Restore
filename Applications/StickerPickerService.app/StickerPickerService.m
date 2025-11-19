void sub_100001D48()
{
  v0 = (*(*(sub_10000634C(&unk_10001E0F0, &qword_10000F470) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v25 - v1;
  v3 = type metadata accessor for EmojiKeyboardPrewarmAuditor();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10001DA00 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000021E4(v8, qword_10001E050);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "StickerPickerService launched", v11, 2u);
  }

  EmojiKeyboardPrewarmAuditor.init()();
  v12 = EmojiKeyboardPrewarmAuditor.shouldPrewarm.getter();
  (*(v4 + 8))(v7, v3);
  if (v12)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "StickerPickerService will prewarm", v15, 2u);
    }

    v16 = type metadata accessor for TaskPriority();
    v17 = *(*(v16 - 8) + 56);
    v17(v2, 1, 1, v16);
    type metadata accessor for MainActor();
    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = &protocol witness table for MainActor;
    sub_10000D980(0, 0, v2, &unk_10000FE70, v19);

    sub_1000022F0(v2);
    v17(v2, 1, 1, v16);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    sub_10000D980(0, 0, v2, &unk_10000FE80, v20);

    sub_1000022F0(v2);
  }

  v21 = static CommandLine.argc.getter();
  v22 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for StickerPickerServiceAppDelegate();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v24)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = String._bridgeToObjectiveC()();
  }

  UIApplicationMain(v21, v22, 0, v24);
}

uint64_t sub_10000210C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002164()
{
  v0 = type metadata accessor for Logger();
  sub_10000221C(v0, qword_10001E050);
  sub_1000021E4(v0, qword_10001E050);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000021E4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000221C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100002280(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000022F0(uint64_t a1)
{
  v2 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002380()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000023B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenmojiComposingContext();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100002478(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for GenmojiComposingContext();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100002538()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002570()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000025D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100002604()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000265C(uint64_t a1)
{
  v2 = sub_10000634C(&qword_10001DED8, &qword_10000FD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000026C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002700()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002738()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002780()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t EmojiGenerationController_new.initialPrompt.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t EmojiGenerationController_new.initialPrompt.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;

  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel))
    {

      dispatch thunk of GenmojiComposingViewModel.prompt.setter();
    }

    else
    {
    }
  }

  return result;
}

void (*EmojiGenerationController_new.initialPrompt.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1000029B8;
}

void sub_1000029B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = (v4 + v3[4]);
    if (v5[1])
    {
      if (*(v4 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel))
      {
        v6 = *v5;
        v7 = v5[1];

        dispatch thunk of GenmojiComposingViewModel.prompt.setter();
      }
    }
  }

  free(v3);
}

uint64_t sub_100002AB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

uint64_t variable initialization expression of EmojiGenerationController_new._genmojiComposingManager()
{
  type metadata accessor for GenmojiComposingManager();

  return UIViewController.ViewLoading.init()();
}

Swift::Void __swiftcall EmojiGenerationController_new.viewDidLoad()()
{
  v1 = v0;
  v91 = type metadata accessor for EmojiGenerationView_new(0);
  v2 = *(*(v91 - 8) + 64);
  v3 = (__chkstk_darwin)();
  v93 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v92 = &v90 - v6;
  __chkstk_darwin(v5);
  v97 = (&v90 - v7);
  v8 = type metadata accessor for CreationViewStyle();
  v95 = *(v8 - 8);
  v96 = v8;
  v9 = *(v95 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v94 = &v90 - v13;
  if (qword_10001D9E0 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong _hostedWindowScene];
    if (v16)
    {
      v17 = v16;
      type metadata accessor for EmojiGenerationClientToHostAction();
      v18 = dispatch thunk of static EmojiGenerationClientToHostAction.actionForDidCancelAddEmoji()();
      [v17 sendAction:v18];
    }

    swift_unknownObjectWeakAssign();
  }

  swift_unknownObjectWeakAssign();
  v19 = type metadata accessor for EmojiGenerationController_new(0);
  v99.receiver = v1;
  v99.super_class = v19;
  objc_msgSendSuper2(&v99, "viewDidLoad");
  type metadata accessor for GenmojiComposingManager();
  inited = swift_initStackObject();
  swift_unknownObjectWeakInit();
  v90 = inited;
  swift_unknownObjectWeakAssign();
  v21 = v94;
  v22 = v95;
  v23 = v96;
  (*(v95 + 104))(v94, enum case for CreationViewStyle.emoji(_:), v96);
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_getKeyPath();
  swift_getKeyPath();
  v98 = v24;
  v25 = v1;
  static UIViewController.ViewLoading.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  sub_100007B7C(&qword_10001DA20, v26, type metadata accessor for GenmojiComposingManager);
  (*(v22 + 16))(v12, v21, v23);
  v27 = type metadata accessor for GenmojiComposingViewModel();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v30 = GenmojiComposingViewModel.init(delegate:creationViewStyle:)();
  v31 = OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel;
  v32 = *&v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel];
  *&v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel] = v30;

  v33 = &v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt];
  swift_beginAccess();
  if (*(v33 + 1) && *&v25[v31])
  {
    v34 = *v33;
    v35 = *(v33 + 1);

    dispatch thunk of GenmojiComposingViewModel.prompt.setter();
  }

  v36 = [v25 navigationController];
  if (v36)
  {
    v37 = v36;
    [v36 setNavigationBarHidden:1 animated:0];
  }

  v38 = v97;
  *v97 = 0;
  v39 = v91;
  v40 = v38 + *(v91 + 20);
  GenmojiComposingContext.init(inputPrompt:)();
  *(v38 + *(v39 + 24)) = v30;
  v41 = v92;
  sub_100006234(v38, v92);
  v42 = objc_allocWithZone(type metadata accessor for EmojiGenerationWrapperViewController_new(0));
  sub_100006234(v41, v93);
  v43 = UIHostingController.init(rootView:)();
  sub_1000062F0(v41);
  v44 = *&v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_wrapperVC];
  *&v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_wrapperVC] = v43;
  v45 = v43;

  v46 = v45;
  [v25 addChildViewController:v46];
  v47 = [v46 view];
  if (!v47)
  {
    __break(1u);
    goto LABEL_30;
  }

  v48 = v47;
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];

  v49 = [v25 view];
  if (!v49)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v50 = v49;
  v51 = [v46 view];

  if (!v51)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v50 addSubview:v51];

  sub_10000634C(&qword_10001DA30, &qword_10000F468);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10000F3E0;
  v53 = [v46 view];

  if (!v53)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v54 = [v53 topAnchor];

  v55 = [v25 view];
  if (!v55)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v56 = v55;
  v57 = [v55 topAnchor];

  v58 = [v54 constraintEqualToAnchor:v57];
  *(v52 + 32) = v58;
  v59 = [v46 view];

  if (!v59)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v60 = [v59 bottomAnchor];

  v61 = [v25 view];
  if (!v61)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v62 = v61;
  v63 = [v61 bottomAnchor];

  v64 = [v60 constraintEqualToAnchor:v63];
  *(v52 + 40) = v64;
  v65 = [v46 view];

  if (!v65)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v66 = [v65 leadingAnchor];

  v67 = [v25 view];
  if (!v67)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v68 = v67;
  v69 = [v67 leadingAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  *(v52 + 48) = v70;
  v71 = [v46 view];

  if (!v71)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v72 = [v71 trailingAnchor];

  v73 = [v25 view];
  if (!v73)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v74 = v73;
  v75 = objc_opt_self();
  v76 = [v74 trailingAnchor];

  v77 = [v72 constraintEqualToAnchor:v76];
  *(v52 + 56) = v77;
  sub_10000687C(0, &qword_10001DA38, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v75 activateConstraints:isa];

  [v46 didMoveToParentViewController:v25];
  v79 = [v25 traitCollection];
  v80 = [v79 userInterfaceIdiom];

  if (!v80)
  {
    sub_100004840();
    v81 = objc_opt_self();
    v82 = [v81 mainScreen];
    [v82 bounds];
    v84 = v83;

    v85 = [v81 mainScreen];
    [v85 bounds];
    v87 = v86;

    v88 = *&v25[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView];
    if (v88)
    {
      v89 = 1.0;
      if (v84 < v87)
      {
        v89 = 0.0;
      }

      [v88 setAlpha:v89];
    }
  }

  sub_1000062F0(v97);
  (*(v95 + 8))(v94, v96);
}

uint64_t sub_100003574(uint64_t a1)
{
  v3 = *(*(type metadata accessor for EmojiGenerationView_new(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(v1);
  sub_100006234(a1, v5);
  v7 = UIHostingController.init(rootView:)();
  sub_1000062F0(a1);
  return v7;
}

Swift::Void __swiftcall EmojiGenerationController_new.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  v8 = v1;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;
  sub_1000039BC(0, 0, v6, &unk_10000F480, v10);

  v11 = type metadata accessor for EmojiGenerationController_new(0);
  v12.receiver = v8;
  v12.super_class = v11;
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1);
}

uint64_t sub_1000037F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100003888, v6, v5);
}

uint64_t sub_100003888()
{
  v2 = v0[3];
  v1 = v0[4];

  if (*(v2 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel))
  {

    if (dispatch thunk of GenmojiComposingViewModel.delegate.getter())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = v0[3];
      swift_getKeyPath();
      swift_getKeyPath();
      static UIViewController.ViewLoading.subscript.getter();

      v4 = v0[2];
      sub_100007B7C(&qword_10001DA20, v5, type metadata accessor for GenmojiComposingManager);
      dispatch thunk of GenmojiComposingViewModel.delegate.setter();
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000039BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100007BC4(a3, v27 - v11, &unk_10001E0F0, &qword_10000F470);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007B08(v12, &unk_10001E0F0, &qword_10000F470);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100003CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100007BC4(a3, v27 - v11, &unk_10001E0F0, &qword_10000F470);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100007B08(v12, &unk_10001E0F0, &qword_10000F470);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000634C(&qword_10001DC90, &qword_10000F6F0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000634C(&qword_10001DC90, &qword_10000F6F0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

Swift::Void __swiftcall EmojiGenerationController_new.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for EmojiGenerationController_new(0);
  v12.receiver = v1;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, "viewDidDisappear:", a1);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  type metadata accessor for MainActor();
  v9 = v1;
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;
  sub_100003CBC(0, 0, v6, &unk_10000F490, v11);
}

uint64_t sub_10000427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100004314, v6, v5);
}

uint64_t sub_100004314()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = *(v2 + OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel);
  if (v3)
  {

    dispatch thunk of GenmojiComposingViewModel.delegate.setter();
  }

  **(v0 + 16) = v3 == 0;
  v4 = *(v0 + 8);

  return v4();
}

void EmojiGenerationController_new.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = type metadata accessor for EmojiGenerationController_new(0);
  objc_msgSendSuper2(&v12, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = [v3 traitCollection];
  v8 = [v7 userInterfaceIdiom];

  if (!v8)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11[4] = sub_1000064FC;
    v11[5] = v9;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_100004760;
    v11[3] = &unk_100018C60;
    v10 = _Block_copy(v11);

    [a1 animateAlongsideTransition:v10 completion:0];
    _Block_release(v10);
  }
}

void sub_100004658()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = objc_opt_self();
    v3 = [v2 mainScreen];
    [v3 bounds];
    v5 = v4;

    v6 = [v2 mainScreen];
    [v6 bounds];
    v8 = v7;

    v9 = *&v1[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView];
    if (v9)
    {
      if (v5 >= v8)
      {
        v10 = 1.0;
      }

      else
      {
        v10 = 0.0;
      }

      v11 = v9;
      [v11 setAlpha:v10];
    }
  }
}

uint64_t sub_100004760(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100004840()
{
  v1 = [objc_allocWithZone(UIView) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  [v1 setBackgroundColor:v3];

  [v1 setAlpha:0.0];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  [v4 addSubview:v1];

  sub_10000634C(&qword_10001DA30, &qword_10000F468);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10000F3E0;
  v7 = [v1 topAnchor];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v8 topAnchor];

  v11 = [v7 constraintEqualToAnchor:v10];
  *(v6 + 32) = v11;
  v12 = [v1 bottomAnchor];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v54 = v2;
  v15 = [v13 bottomAnchor];

  v16 = [v12 constraintEqualToAnchor:v15];
  *(v6 + 40) = v16;
  v17 = [v1 leadingAnchor];
  v18 = [v0 view];
  if (!v18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v19 = v18;
  v20 = [v18 leadingAnchor];

  v21 = [v17 constraintEqualToAnchor:v20];
  *(v6 + 48) = v21;
  v22 = [v1 trailingAnchor];
  v23 = [v0 view];
  if (v23)
  {
    v24 = v23;
    v53 = objc_opt_self();
    v25 = [v24 trailingAnchor];

    v26 = [v22 constraintEqualToAnchor:v25];
    *(v6 + 56) = v26;
    sub_10000687C(0, &qword_10001DA38, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v53 activateConstraints:isa];

    v28 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    sub_10000634C(&qword_10001DC98, &qword_10000F710);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000F3F0;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightBold;
    v30 = v28;
    v31 = UIFontWeightTrait;
    v32 = sub_1000078F0(inited);
    swift_setDeallocating();
    sub_100007B08(inited + 32, &qword_10001DCA0, &qword_10000F718);
    sub_10000634C(&qword_10001DCA8, &qword_10000F720);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_10000F3F0;
    *(v33 + 32) = UIFontDescriptorTraitsAttribute;
    *(v33 + 64) = sub_10000634C(&qword_10001DCB0, &qword_10000F728);
    *(v33 + 40) = v32;
    v34 = UIFontDescriptorTraitsAttribute;
    sub_1000079E0(v33);
    swift_setDeallocating();
    sub_100007B08(v33 + 32, &qword_10001DCB8, &qword_10000F730);
    type metadata accessor for AttributeName(0);
    sub_100007B7C(&qword_10001DCC0, 255, type metadata accessor for AttributeName);
    v35 = Dictionary._bridgeToObjectiveC()().super.isa;

    v36 = [v30 fontDescriptorByAddingAttributes:v35];

    v37 = v36;
    [v37 pointSize];
    v39 = [objc_opt_self() fontWithDescriptor:v37 size:v38];

    v40 = [objc_allocWithZone(UILabel) init];
    String.stk_localized.getter();
    v41 = String._bridgeToObjectiveC()();

    [v40 setText:v41];

    [v40 setFont:v39];
    v42 = [v54 secondaryLabelColor];
    [v40 setTextColor:v42];

    [v40 setTextAlignment:1];
    v43 = v40;
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v1 addSubview:v43];
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10000F400;
    v45 = [v43 centerXAnchor];
    v46 = [v1 centerXAnchor];
    v47 = [v45 constraintEqualToAnchor:v46];

    *(v44 + 32) = v47;
    v48 = [v43 centerYAnchor];

    v49 = [v1 centerYAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v44 + 40) = v50;
    v51 = Array._bridgeToObjectiveC()().super.isa;

    [v53 activateConstraints:v51];

    v52 = *&v0[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView];
    *&v0[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView] = v1;

    return;
  }

LABEL_11:
  __break(1u);
}

id EmojiGenerationController_new.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id EmojiGenerationController_new.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_wrapperVC] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel] = 0;
  v6 = &v3[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt];
  *v6 = 0;
  *(v6 + 1) = 0;
  type metadata accessor for GenmojiComposingManager();
  UIViewController.ViewLoading.init()();
  *&v3[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for EmojiGenerationController_new(0);
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id EmojiGenerationController_new.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id EmojiGenerationController_new.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_wrapperVC] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_genmojiComposingViewModel] = 0;
  v3 = &v1[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_initialPrompt];
  *v3 = 0;
  *(v3 + 1) = 0;
  type metadata accessor for GenmojiComposingManager();
  UIViewController.ViewLoading.init()();
  *&v1[OBJC_IVAR____TtC20StickerPickerService29EmojiGenerationController_new_trapOverlayView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for EmojiGenerationController_new(0);
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1000054A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000054E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v7 = *(*(sub_10000634C(&qword_10001DC70, &qword_10000F6B0) - 8) + 64) + 15;
  *(v6 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_100005588, 0, 0);
}

uint64_t sub_100005588()
{
  v1 = v0[2];
  sub_10000687C(0, &qword_10001DC78, UIImage_ptr);
  v2 = GenmojiComposingViewResult.generatedImages.getter();
  v0[5] = v2;
  v3 = async function pointer to static UIImage.createStickerRepresentations(from:)[1];
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_10000564C;

  return static UIImage.createStickerRepresentations(from:)(v2);
}

uint64_t sub_10000564C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 56) = a1;

  return _swift_task_switch(sub_10000576C, 0, 0);
}

uint64_t sub_10000576C()
{
  if (*(v0 + 56))
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 64);
    v4 = *(v0 + 16);
    v5 = GenmojiComposingViewResult.prompt.getter();
    v7 = v6;
    type metadata accessor for Sticker();

    GenmojiComposingViewResult.accessibilityDescription.getter();
    static Locale.current.getter();
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 56))(v1, 0, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    *(v10 + 24) = v5;
    *(v10 + 32) = v7;
    *(v10 + 40) = v3;

    static Sticker.createStickerWithRepresentations(_:searchText:captionText:metadata:addToStore:sanitizedPrompt:promptLocale:completion:)();

    sub_100007B08(v1, &qword_10001DC70, &qword_10000F6B0);
  }

  v11 = *(v0 + 32);

  v12 = *(v0 + 8);

  return v12();
}

void sub_100005948(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      type metadata accessor for CategoryKeyView();
      v2 = a1;
      v3 = static CategoryKeyView.sharedInstance.getter();
      dispatch thunk of CategoryKeyView.didCreateSticker(animated:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v6 = [Strong _hostedWindowScene];

        if (v6)
        {
          type metadata accessor for EmojiGenerationClientToHostAction();
          v2 = v2;
          v7 = dispatch thunk of static EmojiGenerationClientToHostAction.actionForDidAddEmoji(sticker:searchString:captionText:shouldInsert:)();

          [v6 sendAction:v7];
        }
      }
    }

    else
    {
    }
  }
}

void sub_100005A84()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v1 = [Strong _hostedWindowScene];
    if (v1)
    {
      v2 = v1;
      type metadata accessor for EmojiGenerationClientToHostAction();
      v3 = dispatch thunk of static EmojiGenerationClientToHostAction.actionForDidCancelAddEmoji()();
      [v2 sendAction:v3];
    }

    if (qword_10001D9E0 != -1)
    {
      swift_once();
    }

    swift_unknownObjectWeakAssign();
  }
}

void sub_100005B80(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      [v3 *a1];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100005C2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100005CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = type metadata accessor for GenmojiComposingViewResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v22 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  (*(v11 + 32))(v19 + v18, &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v20 = v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v20 = v6;
  *(v20 + 8) = a5;

  sub_1000039BC(0, 0, v16, a6, v19);
}

void sub_100005ED4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setModalInPresentation:a1 & 1];
  }
}

uint64_t sub_100005F64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for GenmojiComposingContext();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v10 = *(sub_10000634C(&qword_10001DC80, &qword_10000F6C0) + 44);
  v11 = *(a1 + 20);
  v12 = *(v2 + *(a1 + 24));
  (*(v6 + 16))(v9, v2 + v11, v5);

  return GenmojiComposingView.init(viewModel:generationContext:)();
}

void (*sub_100006080(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = EmojiGenerationController_new.initialPrompt.modify(v2);
  return sub_1000060F0;
}

void sub_1000060F0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_100006138@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000061B8(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;

  return static UIViewController.ViewLoading.subscript.setter();
}

uint64_t sub_100006234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EmojiGenerationView_new(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062B8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000062F0(uint64_t a1)
{
  v2 = type metadata accessor for EmojiGenerationView_new(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000634C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100006394(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000807C;

  return sub_1000037F0(a1, v4, v5, v6);
}

uint64_t sub_100006448(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000807C;

  return sub_10000427C(a1, v4, v5, v6);
}

uint64_t sub_100006504(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100006524()
{
  sub_1000065D4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000065D4()
{
  if (!qword_10001DA88)
  {
    type metadata accessor for GenmojiComposingManager();
    v0 = type metadata accessor for UIViewController.ViewLoading();
    if (!v1)
    {
      atomic_store(v0, &qword_10001DA88);
    }
  }
}

uint64_t sub_100006698()
{
  result = type metadata accessor for GenmojiComposingContext();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GenmojiComposingViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100006748(uint64_t a1)
{
  v4 = *(type metadata accessor for GenmojiComposingViewResult() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000807C;

  return sub_1000054E8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_10000687C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1000068C4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  sub_100005948(a1);
}

uint64_t sub_1000068D4()
{
  v1 = type metadata accessor for GenmojiComposingViewResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 9, v3 | 7);
}

uint64_t sub_1000069AC(uint64_t a1)
{
  v4 = *(type metadata accessor for GenmojiComposingViewResult() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100006AE0;

  return sub_1000054E8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100006AE0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100006BDC(uint64_t a1, uint64_t a2)
{
  result = static CGFloat._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_100006C30(uint64_t a1, uint64_t a2)
{
  v3 = static CGFloat._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_100006C88@<X0>(void *a1@<X8>)
{
  result = static CGFloat._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = v3;
  return result;
}

uint64_t sub_100006CB0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100006D28(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006DA8@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100006DEC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100006E28()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100006E7C()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100006F04(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100006F98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007000()
{
  sub_100007B7C(&qword_10001DD68, 255, type metadata accessor for TraitKey);
  sub_100007B7C(&qword_10001DD70, 255, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void *sub_1000070C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

double sub_1000070D4@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000070E0()
{
  v2 = *v0;
  sub_100007B7C(&qword_10001DD50, 255, type metadata accessor for Weight);
  sub_100007B7C(&qword_10001DD58, 255, type metadata accessor for Weight);
  sub_100008008();
  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

uint64_t sub_1000071B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_1000071F8()
{
  sub_100007B7C(&qword_10001DCC0, 255, type metadata accessor for AttributeName);
  sub_100007B7C(&qword_10001DD48, 255, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()();
}

void sub_1000072C4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
}

uint64_t sub_100007300(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:_:)(a1, *&v2);
}

unint64_t sub_10000732C(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000073BC(a1, v4);
}

unint64_t sub_1000073BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1000074C0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000075B4;

  return v6(v2 + 32);
}

uint64_t sub_1000075B4()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1000076C8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000807C;

  return sub_1000074C0(a1, v5);
}

uint64_t sub_100007780(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006AE0;

  return sub_1000074C0(a1, v5);
}

uint64_t sub_100007838(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000807C;

  return sub_10000BC6C(a1, v5);
}

unint64_t sub_1000078F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000634C(&qword_10001DCD0, &qword_10000F740);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10000732C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1000079E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000634C(&qword_10001DCC8, &qword_10000F738);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007BC4(v4, &v11, &qword_10001DCB8, &qword_10000F730);
      v5 = v11;
      result = sub_10000732C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100007C2C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_100007B08(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000634C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007B7C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007BC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000634C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100007C2C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_100007C64(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_100007CB0()
{
  result = qword_10001DCF0;
  if (!qword_10001DCF0)
  {
    sub_100007D14(&qword_10001DCF8, "~");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DCF0);
  }

  return result;
}

uint64_t sub_100007D14(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100008008()
{
  result = qword_10001DD60;
  if (!qword_10001DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DD60);
  }

  return result;
}

id sub_1000081DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerPickerServiceViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008234()
{
  v0 = type metadata accessor for Logger();
  sub_10000221C(v0, qword_10001DDA0);
  sub_1000021E4(v0, qword_10001DDA0);
  return Logger.init(subsystem:category:)();
}

void sub_100008524(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_10000634C(&qword_10001DED8, &qword_10000FD00);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v98 - v8;
  UIScene.hostStorage.getter();
  v10 = sub_10000634C(&qword_10001DEE0, &qword_10000FD08);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000265C(v9);
    return;
  }

  type metadata accessor for ActivitityTypeConfiguration.ConfigurationSetting();
  swift_getOpaqueTypeConformance2();
  sub_10000A0DC();
  v12 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
  (*(v11 + 8))(v9, v10);
  v13 = ActivitityTypeConfiguration.activityType.getter();
  v15 = v14;

  v16 = *(v3 + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window);
  if (!v16)
  {

    return;
  }

  LODWORD(v102) = a2;
  v17 = v16;
  [objc_msgSend(a1 "coordinateSpace")];
  v19 = v18;
  v21 = v20;
  swift_unknownObjectRelease();
  v22 = [a1 _FBSScene];
  v23 = [v22 hostHandle];

  if (v23)
  {
    v24 = [v23 auditToken];

    [v24 realToken];
    v103 = sub_10000A134(v106, v107, v108, v109);
    v26 = v25;
    if (qword_10001D9E8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    v28 = sub_1000021E4(v27, qword_10001DDA0);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    v31 = os_log_type_enabled(v29, v30);
    v104 = v15;
    if (v31)
    {
      v32 = swift_slowAlloc();
      v101 = v28;
      v33 = v32;
      v99 = swift_slowAlloc();
      v105 = v99;
      *v33 = 136315650;
      v34 = String.debugDescription.getter();
      v36 = sub_100009A48(v34, v35, &v105);
      v100 = v13;
      v37 = v36;

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v38 = CGSize.debugDescription.getter();
      v40 = sub_100009A48(v38, v39, &v105);

      *(v33 + 14) = v40;
      *(v33 + 22) = 2080;
      v106 = v103;
      v107 = v26;

      sub_10000634C(&qword_10001DEF0, &qword_10000FD10);
      v41 = String.init<A>(describing:)();
      v43 = sub_100009A48(v41, v42, &v105);

      *(v33 + 24) = v43;
      v13 = v100;
      _os_log_impl(&_mh_execute_header, v29, v30, "activityType: %s window size: %s host app: %s", v33, 0x20u);
      swift_arrayDestroy();

      v28 = v101;
    }

    if (v21 == 0.0 || v19 == 0.0)
    {
      v47 = v13;

      v48 = v104;

      v49 = a1;
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = v48;
        v55 = swift_slowAlloc();
        v106 = v55;
        *v52 = 138412546;
        *(v52 + 4) = v49;
        *v53 = v49;
        *(v52 + 12) = 2080;
        v56 = v49;
        v57 = sub_100009A48(v47, v54, &v106);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v50, v51, "empty window scene: %@ activityType: %s", v52, 0x16u);
        sub_10000A074(v53);

        sub_10000A210(v55);

LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v100 = v26;
      v44 = [v17 rootViewController];
      v45 = v104;
      if (!v44)
      {
        goto LABEL_21;
      }

      if (v102)
      {
        if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v45 == v46)
        {

          goto LABEL_21;
        }

        v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v58)
        {
LABEL_21:

          v59 = a1;
          v60 = Logger.logObject.getter();
          v61 = static os_log_type_t.default.getter();

          v62 = os_log_type_enabled(v60, v61);
          v101 = v28;
          if (v62)
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v102 = v17;
            v65 = v64;
            v106 = swift_slowAlloc();
            *v63 = 138412802;
            *(v63 + 4) = v59;
            *v65 = v59;
            *(v63 + 12) = 2080;
            v66 = v59;
            *(v63 + 14) = sub_100009A48(v13, v45, &v106);
            *(v63 + 22) = 2080;
            v67 = CGSize.debugDescription.getter();
            v69 = v13;
            v70 = sub_100009A48(v67, v68, &v106);

            *(v63 + 24) = v70;
            v13 = v69;
            _os_log_impl(&_mh_execute_header, v60, v61, "configure %@ with %s window size: %s", v63, 0x20u);
            sub_10000A074(v65);
            v17 = v102;

            swift_arrayDestroy();
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v71 == v45)
          {

LABEL_31:

            type metadata accessor for LocalEmojiAndStickerCollectionViewController();
            v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            dispatch thunk of LocalEmojiAndStickerCollectionViewController.hostAppID.setter();
LABEL_32:
            [v17 setRootViewController:v75];

LABEL_40:
            [v17 makeKeyAndVisible];
            goto LABEL_41;
          }

          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v74)
          {
            goto LABEL_31;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v76 == v45)
          {

LABEL_37:

            type metadata accessor for LocalCategoryViewController();
LABEL_38:
            v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            [v17 setRootViewController:v78];
LABEL_39:

            goto LABEL_40;
          }

          v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v77)
          {
            goto LABEL_37;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v79 == v45)
          {

LABEL_46:

            type metadata accessor for StickerPickerInProcessViewController();
            goto LABEL_38;
          }

          v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v80)
          {
            goto LABEL_46;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v81 == v45)
          {

LABEL_51:

            type metadata accessor for StickerSearchViewController();
            v75 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
            dispatch thunk of StickerSearchViewController.hostAppID.setter();
            goto LABEL_32;
          }

          v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v82)
          {
            goto LABEL_51;
          }

          if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v83 == v45)
          {
          }

          else
          {
            v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v84 & 1) == 0)
            {
              if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v91 == v45)
              {
              }

              else
              {
                v92 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v92 & 1) == 0)
                {
                  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v94 == v45)
                  {
                  }

                  else
                  {
                    v95 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v95 & 1) == 0)
                    {
                      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v13 && v96 == v45)
                      {
                      }

                      else
                      {
                        v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if ((v97 & 1) == 0)
                        {

                          v78 = Logger.logObject.getter();
                          v87 = static os_log_type_t.error.getter();

                          if (os_log_type_enabled(v78, v87))
                          {
LABEL_60:
                            v88 = swift_slowAlloc();
                            v89 = swift_slowAlloc();
                            v106 = v89;
                            *v88 = 136315138;
                            v90 = sub_100009A48(v13, v45, &v106);

                            *(v88 + 4) = v90;
                            _os_log_impl(&_mh_execute_header, v78, v87, "Unsupported activity type: %s", v88, 0xCu);
                            sub_10000A210(v89);

                            goto LABEL_39;
                          }

LABEL_64:

                          goto LABEL_39;
                        }
                      }

                      type metadata accessor for LocalStickerEffectEditorViewController();
                      goto LABEL_38;
                    }
                  }

                  type metadata accessor for AvatarEditorViewController();
                  goto LABEL_38;
                }
              }

              type metadata accessor for StickerPhotosViewController();
              v93 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v75 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v93];

              goto LABEL_32;
            }
          }

          if (static StickersFeatureFlags.isEmojiCreationEnabledForOS.getter())
          {

            if (static GPFeatureFlags.isMixmojiEnabled.getter())
            {
              type metadata accessor for EmojiGenerationController_new(0);
              v85 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v86 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v85];
              [v17 setRootViewController:v86];
            }

            goto LABEL_40;
          }

          v78 = Logger.logObject.getter();
          v87 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v78, v87))
          {
            goto LABEL_60;
          }

          goto LABEL_64;
        }
      }

      v50 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v50, v72))
      {
        v73 = swift_slowAlloc();
        *v73 = 0;
        _os_log_impl(&_mh_execute_header, v50, v72, "window already has a rootViewController", v73, 2u);
        goto LABEL_28;
      }
    }

LABEL_29:

LABEL_41:
    return;
  }

  __break(1u);
}

void sub_1000093DC(void *a1)
{
  v2 = v1;
  if (qword_10001D9E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000021E4(v4, qword_10001DDA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "sceneDidDisconnect %@", v8, 0xCu);
    sub_10000A074(v9);
  }

  v11 = OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window;
  v12 = *(v2 + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window);
  if (v12)
  {
    v13 = [v12 rootViewController];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 view];

      if (!v15)
      {
        __break(1u);
        return;
      }

      [v15 removeFromSuperview];
    }

    v12 = *(v2 + v11);
    if (v12)
    {
      [v12 setRootViewController:0];
      v12 = *(v2 + v11);
    }
  }

  *(v2 + v11) = 0;
}

void sub_1000096CC(void *a1)
{
  if (qword_10001D9E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000021E4(v2, qword_10001DDA0);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "sceneWillEnterForeground %@", v6, 0xCu);
    sub_10000A074(v7);
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v11 = v3;
    sub_100008524(v10, 1);
  }
}

id sub_100009990(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000099FC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100009A48(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009B14(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000A25C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000A210(v11);
  return v7;
}

unint64_t sub_100009B14(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100009C20(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100009C20(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009C6C(a1, a2);
  sub_100009D9C(&off_100018B90);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009C6C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100009E88(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009E88(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100009D9C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100009EFC(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009E88(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_10000634C(&qword_10001DEF8, qword_10000FD18);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009EFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000634C(&qword_10001DEF8, qword_10000FD18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100009FF0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_10000A000(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_10000A074(uint64_t a1)
{
  v2 = sub_10000634C(&qword_10001DED0, &qword_10000FDE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A0DC()
{
  result = qword_10001DEE8;
  if (!qword_10001DEE8)
  {
    type metadata accessor for ActivitityTypeConfiguration.ConfigurationSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10001DEE8);
  }

  return result;
}

SecTaskRef sub_10000A134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  result = SecTaskCreateWithAuditToken(0, &token);
  if (result)
  {
    v5 = result;
    v6 = String._bridgeToObjectiveC()();
    v7 = SecTaskCopyValueForEntitlement(v5, v6, 0);

    if (v7 && (swift_dynamicCast() & 1) != 0)
    {
      return *token.val;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000A210(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000A25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_10000A2BC(void *a1)
{
  v2 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = qword_10001D9E8;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000021E4(v8, qword_10001DDA0);
    v16 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v16;
      *v12 = v16;
      v13 = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "willConnectTo scene: %@", v11, 0xCu);
      sub_10000A074(v12);
    }

    v14 = [objc_allocWithZone(type metadata accessor for SecureWindow()) initWithWindowScene:v5];
    v15 = *(v2 + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window);
    *(v2 + OBJC_IVAR____TtC20StickerPickerService33StickerPickerServiceSceneDelegate_window) = v14;

    sub_100008524(v5, 0);
  }
}

void sub_10000A494(void *a1, void *a2)
{
  if (qword_10001D9E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000021E4(v4, qword_10001DDA0);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "windowScene didUpdateCoordinateSpace %@", v8, 0xCu);
    sub_10000A074(v9);
  }

  if ([v5 activationState] != 2)
  {
    [objc_msgSend(v5 "coordinateSpace")];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();
    [a2 bounds];
    v26.origin.x = v19;
    v26.origin.y = v20;
    v26.size.width = v21;
    v26.size.height = v22;
    v25.origin.x = v12;
    v25.origin.y = v14;
    v25.size.width = v16;
    v25.size.height = v18;
    v23 = !CGRectEqualToRect(v25, v26);

    sub_100008524(v5, v23);
  }
}

void sub_10000A6A4(void *a1, const char *a2)
{
  if (qword_10001D9E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000021E4(v4, qword_10001DDA0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v5;
    *v8 = v5;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0xCu);
    sub_10000A074(v8);
  }
}

void sub_10000A7EC(void *a1)
{
  v2 = sub_10000634C(&qword_10001DED8, &qword_10000FD00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  if (qword_10001D9E8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000021E4(v6, qword_10001DDA0);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v8, v9, "sceneDidEnterBackground %@", v10, 0xCu);
    sub_10000A074(v11);
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v14 = v13;
    v15 = v7;
    UIScene.hostStorage.getter();
    v16 = sub_10000634C(&qword_10001DEE0, &qword_10000FD08);
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v5, 1, v16) == 1)
    {

      sub_10000265C(v5);
      return;
    }

    type metadata accessor for ActivitityTypeConfiguration.ConfigurationSetting();
    swift_getOpaqueTypeConformance2();
    sub_10000A0DC();
    v18 = dispatch thunk of UISceneKeyValueStorage.subscript.getter();
    (*(v17 + 8))(v5, v16);
    v19 = ActivitityTypeConfiguration.activityType.getter();
    v21 = v20;

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v19 || v22 != v21)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_12;
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() != v19 || v27 != v21)
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
LABEL_15:

          return;
        }

LABEL_13:
        v24 = [v14 keyWindow];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 firstResponder];

          [v26 resignFirstResponder];
        }

        goto LABEL_15;
      }
    }

LABEL_12:

    goto LABEL_13;
  }
}

uint64_t sub_10000ABA0()
{
  v0 = type metadata accessor for Logger();
  sub_10000221C(v0, qword_10001DFC0);
  sub_1000021E4(v0, qword_10001DFC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10000AC20()
{
  v0 = type metadata accessor for StickerStore.PersistenceType();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for StickerStore.PersistenceType.remote(_:));
  v4 = type metadata accessor for StickerStore();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = StickerStore.init(persistence:)();
  qword_10001E1B8 = result;
  return result;
}

uint64_t static StickersOnDemandReindexer.reindexStickersIfNecessary()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100006AE0;

  return sub_10000CCF4();
}

uint64_t sub_10000AF0C(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000AFB4;

  return sub_10000CCF4();
}

uint64_t sub_10000AFB4()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v3 = *(v5 + 8);

  return v3();
}

id sub_10000B0D4(uint64_t a1, void *a2)
{
  v4 = sub_10000634C(&qword_10001E030, &qword_10000FE08);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  v21 = a1;
  v22 = v9;
  v10 = a1;
  AsyncThrowingStream.Continuation.onTermination.setter();
  v11 = *(v5 + 16);
  v11(v8, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v20 = *(v5 + 32);
  v20(v13 + v12, v8, v4);
  v27 = sub_10000D6B0;
  v28 = v13;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000B594;
  v26 = &unk_100018FA8;
  v14 = _Block_copy(&aBlock);

  [v22 setFoundItemsHandler:v14];
  _Block_release(v14);
  v11(v8, v21, v4);
  v15 = swift_allocObject();
  v20(v15 + v12, v8, v4);
  v27 = sub_10000D774;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10000B664;
  v26 = &unk_100018FF8;
  v16 = _Block_copy(&aBlock);

  v17 = v22;
  [v22 setCompletionHandler:v16];
  _Block_release(v16);
  return [v17 start];
}

uint64_t sub_10000B3BC(unint64_t a1)
{
  v2 = sub_10000634C(&unk_10001E040, qword_10000FE10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v11 - v6;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = (v3 + 8);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        ++v10;
        v12 = 1;
        sub_10000634C(&qword_10001E030, &qword_10000FE08);
        AsyncThrowingStream.Continuation.yield(_:)();
        result = (*v9)(v7, v2);
      }

      while (v8 != v10);
    }

    else
    {
      do
      {
        v12 = 1;
        sub_10000634C(&qword_10001E030, &qword_10000FE08);
        AsyncThrowingStream.Continuation.yield(_:)();
        result = (*v9)(v7, v2);
        --v8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t sub_10000B594(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10000D81C();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10000B608(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
  }

  sub_10000634C(&qword_10001E030, &qword_10000FE08);
  return AsyncThrowingStream.Continuation.finish(throwing:)();
}

void sub_10000B664(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

id StickersOnDemandReindexer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StickersOnDemandReindexer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersOnDemandReindexer();
  return objc_msgSendSuper2(&v2, "init");
}

id StickersOnDemandReindexer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickersOnDemandReindexer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000B7B0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_10000807C;

  return v7();
}

uint64_t sub_10000B898(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10000807C;

  return v8();
}

uint64_t sub_10000B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000634C(&unk_10001E0F0, &qword_10000F470);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_100002280(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007B08(v12, &unk_10001E0F0, &qword_10000F470);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);

    return v23;
  }

LABEL_8:
  sub_100007B08(a3, &unk_10001E0F0, &qword_10000F470);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10000BC6C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD64;

  return v7(a1);
}

uint64_t sub_10000BD64()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_10000BE5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000634C(&qword_10001E028, &qword_10000FE00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_10000BF60()
{
  v1 = type metadata accessor for Sticker.StickerType();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10000C01C, 0, 0);
}

uint64_t sub_10000C01C()
{
  if (qword_10001D9F8 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, enum case for Sticker.StickerType.userContent(_:), v3);
  v4 = dispatch thunk of StickerStore.count(type:)();
  (*(v2 + 8))(v1, v3);
  v5 = v0[4];

  v6 = v0[1];

  return v6(v4);
}

uint64_t sub_10000C268()
{
  v1 = sub_10000634C(&qword_10001E000, &qword_10000FDE8);
  v0[4] = v1;
  v2 = *(v1 - 8);
  v0[5] = v2;
  v3 = *(v2 + 64) + 15;
  v0[6] = swift_task_alloc();
  v4 = sub_10000634C(&qword_10001E008, &qword_10000FDF0);
  v0[7] = v4;
  v5 = *(v4 - 8);
  v0[8] = v5;
  v6 = *(v5 + 64) + 15;
  v0[9] = swift_task_alloc();
  v7 = sub_10000634C(&qword_10001E010, &qword_10000FDF8);
  v0[10] = v7;
  v8 = *(v7 - 8);
  v0[11] = v8;
  v9 = *(v8 + 64) + 15;
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000C40C, 0, 0);
}

uint64_t sub_10000C40C()
{
  static Task<>.checkCancellation()();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v20 = v0[7];
  v21 = v0[6];
  v7 = [objc_opt_self() emptySuggestion];
  v0[14] = v7;
  v8 = [objc_opt_self() userQueryContextWithCurrentSuggestion:v7];
  v0[15] = v8;
  v9 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v9 setFetchAttributes:isa];

  v11 = objc_allocWithZone(CSSearchQuery);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 initWithQueryString:v12 queryContext:v9];
  v0[16] = v13;

  (*(v6 + 104))(v5, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v20);
  *(swift_task_alloc() + 16) = v13;
  AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();

  (*(v4 + 16))(v1, v2, v3);
  sub_10000D658(&qword_10001E018, &qword_10001E010, &qword_10000FDF8);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v0[17] = &_swiftEmptyArrayStorage;
  v14 = sub_10000D658(&qword_10001E020, &qword_10001E000, &qword_10000FDE8);
  v15 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_10000C74C;
  v17 = v0[6];
  v18 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 2, v18, v14);
}

uint64_t sub_10000C74C()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = v2[17];
    (*(v2[5] + 8))(v2[6], v2[4]);

    v5 = sub_10000CAD4;
  }

  else
  {
    v5 = sub_10000C884;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 136);
  if (*(v0 + 24))
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    v4 = *(v2 + 16);
    v1 = 0;
    if (!v4)
    {
LABEL_6:
      v8 = *(v0 + 128);
      v9 = *(v0 + 104);
      v10 = *(v0 + 112);
      v11 = *(v0 + 80);
      v12 = *(v0 + 88);

      (*(v12 + 8))(v9, v11);
      v14 = *(v0 + 96);
      v13 = *(v0 + 104);
      v15 = *(v0 + 72);
      v16 = *(v0 + 48);

      v17 = *(v0 + 8);

      return v17(v1);
    }

    v5 = (*(v0 + 136) + 32);
    while (1)
    {
      v6 = *v5++;
      v7 = __OFADD__(v1, v6);
      v1 += v6;
      if (v7)
      {
        break;
      }

      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v19 = *(v0 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 136);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_16:
    v3 = sub_10000BE5C(0, *(v3 + 2) + 1, 1, v3);
  }

  v22 = *(v3 + 2);
  v21 = *(v3 + 3);
  if (v22 >= v21 >> 1)
  {
    v3 = sub_10000BE5C((v21 > 1), v22 + 1, 1, v3);
  }

  *(v3 + 2) = v22 + 1;
  *&v3[8 * v22 + 32] = v1;
  *(v0 + 136) = v3;
  v23 = sub_10000D658(&qword_10001E020, &qword_10001E000, &qword_10000FDE8);
  v24 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v25 = swift_task_alloc();
  *(v0 + 144) = v25;
  *v25 = v0;
  v25[1] = sub_10000C74C;
  v26 = *(v0 + 48);
  v27 = *(v0 + 32);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 16, v27, v23);
}

uint64_t sub_10000CAD4()
{
  if (qword_10001D9F0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = type metadata accessor for Logger();
  sub_1000021E4(v2, qword_10001DFC0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "Could not fetch total sticker count: %@", v6, 0xCu);
    sub_100007B08(v7, &qword_10001DED0, &qword_10000FDE0);

    v9 = v0 + 16;
    v10 = v0 + 15;
    v11 = v3;
    v3 = v0[14];
  }

  else
  {
    v10 = v0 + 16;
    v11 = v0[15];
    v9 = v0 + 14;
  }

  v12 = *v10;
  v13 = v0[19];
  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];

  v16[1](v14, v15);
  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[9];
  v20 = v0[6];

  v21 = v0[1];

  return v21(-1);
}

uint64_t sub_10000CCF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000CD80;

  return sub_10000BF60();
}

uint64_t sub_10000CD80(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v6 = *v1;
  *(v2 + 24) = a1;

  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v6;
  v4[1] = sub_10000CEAC;

  return sub_10000C268();
}

uint64_t sub_10000CEAC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return _swift_task_switch(sub_10000CFAC, 0, 0);
}

uint64_t sub_10000CFAC()
{
  if (v0[3] != v0[5])
  {
    if (qword_10001D9F8 != -1)
    {
      swift_once();
    }

    dispatch thunk of StickerStore.reindexAllStickers()();
    if (qword_10001D9F0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000021E4(v1, qword_10001DFC0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Finished reindexing all stickers", v4, 2u);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000D268()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006AE0;

  return sub_10000AF0C(v2);
}

uint64_t sub_10000D314()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000807C;

  return sub_10000B7B0(v2, v3, v5);
}

uint64_t sub_10000D3D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000D414(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000807C;

  return sub_10000B898(a1, v4, v5, v7);
}

uint64_t sub_10000D4E0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000807C;

  return sub_10000BC6C(a1, v5);
}

uint64_t sub_10000D598(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006AE0;

  return sub_10000BC6C(a1, v5);
}

uint64_t sub_10000D658(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100007D14(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000D6C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000D6E0()
{
  v1 = sub_10000634C(&qword_10001E030, &qword_10000FE08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000D78C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(sub_10000634C(&qword_10001E030, &qword_10000FE08) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10000D81C()
{
  result = qword_10001E038;
  if (!qword_10001E038)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10001E038);
  }

  return result;
}

uint64_t sub_10000D870()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10000D904, v2, v1);
}

uint64_t sub_10000D904()
{
  v1 = *(v0 + 16);

  type metadata accessor for ImageGlyphDataSource();
  v2 = static ImageGlyphDataSource.sharedInstance.getter();
  dispatch thunk of ImageGlyphAggregatingDataSource.numberOfSections()();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000D980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_10000634C(&unk_10001E0F0, &qword_10000F470) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_100002280(a3, v26 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000022F0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

id sub_10000DD04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerPickerServiceAppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000DD38()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100006AE0;

  return sub_10000D870();
}

uint64_t sub_10000DDE4()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000807C;

  return static StickersOnDemandReindexer.reindexStickersIfNecessary()();
}

uint64_t sub_10000DE90(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100006AE0;

  return sub_10000BC6C(a1, v5);
}