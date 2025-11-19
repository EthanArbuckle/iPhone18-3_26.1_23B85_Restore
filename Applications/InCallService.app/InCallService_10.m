void sub_1001FE2D8(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1001FF878();
    v3 = v6;
  }

  v4 = *(v3 + 16);
  if (v4 <= a1)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - 1;
    sub_10003D890((v3 + 16 * a1 + 48), v4 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v5;
    *v1 = v3;
  }
}

void sub_1001FE3CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_100008E10();
  v25 = v24;
  v27 = v26;
  v28 = sub_1001FDB8C();
  v29 = 0;
  v30 = 0;
  v31 = *(v28 + 16);
  while (v31 != v30)
  {
    if (v30 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_21;
    }

    v32 = *(v28 + v29 + 32);
    sub_100007BC4();
    v33 = v32;
    v34 = static NSObject.== infix(_:_:)();

    if (v34)
    {

      if (qword_1003A9FB8 != -1)
      {
        sub_1000078D4();
      }

      v41 = type metadata accessor for Logger();
      sub_1000058D0(v41, &unk_1003B8978);
      v42 = v27;
      v43 = Logger.logObject.getter();
      static os_log_type_t.default.getter();

      if (sub_100012B38())
      {
        sub_100005384();
        v44 = sub_100025300();
        sub_100005CD0(v44, 5.7779e-34);
        sub_100009708(&_mh_execute_header, v45, v46, "EnhancedEmergency: insert web view controller under button controls: %@");
        sub_100153D2C(v44);
        sub_1000053DC();
        sub_100005340();
      }

      swift_getKeyPath();
      sub_1001FF820();
      v47 = v42;
      sub_100008174();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_100008D98();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v48 = OBJC_IVAR____TtC13InCallService37ClarityUIEnhancedEmergencyCoordinator__viewControllers;
      sub_1000086F0();
      v49 = *(v25 + v48);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + v48) = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1001FF878();
        v49 = v53;
        *(v25 + v48) = v53;
      }

      if (v30 >= *(v49 + 16))
      {
        __break(1u);
      }

      else
      {
        v51 = v49 + v29;
        v52 = *(v49 + v29 + 32);
        *(v51 + 32) = v42;
        *(v51 + 40) = 0;
        *(v25 + v48) = v49;
        swift_endAccess();

        swift_getKeyPath();
        sub_100008D98();
        ObservationRegistrar.didSet<A, B>(_:keyPath:)();

        sub_10000681C();
      }

      return;
    }

    ++v30;
    v29 += 16;
  }

  if (qword_1003A9FB8 == -1)
  {
    goto LABEL_7;
  }

LABEL_21:
  sub_1000078D4();
LABEL_7:
  v35 = type metadata accessor for Logger();
  sub_1000058D0(v35, &unk_1003B8978);
  v54 = v27;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    sub_100005384();
    v38 = sub_1000059A8();
    *v27 = 138412290;
    *(v27 + 1) = v54;
    *v38 = v54;
    v54;
    _os_log_impl(&_mh_execute_header, v36, v37, "EnhancedEmergency: tried to insert web view controller under button controls, but it was already gone: %@", v27, 0xCu);
    sub_100153D2C(v38);
    sub_100005BB8();
    sub_100005368();
  }

  sub_10000681C();
}

void sub_1001FE77C(void *a1, const char *a2, const char *a3)
{
  v4 = sub_1001FDB8C();
  v5 = 0;
  v6 = *(v4 + 16);
  v7 = 32;
  while (v6 != v5)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_18;
    }

    v8 = *(v4 + v7);
    sub_1000064BC(0, &qword_1003AB7A0);
    v9 = v8;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      if (qword_1003A9FB8 != -1)
      {
        sub_1000078D4();
      }

      v15 = type metadata accessor for Logger();
      sub_1000058D0(v15, &unk_1003B8978);
      v16 = a1;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = sub_100005384();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&_mh_execute_header, v17, v18, a2, v19, 0xCu);
        sub_100153D2C(v20);
        sub_100005BB8();
        sub_100005BB8();
      }

      swift_getKeyPath();
      sub_1001FF820();
      sub_10000C5B0();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10000C5B0();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_1001FE2D8(v5);
      v23 = v22;
      swift_endAccess();

      swift_getKeyPath();
      sub_10000FFFC();

      return;
    }

    ++v5;
    v7 += 16;
  }

  if (qword_1003A9FB8 == -1)
  {
    goto LABEL_7;
  }

LABEL_18:
  sub_1000078D4();
LABEL_7:
  v11 = type metadata accessor for Logger();
  sub_1000058D0(v11, &unk_1003B8978);
  v12 = a1;
  osloga = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(osloga, v13))
  {
    sub_100005384();
    v14 = sub_1000059A8();
    sub_10000883C(v14, 5.7779e-34);
    _os_log_impl(&_mh_execute_header, osloga, v13, a3, v5, 0xCu);
    sub_100153D2C(v14);
    sub_100005340();
    sub_100005368();
  }
}

uint64_t sub_1001FEF78(const char *a1, char a2)
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4();
  }

  v4 = type metadata accessor for Logger();
  sub_1000058D0(v4, &unk_1003B8978);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, a1, v7, 2u);
    sub_1000053DC();
  }

  return sub_1001FD4D8(a2 & 1);
}

void sub_1001FF0A8()
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4();
  }

  v0 = type metadata accessor for Logger();
  sub_1000058D0(v0, &unk_1003B8978);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "EnhancedEmergency: request haptic", v3, 2u);
    sub_100005368();
  }

  v4 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  [v4 notificationOccurred:0];
}

uint64_t sub_1001FF1FC(const char *a1, char a2, char a3)
{
  if (qword_1003A9FB8 != -1)
  {
    sub_1000078D4();
  }

  v6 = type metadata accessor for Logger();
  sub_1000058D0(v6, &unk_1003B8978);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, a1, v9, 2u);
    sub_100005BB8();
  }

  sub_1001FD4B0(a2 & 1);

  return sub_1001FD594(a3 & 1);
}

id sub_1001FF344()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostAudioOrVideoCall];

  return v1;
}

uint64_t sub_1001FF404()
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

uint64_t sub_1001FF4BC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001FF4FC(uint64_t result, int a2, int a3)
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

uint64_t sub_1001FF54C()
{
  sub_1001FF820();
  sub_100025C28();
  return ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1001FF5D4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1000064BC(0, &qword_1003B0550);
  v4 = a3;
  v5 = static NSObject.== infix(_:_:)();

  if ((v5 & 1) == 0)
  {
    if (qword_1003A9FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008A14(v6, &unk_1003B8978);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Attempted to update wrapped emergency view controller.", v8, 2u);
    }
  }
}

uint64_t sub_1001FF730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FFA7C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001FF794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001FFA7C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001FF7F8()
{
  sub_1001FFA7C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001FF820()
{
  result = qword_1003AE870;
  if (!qword_1003AE870)
  {
    type metadata accessor for ClarityUIEnhancedEmergencyCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE870);
  }

  return result;
}

unint64_t sub_1001FF924()
{
  result = qword_1003AE880;
  if (!qword_1003AE880)
  {
    sub_100155B7C(&qword_1003AE878);
    sub_1001FF9B0();
    sub_1001FFA04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE880);
  }

  return result;
}

unint64_t sub_1001FF9B0()
{
  result = qword_1003AE888;
  if (!qword_1003AE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE888);
  }

  return result;
}

unint64_t sub_1001FFA04()
{
  result = qword_1003AE890;
  if (!qword_1003AE890)
  {
    sub_100155B7C(&qword_1003AE898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE890);
  }

  return result;
}

unint64_t sub_1001FFA7C()
{
  result = qword_1003AE8A0;
  if (!qword_1003AE8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AE8A0);
  }

  return result;
}

id sub_1001FFAD8()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = [swift_getObjCClassFromMetadata() systemImageNamed:v0];

  return v1;
}

id sub_1001FFB3C(void *a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController____lazy_storage___button] = 0;
  v3[OBJC_IVAR___PHCallTranslationController_updateVisibility] = 0;
  v3[OBJC_IVAR___PHCallTranslationController_hasTranslationActivity] = 0;
  sub_100006D28();
  sub_100006D28();
  swift_unknownObjectWeakInit();
  sub_100006D28();
  sub_100006D28();
  *&v3[OBJC_IVAR___PHCallTranslationController_currentCall] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_currentWorker] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_currentTask] = 0;
  *&v3[OBJC_IVAR___PHCallTranslationController_translationStateCancellable] = 0;
  v8 = OBJC_IVAR___PHCallTranslationController_moreMenuViewModel;
  type metadata accessor for CallTranslationMoreMenuViewModel();
  memset(&v12[1], 0, 32);
  v13 = 0;
  swift_allocObject();
  *&v3[v8] = CallTranslationMoreMenuViewModel.init(service:)();
  Logger.init(subsystem:category:)();
  swift_unknownObjectWeakAssign();
  v9 = &v3[OBJC_IVAR___PHCallTranslationController_translationStateDidChange];
  *v9 = a2;
  v9[1] = a3;
  v12[0].receiver = v3;
  v12[0].super_class = ObjectType;
  v10 = [(objc_super *)v12 init];

  return v10;
}

uint64_t sub_1001FFD6C(uint64_t a1, char a2)
{
  result = swift_unknownObjectWeakAssign();
  *(v2 + OBJC_IVAR___PHCallTranslationController_updateVisibility) = a2;
  return result;
}

uint64_t sub_1001FFDD8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker);
  *(v1 + OBJC_IVAR___PHCallTranslationController_currentWorker) = a1;

  if (v2)
  {
    CallTranslationWorker.stopTranslation()();
  }

  sub_1002014E0();
}

uint64_t sub_1001FFE84()
{
  if (!*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {
    return 0;
  }

  v1 = CallTranslationWorker.hasTranslationActivity.getter();

  return v1 & 1;
}

void sub_1001FFED4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10001F8D4();
  v7 = [v6 superview];

  if (v7)
  {

    sub_100007F98();

LABEL_4:
    [v8 v9];
    return;
  }

  swift_unknownObjectWeakAssign();
  type metadata accessor for Features();
  v11 = static Features.shared.getter();
  v12 = Features.isMoreMenuEnabled.getter();

  if (v12)
  {
    sub_100007F98();
    return;
  }

  if (a2)
  {
    sub_100007F98();

    goto LABEL_4;
  }

  v14 = OBJC_IVAR___PHCallTranslationController____lazy_storage___button;
  [*(v3 + OBJC_IVAR___PHCallTranslationController____lazy_storage___button) setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = [a1 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  [v15 addSubview:*(v3 + v14)];

  sub_10014EA98(&unk_1003AAAA0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002F96C0;
  v18 = [*(v3 + v14) topAnchor];
  v19 = [a1 view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 readableContentGuide];

  v22 = [v21 topAnchor];
  v23 = [v18 constraintEqualToAnchor:v22];

  *(v17 + 32) = v23;
  v24 = [*(v3 + v14) leadingAnchor];
  v25 = [a1 view];
  if (!v25)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = objc_opt_self();
  v28 = [v26 readableContentGuide];

  v29 = [v28 leadingAnchor];
  v30 = [v24 constraintEqualToAnchor:v29];

  *(v17 + 40) = v30;
  sub_1000064BC(0, &qword_1003AAF70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];
  sub_100007F98();
}

uint64_t sub_1002002AC()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AE988);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v14 - v8;
  v10 = OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel;
  if (*(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel))
  {
    v11 = *(v1 + OBJC_IVAR___PHCallTranslationController____lazy_storage___viewModel);
  }

  else
  {
    type metadata accessor for LanguageSelectionViewModel();
    static Locale.current.getter();
    v12 = type metadata accessor for Locale();
    sub_100006848(v9, 0, 1, v12);
    static Locale.current.getter();
    sub_100006848(v6, 0, 1, v12);
    v11 = LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)();
    *(v1 + v10) = v11;
  }

  return v11;
}

uint64_t sub_1002003F4()
{
  v0 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v0 - 8, v1);
  v3 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4, v5);
  v6 = sub_10014EA98(&qword_1003AE988);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v21 - v8;
  v10 = type metadata accessor for CallTranslationLanguagePicker();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    sub_100006848(v9, 1, 1, v4);
    sub_1002002AC();
    v21[1] = v3;
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v19 = v16;

    static Locale.current.getter();
    CallTranslationLanguagePicker.init(current:possibleLocale:viewModel:useTranslationPicker:shouldShowCancelButton:languageSelected:wantsToDismiss:)();

    sub_100201D78(&qword_1003AE990, &type metadata accessor for CallTranslationLanguagePicker);
    v20 = View.inLockScreenHostingController()();
    [v20 setModalPresentationStyle:1];
    [v20 setOverrideUserInterfaceStyle:2];
    static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
    dispatch thunk of UIHostingController.sizingOptions.setter();
    [v19 presentViewController:v20 animated:1 completion:0];

    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

void sub_100200720(int a1, int a2, id a3)
{
  [a3 dismissViewControllerAnimated:1 completion:0];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1002007A8();
  }
}

void sub_1002007A8()
{
  if (*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {

    if ((CallTranslationWorker.hasTranslationActivity.getter() & 1) == 0)
    {
      CallTranslationWorker.startTranslation(local:remote:)();
    }
  }
}

void sub_100200824()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1002003F4();
  }
}

void sub_100200878(char a1)
{
  (*(v1 + OBJC_IVAR___PHCallTranslationController_translationStateDidChange))();
  if ((a1 & 1) == 0 || (sub_1002008F0() & 1) == 0)
  {

    sub_1002010D4(a1 & 1);
  }
}

uint64_t sub_1002008F0()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if (!*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
    {

      return 0;
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      Strong = CallTranslationWorker.createTranscriptsViewController()().super.super.isa;
      swift_unknownObjectWeakAssign();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      result = [Strong view];
      if (result)
      {
        v4 = result;
        v5 = [result superview];

        if (v5)
        {

          return 0;
        }

        [v2 addChildViewController:Strong];
        result = [Strong view];
        if (result)
        {
          v30 = result;
          sub_100201368(result, &selRef_callTranslationControllerWithShouldAddTranslationViewToHost_);

          [Strong didMoveToParentViewController:v2];

          return 1;
        }

        goto LABEL_35;
      }

      __break(1u);
    }

    else
    {
      result = [Strong view];
      if (result)
      {
        v6 = result;
        [result removeFromSuperview];

        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          result = [v2 view];
          if (!result)
          {
            goto LABEL_41;
          }
        }

        v7 = result;
        [v2 addChildViewController:Strong];
        result = [Strong view];
        if (result)
        {
          v8 = result;
          [result setTranslatesAutoresizingMaskIntoConstraints:0];

          v9 = swift_unknownObjectWeakLoadStrong();
          result = [Strong view];
          v10 = result;
          if (v9)
          {
            if (!result)
            {
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }

            v48 = v7;
            [v7 addSubview:result];

            sub_10014EA98(&unk_1003AAAA0);
            v11 = swift_allocObject();
            *(v11 + 16) = xmmword_1002FB360;
            result = [Strong view];
            if (!result)
            {
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }

            v12 = result;
            v13 = [result leadingAnchor];

            v14 = [v9 leadingAnchor];
            v15 = [v13 constraintEqualToAnchor:v14];

            *(v11 + 32) = v15;
            result = [Strong view];
            if (!result)
            {
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v16 = result;
            v17 = [result trailingAnchor];

            v18 = [v9 trailingAnchor];
            v19 = [v17 constraintEqualToAnchor:v18];

            *(v11 + 40) = v19;
            result = [Strong view];
            if (!result)
            {
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

            v20 = result;
            v21 = [result topAnchor];

            v22 = [v9 topAnchor];
            v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];

            *(v11 + 48) = v23;
            result = [Strong view];
            if (!result)
            {
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
              goto LABEL_42;
            }

            v24 = result;
            v25 = objc_opt_self();
            v26 = [v24 bottomAnchor];

            v27 = [v9 bottomAnchor];
            v28 = [v26 constraintEqualToAnchor:v27];

            *(v11 + 56) = v28;
            sub_1000064BC(0, &qword_1003AAF70);
            v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v25 activateConstraints:v29.super.isa];

            v7 = v48;
          }

          else
          {
            if (!result)
            {
LABEL_42:
              __break(1u);
              goto LABEL_43;
            }

            [v7 addSubview:result];

            sub_10014EA98(&unk_1003AAAA0);
            v31 = swift_allocObject();
            *(v31 + 16) = xmmword_1002FB360;
            result = [Strong view];
            if (!result)
            {
LABEL_43:
              __break(1u);
              goto LABEL_44;
            }

            v32 = result;
            v33 = [result leadingAnchor];

            v34 = [v7 leadingAnchor];
            v35 = [v33 constraintEqualToAnchor:v34];

            *(v31 + 32) = v35;
            result = [Strong view];
            if (!result)
            {
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

            v36 = result;
            v37 = [result trailingAnchor];

            v38 = [v7 trailingAnchor];
            v39 = [v37 constraintEqualToAnchor:v38];

            *(v31 + 40) = v39;
            result = [Strong view];
            if (!result)
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v40 = result;
            v41 = [result centerYAnchor];

            v42 = [v7 centerYAnchor];
            v43 = [v41 constraintEqualToAnchor:v42];

            *(v31 + 48) = v43;
            result = [Strong view];
            if (!result)
            {
LABEL_46:
              __break(1u);
              return result;
            }

            v44 = result;
            v45 = objc_opt_self();
            v46 = [v44 heightAnchor];

            v47 = [v46 constraintEqualToConstant:300.0];
            *(v31 + 56) = v47;
            sub_1000064BC(0, &qword_1003AAF70);
            v29.super.isa = Array._bridgeToObjectiveC()().super.isa;

            [v45 activateConstraints:v29.super.isa];
          }

          [Strong didMoveToParentViewController:v2];

          return 0;
        }

        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void sub_1002010D4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*(v1 + OBJC_IVAR___PHCallTranslationController_updateVisibility) == 1)
  {
    v15 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    v5 = [v15 view];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        [v4 callTranslationControllerWithShouldRemoveTranslationViewFromHost:v5];
        swift_unknownObjectRelease();

        Strong = v15;
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v5)
    {
      [v5 setHidden:0];

      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v15;
      v9 = a1 & 1;
      *(v8 + 24) = a1 & 1;
      v20 = sub_100201D50;
      v21 = v8;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_10002E570;
      v19 = &unk_10035FE50;
      v10 = _Block_copy(&aBlock);
      v11 = v15;

      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v9;
      v20 = sub_100201D5C;
      v21 = v12;
      aBlock = _NSConcreteStackBlock;
      v17 = 1107296256;
      v18 = sub_100164920;
      v19 = &unk_10035FEA0;
      v13 = _Block_copy(&aBlock);
      v14 = v11;

      [v7 animateWithDuration:4 delay:v10 options:v13 animations:0.2 completion:0.0];

      _Block_release(v13);
      _Block_release(v10);
      return;
    }

    __break(1u);
    return;
  }

LABEL_6:
}

