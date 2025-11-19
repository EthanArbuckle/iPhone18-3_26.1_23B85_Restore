uint64_t sub_100001904(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v40[1] = a2;
  v40[2] = a3;
  v6 = type metadata accessor for FBKFeedbackForm.Question();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  __chkstk_darwin();
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v40[0] = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  swift_unknownObjectUnownedInit();
  sub_1000021E8(a1, v3 + 24);
  v13 = a1[3];
  v14 = a1[4];
  sub_10000224C(a1, v13);
  (*(v14 + 24))(v13, v14);
  v15 = String.lowercased()();

  strcpy(v43, "framework-");
  BYTE3(v43[1]) = 0;
  HIDWORD(v43[1]) = -369098752;
  String.append(_:)(v15);

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v43, "ios-framework-");
  HIBYTE(v43[1]) = -18;
  String.append(_:)(v15);
  v16 = objc_allocWithZone(type metadata accessor for FBKFeedbackForm());

  v17 = FBKFeedbackForm.init(identifier:)();
  v18 = a1[3];
  v19 = a1[4];
  sub_10000224C(a1, v18);
  if ((*(v19 + 24))(v18, v19) == 0x63696E6150 && v20 == 0xE500000000000000)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {

      goto LABEL_10;
    }
  }

  String.LocalizationValue.init(_:)();
  static Locale.current.getter();
  if ((String.init(localized:defaultValue:table:bundle:locale:comment:)() != 0x7865546C6167654CLL || v22 != 0xEE00726F72724574) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {

    dispatch thunk of FBKFeedbackForm.localizedAttachmentLegalText.setter();
LABEL_10:
    v23 = a1[3];
    v24 = a1[4];
    sub_10000224C(a1, v23);
    (*(v24 + 32))(v23, v24);
    dispatch thunk of FBKFeedbackForm.attachments.setter();
    v26 = v41;
    v25 = v42;
    v27 = *(v41 + 104);
    v27(v9, enum case for FBKFeedbackForm.Question.title(_:), v42);
    dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();

    v28 = *(v26 + 8);
    v28(v9, v25);
    if (sub_1000018B8())
    {
      strcpy(v9, ":is_internal");
      v9[13] = 0;
      *(v9 + 7) = -5120;
      v27(v9, enum case for FBKFeedbackForm.Question.custom(_:), v25);
      dispatch thunk of FBKFeedbackForm.prefill(question:answer:)();
      v28(v9, v25);
    }

    v29 = objc_allocWithZone(type metadata accessor for FBKFeedbackDraftViewController());
    v30 = v17;
    v31 = FBKFeedbackDraftViewController.init(feedbackForm:)();
    *(v3 + 16) = v31;
    v32 = v31;

    dispatch thunk of FBKFeedbackDraftViewController.delegate.setter();

    sub_100002E20(a1);
    return v4;
  }

  v43[0] = 0;
  v43[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v43[0] = 0xD000000000000029;
  v43[1] = 0x800000010000DF80;
  v34 = String._bridgeToObjectiveC()();
  v35 = MGGetStringAnswer();

  if (!v35)
  {
    __break(1u);
  }

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  String.append(_:)(v39);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10000217C()
{
  sub_100002E20((v0 + 24));
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t sub_1000021E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000224C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void sub_100002290(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DA0(v6, qword_10001A458);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_100009110(a1, a2, v14);
    _os_log_impl(&_mh_execute_header, v7, v8, "Controller complete with ID: %{public}s", v9, 0xCu);
    sub_100002E20(v10);
  }

  sub_1000021E8(v3 + 24, v14);
  v11 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(0, v14, v11);

  sub_100002E6C(v14, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_100002458()
{
  v1 = v0;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DA0(v2, qword_10001A458);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136446210;
    v7 = FBKDraftError.description.getter();
    v9 = sub_100009110(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Controller failed to start, error: %{public}s", v5, 0xCu);
    sub_100002E20(v6);
  }

  sub_1000021E8(v1 + 24, v15);
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  FBKDraftError.description.getter();
  v11 = String._bridgeToObjectiveC()();

  *(inited + 48) = v11;
  v12 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_1000196E0, &unk_10000EED0);
  sub_100005340(1, v15, v12);

  sub_100002E6C(v15, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_1000026A0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002DA0(v9, qword_10001A458);
  (*(v5 + 16))(v8, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v2;
    v13 = v12;
    v27[0] = swift_slowAlloc();
    *v13 = 136380931;
    sub_100002ECC(&qword_1000196E8, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v5 + 8))(v8, v4);
    v17 = sub_100009110(v14, v16, v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2082;
    v18 = FBKAttachmentError.description.getter();
    v20 = sub_100009110(v18, v19, v27);

    *(v13 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Controller failed to attach, url: %{private}s error  %{public}s", v13, 0x16u);
    swift_arrayDestroy();

    v2 = v26;
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  sub_1000021E8(v2 + 24, v27);
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = 0x726F727265;
  *(inited + 40) = 0xE500000000000000;
  FBKAttachmentError.description.getter();
  v22 = String._bridgeToObjectiveC()();

  *(inited + 48) = v22;
  v23 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_1000196E0, &unk_10000EED0);
  sub_100005340(2, v27, v23);

  return sub_100002E6C(v27, &qword_1000196C8, &unk_10000EEE0);
}

void sub_100002A2C()
{
  v1 = v0;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DA0(v2, qword_10001A458);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Controller cancelled.", v5, 2u);
  }

  sub_1000021E8(v1 + 24, v9);
  v6 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(6, v9, v6);

  sub_100002E6C(v9, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

void sub_100002B84(void *a1)
{
  v2 = v1;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002DA0(v4, qword_10001A458);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16[0] = v9;
    *v8 = 136315138;
    type metadata accessor for FBKSubmissionError();
    sub_100002ECC(&qword_1000196D0, &type metadata accessor for FBKSubmissionError);
    v10 = Error.localizedDescription.getter();
    v12 = sub_100009110(v10, v11, v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to submit feedback.%s", v8, 0xCu);
    sub_100002E20(v9);
  }

  sub_1000021E8(v2 + 24, v16);
  v13 = sub_100004C6C(&_swiftEmptyArrayStorage);
  sub_100005340(1, v16, v13);

  sub_100002E6C(v16, &qword_1000196C8, &unk_10000EEE0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    [Strong dismissViewControllerAnimated:0 completion:0];
  }
}

uint64_t sub_100002DA0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002DD8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002E20(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002E6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002DD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002ECC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100002F14(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v62 = a1;
  v63 = a3;
  v4 = sub_100002DD8(&qword_1000196F0, &qword_10000EE28);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v61 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v60 = &v59 - v9;
  v10 = __chkstk_darwin(v8);
  v59 = &v59 - v11;
  __chkstk_darwin(v10);
  v13 = &v59 - v12;
  v14 = sub_100002DD8(&qword_1000196F8, &qword_10000EE30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v59 - v16;
  v18 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v59 - v20;
  v22 = type metadata accessor for URL();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v59 - v28;
  v30 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  if (!*(v30 + 1))
  {
    goto LABEL_4;
  }

  v31 = *v30;

  URL.init(fileURLWithPath:)();

  sub_1000036EC(v27, v21);
  v32 = *(v23 + 8);
  v32(v27, v22);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100002E6C(v21, &qword_100019700, qword_10000F1C0);
LABEL_4:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100002DA0(v33, qword_10001A458);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Invalid log_path.", v36, 2u);
    }

LABEL_9:
    v37 = v63;
    *(v63 + 32) = 0;
    *v37 = 0u;
    v37[1] = 0u;
    return;
  }

  (*(v23 + 32))(v29, v21, v22);
  v38 = v62;
  if (v62 <= 1)
  {
    if (!v62)
    {
      sub_100009E54(0, a2, v17);
      v51 = type metadata accessor for PanicLog();
      if ((*(*(v51 - 8) + 48))(v17, 1, v51) == 1)
      {
        v32(v29, v22);
        v43 = &qword_1000196F8;
        v44 = &qword_10000EE30;
        v45 = v17;
        goto LABEL_26;
      }

      v58 = v63;
      *(v63 + 24) = v51;
      v58[4] = &off_100014C68;
      v48 = sub_100003F30(v58);
      v49 = type metadata accessor for PanicLog;
      v50 = v17;
      goto LABEL_34;
    }

    if (v62 == 1)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v59;
      v40 = v59;
      v41 = 3;
      goto LABEL_21;
    }

LABEL_27:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100002DA0(v53, qword_10001A458);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      *(v56 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v54, v55, "Invalid Log Type %ld", v56, 0xCu);
    }

    v32(v29, v22);
    goto LABEL_9;
  }

  if (v62 != 2)
  {
    if (v62 == 3)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v60;
      v40 = v60;
      v41 = 1;
      goto LABEL_21;
    }

    if (v62 == 4)
    {
      (*(v23 + 16))(v27, v29, v22);
      v39 = v61;
      v40 = v61;
      v41 = 2;
LABEL_21:
      sub_100005D20(v41, v27, v40);
      v46 = type metadata accessor for CrashLog();
      if ((*(*(v46 - 8) + 48))(v39, 1, v46) == 1)
      {
        v32(v29, v22);
        v43 = &qword_1000196F0;
        v44 = &qword_10000EE28;
        v45 = v39;
        goto LABEL_26;
      }

      v47 = v63;
      *(v63 + 24) = v46;
      v47[4] = &off_100014AD0;
      v48 = sub_100003F30(v47);
      v49 = type metadata accessor for CrashLog;
      v50 = v39;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  (*(v23 + 16))(v27, v29, v22);
  sub_100005D20(0, v27, v13);
  v42 = type metadata accessor for CrashLog();
  if ((*(*(v42 - 8) + 48))(v13, 1, v42) == 1)
  {
    v32(v29, v22);
    v43 = &qword_1000196F0;
    v44 = &qword_10000EE28;
    v45 = v13;
LABEL_26:
    sub_100002E6C(v45, v43, v44);
    v52 = v63;
    *v63 = 0u;
    *(v52 + 16) = 0u;
    *(v52 + 32) = 0;
    return;
  }

  v57 = v63;
  *(v63 + 24) = v42;
  v57[4] = &off_100014AD0;
  v48 = sub_100003F30(v57);
  v49 = type metadata accessor for CrashLog;
  v50 = v13;
LABEL_34:
  sub_100003F94(v50, v48, v49);
  v32(v29, v22);
}

uint64_t sub_1000036EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - v14;
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  v45 = [objc_opt_self() defaultManager];
  v18 = URL.checkResourceIsReachable()();
  if (!v19)
  {
    if (v18)
    {
      URL.resolvingSymlinksInPath()();
      URL.path.getter();
      v20 = String._bridgeToObjectiveC()();

      v21 = v45;
      v22 = [v45 fileExistsAtPath:v20];

      if (v22)
      {
        URL.path.getter();
        v23 = String._bridgeToObjectiveC()();

        v24 = [v21 isReadableFileAtPath:v23];

        if (v24)
        {

          v25 = v44;
          (*(v8 + 32))(v44, v17, v7);
LABEL_16:
          v41 = 0;
          return (*(v8 + 56))(v25, v41, 1, v7);
        }

        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(26);

        v26 = 0x800000010000E280;
        v27 = 0xD000000000000018;
      }

      else
      {
        v46 = 0;
        v47 = 0xE000000000000000;
        _StringGuts.grow(_:)(24);

        v26 = 0x800000010000E260;
        v27 = 0xD000000000000016;
      }

      v46 = v27;
      v47 = v26;
      v28._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v28);

      sub_100004054(v46, v47);

      swift_willThrow();
      (*(v8 + 8))(v17, v7);
    }

    else
    {
      sub_100004054(0xD000000000000018, 0x800000010000E240);
      swift_willThrow();
    }
  }

  sub_100003CF0(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {

    v40 = *(v8 + 32);
    v40(v15, v6, v7);
    v25 = v44;
    v40(v44, v15, v7);
    goto LABEL_16;
  }

  sub_100002E6C(v6, &qword_100019700, qword_10000F1C0);
  if (qword_100019510 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100002DA0(v29, qword_10001A440);
  (*(v8 + 16))(v12, a1, v7);
  swift_errorRetain();
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v32 = 136446466;
    sub_100003FFC();
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    (*(v8 + 8))(v12, v7);
    v36 = sub_100009110(v33, v35, &v46);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v39 = sub_100009110(v37, v38, &v46);

    *(v32 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v30, v31, "Error accessing %{public}s. %{public}s", v32, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v8 + 8))(v12, v7);
  }

  v41 = 1;
  v25 = v44;
  return (*(v8 + 56))(v25, v41, 1, v7);
}

uint64_t sub_100003CF0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - v9;
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  URL.deletingLastPathComponent()();
  URL.appendingPathComponent(_:isDirectory:)();
  v13 = *(v3 + 8);
  v13(v7, v2);
  URL.lastPathComponent.getter();
  URL.appendingPathComponent(_:)();

  v13(v10, v2);
  v14 = [objc_opt_self() defaultManager];
  URL.path.getter();
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 fileExistsAtPath:v15];

  if (v16)
  {
    (*(v3 + 32))(a1, v12, v2);
    v17 = 0;
  }

  else
  {
    v13(v12, v2);
    v17 = 1;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t *sub_100003F30(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100003F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100003FFC()
{
  result = qword_1000196E8;
  if (!qword_1000196E8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000196E8);
  }

  return result;
}

id sub_100004054(uint64_t a1, uint64_t a2)
{
  sub_100002DD8(&qword_100019708, &qword_10000EE38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_100004E78(inited);
  swift_setDeallocating();
  sub_100002E6C(inited + 32, &qword_100019710, &qword_10000EE40);
  v6 = objc_allocWithZone(NSError);
  v7 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithDomain:v7 code:1 userInfo:isa];

  return v9;
}

uint64_t sub_1000041A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_1000049EC(&v35), (v5 & 1) == 0))
  {
    sub_100004A30(&v35);
    goto LABEL_9;
  }

  sub_100004D70(*(a1 + 56) + 32 * v4, v38);
  sub_100004A30(&v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100002DA0(v11, qword_10001A458);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v35 = v15;
      *v14 = 136315138;
      v16 = Dictionary.description.getter();
      v18 = sub_100009110(v16, v17, &v35);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "Missing or malformed options in launch parameters: %s", v14, 0xCu);
      sub_100002E20(v15);
    }

    goto LABEL_19;
  }

  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_1000049EC(&v35), (v7 & 1) == 0))
  {
    sub_100004A30(&v35);
    goto LABEL_14;
  }

  sub_100004D70(*(a1 + 56) + 32 * v6, v38);
  sub_100004A30(&v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100002DA0(v19, qword_10001A458);

    v12 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v35 = v22;
      *v21 = 136315138;
      v23 = Dictionary.description.getter();
      v25 = sub_100009110(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v12, v20, "Missing or malformed type in launch parameters: %s", v21, 0xCu);
      sub_100002E20(v22);
    }

    goto LABEL_18;
  }

  v8 = type metadata accessor for JSONDecoder();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for DiagnosticsReporterLaunchOptions();
  sub_100004E20();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v29 = v35;
  v30 = sub_100008688(0x65707974uLL);
  if (v31)
  {
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100002DA0(v32, qword_10001A458);
    v12 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = 1701869940;
      _os_log_impl(&_mh_execute_header, v12, v33, "Log type value does not match a know type: %ld", v34, 0xCu);
    }