void *sub_100201368(uint64_t a1, SEL *a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result *a2];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1002013DC(void *a1, char a2)
{
  v3 = [a1 view];
  if (v3)
  {
    v4 = 0.0;
    if (a2)
    {
      v4 = 1.0;
    }

    v5 = v3;
    [v3 setAlpha:v4];
  }

  else
  {
    __break(1u);
  }
}

void sub_100201454(char a1, id a2, char a3)
{
  if (a1)
  {
    v4 = [a2 view];
    if (v4)
    {
      v5 = v4;
      [v4 setHidden:(a3 & 1) == 0];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002014E0()
{
  v1 = v0;
  v2 = sub_10014EA98(&qword_1003AC968);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v16 - v4;
  v6 = sub_10014EA98(&qword_1003AE968);
  v8 = __chkstk_darwin(v6, v7);
  v11 = &v16 - v10;
  if (*(v0 + OBJC_IVAR___PHCallTranslationController_currentWorker))
  {
    v18 = v8;
    v19 = v9;

    v17 = CallTranslationWorker.hasTranslationActivityPublisher.getter();
    v21 = v17;
    v12 = [objc_opt_self() mainRunLoop];
    v20 = v12;
    v13 = type metadata accessor for NSRunLoop.SchedulerOptions();
    sub_100006848(v5, 1, 1, v13);
    sub_10014EA98(&qword_1003AE970);
    sub_1000064BC(0, &qword_1003AC978);
    sub_100027E08(&qword_1003AE978, &qword_1003AE970);
    sub_1001B95E8();
    Publisher.receive<A>(on:options:)();
    sub_10000830C(v5, &qword_1003AC968);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100027E08(&qword_1003AE980, &qword_1003AE968);
    v14 = v18;
    v15 = Publisher<>.sink(receiveValue:)();

    (*(v19 + 8))(v11, v14);
    *(v1 + OBJC_IVAR___PHCallTranslationController_translationStateCancellable) = v15;
  }

  else
  {

    sub_10020180C(0);
  }
}

void sub_10020180C(char a1)
{
  v2 = *(v1 + OBJC_IVAR___PHCallTranslationController_hasTranslationActivity);
  *(v1 + OBJC_IVAR___PHCallTranslationController_hasTranslationActivity) = a1;
  sub_100201880(v2);
}

void sub_100201824(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10020180C(v1);
  }
}

void sub_100201880(char a1)
{
  v2 = OBJC_IVAR___PHCallTranslationController_hasTranslationActivity;
  if (v1[OBJC_IVAR___PHCallTranslationController_hasTranslationActivity] != (a1 & 1))
  {
    v3 = v1;
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v3[v2];

      _os_log_impl(&_mh_execute_header, v5, v6, "hasTranslationActivity changed to %{BOOL}d", v7, 8u);
    }

    else
    {

      v5 = v4;
    }

    v8 = v3[v2];
    v9 = sub_10001F8D4();
    v10 = v9;
    v11 = (v8 & 1) != 0 || *(&v4->isa + OBJC_IVAR___PHCallTranslationController_currentWorker) == 0;
    [v9 setHidden:v11];

    sub_100200878(v3[v2]);
  }
}

uint64_t sub_100201A5C()
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for CallTranslationController()
{
  result = qword_1003AE950;
  if (!qword_1003AE950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100201C6C()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_100201D78(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_100201DC8()
{
  result = String._bridgeToObjectiveC()();
  qword_1003AE9A0 = result;
  return result;
}

NSString sub_100201E00()
{
  result = String._bridgeToObjectiveC()();
  qword_1003AE9A8 = result;
  return result;
}

uint64_t sub_100201E38(void *a1)
{
  type metadata accessor for DeclineCallService();
  v2 = swift_allocObject();
  sub_1002025F4(a1);
  return v2;
}

id sub_100201ED8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeclineCallServiceFactory();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100201F30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeclineCallServiceFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100201FA4()
{
  v0 = objc_opt_self();

  return [v0 setShouldForceDismiss];
}

id sub_100201FDC()
{
  v0 = objc_opt_self();

  return [v0 setShouldLockDeviceOnNextDismiss];
}

void sub_100202014(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 delegate];

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 currentInCallScene];
      if (v5)
      {
        v6 = v5;
        [v5 requestTransitionToPresentationMode:0 isUserInitiated:0 analyticsSource:a1];
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1002020F8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 209) = a3;
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  type metadata accessor for MainActor();
  *(v3 + 160) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 168) = v5;
  *(v3 + 176) = v4;

  return _swift_task_switch(sub_100202194, v5, v4);
}

uint64_t sub_100202194()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];
  *(v0 + 184) = v2;

  if (!v2)
  {
    goto LABEL_9;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_9:

    goto LABEL_10;
  }

  v4 = [v3 answeringMachine];
  *(v0 + 192) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + 209);
    v7 = String._bridgeToObjectiveC()();
    *(v0 + 200) = v7;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_100202428;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_10014EA98(&qword_1003AEB28);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1002025B0;
    *(v0 + 104) = &unk_10035FF90;
    *(v0 + 112) = v8;
    [v5 screenCallWithUUID:v7 manualScreening:v6 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  swift_unknownObjectRelease();
LABEL_10:
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C();
  }

  v9 = type metadata accessor for Logger();
  sub_1000058D0(v9, &unk_1003B8850);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (sub_10000843C(v11))
  {
    v12 = sub_100005924();
    sub_100005DF4(v12);
    sub_10000C5C0(&_mh_execute_header, v13, v14, "AudioCallViewControllerCallManager: could not screen because there is no answering machine");
    sub_100005368();
  }

  v15 = *(v0 + 8);

  return v15(0);
}

uint64_t sub_100202428()
{
  sub_100006610();
  sub_1000058C4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_100202528, v2, v1);
}

uint64_t sub_100202528()
{
  sub_1000058A8();
  v1 = *(v0 + 200);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v2 = *(v0 + 208);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1002025B0(uint64_t a1, char a2)
{
  v3 = *sub_100008878((a1 + 32), *(a1 + 56));

  return sub_10021A980(v3, a2);
}

void *sub_1002025F4(uint64_t a1)
{
  v1[3] = [objc_allocWithZone(CNKCoreAnalyticsReporter) init];
  v1[4] = sub_100201F88;
  v1[5] = 0;
  v1[6] = sub_100201FA4;
  v1[7] = 0;
  v1[8] = sub_100201FDC;
  v1[9] = 0;
  v1[10] = sub_100202014;
  v1[11] = 0;
  v1[12] = &unk_1002FFA80;
  v1[13] = 0;
  v1[2] = a1;
  return v1;
}

uint64_t sub_10020269C()
{
  sub_100006610();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 92) = v3;
  *(v1 + 16) = v4;
  type metadata accessor for MainActor();
  *(v1 + 40) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 48) = v6;
  *(v1 + 56) = v5;

  return _swift_task_switch(sub_100202738, v6, v5);
}

void sub_100202738()
{
  v1 = *(*(v0 + 32) + 32);

  LOBYTE(v1) = v1(v2);

  if (v1)
  {
    if (([*(v0 + 16) isScreening] & 1) == 0)
    {
      v25 = *(v0 + 16);
      *(v0 + 64) = *(*(v0 + 32) + 104);

      v26 = [v25 callUUID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      *(v0 + 72) = v28;
      v29 = swift_task_alloc();
      *(v0 + 80) = v29;
      *v29 = v0;
      v29[1] = sub_100202B90;
      sub_1000059C4();

      __asm { BRAA            X3, X16 }
    }

    if (![*(v0 + 16) isScreening] || objc_msgSend(*(v0 + 16), "isScreening") && objc_msgSend(*(v0 + 16), "resolvedStatus") == 4)
    {
      if (qword_1003A9F50 != -1)
      {
        sub_10000706C();
      }

      v3 = *(v0 + 16);
      v4 = type metadata accessor for Logger();
      sub_1000058D0(v4, &unk_1003B8850);
      v5 = v3;
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = *(v0 + 16);
        v9 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v9 = 136315394;
        *(v0 + 96) = [v8 isScreening];
        v10 = String.init<A>(reflecting:)();
        sub_100008ADC(v10, v11, &v45);

        *(v0 + 88) = sub_10003621C();
        type metadata accessor for TUCallStatus(0);
        v12 = String.init<A>(reflecting:)();
        v14 = sub_100008ADC(v12, v13, &v45);

        *(v9 + 14) = v14;
        sub_100008E54(&_mh_execute_header, v15, v16, "DeclineCallService: Disconnecting call because screening did not start, isScreening: %s resolvedStatus: %s");
        swift_arrayDestroy();
        sub_100005BB8();
        sub_100005BB8();
      }

      v17 = sub_100005CEC();
      [v17 disconnectCall:v18 withReason:v19];
    }

    else
    {
      if (qword_1003A9F50 != -1)
      {
        sub_10000706C();
      }

      v32 = type metadata accessor for Logger();
      sub_1000058D0(v32, &unk_1003B8850);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        *sub_100005924() = 0;
        sub_1000054BC(&_mh_execute_header, v35, v36, "DeclineCallService: Not disconnecting call because it is an active call");
        sub_100005BB8();
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (sub_10000843C(v38))
      {
        v39 = sub_100005924();
        sub_100005DF4(v39);
        sub_10000C5C0(&_mh_execute_header, v40, v41, "DeclineCallService: user declined to answer call, dismiss ICS for call screening");
        sub_100005368();
      }

      v42 = *(v0 + 24);
      v43 = *(v0 + 32);

      v44 = *(v43 + 80);

      v44(v42);
    }
  }

  else
  {
    v20 = *(v0 + 32);
    v21 = *(v0 + 92);
    v22 = *(v0 + 16);

    [*(v20 + 16) disconnectCall:v22 withReason:v21];
  }

  sub_10000535C();
  sub_1000059C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_100202B90()
{
  sub_1000058A8();
  sub_1000054B0();
  *(v0 + 97) = v1;

  sub_1000253A0();
  v3 = *(v2 + 56);
  v4 = *(v0 + 48);

  return _swift_task_switch(sub_100202CEC, v4, v3);
}

void sub_100202CEC()
{
  v1 = *(v0 + 97);

  if ((v1 & 1) == 0)
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C();
    }

    v2 = type metadata accessor for Logger();
    sub_1000058D0(v2, &unk_1003B8850);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (sub_10000843C(v4))
    {
      v5 = sub_100005924();
      sub_100005DF4(v5);
      sub_10000C5C0(&_mh_execute_header, v6, v7, "DeclineCallService: Failed to send call to screening");
      sub_100005368();
    }
  }

  if (![*(v0 + 16) isScreening] || objc_msgSend(*(v0 + 16), "isScreening") && objc_msgSend(*(v0 + 16), "resolvedStatus") == 4)
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C();
    }

    v8 = *(v0 + 16);
    v9 = type metadata accessor for Logger();
    sub_1000058D0(v9, &unk_1003B8850);
    v10 = v8;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 16);
      v14 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v14 = 136315394;
      *(v0 + 96) = [v13 isScreening];
      v15 = String.init<A>(reflecting:)();
      sub_100008ADC(v15, v16, &v37);

      *(v0 + 88) = sub_10003621C();
      type metadata accessor for TUCallStatus(0);
      v17 = String.init<A>(reflecting:)();
      v19 = sub_100008ADC(v17, v18, &v37);

      *(v14 + 14) = v19;
      sub_100008E54(&_mh_execute_header, v20, v21, "DeclineCallService: Disconnecting call because screening did not start, isScreening: %s resolvedStatus: %s");
      swift_arrayDestroy();
      sub_100005BB8();
      sub_100005BB8();
    }

    [sub_100005CEC() disconnectCall:? withReason:?];
  }

  else
  {
    if (qword_1003A9F50 != -1)
    {
      sub_10000706C();
    }

    v22 = type metadata accessor for Logger();
    sub_1000058D0(v22, &unk_1003B8850);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v23, v24))
    {
      *sub_100005924() = 0;
      sub_1000054BC(&_mh_execute_header, v25, v26, "DeclineCallService: Not disconnecting call because it is an active call");
      sub_100005BB8();
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (sub_10000843C(v28))
    {
      v29 = sub_100005924();
      sub_100005DF4(v29);
      sub_10000C5C0(&_mh_execute_header, v30, v31, "DeclineCallService: user declined to answer call, dismiss ICS for call screening");
      sub_100005368();
    }

    v32 = *(v0 + 24);
    v33 = *(v0 + 32);

    v34 = *(v33 + 80);

    v34(v32);
  }

  sub_10000535C();
  sub_1000059C4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1002030E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100203180, v7, v6);
}

uint64_t sub_100203180()
{
  sub_1000058A8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v0[7] = _Block_copy(v1);
  v4 = v3;
  v5 = v2;

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_100203250;

  return sub_10020269C();
}

uint64_t sub_100203250()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1[7];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  v7 = sub_100030298();
  v8(v7);
  _Block_release(v2);
  sub_10000535C();

  return v9();
}

uint64_t sub_1002033A8()
{

  return v0;
}

uint64_t sub_1002033F8()
{
  sub_1002033A8();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_100203450()
{
  sub_100006610();
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_1002034E4, v3, v2);
}

uint64_t sub_1002034E4()
{
  sub_1000058A8();
  v1 = *(v0[2] + 16);
  v0[6] = v1;
  v2 = [v1 frontmostCall];
  v0[7] = v2;
  if (v2)
  {
    if (qword_1003AA0D0 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[8] = v3;
    *v3 = v0;
    v3[1] = sub_10020368C;

    return sub_10020269C();
  }

  else
  {

    if (qword_1003A9F50 != -1)
    {
      sub_10000706C();
    }

    v5 = type metadata accessor for Logger();
    sub_1000058D0(v5, &unk_1003B8850);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (sub_10000843C(v7))
    {
      v8 = sub_100005924();
      sub_100005DF4(v8);
      sub_10000C5C0(&_mh_execute_header, v9, v10, "Was told to decline answering frontmost call but no frontmost call was found.");
      sub_100005368();
    }

    sub_10000535C();

    return v11();
  }
}

uint64_t sub_10020368C()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 40);
  v6 = *(v0 + 32);

  return _swift_task_switch(sub_100203798, v6, v5);
}

uint64_t sub_100203798()
{
  sub_100006610();
  v1 = v0[6];

  if ([v1 currentCallCount] < 2)
  {
    v2 = v0[7];
  }

  else
  {
    v2 = v0[7];
    [*(v0[2] + 24) reportMultipleCallsWaitingUIAction:5];
  }

  sub_10000535C();

  return v3();
}

uint64_t sub_1002038B4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020394C, v4, v3);
}

uint64_t sub_10020394C()
{
  sub_100006610();
  v1 = v0[2];

  v0[5] = _Block_copy(v1);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1002039FC;

  return sub_100203450();
}

uint64_t sub_1002039FC()
{
  sub_100006610();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *v0;
  sub_100006870();
  *v4 = v3;

  v5 = sub_100030298();
  v6(v5);
  _Block_release(v2);
  sub_10000535C();

  return v7();
}

uint64_t sub_100203B1C()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v4;
  v1[6] = v3;

  return _swift_task_switch(sub_100203BB0, v4, v3);
}

uint64_t sub_100203BB0()
{
  sub_1000058A8();
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005924();
    sub_100005DF4(v4);
    sub_10000C5C0(&_mh_execute_header, v5, v6, "DeclineCallService: Disconnecting active call due to lock event or button press");
    sub_100005368();
  }

  v7 = *(v0 + 24);

  v8 = *(v7 + 16);
  v9 = [v8 resolvedIncomingCall];
  *(v0 + 64) = v9;
  v10 = [v8 currentAudioAndVideoCallCount];
  *(v0 + 72) = v10;
  if (v9)
  {
    v11 = *(v0 + 16);
    v9;
    [v11 resolvedCallStatus];
    if (qword_1003AA0C8 != -1)
    {
      sub_100026FD8();
    }

    v12 = swift_task_alloc();
    *(v0 + 80) = v12;
    *v12 = v0;
    v12[1] = sub_100203E98;
LABEL_13:

    return sub_10020269C();
  }

  if (v10 == 1)
  {
    if (qword_1003AA0C8 != -1)
    {
      sub_100026FD8();
    }

    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_100204098;
    goto LABEL_13;
  }

  [v8 disconnectCurrentCall];
  if (*(v0 + 72) <= 1)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (sub_10000843C(v16))
    {
      v17 = sub_100005924();
      sub_100005DF4(v17);
      sub_10000C5C0(&_mh_execute_header, v18, v19, "... and requesting lock on next dismiss");
      sub_100005368();
    }

    v20 = *(v0 + 24);

    v21 = *(v20 + 64);

    v21(v22);
  }

  sub_10000535C();

  return v23();
}

uint64_t sub_100203E98()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_100203FA4, v6, v5);
}

uint64_t sub_100203FA4()
{
  sub_1000058A8();
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);

  v3 = *(v2 + 48);

  v3(v4);

  if (*(v0 + 72) <= 1)
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_10000C5C0(&_mh_execute_header, v8, v9, "... and requesting lock on next dismiss");
      sub_100005368();
    }

    v10 = *(v0 + 24);

    v11 = *(v10 + 64);

    v11(v12);
  }

  sub_10000535C();

  return v13();
}

uint64_t sub_100204098()
{
  sub_100006610();
  sub_1000054B0();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;

  sub_1000253A0();
  v5 = *(v4 + 48);
  v6 = *(v0 + 40);

  return _swift_task_switch(sub_1002041A4, v6, v5);
}

uint64_t sub_1002041A4()
{
  sub_1000058A8();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005924();
    sub_100005DF4(v3);
    sub_10000C5C0(&_mh_execute_header, v4, v5, "... and requesting lock on next dismiss");
    sub_100005368();
  }

  v6 = *(v0 + 24);

  v7 = *(v6 + 64);

  v7(v8);

  sub_10000535C();

  return v9();
}

uint64_t sub_1002042F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100204390, v5, v4);
}

uint64_t sub_100204390()
{
  sub_1000058A8();
  v2 = v0[2];
  v1 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100204454;

  return sub_100203B1C();
}

uint64_t sub_100204454()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 16);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v6 = sub_100030298();
  v7(v6);
  _Block_release(v2);
  sub_10000535C();

  return v8();
}

uint64_t sub_100204594()
{
  sub_1000058A8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100008208;

  return sub_1002042F4(v2, v3, v4);
}

uint64_t sub_100204644()
{
  sub_1000058A8();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100008204;

  return sub_1002038B4(v2, v3);
}

uint64_t sub_1002046EC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100008204;

  return sub_1002030E0(v2, v3, v4, v6, v5);
}

void *sub_1002047E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window);
  v2 = v1;
  return v1;
}

void sub_100204888(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000064BC(0, &qword_1003AAAB0);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  type metadata accessor for ActivityScene();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for SecureWindow());
  v13 = a1;
  v14 = [v12 initWithWindowScene:v11];
  v15 = *(v2 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window);
  *(v2 + OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window) = v14;
  v16 = v14;

  v17 = v16;
  v18 = [v11 coordinateSpace];

  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  swift_unknownObjectRelease();
  [v17 setFrame:{v20, v22, v24, v26}];

  v31[15] = 0;
  State.init(wrappedValue:)();
  v27 = objc_allocWithZone(sub_10014EA98(&qword_1003AEB68));
  v28 = LockScreenHostingController.init(rootView:)();
  v29 = [v28 view];
  if (!v29)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 setBackgroundColor:0];

  [v17 setRootViewController:v28];
  [v17 makeKeyAndVisible];
}

id sub_100204BF4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC13InCallService27AmbientCompactSceneDelegate_window] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t sub_100204C90(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100204CE4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100204D60@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_10014EA98(&qword_1003AEB70);
  sub_100204EC0(a1, a2, a3 + *(v7 + 44));
  v8 = [objc_opt_self() defaultCenter];
  v9 = sub_10014EA98(&qword_1003AEB78);
  NSNotificationCenter.publisher(for:object:)();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = (a3 + *(v9 + 56));
  *v11 = sub_100205508;
  v11[1] = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = (a3 + *(sub_10014EA98(&unk_1003AEB80) + 36));
  *v13 = sub_100205514;
  v13[1] = v12;
  v13[2] = 0;
  v13[3] = 0;
  return swift_retain_n();
}

uint64_t sub_100204EC0@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  v5 = sub_10014EA98(&qword_1003AEB90);
  __chkstk_darwin(v5, v6);
  v8 = (&v33 - v7);
  v40 = type metadata accessor for SymbolEffectOptions();
  v9 = *(v40 - 8);
  __chkstk_darwin(v40, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PulseSymbolEffect();
  v39 = *(v13 - 8);
  __chkstk_darwin(v13, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10014EA98(&qword_1003AEB98);
  __chkstk_darwin(v17, v18);
  v20 = (&v33 - v19);
  v43 = a1;
  v44 = a2;
  sub_10014EA98(&qword_1003AFBC0);
  State.wrappedValue.getter();
  LODWORD(a2) = v42;
  v21 = Image.init(systemName:)();
  if (a2 == 1)
  {
    v37 = static Color.red.getter();
    KeyPath = swift_getKeyPath();
    PulseSymbolEffect.init()();
    static SymbolEffectOptions.repeating.getter();
    v38 = v17;
    v22 = v20 + *(v17 + 36);
    v23 = type metadata accessor for _IndefiniteSymbolEffectModifier();
    v34 = v21;
    v35 = v5;
    v24 = v23;
    v25 = v9;
    v26 = *(v9 + 16);
    v27 = v40;
    v26(&v22[*(v23 + 20)], v12, v40);
    sub_100205694(&qword_1003AEBD0, &type metadata accessor for PulseSymbolEffect);
    dispatch thunk of SymbolEffect.configuration.getter();
    (*(v25 + 8))(v12, v27);
    (*(v39 + 8))(v16, v13);
    v22[*(v24 + 24)] = 1;
    v29 = KeyPath;
    v28 = v37;
    *v20 = v34;
    v20[1] = v29;
    v20[2] = v28;
    sub_1002056DC(v20, v8);
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AEBA0);
    sub_100205520();
    sub_1002055DC();
    _ConditionalContent<>.init(storage:)();
    return sub_1000306A4(v20, &qword_1003AEB98);
  }

  else
  {
    v31 = static Color.green.getter();
    v32 = swift_getKeyPath();
    *v8 = v21;
    v8[1] = v32;
    v8[2] = v31;
    swift_storeEnumTagMultiPayload();
    sub_10014EA98(&qword_1003AEBA0);
    sub_100205520();
    sub_1002055DC();
    return _ConditionalContent<>.init(storage:)();
  }
}

void sub_1002052E8()
{
  Notification.object.getter();
  if (v2)
  {
    sub_1000064BC(0, &qword_1003ADBE0);
    if (swift_dynamicCast())
    {
      sub_1002053A0(v0);
    }
  }

  else
  {
    sub_1000306A4(v1, &unk_1003AAF50);
  }
}

uint64_t sub_1002053A0(void *a1)
{
  v1 = [a1 recordingSession];
  if (v1)
  {
    v2 = v1;
    [v1 recordingState];
  }

  sub_10014EA98(&qword_1003AFBC0);
  return State.wrappedValue.setter();
}

void sub_100205448()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 frontmostCall];

  if (v1)
  {
    sub_1002053A0(v1);
  }
}

unint64_t sub_100205520()
{
  result = qword_1003AEBA8;
  if (!qword_1003AEBA8)
  {
    sub_100155B7C(&qword_1003AEB98);
    sub_1002055DC();
    sub_100205694(&qword_1003AEBC8, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBA8);
  }

  return result;
}

unint64_t sub_1002055DC()
{
  result = qword_1003AEBB0;
  if (!qword_1003AEBB0)
  {
    sub_100155B7C(&qword_1003AEBA0);
    sub_100027E08(&qword_1003AC2D8, &qword_1003AEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBB0);
  }

  return result;
}

uint64_t sub_100205694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002056DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AEB98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10020574C()
{
  result = qword_1003AEBD8;
  if (!qword_1003AEBD8)
  {
    sub_100155B7C(&unk_1003AEB80);
    sub_100027E08(&unk_1003AEBE0, &qword_1003AEB78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEBD8);
  }

  return result;
}

id sub_100205804(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = String._bridgeToObjectiveC()();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() animationWithKeyPath:v2];

  return v3;
}

void sub_100205874(void *a1)
{
  sub_1001A9300();
  v2 = sub_100205804(0x7974696361706FLL, 0xE700000000000000);
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setFromValue:isa];

  v4 = Double._bridgeToObjectiveC()().super.super.isa;
  [v2 setToValue:v4];

  v5 = objc_opt_self();
  v9 = v2;
  v6 = [v5 functionWithName:kCAMediaTimingFunctionEaseIn];
  [v9 setTimingFunction:v6];

  [v9 setDuration:0.5];
  v7 = objc_opt_self();
  [v7 begin];
  [v7 setDisableActions:1];
  [a1 setNeedsLayout];
  [a1 layoutIfNeeded];
  v8 = [a1 layer];
  sub_100205B38(v9, 0x6E416E4965646166, 0xEF6E6F6974616D69, v8);

  [v7 commit];
}

id sub_100205A88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerTransitionAnimation();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_100205AE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BannerTransitionAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100205B38(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = String._bridgeToObjectiveC()();

  [a4 addAnimation:a1 forKey:v6];
}

uint64_t type metadata accessor for IncomingCallBanner()
{
  result = qword_1003AEC28;
  if (!qword_1003AEC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100205C50(void *a1)
{
  v3 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v3 - 8, v4);
  v5 = type metadata accessor for CarPlayIncomingCallView();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5, v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v13 = v29 - v12;
  *(v1 + qword_1003AEC20) = a1;
  v14 = objc_opt_self();
  v15 = a1;
  v16 = [v14 sharedInstance];
  v29[4] = sub_100206314();
  v29[5] = &protocol witness table for TUCallCenter;
  v29[1] = v16;
  CarPlayIncomingCallView.init(call:callCenter:onTap:)();
  (*(v6 + 16))(v10, v13, v5);
  v17 = UIHostingController.init(rootView:)();
  v18 = [v17 view];
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  v19 = v18;
  [v18 systemLayoutSizeFittingSize:{UILayoutFittingCompressedSize.width, UILayoutFittingCompressedSize.height}];
  v21 = v20;
  v23 = v22;

  [v17 setPreferredContentSize:{v21, v23}];
  v24 = v17;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v25 = [v24 view];
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = v25;
  v27 = [objc_opt_self() clearColor];
  [v26 setBackgroundColor:v27];

  v28 = [v24 view];
  if (v28)
  {
    sub_100206358(0xD00000000000001BLL, 0x80000001002ACD20, v28);

    (*(v6 + 8))(v13, v5);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_100205F7C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 showCarPlayUIWithActivation:1];
    }

    swift_unknownObjectRelease();
  }
}

id sub_100206108()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IncomingCallBanner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100206160(void *a1)
{
  sub_100206198();

  return a1;
}

id sub_1002061A0(void *a1)
{
  v1 = a1;
  sub_100206208();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

unint64_t sub_100206208()
{
  v1 = [*(v0 + qword_1003AEC20) uniqueProxyIdentifier];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000014;
}

id sub_1002062A8()
{
  sub_1002062F8();
  v0 = String._bridgeToObjectiveC()();

  return v0;
}

unint64_t sub_100206314()
{
  result = qword_1003AAC20;
  if (!qword_1003AAC20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003AAC20);
  }

  return result;
}

void sub_100206358(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setAccessibilityIdentifier:v4];
}

void sub_1002063D4()
{
  sub_100190A04();
  v1 = v0;
  v3 = v2;
  sub_100017230(v2);
  specialized ContiguousArray.reserveCapacity(_:)();
  v4 = sub_100017230(v3);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_12;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v1(0);
    sub_100008524();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();

LABEL_12:
      sub_100007F98();
      return;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100211C10();
    sub_1002119B8();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

id sub_100206510(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_1000064BC(0, &qword_1003AB7A0);
    Dictionary._bridgeToObjectiveC()();
    sub_10000594C();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002065A8(void **a1, uint64_t a2, void **a3)
{

  v7 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100211AA0())
  {
    v8 = sub_100190988();
    v21 = swift_slowAlloc();
    aBlock = a1;
    *v8 = 136315394;
    v23 = a2;

    v9 = String.init<A>(reflecting:)();
    sub_100008ADC(v9, v10, &v21);
    sub_100211A30();
    *(v8 + 4) = v3;
    *(v8 + 12) = 2080;
    aBlock = a3;

    sub_10014EA98(&qword_1003AE0F8);
    v11 = String.init<A>(reflecting:)();
    sub_100008ADC(v11, v12, &v21);
    sub_100211A30();
    *(v8 + 14) = v3;
    sub_1000085F4();
    _os_log_impl(v13, v14, v15, v16, v17, 0x16u);
    swift_arrayDestroy();
    sub_100006A58();
    sub_1000053DC();
  }

  v18 = String._bridgeToObjectiveC()();
  sub_100005C44();
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  v26 = sub_1001A6000;
  v27 = v19;
  aBlock = _NSConcreteStackBlock;
  v23 = 1107296256;
  v24 = sub_100206510;
  v25 = &unk_1003604E0;
  v20 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v20);
}

uint64_t sub_1002067C4@<X0>(uint64_t *a1@<X8>)
{
  v3 = swift_allocObject();
  sub_10014EA98(&qword_1003AF000);
  v4 = type metadata accessor for MessageStoreQuery();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002FB510;
  v9 = (v8 + v7);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v1 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_providers);
  *v9 = v10;
  v11 = *(v5 + 104);
  v11(v9, enum case for MessageStoreQuery.providers(_:), v4);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v1 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes);
  *(v9 + v6) = v12;
  v11((v9 + v6), enum case for MessageStoreQuery.types(_:), v4);
  *(v3 + 16) = v8;
  *a1 = v3;
  v11(a1, enum case for MessageStoreQuery.and(_:), v4);
}

uint64_t sub_10020698C()
{
  v1 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  type metadata accessor for Logger();
  sub_100006B9C();
  (*(v2 + 8))(v0 + v1);
  sub_1002115E4(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_analyticsReporter);
  sub_1000081F4(*(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_onVoicemailsChanged));
  sub_100005B2C(v0 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController);
}

id sub_100206A6C()
{
  ObjectType = swift_getObjectType();
  sub_100008878(&v0[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController], *&v0[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController + 24]);

  MessageStoreController.removeDelegate(_:)();

  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100206C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100190A04();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;

  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();

  if (sub_100211AA0())
  {
    v30 = sub_100005384();
    a10 = sub_100005D4C();
    *v30 = 136315138;
    v31 = sub_1001C029C(v28, v26);
    sub_100008ADC(v31, v32, &a10);
    sub_100211A30();
    *(v30 + 4) = v22;
    sub_1000085F4();
    _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
    sub_1000054DC();
    sub_1000053DC();
  }

  sub_100005C44();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v28;
  *(v39 + 32) = v26;

  dispatch thunk of TaskQueue.async(_:)();

  sub_100007F98();
}

uint64_t sub_100206D90(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 49) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100206E5C, v5, v4);
}

uint64_t sub_100206E5C()
{
  sub_100006610();
  sub_1000055CC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_onVoicemailsChanged);
    if (v3)
    {
      v3();
    }

    v4 = *(v0 + 49);
    *(v0 + 40) = *(v0 + 64);
    *(v0 + 48) = v4;
    PassthroughSubject.send(_:)();
  }

  sub_10000535C();

  return v5();
}

uint64_t sub_100206F10()
{
  sub_100006610();
  v1[99] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v2, v3);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[100] = v4;
  v1[101] = v5;
  v6 = sub_10000CDF8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_100206FBC()
{
  sub_1000058A8();
  v0[102] = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005924();
    sub_100005DF4(v3);
    sub_100007388();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100005368();
  }

  v9 = v0[99];

  sub_100005C44();
  v10 = swift_allocObject();
  v0[103] = v10;
  *(v10 + 16) = v9;
  v11 = v9;
  sub_10014EA98(&qword_1003AEFF8);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 2, v0 + 87, sub_1002070DC, v0 + 82);
}

uint64_t sub_1002070DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000058A8();
  v15 = v14[87];
  v14[104] = v15;

  v16 = swift_task_alloc();
  v14[105] = v16;
  v17 = sub_10014EA98(&qword_1003AB0A8);
  v18 = sub_10014EA98(&qword_1003AAC00);
  *v16 = v14;
  v16[1] = sub_1002071CC;

  return Task.value.getter(v14 + 93, v15, v17, v18, &protocol self-conformance witness table for Error, v19, v20, v21, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1002071CC()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 848) = v0;

  v5 = *(v2 + 808);
  v6 = *(v2 + 800);
  if (v0)
  {
    v7 = sub_10020757C;
  }

  else
  {
    v7 = sub_100207318;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100207318()
{
  sub_100154224();
  v1 = *(v0 + 744);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100014274(v3))
  {
    v4 = sub_100005384();
    *v4 = 134349056;
    *(v4 + 4) = sub_100017230(v1);

    sub_100007F88();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    sub_100005340();
  }

  else
  {
  }

  v10 = sub_100017230(v1);
  if (!v10)
  {
LABEL_13:

    *(v0 + 856) = _swiftEmptyArrayStorage;
    v14 = sub_100207500;
    v12 = v0 + 16;
    v13 = v0 + 696;
    v15 = v0 + 752;

    return _swift_asyncLet_finish(v12, v13, v14, v15);
  }

  v11 = v10;
  v12 = specialized ContiguousArray.reserveCapacity(_:)();
  if (v11 < 0)
  {
    goto LABEL_18;
  }

  v16 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_12;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v17 = *(v1 + 8 * v16 + 32);
LABEL_12:
    ++v16;
    v18 = objc_allocWithZone(type metadata accessor for FTMessage());
    sub_100008524();
    sub_1001BBA38();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    sub_100211C10();
    sub_1002119B8();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = specialized ContiguousArray._endMutation()();
    if (v11 == v16)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return _swift_asyncLet_finish(v12, v13, v14, v15);
}

uint64_t sub_10020751C()
{
  sub_100006610();

  sub_100026F44();
  v2 = *(v0 + 856);

  return v1(v2);
}

uint64_t sub_1002075B8()
{
  sub_100006610();

  sub_10000535C();

  return v0();
}

uint64_t sub_100207614(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_10014EA98(&qword_1003AA7B0);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_1002076B0, 0, 0);
}

uint64_t sub_1002076B0()
{
  sub_1000058A8();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  static TaskPriority.userInitiated.getter();
  v4 = type metadata accessor for TaskPriority();
  sub_100006848(v1, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v6 = v2;
  *v3 = sub_10016EEE8();

  sub_10000535C();

  return v7();
}

uint64_t sub_100207790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v4[5] = type metadata accessor for MessageFetchOptions();
  v4[6] = swift_task_alloc();
  v5 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for MessageStoreQuery();
  v4[10] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v4[11] = Request;
  v4[12] = *(Request - 8);
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_100207908, 0, 0);
}

uint64_t sub_100207908()
{
  sub_1001541FC();
  sub_100154224();
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  sub_1002067C4(*(v0 + 80));
  (*(v3 + 104))(v1, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v2);
  *(v0 + 16) = _swiftEmptyArrayStorage;
  sub_100007E04();
  sub_100211640(v5, v6);
  sub_10014EA98(&qword_1003AA8E8);
  sub_100155B18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  sub_10000A538();
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10021199C((v4 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController));
  v7 = swift_task_alloc();
  *(v0 + 112) = v7;
  *v7 = v0;
  v7[1] = sub_100207A88;
  sub_100211950(*(v0 + 104));
  sub_1000087B4();

  return MessageStoreController.getMessages(fetchRequest:)(v8);
}

uint64_t sub_100207A88()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 120) = v4;
  *(v2 + 128) = v0;

  if (v0)
  {
    v5 = sub_100207CB4;
  }

  else
  {
    v5 = sub_100207B90;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100207B90()
{
  sub_100006880();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (sub_10000843C(v2))
  {
    v3 = sub_100005384();
    v4 = sub_100211CA0(v3, 3.9122e-34);
    sub_100211C88(v4);
    sub_100008DB0(&_mh_execute_header, v5, v6, "Loading FTMessages gave us %{public}ld message(s).");
    sub_100005340();
  }

  else
  {
  }

  v7 = v0[15];
  v8 = v0[3];
  (*(v0[12] + 8))(v0[13], v0[11]);
  *v8 = v7;

  sub_10000535C();

  return v9();
}

uint64_t sub_100207CB4()
{
  (*(v0[12] + 8))(v0[13], v0[11]);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100005384();
    v4 = sub_100008A70();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    sub_100008DB0(&_mh_execute_header, v6, v7, "Error loading FTMessages %@");
    sub_100153D2C(v4);
    sub_1000053DC();
    sub_100005340();
  }

  swift_willThrow();

  sub_10000535C();

  return v8();
}

uint64_t sub_100207E14()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for MessageStoreQuery();
  v1[4] = v3;
  sub_100006998(v3);
  v1[5] = v4;
  v5 = sub_10021195C();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_10021195C();
  v8 = type metadata accessor for MessageID.Value(0);
  v1[10] = v8;
  sub_100005568(v8);
  v1[11] = sub_10021195C();
  v1[12] = type metadata accessor for VoicemailActor();
  v1[13] = swift_initStaticObject();
  v9 = swift_task_alloc();
  v1[14] = v9;
  *v9 = v1;
  v9[1] = sub_100207F74;
  sub_10000C1D8();

  return sub_1002121A0();
}