LABEL_18:
    sub_100004DCC(0x736E6F6974706FLL, 0xE700000000000000);
LABEL_19:

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    goto LABEL_20;
  }

  sub_100002F14(v30, v29, &v35);

  sub_100004DCC(0x736E6F6974706FLL, 0xE700000000000000);
  sub_100004A84(&v39);
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_100004FA8(&v39, a2, &qword_1000196C8, &unk_10000EEE0);
LABEL_20:
  sub_100004FA8(&v39, &v35, &qword_1000196C8, &unk_10000EEE0);
  if (*(&v36 + 1))
  {
    sub_100004A84(&v39);
    v26 = &v35;
  }

  else
  {
    sub_100004A84(&v35);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v27 = sub_100004C6C(&_swiftEmptyArrayStorage);
    sub_100005340(3, &v35, v27);

    sub_100004A84(&v35);
    v26 = &v39;
  }

  return sub_100004A84(v26);
}

void *sub_100004924(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100004944@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_100004974(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100004AEC(a1, a2, v6);
}

unint64_t sub_1000049EC(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_100004BA4(a1, v4);
}

uint64_t sub_100004A84(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100004AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100004BA4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100005020(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100004A30(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_100004C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002DD8(&qword_100019728, qword_10000EE50);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100004974(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100004D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100004DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100004E20()
{
  result = qword_100019718;
  if (!qword_100019718)
  {
    type metadata accessor for DiagnosticsReporterLaunchOptions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019718);
  }

  return result;
}

unint64_t sub_100004E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002DD8(&qword_100019720, &qword_10000EE48);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100004FA8(v4, &v13, &qword_100019710, &qword_10000EE40);
      v5 = v13;
      v6 = v14;
      result = sub_100004974(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100005010(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_100004FA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002DD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100005010(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000509C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002DD8(&qword_100019728, qword_10000EE50);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_100005340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 32) = 0x737574617473;
  *(inited + 16) = xmmword_10000ED90;
  *(inited + 40) = 0xE600000000000000;
  v5 = String._bridgeToObjectiveC()();

  *(inited + 48) = v5;
  v6 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100005BFC(inited + 32);
  if (*(a2 + 24))
  {
    sub_100005CB0(a2, v110);
    v7 = v111;
    if (!v111)
    {
      goto LABEL_87;
    }

    v8 = v112;
    sub_10000224C(v110, v111);
    v9 = (*(v8 + 56))(v7, v8);
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;
    v105 = v9;

    v15 = 0;
    while (v13)
    {
      v18 = v15;
LABEL_14:
      v19 = __clz(__rbit64(v13)) | (v18 << 6);
      v20 = (*(v105 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(*(v105 + 56) + 8 * v19);

      v108 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = sub_100004974(v22, v21);
      v27 = *(v6 + 16);
      v28 = (v26 & 1) == 0;
      v29 = __OFADD__(v27, v28);
      v30 = v27 + v28;
      if (v29)
      {
        goto LABEL_82;
      }

      v31 = v26;
      if (*(v6 + 24) >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v32 = v6;
        }

        else
        {
          v98 = v25;
          sub_100002DD8(&qword_100019728, qword_10000EE50);
          v37 = static _DictionaryStorage.copy(original:)();
          v32 = v37;
          if (*(v6 + 16))
          {
            v38 = (v37 + 64);
            v39 = (v6 + 64);
            v40 = ((1 << *(v32 + 32)) + 63) >> 6;
            if (v32 != v6 || v38 >= &v39[8 * v40])
            {
              memmove(v38, v39, 8 * v40);
            }

            v41 = 0;
            *(v32 + 16) = *(v6 + 16);
            v42 = 1 << *(v6 + 32);
            if (v42 < 64)
            {
              v43 = ~(-1 << v42);
            }

            else
            {
              v43 = -1;
            }

            v44 = v43 & *(v6 + 64);
            v45 = (v42 + 63) >> 6;
            v99 = v45;
            if (v44)
            {
              do
              {
                v46 = __clz(__rbit64(v44));
                v103 = (v44 - 1) & v44;
LABEL_37:
                v49 = v46 | (v41 << 6);
                v50 = (*(v6 + 48) + 16 * v49);
                v51 = v50[1];
                v101 = *(*(v6 + 56) + 8 * v49);
                v52 = (*(v32 + 48) + 16 * v49);
                *v52 = *v50;
                v52[1] = v51;
                *(*(v32 + 56) + 8 * v49) = v101;

                v53 = v101;
                v45 = v99;
                v44 = v103;
              }

              while (v103);
            }

            v47 = v41;
            while (1)
            {
              v41 = v47 + 1;
              if (__OFADD__(v47, 1))
              {
                goto LABEL_86;
              }

              if (v41 >= v45)
              {
                break;
              }

              v48 = *(v6 + 64 + 8 * v41);
              ++v47;
              if (v48)
              {
                v46 = __clz(__rbit64(v48));
                v103 = (v48 - 1) & v48;
                goto LABEL_37;
              }
            }
          }

          v25 = v98;
        }
      }

      else
      {
        sub_10000509C(v30, isUniquelyReferenced_nonNull_native);
        v32 = v6;
        v25 = sub_100004974(v22, v21);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_88;
        }
      }

      v13 &= v13 - 1;
      if (v31)
      {
        v16 = *(v32 + 56);
        v17 = *(v16 + 8 * v25);
        *(v16 + 8 * v25) = v108;
      }

      else
      {
        *(v32 + 8 * (v25 >> 6) + 64) |= 1 << v25;
        v34 = (*(v32 + 48) + 16 * v25);
        *v34 = v22;
        v34[1] = v21;
        *(*(v32 + 56) + 8 * v25) = v108;
        v35 = *(v32 + 16);
        v29 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v29)
        {
          goto LABEL_84;
        }

        *(v32 + 16) = v36;
      }

      v15 = v18;
      v6 = v32;
    }

    while (1)
    {
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        sub_100002E20(v110);
        goto LABEL_41;
      }

      v13 = *(v10 + 8 * v18);
      ++v15;
      if (v13)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_41:
    v54 = 1 << *(a3 + 32);
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    else
    {
      v55 = -1;
    }

    v56 = v55 & *(a3 + 64);
    v57 = (v54 + 63) >> 6;

    v58 = 0;
    while (v56)
    {
      v61 = v58;
LABEL_52:
      v62 = __clz(__rbit64(v56)) | (v61 << 6);
      v63 = (*(a3 + 48) + 16 * v62);
      v65 = *v63;
      v64 = v63[1];
      v66 = *(*(a3 + 56) + 8 * v62);

      v109 = v66;
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v110[0] = v6;
      v68 = sub_100004974(v65, v64);
      v70 = *(v6 + 16);
      v71 = (v69 & 1) == 0;
      v29 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v29)
      {
        goto LABEL_81;
      }

      v73 = v69;
      if (*(v6 + 24) >= v72)
      {
        if (v67)
        {
          v74 = v6;
        }

        else
        {
          v100 = v68;
          sub_100002DD8(&qword_100019728, qword_10000EE50);
          v79 = static _DictionaryStorage.copy(original:)();
          v74 = v79;
          if (*(v6 + 16))
          {
            v80 = (v79 + 64);
            v81 = (v6 + 64);
            v82 = ((1 << *(v74 + 32)) + 63) >> 6;
            if (v74 != v6 || v80 >= &v81[8 * v82])
            {
              memmove(v80, v81, 8 * v82);
            }

            v83 = 0;
            *(v74 + 16) = *(v6 + 16);
            v84 = 1 << *(v6 + 32);
            if (v84 < 64)
            {
              v85 = ~(-1 << v84);
            }

            else
            {
              v85 = -1;
            }

            v86 = v85 & *(v6 + 64);
            v87 = (v84 + 63) >> 6;
            v102 = v87;
            if (v86)
            {
              do
              {
                v88 = __clz(__rbit64(v86));
                v106 = (v86 - 1) & v86;
LABEL_75:
                v91 = v88 | (v83 << 6);
                v92 = (*(v6 + 48) + 16 * v91);
                v93 = v92[1];
                v104 = *(*(v6 + 56) + 8 * v91);
                v94 = (*(v74 + 48) + 16 * v91);
                *v94 = *v92;
                v94[1] = v93;
                *(*(v74 + 56) + 8 * v91) = v104;

                v95 = v104;
                v87 = v102;
                v86 = v106;
              }

              while (v106);
            }

            v89 = v83;
            while (1)
            {
              v83 = v89 + 1;
              if (__OFADD__(v89, 1))
              {
                goto LABEL_85;
              }

              if (v83 >= v87)
              {
                break;
              }

              v90 = *(v6 + 64 + 8 * v83);
              ++v89;
              if (v90)
              {
                v88 = __clz(__rbit64(v90));
                v106 = (v90 - 1) & v90;
                goto LABEL_75;
              }
            }
          }

          v68 = v100;
        }
      }

      else
      {
        sub_10000509C(v72, v67);
        v74 = v110[0];
        v68 = sub_100004974(v65, v64);
        if ((v73 & 1) != (v75 & 1))
        {
          goto LABEL_88;
        }
      }

      v56 &= v56 - 1;
      if (v73)
      {
        v59 = *(v74 + 56);
        v60 = *(v59 + 8 * v68);
        *(v59 + 8 * v68) = v109;
      }

      else
      {
        *(v74 + 8 * (v68 >> 6) + 64) |= 1 << v68;
        v76 = (*(v74 + 48) + 16 * v68);
        *v76 = v65;
        v76[1] = v64;
        *(*(v74 + 56) + 8 * v68) = v109;
        v77 = *(v74 + 16);
        v29 = __OFADD__(v77, 1);
        v78 = v77 + 1;
        if (v29)
        {
          goto LABEL_83;
        }

        *(v74 + 16) = v78;
      }

      v58 = v61;
      v6 = v74;
    }

    while (1)
    {
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v61 >= v57)
      {

        v96 = String._bridgeToObjectiveC()();
        sub_100005C64();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        AnalyticsSendEvent();

        return;
      }

      v56 = *(a3 + 64 + 8 * v61);
      ++v58;
      if (v56)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100005BFC(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005C64()
{
  result = qword_100019730;
  if (!qword_100019730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019730);
  }

  return result;
}

uint64_t sub_100005CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005D20@<X0>(unsigned __int8 a1@<W0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v79 = a3;
  v5 = a1;
  v6 = type metadata accessor for URL();
  v80 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v71 = &v66[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v74 = &v66[-v11];
  v12 = type metadata accessor for CrashLog();
  v78 = *(v12 - 1);
  v13 = *(v78 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v66[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = (v16 + *(v14 + 32));
  *v17 = 0x6873617243;
  v17[1] = 0xE500000000000000;
  if (v5 == 4)
  {
    v18 = 3;
  }

  else
  {
    v18 = a1;
  }

  *(v16 + 16) = v18;
  v19 = *(v7 + 16);
  v72 = *(v14 + 28);
  (v19)(v16 + v72, a2, v6);
  sub_100002DD8(&qword_100019738, &qword_10000EF00);
  v20 = *(v7 + 72);
  v76 = v7;
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10000ED90;
  v77 = a2;
  v73 = v19;
  (v19)(v22 + v21, a2, v6);
  v23 = v12[9];
  v70 = v22;
  *(v16 + v23) = v22;
  v75 = sub_100004E78(&_swiftEmptyArrayStorage);
  if (!v18)
  {
    goto LABEL_9;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v25 = &off_100014D88;
  v26 = &type metadata for CriticalPolicy;
  if (v24)
  {
    goto LABEL_10;
  }

  if (v18 == 1)
  {
LABEL_9:

    v25 = &off_100014D88;
    v26 = &type metadata for CriticalPolicy;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      v26 = &type metadata for DefaultPolicy;
      v25 = &off_100014A08;
    }
  }

LABEL_10:
  v28 = v73;
  *(&v84 + 1) = v26;
  v85 = v25;
  v29 = v12[11];
  sub_100006E2C(&v83, &v29[v16]);
  type metadata accessor for IPSReport();
  v30 = v77;
  v31 = v80;
  (v28)(v74, v77, v80);
  if (IPSReport.__allocating_init(reportPath:)())
  {
    v74 = v12;
    v32 = v12[10];
    v33 = dispatch thunk of IPSReport.headerJson.getter();

    *(v16 + v32) = v33;
    *v16 = dispatch thunk of IPSReport.body.getter();
    *(v16 + 8) = v34;
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;
    v38 = type metadata accessor for __DataStorage();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v41 = __DataStorage.init(capacity:)();
    v83 = 0uLL;
    v42 = __chkstk_darwin(v41);
    *&v66[-48] = v30;
    *&v66[-40] = v35;
    *&v66[-32] = v37;
    *&v66[-24] = 128;
    *&v66[-16] = &v83;
    v81 = 0;
    v82 = v42;
    sub_100006D50(sub_100006E44);

    v43 = *(&v83 + 1);
    if (*(&v83 + 1))
    {
      v44 = v83;

      (*(v76 + 8))(v30, v80);
    }

    else
    {
      v57 = v80;
      if (*(v33 + 16) && (v58 = sub_100004974(1701667182, 0xE400000000000000), (v59 & 1) != 0))
      {
        sub_100004D70(*(v33 + 56) + 32 * v58, &v83);
      }

      else
      {

        v83 = 0u;
        v84 = 0u;
      }

      (*(v76 + 8))(v30, v57);
      if (*(&v84 + 1))
      {
        v62 = swift_dynamicCast();
        if (v62)
        {
          v43 = v82;
        }

        else
        {
          v43 = 0;
        }

        if (v62)
        {
          v44 = v81;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        sub_100006E68(&v83);
        v43 = 0;
        v44 = 0;
      }
    }

    v63 = v74;
    v64 = (v16 + *(v74 + 12));
    *v64 = v44;
    v64[1] = v43;
    *(v16 + 17) = 0;
    v65 = v79;
    sub_100006ED0(v16, v79);
    (*(v78 + 56))(v65, 0, 1, v63);
    return sub_100006F34(v16);
  }

  else
  {
    v74 = v29;
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100002DA0(v45, qword_10001A458);
    v46 = v71;
    (v28)(v71, v30, v31);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v68 = v49;
      v73 = swift_slowAlloc();
      *&v83 = v73;
      *v49 = 136446210;
      v69 = v47;
      v50 = URL.absoluteString.getter();
      v52 = v51;
      v67 = v48;
      v53 = *(v76 + 8);
      v53(v46, v31);
      v54 = sub_100009110(v50, v52, &v83);

      v55 = v68;
      v56 = v69;
      *(v68 + 1) = v54;
      _os_log_impl(&_mh_execute_header, v56, v67, "Unable to read header from URL: %{public}s", v55, 0xCu);
      sub_100002E20(v73);
    }

    else
    {

      v53 = *(v76 + 8);
      v53(v46, v31);
    }

    v53(v30, v31);
    v60 = v74;
    v53((v16 + v72), v31);

    sub_100002E20(&v60[v16]);
    return (*(v78 + 56))(v79, 1, 1, v12);
  }
}

uint64_t sub_10000657C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 4541505;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0x647261646E617453;
    }

    if (v3 == 2)
    {
      v5 = 0x800000010000DE80;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x61576D6574737953;
    }

    else
    {
      v4 = 4541505;
    }

    if (v3)
    {
      v5 = 0xEE00676F64686374;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xD000000000000014;
  v8 = 0x800000010000DE80;
  if (a2 != 2)
  {
    v7 = 0x647261646E617453;
    v8 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x61576D6574737953;
    v6 = 0xEE00676F64686374;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000066DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000067A8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100006860()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100006928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000075E4(*a1);
  *a2 = result;
  return result;
}

void sub_100006958(unint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 4541505;
  v4 = 0x800000010000DE80;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x647261646E617453;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x61576D6574737953;
    v2 = 0xEE00676F64686374;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t type metadata accessor for CrashLog()
{
  result = qword_1000197A0;
  if (!qword_1000197A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100006A2C()
{
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000EEF0;
  *(inited + 32) = 0x737365636F7270;
  *(inited + 40) = 0xE700000000000000;
  v2 = type metadata accessor for CrashLog();
  v3 = *(v0 + *(v2 + 40));
  if (*(v3 + 16) && (v4 = sub_100004974(1701667182, 0xE400000000000000), (v5 & 1) != 0) && (sub_100004D70(*(v3 + 56) + 32 * v4, v16), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v15;
  }

  else
  {
    sub_100007598();
    v6 = NSString.init(stringLiteral:)();
  }

  *(inited + 48) = v6;
  *(inited + 56) = 0x746E656469636E69;
  *(inited + 64) = 0xEB0000000064695FLL;
  if (*(v3 + 16) && (v7 = sub_100004974(0x746E656469636E69, 0xEB0000000064695FLL), (v8 & 1) != 0) && (sub_100004D70(*(v3 + 56) + 32 * v7, v16), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v15;
  }

  else
  {
    sub_100007598();
    v9 = NSString.init(stringLiteral:)();
  }

  *(inited + 72) = v9;
  *(inited + 80) = 1701869940;
  *(inited + 88) = 0xE400000000000000;
  v10 = (v0 + *(v2 + 32));
  v11 = *v10;
  v12 = v10[1];
  *(inited + 96) = String._bridgeToObjectiveC()();
  v13 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  swift_arrayDestroy();
  return v13;
}

uint64_t sub_100006C4C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

unint64_t sub_100006C94()
{
  v1 = 4541505;
  v2 = 0xD000000000000014;
  if (*(v0 + 16) != 2)
  {
    v2 = 0x647261646E617453;
  }

  if (*(v0 + 16))
  {
    v1 = 0x61576D6574737953;
  }

  if (*(v0 + 16) <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100006D18(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

void sub_100006D50(void (*a1)(uint64_t, uint64_t))
{
  Data.InlineSlice.ensureUniqueReference()();
  v3 = *v1;
  v4 = v1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v13 = a1;
  v5 = *(v1 + 1);

  v6 = __DataStorage._bytes.getter();
  if (!v6)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = __DataStorage._offset.getter();
  v9 = v3 - v8;
  if (__OFSUB__(v3, v8))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v4 - v3;
  v11 = __DataStorage._length.getter();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13(v7 + v9, v7 + v9 + v12);
}

uint64_t sub_100006E2C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100006E44(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_100007630(a1);
}

uint64_t sub_100006E68(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_100019740, qword_10000EF08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006ED0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006F34(uint64_t a1)
{
  v2 = type metadata accessor for CrashLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100006FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000707C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10000713C()
{
  sub_100007380(319, &qword_1000197B0);
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_100007260();
      if (v2 <= 0x3F)
      {
        sub_1000072B8();
        if (v3 <= 0x3F)
        {
          sub_10000731C();
          if (v4 <= 0x3F)
          {
            sub_100007380(319, &qword_1000197D0);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100007260()
{
  if (!qword_1000197B8)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1000197B8);
    }
  }
}

void sub_1000072B8()
{
  if (!qword_1000197C0)
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_1000197C0);
    }
  }
}

unint64_t sub_10000731C()
{
  result = qword_1000197C8;
  if (!qword_1000197C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000197C8);
  }

  return result;
}

void sub_100007380(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CrashLog.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007544()
{
  result = qword_100019820;
  if (!qword_100019820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019820);
  }

  return result;
}

unint64_t sub_100007598()
{
  result = qword_100019828;
  if (!qword_100019828)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100019828);
  }

  return result;
}

unint64_t sub_1000075E4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100014918, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100007630(uint64_t result)
{
  if (result)
  {
    __chkstk_darwin(result);
    return URL.withUnsafeFileSystemRepresentation<A>(_:)();
  }

  return result;
}

uint64_t sub_1000076B4(const char *a1, uint64_t a2, uint64_t a3, void *a4, size_t a5, uint64_t *a6)
{
  v10 = String.utf8CString.getter();
  v11 = getxattr(a1, (v10 + 32), a4, a5, 0, 0);

  if (v11 >= 1)
  {
    v13 = String.init(validatingUTF8:)();
    v14 = a6[1];
    *a6 = v13;
    a6[1] = v15;
  }

  return result;
}

id sub_1000077B4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

id sub_100007AE0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog;
  result = sub_100005CB0(&v1[OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_diagnosticLog], v14);
  if (!v14[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005CB0(&v1[v2], v13);
  if (!v13[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100007F34(v13);
  v5 = v4;
  v7 = v6;
  sub_100002E20(v13);
  sub_1000021E8(v14, v13);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v8 = sub_100001904(v13, v5, v7);
  sub_100002E20(v14);
  swift_unknownObjectUnownedAssign();
  v9 = OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController;
  v10 = *&v1[OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController];
  *&v1[OBJC_IVAR____TtC19DiagnosticsReporter18RootViewController_feedbackController] = v8;

  v11 = *&v1[v9];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [*(v11 + 16) setModalInPresentation:1];
  v12 = *&v1[v9];
  if (v12)
  {
    return [v1 presentViewController:*(v12 + 16) animated:1 completion:0];
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (__chkstk_darwin)();
  v9 = &v18 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v7);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v18 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v16, v9, v3);
  (*(v10 + 16))(v14, v16, v3);
  Array.append(_:)();
  return (*(v10 + 8))(v16, v3);
}

uint64_t sub_100007E58(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100007ED0(v3, a2);
  sub_100002DA0(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t *sub_100007ED0(uint64_t a1, uint64_t *a2)
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

void sub_100007F34(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_10000224C(a1, v2);
  v4 = *(v3 + 24);
  if (v4(v2, v3) == 0x63696E6150 && v5 == 0xE500000000000000)
  {

    goto LABEL_20;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
LABEL_20:
    v23 = String._bridgeToObjectiveC()();
    v24 = [objc_opt_self() bundleWithIdentifier:v23];

    if (v24)
    {
      v47._countAndFlagsBits = 0xD00000000000001BLL;
      v47._object = 0x800000010000E450;
      v25._countAndFlagsBits = 0x6E6150656C746954;
      v25._object = 0xED0000534F696369;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v47);

      sub_100002DD8(&qword_100019958, &qword_10000F048);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10000ED90;
      v28 = String._bridgeToObjectiveC()();
      v29 = MGGetStringAnswer();

      if (v29)
      {
        v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v31;

        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = sub_10000850C();
        *(v27 + 32) = v30;
        *(v27 + 40) = v32;
        static String.localizedStringWithFormat(_:_:)();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v4(v2, v3) == 0x6873617243 && v8 == 0xE500000000000000)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v33 = a1[3];
  v34 = a1[4];
  sub_10000224C(a1, v33);
  if ((*(v34 + 64))(v33, v34) == 4541505 && v35 == 0xE300000000000000)
  {
    goto LABEL_31;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_32;
  }

  v38 = a1[3];
  v39 = a1[4];
  sub_10000224C(a1, v38);
  if ((*(v39 + 64))(v38, v39) == 0x61576D6574737953 && v40 == 0xEE00676F64686374)
  {
LABEL_31:

    goto LABEL_32;
  }

  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v45)
  {
LABEL_32:
    v41 = String._bridgeToObjectiveC()();
    v42 = [objc_opt_self() bundleWithIdentifier:v41];

    if (v42)
    {
      v43._countAndFlagsBits = 0xD000000000000010;
      v48._object = 0x800000010000E490;
      v43._object = 0x800000010000E470;
      v48._countAndFlagsBits = 0xD000000000000028;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v43, 0, v42, v44, v48);

      static String.localizedStringWithFormat(_:_:)();

      return;
    }

    goto LABEL_38;
  }

LABEL_11:
  v11 = a1[3];
  v12 = a1[4];
  sub_10000224C(a1, v11);
  v13 = (*(v12 + 72))(v11, v12);
  v15 = v14;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() bundleWithIdentifier:v16];

  if (!v17)
  {
LABEL_39:
    __break(1u);
    return;
  }

  if (v15)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0xE700000000000000;
  }

  if (v15)
  {
    v19 = v13;
  }

  else
  {
    v19 = 0x6E776F6E6B6E55;
  }

  v46._countAndFlagsBits = 0xD00000000000001BLL;
  v46._object = 0x800000010000E450;
  v20._countAndFlagsBits = 0x617243656C746954;
  v20._object = 0xEA00000000006873;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v17, v21, v46);

  sub_100002DD8(&qword_100019958, &qword_10000F048);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10000ED90;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_10000850C();
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  static String.localizedStringWithFormat(_:_:)();
}

unint64_t sub_10000850C()
{
  result = qword_100019960;
  if (!qword_100019960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019960);
  }

  return result;
}

Swift::Int sub_100008590()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100008604()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100008648@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100008688(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_100008688(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10000869C()
{
  result = qword_100019968;
  if (!qword_100019968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019968);
  }

  return result;
}

uint64_t sub_100008700()
{
  if ([v0 _remoteViewControllerProxy])
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
    sub_100002DD8(&qword_1000199A8, &qword_10000F188);
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_100002E6C(v5, &qword_100019740, qword_10000EF08);
    return 0;
  }
}

void sub_1000088E4(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100002DA0(v6, qword_10001A458);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_100009110(0xD00000000000001BLL, 0x800000010000E5A0, v27);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_100002E20(v10);
  }

  if (a1)
  {
    v11 = [a1 userInfo];
    if (v11)
    {
      v12 = v11;
      v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000041A4(v13, v27);

      v14 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
      swift_beginAccess();
      sub_100009DD8(v27, v2 + v14);
      swift_endAccess();
    }

    else
    {
      v15 = a1;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v15;
        *v19 = a1;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "Context is missing user info dictionary: %@.", v18, 0xCu);
        sub_100002E6C(v19, &qword_1000199B8, &unk_10000F1A0);
      }
    }

    v21 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
    swift_beginAccess();
    sub_100005CB0(v2 + v21, v27);
    v22 = v27[3];
    v23 = sub_100002E6C(v27, &qword_1000196C8, &unk_10000EEE0);
    if (v22)
    {
      if (a2)
      {
        a2(v23);
      }
    }

    else
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Unable to decode diagnostic log from launch parameters.", v26, 2u);
      }

      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_100008F8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009040(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000090B4(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100009110(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100009110(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000091DC(v11, 0, 0, 1, a1, a2);
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
    sub_100004D70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002E20(v11);
  return v7;
}

unint64_t sub_1000091DC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000092E8(a5, a6);
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

char *sub_1000092E8(uint64_t a1, unint64_t a2)
{
  v4 = sub_100009334(a1, a2);
  sub_100009464(&off_1000148F0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100009334(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009550(v5, 0);
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
        v7 = sub_100009550(v10, 0);
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

uint64_t sub_100009464(uint64_t result)
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

  result = sub_1000095C4(result, v12, 1, v3);
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

void *sub_100009550(uint64_t a1, uint64_t a2)
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

  sub_100002DD8(&qword_1000199B0, &unk_10000F190);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000095C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002DD8(&qword_1000199B0, &unk_10000F190);
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

_BYTE **sub_1000096B8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_1000096C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_diagnosticsLog;
  swift_beginAccess();
  result = sub_100005CB0(&v1[v2], v14);
  if (!v14[3])
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_100005CB0(&v1[v2], v13);
  if (!v13[3])
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100007F34(v13);
  v5 = v4;
  v7 = v6;
  sub_100002E20(v13);
  sub_1000021E8(v14, v13);
  type metadata accessor for FeedbackController();
  swift_allocObject();
  v8 = sub_100001904(v13, v5, v7);
  sub_100002E20(v14);
  swift_unknownObjectUnownedAssign();
  v9 = OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController;
  v10 = *&v1[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController];
  *&v1[OBJC_IVAR____TtC19DiagnosticsReporter20RemoteViewController_feedbackController] = v8;

  v11 = *&v1[v9];
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = [*(v11 + 16) setModalInPresentation:1];
  v12 = *&v1[v9];
  if (v12)
  {
    return [v1 presentViewController:*(v12 + 16) animated:1 completion:0];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100009A98(void (*a1)(void))
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002DA0(v2, qword_10001A458);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100009110(0xD000000000000026, 0x800000010000E5C0, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100002E20(v6);
  }

  if (a1)
  {
    a1();
  }
}

void *sub_100009BF0()
{
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100002DA0(v0, qword_10001A458);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100009110(0xD00000000000001DLL, 0x800000010000E580, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_100002E20(v4);
  }

  result = sub_100008700();
  if (result)
  {
    [result invalidate];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100009D7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100009D8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100009DD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002DD8(&qword_1000196C8, &unk_10000EEE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100009E54@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a3;
  v5 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v114 = &v101 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v112 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v116 = &v101 - v14;
  v15 = __chkstk_darwin(v13);
  v104 = &v101 - v16;
  v17 = __chkstk_darwin(v15);
  v110 = &v101 - v18;
  __chkstk_darwin(v17);
  v20 = &v101 - v19;
  v21 = type metadata accessor for PanicLog();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &v26[v24[7]];
  *v27 = 0x63696E6150;
  v27[1] = 0xE500000000000000;
  v28 = &v26[v24[10]];
  *(v28 + 3) = &type metadata for CriticalPolicy;
  *(v28 + 4) = &off_100014D88;
  v105 = v28;
  v29 = &v26[v24[11]];
  *v29 = 0;
  v29[1] = 0;
  *v26 = a1 & 1;
  v30 = sub_100004E78(&_swiftEmptyArrayStorage);
  v31 = *(v21 + 32);
  v118 = v26;
  v115 = v31;
  *&v26[v31] = &_swiftEmptyArrayStorage;
  v109 = a2;
  v32 = &a2[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  swift_beginAccess();
  v33 = v32[1];
  v107 = v22;
  if (!v33)
  {
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100002DA0(v45, qword_10001A458);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v105;
    v50 = v108;
    if (v48)
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Invalid log path", v51, 2u);
    }

    goto LABEL_53;
  }

  v117 = v8;
  v103 = v30;
  v34 = *v32;

  v106 = v20;
  URL.init(fileURLWithPath:)();

  v35 = objc_opt_self();
  result = [v35 defaultManager];
  if (!v32[1])
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v37 = result;
  v38 = *v32;
  v39 = v32[1];

  v40 = String._bridgeToObjectiveC()();

  v41 = [v37 fileExistsAtPath:v40];

  v42 = v108;
  v113 = v32;
  v111 = v21;
  if (v41)
  {
    v44 = v117;
    v43 = v118;
    (*(v9 + 16))(&v118[*(v21 + 24)], v106, v117);
LABEL_17:
    v66 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
    v67 = v109;
    swift_beginAccess();
    v68 = *(*&v67[v66] + 16);
    if (v68)
    {
      v110 = (v9 + 16);
      v114 = v9 + 32;

      v69 = (v102 + 40);
      v70 = &_swiftEmptyArrayStorage;
      while (1)
      {
        v72 = *(v69 - 1);
        v71 = *v69;

        v73 = [v35 defaultManager];
        v74 = String._bridgeToObjectiveC()();
        v75 = [v73 fileExistsAtPath:v74];

        if (v75)
        {
          URL.init(fileURLWithPath:)();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_10000AF50(0, v70[2] + 1, 1, v70);
          }

          v44 = v117;
          v43 = v118;
          v77 = v70[2];
          v76 = v70[3];
          if (v77 >= v76 >> 1)
          {
            v70 = sub_10000AF50(v76 > 1, v77 + 1, 1, v70);
          }

          v70[2] = v77 + 1;
          (*(v9 + 32))(v70 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v77, v116, v44);
        }

        else
        {
          v78 = v113[1];
          if (!v78)
          {

            v44 = v117;
            v43 = v118;
            goto LABEL_21;
          }

          v43 = v118;
          if (v72 == *v113 && v78 == v71)
          {
          }

          else
          {
            v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v79 & 1) == 0)
            {
              v44 = v117;
              goto LABEL_21;
            }
          }

          v44 = v117;
          (*v110)(v112, v43 + *(v111 + 24), v117);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v70 = sub_10000AF50(0, v70[2] + 1, 1, v70);
          }

          v81 = v70[2];
          v80 = v70[3];
          if (v81 >= v80 >> 1)
          {
            v70 = sub_10000AF50(v80 > 1, v81 + 1, 1, v70);
          }

          v70[2] = v81 + 1;
          (*(v9 + 32))(v70 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v81, v112, v44);
        }

        *(v43 + v115) = v70;
LABEL_21:
        v69 += 2;
        if (!--v68)
        {

          v50 = v108;
          goto LABEL_41;
        }
      }
    }

    v50 = v42;
LABEL_41:
    type metadata accessor for IPSReport();
    v82 = v111;
    v83 = *(v111 + 24);
    (*(v9 + 16))(v104, &v83[v43], v44);
    v84 = IPSReport.__allocating_init(reportPath:)();
    v85 = v113;
    if (v84)
    {
      v86 = v43;
      v87 = *(v82 + 36);
      v88 = dispatch thunk of IPSReport.headerJson.getter();

      (*(v9 + 8))(v106, v44);

      *(v86 + v87) = v88;
      *(v86 + 1) = 0;
      sub_10000B1DC(v86, v50);
      (*(v107 + 56))(v50, 0, 1, v82);
      return sub_10000B240(v86);
    }

    v116 = v83;
    if (qword_100019518 != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    sub_100002DA0(v89, qword_10001A458);
    v90 = v109;
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    LODWORD(v115) = v92;
    if (!os_log_type_enabled(v91, v92))
    {

      v100 = *(v9 + 8);
      v100(v106, v44);
      v21 = v111;
      v96 = v116;
      goto LABEL_49;
    }

    v93 = swift_slowAlloc();
    result = swift_slowAlloc();
    v119 = result;
    *v93 = 136446210;
    v94 = v85;
    v95 = v85[1];
    v96 = v116;
    if (v95)
    {
      v97 = result;
      v98 = *v94;

      v99 = sub_100009110(v98, v95, &v119);

      *(v93 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v91, v115, "Unable to read header from URL: %{public}s", v93, 0xCu);
      sub_100002E20(v97);

      v100 = *(v9 + 8);
      v44 = v117;
      v100(v106, v117);
      v21 = v111;
      v43 = v118;
LABEL_49:
      v100(&v96[v43], v44);

LABEL_51:

      goto LABEL_52;
    }

    goto LABEL_55;
  }

  v52 = v114;
  sub_100003CF0(v114);
  v44 = v117;
  if ((*(v9 + 48))(v52, 1, v117) != 1)
  {
    v64 = *(v9 + 32);
    v65 = v110;
    v64(v110, v52, v44);
    v43 = v118;
    v64(&v118[*(v21 + 24)], v65, v44);
    goto LABEL_17;
  }

  sub_10000B174(v52);
  if (qword_100019518 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_100002DA0(v53, qword_10001A458);
  v54 = v109;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();

  v50 = v42;
  if (!os_log_type_enabled(v55, v56))
  {

    (*(v9 + 8))(v106, v44);
    goto LABEL_51;
  }

  v57 = v21;
  v58 = swift_slowAlloc();
  result = swift_slowAlloc();
  v120[0] = result;
  *v58 = 136446210;
  v59 = v113[1];
  if (v59)
  {
    v60 = result;
    v61 = *v113;
    v62 = v113[1];

    v63 = sub_100009110(v61, v59, v120);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v55, v56, "Failed reading from URL: %{public}s and retired path.", v58, 0xCu);
    sub_100002E20(v60);

    (*(v9 + 8))(v106, v117);

    v21 = v57;
LABEL_52:
    v49 = v105;
LABEL_53:
    sub_100002E20(v49);
    return (*(v107 + 56))(v50, 1, 1, v21);
  }

LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_10000AA80(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x79616C70736944;
  }

  else
  {
    v4 = 1953722184;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x79616C70736944;
  }

  else
  {
    v6 = 1953722184;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_10000AB20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AB9C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10000AC04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10000AC7C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100014998, *a1);

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

void sub_10000ACDC(uint64_t *a1@<X8>)
{
  v2 = 1953722184;
  if (*v1)
  {
    v2 = 0x79616C70736944;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_10000AD14()
{
  v1 = v0;
  sub_100002DD8(&qword_1000196D8, qword_10000EE00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000F1B0;
  *(inited + 32) = 0x746E656469636E69;
  *(inited + 40) = 0xEB0000000064695FLL;
  v3 = type metadata accessor for PanicLog();
  v4 = *(v0 + *(v3 + 36));
  if (*(v4 + 16) && (v5 = sub_100004974(0x746E656469636E69, 0xEB0000000064695FLL), (v6 & 1) != 0) && (sub_100004D70(*(v4 + 56) + 32 * v5, v14), sub_100007598(), (swift_dynamicCast() & 1) != 0))
  {
    v7 = v13;
  }

  else
  {
    sub_100007598();
    v7 = NSString.init(stringLiteral:)();
  }

  *(inited + 48) = v7;
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  v8 = (v1 + *(v3 + 28));
  v9 = *v8;
  v10 = v8[1];
  *(inited + 72) = String._bridgeToObjectiveC()();
  v11 = sub_100004C6C(inited);
  swift_setDeallocating();
  sub_100002DD8(&qword_1000196E0, &unk_10000EED0);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_10000AE9C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_10000AEE4()
{
  if (*v0)
  {
    result = 0x79616C70736944;
  }

  else
  {
    result = 1953722184;
  }

  *v0;
  return result;
}

uint64_t sub_10000AF18(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

size_t sub_10000AF50(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100002DD8(&qword_100019738, &qword_10000EF00);
  v10 = *(type metadata accessor for URL() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for URL() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t type metadata accessor for PanicLog()
{
  result = qword_100019A18;
  if (!qword_100019A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000B174(uint64_t a1)
{
  v2 = sub_100002DD8(&qword_100019700, qword_10000F1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PanicLog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B240(uint64_t a1)
{
  v2 = type metadata accessor for PanicLog();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10000B388(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_10000B448()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    sub_100007260();
    if (v1 <= 0x3F)
    {
      sub_1000072B8();
      if (v2 <= 0x3F)
      {
        sub_10000731C();
        if (v3 <= 0x3F)
        {
          sub_10000B534();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000B534()
{
  if (!qword_1000197D0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000197D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for PanicLog.Type(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PanicLog.Type(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000B6E4()
{
  result = qword_100019A68;
  if (!qword_100019A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A68);
  }

  return result;
}

id DiagnosticsReporterLaunchOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DiagnosticsReporterLaunchOptions.files_to_attach.getter()
{
  v1 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t DiagnosticsReporterLaunchOptions.files_to_attach.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B9F0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;

    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_10000BA84(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_10000BAE4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_10000BB6C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

id DiagnosticsReporterLaunchOptions.init()()
{
  *&v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = &_swiftEmptyArrayStorage;
  v1 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  v3 = type metadata accessor for DiagnosticsReporterLaunchOptions();
  *v2 = 0;
  *(v2 + 1) = 0;
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, "init");
}

Swift::Int sub_10000BD48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000BDBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10000BE00()
{
  v1 = 0x687461705F676F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x74735F63696E6170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F745F73656C6966;
  }
}

uint64_t sub_10000BE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000C9D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000BEB0(uint64_t a1)
{
  v2 = sub_10000C264();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000BEEC(uint64_t a1)
{
  v2 = sub_10000C264();

  return CodingKey.debugDescription.getter(a1, v2);
}

id DiagnosticsReporterLaunchOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticsReporterLaunchOptions();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t DiagnosticsReporterLaunchOptions.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100002DD8(&qword_100019A88, &qword_10000F2B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000224C(a1, a1[3]);
  sub_10000C264();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  swift_beginAccess();
  v21 = *(v3 + v11);
  v20 = 0;
  sub_100002DD8(&qword_100019A98, &qword_10000F2B8);
  sub_10000C698(&qword_100019AA0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = (v3 + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v20 = 1;

  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

  v16 = (v3 + OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v19[7] = 2;

  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
}

unint64_t sub_10000C264()
{
  result = qword_100019A90;
  if (!qword_100019A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019A90);
  }

  return result;
}

uint64_t sub_10000C2B8(uint64_t *a1, uint64_t *a2)
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

char *DiagnosticsReporterLaunchOptions.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_100002DD8(&qword_100019AA8, &qword_10000F2C0);
  v32 = *(v5 - 8);
  v33 = v5;
  v6 = *(v32 + 64);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v34 = OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach;
  *&v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_files_to_attach] = &_swiftEmptyArrayStorage;
  v9 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_log_path];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v1[OBJC_IVAR___ObjCDiagnosticsReporterLaunchOptions_panic_string];
  *v10 = 0;
  v10[1] = 0;
  v39 = v10;
  v11 = a1[4];
  sub_10000224C(a1, a1[3]);
  sub_10000C264();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v12 = v34;
    sub_100002E20(a1);
    v22 = *&v1[v12];

    v23 = v9[1];

    v24 = v39[1];

    type metadata accessor for DiagnosticsReporterLaunchOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100002DD8(&qword_100019A98, &qword_10000F2B8);
    v38 = 0;
    sub_10000C698(&qword_100019AB0);
    v13 = v8;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = v37;
    v15 = v34;
    swift_beginAccess();
    v16 = *&v3[v15];
    *&v3[v15] = v14;

    LOBYTE(v37) = 1;
    v17 = v33;
    v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = v19;
    swift_beginAccess();
    v21 = v9[1];
    *v9 = v18;
    v9[1] = v20;

    v36 = 2;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    v29 = v39;
    swift_beginAccess();
    v30 = v29[1];
    *v29 = v26;
    v29[1] = v28;

    v31 = type metadata accessor for DiagnosticsReporterLaunchOptions();
    v35.receiver = v3;
    v35.super_class = v31;
    v3 = objc_msgSendSuper2(&v35, "init");
    (*(v32 + 8))(v13, v17);
    sub_100002E20(a1);
  }

  return v3;
}

uint64_t sub_10000C698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000C2B8(&qword_100019A98, &qword_10000F2B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_10000C704@<X0>(uint64_t *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for DiagnosticsReporterLaunchOptions());
  result = DiagnosticsReporterLaunchOptions.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiagnosticsReporterLaunchOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C8D0()
{
  result = qword_100019AE0;
  if (!qword_100019AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE0);
  }

  return result;
}

unint64_t sub_10000C928()
{
  result = qword_100019AE8;
  if (!qword_100019AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AE8);
  }

  return result;
}

unint64_t sub_10000C980()
{
  result = qword_100019AF0;
  if (!qword_100019AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100019AF0);
  }

  return result;
}

uint64_t sub_10000C9D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F745F73656C6966 && a2 == 0xEF6863617474615FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x687461705F676F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74735F63696E6170 && a2 == 0xEC000000676E6972)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_10000CB0C()
{
  sub_100002E20((v0 + 16));

  return _swift_deallocClassInstance(v0, 56, 7);
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}