uint64_t sub_100207F74()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1;
  sub_1000058F8();
  *v3 = v2;
  v4 = *v0;
  sub_100006870();
  *v5 = v4;
  v2[15] = v6;

  sub_100007A14();
  sub_100211640(v7, v8);
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v2[16] = v9;
  v2[17] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002080C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();
  if (v12[15])
  {
    sub_100211A84();

    sub_100026F44();
    sub_1000087B4();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
  }

  else
  {
    sub_100153C6C(v12[2] + OBJC_IVAR___MPMessageID_value, v12[11]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v23 = v12[11];
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v12[8];
      v24 = v12[9];
      v26 = v12[6];
      v27 = v12[7];
      v28 = v12[4];
      v29 = v12[5];
      (*(v25 + 32))(v24, v23, v27);
      sub_100005C44();
      v30 = swift_allocObject();
      sub_10014EA98(&qword_1003AA8D8);
      v31 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1002FAB60;
      (*(v25 + 16))(v32 + v31, v24, v27);
      *(v30 + 16) = v32;
      *v26 = v30;
      (*(v29 + 104))(v26, enum case for MessageStoreQuery.recordUUID(_:), v28);
      v33 = swift_task_alloc();
      v12[18] = v33;
      *v33 = v12;
      v34 = sub_100208368;
    }

    else
    {
      v35 = *v23;
      sub_100005C44();
      v36 = swift_allocObject();
      sub_10014EA98(&qword_1003AEFE0);
      result = swift_allocObject();
      *(result + 16) = xmmword_1002FAB60;
      if (v35 >> 31)
      {
        __break(1u);
        return result;
      }

      v38 = v12[5];
      v37 = v12[6];
      v39 = v12[4];
      *(result + 32) = v35;
      *(v36 + 16) = result;
      *v37 = v36;
      (*(v38 + 104))(v37, enum case for MessageStoreQuery.voicemailID(_:), v39);
      v33 = swift_task_alloc();
      v12[20] = v33;
      *v33 = v12;
      v34 = sub_100208568;
    }

    v33[1] = v34;
    sub_100211950(v12[6]);
    sub_1000087B4();

    return sub_100208750();
  }
}

uint64_t sub_100208368()
{
  sub_1000303E4();
  sub_100006880();
  v1 = *v0;
  sub_1000058F8();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  sub_1000068BC();
  *v8 = v7;
  *(v10 + 152) = v9;

  (*(v5 + 8))(v4, v6);
  sub_100008BAC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002084DC()
{
  sub_1000058A8();
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[19];
  sub_100211A84();

  sub_100026F44();

  return v2(v1);
}

uint64_t sub_100208568()
{
  sub_1000303E4();
  sub_100006880();
  v1 = *v0;
  sub_1000058F8();
  *v3 = v2;
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  sub_1000068BC();
  *v8 = v7;
  *(v10 + 168) = v9;

  (*(v5 + 8))(v4, v6);
  sub_100008BAC();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_1002086DC()
{
  sub_1000058A8();
  v1 = *(v0 + 168);
  sub_100211A84();

  sub_100026F44();

  return v2(v1);
}

uint64_t sub_100208750()
{
  sub_100006610();
  v1[3] = v2;
  v1[4] = v0;
  v3 = type metadata accessor for MessageStoreFetchRequest.QuerySearchType();
  v1[5] = v3;
  sub_100006998(v3);
  v1[6] = v4;
  v1[7] = sub_10021195C();
  Options = type metadata accessor for MessageFetchOptions();
  v1[8] = Options;
  sub_100006998(Options);
  v1[9] = v6;
  v1[10] = sub_10021195C();
  v7 = type metadata accessor for MessageStoreQuery();
  v1[11] = v7;
  sub_100006998(v7);
  v1[12] = v8;
  v1[13] = sub_100211A48();
  v1[14] = swift_task_alloc();
  Request = type metadata accessor for MessageStoreFetchRequest();
  v1[15] = Request;
  sub_100006998(Request);
  v1[16] = v10;
  v1[17] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v11, v12);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[18] = v13;
  v1[19] = v14;
  v15 = sub_10000CDF8();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_100208934()
{
  sub_100179558();
  sub_100211ADC();
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[7];
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v16 = v0[4];
  v8 = *(v3 + 16);
  v0[20] = v8;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v2);
  sub_10014EA98(&qword_1003AEFE8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002FAB60;
  static MessageFetchOptions.includeProtectedApps.getter();
  v0[2] = v9;
  sub_100007E04();
  sub_100211640(v10, v11);
  sub_10014EA98(&qword_1003AA8E8);
  sub_100155B18();
  sub_100211AD0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v4, enum case for MessageStoreFetchRequest.QuerySearchType.unsorted(_:), v6);
  MessageStoreFetchRequest.init(query:sortType:options:pageSize:page:originatingBundleID:)();
  sub_10021199C((v16 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageStoreController));
  v12 = swift_task_alloc();
  v0[22] = v12;
  *v12 = v0;
  v12[1] = sub_100208B14;
  sub_100211950(v0[17]);
  sub_100008D44();

  return MessageStoreController.getMessages(fetchRequest:)(v13);
}

uint64_t sub_100208B14()
{
  sub_1000058A8();
  v2 = *v1;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_1000068BC();
  *v6 = v5;
  *(v8 + 184) = v7;
  *(v8 + 192) = v0;

  v9 = *(v2 + 152);
  v10 = *(v2 + 144);
  if (v0)
  {
    v11 = sub_100208DF8;
  }

  else
  {
    v11 = sub_100208C48;
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t sub_100208C48()
{
  sub_1000303E4();
  sub_100006880();
  v1 = v0[23];
  (*(v0[16] + 8))(v0[17], v0[15]);
  v2 = sub_100017230(v1);
  v3 = v0[23];
  if (v2)
  {
    v4 = v3 & 0xC000000000000001;
    sub_100017238(0, (v3 & 0xC000000000000001) == 0, v3);
    if (v4)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v0[23] + 32);
    }

    v6 = v0[4];

    v7 = objc_allocWithZone(type metadata accessor for FTMessage());
    v8 = v5;
    v9 = sub_1001BBA38();
    v10 = *(v6 + OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes);
    v11 = dispatch thunk of Message.messageType.getter();
    if (sub_10024BCB8(v11, v10))
    {
      sub_10014EA98(&unk_1003AAAA0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1002FBD90;
      *(v12 + 32) = v9;
      v13 = v9;
      sub_100019DBC();
      sub_10020B2D8(v12);
    }
  }

  else
  {
  }

  sub_100026F44();
  sub_100008BAC();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_100208DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100179558();
  a21 = v23;
  a22 = v24;
  sub_100211ADC();
  a20 = v22;
  v25 = v22[20];
  v26 = v22[13];
  v27 = v22[11];
  v28 = v22[3];
  (*(v22[16] + 8))(v22[17], v22[15]);
  v25(v26, v28, v27);
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100211AF4();

  v30 = os_log_type_enabled(v29, v28);
  v32 = v22[12];
  v31 = v22[13];
  v33 = v22[11];
  if (v30)
  {
    v34 = sub_100190988();
    a9 = sub_100008A70();
    a10 = sub_100005D4C();
    a11 = a10;
    *v34 = 136446466;
    sub_100211640(&qword_1003AEFF0, &type metadata accessor for MessageStoreQuery);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v36;
    (*(v32 + 8))(v31, v33);
    v38 = sub_100008ADC(v35, v37, &a11);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2112;
    swift_errorRetain();
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v39;
    *a9 = v39;
    _os_log_impl(&_mh_execute_header, v29, v28, "FaceTimeVoiceMailManager failed to retrieve message for query %{public}s because the message store threw an error %@", v34, 0x16u);
    sub_100153D2C(a9);
    sub_100005BB8();
    sub_100005B2C(a10);
    sub_100005BB8();
    sub_1000053DC();
  }

  else
  {

    (*(v32 + 8))(v31, v33);
  }

  sub_100026F44();
  sub_100008D44();

  return v42(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100209070()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100209138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002091FC, v5, v4);
}

uint64_t sub_1002091FC()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_1002092B0;
  sub_100211950(*(v0 + 16));

  return sub_100207E14();
}

uint64_t sub_1002092B0()
{
  sub_1000058A8();
  v2 = v1;
  sub_1000058C4();
  v4 = v3[5];
  v5 = v3[4];
  v6 = v3[2];
  v7 = *v0;
  sub_100006870();
  *v8 = v7;

  v4[2](v4, v2);
  _Block_release(v4);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v9();
}

uint64_t sub_100209404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002094CC, v7, v6);
}

void sub_1002094CC()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_100211860();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_1002095E0(uint64_t a1)
{
  v3 = v1;
  v5 = sub_10014EA98(&qword_1003AA7B0);
  v6 = sub_100005568(v5);
  __chkstk_darwin(v6, v7);
  v8 = sub_100211B70();
  sub_1000067D8(v2, v9, v10, v8);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v14 = sub_100211640(v12, v13);
  sub_1001906BC();
  v15 = swift_allocObject();
  v15[2] = inited;
  v15[3] = v14;
  v15[4] = v3;
  v15[5] = a1;

  sub_100211A60();
}

uint64_t sub_1002096E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002097A8, v7, v6);
}

void sub_1002097A8()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118D8();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_1002098BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209984, v7, v6);
}

void sub_100209984()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118C0();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_100209A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209B60, v7, v6);
}

void sub_100209B60()
{
  sub_1000058A8();
  if (sub_100034484())
  {
    sub_100211B0C();
    sub_1002118A8();
    sub_100209C40(v2, v3, v4);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (sub_10000843C(v6))
    {
      v7 = sub_100005924();
      sub_100005DF4(v7);
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 2u);
      sub_100005368();
    }

    v13 = *(v1 + 16);

    sub_100211928();
    if (v15)
    {
      __break(1u);
      return;
    }

    *(v13 + 24) = v14;
  }

  sub_10000535C();

  v16();
}

uint64_t sub_100209C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v5 = type metadata accessor for Logger();
  sub_10000688C();
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v10, v11);
  v12 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  sub_100005C44();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + v12, v5);
  v14 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 32))(v15 + v14, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_100209E10(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  sub_100008524();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1002095E0(v4);
}

uint64_t sub_100209E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100209F64, v6, v5);
}

void sub_100209F64()
{
  sub_1000058A8();
  v1 = sub_100034484();
  if (v1)
  {
    v2 = v1;
    sub_100211890();
    sub_10020A044();
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (sub_10000843C(v4))
    {
      v5 = sub_100005924();
      sub_100005DF4(v5);
      sub_100007388();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100005368();
    }

    v11 = *(v0 + 16);

    sub_100211928();
    if (v13)
    {
      __break(1u);
      return;
    }

    *(v11 + 24) = v12;
  }

  sub_10000535C();

  v14();
}

uint64_t sub_10020A044()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6, v7);
  v8 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  sub_100005C44();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v3 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0 + v8, v1);
  v10 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v3 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);

  dispatch thunk of TaskQueue.async(_:)();
}

uint64_t sub_10020A1E0()
{
  v1 = sub_10014EA98(&qword_1003AA7B0);
  v2 = sub_100005568(v1);
  __chkstk_darwin(v2, v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TaskPriority();
  sub_1000067D8(v5, v7, v8, v6);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v12 = sub_100211640(v10, v11);
  v13 = swift_allocObject();
  v13[2] = inited;
  v13[3] = v12;
  v13[4] = v0;

  sub_1001621BC();
}

uint64_t sub_10020A2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020A3B8, v6, v5);
}

void sub_10020A3B8()
{
  sub_1000058A8();
  v1 = sub_100034484();
  if (v1)
  {
    v2 = v1;
    sub_100211878();
    sub_10020A044();
  }

  else
  {
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (sub_10000843C(v4))
    {
      v5 = sub_100005924();
      sub_100005DF4(v5);
      sub_100007388();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_100005368();
    }

    v11 = *(v0 + 16);

    sub_100211928();
    if (v13)
    {
      __break(1u);
      return;
    }

    *(v11 + 24) = v12;
  }

  sub_10000535C();

  v14();
}

uint64_t sub_10020A4B8()
{

  sub_10020A1E0();
}

uint64_t sub_10020A50C()
{
  swift_unknownObjectWeakDestroy();
  v1 = OBJC_IVAR____TtC13InCallServiceP33_5D9AA20B476DB76FF92BC55EE5B9E59120MessageStoreDelegate_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_10020A5D8()
{
  result = type metadata accessor for Logger();
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

uint64_t sub_10020A680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020A74C, v5, v4);
}

uint64_t sub_10020A74C()
{
  v65 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  v2 = Logger.logObject.getter();
  if (Strong)
  {
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = sub_100005384();
      v64 = sub_100005D4C();
      *v4 = 136315138;
      type metadata accessor for Message();
      v5 = Array.description.getter();
      v7 = sub_100008ADC(v5, v6, &v64);

      *(v4 + 4) = v7;
      sub_100007388();
      _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
      sub_10000870C();
      sub_100005368();
    }

    v13 = *(v0 + 184);
    v14 = *&Strong[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes];
    v64 = _swiftEmptyArrayStorage;
    v15 = sub_100017230(v13);
    v16 = v13 & 0xC000000000000001;

    for (i = 0; v15 != i; ++i)
    {
      sub_100017238(i, v16 == 0, *(v0 + 184));
      if (v16)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 32 + 8 * i);
      }

      v19 = v18;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:

        sub_10014EA98(&qword_1003AA7A8);
        sub_100008524();
        v60 = _bridgeCocoaArray<A>(_:)();

        goto LABEL_42;
      }

      v20 = dispatch thunk of Message.messageType.getter();
      if (sub_10024BCB8(v20, v14))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100211BB0();
        sub_1002119B8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v21 = v64;
    v22 = sub_100017230(v64);
    v23 = v22;
    v63 = v21;
    if (v22)
    {
      if (v22 < 1)
      {
        goto LABEL_47;
      }

      v24 = 0;
      v25 = v21 & 0xC000000000000001;
      v62 = v21 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v26 = *(v21 + 8 * v24 + 32);
        }

        v27 = v26;
        v28 = dispatch thunk of Message.fileSize.getter();
        if ((v29 & 1) == 0)
        {
          v16 = v28;
          sub_10014EA98(&qword_1003AEFD8);
          v30 = v23;
          v31 = Strong;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1002FB3B0;
          *(inited + 32) = 0x6D766C5F7369;
          *(inited + 40) = 0xE600000000000000;
          sub_1000064BC(0, &qword_1003AB080);
          dispatch thunk of Message.messageType.getter();
          v33 = MessageType.rawValue.getter();
          v34 = v33 == MessageType.rawValue.getter();
          *(inited + 48) = NSNumber.init(BOOLeanLiteral:)(v34);
          *(inited + 56) = 0x6D76765F7369;
          *(inited + 64) = 0xE600000000000000;
          dispatch thunk of Message.messageType.getter();
          v35 = MessageType.rawValue.getter();
          v36 = v35 == MessageType.rawValue.getter();
          *(inited + 72) = NSNumber.init(BOOLeanLiteral:)(v36);
          *(inited + 80) = 0x6E6F697461727564;
          *(inited + 88) = 0xE800000000000000;
          dispatch thunk of Message.duration.getter();
          *(inited + 96) = [objc_allocWithZone(NSNumber) initWithDouble:round(v37)];
          *(inited + 104) = 0xD000000000000011;
          *(inited + 112) = 0x80000001002ACE70;
          *(inited + 120) = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:v16];
          Strong = v31;
          v23 = v30;
          v21 = v63;
          v38 = Dictionary.init(dictionaryLiteral:)();
          sub_1002520B8(v38);
          v40 = v39;

          sub_1002065A8(0xD00000000000002DLL, 0x80000001002ACE90, v40);
          v25 = v62;
        }

        ++v24;
      }

      while (v23 != v24);
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = sub_100005384();
      v44 = v23;
      v45 = sub_100005D4C();
      v64 = v45;
      *v43 = 136315138;
      type metadata accessor for Message();
      v46 = Array.description.getter();
      sub_100008ADC(v46, v47, &v64);
      sub_100211A30();
      *(v43 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v41, v42, "messageStoreDidAddMessages(filtered): %s", v43, 0xCu);
      sub_100005B2C(v45);
      v23 = v44;
      sub_100005BB8();
      sub_1000053DC();
    }

    if (!v23)
    {

      goto LABEL_43;
    }

    v48 = sub_100017230(v63);
    if (!v48)
    {

      v54 = _swiftEmptyArrayStorage;
LABEL_40:
      if (v54 >> 62)
      {
        goto LABEL_48;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v60 = v54;
LABEL_42:

      sub_100019DBC();
      sub_10020B2D8(v60);

      goto LABEL_43;
    }

    v49 = v48;
    v64 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v49 & 0x8000000000000000) == 0)
    {
      v51 = 0;
      do
      {
        if ((v63 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v52 = *(v63 + 8 * v51 + 32);
        }

        ++v51;
        v53 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100008524();
        sub_1001BBA38();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100211BB0();
        sub_1002119B8();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v49 != v51);

      v54 = v64;
      goto LABEL_40;
    }

    __break(1u);
  }

  else
  {
    v55 = static os_log_type_t.error.getter();
    if (sub_10000843C(v55))
    {
      v56 = sub_100005384();
      v57 = sub_100211CA0(v56, 3.852e-34);
      sub_100211C88(v57);
      sub_100008DB0(&_mh_execute_header, v58, v59, "ignoring %ld added messages, no more self");
      sub_100005340();
    }

    else
    {
    }

    Strong = v2;
LABEL_43:

    sub_10000535C();

    return v61();
  }

  return result;
}

uint64_t sub_10020AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020AF00, v5, v4);
}

uint64_t sub_10020AF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001541FC();
  a19 = v23;
  a20 = v24;
  sub_100154224();
  a18 = v20;
  sub_100014350();
  Strong = swift_unknownObjectWeakLoadStrong();

  v26 = Logger.logObject.getter();
  if (Strong)
  {
    v27 = *(v20 + 56);
    static os_log_type_t.default.getter();
    sub_100211AB8();
    if (sub_100190744())
    {
      sub_100005384();
      sub_1000089F8();
      sub_100211AE8();
      sub_100211910(4.8149e-34);
      type metadata accessor for Message();
      v28 = Array.description.getter();
      v30 = sub_100008ADC(v28, v29, &a9);

      *(v27 + 4) = v30;
      sub_100007F88();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1000054DC();
      sub_100005340();
    }

    v36 = *(v20 + 56);
    v37 = *&Strong[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes];
    a9 = _swiftEmptyArrayStorage;
    sub_100017230(v36);
    sub_100211B90();
    for (i = 0; v27 != i; ++i)
    {
      sub_100211BD0();
      if (v21)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v22 + 8 * i);
      }

      v40 = v39;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        sub_100211C30();
        sub_10014EA98(&qword_1003AA7A8);
        sub_100008524();
        _bridgeCocoaArray<A>(_:)();

        goto LABEL_33;
      }

      v41 = dispatch thunk of Message.messageType.getter();
      if (sub_10024BCB8(v41, v37))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100005B98();
        sub_1000067C0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v42 = a9;

    v43 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100211AF4();

    if (sub_100211AA0())
    {
      v44 = sub_100005384();
      sub_100005D4C();
      sub_100211AE8();
      *v44 = 136315138;
      type metadata accessor for Message();
      v45 = Array.description.getter();
      sub_100008ADC(v45, v46, &a9);
      sub_100211A30();
      *(v44 + 4) = v21;
      sub_1000085F4();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_1000054DC();
      sub_1000053DC();
    }

    if (!sub_100017230(v42))
    {

      goto LABEL_34;
    }

    v52 = sub_100017230(v42);
    if (!v52)
    {

      v58 = _swiftEmptyArrayStorage;
LABEL_31:
      if (v58 >> 62)
      {
        goto LABEL_38;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_33:

      sub_100005DAC();

      goto LABEL_34;
    }

    v53 = v52;
    a9 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v53 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v56 = *(v42 + 8 * v55 + 32);
        }

        ++v55;
        v57 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100008524();
        sub_1001BBA38();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100005B98();
        sub_1000067C0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v53 != v55);

      v58 = a9;
      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    v59 = static os_log_type_t.error.getter();
    if (sub_10000843C(v59))
    {
      v60 = sub_100005384();
      v61 = sub_100211CA0(v60, 3.852e-34);
      sub_100211C88(v61);
      sub_100008DB0(&_mh_execute_header, v62, v63, "ignoring %ld updated messages, no more self");
      sub_100005340();
    }

    else
    {
    }

    Strong = v26;
LABEL_34:

    sub_10000535C();
    sub_1000087B4();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_10020B500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020B5CC, v5, v4);
}

uint64_t sub_10020B5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1001541FC();
  a19 = v23;
  a20 = v24;
  sub_100154224();
  a18 = v20;
  sub_100014350();
  Strong = swift_unknownObjectWeakLoadStrong();

  v26 = Logger.logObject.getter();
  if (Strong)
  {
    v27 = *(v20 + 56);
    static os_log_type_t.default.getter();
    sub_100211AB8();
    if (sub_100190744())
    {
      sub_100005384();
      sub_1000089F8();
      sub_100211AE8();
      sub_100211910(4.8149e-34);
      type metadata accessor for Message();
      v28 = Array.description.getter();
      v30 = sub_100008ADC(v28, v29, &a9);

      *(v27 + 4) = v30;
      sub_100007F88();
      _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
      sub_1000054DC();
      sub_100005340();
    }

    v36 = *(v20 + 56);
    v37 = *&Strong[OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_messageTypes];
    a9 = _swiftEmptyArrayStorage;
    sub_100017230(v36);
    sub_100211B90();
    for (i = 0; v27 != i; ++i)
    {
      sub_100211BD0();
      if (v21)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v39 = *(v22 + 8 * i);
      }

      v40 = v39;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        sub_100211C30();
        sub_10014EA98(&qword_1003AA7A8);
        sub_100008524();
        _bridgeCocoaArray<A>(_:)();

        goto LABEL_33;
      }

      v41 = dispatch thunk of Message.messageType.getter();
      if (sub_10024BCB8(v41, v37))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100005B98();
        sub_1000067C0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }
    }

    v42 = a9;

    v43 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100211AF4();

    if (sub_100211AA0())
    {
      v44 = sub_100005384();
      sub_100005D4C();
      sub_100211AE8();
      *v44 = 136315138;
      type metadata accessor for Message();
      v45 = Array.description.getter();
      sub_100008ADC(v45, v46, &a9);
      sub_100211A30();
      *(v44 + 4) = v21;
      sub_1000085F4();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_1000054DC();
      sub_1000053DC();
    }

    if (!sub_100017230(v42))
    {

      goto LABEL_34;
    }

    v52 = sub_100017230(v42);
    if (!v52)
    {

      v58 = _swiftEmptyArrayStorage;
LABEL_31:
      if (v58 >> 62)
      {
        goto LABEL_38;
      }

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_33:

      sub_100005DAC();

      goto LABEL_34;
    }

    v53 = v52;
    a9 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if ((v53 & 0x8000000000000000) == 0)
    {
      v55 = 0;
      do
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v56 = *(v42 + 8 * v55 + 32);
        }

        ++v55;
        v57 = objc_allocWithZone(type metadata accessor for FTMessage());
        sub_100008524();
        sub_1001BBA38();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100005B98();
        sub_1000067C0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v53 != v55);

      v58 = a9;
      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    v59 = static os_log_type_t.error.getter();
    if (sub_10000843C(v59))
    {
      v60 = sub_100005384();
      v61 = sub_100211CA0(v60, 3.852e-34);
      sub_100211C88(v61);
      sub_100008DB0(&_mh_execute_header, v62, v63, "ignoring %ld deleted messages, no more self");
      sub_100005340();
    }

    else
    {
    }

    Strong = v26;
LABEL_34:

    sub_10000535C();
    sub_1000087B4();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_10020B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for UUID();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020BAD8, v6, v5);
}

uint64_t sub_10020BAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100179558();
  a21 = v23;
  a22 = v24;
  sub_100211ADC();
  a20 = v22;
  sub_100014350();
  Strong = swift_unknownObjectWeakLoadStrong();

  v26 = Logger.logObject.getter();
  if (Strong)
  {
    v27 = v22[7];
    static os_log_type_t.default.getter();
    sub_100211AB8();
    if (sub_100190744())
    {
      sub_100005384();
      v28 = sub_1000089F8();
      a11 = v28;
      *v27 = 136315138;
      sub_1002119B8();
      v29 = Array.description.getter();
      v31 = sub_100008ADC(v29, v30, &a11);

      *(v27 + 4) = v31;
      sub_100007F88();
      _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
      sub_100005B2C(v28);
      sub_100005BB8();
      sub_100005340();
    }

    v37 = v22[7];
    v38 = *(v37 + 16);
    v39 = _swiftEmptyArrayStorage;
    if (v38)
    {
      a9 = Strong;
      v40 = v22[9];
      a11 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v43 = *(v40 + 16);
      v41 = v40 + 16;
      v42 = v43;
      sub_100211B00();
      v45 = v37 + v44;
      a10 = *(v41 + 56);
      do
      {
        v46 = v22[10];
        v47 = v22[11];
        v48 = v22[8];
        v49 = sub_1001A6010();
        v42(v49);
        (v42)(v46, v47, v48);
        v50 = objc_allocWithZone(type metadata accessor for MessageID(0));
        v51 = sub_100008524();
        sub_1001728B8(v51);
        (*(v41 - 8))(v47, v48);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        sub_100211BF0();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v45 += a10;
        --v38;
      }

      while (v38);
      v39 = a11;
      Strong = a9;
    }

    sub_10020BD54(v39);
  }

  else
  {
    v52 = static os_log_type_t.error.getter();
    v53 = sub_10000843C(v52);
    v54 = v22[7];
    if (v53)
    {
      v55 = sub_100005384();
      *v55 = 134217984;
      *(v55 + 4) = *(v54 + 16);

      sub_100008DB0(&_mh_execute_header, v56, v57, "ignoring %ld deleted messageUUIDs, no more self");
      sub_100005340();
    }

    else
    {
    }

    Strong = v26;
  }

  sub_10000535C();
  sub_100008D44();

  return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_10020BFD0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020C098, v4, v3);
}

uint64_t sub_10020C1CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020C294, v4, v3);
}

void sub_10020C3C8()
{
  sub_1002063D4();
  if (!v0)
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v5 = v4;
      *v3 = 136446210;
      *(v3 + 4) = sub_100008ADC(0x654D3C7961727241, 0xEE003E6567617373, &v5);
      _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager received the incorrect type %{public}s when it expected a FTMessage", v3, 0xCu);
      sub_100005B2C(v4);
    }
  }
}

uint64_t sub_10020C50C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (result)
  {
    return sub_100206C28(0, 3, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  return result;
}

uint64_t sub_10020C574()
{
  sub_100006610();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for UUID();
  v1[7] = v3;
  sub_100006998(v3);
  v1[8] = v4;
  v1[9] = sub_10021195C();
  v5 = type metadata accessor for MessageStoreQuery();
  v1[10] = v5;
  sub_100006998(v5);
  v1[11] = v6;
  v1[12] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[13] = v9;
  v1[14] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10020C6B4()
{
  sub_100006610();
  sub_10020C3C8();
  *(v0 + 120) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020C768()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 128) = sub_100211CD0();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10020C7E0()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020CE60(v2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 104);
    v5 = *(v1 + 112);

    return _swift_task_switch(sub_10020C87C, v4, v5);
  }
}

uint64_t sub_10020CB84()
{
  sub_100006610();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[19] = v0;

  if (v0)
  {
    (*(v3[11] + 8))(v3[12], v3[10]);
    v7 = v3[13];
    v8 = v3[14];

    return _swift_task_switch(sub_10020CCE8, v7, v8);
  }

  else
  {
    (*(v3[11] + 8))(v3[12], v3[10]);

    sub_10000535C();

    return v9();
  }
}

uint64_t sub_10020CCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100211AB8();

  if (sub_100190744())
  {
    v13 = sub_100190988();
    v14 = sub_100008A70();
    a9 = sub_100005D4C();
    *v13 = 136315394;
    Array.description.getter();
    sub_100211A14();
    v15 = sub_100211AD0();
    sub_100008ADC(v15, v16, v17);

    sub_100211C50();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_100007F88();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100153D2C(v14);
    sub_100006A58();
    sub_10000870C();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_1000087B4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

unint64_t sub_10020CE60(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v2 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        ++v3;
        atomic_store(1u, (specialized _ArrayBuffer._getElementSlowPath(_:)() + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted));
        result = swift_unknownObjectRelease();
      }

      else
      {
        v4 = *(v1 + 32 + 8 * v3++);
        atomic_store(1u, (v4 + OBJC_IVAR____TtC13InCallService9FTMessage_dirtyIsDeleted));
      }
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_10020CF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020D018, v5, v4);
}

uint64_t sub_10020D018()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020C574();
}

uint64_t sub_10020D0D0()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100005568(v6);
  v1[8] = sub_10021195C();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[9] = v9;
  v1[10] = v10;
  v11 = sub_10000CDF8();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10020D1F8()
{
  v16 = v0;
  v1 = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;
  *(v0 + 88) = OBJC_IVAR____TtC13InCallService24FaceTimeVoicemailManager_logger;

  v2 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_100211CB8();
  if (sub_100190744())
  {
    v3 = sub_100190988();
    v15 = swift_slowAlloc();
    *v3 = 136315394;
    v4 = sub_1000303F8();
    *(v3 + 4) = sub_100008ADC(v4, v5, &v15);
    *(v3 + 12) = 2080;
    sub_10014EA98(&qword_1003AA7A8);
    v6 = Array.description.getter();
    v8 = sub_100008ADC(v6, v7, &v15);

    *(v3 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v2, v1, "%s: Setting messages as read %s", v3, 0x16u);
    swift_arrayDestroy();
    sub_100005340();
    sub_100005BB8();
  }

  sub_10020C3C8();
  *(v0 + 96) = v9;
  if (sub_100017230(v9))
  {
    v10 = sub_100008184();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    sub_10000535C();

    return v13();
  }
}

uint64_t sub_10020D3E8()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 104) = sub_100211CD0();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10020D460()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020DB14(v2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 72);
    v5 = *(v1 + 80);

    return _swift_task_switch(sub_10020D4FC, v4, v5);
  }
}

uint64_t sub_10020D80C()
{
  sub_1000058A8();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  v2[16] = v0;

  if (v0)
  {

    v5 = v2[9];
    v6 = v2[10];

    return _swift_task_switch(sub_10020D990, v5, v6);
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

uint64_t sub_10020D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100211AB8();

  if (sub_100190744())
  {
    v13 = sub_100190988();
    v14 = sub_100008A70();
    a9 = sub_100005D4C();
    sub_100211910(4.8151e-34);
    type metadata accessor for FTMessage();
    Array.description.getter();
    sub_100211A14();
    v15 = sub_100211AD0();
    sub_100008ADC(v15, v16, v17);

    sub_100211C50();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v18;
    *v14 = v18;
    sub_100007F88();
    _os_log_impl(v19, v20, v21, v22, v23, 0x16u);
    sub_100153D2C(v14);
    sub_100006A58();
    sub_10000870C();
    sub_100005340();
  }

  else
  {
  }

  sub_10000535C();
  sub_1000087B4();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

void sub_10020DB14(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      sub_1001BA644(1);
    }
  }
}

uint64_t sub_10020DBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020DCB0, v5, v4);
}

uint64_t sub_10020DCB0()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020D0D0();
}

uint64_t sub_10020DD68()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 40);
  v3 = *(v1 + 32);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  sub_10000535C();

  return v6();
}

uint64_t sub_10020DEB0()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_100211A48();
  v1[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v8, v9);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[11] = v10;
  v1[12] = v11;
  v12 = sub_10000CDF8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10020E00C()
{
  sub_1000058A8();
  sub_10020C3C8();
  *(v0 + 104) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_100211934();

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020E0DC()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 112) = sub_100211CD0();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10020E154()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020F550(v2, 2);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 96);

    return _swift_task_switch(sub_10020E1F4, v4, v5);
  }
}

uint64_t sub_10020E4B4()
{
  sub_1000058A8();
  sub_1000058C4();
  v3 = v2;
  sub_1000058F8();
  *v4 = v3;
  v5 = *v1;
  sub_100006870();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    v7 = v3[11];
    v8 = v3[12];

    return _swift_task_switch(sub_10020E60C, v7, v8);
  }

  else
  {

    sub_10000535C();

    return v9();
  }
}

size_t sub_10020E60C()
{
  v31 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 120);
    v4 = sub_100190988();
    v5 = sub_100008A70();
    v29 = sub_100005D4C();
    *v4 = 136315394;
    v6 = sub_100017230(v3);
    if (v6)
    {
      v7 = v6;
      v30 = _swiftEmptyArrayStorage;
      result = sub_10021D79C(0, v6 & ~(v6 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return result;
      }

      v25 = v5;
      v26 = v2;
      v27 = v1;
      v9 = 0;
      v10 = *(v0 + 120);
      v11 = *(v0 + 64);
      v12 = v30;
      v13 = v10 & 0xC000000000000001;
      v28 = v10 + 32;
      do
      {
        if (v13)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v14 = *(v28 + 8 * v9);
        }

        v15 = v14;
        MessageUpdate.recordUUID.getter();

        v30 = v12;
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          sub_10021D79C(v16 > 1, v17 + 1, 1);
          v12 = v30;
        }

        ++v9;
        v12[2] = v17 + 1;
        sub_100211B00();
        (*(v11 + 32))(v12 + v18 + *(v11 + 72) * v17);
      }

      while (v7 != v9);

      v1 = v27;
      v2 = v26;
      v5 = v25;
    }

    else
    {
    }

    v19 = Array.description.getter();
    v21 = v20;

    v22 = sub_100008ADC(v19, v21, &v29);

    *(v4 + 4) = v22;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v23;
    *v5 = v23;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as deleted with error: %@", v4, 0x16u);
    sub_100153D2C(v5);
    sub_100005BB8();
    sub_1000054DC();
    sub_100005368();
  }

  else
  {
  }

  sub_100211934();

  sub_10000535C();

  return v24();
}

uint64_t sub_10020E948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020EA0C, v5, v4);
}

uint64_t sub_10020EA0C()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020DEB0();
}

uint64_t sub_10020EAC4()
{
  sub_100006610();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10014EA98(&qword_1003AAF20);
  sub_100005568(v3);
  v1[4] = sub_10021195C();
  v4 = sub_10014EA98(&qword_1003AAB40);
  sub_100005568(v4);
  v1[5] = sub_100211A48();
  v5 = swift_task_alloc();
  v6 = sub_100211D00(v5);
  v1[7] = v6;
  sub_100006998(v6);
  v1[8] = v7;
  v1[9] = sub_100211A48();
  v1[10] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_100007A14();
  sub_100211640(v8, v9);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100211854();
  v1[11] = v10;
  v1[12] = v11;
  v12 = sub_10000CDF8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_10020EC20()
{
  sub_1000058A8();
  sub_10020C3C8();
  *(v0 + 104) = v1;
  if (sub_100017230(v1))
  {
    v2 = sub_100008184();

    return _swift_task_switch(v2, v3, v4);
  }

  else
  {

    sub_100211934();

    sub_10000535C();

    return v5();
  }
}

uint64_t sub_10020ECF0()
{
  sub_100006610();
  type metadata accessor for MainActor();
  *(v0 + 112) = sub_100211CD0();
  sub_10000594C();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v1 = sub_100005B78();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_10020ED68()
{
  sub_1000058A8();

  v2 = sub_100211B18();
  sub_10020F550(v2, 1);
  if (v0)
  {
  }

  else
  {
    v4 = *(v1 + 88);
    v5 = *(v1 + 96);

    return _swift_task_switch(sub_10020EE08, v4, v5);
  }
}

uint64_t sub_10020F0AC()
{
  sub_1000058A8();
  v2 = *v1;
  sub_100006870();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  v2[19] = v0;

  if (v0)
  {

    v5 = v2[11];
    v6 = v2[12];

    return _swift_task_switch(sub_10020F23C, v5, v6);
  }

  else
  {

    v7 = v4[1];

    return v7();
  }
}

size_t sub_10020F23C()
{

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[15];
    v4 = sub_100190988();
    v5 = sub_100008A70();
    sub_100005D4C();
    *v4 = 136315394;
    if (v3)
    {
      v26 = v5;
      v6 = v0[15];
      result = sub_10021D79C(0, v6 & ~(v6 >> 63), 0);
      if (v6 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = v2;
      v25 = v1;
      v8 = 0;
      v9 = v0[13];
      v10 = v0[8];
      v11 = v9 & 0xC000000000000001;
      v27 = v9 + 32;
      do
      {
        if (v11)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v27 + 8 * v8);
        }

        v13 = v12;
        dispatch thunk of Message.recordUUID.getter();

        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_10021D79C(v14 > 1, v15 + 1, 1);
        }

        v16 = v0[15];
        ++v8;
        _swiftEmptyArrayStorage[2] = v15 + 1;
        sub_100211B00();
        (*(v10 + 32))(_swiftEmptyArrayStorage + v17 + *(v10 + 72) * v15);
      }

      while (v8 != v16);

      v1 = v25;
      v2 = v24;
      v5 = v26;
    }

    else
    {
    }

    Array.description.getter();
    sub_100211A14();
    v18 = sub_100211AD0();
    v21 = sub_100008ADC(v18, v19, v20);

    *(v4 + 4) = v21;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v22;
    *v5 = v22;
    _os_log_impl(&_mh_execute_header, v1, v2, "FaceTimeVoicemailManager failed to set messages %s as undeleted with error: %@", v4, 0x16u);
    sub_100153D2C(v5);
    sub_100005BB8();
    sub_10000870C();
    sub_100005368();
  }

  else
  {
  }

  sub_100211934();

  sub_10000535C();

  return v23();
}

void sub_10020F550(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(a1 + 8 * i + 32);
      }

      v7 = v6;
      sub_1001BA504(a2);
    }
  }
}

uint64_t sub_10020F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020F6F8, v5, v4);
}

uint64_t sub_10020F6F8()
{
  sub_1000058A8();
  *(v0 + 40) = sub_100005574();
  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100154218(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v5 = sub_100154230(v4);
  *v5 = v6;
  sub_100008510(v5);

  return sub_10020EAC4();
}

uint64_t sub_10020F7B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = type metadata accessor for VoicemailActor();
  v2[4] = swift_initStaticObject();
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_10020F860;

  return sub_10021270C();
}

uint64_t sub_10020F860()
{
  sub_100006610();
  sub_1000058C4();
  sub_1000068BC();
  *v2 = v1;
  v3 = *v0;
  sub_100006870();
  *v4 = v3;
  *(v6 + 48) = v5;

  sub_100007A14();
  sub_100211640(v7, v8);
  sub_1000067CC();
  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100008D04();
  v9 = sub_100005B78();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10020F9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1001541FC();
  sub_100154224();
  v13 = *(v12 + 48);
  v14 = *(v12 + 16);
  result = sub_100017230(v13);
  v16 = result;
  v17 = 0;
  v18 = (v14 + 16);
  while (v16 != v17)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = result;
    }

    else
    {
      if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v19 = *(v13 + 32 + 8 * v17);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    if ((*v18)(*(v12 + 16), v19))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      sub_1001A6010();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }

    else
    {
      result = swift_unknownObjectRelease();
    }

    ++v17;
  }

  v20 = *(v12 + 16);

  _Block_release(v20);
  sub_100026F44();
  sub_1000087B4();

  return v23(v21, v22, v23, v24, v25, v26, v27, v28, _swiftEmptyArrayStorage, a10, a11, a12);
}

uint64_t sub_10020FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_100211640(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10020FC38, v5, v4);
}

uint64_t sub_10020FC38()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = _Block_copy(*(v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = _Block_copy(v1);
  _Block_copy(v3);
  v4 = v2;
  v5 = swift_task_alloc();
  v6 = sub_100154230(v5);
  *v6 = v7;
  v6[1] = sub_10020FD10;
  v8 = sub_100211950(*(v0 + 32));

  return sub_10020F7B0(v8, v3);
}

uint64_t sub_10020FD10()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058C4();
  v2 = v1[6];
  v3 = v1[5];
  v4 = v1[4];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  _Block_release(v3);

  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  sub_100008BAC();

  return v9(v8, v9, v10, v11, v12, v13, v14, v15);
}

void sub_10020FE94()
{
  oslog = Logger.logObject.getter();
  v0 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v0))
  {
    *sub_100005924() = 0;
    sub_100006D40(&_mh_execute_header, v1, v2, "VoiceMail rating: We failed to rate becuase we do not support it for FTMessages yet.", v3, v4, v5, v6, v7, oslog);
    sub_100005BB8();
  }
}

uint64_t sub_10020FFE8()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020C574();
}

uint64_t sub_1002100B8(uint64_t a1)
{
  v4 = sub_10014EA98(&qword_1003AA7B0);
  v5 = sub_100005568(v4);
  __chkstk_darwin(v5, v6);
  v7 = sub_100211B70();
  sub_1000067D8(v2, v8, v9, v7);
  type metadata accessor for VoicemailActor();
  inited = swift_initStaticObject();
  sub_100007A14();
  v13 = sub_100211640(v11, v12);
  sub_1001906BC();
  v14 = swift_allocObject();
  v14[2] = inited;
  v14[3] = v13;
  v14[4] = v1;
  v14[5] = a1;
  v15 = v1;

  sub_100211A60();
}

uint64_t sub_1002101B0()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008208;

  return sub_10020D0D0();
}

uint64_t sub_100210280()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020DEB0();
}

uint64_t sub_100210350()
{
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008204;

  return sub_10020EAC4();
}

uint64_t sub_100210420(void *a1)
{
  sub_10014EA98(&qword_1003AA7A8);
  sub_100008524();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  sub_1002100B8(v2);
}

uint64_t sub_1002104F4()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100210560()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100210350();
}

uint64_t sub_1002105EC()
{
  sub_1000058A8();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_100008BA0(v3);
  *v4 = v5;
  v4[1] = sub_100008204;
  v6 = sub_10000C1D8();

  return sub_100206D90(v6, v1, v2);
}

uint64_t sub_100210688()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100210280();
}

uint64_t sub_100210714()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002101B0();
}

uint64_t sub_1002107A0()
{
  swift_unknownObjectRelease();

  sub_1001906BC();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1002107E4()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_10020FFE8();
}

uint64_t sub_100210870()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210900()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210990()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210A20()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210AB0()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_100210B40()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_10020A2F0(v4, v5, v6, v0);
}

uint64_t sub_100210BD0()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100005568(v0);
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v2[1] = sub_100008204;
  v4 = sub_10000C1D8();

  return sub_10020C1CC(v4, v5);
}

uint64_t sub_100210C98()
{
  swift_unknownObjectRelease();

  v0 = sub_10000FF5C();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100210CD0()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_100209E9C(v4, v5, v6, v0);
}

uint64_t sub_100210D60()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100210E18()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100005568(v0);
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v2[1] = sub_100008204;
  v4 = sub_10000C1D8();

  return sub_10020BFD0(v4, v5);
}

uint64_t sub_100210EE0()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100209A98(v3, v4, v5, v6, v7);
}

uint64_t sub_100210F6C()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020B9A4(v4, v5, v6);
}

unint64_t sub_100211044(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100211054()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002098BC(v3, v4, v5, v6, v7);
}

uint64_t sub_1002110E0()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020B500(v4, v5, v6);
}

unint64_t sub_1002111B8()
{
  result = qword_1003AEFD0;
  if (!qword_1003AEFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003AEFD0);
  }

  return result;
}

uint64_t sub_10021120C()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_1002096E0(v3, v4, v5, v6, v7);
}

uint64_t sub_100211298()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020AE34(v4, v5, v6);
}

uint64_t sub_100211370()
{
  swift_unknownObjectRelease();

  sub_1001906BC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1002113B4()
{
  sub_1000303E4();
  sub_100006880();
  sub_1000058B4();
  v0 = swift_task_alloc();
  v1 = sub_100005B88(v0);
  *v1 = v2;
  sub_10000C5E0(v1);
  sub_100008BAC();

  return sub_100209404(v3, v4, v5, v6, v7);
}

uint64_t sub_100211440()
{
  v1 = type metadata accessor for Logger();
  sub_10000688C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

uint64_t sub_10021150C()
{
  sub_1000058A8();
  v0 = type metadata accessor for Logger();
  sub_100006998(v0);
  sub_100007220();
  v1 = swift_task_alloc();
  v2 = sub_100008BA0(v1);
  *v2 = v3;
  v4 = sub_100026FF8(v2);

  return sub_10020A680(v4, v5, v6);
}

uint64_t sub_1002115E4(uint64_t a1)
{
  v2 = type metadata accessor for VoiceMailAnalyticsLogger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100211640(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_100008524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100211684()
{
  sub_100006610();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_100005B88(v4);
  *v5 = v6;
  v5[1] = sub_100008204;

  return sub_100207614(v2, v3);
}

uint64_t sub_100211718()
{
  sub_1000058A8();
  sub_10000804C();
  v1 = swift_task_alloc();
  v2 = sub_100005B88(v1);
  *v2 = v3;
  v4 = sub_100006D10(v2);

  return sub_100207790(v4, v5, v6, v0);
}

uint64_t sub_1002117A8()
{
  sub_1000058A8();
  sub_100007B1C();
  v0 = swift_task_alloc();
  v1 = sub_100008BA0(v0);
  *v1 = v2;
  v3 = sub_100007E40(v1);

  return v4(v3);
}

uint64_t sub_1002118F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(v22 - 80);

  return sub_100206C28(v24, 2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100211934()
{
}

uint64_t sub_10021195C()
{

  return swift_task_alloc();
}

uint64_t sub_1002119C4()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_1002119E0()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

id sub_1002119FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v20 = *(a18 + 8 * v18);

  return v20;
}

uint64_t sub_100211A14()
{
}

uint64_t sub_100211A30()
{
}

uint64_t sub_100211A48()
{

  return swift_task_alloc();
}

void sub_100211A60()
{

  sub_1001621BC();
}

uint64_t sub_100211A84()
{
}

BOOL sub_100211AA0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100211AB8()
{
}

uint64_t sub_100211B70()
{

  return type metadata accessor for TaskPriority();
}

uint64_t sub_100211B90()
{
}

uint64_t sub_100211BB0()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100211BD0()
{
  v4 = *(v0 + 56);

  return sub_100017238(v1, v2 == 0, v4);
}

uint64_t sub_100211BF0()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100211C10()
{

  return specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
}

uint64_t sub_100211C30()
{
}

uint64_t sub_100211C50()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2112;

  return swift_errorRetain();
}

uint64_t sub_100211C70()
{
}

uint64_t sub_100211C88(uint64_t a1)
{
  *(v1 + 4) = a1;
}

uint64_t sub_100211CA0(float *a1, float a2)
{
  *a1 = a2;

  return sub_100017230(v2);
}

uint64_t sub_100211CB8()
{
}

uint64_t sub_100211CD0()
{

  return static MainActor.shared.getter();
}

uint64_t sub_100211CE8()
{

  return specialized _ArrayBuffer._getElementSlowPath(_:)();
}

uint64_t sub_100211D00(uint64_t a1)
{
  *(v1 + 48) = a1;

  return type metadata accessor for UUID();
}

void sub_100211D18(uint64_t a1, void *a2, void *a3)
{
  v30 = sub_100017230(a1);
  v6 = 0;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  v29 = a1 & 0xC000000000000001;
  v27 = a1 + 32;
  while (1)
  {
    if (v6 == v30)
    {

      return;
    }

    if (v29)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_25;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      break;
    }

    swift_beginAccess();
    v11 = a2[2];
    v10 = a2[3];
    v12 = v10 + 32;
    v13 = *(v10 + 16);
    if (!v11)
    {
      for (i = 0; v13 != i; ++i)
      {
        type metadata accessor for MessageID(0);
        v19 = *(v12 + 8 * i);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          v18 = 0;
          goto LABEL_15;
        }
      }

LABEL_9:
      swift_endAccess();
      goto LABEL_21;
    }

    i = sub_1002186EC(v8, v12, v13, (v11 + 16));
    v16 = v15;
    v18 = v17;

    if (v16)
    {
      goto LABEL_9;
    }

LABEL_15:
    sub_100218968(i, v18);

    v22 = a2[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a2[4] = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_10003C270(v22);
      a2[4] = v22;
    }

    v24 = *(v22 + 16);
    if (i >= v24)
    {
      goto LABEL_26;
    }

    v25 = v24 - 1;
    memmove((v22 + 8 * i + 32), (v22 + 8 * i + 40), 8 * (v24 - 1 - i));
    *(v22 + 16) = v25;
    specialized ContiguousArray._endMutation()();
    swift_endAccess();
    swift_unknownObjectRelease();
    v26 = v8;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_21:
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_100211F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100006848(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_100300078;
  v10[5] = v9;
  sub_1002165E8(0, 0, v7, &unk_100300088, v10);
}

void sub_100212084(uint64_t a1)
{
  sub_100017230(a1);
  type metadata accessor for MessageID(0);
  sub_10021A41C(&qword_1003AEFC8, type metadata accessor for MessageID);
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_100017230(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10019F56C(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1002121A0()
{
  sub_100006610();
  v1[3] = v2;
  v1[4] = v0;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10000C600();
  sub_10021A41C(v3, v4);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[5] = v6;
  v1[6] = v5;

  return _swift_task_switch(sub_100212254, v6, v5);
}

uint64_t sub_100212254()
{
  sub_1000058A8();
  v1 = *(v0[4] + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  v0[7] = v1;
  if (v1 >> 62)
  {
    if (v1 >> 62 == 1)
    {
      v2 = v0[3];

      sub_100214714(v2);
    }

    v5 = sub_1000302CC();

    return v6(v5);
  }

  else
  {

    v3 = swift_task_alloc();
    v0[8] = v3;
    v4 = type metadata accessor for CachedVoicemailManager.Cache();
    *v3 = v0;
    v3[1] = sub_10021238C;

    return Task<>.value.getter(v0 + 2, v1, v4);
  }
}

uint64_t sub_10021238C()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 48);
  v5 = *(v1 + 40);

  return _swift_task_switch(sub_1002124A0, v5, v4);
}

uint64_t sub_1002124A0()
{
  sub_1000058A8();
  v1 = sub_100214714(*(v0 + 24));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100212520()
{
  _StringGuts.grow(_:)(26);
  v1 = *(v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_serviceName);

  v2._object = 0x80000001002AD060;
  v2._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v2);
  return v1;
}

uint64_t sub_1002125B0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) = a1;

  sub_100214EF0();
}

uint64_t sub_100212610()
{
  v1 = v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount));
  v2 = *(v1 + 8);
  os_unfair_lock_unlock(v1);
  return v2;
}

void sub_100212650(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager__estimatedCount));
  *(v3 + 8) = a1;
  os_unfair_lock_unlock(v3);
  v4 = [objc_allocWithZone(NSUserDefaults) init];
  v5 = sub_100212610();
  sub_100212520();
  v6 = String._bridgeToObjectiveC()();

  [v4 setInteger:v5 forKey:v6];
}

uint64_t sub_10021270C()
{
  sub_100006610();
  v1[7] = v0;
  sub_10014EA98(&qword_1003AA7B0);
  v1[8] = swift_task_alloc();
  type metadata accessor for VoicemailActor();
  v1[9] = swift_initStaticObject();
  sub_10000C600();
  v1[10] = sub_10021A41C(v2, v3);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_100212800, v5, v4);
}

uint64_t sub_100212800()
{
  v44 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C();
  }

  v1 = type metadata accessor for Logger();
  v0[13] = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    v43 = v5;
    *v4 = 136315138;
    v6 = sub_100007A2C();
    *(v4 + 4) = sub_100008ADC(v6, v7, &v43);
    sub_100007388();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100005B2C(v5);
    sub_100005340();
    sub_100005368();
  }

  v13 = v0[7];
  v14 = *(v13 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  v0[14] = v14;
  if (v14 >> 62)
  {
    if (v14 >> 62 == 1)
    {
      v15 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;

      sub_1000303B0();
      v16 = *(v13 + v15);
      v17 = *(v16 + 16);
      if (v17)
      {

        v18 = v16 + 40;
        do
        {
          v19 = *(v18 - 8);
          v43 = v14 & 0x3FFFFFFFFFFFFFFFLL;

          v19(&v43);

          v18 += 16;
          --v17;
        }

        while (v17);

        v16 = *(v13 + v15);
      }

      *(v13 + v15) = _swiftEmptyArrayStorage;

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (sub_100005908(v21))
      {
        sub_100005384();
        v43 = sub_1000089F8();
        *v16 = 136315138;
        v22 = sub_100007A2C();
        *(v16 + 4) = sub_100008ADC(v22, v23, &v43);
        sub_100005414(&_mh_execute_header, v24, v25, "CachedVoicemailManager: %s returning voicemails");
        sub_10000870C();
        sub_100005340();
      }

      sub_100214610();

      v26 = sub_1000302CC();

      return v27(v26);
    }

    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];
    v36 = type metadata accessor for TaskPriority();
    sub_100006848(v35, 1, 1, v36);
    sub_100005C44();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100008C18();
    v38 = swift_allocObject();
    v38[2] = v34;
    v38[3] = v33;
    v38[4] = v37;
    sub_100162974();
    v40 = v39;
    v0[16] = v39;

    sub_1002125B0(v41);
    v42 = swift_task_alloc();
    v0[17] = v42;
    v30 = type metadata accessor for CachedVoicemailManager.Cache();
    *v42 = v0;
    v42[1] = sub_100212E84;
    v31 = v0 + 6;
    v32 = v40;
  }

  else
  {

    v29 = swift_task_alloc();
    v0[15] = v29;
    v30 = type metadata accessor for CachedVoicemailManager.Cache();
    *v29 = v0;
    v29[1] = sub_100212BEC;
    v31 = v0 + 5;
    v32 = v14;
  }

  return Task<>.value.getter(v31, v32, v30);
}

uint64_t sub_100212BEC()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_100212D00, v5, v4);
}

uint64_t sub_100212D00()
{
  v18 = v0;

  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
  sub_1000303B0();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v17 = v1;

      v7(&v17);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (sub_100005908(v9))
  {
    sub_100005384();
    v17 = sub_1000089F8();
    *v2 = 136315138;
    v10 = sub_100007A2C();
    *(v2 + 4) = sub_100008ADC(v10, v11, &v17);
    sub_100005414(&_mh_execute_header, v12, v13, "CachedVoicemailManager: %s returning voicemails");
    sub_10000870C();
    sub_100005340();
  }

  sub_100214610();

  v14 = sub_1000302CC();

  return v15(v14);
}

uint64_t sub_100212E84()
{
  sub_100006610();
  v1 = *v0;
  v2 = *v0;
  sub_100006870();
  *v3 = v2;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return _swift_task_switch(sub_100212F98, v5, v4);
}

uint64_t sub_100212F98()
{
  v18 = v0;

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
  sub_1000303B0();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = v4 + 40;
    do
    {
      v7 = *(v6 - 8);
      v17 = v1;

      v7(&v17);

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  *(v2 + v3) = _swiftEmptyArrayStorage;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (sub_100005908(v9))
  {
    sub_100005384();
    v17 = sub_1000089F8();
    *v2 = 136315138;
    v10 = sub_100007A2C();
    *(v2 + 4) = sub_100008ADC(v10, v11, &v17);
    sub_100005414(&_mh_execute_header, v12, v13, "CachedVoicemailManager: %s returning voicemails");
    sub_10000870C();
    sub_100005340();
  }

  sub_100214610();

  v14 = sub_1000302CC();

  return v15(v14);
}

uint64_t sub_100213114(uint64_t a1)
{
  v4 = *(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) >> 62;
  if (v4)
  {
    if (v4 == 1)
    {

      sub_100214B6C(a1, 1);
    }

    else
    {
      sub_1002111B8();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    sub_100005C44();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v6 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
    sub_1000086F0();

    sub_1002168CC(sub_10023FD0C);
    v7 = *(*(v2 + v6) + 16);
    sub_10021699C(v7, sub_10023FD0C);
    v8 = *(v2 + v6);
    *(v8 + 16) = v7 + 1;
    v9 = v8 + 16 * v7;
    *(v9 + 32) = sub_10021A464;
    *(v9 + 40) = v5;
    *(v2 + v6) = v8;
    swift_endAccess();
    v1 = 1;
    sub_1002111B8();
    swift_willThrowTypedImpl();
  }

  return v1;
}

uint64_t sub_10021327C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) >> 62;
  if (v3)
  {
    if (v3 == 1)
    {

      v4 = sub_100214DF4(a1, 1);

      sub_100212084(v5);
      v7 = v6;
      if ((v6 & 0xC000000000000001) != 0)
      {
        if (v6 < 0)
        {
          v8 = v6;
        }

        else
        {
          v8 = v6 & 0xFFFFFFFFFFFFFF8;
        }

        v9 = __CocoaSet.count.getter();
        sub_10019F8C4(v8, v9, v10, v11, v12, v13, v14, v15, v24, v25, v26);
        v7 = v16;
      }

      v17 = sub_10021791C(v4, v7);
      if (sub_100215EB0(v17))
      {

        v17 = sub_1002144EC(v4);
      }

      else
      {

        sub_1002111B8();
        swift_willThrowTypedImpl();
      }
    }

    else
    {
      sub_1002111B8();
      swift_willThrowTypedImpl();
      return 0;
    }
  }

  else
  {
    sub_100005C44();
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
    sub_1000086F0();

    sub_1002168CC(sub_10023FD0C);
    v20 = *(*(v1 + v19) + 16);
    sub_10021699C(v20, sub_10023FD0C);
    v21 = *(v1 + v19);
    *(v21 + 16) = v20 + 1;
    v22 = v21 + 16 * v20;
    *(v22 + 32) = sub_10021A414;
    *(v22 + 40) = v18;
    *(v1 + v19) = v21;
    swift_endAccess();
    v17 = 1;
    sub_1002111B8();
    swift_willThrowTypedImpl();
  }

  return v17;
}

uint64_t sub_10021347C(uint64_t a1)
{
  v2 = v1;
  sub_100005C44();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = *(v2 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state);
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {

      sub_100215EF0(v5 & 0x3FFFFFFFFFFFFFFFLL, a1);
    }

    else
    {
      sub_1002111B8();

      swift_willThrowTypedImpl();

      return 0;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10021A3E0;
    *(v6 + 24) = v4;
    v7 = OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_deferredOperationsQueue;
    sub_1000086F0();

    sub_1002168CC(sub_10023FD0C);
    v8 = *(*(v2 + v7) + 16);
    sub_10021699C(v8, sub_10023FD0C);
    v9 = *(v2 + v7);
    *(v9 + 16) = v8 + 1;
    v10 = v9 + 16 * v8;
    *(v10 + 32) = sub_10021A3E8;
    *(v10 + 40) = v6;
    *(v2 + v7) = v9;
    swift_endAccess();
    a1 = 1;
    sub_1002111B8();
    swift_willThrowTypedImpl();
  }

  return a1;
}

uint64_t sub_100213648()
{
  v0 = type metadata accessor for Logger();
  sub_100156134(v0, qword_1003AF008);
  v1 = sub_100008A14(v0, qword_1003AF008);
  if (qword_1003A9F50 != -1)
  {
    swift_once();
  }

  v2 = sub_100008A14(v0, &unk_1003B8850);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100213710(uint64_t a1, char a2)
{
  v6 = sub_100017230(a1);
  v7 = _swiftEmptyArrayStorage;
  v110 = a2;
  if (!v6)
  {
LABEL_10:
    type metadata accessor for MessageID(0);
    sub_10014EA98(&qword_1003AF190);
    sub_10021A41C(&qword_1003AEFC8, type metadata accessor for MessageID);
    v2 = Dictionary.init(dictionaryLiteral:)();
    v14 = 0;
    v115 = v7[2];
    v15 = v7 + 5;
    v113 = v7;
    while (v115 != v14)
    {
      if (v14 >= v7[2])
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      v3 = *v15;
      v16 = *(v2 + 16);
      v17 = *(v15 - 1);
      swift_unknownObjectRetain_n();
      v18 = v17;
      if (v16 && (v19 = sub_1001701D8(), (v20 & 1) != 0))
      {
        v116[0] = *(*(v2 + 56) + 8 * v19);
        swift_unknownObjectRetain();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v21 = v116[0];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v117 = v2;
        v22 = sub_1001701D8();
        v24 = *(v2 + 16);
        v25 = (v23 & 1) == 0;
        v2 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          goto LABEL_105;
        }

        v26 = v22;
        v27 = v23;
        sub_10014EA98(&qword_1003AF198);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v2))
        {
          v28 = sub_1001701D8();
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_110;
          }

          v26 = v28;
        }

        v2 = v117;
        if (v27)
        {
          *(v117[7] + 8 * v26) = v116[0];

          swift_unknownObjectRelease();
        }

        else
        {
          v117[(v26 >> 6) + 8] |= 1 << v26;
          *(*(v2 + 48) + 8 * v26) = v18;
          *(*(v2 + 56) + 8 * v26) = v21;
          v42 = *(v2 + 16);
          v40 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v40)
          {
            goto LABEL_106;
          }

          *(v2 + 16) = v43;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();

        v7 = v113;
      }

      else
      {
        sub_10014EA98(&unk_1003AAAA0);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1002FBD90;
        *(v30 + 32) = v3;
        swift_unknownObjectRetain();
        v31 = swift_isUniquelyReferenced_nonNull_native();
        v116[0] = v2;
        v32 = sub_1001701D8();
        v34 = *(v2 + 16);
        v35 = (v33 & 1) == 0;
        v2 = v34 + v35;
        if (__OFADD__(v34, v35))
        {
          goto LABEL_102;
        }

        isUniquelyReferenced_nonNull_native = v32;
        v36 = v33;
        sub_10014EA98(&qword_1003AF198);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v31, v2))
        {
          v37 = sub_1001701D8();
          v7 = v113;
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_110;
          }

          isUniquelyReferenced_nonNull_native = v37;
        }

        else
        {
          v7 = v113;
        }

        v2 = v116[0];
        if (v36)
        {
          *(*(v116[0] + 56) + 8 * isUniquelyReferenced_nonNull_native) = v30;

          swift_unknownObjectRelease();
        }

        else
        {
          *(v116[0] + 8 * (isUniquelyReferenced_nonNull_native >> 6) + 64) |= 1 << isUniquelyReferenced_nonNull_native;
          *(*(v2 + 48) + 8 * isUniquelyReferenced_nonNull_native) = v18;
          *(*(v2 + 56) + 8 * isUniquelyReferenced_nonNull_native) = v30;
          v39 = *(v2 + 16);
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_104;
          }

          *(v2 + 16) = v41;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v15 += 2;
      ++v14;
    }

    v3 = (v2 + 64);
    v44 = 1 << *(v2 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v2 + 64);
    v47 = (v44 + 63) >> 6;

    v48 = 0;
    isUniquelyReferenced_nonNull_native = _swiftEmptyArrayStorage;
    while (v46)
    {
LABEL_45:
      v50 = (v48 << 9) | (8 * __clz(__rbit64(v46)));
      v51 = *(*(v2 + 48) + v50);
      v52 = *(*(v2 + 56) + v50);
      if (v52 >> 62)
      {
        v53 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v46 &= v46 - 1;
      if (v53 > 1)
      {
        v54 = v51;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10023FECC();
          isUniquelyReferenced_nonNull_native = v57;
        }

        v55 = *(isUniquelyReferenced_nonNull_native + 16);
        if (v55 >= *(isUniquelyReferenced_nonNull_native + 24) >> 1)
        {
          sub_10023FECC();
          isUniquelyReferenced_nonNull_native = v58;
        }

        *(isUniquelyReferenced_nonNull_native + 16) = v55 + 1;
        v56 = isUniquelyReferenced_nonNull_native + 16 * v55;
        *(v56 + 32) = v54;
        *(v56 + 40) = v52;
        v7 = v113;
      }
    }

    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_101;
      }

      if (v49 >= v47)
      {
        break;
      }

      v46 = v3[v49];
      ++v48;
      if (v46)
      {
        v48 = v49;
        goto LABEL_45;
      }
    }

    if (!*(isUniquelyReferenced_nonNull_native + 16))
    {

      if (qword_1003AA0D8 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_100008A14(v68, qword_1003AF008);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "CachedVoicemailManager.Cache.init(voicemails:) without duplicate keys", v71, 2u);
      }

LABEL_97:
      sub_1002142F4(v7);
      v102 = v101;
      v104 = v103;
      v106 = v105;
      type metadata accessor for CachedVoicemailManager.Cache();
      v107 = swift_allocObject();
      v107[2] = v102;
      v107[3] = v104;
      v107[4] = v106;
      if (v110)
      {
        swift_beginAccess();
        sub_100214AC8(sub_100214958);
        swift_endAccess();
      }

      return v107;
    }

    if (qword_1003AA0D8 == -1)
    {
      goto LABEL_56;
    }

    goto LABEL_108;
  }

  v8 = v6;
  v116[0] = _swiftEmptyArrayStorage;
  sub_10021D7BC(0, v6 & ~(v6 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v116[0];
    v10 = a1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v10 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v3 = [v11 identifier];
      v116[0] = v7;
      isUniquelyReferenced_nonNull_native = v7[2];
      v12 = v7[3];
      if (isUniquelyReferenced_nonNull_native >= v12 >> 1)
      {
        sub_10021D7BC((v12 > 1), isUniquelyReferenced_nonNull_native + 1, 1);
        v10 = a1;
        v7 = v116[0];
      }

      ++v9;
      v7[2] = isUniquelyReferenced_nonNull_native + 1;
      v13 = &v7[2 * isUniquelyReferenced_nonNull_native];
      v13[4] = v3;
      v13[5] = v11;
    }

    while (v8 != v9);
    goto LABEL_10;
  }

LABEL_107:
  __break(1u);
LABEL_108:
  swift_once();
LABEL_56:
  v59 = type metadata accessor for Logger();
  sub_100008A14(v59, qword_1003AF008);

  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v60, v61))
  {
    v112 = v61;
    v62 = swift_slowAlloc();
    v116[0] = swift_slowAlloc();
    *v62 = 136315394;
    v63 = *(isUniquelyReferenced_nonNull_native + 16);
    v114 = v62;
    if (v63)
    {
      v117 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v64 = (isUniquelyReferenced_nonNull_native + 32);
      v65 = v63;
      do
      {
        v66 = *v64;
        v64 += 2;
        v67 = v66;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v65;
      }

      while (v65);
      v62 = v114;
    }

    v72 = Array.description.getter();
    v74 = v73;

    v75 = sub_100008ADC(v72, v74, v116);

    *(v62 + 4) = v75;
    *(v62 + 12) = 2080;
    if (v63)
    {
      v109 = v60;
      v117 = _swiftEmptyArrayStorage;
      sub_10021D7DC(0, v63, 0);
      v76 = 40;
      v77 = v117;
      do
      {
        v78 = *(isUniquelyReferenced_nonNull_native + v76);
        v117 = v77;
        v80 = v77[2];
        v79 = v77[3];

        if (v80 >= v79 >> 1)
        {
          sub_10021D7DC((v79 > 1), v80 + 1, 1);
          v77 = v117;
        }

        v77[2] = v80 + 1;
        v77[v80 + 4] = v78;
        v76 += 16;
        --v63;
      }

      while (v63);

      v60 = v109;
      v62 = v114;
    }

    else
    {
    }

    v81 = Array.description.getter();
    v83 = v82;

    v84 = sub_100008ADC(v81, v83, v116);

    *(v62 + 14) = v84;
    _os_log_impl(&_mh_execute_header, v60, v112, "CachedVoicemailManager.Cache.init(voicemails:) with duplicate keys: %s, voicemails: %s", v62, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v85 = 1 << *(v2 + 32);
  v86 = -1;
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  v87 = v86 & *(v2 + 64);
  v88 = (v85 + 63) >> 6;

  v89 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    do
    {
      if (!v87)
      {
        while (1)
        {
          v90 = v89 + 1;
          if (__OFADD__(v89, 1))
          {
            goto LABEL_103;
          }

          if (v90 >= v88)
          {

            goto LABEL_97;
          }

          v87 = v3[v90];
          ++v89;
          if (v87)
          {
            v89 = v90;
            break;
          }
        }
      }

      v91 = (v89 << 9) | (8 * __clz(__rbit64(v87)));
      v92 = *(*(v2 + 48) + v91);
      v93 = *(*(v2 + 56) + v91);
      if (v93 >> 62)
      {
        v94 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v87 &= v87 - 1;
    }

    while (!v94);
    if ((v93 & 0xC000000000000001) == 0)
    {
      break;
    }

    v98 = v92;

    v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_89:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023FDEC();
      v7 = v99;
    }

    isUniquelyReferenced_nonNull_native = v7[2];
    if (isUniquelyReferenced_nonNull_native >= v7[3] >> 1)
    {
      sub_10023FDEC();
      v7 = v100;
    }

    v7[2] = isUniquelyReferenced_nonNull_native + 1;
    v97 = &v7[2 * isUniquelyReferenced_nonNull_native];
    v97[4] = v92;
    v97[5] = v95;
  }

  if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v95 = *(v93 + 32);
    v96 = v92;
    swift_unknownObjectRetain();
    goto LABEL_89;
  }

  __break(1u);
LABEL_110:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002142F4(uint64_t a1)
{
  v9 = sub_100218188(_swiftEmptyArrayStorage, sub_100240350, sub_10021957C);
  sub_100218188(_swiftEmptyArrayStorage, sub_100240350, sub_1002196F0);
  sub_100218808(*(a1 + 16), 0);
  specialized ContiguousArray.reserveCapacity(_:)();
  v2 = 0;
  v3 = *(a1 + 16);
  for (i = a1 + 40; ; i += 16)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v5 = *(i - 8);
    v6 = v9[2];
    v7 = v5;
    swift_unknownObjectRetain();
    sub_100218660(v7, (v9 + 4), v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_10021822C(v5);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    ++v2;
  }

  __break(1u);
LABEL_8:
  __break(1u);
}

void *sub_1002144EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = sub_100240350(v4, 0);
      sub_10021957C(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

void *sub_100214580(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10023FFAC(*(a1 + 16), 0);
  v4 = sub_100219938(&v6, v3 + 4, v2, a1);
  sub_10016D304();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100214610()
{
  swift_beginAccess();
  v1 = v0[4];
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v0[2];
  v4 = v0[3];
  v5 = sub_100240350(*(v1 + 16), 0);
  v6 = sub_100219870(&v8, v5 + 32, v2, v3, v4, v1);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  if (v6 == v2)
  {

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_100214714(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  v6 = sub_1002147AC(a1, v3, v4, v5);

  return v6;
}

unint64_t sub_1002147AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = &v10;
  v5 = sub_10021834C(sub_100219F64, v9, a3);
  v6 = 0;
  if ((v7 & 1) == 0)
  {
    return sub_100218944(v5, a4);
  }

  return v6;
}

uint64_t sub_100214824(uint64_t a1, void *a2)
{
  v3 = v2;
  v7 = *v2;
  v6 = v2[1];
  v17 = a2;
  v16[2] = v7;
  v16[3] = v6;
  v16[4] = &v17;
  v8 = sub_10021834C(sub_10021A658, v16, v6);
  if (v9)
  {
    sub_10021822C(a2);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v10 = 0;
LABEL_8:
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  v11 = v8;
  v14 = v3[2];
  v12 = v3 + 2;
  v13 = v14;
  v10 = sub_100218944(v8, v14);
  result = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v14;
  if ((result & 1) == 0)
  {
    result = sub_10003C270(v13);
    v13 = result;
    *v12 = result;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v13 + 16))
  {
    *(v13 + 8 * v11 + 32) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_100214958(uint64_t a1, id *a2, uint64_t a3, void **a4)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v20 - v13;
  v15 = *a4;
  v16 = [*a2 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = [v15 date];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v17) = static Date.> infix(_:_:)();
  v18 = *(v7 + 8);
  v18(v11, v6);
  v18(v14, v6);
  return v17 & 1;
}

Swift::Int sub_100214AC8(uint64_t (*a1)(id *, uint64_t *, void **, uint64_t *))
{
  v4 = v1[2];
  sub_100219E40(*v1, v1[1], v4);
  v8 = v5;
  result = sub_1002169E4(&v8, a1);
  if (v2)
  {
  }

  v7 = *(v8 + 2);
  if (v7 == *(v4 + 16))
  {
    sub_100219214((v8 + 32), v7, v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100214B6C(uint64_t a1, char a2)
{
  v3 = v2;
  result = sub_100017230(a1);
  v6 = result;
  v7 = 0;
  v23 = a1 & 0xFFFFFFFFFFFFFF8;
  v24 = a1 & 0xC000000000000001;
  v22 = a1 + 32;
  while (v7 != v6)
  {
    if (v24)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = result;
    }

    else
    {
      if (v7 >= *(v23 + 16))
      {
        goto LABEL_25;
      }

      v8 = *(v22 + 8 * v7);
      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    v10 = [v8 identifier];
    swift_beginAccess();
    v12 = v3[2];
    v11 = v3[3];
    v13 = v11 + 32;
    v14 = *(v11 + 16);
    if (!v12)
    {
      swift_unknownObjectRetain();
      for (i = 0; v14 != i; ++i)
      {
        type metadata accessor for MessageID(0);
        v19 = *(v13 + 8 * i);
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          goto LABEL_9;
        }
      }

LABEL_18:
      sub_10021822C(v10);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_19;
    }

    swift_unknownObjectRetain();

    i = sub_1002186EC(v10, v13, v14, (v12 + 16));
    v17 = v16;

    if (v17)
    {
      goto LABEL_18;
    }

LABEL_9:

    v18 = v3[4];
    result = swift_isUniquelyReferenced_nonNull_native();
    v3[4] = v18;
    if ((result & 1) == 0)
    {
      result = sub_10003C270(v18);
      v18 = result;
      v3[4] = result;
    }

    if ((i & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (i >= *(v18 + 16))
    {
      goto LABEL_27;
    }

    *(v18 + 8 * i + 32) = v8;
    swift_unknownObjectRelease();
LABEL_19:
    specialized ContiguousArray._endMutation()();
    swift_endAccess();
    result = swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_beginAccess();
    sub_100214AC8(sub_100214958);
    return swift_endAccess();
  }

  return result;
}

void *sub_100214DF4(uint64_t a1, char a2)
{
  v6 = _swiftEmptyArrayStorage;

  sub_100211D18(a1, v2, &v6);
  if (a2)
  {
    swift_beginAccess();
    sub_100214AC8(sub_100214958);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_100214E94()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

void sub_100214EF0()
{
  if (*(v0 + OBJC_IVAR____TtC13InCallService22CachedVoicemailManager_state) >> 62 == 1)
  {

    v1 = sub_100214610();
    v2 = sub_100017230(v1);

    sub_100212650(v2);
  }
}

uint64_t sub_10021500C()
{
  sub_100006610();
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10000C600();
  sub_10021A41C(v0, v1);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002150BC, v3, v2);
}

uint64_t sub_1002150BC()
{
  sub_1000058A8();
  if (qword_1003AA0D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008A14(v1, qword_1003AF008);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (sub_10000843C(v3))
  {
    *swift_slowAlloc() = 0;
    sub_100007388();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    sub_100005368();
  }

  v9 = *(v0 + 8);

  return v9(_swiftEmptyArrayStorage);
}

uint64_t sub_1002151B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for VoicemailActor();
  swift_initStaticObject();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100215280, v6, v5);
}

uint64_t sub_100215280()
{
  v23 = v0;
  if (qword_1003A9F50 != -1)
  {
    sub_10000706C();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 72) = sub_100008A14(v1, &unk_1003B8850);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_10000843C(v3))
  {
    v4 = sub_100005384();
    v5 = swift_slowAlloc();
    v22 = v5;
    *v4 = 136315138;
    v6 = sub_100007A2C();
    *(v4 + 4) = sub_100008ADC(v6, v7, &v22);
    sub_100007388();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    sub_100005B2C(v5);
    sub_100005340();
    sub_100005368();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v21 = (*((swift_isaMask & *Strong) + 0xC0) + **((swift_isaMask & *Strong) + 0xC0));
    v14 = swift_task_alloc();
    *(v0 + 88) = v14;
    *v14 = v0;
    v14[1] = sub_1002154F4;

    return v21();
  }

  else
  {
    type metadata accessor for CachedVoicemailManager.Cache();
    sub_100008C18();
    v16 = swift_allocObject();
    sub_1002142F4(_swiftEmptyArrayStorage);
    v16[2] = v17;
    v16[3] = v18;
    v16[4] = v19;
    **(v0 + 40) = v16;
    sub_10000535C();

    return v20();
  }
}

uint64_t sub_1002154F4()
{
  sub_1000058A8();
  v3 = v2;
  sub_1000058C4();
  v5 = v4;
  v6 = *v1;
  sub_100006870();
  *v7 = v6;
  v5[12] = v0;

  if (v0)
  {
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_100215718;
  }

  else
  {
    v5[13] = v3;
    v5[14] = type metadata accessor for CachedVoicemailManager.Cache();
    v8 = v5[7];
    v9 = v5[8];
    v10 = sub_100215614;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100215614()
{
  v15 = v0;
  v1 = *(v0 + 72);
  v2 = sub_100213710(*(v0 + 104), 1);

  sub_1002125B0(v3 | 0x4000000000000000);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = sub_100005908(v5);
  v7 = *(v0 + 80);
  if (v6)
  {
    sub_100005384();
    v14 = sub_1000089F8();
    *v1 = 136315138;
    v8 = sub_100007A2C();
    *(v1 + 4) = sub_100008ADC(v8, v9, &v14);
    sub_100005414(&_mh_execute_header, v10, v11, "CachedVoicemailManager: %s returning cache from a task");
    sub_10000870C();
    sub_100005340();
  }

  **(v0 + 40) = v2;
  sub_10000535C();

  return v12();
}

uint64_t sub_100215718()
{
  sub_1000058A8();
  v1 = *(v0 + 80);
  type metadata accessor for CachedVoicemailManager.Cache();
  sub_100008C18();
  v2 = swift_allocObject();
  sub_1002142F4(_swiftEmptyArrayStorage);
  v2[2] = v3;
  v2[3] = v4;
  v2[4] = v5;

  **(v0 + 40) = v2;
  sub_10000535C();

  return v6();
}

uint64_t sub_100215830(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002158F0, v4, v3);
}

uint64_t sub_1002158F0()
{
  sub_100006610();
  v1 = *(v0 + 24);
  *(v0 + 32) = _Block_copy(*(v0 + 16));
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_100215990;

  return sub_10021270C();
}

uint64_t sub_100215990()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = *(v1 + 32);
  v3 = *(v1 + 24);
  v4 = *v0;
  sub_100006870();
  *v5 = v4;

  sub_10014EA98(&qword_1003AA7A8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (v2)[2](v2, isa);

  _Block_release(v2);
  sub_10000535C();

  return v7();
}

uint64_t sub_100215B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1001C90D8();
  type metadata accessor for VoicemailActor();
  sub_10021A41C(&qword_1003AA7B8, type metadata accessor for VoicemailActor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100215C40, v5, v4);
}

uint64_t sub_100215C40()
{
  sub_1000058A8();
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 40) = _Block_copy(*(v0 + 24));
  v3 = v2;
  v4 = v1;
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  v5[1] = sub_100215CF8;

  return sub_1002121A0();
}

uint64_t sub_100215CF8()
{
  sub_1000058A8();
  sub_1000058C4();
  v2 = v1[5];
  v3 = v1[4];
  v4 = v1[2];
  v5 = *v0;
  sub_100006870();
  *v6 = v5;

  v7 = sub_1000085C0();
  v8(v7);
  _Block_release(v2);
  swift_unknownObjectRelease();
  sub_10000535C();

  return v9();
}

uint64_t sub_100215E74(uint64_t a1, uint64_t a2)
{
  sub_100214DF4(a2, 1);
}

BOOL sub_100215EB0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = __CocoaSet.count.getter();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

void sub_100215EF0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_100017230(a2);
  v5 = 0;
  v6 = v2 & 0xC000000000000001;
  v7 = v2 & 0xFFFFFFFFFFFFFF8;
  v8 = &selRef_greenTea3PUIHardwareEventHandler;
  v23 = v2 & 0xC000000000000001;
  v24 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v4 == v5)
    {
      swift_beginAccess();
      sub_100214AC8(sub_100214958);
      swift_endAccess();
      return;
    }

    if (v6)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_18;
      }

      v9 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v5, 1))
    {
      break;
    }

    v10 = [v9 v8[171]];
    swift_beginAccess();
    v11 = sub_100214824(v9, v10);
    swift_endAccess();

    if (v11)
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_1003AA0D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100008A14(v12, qword_1003AF008);
      swift_unknownObjectRetain();
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v27[0] = v26;
        *v15 = 136315138;
        swift_unknownObjectRetain();
        sub_10014EA98(&qword_1003AA7A8);
        v16 = String.init<A>(reflecting:)();
        log = v13;
        v18 = v8;
        v19 = a1;
        v20 = v2;
        v21 = v4;
        v22 = sub_100008ADC(v16, v17, v27);
        v6 = v23;

        *(v15 + 4) = v22;
        v4 = v21;
        v2 = v20;
        a1 = v19;
        v8 = v18;
        _os_log_impl(&_mh_execute_header, log, v14, "CachedVoicemailmanager: Told to update message but no message was found with id: %s", v15, 0xCu);
        sub_100005B2C(v26);

        v7 = v24;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    ++v5;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

id sub_100216224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CachedVoicemailManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100216304(uint64_t *a1)
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

uint64_t sub_10021632C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_100216380(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1002163E0(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_100216418(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100008204;

  return v6();
}

uint64_t sub_100216500(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100008208;

  return v7();
}

uint64_t sub_1002165E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10014EA98(&qword_1003AA7B0);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v23 - v11;
  sub_100163918(a3, v23 - v11);
  v13 = type metadata accessor for TaskPriority();
  if (sub_100006AC0(v12, 1, v13) == 1)
  {
    sub_100006AE8(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      sub_100006AE8(a3);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100006AE8(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1002168CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_100216928(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return result;
}

uint64_t sub_10021699C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

Swift::Int sub_1002169E4(char **a1, uint64_t (*a2)(id *, uint64_t *, void **, uint64_t *))
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100218BA0(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_100216A68(v7, a2);
  *a1 = v4;
  return result;
}

Swift::Int sub_100216A68(uint64_t *a1, uint64_t (*a2)(id *, uint64_t *, void **, uint64_t *))
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10014EA98(&unk_1003AF320);
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9[0] = (v8 + 4);
      v9[1] = v7;
      sub_100216CDC(v9, v10, a1, v6, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100216B8C(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_100216B8C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  if (a3 != a2)
  {
    v7 = *a4;
    v8 = *a4 + 16 * a3 - 16;
    v9 = result - a3;
LABEL_3:
    v20 = v8;
    v21 = a3;
    v10 = *(v7 + 16 * a3);
    v19 = v9;
    while (1)
    {
      v11 = *v8;
      v12 = *(v8 + 8);
      v26 = *(&v10 + 1);
      v27 = v10;
      v24 = v12;
      v25 = v11;
      v23 = v10;
      swift_unknownObjectRetain();
      v13 = v11;
      swift_unknownObjectRetain();
      v14 = v6;
      v15 = a5(&v27, &v26, &v25, &v24);

      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v14)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v6 = 0;
LABEL_11:
        a3 = v21 + 1;
        v8 = v20 + 16;
        v9 = v19 - 1;
        if (v21 + 1 != a2)
        {
          goto LABEL_3;
        }

        return result;
      }

      if (!v7)
      {
        __break(1u);
        return result;
      }

      v16 = *v8;
      v10 = *(v8 + 16);
      *v8 = v10;
      *(v8 + 16) = v16;
      v8 -= 16;
      v17 = __CFADD__(v9++, 1);
      v6 = 0;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void sub_100216CDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(id *, uint64_t *, void **, uint64_t *))
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_94:
    v117 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_128;
      }

      goto LABEL_96;
    }

    goto LABEL_137;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v117 = v7;
      v111 = v9;
      v12 = v8;
      v13 = v8 + 1;
      v14 = *a3 + 16 * v11;
      v15 = *(v14 + 8);
      v16 = *a3 + 16 * v8;
      v17 = *v16;
      v18 = *(v16 + 8);
      v123 = *v14;
      v121 = v17;
      v122 = v15;
      v120 = v18;
      v19 = v123;
      swift_unknownObjectRetain();
      v20 = v17;
      swift_unknownObjectRetain();
      v114 = a5(&v123, &v122, &v121, &v120);
      if (v6)
      {
LABEL_105:

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v21 = (v16 + 24);
      v22 = v12 + 2;
      v11 = v13;
      v23 = v117;
      while (1)
      {
        v24 = v22;
        if (v11 + 1 >= v23)
        {
          break;
        }

        v25 = v11;
        v26 = v21[2];
        v27 = *(v21 - 1);
        v28 = *v21;
        v123 = v21[1];
        v121 = v27;
        v122 = v26;
        v120 = v28;
        v29 = v123;
        swift_unknownObjectRetain();
        v30 = v27;
        swift_unknownObjectRetain();
        LOBYTE(v27) = a5(&v123, &v122, &v121, &v120);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v31 = v114 ^ v27;
        v21 += 2;
        v11 = v25 + 1;
        v22 = v24 + 1;
        v6 = 0;
        v23 = v117;
        if (v31)
        {
          goto LABEL_10;
        }
      }

      v11 = v23;
LABEL_10:
      if (v114)
      {
        v10 = v12;
        if (v11 < v12)
        {
          goto LABEL_131;
        }

        v9 = v111;
        if (v12 < v11)
        {
          if (v23 >= v24)
          {
            v32 = v24;
          }

          else
          {
            v32 = v23;
          }

          v33 = 16 * v32 - 16;
          v34 = v11;
          v35 = v12;
          v36 = 16 * v12;
          do
          {
            if (v35 != --v34)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v38 = *(v37 + v36);
              *(v37 + v36) = *(v37 + v33);
              *(v37 + v33) = v38;
            }

            ++v35;
            v33 -= 16;
            v36 += 16;
          }

          while (v35 < v34);
        }
      }

      else
      {
        v10 = v12;
        v9 = v111;
      }
    }

    v39 = a3[1];
    if (v11 >= v39)
    {
      goto LABEL_31;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_127;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_31;
    }

    v40 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
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
      return;
    }

    if (v40 >= v39)
    {
      v40 = a3[1];
    }

    if (v40 < v10)
    {
      goto LABEL_130;
    }

    if (v11 != v40)
    {
      v110 = v10;
      v112 = v9;
      v85 = *a3;
      v86 = *a3 + 16 * v11 - 16;
      v87 = v10 - v11;
      v106 = v40;
      v116 = *a3;
      v117 = v6;
      do
      {
        v88 = *(v85 + 16 * v11);
        v107 = v87;
        v108 = v86;
        while (1)
        {
          v89 = v11;
          v90 = *v86;
          v91 = *(v86 + 8);
          v122 = *(&v88 + 1);
          v123 = v88;
          v121 = v90;
          v120 = v91;
          v19 = v88;
          swift_unknownObjectRetain();
          v20 = v90;
          swift_unknownObjectRetain();
          v92 = a5(&v123, &v122, &v121, &v120);
          if (v117)
          {
            goto LABEL_105;
          }

          v93 = v92;

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if ((v93 & 1) == 0)
          {
            break;
          }

          v85 = v116;
          if (!v116)
          {
            goto LABEL_134;
          }

          v11 = v89;
          v94 = *v86;
          v88 = *(v86 + 16);
          *v86 = v88;
          *(v86 + 16) = v94;
          v86 -= 16;
          if (__CFADD__(v87++, 1))
          {
            goto LABEL_91;
          }
        }

        v11 = v89;
        v85 = v116;
LABEL_91:
        ++v11;
        v86 = v108 + 16;
        v87 = v107 - 1;
      }

      while (v11 != v106);
      v11 = v106;
      v10 = v110;
      v9 = v112;
      v6 = 0;
    }

LABEL_31:
    if (v11 < v10)
    {
      goto LABEL_126;
    }

    v115 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10023F7F4();
      v9 = v96;
    }

    v41 = *(v9 + 2);
    v42 = v41 + 1;
    if (v41 >= *(v9 + 3) >> 1)
    {
      sub_10023F7F4();
      v9 = v97;
    }

    *(v9 + 2) = v42;
    v43 = v9 + 32;
    v44 = &v9[16 * v41 + 32];
    *v44 = v10;
    *(v44 + 1) = v11;
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if (v41)
    {
      break;
    }

LABEL_80:
    v7 = a3[1];
    v8 = v115;
    if (v115 >= v7)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v45 = v42 - 1;
    v46 = &v43[16 * v42 - 16];
    v47 = &v9[16 * v42];
    if (v42 >= 4)
    {
      v52 = &v43[16 * v42];
      v53 = *(v52 - 8);
      v54 = *(v52 - 7);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_114;
      }

      v57 = *(v52 - 6);
      v56 = *(v52 - 5);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_115;
      }

      v59 = *(v47 + 1);
      v60 = v59 - *v47;
      if (__OFSUB__(v59, *v47))
      {
        goto LABEL_117;
      }

      v58 = __OFADD__(v50, v60);
      v61 = v50 + v60;
      if (v58)
      {
        goto LABEL_120;
      }

      if (v61 >= v55)
      {
        v75 = *v46;
        v74 = *(v46 + 1);
        v58 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v58)
        {
          goto LABEL_125;
        }

        if (v50 < v76)
        {
          v45 = v42 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_51;
    }

    if (v42 == 3)
    {
      v48 = *(v9 + 4);
      v49 = *(v9 + 5);
      v58 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      v51 = v58;
LABEL_51:
      if (v51)
      {
        goto LABEL_116;
      }

      v63 = *v47;
      v62 = *(v47 + 1);
      v64 = __OFSUB__(v62, v63);
      v65 = v62 - v63;
      v66 = v64;
      if (v64)
      {
        goto LABEL_119;
      }

      v67 = *(v46 + 1);
      v68 = v67 - *v46;
      if (__OFSUB__(v67, *v46))
      {
        goto LABEL_122;
      }

      if (__OFADD__(v65, v68))
      {
        goto LABEL_124;
      }

      if (v65 + v68 >= v50)
      {
        if (v50 < v68)
        {
          v45 = v42 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    if (v42 < 2)
    {
      goto LABEL_118;
    }

    v70 = *v47;
    v69 = *(v47 + 1);
    v58 = __OFSUB__(v69, v70);
    v65 = v69 - v70;
    v66 = v58;
LABEL_66:
    if (v66)
    {
      goto LABEL_121;
    }

    v72 = *v46;
    v71 = *(v46 + 1);
    v58 = __OFSUB__(v71, v72);
    v73 = v71 - v72;
    if (v58)
    {
      goto LABEL_123;
    }

    if (v73 < v65)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (v45 - 1 >= v42)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_132;
    }

    v77 = v9;
    v9 = &v43[16 * v45 - 16];
    v78 = *v9;
    v79 = v45;
    v80 = &v43[16 * v45];
    v81 = *(v80 + 1);
    sub_1002174A0((*a3 + 16 * *v9), (*a3 + 16 * *v80), (*a3 + 16 * v81), v117, a5);
    if (v6)
    {
      goto LABEL_104;
    }

    if (v81 < v78)
    {
      goto LABEL_108;
    }

    v6 = v43;
    v82 = *(v77 + 2);
    if (v79 > v82)
    {
      goto LABEL_109;
    }

    *v9 = v78;
    *(v9 + 1) = v81;
    if (v79 >= v82)
    {
      goto LABEL_110;
    }

    v83 = v79;
    v42 = v82 - 1;
    memmove(v80, v80 + 16, 16 * (v82 - 1 - v83));
    v9 = v77;
    *(v77 + 2) = v82 - 1;
    v84 = v82 > 2;
    v43 = v6;
    v6 = 0;
    if (!v84)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
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
  v9 = sub_100217808(v9);
LABEL_96:
  v98 = v9;
  v99 = (v9 + 16);
  for (i = *(v9 + 2); ; *v99 = i)
  {
    v9 = (i - 2);
    if (i < 2)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_133;
    }

    v101 = &v98[16 * i];
    v102 = *v101;
    v103 = &v99[2 * i];
    v104 = v103[1];
    sub_1002174A0((*a3 + 16 * *v101), (*a3 + 16 * *v103), (*a3 + 16 * v104), v117, a5);
    if (v6)
    {
      break;
    }

    if (v104 < v102)
    {
      goto LABEL_111;
    }

    if (v9 >= *v99)
    {
      goto LABEL_112;
    }

    *v101 = v102;
    *(v101 + 1) = v104;
    v105 = *v99 - i;
    if (*v99 < i)
    {
      goto LABEL_113;
    }

    i = *v99 - 1;
    memmove(v103, v103 + 2, 16 * v105);
  }

LABEL_104:
}