uint64_t sub_1003EC77C@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4._object = 0x8000000100670CE0;
    v4._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_1003EC810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_1003EC8A8, v6, v5);
}

uint64_t sub_1003EC8A8()
{
  v1 = sub_10000C36C((*(v0 + 48) + 168), *(*(v0 + 48) + 192));
  v2 = *v1;
  *(v0 + 80) = *v1;

  return _swift_task_switch(sub_1003EC91C, v2, 0);
}

uint64_t sub_1003EC91C()
{
  v1 = *(v0 + 80);
  if (*(v1 + 160))
  {
    *(v0 + 114) = *(v1 + 168) & 1;
    v2 = *(v0 + 64);
    v3 = *(v0 + 72);

    return _swift_task_switch(sub_1003ECD74, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 88) = v4;
    *v4 = v0;
    v4[1] = sub_1003EC9F8;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003EC9F8(uint64_t a1, __int16 a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = *(v6 + 64);
    v8 = *(v6 + 72);
    v9 = sub_1003ECBAC;
  }

  else
  {
    v7 = *(v6 + 80);
    *(v6 + 112) = a2;
    *(v6 + 104) = a1;
    v9 = sub_1003ECB3C;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003ECB3C()
{

  *(v0 + 114) = *(v0 + 112) & 1;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return _swift_task_switch(sub_1003ECD74, v1, v2);
}

uint64_t sub_1003ECBAC()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003ECD74()
{
  v1 = *(v0 + 114);
  v2 = *(v0 + 48);

  if (v1 != *(v2 + 64))
  {
    *(v2 + 64) = *(v0 + 114);
    v3._object = 0x8000000100670CE0;
    v3._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

void sub_1003ECE10()
{
  v1 = v0;
  v2 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v2 - 8);
  v4 = &v24[-1] - v3;
  v5 = v0[13];
  v6 = v0[14];
  sub_10000C36C(v0 + 10, v5);
  if (((*(v6 + 32))(v5, v6) & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    v7 = v0[5];
    ObjectType = swift_getObjectType();
    v23 = (*(v7 + 24))(v0, &off_100725B50, ObjectType, v7);
    swift_unknownObjectRelease();
    v9 = v0[13];
    v10 = v0[14];
    sub_10000C36C(v0 + 10, v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v11)
    {
      v12 = v11;
      sub_10000B0D8((v0 + 28), v24);
      v13 = v25;
      v14 = v26;
      sub_10000C36C(v24, v25);
      v15 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
      v16 = (*(v14 + 8))(v23, v15, v13, v14);
      sub_100004758(v24);
      if (v16)
      {
      }

      else
      {
        v18 = type metadata accessor for TaskPriority();
        (*(*(v18 - 8) + 56))(v4, 1, 1, v18);
        type metadata accessor for MainActor();

        v19 = v23;
        v20 = v12;
        v21 = static MainActor.shared.getter();
        v22 = swift_allocObject();
        v22[2] = v21;
        v22[3] = &protocol witness table for MainActor;
        v22[4] = v1;
        v22[5] = v19;
        v22[6] = v20;
        sub_10009E31C(0, 0, v4, &unk_10063D7E0, v22);
      }
    }

    else
    {
      v17 = v23;
    }
  }
}

uint64_t sub_1003ED0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  sub_100058000(&qword_100776A40);
  v6[14] = swift_task_alloc();
  sub_100058000(&qword_100776A48);
  v6[15] = swift_task_alloc();
  v7 = type metadata accessor for TTRHelpAnchor();
  v6[16] = v7;
  v6[17] = *(v7 - 8);
  v6[18] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[19] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[20] = v9;
  v6[21] = v8;

  return _swift_task_switch(sub_1003ED228, v9, v8);
}

uint64_t sub_1003ED228()
{
  v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
  v2 = *v1;
  *(v0 + 176) = *v1;

  return _swift_task_switch(sub_1003ED29C, v2, 0);
}

uint64_t sub_1003ED29C()
{
  v1 = *(v0 + 176);
  if (*(v1 + 160))
  {
    *(v0 + 268) = *(v1 + 168);
    v2 = *(v0 + 160);
    v3 = *(v0 + 168);

    return _swift_task_switch(sub_1003ED7CC, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_1003ED374;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003ED374(uint64_t a1, __int16 a2)
{
  v6 = *v3;
  *(*v3 + 192) = v2;

  if (v2)
  {
    v7 = *(v6 + 160);
    v8 = *(v6 + 168);
    v9 = sub_1003ED5EC;
  }

  else
  {
    v7 = *(v6 + 176);
    *(v6 + 264) = a2;
    *(v6 + 200) = a1;
    v9 = sub_1003ED4B8;
    v8 = 0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_1003ED4B8()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  return _swift_task_switch(sub_1003ED51C, v1, v2);
}

uint64_t sub_1003ED51C()
{
  if (*(v0 + 264))
  {
    v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
    v2 = *v1;
    *(v0 + 208) = *v1;

    return _swift_task_switch(sub_1003ED89C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003ED5EC()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1003ED7CC()
{
  if (*(v0 + 268))
  {
    v1 = sub_10000C36C((*(v0 + 88) + 168), *(*(v0 + 88) + 192));
    v2 = *v1;
    *(v0 + 208) = *v1;

    return _swift_task_switch(sub_1003ED89C, v2, 0);
  }

  else
  {

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1003ED89C()
{
  v1 = *(v0[26] + 160);
  if (v1)
  {
    v0[29] = v1;
    v2 = v0[20];
    v3 = v0[21];

    return _swift_task_switch(sub_1003EDC94, v2, v3);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[27] = v4;
    *v4 = v0;
    v4[1] = sub_1003ED98C;

    return sub_1005B4E80();
  }
}

uint64_t sub_1003ED98C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1003EDAB4;
  }

  else
  {
    v4[29] = a1;
    v5 = v4[20];
    v6 = v4[21];
    v7 = sub_1003EDC94;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1003EDAB4()
{
  v12 = v0;

  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100781AA0);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = Error.rem_errorDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Unable to get iCloud device info %s", v4, 0xCu);
    sub_100004758(v5);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1003EDC94()
{
  v1 = 0;
  v2 = *(v0 + 232);
  v3 = *(v2 + 16);
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = v2 + 25 + 24 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = (v5 + 24);
    ++v1;
    v7 = *(v5 + 23);
    v5 += 24;
    if ((v7 & 1) == 0)
    {
      v23 = *(v6 - 17);
      v8 = *(v6 - 9);
      v9 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100548310(0, v4[2] + 1, 1, v4);
      }

      v11 = v4[2];
      v10 = v4[3];
      if (v11 >= v10 >> 1)
      {
        v4 = sub_100548310((v10 > 1), v11 + 1, 1, v4);
      }

      v4[2] = v11 + 1;
      v12 = &v4[3 * v11];
      v12[4] = v23;
      v12[5] = v8;
      *(v12 + 48) = v9 ^ 1;
      goto LABEL_2;
    }
  }

  v13 = *(v0 + 88);

  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x8000000100684BF0;
  v15._object = 0x8000000100684C20;
  v16._countAndFlagsBits = 0xD00000000000003BLL;
  v16._object = 0x8000000100684C50;
  v15._countAndFlagsBits = 0xD000000000000021;
  TTRLocalizedString(_:value:comment:)(v14, v15, v16);
  v17 = sub_1003E0E84(v4);

  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO05smartE21HiddenInformativeText7devicesSSSaySS4name_Sb15cannotBeUpdatedtG_tFZ_0(v17);

  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();

  v20 = [objc_opt_self() alertControllerWithTitle:v18 message:v19 preferredStyle:1];
  *(v0 + 240) = v20;

  sub_10000C36C((v13 + 120), *(v13 + 144));
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v21 = swift_allocObject();
  *(v0 + 248) = v21;
  *(v21 + 16) = xmmword_10062D3F0;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 266) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  static TTRLocalizableStrings.Common.learnMoreButton.getter();
  *(v0 + 267) = 1;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v22 = swift_task_alloc();
  *(v0 + 256) = v22;
  *v22 = v0;
  v22[1] = sub_1003EE030;

  sub_1001DFFD4(v20, v21);
}

uint64_t sub_1003EE030(char a1)
{
  v2 = *v1;
  *(*v1 + 269) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return _swift_task_switch(sub_1003EE17C, v4, v3);
}

uint64_t sub_1003EE17C()
{
  v1 = *(v0 + 269);

  if (v1 != 2 && (*(v0 + 269) & 1) != 0)
  {
    v3 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 112);
    sub_10000C36C((*(v0 + 88) + 120), *(*(v0 + 88) + 144));
    static TTRHelpAnchor.IOSHelpTopic.defaultVersion.getter();
    TTRHelpAnchor.IOSHelpTopic.init(identifier:helpTopicID:version:)();
    v7 = type metadata accessor for TTRHelpAnchor.IOSHelpTopic();
    (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
    TTRHelpAnchor.MacOSHelpAnchor.init(helpAnchor:)();
    v8 = type metadata accessor for TTRHelpAnchor.MacOSHelpAnchor();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    TTRHelpAnchor.init(iOSHelpTopic:macOSHelpAnchor:)();
    sub_10013F1E4();
    (*(v3 + 8))(v2, v5);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 96);
  sub_10000B0D8(*(v0 + 88) + 224, v0 + 16);
  v11 = *(v0 + 40);
  v12 = *(v0 + 48);
  sub_10000C36C((v0 + 16), v11);
  v13 = REMCustomSmartListFilterDescriptor.minimumSupportedVersion.getter();
  (*(v12 + 16))(v10, v13, v11, v12);

  sub_100004758(v0 + 16);

  v14 = *(v0 + 8);

  return v14();
}

id *sub_1003EE3C8()
{
  sub_10003B788((v0 + 2));
  sub_10003B788((v0 + 4));

  sub_100004758((v0 + 10));
  sub_100004758((v0 + 15));

  sub_100004758((v0 + 21));

  sub_100004758((v0 + 28));
  swift_unknownObjectRelease();

  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelsLayoutResult, &qword_100776A98);
  v1 = OBJC_IVAR____TtC9Reminders34TTRISmartListFilterEditorPresenter_hashtagLabelSelectionCache;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1003EE4B0()
{
  sub_1003EE3C8();

  return swift_deallocClassInstance();
}

void sub_1003EE530()
{
  sub_1003EE660();
  if (v0 <= 0x3F)
  {
    type metadata accessor for REMHashtagLabelSpecifier();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1003EE660()
{
  if (!qword_100781B08)
  {
    type metadata accessor for TTRIHashtagWrappingCollectionView.LayoutResult();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100781B08);
    }
  }
}

void sub_1003EE6B8(void *a1)
{
  sub_100003540(0, &qword_100771DF0);
  v2 = static UIFont.roundedBodyFont.getter();
  [a1 setFont:v2];

  v3 = [objc_opt_self() labelColor];
  [a1 setTextColor:v3];

  [a1 setAdjustsFontForContentSizeCategory:1];
  [a1 setAdjustsFontSizeToFitWidth:1];
  [a1 setMinimumFontSize:14.0];
  [a1 setClearButtonMode:1];
  [a1 setBorderStyle:0];
  [a1 setAutocapitalizationType:1];
  [a1 setKeyboardType:0];
  static TTRLocalizableStrings.Hashtags.addTagPromptPlaceholder.getter();
  v4 = String._bridgeToObjectiveC()();

  [a1 setPlaceholder:v4];

  sub_100003540(0, &qword_10076BA60);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [a1 addAction:v6 forControlEvents:{0x20000, 0, 0, 0, sub_1003EFE0C, v5}];
}

void sub_1003EE8D0(void *a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ([a1 sender])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      sub_100003540(0, &qword_100771E60);
      if (swift_dynamicCast())
      {
        v2 = [v9 markedTextRange];
        if (v2)
        {
          v3 = v2;
        }

        else
        {
          v4 = [v9 text];
          if (v4)
          {
            v5 = v4;
            v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v8 = v7;
          }

          else
          {
            v6 = 0;
            v8 = 0xE000000000000000;
          }

          sub_1003EF84C(v6, v8);

          v3 = String._bridgeToObjectiveC()();

          [v9 setText:v3];
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1000079B4(v12, &qword_10076AE40);
    }
  }
}

void sub_1003EEAA4()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v1 = Strong;
    v2 = [Strong textFields];
    if (!v2)
    {

      return;
    }

    v3 = v2;
    sub_100003540(0, &qword_100771E60);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;

    v7 = [v6 text];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      v12 = sub_1003EF84C(v9, v11);
      v14 = v13;

      sub_1003EEC4C(v12, v14);
    }

    else
    {
    }
  }
}

uint64_t sub_1003EEC4C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v74 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v72 = (&v63 - v8);
  v9 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v67 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v63 - v12;
  v13 = type metadata accessor for REMHashtagLabelCollection();
  v77 = *(v13 - 8);
  v78 = v13;
  __chkstk_darwin(v13);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  __chkstk_darwin(v19);
  v21 = &v63 - v20;
  v71 = type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel();
  __chkstk_darwin(v71);
  v23 = (&v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100767250 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003E30(v24, qword_100781AA0);
  sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44();

  v26 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v26 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v66 = v5;
    sub_1003E1084(v23);

    REMHashtagLabelCollection.init(labels:)();
    v27._countAndFlagsBits = a1;
    v27._object = a2;
    v28 = REMHashtagLabelCollection.contains(matchOfHashtagName:)(v27);
    v70 = v23;
    if (v28)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v63 = v4;
      sub_100058000(&unk_100771E10);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_10062D400;
      *(v31 + 32) = a1;
      *(v31 + 40) = a2;

      REMHashtagLabelCollection.init(labels:)();
      REMHashtagLabelCollection.union(_:)();
      v32 = v77;
      v65 = *(v77 + 8);
      v33 = v78;
      v65(v21, v78);
      (*(v32 + 32))(v21, v15, v33);
      v64 = objc_opt_self();
      v34._countAndFlagsBits = 0x67615420646441;
      v35._countAndFlagsBits = 0xD00000000000001FLL;
      v35._object = 0x8000000100684D70;
      v36._countAndFlagsBits = 0xD000000000000036;
      v36._object = 0x8000000100684D90;
      v34._object = 0xE700000000000000;
      TTRLocalizedString(_:value:comment:)(v35, v34, v36);
      v37 = String._bridgeToObjectiveC()();

      v38 = swift_allocObject();
      v38[2] = v79;
      v38[3] = a1;
      v38[4] = a2;
      v39 = swift_allocObject();
      v68 = sub_1003EFC80;
      *(v39 + 16) = sub_1003EFC80;
      *(v39 + 24) = v38;
      v69 = v38;
      aBlock[4] = sub_100068444;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_100725E18;
      v40 = _Block_copy(aBlock);

      [v64 withActionName:v37 block:v40];
      _Block_release(v40);

      v65(v18, v78);
      LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

      if (v37)
      {
        __break(1u);
        return result;
      }

      v4 = v63;
      v23 = v70;
      v30 = v69;
      v29 = v68;
    }

    v41._countAndFlagsBits = a1;
    v41._object = a2;
    if (REMHashtagLabelCollection.contains(matchOfHashtagName:)(v41))
    {
      v68 = v29;
      v69 = v30;
      sub_100058000(&unk_100771E10);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D400;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v43 = sub_10000FBDC(inited);
      swift_setDeallocating();
      sub_100007E80(inited + 32);
      v45 = v75;
      v44 = v76;
      v46 = v23;
      v47 = v73;
      (*(v75 + 104))(v73, enum case for REMHashtagLabelSpecifier.Operation.and(_:), v76);
      v48 = v72;
      v49 = v66;
      (*(v66 + 16))(v72, v46 + *(v71 + 20), v4);
      v50 = (*(v49 + 88))(v48, v4);
      v51 = enum case for REMHashtagLabelSpecifier.labels(_:);
      if (v50 == enum case for REMHashtagLabelSpecifier.labels(_:))
      {
        (*(v49 + 96))(v48, v4);
        v52 = v48[1];
        v71 = *v48;
        v53 = sub_100058000(&qword_10076B830);
        v54 = *(v45 + 32);
        v55 = v48 + *(v53 + 64);
        v56 = v43;
        v57 = v67;
        v54(v67, v55, v76);
        v49 = v66;
        v58 = sub_10057D0C0(v71, v56);
        (*(v75 + 8))(v47, v76);
        v59 = v57;
        v43 = v58;
        v54(v47, v59, v76);
        v45 = v75;
        v44 = v76;
      }

      else
      {
        (*(v49 + 8))(v48, v4);
        v52 = &_swiftEmptySetSingleton;
      }

      v60 = *(sub_100058000(&qword_10076B830) + 64);
      v61 = v74;
      *v74 = v43;
      *(v61 + 8) = v52;
      (*(v45 + 16))(v61 + v60, v47, v44);
      (*(v49 + 104))(v61, v51, v4);
      sub_1003E8514(v61);
      (*(v49 + 8))(v61, v4);
      (*(v45 + 8))(v47, v44);
      v23 = v70;
      v29 = v68;
    }

    v62._object = 0x8000000100670CE0;
    v62._countAndFlagsBits = 0xD000000000000011;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v62);
    (*(v77 + 8))(v21, v78);
    sub_1003EFED8(v23, type metadata accessor for TTRISmartListFilterEditorHashtagsViewModel);
    return sub_1000301AC(v29);
  }

  return result;
}

void sub_1003EF55C()
{
  sub_1003ECE10();
  sub_1003E17E0();
  v0._object = 0x8000000100670CE0;
  v0._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

void sub_1003EF5A0()
{
  v0._object = 0x8000000100670CE0;
  v0._countAndFlagsBits = 0xD000000000000011;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v0);
}

uint64_t sub_1003EF634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1003EC810(a1, v4, v5, v6);
}

uint64_t sub_1003EF6E8(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1003EF784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA38;

  return sub_1003ED0C0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003EF84C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0xE000000000000000;
  v23 = 0;
  v24 = 0xE000000000000000;
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[0] = a1;
  v22[1] = a2;
  v22[2] = 0;
  v22[3] = v9;

  v10 = String.Iterator.next()();
  if (v10.value._object)
  {
    countAndFlagsBits = v10.value._countAndFlagsBits;
    object = v10.value._object;
    do
    {
      static CharacterSet.hashtagTokenAllowedCharacters.getter();
      v14._countAndFlagsBits = countAndFlagsBits;
      v14._object = object;
      v15 = CharacterSet.containsUnicodeScalars(of:)(v14);
      (*(v5 + 8))(v7, v4);
      if (v15)
      {
        v16._countAndFlagsBits = countAndFlagsBits;
        v16._object = object;
        String.append(_:)(v16);
      }

      v13 = String.Iterator.next()();
      countAndFlagsBits = v13.value._countAndFlagsBits;
      object = v13.value._object;
    }

    while (v13.value._object);
    v17 = v23;
    v8 = v24;
  }

  else
  {
    v17 = 0;
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v18 = static TTRHashtagEditingPresenterCapability.maxTokenTextCharacterCount.getter();
  sub_1003EF6E8(v18, v17, v8, v19);

  v20 = static String._fromSubstring(_:)();

  return v20;
}

uint64_t sub_1003EFA28()
{
  v0 = type metadata accessor for TTRITableDataController.BatchUpdatesApplication();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtC9Reminders39TTRISmartListFilterEditorViewController_tableDataController);
    if (v5)
    {
      *v3 = 1;
      v6 = result;
      v7 = (*(v1 + 104))(v3, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v0);
      __chkstk_darwin(v7);
      *(&v9 - 2) = v6;
      v8 = v5;
      TTRITableDataController.performBatchUpdates(by:updates:)();

      swift_unknownObjectRelease();
      return (*(v1 + 8))(v3, v0);
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1003EFBCC()
{
  v1 = *(sub_100058000(&qword_10076D038) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 64))(v0 + v2, v4, v5);
}

uint64_t sub_1003EFC80()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v1[13];
  v5 = v1[14];
  sub_10000C36C(v1 + 10, v4);
  return (*(v5 + 48))(v2, v3, v4, v5);
}

uint64_t sub_1003EFCE8()
{
  v1 = *(type metadata accessor for REMHashtagLabelSpecifier() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(sub_100058000(&qword_10076D038) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1003E8AD0(v5, v0 + v2, v6);
}

uint64_t sub_1003EFDC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003EFE14()
{
  v1 = *(sub_100058000(&qword_10076D030) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 72))(v0 + v2, v4, v5);
}

uint64_t sub_1003EFED8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003EFF40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003EFFB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA38;

  return sub_1003E612C(a1, v4, v5, v7, v6);
}

uint64_t sub_1003F0078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSmartListFilterEditorViewModel.LocationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003F00DC()
{
  v1 = *(sub_100058000(&qword_100775740) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1003EC2D0(v0 + v2, v3);
}

uint64_t sub_1003F0174(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001AA3C;

  return sub_1003EB0E8(a1, v11, v4, v5, v1 + 40, v6, v7, v8);
}

uint64_t sub_1003F0280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_1003E76FC(a1, v4, v5, v6);
}

uint64_t sub_1003F034C()
{
  v1 = *(sub_100058000(&qword_10076D018) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 112))(v0 + v2, v4, v5);
}

uint64_t sub_1003F03FC()
{
  v1 = *(v0 + 16);
  v2 = v1[13];
  v3 = v1[14];
  v4 = *(v0 + 24);
  sub_10000C36C(v1 + 10, v2);
  return (*(v3 + 96))(v4, v2, v3);
}

uint64_t sub_1003F0460(uint64_t *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(sub_100058000(a1) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 24) & ~v6;
  v8 = *(v5 + 64);

  v9 = a3(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return _swift_deallocObject(v3, v7 + v8, v6 | 7);
}

uint64_t sub_1003F0578()
{
  v1 = *(sub_100058000(&qword_10076D028) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 80))(v0 + v2, v4, v5);
}

uint64_t sub_1003F061C()
{
  v1 = *(type metadata accessor for REMCustomSmartListFilterDescriptor.Operation() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v3[13];
  v5 = v3[14];
  sub_10000C36C(v3 + 10, v4);
  return (*(v5 + 56))(v0 + v2, v4, v5);
}

uint64_t *sub_1003F06D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v4 + 16) & ~v4));

    return a1;
  }

  v5 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v10 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v5 + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_1003F088C(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v3 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
  }

  else
  {
    if (result > 1)
    {
      return result;
    }

    v3 = type metadata accessor for Date();
  }

  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void *sub_1003F0920(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0A94(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1003EFED8(a1, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 16))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0C2C(void *a1, const void *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void *sub_1003F0DA0(void *a1, const void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1003EFED8(a1, type metadata accessor for TTRISmartListFilterEditorPresenterDateUpdateField);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v7 = type metadata accessor for Date();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
LABEL_6:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_1003F0F38()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for REMCustomSmartListFilterDescriptor.FilterDate.RelativeRange();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

id sub_1003F1080(uint64_t *a1, id *a2, uint64_t a3)
{
  v98 = a3;
  v105 = a1;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v108 = *(v4 - 1);
  v109 = v4;
  v5 = __chkstk_darwin(v4);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v101 = &v87 - v8;
  v9 = __chkstk_darwin(v7);
  v88 = &v87 - v10;
  __chkstk_darwin(v9);
  v99 = &v87 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v12 - 8);
  v97 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v95);
  v107 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TTRListType.SortingCapability();
  v96 = *(v100 - 8);
  __chkstk_darwin(v100);
  v94 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for TTRRemindersListDefaultListType();
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v93 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v17 - 8);
  v92 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v19 - 8);
  v106 = (&v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v21 = *(v103 - 8);
  __chkstk_darwin(v103);
  v91 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v87 - v32;
  (*(v24 + 104))(v26, enum case for TTRListType.PredefinedSmartListType.all(_:), v23);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v24 + 8))(v26, v23);
  v90 = *a2;
  (*(v21 + 104))(v91, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v103);
  v103 = v28;
  v34 = *(v28 + 16);
  v34(v31, v33, v27);
  type metadata accessor for TTRShowAllRemindersDataModelSource();
  swift_allocObject();
  v35 = v90;
  v36 = TTRShowAllRemindersDataModelSource.init(store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v37 = v106;
  sub_1001749C4(a2, v106);
  v38 = v92;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v39 = v93;
  (*(v102 + 13))(v93, enum case for TTRRemindersListDefaultListType.any(_:), v104);
  sub_10007786C(v37, v38, v39, v115);
  v40 = v115[0];
  v41 = v94;
  v102 = v33;
  v104 = v27;
  v34(v94, v33, v27);
  v42 = v41;
  (v96)[13](v41, enum case for TTRListType.SortingCapability.notSupported(_:), v100);
  type metadata accessor for TTRShowAllRemindersViewModelSource();
  v43 = swift_allocObject();

  v44 = v40;
  v100 = v36;
  v96 = v44;
  v45 = sub_1003F1E40(v36, v44, v42, 0, v43);
  v46 = v106;
  sub_1001749C4(a2, v106);
  sub_10010BCAC(v115, v112);
  v47 = sub_1003F2270(&qword_100781110, type metadata accessor for TTRShowAllRemindersViewModelSource);
  v48 = v107;
  sub_1001749C4(v46, v107);
  v49 = v95;
  sub_10010BCAC(v112, v48 + *(v95 + 28));
  v50 = (v48 + *(v49 + 32));
  *v50 = v45;
  v50[1] = v47;
  v51 = v112[0];
  sub_100058000(&qword_10076C230);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v114, v111, &qword_100769608);
  v53 = *(v111[5] + 8);
  *(v52 + 32) = v111[4];
  *(v52 + 40) = v53;
  sub_10000794C(&v113, v110, &qword_100769600);
  swift_retain_n();
  v54 = v51;
  swift_unknownObjectRelease();
  *(v52 + 48) = v110[3];
  sub_100004758(v110);
  sub_100004758(v111);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v55 = swift_allocObject();
  v56 = sub_1003A86B8(v54, v45, v52, v55);

  sub_10010BD08(v112);
  sub_100174ECC(v46, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v57 = *(v49 + 36);
  v94 = v56;
  *(v48 + v57) = v56;
  v58 = v97;
  sub_100078BBC(v97);
  v95 = type metadata accessor for TTRIRemindersCommonPresenter(0);
  v59 = swift_allocObject();
  v60 = v98;
  swift_unknownObjectRetain();
  v61 = sub_1003A56E4(v58, v60, v59);
  v62 = *(v61 + 144);
  ObjectType = swift_getObjectType();
  if ((*(v62 + 112))(ObjectType, v62))
  {
    swift_getObjectType();
    v64 = v88;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v65 = v99;
    (*(v108 + 32))(v99, v64, v109);
  }

  else
  {
    v65 = v99;
    (*(v108 + 104))(v99, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v66 = sub_1003A4A1C(v65, v61);
  v98 = v67;
  v69 = v68;
  v71 = v70;
  (*(v108 + 8))(v65, v109);
  v99 = swift_getObjectType();
  *(v61 + 24) = *(v71 + 8);
  v106 = v69;
  swift_unknownObjectWeakAssign();
  v72 = *(v61 + 144);
  v73 = swift_getObjectType();
  v74 = *(v72 + 112);

  if (v74(v73, v72))
  {
    swift_getObjectType();
    v75 = v89;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v76 = v101;
    (*(v108 + 32))(v101, v75, v109);
  }

  else
  {
    v76 = v101;
    (*(v108 + 104))(v101, enum case for TTRRemindersListLayout.list(_:), v109);
  }

  v77 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v78 = v66;
  v109 = v78;
  v79 = sub_1003A7DE0(v61, v78, v98, v76, 0, 1, 0, v77);

  v80 = *(v71 + 32);
  v81 = v79;
  v80(v79, &off_100723D78, v99, v71);
  sub_1003F2270(&qword_100770960, type metadata accessor for TTRIRemindersCommonPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003F2270(&qword_100781D78, type metadata accessor for TTRShowAllRemindersViewModelSource);

  v82 = v81;
  dispatch thunk of TTRShowAllRemindersDataModelSource.delegate.setter();

  sub_10056FEB0(v83, &off_10071A9B0);

  *(v94 + 3) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v116, v112, &qword_100769600);
  v84 = v112[4];
  swift_unknownObjectRelease();
  *(v84 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  sub_10000794C(&v117, v112, &qword_100769608);
  swift_getObjectType();
  sub_1003F2270(&qword_100770970, type metadata accessor for TTRIRemindersCommonPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v112);
  v85 = v105;
  v105[3] = v95;
  v85[4] = &off_1007264A8;

  swift_unknownObjectRelease();
  *v85 = v61;
  (*(v103 + 8))(v102, v104);
  sub_100174ECC(v107, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v115);
  return v82;
}

id TTRIShowAllRemindersAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAllRemindersAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIShowAllRemindersAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowAllRemindersAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003F1E40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = *a5;
  v38 = a3;
  v39 = v10;
  v40 = type metadata accessor for REMAnalyticsEvent();
  v11 = *(v40 - 8);
  __chkstk_darwin(v40);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_10078A380);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v37 = type metadata accessor for TTRListType.SortingCapability();
  v17 = *(v37 - 8);
  __chkstk_darwin(v37);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource____lazy_storage___dragAndDropUtils) = 0;
  v20 = a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_completedRemindersCount;
  *v20 = 0;
  v20[8] = 1;
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_sectionsContextInstance) = 0;
  v21 = (a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_allRemindersDataModelSource);
  *v21 = a1;
  v21[1] = &protocol witness table for TTRShowAllRemindersDataModelSource;
  *(a5 + OBJC_IVAR____TtC9Reminders34TTRShowAllRemindersViewModelSource_hasDefaultNewReminderButton) = a4;
  (*(v17 + 16))(v19, a3);

  v23 = sub_1003A649C(v22, a2, v19, a5);

  sub_100310D74(v16);
  v24 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  (*(*(v24 - 8) + 56))(v16, 0, 1, v24);
  sub_10056F540(v16);
  sub_10010BE6C(v16);
  type metadata accessor for TTRUserDefaults();
  v25 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v26 = sub_100058000(&qword_100770980);
  v27 = &v13[*(v26 + 48)];
  v28 = &v13[*(v26 + 80)];
  v29 = enum case for REMRemindersOpenUserOperation.SmartListType.all(_:);
  v30 = type metadata accessor for REMRemindersOpenUserOperation.SmartListType();
  (*(*(v30 - 8) + 104))(v13, v29, v30);
  v31 = enum case for REMRemindersOpenUserOperation.smartList(_:);
  v32 = type metadata accessor for REMRemindersOpenUserOperation();
  (*(*(v32 - 8) + 104))(v13, v31, v32);
  *v27 = TTRUserDefaults.activitySessionId.getter();
  v27[1] = v33;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *v28 = _typeName(_:qualified:)();
  v28[1] = v34;
  v35 = v40;
  (*(v11 + 104))(v13, enum case for REMAnalyticsEvent.openListUserOperation(_:), v40);
  REMAnalyticsManager.post(event:)();

  (*(v17 + 8))(v38, v37);
  (*(v11 + 8))(v13, v35);
  return v23;
}

uint64_t sub_1003F2270(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003F2358@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  return sub_1001885B8(v3 + v4, a2);
}

uint64_t sub_1003F2420(uint64_t a1)
{
  v2 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_1001885B8(a1, &v6 - v3);
  return sub_1001871BC(v4);
}

uint64_t sub_1003F24F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1003F25E8(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_100187550(v5);
}

uint64_t sub_1003F2704@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1003F27E0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);
}

uint64_t sub_1003F28C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100781FB0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  v14 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v14 - 8);
  v27 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  __chkstk_darwin(v19);
  v21 = &v27 - v20;
  v30 = v3;

  v29 = a1;
  swift_getAtKeyPath();

  v22 = *(v11 + 56);
  sub_1001885B8(v21, v13);
  v28 = a2;
  sub_1001885B8(a2, &v13[v22]);
  v23 = *(v7 + 48);
  if (v23(v13, 1, v6) == 1)
  {
    sub_1000079B4(v21, &qword_1007708D8);
    if (v23(&v13[v22], 1, v6) == 1)
    {
      return sub_1000079B4(v13, &qword_1007708D8);
    }

    goto LABEL_6;
  }

  sub_1001885B8(v13, v18);
  if (v23(&v13[v22], 1, v6) == 1)
  {
    sub_1000079B4(v21, &qword_1007708D8);
    (*(v7 + 8))(v18, v6);
LABEL_6:
    sub_1000079B4(v13, &unk_100781FB0);
LABEL_7:
    sub_1001885B8(v28, v27);
    v30 = v3;

    swift_setAtReferenceWritableKeyPath();
  }

  (*(v7 + 32))(v9, &v13[v22], v6);
  sub_1003F93B8(&unk_1007716E0, &type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription);
  v25 = dispatch thunk of static Equatable.== infix(_:_:)();
  v26 = *(v7 + 8);
  v26(v9, v6);
  sub_1000079B4(v21, &qword_1007708D8);
  v26(v18, v6);
  result = sub_1000079B4(v13, &qword_1007708D8);
  if ((v25 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1003F2CA4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100781D80);
  v1 = sub_100003E30(v0, qword_100781D80);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1003F2D6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for TTRIMarginProvidingView();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v53 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for REMHashtagLabelSpecifier();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[qword_100781DA0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_100781DA8] = 0;
  *&v5[qword_100781DB8] = 0;
  v16 = &v5[qword_100781DC0];
  *(v16 + 1) = 0;
  *(v16 + 2) = 0;
  *v16 = 0;
  v52 = qword_100781DC8;
  type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel();
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  v19 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v20 = *(*(v19 - 8) + 56);
  v20(v17 + v18, 1, 1, v19);
  v20(v17 + v18, 1, 1, v19);
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  static REMHashtagLabelSpecifier.labels(_:)();
  (*(v13 + 32))(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection, v15, v12);
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning) = 0;
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient) = 0;
  *(v17 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = 0;
  ObservationRegistrar.init()();
  *&v5[v52] = v17;
  v21 = qword_100781DD0;
  sub_100058000(&unk_100781F98);
  swift_allocObject();
  *&v5[v21] = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23 = [objc_opt_self() containerBoxViewWithArrangedSubviews:isa];

  v24 = v23;
  [v24 setLayoutMarginsRelativeArrangement:1];
  v25 = v24;
  [v25 setPreservesSuperviewLayoutMargins:0];
  [v25 setHorizontalAlignment:0];
  [v25 setVerticalAlignment:0];
  [v25 setDebugBoundingBoxesEnabled:0];

  *&v5[qword_100781DB0] = v25;
  v60.receiver = v5;
  v60.super_class = ObjectType;
  v26 = v25;
  v27 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v58 = &type metadata for ContentConfigurationForMainStackView;
  v59 = sub_1003F9400();
  v28 = v27;
  UICollectionViewCell.contentConfiguration.setter();
  v29 = [v28 contentView];

  type metadata accessor for MainStackView(0);
  v30 = swift_dynamicCastClass();
  if (!v30)
  {

    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100003E30(v31, qword_100781D80);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "TTRIRemindersListHashtagCollectionCell_collectionView: failed to create MainStackView", v34, 2u);
    }

    v30 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v29 = v30;
  }

  v35 = v30;
  v36 = v29;
  v37 = *&v28[qword_100781DA8];
  *&v28[qword_100781DA8] = v35;
  v38 = v35;

  (*(v54 + 104))(v53, enum case for TTRIMarginProvidingView.selfView(_:), v55);
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginProvidingView.setter();
  v39 = v38;
  dispatch thunk of TTRIMarginTransferringContainerStackView.marginTransferActionForArrangedSubview.setter();

  v40 = v39;
  [v40 setLayoutMarginsRelativeArrangement:0];
  [v40 setPreservesSuperviewLayoutMargins:1];
  [v40 setAxis:1];
  [v40 setSpacing:0.0];
  [v40 setAlignment:0];
  [v40 setDistribution:0];

  sub_100058000(&qword_10076B780);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10062D420;
  v42 = v26;
  *(v41 + 32) = v26;
  v43 = Array._bridgeToObjectiveC()().super.isa;

  [v40 setArrangedSubviews:v43];

  v44 = v28;
  [v40 setDelegate:v44];

  [v40 setDebugBoundingBoxesEnabled:0];
  swift_allocObject();
  swift_unknownObjectWeakInit();

  TTRObservationTrackingUpdateHelper.scheduleUpdate.setter();

  v45 = *&v44[qword_100781DC8];
  IsAccessibility = static UIAccessibility.ttriIsAccessibilityRunning.getter();
  v47 = IsAccessibility & 1;
  swift_getKeyPath();
  v57 = v45;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning;
  LODWORD(v35) = v45[OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning];

  if (v47 != v35)
  {
    if (v47 == v45[v48])
    {
      v45[v48] = IsAccessibility & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v55 = &v51;
      __chkstk_darwin(KeyPath);
      *(&v51 - 2) = v45;
      *(&v51 - 8) = IsAccessibility & 1;
      v57 = v45;

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  v58 = ObjectType;
  v57 = v44;
  static UIAccessibility.addAccessibilityStatusChangeObserver(_:selector:)();

  sub_100004758(&v57);
  return v44;
}

uint64_t sub_1003F3660@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRIMarginTransferAction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRIMarginTransferAction.init(edgesToReceiveMargins:redirectedTarget:)();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v9 documentView];
    TTRIMarginTransferAction.redirectedTarget.setter();
  }

  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_1003F37F4()
{
  sub_10003B788(v0 + qword_100781DA0);

  sub_100113914(*(v0 + qword_100781DC0), *(v0 + qword_100781DC0 + 8));
}

id sub_1003F388C()
{
  ObjectType = swift_getObjectType();
  v5[3] = ObjectType;
  v5[0] = v0;
  v2 = v0;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v5);
  v4.receiver = v2;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1003F38F0(void *a1)
{
  ObjectType = swift_getObjectType();
  v6[3] = ObjectType;
  v6[0] = a1;
  v3 = a1;
  static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)();
  sub_100004758(v6);
  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_1003F3958(uint64_t a1)
{
  sub_10003B788(a1 + qword_100781DA0);

  sub_100113914(*(a1 + qword_100781DC0), *(a1 + qword_100781DC0 + 8));
}

uint64_t sub_1003F39FC(char *a1)
{
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView(0);
  objc_msgSendSuper2(&v10, "_bridgedUpdateConfigurationUsingState:", isa);

  v3 = *&a1[qword_100781DC8];
  v4 = UICellConfigurationState.traitCollection.getter();
  v5 = [v4 horizontalSizeClass];

  swift_getKeyPath();
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass;
  v7 = *(v3 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass);

  if ((v5 == 1) != v7)
  {
    if (((v5 == 1) ^ *(v3 + v6)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);

      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v3 + v6) = v5 == 1;
    }
  }

  return sub_1003F3BFC(0);
}

uint64_t sub_1003F3BFC(char a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076B038);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  result = dispatch thunk of TTRIRemindersListIntermediateViewModelObservingCell.viewModelObserver.getter();
  if (result)
  {
    TTRViewModelObserver.localValue.getter();

    v8 = sub_100058000(&unk_10076B040);
    v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
    result = sub_1000079B4(v6, &qword_10076B038);
    if (v9 != 1)
    {
      result = TTRObservationTrackingUpdateHelper.hasUpdates.getter();
      if (result)
      {
        v10 = *(v2 + qword_100781DC8);
        swift_getKeyPath();
        v15 = v10;
        sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v11 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient;
        v12 = *(v10 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient);

        if (v12 == (a1 & 1))
        {
          return sub_1003F4974();
        }

        else
        {
          if (*(v10 + v11) == (a1 & 1))
          {
            *(v10 + v11) = a1 & 1;
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v14[1] = v14;
            __chkstk_darwin(KeyPath);
            v14[-2] = v10;
            LOBYTE(v14[-1]) = a1 & 1;
            v15 = v10;

            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
          }

          result = sub_1003F4974();
          *(v10 + v11) = v12;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F3EAC(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a1;
  v10 = v5;
  v6 = a1;
  TTRObservationTrackingUpdateHelper.withUpdateSchedulingDisabled<A>(_:)();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1003F3FC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIRemindersListItemIntermediateViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v11 - 8);
  v13 = &v26 - v12;
  v14 = sub_100058000(&qword_100781FA8);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  type metadata accessor for TTRIRemindersListIntermediateViewModelObservingCell();
  v17 = method lookup function for TTRIRemindersListIntermediateViewModelObservingCell();
  v17(a1, a2);
  sub_100058000(&unk_10076B040);
  TTRCollectionViewItemObservedViewModel.intermediateViewModel.getter();
  TTRIRemindersListItemIntermediateViewModel.item.getter();
  (*(v8 + 8))(v10, v7);
  v18 = type metadata accessor for TTRRemindersListViewModel.Item();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000079B4(v13, &qword_100772140);
    v20 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
    return (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  TTRRemindersListViewModel.Item.iOSListCasesOnly.getter();
  (*(v19 + 8))(v13, v18);
  v22 = type metadata accessor for TTRRemindersListViewModel.Item.iOSListCasesInItem();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v16, 0, 1, v22);
  result = (*(v23 + 88))(v16, v22);
  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.sectionsContainer(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.section(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.reminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.uncommittedReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.placeholderReminder(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.completed(_:))
  {
    return (*(v23 + 8))(v16, v22);
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.hashtags(_:))
  {
    (*(v23 + 96))(v16, v22);
    v25 = v26;
    v24 = v27;
    (*(v26 + 32))(v6, v16, v27);
    sub_100187FFC(v6);
    return (*(v25 + 8))(v6, v24);
  }

  if (result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.templateStatus(_:) || result == enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.tip(_:))
  {
    return (*(v23 + 8))(v16, v22);
  }

  if (result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.publicTemplatePreviewStatus(_:) && result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.recentlyDeletedDisclaimer(_:) && result != enum case for TTRRemindersListViewModel.Item.iOSListCasesInItem.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003F44F4()
{
  result = sub_1004B6498(&off_100712B58);
  qword_100781D98 = result;
  return result;
}

uint64_t sub_1003F451C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6F697463656C6573;
  v4 = 0xE90000000000006ELL;
  v5 = 0x800000010066E890;
  if (v2 != 1)
  {
    v3 = 0xD000000000000014;
    v4 = 0x800000010066E890;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x736E6F74747562;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x6F697463656C6573;
  if (*a2 == 1)
  {
    v5 = 0xE90000000000006ELL;
  }

  else
  {
    v8 = 0xD000000000000014;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x736E6F74747562;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1003F4620()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003F46CC()
{
  String.hash(into:)();
}

Swift::Int sub_1003F4764()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1003F480C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1003F96E8(*a1);
  *a2 = result;
  return result;
}

void sub_1003F483C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE90000000000006ELL;
  v5 = 0x6F697463656C6573;
  if (v2 != 1)
  {
    v5 = 0xD000000000000014;
    v4 = 0x800000010066E890;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F74747562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1003F48A4()
{
  if (qword_100767260 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1003F4910()
{
  v1 = 0x6F697463656C6573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F74747562;
  }
}

uint64_t sub_1003F4974()
{
  TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
  TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
  return TTRObservationTrackingUpdateHelper.updateIfNeeded(_:_:)();
}

void sub_1003F4A34(char a1, uint64_t a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = *(a2 + qword_100781DC8);
      swift_getKeyPath();
      sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_1003F4F44(*(v2 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient));
    }

    else
    {
      sub_1003F53D4();
    }
  }

  else
  {
    sub_1003F4B18();
  }
}

id sub_1003F4B18()
{
  v1 = v0;
  v2 = type metadata accessor for TTRHashtagCollectionViewAddTagButtonState();
  v33 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRHashtagCollectionViewAllTagsButtonState();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v0[qword_100781DC8];
  swift_getKeyPath();
  v35 = v8;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) != 1 || (swift_getKeyPath(), v35 = v8, ObservationRegistrar.access<A, B>(_:keyPath:)(), , !*(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels)))
  {
    v14 = &v0[qword_100781DC0];
    v15 = *&v0[qword_100781DC0];
    if (v15)
    {
      [v15 removeFromSuperview];
      v15 = *v14;
    }

    v16 = *(v14 + 1);
    *(v14 + 1) = 0;
    *(v14 + 2) = 0;
    *v14 = 0;
    return sub_100113914(v15, v16);
  }

  v9 = &v0[qword_100781DC0];
  v11 = *&v0[qword_100781DC0];
  v10 = *&v0[qword_100781DC0 + 8];
  v12 = *&v0[qword_100781DC0 + 16];
  v30 = *(v8 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels);

  if (v11)
  {
    v31 = v11;
    v32 = v12;
    v13 = v10;
  }

  else
  {
    v31 = sub_1003F5EF0(v1);
    v32 = v17;
    v13 = v18;
  }

  sub_10011395C(v11, v10);
  *v7 = static TTRLocalizableStrings.Hashtags.allTagsText.getter();
  v7[1] = v19;
  (*(v34 + 104))(v7, enum case for TTRHashtagCollectionViewAllTagsButtonState.shown(_:), v5);
  v20 = v33;
  (*(v33 + 104))(v4, enum case for TTRHashtagCollectionViewAddTagButtonState.hidden(_:), v2);
  v29 = v13;
  v21 = [v13 arrangedSubviews];
  if (v21)
  {
    v22 = v21;
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  TTRHashtagCollectionViewPopulator.updateButtons(toShow:allTagsButtonState:addTagButtonState:hashTagButtonFont:reusing:)();

  (*(v20 + 8))(v4, v2);
  (*(v34 + 8))(v7, v5);
  v23 = v31;
  result = [v31 superview];
  if (result)
  {
    v25 = result;

LABEL_15:
    v27 = v29;

    v15 = *v9;
    v16 = *(v9 + 1);
    *v9 = v23;
    *(v9 + 1) = v27;
    *(v9 + 2) = v32;
    return sub_100113914(v15, v16);
  }

  v26 = *&v1[qword_100781DA8];
  if (v26)
  {
    v25 = v26;

    [v25 insertArrangedSubview:v23 atIndex:0];
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003F4F44(int a1)
{
  v30 = a1;
  v2 = type metadata accessor for TTRHashtagCollectionViewAnimationParams();
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = (v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for TTRHashtagCollectionViewDropState();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMHashtagLabelSpecifier();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v36 = v11;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) == 1)
  {
    swift_getKeyPath();
    v36 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v11 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
    {
      v13 = v1 + qword_100781DC0;
      v14 = *(v1 + qword_100781DC0);
      if (v14)
      {
        v29 = v8;
        v16 = *(v13 + 8);
        v15 = *(v13 + 16);

        v28 = v14;
        v26[1] = v15;
        sub_10011395C(v14, v16);
        v27 = v16;
        v17 = [v16 arrangedSubviews];
        if (v17)
        {
          v18 = v17;
          sub_100003540(0, &qword_10076B020);
          v26[0] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v26[0] = _swiftEmptyArrayStorage;
        }

        v19 = v29;
        swift_getKeyPath();
        v36 = v11;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v20 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
        swift_beginAccess();
        (*(v35 + 16))(v10, v11 + v20, v19);
        v22 = v31;
        v21 = v32;
        (*(v31 + 104))(v7, enum case for TTRHashtagCollectionViewDropState.noDrop(_:), v32);
        if (v30)
        {
          *v4 = 0x3FD3333333333333;
          v23 = &enum case for TTRHashtagCollectionViewAnimationParams.animated(_:);
        }

        else
        {
          v23 = &enum case for TTRHashtagCollectionViewAnimationParams.unanimated(_:);
        }

        v25 = v33;
        v24 = v34;
        (*(v33 + 104))(v4, *v23, v34);
        TTRHashtagCollectionViewPopulator.updateSelection(for:hashtagLabels:selection:dropState:animation:)();

        (*(v25 + 8))(v4, v24);
        (*(v22 + 8))(v7, v21);
        return (*(v35 + 8))(v10, v29);
      }
    }
  }

  return result;
}

void sub_1003F53D4()
{
  v1 = v0;
  v2 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v2 - 8);
  v72 = &v60 - v3;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v64 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v68.super.isa = (&v60 - v7);
  v8 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v71 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_100781F70);
  v66 = *(v10 - 8);
  v67 = v10;
  __chkstk_darwin(v10);
  v65 = &v60 - v11;
  v12 = sub_100058000(&qword_1007708D8);
  __chkstk_darwin(v12 - 8);
  v14 = &v60 - v13;
  v15 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v0 + qword_100781DC8);
  swift_getKeyPath();
  v76 = v19;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  swift_beginAccess();
  sub_1001885B8(v19 + v20, v14);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v61 = v16;
    v62 = v15;
    v25 = (*(v16 + 32))(v18, v14, v15);
    v26 = *(v1 + qword_100781DB8);
    v63 = v1;
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v25 = sub_1003F6290();
      v27 = v25;
    }

    isa = v68.super.isa;
    __chkstk_darwin(v25);
    *(&v60 - 2) = v18;
    __chkstk_darwin(v29);
    *(&v60 - 2) = v18;
    v31 = v30;
    v32 = TTRRemindersListViewModel.HashtagSelectionDescription.attributedPreferredDescription(baseAttributes:emphasizedAttributes:)();
    if (v32)
    {
      v68.super.isa = v32;
      v60 = 2;
    }

    else
    {
      v68.super.isa = sub_1003F675C();
      v60 = 0;
    }

    swift_getKeyPath();
    v75 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v33 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithButton<A>(_:);
    if ((*(v19 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) & 1) == 0)
    {
      swift_getKeyPath();
      v75 = v19;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v19 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning))
      {
        v33 = &enum case for TTRIInlineButtonAttachmentTextView.AttachmentReplacementStrategy.replaceWithText<A>(_:);
      }
    }

    (*(v66 + 104))(v65, *v33, v67);
    TTRIInlineButtonAttachmentTextView.attachmentReplacementStrategy.setter();
    swift_getKeyPath();
    v75 = v19;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v34 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
    swift_beginAccess();
    v35 = v69;
    v36 = *(v69 + 16);
    v37 = v19 + v34;
    v38 = v70;
    v36(isa, v37, v70);
    v39 = (*(v35 + 88))(isa, v38);
    if (v39 == enum case for REMHashtagLabelSpecifier.labels(_:))
    {
      v40 = v64;
      v36(v64, isa, v38);
      (*(v35 + 96))(v40, v38);

      v41 = *(sub_100058000(&qword_10076B830) + 64);
      v42 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
      v43 = *(v42 - 8);
      v44 = (*(v43 + 88))(&v40[v41], v42);
      v1 = v63;
      v45 = v71;
      if (v44 == enum case for REMHashtagLabelSpecifier.Operation.or(_:))
      {
        v46 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
LABEL_20:
        v47 = v73;
        v48 = v74;
        (*(v73 + 104))(v71, *v46, v74);
        (*(v35 + 8))(isa, v38);
LABEL_21:
        v49 = v72;
        (*(v47 + 16))(v72, v45, v48);
        v24 = 1;
        (*(v47 + 56))(v49, 0, 1, v48);
        TTRIInlineButtonAttachmentTextView.selectedItem.setter();
        v50 = v68.super.isa;
        TTRIInlineButtonAttachmentTextView.applyAttributedText(_:forceUpdate:)(v68, 0);
        v51 = [v27 textContainer];
        [v51 setMaximumNumberOfLines:v60];

        (*(v47 + 8))(v45, v48);
        (*(v61 + 8))(v18, v62);
        v52 = *(v1 + qword_100781DB8);
        *(v1 + qword_100781DB8) = v27;
        v22 = v27;

        if (v22)
        {
          sub_100058000(&qword_10076B780);
          v23 = swift_allocObject();
          v24 = 0;
          *(v23 + 1) = xmmword_10062D420;
          v23[4] = v22;
        }

        else
        {
          v23 = _swiftEmptyArrayStorage;
        }

        goto LABEL_24;
      }

      if (v44 == enum case for REMHashtagLabelSpecifier.Operation.and(_:))
      {
        v46 = &enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
        goto LABEL_20;
      }

      (*(v43 + 8))(&v64[v41], v42);
    }

    else
    {
      v1 = v63;
      v47 = v73;
      v45 = v71;
      if (v39 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v39 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
      {
        (*(v35 + 8))(isa, v38);
        v48 = v74;
        (*(v47 + 104))(v45, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:), v74);
        goto LABEL_21;
      }
    }

    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_100003E30(v59, qword_100781D80);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown selection", 17, 2);
    __break(1u);
    return;
  }

  sub_1000079B4(v14, &qword_1007708D8);
  v21 = *(v1 + qword_100781DB8);
  *(v1 + qword_100781DB8) = 0;

  v22 = 0;
  v23 = _swiftEmptyArrayStorage;
  v24 = 1;
LABEL_24:
  v53 = *(v1 + qword_100781DB0);
  v54 = v22;
  v55 = [v53 arrangedSubviews];
  if (v55 && (v56 = v55, sub_100003540(0, &qword_10076B020), v57 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v56, , LOBYTE(v56) = sub_10012671C(v57, v23), , , (v56 & 1) != 0))
  {

    if ((v24 & 1) == 0)
    {
LABEL_27:

      [v53 layoutMargins];
      [v53 setLayoutMargins:7.0];

      return;
    }
  }

  else
  {
    sub_100003540(0, &qword_10076B020);
    v58 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setArrangedSubviews:v58];

    if ((v24 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  [v53 layoutMargins];
  [v53 setLayoutMargins:8.0];
}

id sub_1003F5EF0(char *a1)
{
  v2 = type metadata accessor for TTRIHashtagCollectionViewAdaptor.ContainerView();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = objc_allocWithZone(type metadata accessor for HorizontalStackView(0));
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = [v6 initWithArrangedSubviews:isa];

  v9 = v8;
  [v9 setAxis:0];
  [v9 setSpacing:8.0];
  [v9 setAlignment:2];
  result = [v9 setDistribution:0];
  v11 = *&a1[qword_100781DA8];
  if (v11)
  {
    v12 = v9;
    [v11 layoutMargins];
    [v12 setLayoutMargins:?];
    [v12 layoutMargins];
    [v12 setLayoutMargins:6.0];
    v13 = v12;
    [v13 setLayoutMarginsRelativeArrangement:1];
    [v13 setPreservesSuperviewLayoutMargins:0];
    [v13 setDebugBoundingBoxesEnabled:0];
    [v13 setDelegate:a1];

    v14 = [objc_allocWithZone(NUIContentScrollView) initWithDocumentView:v13];
    [v14 setHorizontalAlignment:1];
    [v14 setVerticalAlignment:3];
    [v14 setCanScrollDocumentViewVertically:0];
    [v14 setCanScrollDocumentViewHorizontally:1];
    v15 = v14;
    [v15 setShowsHorizontalScrollIndicator:0];
    [v15 setContentInsetAdjustmentBehavior:2];
    [v15 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

    [v15 setTtrFocusGroupIdentifier:0];
    *v5 = v13;
    v5[1] = v15;
    (*(v3 + 104))(v5, enum case for TTRIHashtagCollectionViewAdaptor.ContainerView.stack(_:), v2);
    type metadata accessor for TTRIHashtagCollectionViewAdaptor();
    swift_allocObject();
    v16 = v15;
    v17 = a1;
    v18[1] = TTRIHashtagCollectionViewAdaptor.init(target:addTagButtonAction:hashtagButtonAction:buttonFocusDelegate:containerView:)();
    sub_100058000(&qword_100781F68);
    swift_allocObject();
    TTRHashtagCollectionViewPopulator.init(adaptor:)();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1003F6290()
{
  v0 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v0 - 8);
  v32 = &v21 - v1;
  v2 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  sub_100058000(&unk_100792B80);
  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100003540(0, &qword_100771DF0);
  static UIFont.roundedSubheadlineFont.getter();
  TTRIInlineButtonAttachmentTextView.font.setter();
  sub_100058000(&unk_100781F80);
  v27 = sub_100058000(&unk_100792B90);
  v33 = *(v27 - 8);
  v29 = *(v33 + 72);
  v9 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v10 = swift_allocObject();
  v30 = v10;
  *(v10 + 16) = xmmword_10062D3F0;
  v24 = v10 + v9;
  v11 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:);
  v28 = v3;
  v12 = *(v3 + 104);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26 = *(v3 + 8);
  v26(v8, v2);
  v21 = v5;
  v12(v5, v11, v2);
  v25 = sub_1003F93B8(&qword_100781F90, &type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions);
  v13 = v24;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v23 = enum case for TTRIInlineButtonAttachmentTextView.Option.item<A>(_:);
  v14 = *(v33 + 104);
  v33 += 104;
  v22 = v14;
  v15 = v27;
  v14(v13);
  v16 = enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:);
  v12(v8, enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:), v2);
  TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.localizedOptionString.getter();
  v26(v8, v2);
  v12(v21, v16, v2);
  v17 = v29;
  TTRIMenuItem.init(title:image:item:selectedTitle:)();
  v22(v13 + v17, v23, v15);
  v18 = v31;
  TTRIInlineButtonAttachmentTextView.menuOptions.setter();
  v19 = v32;
  v12(v32, v16, v2);
  (*(v28 + 56))(v19, 0, 1, v2);
  TTRIInlineButtonAttachmentTextView.selectedItem.setter();
  TTRIInlineButtonAttachmentTextView.attachmentToken.setter();
  sub_1003F93B8(&unk_100781F38, type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView);
  swift_unknownObjectRetain();
  TTRIInlineButtonAttachmentTextView.attachmentDelegate.setter();
  return v18;
}

id sub_1003F675C()
{
  TTRRemindersListViewModel.HashtagSelectionDescription.generic.getter();
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0);
  v2 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 72) = NSForegroundColorAttributeName;
  v3 = objc_opt_self();
  v4 = NSForegroundColorAttributeName;
  v5 = [v3 secondaryLabelColor];
  *(inited + 104) = sub_100003540(0, &qword_100772610);
  *(inited + 80) = v5;
  sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(NSAttributedString);
  v7 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1003F93B8(&qword_100778A60, type metadata accessor for Key);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = [v6 initWithString:v7 attributes:isa];

  return v9;
}

uint64_t sub_1003F6978(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v30 = v1;
  v9 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v32 = v9;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) == 1)
  {
    swift_getKeyPath();
    v32 = v9;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v9 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels))
    {
      if (*(v30 + qword_100781DC0))
      {
        v27 = *(v30 + qword_100781DC0 + 16);
        swift_getKeyPath();
        v32 = v9;

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v28 = v2;
        v11 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
        swift_beginAccess();
        v25 = v8;
        v26 = *(v3 + 16);
        v26(v5, v9 + v11, v28);
        TTRHashtagCollectionViewPopulator.modifySelection(_:forUserSelectedHashtagButton:hashtagLabels:allowsEmptySelection:allowsExcludedSelection:)();

        v12 = *(v3 + 8);
        v12(v5, v28);
        swift_getKeyPath();
        v31 = v9;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v24 = v11;
        v13 = v9 + v11;
        v14 = v28;
        v29 = v3 + 16;
        v26(v5, v13, v28);
        v15 = v25;
        sub_1003F93B8(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v12(v5, v14);
        if (v16)
        {
          v12(v15, v14);
        }

        else
        {
          swift_getKeyPath();
          v23 = v12;
          v31 = v9;

          ObservationRegistrar.access<A, B>(_:keyPath:)();
          v17 = v23;

          v18 = v26;
          v26(v5, v9 + v24, v14);

          v19 = dispatch thunk of static Equatable.== infix(_:_:)();
          v17(v5, v14);
          if ((v19 & 1) == 0)
          {
            v18(v5, v15, v14);

            sub_100187550(v5);
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v21 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
            v22 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
            sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v21);
            (*(*(v22 + 8) + 984))(v15, v21);
            swift_unknownObjectRelease();
          }

          return (v17)(v15, v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1003F6E64(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  sub_1003F6978(v7);

  return sub_1000079B4(v7, &qword_10076AE40);
}

Class sub_1003F6EE4(void *a1)
{
  v1 = a1;
  v2 = sub_1003F6F54();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

char *sub_1003F6F54()
{
  v1 = *(v0 + qword_100781DC0);
  if (v1)
  {
    v12 = sub_100003540(0, &qword_100781F60);
    *&v11 = v1;
    v2 = v1;
    v3 = sub_1005470E4(0, 1, 1, _swiftEmptyArrayStorage);
    v5 = *(v3 + 2);
    v4 = *(v3 + 3);
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1005470E4((v4 > 1), v5 + 1, 1, v3);
    }

    *(v3 + 2) = v5 + 1;
    sub_100007DD8(&v11, &v3[32 * v5 + 32]);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = *(v0 + qword_100781DB8);
  if (v6)
  {
    v12 = sub_100058000(&unk_100792B80);
    *&v11 = v6;
    v7 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1005470E4(0, *(v3 + 2) + 1, 1, v3);
    }

    v9 = *(v3 + 2);
    v8 = *(v3 + 3);
    if (v9 >= v8 >> 1)
    {
      v3 = sub_1005470E4((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 2) = v9 + 1;
    sub_100007DD8(&v11, &v3[32 * v9 + 32]);
  }

  if (!*(v3 + 2))
  {

    return 0;
  }

  return v3;
}

uint64_t sub_1003F70DC()
{
  v1 = *(v0 + qword_100781DB8);
  if (v1)
  {
    v2 = v1;
    if (TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter())
    {
      type metadata accessor for TTRIInlineButtonAttachmentTextViewButton();
      v3 = UIView.firstDescendantView<A>(ofType:passing:)();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 accessibilityLabel];

        if (v5)
        {
          v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          return v6;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1003F7190(void *a1)
{
  v1 = a1;
  IsAccessibility = static UIAccessibility.ttriIsAccessibilityRunning.getter();
  KeyPath = swift_getKeyPath();
  sub_1002A17F4(KeyPath, IsAccessibility & 1);
}

uint64_t sub_1003F72A8(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v59 = &v47 - v7;
  v8 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v57 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100781F48);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions();
  __chkstk_darwin(v14);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  v20 = a1;
  v22 = v21;
  sub_1000046FC(v20, v61);
  v23 = swift_dynamicCast();
  v24 = *(v22 + 56);
  if (!v23)
  {
    v24(v13, 1, 1, v14);
    return sub_1000079B4(v13, &qword_100781F48);
  }

  v24(v13, 0, 1, v14);
  (*(v22 + 32))(v19, v13, v14);
  (*(v22 + 16))(v16, v19, v14);
  v25 = (*(v22 + 88))(v16, v14);
  v51 = v19;
  v52 = v22;
  v50 = v14;
  if (v25 == enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.any(_:))
  {
    v26 = v5;
    v27 = v3;
    v28 = &enum case for REMHashtagLabelSpecifier.Operation.or(_:);
  }

  else
  {
    if (v25 != enum case for TTRRemindersListViewModel.HashtagsState.FilterOperatorOptions.all(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    v26 = v5;
    v27 = v3;
    v28 = &enum case for REMHashtagLabelSpecifier.Operation.and(_:);
  }

  v30 = v57;
  (*(v9 + 104))(v57, *v28, v8);
  v53 = v9;
  v31 = *(v58 + qword_100781DC8);
  swift_getKeyPath();
  v56 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel___observationRegistrar;
  v61[0] = v31;
  v55 = sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  v54 = v8;
  v33 = v27;
  v35 = v27 + 16;
  v34 = *(v27 + 16);
  v49 = v35;
  v34(v26, v31 + v32, v2);
  sub_1003F79B8(v26, v30, v59);
  v38 = *(v33 + 8);
  v37 = v33 + 8;
  v36 = v38;
  v38(v26, v2);
  swift_getKeyPath();
  v60 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = v34;
  v34(v26, v31 + v32, v2);
  v39 = v59;
  sub_1003F93B8(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v40 = dispatch thunk of static Equatable.== infix(_:_:)();
  v41 = v38;
  v38(v26, v2);
  if (v40)
  {
    v36(v39, v2);
  }

  else
  {
    swift_getKeyPath();
    v47 = v37;
    v60 = v31;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v42 = v48;
    v48(v26, v31 + v32, v2);

    v43 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41(v26, v2);
    if ((v43 & 1) == 0)
    {
      v42(v26, v39, v2);

      sub_100187550(v26);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 24);
      v46 = *(Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter + 32);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders53TTRIRemindersListContentViewController_collectionView_presenter), v45);
      (*(*(v46 + 8) + 984))(v59, v45);
      v39 = v59;
      swift_unknownObjectRelease();
    }

    v41(v39, v2);
  }

  (*(v53 + 8))(v57, v54);
  return (*(v52 + 8))(v51, v50);
}

void sub_1003F79B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for REMHashtagLabelSpecifier();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  v12 = v11;
  if (v11 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v7 + 96))(v10, v6);
    v13 = *(sub_100058000(&qword_10076B830) + 64);
    *a3 = *v10;
    v14 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    v15 = *(v14 - 8);
    (*(v15 + 16))(&a3[v13], a2, v14);
    (*(v7 + 104))(a3, v12, v6);
    (*(v15 + 8))(&v10[v13], v14);
  }

  else if (v11 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v11 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    (*(v7 + 104))(a3);
  }

  else
  {
    if (qword_100767258 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100781D80);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown selection", 17, 2);
    __break(1u);
  }
}

id sub_1003F7C54()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + qword_100781DB8);
  if (!v7)
  {
    return 0;
  }

  v8 = [v7 attributedText];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = objc_allocWithZone(NSMutableAttributedString);
  v11 = v9;
  v12 = [v10 initWithAttributedString:v11];
  v13 = *(v1 + qword_100781DC8);
  swift_getKeyPath();
  v27[1] = v13;
  sub_1003F93B8(&qword_100781F30, type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v14 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection;
  swift_beginAccess();
  (*(v3 + 16))(v6, v13 + v14, v2);
  if ((*(v3 + 88))(v6, v2) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v6, v2);
    v15 = *(sub_100058000(&qword_10076B830) + 64);
    v16 = NSAttributedString.ttrAccessibilityConvertedToHaveVoiceOverReadableTagList(withIncludedTags:andExcludedTags:)();

    v17 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];

    v18 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v18 - 8) + 8))(&v6[v15], v18);
    v12 = v17;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
  }

  v19 = sub_1003F70DC();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    sub_1003F93B8(&unk_100781F38, type metadata accessor for TTRIRemindersListHashtagCollectionCell_collectionView);
    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24.super.isa = TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(v12, v23).super.isa;

    v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v24.super.isa];

    v12 = v25;
  }

  else
  {
    v24.super.isa = v11;
  }

  return v12;
}

uint64_t sub_1003F7FF8()
{
  v1 = v0;
  v2 = *(v0 + qword_100781DB8);
  if (v2 && (v3 = v2, v4 = TTRIInlineButtonAttachmentTextView.hasButtonAttachment.getter(), v3, (v4 & 1) != 0))
  {
    v5 = static TTRAccesibility.General.Hint.AnyOrAllMenuHint.getter();
    v7 = v6;
    v8 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_100546970((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v7;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
    if (!UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_9;
    }
  }

  if (!*(v1 + qword_100781DC0))
  {
    v13 = static TTRAccesibility.Hashtags.GoToHashtagHint.getter();
    v15 = v14;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100546970(0, *(v8 + 2) + 1, 1, v8);
    }

    v17 = *(v8 + 2);
    v16 = *(v8 + 3);
    if (v17 >= v16 >> 1)
    {
      v8 = sub_100546970((v16 > 1), v17 + 1, 1, v8);
    }

    *(v8 + 2) = v17 + 1;
    v18 = &v8[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    if (*(v8 + 2))
    {
      goto LABEL_10;
    }

LABEL_16:

    return 0;
  }

LABEL_9:
  if (!*(v8 + 2))
  {
    goto LABEL_16;
  }

LABEL_10:
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v12 = BidirectionalCollection<>.joined(separator:)();

  return v12;
}

uint64_t sub_1003F8210()
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    return 0;
  }

  if (*&v0[qword_100781DC0])
  {
    return 0;
  }

  v2 = [v0 window];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  type metadata accessor for TTRIHashtagButton();
  v4 = UIView.firstDescendantView<A>(ofType:passing:)();

  return v4;
}

NSAttributedString sub_1003F829C(NSAttributedString a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  v6 = a2;
  v7 = a3;

  return TTRInlineButtonAttachmentTextViewDelegate.ttrAccessibilityAttributedLabelWith(_:replacementStringForButton:)(a1, *&v6);
}

unint64_t sub_1003F8308()
{
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0);
  v2 = NSFontAttributeName;
  *(inited + 40) = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  *(inited + 64) = v1;
  *(inited + 72) = NSForegroundColorAttributeName;
  v3 = objc_opt_self();
  v4 = NSForegroundColorAttributeName;
  v5 = [v3 secondaryLabelColor];
  *(inited + 104) = sub_100003540(0, &qword_100772610);
  *(inited + 80) = v5;
  v6 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_100058000(&unk_100776BE0);
  swift_arrayDestroy();
  return v6;
}

unint64_t sub_1003F845C()
{
  sub_100058000(&unk_100776BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = NSFontAttributeName;
  v1 = sub_100003540(0, &qword_100771DF0);
  v2 = NSFontAttributeName;
  v3 = static UIFont.preferredRoundedFont(forTextStyle:customWeight:compatibleWith:)();
  isa = UIFont.withBoldTrait()().super.isa;

  *(inited + 64) = v1;
  *(inited + 40) = isa;
  v5 = sub_100460A28(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_100776BE0);
  return v5;
}

id sub_1003F855C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_100781E28];
  *v11 = 0;
  v11[8] = 1;
  *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithFrame:", a2, a3, a4, a5);
  [v12 setNeverCacheEffectiveLayoutSize:1];
  return v12;
}

id sub_1003F8610(char *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = &a1[qword_100781E28];
    *v6 = 0;
    v6[8] = 1;
    *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v7 = &a1[qword_100781E28];
    *v7 = 0;
    v7[8] = 1;
    *&a1[qword_100781E30] = &_swiftEmptyDictionarySingleton;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithArrangedSubviews:", isa);

  [v8 setNeverCacheEffectiveLayoutSize:1];
  return v8;
}

void sub_1003F872C(uint64_t a1)
{
  v1 = a1 + qword_100781E28;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(a1 + qword_100781E30) = &_swiftEmptyDictionarySingleton;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1003F87B4(char *a1, double a2, double a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (a1[qword_100781E28 + 8])
  {
    v10 = a5;
    v11 = a1;
    v12 = 0.0;
  }

  else
  {
    v13 = *&a1[qword_100781E28];
    v14 = a5;
    v15 = a1;
    [v15 layoutMargins];
    v17 = v13 - v16;
    [v15 layoutMargins];
    v12 = v17 - v18;
  }

  if (v12 >= a2)
  {
    v12 = a2;
  }

  v22.receiver = a1;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "contentLayoutSizeFittingSize:forArrangedSubview:", a5, v12, a3);
  v20 = v19;

  return v20;
}

double sub_1003F88A0(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[qword_100781E28];
  v8 = v2[qword_100781E28 + 8];
  v9 = qword_100781E30;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (*(v10 + 16) && (v11 = sub_1003B3ED4(v7, v8, a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 16 * v11);
  }

  else
  {
    swift_endAccess();
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "effectiveLayoutSizeFittingSize:", a1, a2);
    v13 = v14;
    v16 = v15;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *&v3[v9];
    *&v3[v9] = 0x8000000000000000;
    sub_1001281BC(v7, v8, isUniquelyReferenced_nonNull_native, v13, v16, a1, a2);
    *&v3[v9] = v19;
  }

  swift_endAccess();
  return v13;
}

double sub_1003F89F4(void *a1, double a2, double a3)
{
  v5 = a1;
  v6 = sub_1003F88A0(a2, a3);

  return v6;
}

void sub_1003F8A48(void *a1, uint64_t a2, uint64_t a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  objc_msgSendSuper2(&v6, "invalidateInternalStateForInvalidation:", a3);
  if (a3 > 1)
  {
    v5 = qword_100781E30;
    swift_beginAccess();
    *&v4[v5] = &_swiftEmptyDictionarySingleton;
  }

  else
  {
  }
}

Swift::Int sub_1003F8AEC(Swift::UInt64 a1, char a2, double a3, double a4)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
  }

  sub_100602B5C(a3, a4);
  return Hasher._finalize()();
}

void sub_1003F8B94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
  }

  sub_100602B5C(v1, v2);
}

Swift::Int sub_1003F8C1C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  sub_100602B5C(v3, v4);
  return Hasher._finalize()();
}

BOOL sub_1003F8CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24) && *(a1 + 16) == *(a2 + 16);
}

id sub_1003F8D84(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1003F8DF4(void *a1, uint64_t a2, Class isa)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076B020);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "initWithArrangedSubviews:", isa);

  return v6;
}

id sub_1003F8EA0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

unint64_t sub_1003F8F20@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForMainStackView;
  result = sub_1003F9400();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1003F8F54(uint64_t *a1))(uint64_t *a1)
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
  *(v2 + 24) = &type metadata for ContentConfigurationForMainStackView;
  *(v2 + 32) = sub_1003F9400();
  return sub_10009D584;
}

uint64_t sub_1003F8FCC(uint64_t a1)
{
  sub_10000B0D8(a1, v2);
  sub_100058000(&qword_10077A650);
  return swift_dynamicCast();
}

double sub_1003F901C(void *a1)
{
  v1 = a1;
  [v1 bounds];
  Width = CGRectGetWidth(v4);

  return Width + 100.0;
}

uint64_t destroy for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(id *a1)
{
}

void *sub_1003F90D8(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;
  v6 = v4;

  return a1;
}

uint64_t assignWithCopy for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for TTRIRemindersListHashtagCollectionCell_collectionView.HashtagSelector(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t sub_1003F923C()
{
  result = qword_100781F08;
  if (!qword_100781F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F08);
  }

  return result;
}

unint64_t sub_1003F9294()
{
  result = qword_100781F10;
  if (!qword_100781F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F10);
  }

  return result;
}

unint64_t sub_1003F92EC()
{
  result = qword_100781F18;
  if (!qword_100781F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F18);
  }

  return result;
}

id sub_1003F9340()
{
  type metadata accessor for MainStackView(0);
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1003F93B8(&unk_100781FC0, type metadata accessor for MainStackView);
  return v0;
}

uint64_t sub_1003F93B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1003F9400()
{
  result = qword_100781F50;
  if (!qword_100781F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781F50);
  }

  return result;
}

void sub_1003F9454()
{
  v1 = v0;
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + qword_100781DA0 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + qword_100781DA8) = 0;
  *(v1 + qword_100781DB8) = 0;
  v6 = (v1 + qword_100781DC0);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  v13 = qword_100781DC8;
  type metadata accessor for TTRIRemindersListHashtagCollectionCellObservableViewModel();
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__selectionDescription;
  v9 = type metadata accessor for TTRRemindersListViewModel.HashtagSelectionDescription();
  v10 = *(*(v9 - 8) + 56);
  v10(v7 + v8, 1, 1, v9);
  v10(v7 + v8, 1, 1, v9);
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__isCompactHorizontalSizeClass) = 1;
  static REMHashtagLabelSpecifier.labels(_:)();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__internalSelection, v5, v2);
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__ttriIsAccessibilityRunning) = 0;
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__animatesSelectionUpdate_transient) = 0;
  *(v7 + OBJC_IVAR____TtC9Reminders57TTRIRemindersListHashtagCollectionCellObservableViewModel__labels) = 0;
  ObservationRegistrar.init()();
  *(v1 + v13) = v7;
  v11 = qword_100781DD0;
  sub_100058000(&unk_100781F98);
  swift_allocObject();
  *(v1 + v11) = TTRObservationTrackingUpdateHelper.init(loggingPrefix:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1003F96E8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100712B80, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1003F9734(uint64_t result, double a2)
{
  v3 = *(v2 + qword_100781DA8);
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (*(v2 + qword_100781DC0))
    {
      v5 = *(v2 + qword_100781DC0 + 8) + qword_100781E28;
      *v5 = a2;
      *(v5 + 8) = 0;
    }
  }

  return result;
}

void sub_1003F9818(uint64_t a1, uint64_t a2, char a3)
{

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = StaticString.description.getter();
    v10 = sub_100004060(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = Dictionary.description.getter();
    v13 = a3;
    v14 = sub_100004060(v11, v12, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    v15 = Dictionary.description.getter();
    v17 = sub_100004060(v15, v16, &v18);
    a3 = v13;

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

void sub_1003F99F4(uint64_t a1, unint64_t a2)
{
  type metadata accessor for Analytics();
  sub_100058000(&qword_100781FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1003FA088();
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000100685670;
  *(inited + 72) = String._bridgeToObjectiveC()();
  sub_100008F34(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100781FD8);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();

  if (qword_100767268 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_1007A8688);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100004060(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, v6, v7, "Dismissing (%s)", v8, 0xCu);
    sub_100004758(v9);
  }
}

void sub_1003F9C58(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v26 = a5;
  v9 = type metadata accessor for URL();
  v27 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Analytics();
  sub_100058000(&qword_100781FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062F800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_1003FA088();
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0xD00000000000001ALL;
  *(inited + 64) = 0x8000000100685670;
  v23 = a1;
  *(inited + 72) = String._bridgeToObjectiveC()();
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001006856A0;
  v24 = a3;
  *(inited + 96) = String._bridgeToObjectiveC()();
  sub_100008F34(inited);
  swift_setDeallocating();
  sub_100058000(&qword_100781FD8);
  swift_arrayDestroy();
  static Analytics.postEvent(_:payload:duration:)();

  if (qword_100767268 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003E30(v13, qword_1007A8688);
  v14 = v27;
  (*(v27 + 16))(v11, v26, v9);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = v9;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v18 = 136315650;
    *(v18 + 4) = sub_100004060(v23, a2, &v28);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100004060(v24, a4, &v28);
    *(v18 + 22) = 2080;
    v19 = URL.absoluteString.getter();
    v21 = v20;
    (*(v14 + 8))(v11, v17);
    v22 = sub_100004060(v19, v21, &v28);

    *(v18 + 24) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Navigating (%s) -> (%s) {url:%s}", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v14 + 8))(v11, v9);
  }
}

unint64_t sub_1003FA088()
{
  result = qword_1007755F0;
  if (!qword_1007755F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1007755F0);
  }

  return result;
}

uint64_t sub_1003FA220()
{
  v1._object = 0x80000001006857D0;
  v2._countAndFlagsBits = 0xD00000000000002ALL;
  v2._object = 0x8000000100685800;
  v1._countAndFlagsBits = 0xD000000000000022;
  v3 = TTRLocalizedString(_:comment:)(v1, v2);
  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x8000000100685830;
  v5._countAndFlagsBits = 0xD00000000000002BLL;
  v5._object = 0x8000000100685860;
  v6 = TTRLocalizedString(_:comment:)(v4, v5);
  v7._countAndFlagsBits = 0xD000000000000029;
  v7._object = 0x8000000100685890;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v8._object = 0x80000001006858C0;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  if (swift_unknownObjectWeakLoadStrong() && (v10 = sub_100090DDC(v0), swift_unknownObjectRelease(), (v10 & 1) != 0))
  {
    v11 = sub_100546970(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_100546970((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[16 * v13 + 32] = v6;
  }

  else
  {

    v11 = _swiftEmptyArrayStorage;
  }

  if (swift_unknownObjectWeakLoadStrong() && (v14 = sub_100090FE8(v0), swift_unknownObjectRelease(), (v14 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100546970(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      v11 = sub_100546970((v15 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 2) = v16 + 1;
    *&v11[16 * v16 + 32] = v9;
  }

  else
  {
  }

  if (swift_unknownObjectWeakLoadStrong() && (v17 = sub_1000911F0(v0), swift_unknownObjectRelease(), (v17 & 1) != 0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_100546970(0, *(v11 + 2) + 1, 1, v11);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_100546970((v18 > 1), v19 + 1, 1, v11);
    }

    *(v11 + 2) = v19 + 1;
    *&v11[16 * v19 + 32] = v3;
  }

  else
  {
  }

  static TTRAccesibility.General.Label.SentenceEnd.getter();
  sub_100058000(&unk_100781F20);
  sub_10000E188(&qword_100771E20, &unk_100781F20);
  v20 = BidirectionalCollection<>.joined(separator:)();

  return v20;
}

uint64_t sub_1003FA584()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_100090DDC(v0);
    swift_unknownObjectRelease();
    if (v1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100091390(v0);
        swift_unknownObjectRelease();
      }

      v2._object = 0x8000000100685770;
      v3._countAndFlagsBits = 0xD000000000000033;
      v3._object = 0x8000000100685790;
      v2._countAndFlagsBits = 0xD000000000000013;
      v5 = TTRLocalizedString(_:comment:)(v2, v3);
      countAndFlagsBits = v5._countAndFlagsBits;
      object = v5._object;
LABEL_11:
      sub_1003FA8D4(countAndFlagsBits, object);

      return 1;
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v8 = sub_100090FE8(v0);
  swift_unknownObjectRelease();
  if (v8)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100092794(v0);
      swift_unknownObjectRelease();
    }

    v9._countAndFlagsBits = 0xD000000000000017;
    v9._object = 0x8000000100685710;
    v10._countAndFlagsBits = 0xD000000000000037;
    v10._object = 0x8000000100685730;
    v11 = TTRLocalizedString(_:comment:)(v9, v10);
    countAndFlagsBits = v11._countAndFlagsBits;
    object = v11._object;
    goto LABEL_11;
  }

  return 0;
}

id sub_1003FA86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIGroupMembershipCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1003FA8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v23 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  sub_1000A96A0();
  v21 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v22 = *(v11 + 8);
  v22(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  aBlock[4] = sub_10039B328;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001047C;
  aBlock[3] = &unk_1007266C0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10001A4CC();
  sub_100058000(&qword_100780A50);
  sub_10000E188(&qword_10076B7E0, &qword_100780A50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v21;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v26 + 8))(v6, v4);
  (*(v24 + 8))(v9, v25);
  return (v22)(v16, v23);
}

uint64_t sub_1003FAC7C()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1003FACE0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v132 = a6;
  v122 = a5;
  v121 = a4;
  v123 = a3;
  v140 = a7;
  v120 = type metadata accessor for TTRICollectionViewItemHit();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for TTRICollectionViewItemHit.Portion();
  v124 = *(v126 - 8);
  __chkstk_darwin(v126);
  v117 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v125 = &v112 - v12;
  v144 = type metadata accessor for TTRICollectionViewHitTestResult();
  v142 = *(v144 - 8);
  __chkstk_darwin(v144);
  v137 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for TTRICollectionViewHitIndexPaths();
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v134 = &v112 - v16;
  v17 = type metadata accessor for IndexPath();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v127 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v130 = &v112 - v21;
  __chkstk_darwin(v22);
  v129 = &v112 - v23;
  __chkstk_darwin(v24);
  v139 = &v112 - v25;
  v26 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v26 - 8);
  *&v131 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v128 = (&v112 - v29);
  __chkstk_darwin(v30);
  v32 = &v112 - v31;
  __chkstk_darwin(v33);
  v35 = &v112 - v34;
  v37 = __chkstk_darwin(v36);
  v39 = &v112 - v38;
  [a2 locationInView:{a1, v37}];
  v41 = v40;
  v43 = v42;
  v44 = v18[7];
  v44(v39, 1, 1, v17);
  v44(v35, 1, 1, v17);
  v45 = swift_allocObject();
  *(v45 + 2) = v39;
  *(v45 + 3) = a1;
  *(v45 + 4) = v41;
  v45[5] = v43;
  v143 = v35;
  *(v45 + 6) = v35;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_100401260;
  *(v46 + 24) = v45;
  aBlock[4] = sub_100026410;
  v146 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100726800;
  v47 = _Block_copy(aBlock);
  v48 = v146;
  v49 = a1;

  [v49 performUsingPresentationValues:v47];
  _Block_release(v47);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  if (v47)
  {
    __break(1u);
  }

  else
  {
    v138 = v45;
    sub_10000794C(v39, v32, &unk_100771B10);
    v50 = v18[6];
    v51 = v39;
    if (v50(v32, 1, v17) == 1)
    {
      sub_1000079B4(v32, &unk_100771B10);
      v52 = enum case for TTRICollectionViewEmptySpaceType.others(_:);
      v53 = type metadata accessor for TTRICollectionViewEmptySpaceType();
      v54 = v140;
      (*(*(v53 - 8) + 104))(v140, v52, v53);
      (*(v142 + 104))(v54, enum case for TTRICollectionViewHitTestResult.emptySpace(_:), v144);
LABEL_32:
      sub_1000079B4(v143, &unk_100771B10);
      sub_1000079B4(v51, &unk_100771B10);
    }

    v113 = v49;
    v116 = v39;
    v55 = v139;
    v114 = v18[4];
    v114(v139, v32, v17);
    v141 = v17;
    v115 = v18;
    v56 = v18[2];
    v56(v129, v132, v17);
    v56(v130, v55, v141);
    v57 = v143;
    sub_10000794C(v143, v128, &unk_100771B10);
    v58 = v134;
    TTRICollectionViewHitIndexPaths.init(inDestination:presentationDestination:dataSourceDestination:)();
    v59 = v135;
    v60 = *(v135 + 16);
    v61 = v136;
    v129 = (v135 + 16);
    v128 = v60;
    v60(v133, v58, v136);
    v62 = v137;
    TTRICollectionViewGapHit.init(indexPaths:)();
    v63 = v142;
    v64 = *(v142 + 104);
    v132 = v142 + 104;
    v130 = v64;
    (v64)(v62, enum case for TTRICollectionViewHitTestResult.gap(_:), v144);
    v65 = v57;
    v66 = *&v131;
    v67 = v141;
    sub_10000794C(v65, *&v131, &unk_100771B10);
    if (v50(v66, 1, v67) == 1)
    {
      (*(v59 + 8))(v58, v61);
      (v115[1])(v139, v67);
      sub_1000079B4(v66, &unk_100771B10);
      (*(v63 + 32))(v140, v62, v144);
      goto LABEL_31;
    }

    v39 = v127;
    v114(v127, v66, v67);
    v32 = *(v123 + 16);
    v49 = *(v121 + 16);
    v48 = v122;
    v45 = (v122 >> 62);
    if (!(v122 >> 62))
    {
      result = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
  v51 = v116;
  v69 = v124;
  v70 = v139;
  v71 = v140;
  v72 = &v49[result];
  if (__OFADD__(v49, result))
  {
    __break(1u);
  }

  else
  {
    if (!v32)
    {
LABEL_12:
      if (!v49)
      {
        if (!v45)
        {
          if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

LABEL_17:
          if (v32 == 1)
          {
            type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
            if (static IndexPath.== infix(_:_:)())
            {
              v75 = v115[1];
              v76 = v141;
              v75(v39, v141);
              (*(v135 + 8))(v134, v136);
              v75(v70, v76);
              (*(v142 + 32))(v71, v137, v144);
              goto LABEL_32;
            }
          }

          goto LABEL_20;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_17;
        }
      }

LABEL_20:
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = v113;
      v79 = [v113 cellForItemAtIndexPath:isa];

      if (!v79)
      {
        v91 = v115[1];
        v92 = v141;
        v91(v39, v141);
        v93 = v144;
        (*(v142 + 8))(v137, v144);
        (*(v135 + 8))(v134, v136);
        v91(v70, v92);
        v94 = enum case for TTRICollectionViewEmptySpaceType.others(_:);
        v95 = type metadata accessor for TTRICollectionViewEmptySpaceType();
        (*(*(v95 - 8) + 104))(v71, v94, v95);
        (v130)(v71, enum case for TTRICollectionViewHitTestResult.emptySpace(_:), v93);
        goto LABEL_32;
      }

      [v79 bounds];
      [v78 convertRect:v79 fromCoordinateSpace:?];
      x = v147.origin.x;
      y = v147.origin.y;
      width = v147.size.width;
      height = v147.size.height;
      v84 = CGRectGetHeight(v147) * 0.5;
      v148.origin.x = x;
      v148.origin.y = y;
      v148.size.width = width;
      v148.size.height = height;
      CGRectGetHeight(v148);
      v131 = x;
      v149.origin.x = sub_100068328(x, y, width, height, v84, 0.0);
      v85 = v149.origin.x;
      v86 = v43;
      v87 = v149.origin.y;
      v88 = v149.size.width;
      v89 = v149.size.height;
      if (v86 >= CGRectGetMinY(v149))
      {
        v150.origin.x = v85;
        v150.origin.y = v87;
        v150.size.width = v88;
        v150.size.height = v89;
        v90 = v86;
        if (CGRectGetMaxY(v150) >= v86)
        {
          v96 = &enum case for TTRICollectionViewItemHit.Portion.top(_:);
        }

        else
        {
          v96 = &enum case for TTRICollectionViewItemHit.Portion.bottom(_:);
        }

        (*(v69 + 104))(v125, *v96, v126);
      }

      else
      {
        (*(v69 + 104))(v125, enum case for TTRICollectionViewItemHit.Portion.top(_:), v126);
        v90 = v86;
      }

      v97 = v131;
      v151.origin.x = v131;
      v151.origin.y = y;
      v151.size.width = width;
      v151.size.height = height;
      v98 = CGRectGetHeight(v151) * 0.2;
      v152.origin.x = v97;
      v152.origin.y = y;
      v152.size.width = width;
      v152.size.height = height;
      CGRectGetHeight(v152);
      v153.origin.x = sub_100068328(v97, y, width, height, v98, 0.0);
      v99 = v153.origin.x;
      v100 = v153.origin.y;
      v101 = v153.size.width;
      v102 = v153.size.height;
      if (v90 >= CGRectGetMinY(v153))
      {
        v154.origin.x = v99;
        v154.origin.y = v100;
        v154.size.width = v101;
        v154.size.height = v102;
        CGRectGetMaxY(v154);
      }

      v103 = v134;
      v104 = v136;
      v128(v133, v134, v136);
      v105 = v125;
      v106 = v126;
      (*(v69 + 16))(v117, v125, v126);
      v107 = v118;
      TTRICollectionViewItemHit.init(indexPaths:portion:isCloseToMiddle:)();

      (*(v69 + 8))(v105, v106);
      v108 = v115[1];
      v109 = v141;
      v108(v127, v141);
      v110 = v144;
      (*(v142 + 8))(v137, v144);
      (*(v135 + 8))(v103, v104);
      v108(v139, v109);
      v111 = v140;
      (*(v119 + 32))(v140, v107, v120);
      (v130)(v111, enum case for TTRICollectionViewHitTestResult.item(_:), v110);
LABEL_31:
      v51 = v116;
      goto LABEL_32;
    }

    v73 = __OFADD__(v32, v72);
    v74 = &v72[v32];
    if (!v73)
    {
      if (v74 != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FBCB8(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  __chkstk_darwin(v16);
  v18 = &v27 - v17;
  v19 = [a2 indexPathForItemAtPoint:{a4, a5}];
  if (v19)
  {
    v20 = v19;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
  }

  else
  {
    v21 = type metadata accessor for IndexPath();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  sub_1001A6488(v18, a1);
  sub_10000794C(a1, v15, &unk_100771B10);
  type metadata accessor for IndexPath();
  v22 = *(v21 - 8);
  isa = 0;
  if ((*(v22 + 48))(v15, 1, v21) != 1)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v22 + 8))(v15, v21);
  }

  v24 = [a2 dataSourceIndexPathForPresentationIndexPath:isa];

  if (v24)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v22 + 56))(v12, v25, 1, v21);
  return sub_1001A6488(v12, a3);
}

uint64_t sub_1003FBF5C@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007821E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v26 - v15;
  v17 = [a2 numberOfSections];
  if (v17 < 1)
  {
    (*(v7 + 56))(a3, 1, 1, v6);
    v19 = enum case for TTRICollectionViewEmptySpaceType.belowAllContents(_:);
    v20 = type metadata accessor for TTRICollectionViewEmptySpaceType();
    v21 = *(*(v20 - 8) + 104);

    return v21(a3, v19, v20);
  }

  else
  {
    sub_1003FC248(a2, (v17 - 1), a1, v16);
    sub_100016588(v16, v12, &qword_1007821E0);
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_1000079B4(v12, &qword_1007821E0);
      v18 = &enum case for TTRICollectionViewEmptySpaceType.others(_:);
    }

    else
    {
      v23 = *(v7 + 32);
      v23(v9, v12, v6);
      v23(a3, v9, v6);
      (*(v7 + 56))(a3, 0, 1, v6);
      v18 = &enum case for TTRICollectionViewEmptySpaceType.belowAllContents(_:);
    }

    v24 = *v18;
    v25 = type metadata accessor for TTRICollectionViewEmptySpaceType();
    return (*(*(v25 - 8) + 104))(a3, v24, v25);
  }
}

uint64_t sub_1003FC248@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v59 - v12;
  v13 = sub_100058000(&qword_1007821E8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v63 = &v59 - v17;
  v18 = sub_100058000(&qword_1007821F0);
  __chkstk_darwin(v18 - 8);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v59 - v23;
  v68 = a2;
  result = [a1 numberOfItemsInSection:{a2, v22}];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v59 = v10;
    v61 = v8;
    v62 = v7;
    v66 = a4;
    v70 = 0.0;
    v71 = *&result;
    __chkstk_darwin(result);
    *(&v59 - 2) = v68;
    *(&v59 - 1) = a1;
    v67 = a1;
    sub_100058000(&qword_1007821F8);
    sub_10000E188(&unk_100782200, &qword_1007821F8);
    Sequence.firstMap<A>(_:)();
    sub_10000794C(v24, v20, &qword_1007821F0);
    if ((*(v14 + 48))(v20, 1, v13) == 1)
    {
      v63 = v24;
      sub_1000079B4(v20, &qword_1007821F0);
      v26 = v64;
      IndexPath.init(item:section:)();
      sub_100058000(&unk_100771E10);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_10062D3F0;
      *(v27 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v27 + 40) = v28;
      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v27 + 48) = v29;
      *(v27 + 56) = v30;
      v69 = v27;
      __chkstk_darwin(v29);
      *(&v59 - 2) = v67;
      *(&v59 - 1) = v26;
      sub_100058000(&unk_100781F20);
      type metadata accessor for CGRect(0);
      sub_10000E188(&qword_10076DB20, &unk_100781F20);
      Sequence.firstMap<A>(_:)();

      if (v74)
      {
        sub_1000079B4(v63, &qword_1007821F0);
        v31 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        (*(*(v31 - 8) + 56))(v66, 1, 1, v31);
        return (*(v61 + 8))(v26, v62);
      }

      else
      {
        v44 = v70;
        v45 = v71;
        v46 = v72;
        v47 = v73;
        [v65 locationInView:v67];
        v49 = v48;
        v76.origin.x = v44;
        v76.origin.y = v45;
        v76.size.width = v46;
        v76.size.height = v47;
        MaxY = CGRectGetMaxY(v76);
        v51 = v66;
        v53 = v61;
        v52 = v62;
        if (MaxY >= v49)
        {
          sub_1000079B4(v63, &qword_1007821F0);
          v58 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
          (*(*(v58 - 8) + 56))(v51, 1, 1, v58);
        }

        else
        {
          (*(v61 + 16))(v59, v26, v62);
          TTRAdjustedIndexPath.init(_:)();
          sub_1000079B4(v63, &qword_1007821F0);
          v54 = enum case for TTRICollectionViewInsertAtIndexPathOption.at(_:);
          v55 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
          v56 = *(v55 - 8);
          (*(v56 + 104))(v51, v54, v55);
          (*(v56 + 56))(v51, 0, 1, v55);
        }

        return (*(v53 + 8))(v26, v52);
      }
    }

    else
    {
      v32 = v63;
      sub_100016588(v20, v63, &qword_1007821E8);
      v33 = (v32 + *(v13 + 48));
      v34 = *v33;
      v35 = v33[1];
      v36 = v33[2];
      v37 = v33[3];
      [v65 locationInView:v67];
      v39 = v38;
      v75.origin.x = v34;
      v75.origin.y = v35;
      v75.size.width = v36;
      v75.size.height = v37;
      if (CGRectGetMaxY(v75) >= v39)
      {
        sub_1000079B4(v32, &qword_1007821E8);
        sub_1000079B4(v24, &qword_1007821F0);
        v57 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        return (*(*(v57 - 8) + 56))(v66, 1, 1, v57);
      }

      else
      {
        sub_10000794C(v32, v60, &qword_1007821E8);
        v40 = v66;
        TTRUnadjustedIndexPath.init(_:)();
        sub_1000079B4(v32, &qword_1007821E8);
        sub_1000079B4(v24, &qword_1007821F0);
        v41 = enum case for TTRICollectionViewInsertAtIndexPathOption.after(_:);
        v42 = type metadata accessor for TTRICollectionViewInsertAtIndexPathOption();
        v43 = *(v42 - 8);
        (*(v43 + 104))(v40, v41, v42);
        return (*(v43 + 56))(v40, 0, 1, v42);
      }
    }
  }

  return result;
}

uint64_t sub_1003FCA9C@<X0>(void *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v9 = [a1 layoutAttributesForItemAtIndexPath:isa];

  if (v9)
  {
    v10 = sub_100058000(&qword_1007821E8);
    v11 = (a2 + *(v10 + 48));
    (*(v5 + 16))(a2, v7, v4);
    [v9 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    (*(v5 + 8))(v7, v4);
    *v11 = v13;
    v11[1] = v15;
    v11[2] = v17;
    v11[3] = v19;
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
    v21 = sub_100058000(&qword_1007821E8);
    return (*(*(v21 - 8) + 56))(a2, 1, 1, v21);
  }
}

void sub_1003FCCCC(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 layoutAttributesForSupplementaryElementOfKind:v4 atIndexPath:isa];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v14 = 0;
  }

  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  *(a2 + 32) = v6 == 0;
}

void sub_1003FCDB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v100 = a5;
  *&v99 = type metadata accessor for IndexPath();
  v10 = *(v99 - 8);
  v11 = __chkstk_darwin(v99);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v95 - v15;
  __chkstk_darwin(v14);
  v18 = &v95 - v17;
  v19 = *(v5 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
  if ([v19 numberOfItemsInSection:a4] >= 1)
  {
    if (a3)
    {
      if (a1 | a2)
      {
        IndexPath.init(item:section:)();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v21 = [v19 layoutAttributesForItemAtIndexPath:isa];

        v22 = v99;
        if (v21)
        {
          [v21 frame];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;

          v101.origin.x = v24;
          v101.origin.y = v26;
          v101.size.width = v28;
          v101.size.height = v30;
          MaxY = CGRectGetMaxY(v101);
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v33 = v32;
          v102.origin.x = v24;
          v102.origin.y = v26;
          v102.size.width = v28;
          v102.size.height = v30;
          MinX = CGRectGetMinX(v102);
          v103.origin.x = v24;
          v103.origin.y = v26;
          v103.size.width = v28;
          v103.size.height = v30;
          v104.size.width = CGRectGetWidth(v103);
          v104.size.height = 0.0;
          v104.origin.x = MinX;
          v104.origin.y = MaxY;
          v105 = CGRectInset(v104, 0.0, v33 * -0.5);
          size = v105.size;
          origin = v105.origin;
          v95 = *&v105.size.height;
          v96 = *&v105.origin.y;
          (*(v10 + 8))(v16, v22);
LABEL_14:
          *&v48 = size.width;
          *&v46 = origin.x;
          v47 = 0;
          *&v116.size.height = v95;
          v49 = v96;
          goto LABEL_15;
        }

        (*(v10 + 8))(v16, v99);
      }

      else
      {
        IndexPath.init(item:section:)();
        v79 = IndexPath._bridgeToObjectiveC()().super.isa;
        v80 = [v19 layoutAttributesForItemAtIndexPath:v79];

        v81 = v99;
        if (v80)
        {
          [v80 frame];
          v83 = v82;
          v85 = v84;
          v87 = v86;
          v89 = v88;

          v117.origin.x = v83;
          v117.origin.y = v85;
          v117.size.width = v87;
          v117.size.height = v89;
          MinY = CGRectGetMinY(v117);
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v92 = v91;
          v118.origin.x = v83;
          v118.origin.y = v85;
          v118.size.width = v87;
          v118.size.height = v89;
          v93 = CGRectGetMinX(v118);
          v119.origin.x = v83;
          v119.origin.y = v85;
          v119.size.width = v87;
          v119.size.height = v89;
          v120.size.width = CGRectGetWidth(v119);
          v120.size.height = 0.0;
          v120.origin.x = v93;
          v120.origin.y = MinY;
          v121 = CGRectInset(v120, 0.0, v92 * -0.5);
          size = v121.size;
          origin = v121.origin;
          v95 = *&v121.size.height;
          v96 = *&v121.origin.y;
          (*(v10 + 8))(v18, v81);
          goto LABEL_14;
        }

        (*(v10 + 8))(v18, v99);
      }
    }

    else
    {
      IndexPath.init(item:section:)();
      v50 = IndexPath._bridgeToObjectiveC()().super.isa;
      v51 = *(v10 + 8);
      v52 = v99;
      v51(v13, v99);
      v53 = [v19 layoutAttributesForItemAtIndexPath:v50];

      if (v53)
      {
        [v53 frame];
        v55 = v54;
        v57 = v56;
        v59 = v58;
        v61 = v60;

        IndexPath.init(item:section:)();
        v62 = IndexPath._bridgeToObjectiveC()().super.isa;
        v51(v13, v52);
        v63 = [v19 layoutAttributesForItemAtIndexPath:v62];

        if (v63)
        {
          [v63 frame];
          *&v99 = v64;
          v66 = v65;
          v68 = v67;
          v70 = v69;

          v111.origin.x = v55;
          v111.origin.y = v57;
          v111.size.width = v59;
          v111.size.height = v61;
          v71 = v59;
          v72 = v57;
          v73 = v55;
          v74 = CGRectGetMaxY(v111);
          *&v112.origin.x = v99;
          v112.origin.y = v66;
          v112.size.width = v68;
          v112.size.height = v70;
          v75 = (v74 + CGRectGetMinY(v112)) * 0.5;
          type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
          static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
          v77 = v76;
          v113.origin.x = v73;
          v113.origin.y = v72;
          v113.size.width = v71;
          v113.size.height = v61;
          v78 = CGRectGetMinX(v113);
          v114.origin.x = v73;
          v114.origin.y = v72;
          v114.size.width = v71;
          v114.size.height = v61;
          v115.size.width = CGRectGetWidth(v114);
          v115.size.height = 0.0;
          v115.origin.x = v78;
          v115.origin.y = v75;
          *&v46 = CGRectInset(v115, 0.0, v77 * -0.5);
          v47 = 0;
LABEL_15:
          *(&v48 + 1) = *&v116.size.height;
          goto LABEL_16;
        }
      }
    }

LABEL_19:
    v46 = 0uLL;
    v47 = 1;
    v48 = 0uLL;
    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_19;
  }

  v35 = UICollectionElementKindSectionHeader;
  IndexPath.init(item:section:)();
  v36 = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v13, v99);
  v37 = [v19 layoutAttributesForSupplementaryElementOfKind:v35 atIndexPath:v36];

  if (!v37)
  {
    goto LABEL_19;
  }

  [v37 frame];
  x = v106.origin.x;
  y = v106.origin.y;
  width = v106.size.width;
  height = v106.size.height;
  v42 = CGRectGetMaxY(v106);
  type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView();
  static TTRITreeViewMultiRowReorderingDropIndicatorView.preferredHeight.getter();
  v44 = v43;
  v107.origin.x = x;
  v107.origin.y = y;
  v107.size.width = width;
  v107.size.height = height;
  v45 = CGRectGetMinX(v107);
  v108.origin.x = x;
  v108.origin.y = y;
  v108.size.width = width;
  v108.size.height = height;
  v109.size.width = CGRectGetWidth(v108);
  v109.size.height = 0.0;
  v109.origin.x = v45;
  v109.origin.y = v42;
  v110 = CGRectInset(v109, 0.0, v44 * -0.5);
  origin = v110.origin;
  v99 = *&v110.origin.y;
  v96 = *&v110.size.height;
  size = v110.size;

  *&v48 = size.width;
  *&v46 = origin.x;
  v47 = 0;
  *(&v48 + 1) = v96;
  v49 = v99;
LABEL_16:
  *(&v46 + 1) = v49;
LABEL_20:
  v94 = v100;
  *v100 = v46;
  v94[1] = v48;
  *(v94 + 32) = v47;
}

uint64_t type metadata accessor for TTRIBoardColumnDragAndDropController()
{
  result = qword_100782100;
  if (!qword_100782100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003FD554()
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID();
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

uint64_t sub_1003FD600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003FD698, v7, v6);
}

uint64_t sub_1003FD698()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);

    [v2 locationInView:v4];
    [v4 updateInteractiveMovementTargetPosition:?];
  }

  v5 = *(v0 + 8);

  return v5();
}

id sub_1003FD76C()
{
  v1 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000079B4(v3, &unk_100771B10);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v9 = *(v0 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v11 = [v9 cellForItemAtIndexPath:isa];

    if (v11)
    {
      v12 = [v11 _visiblePathForBackgroundConfiguration];
      if (v12)
      {
        v13 = v12;
        v14 = [objc_allocWithZone(UIPreviewParameters) init];
        [v14 setVisiblePath:v13];
        v15 = [objc_allocWithZone(UITargetedDragPreview) initWithView:v11 parameters:v14];

        v11 = v14;
      }

      else
      {
        v15 = [objc_allocWithZone(UITargetedDragPreview) initWithView:v11];
      }

      (*(v5 + 8))(v7, v4);
      return v15;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
      return 0;
    }
  }
}

void sub_1003FE094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
    v7 = a1;
    a5();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1003FE2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRICollectionViewDragAndDropActivityTracker.dropSessionDidEnter(_:)();
  v10 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v10, v6);
  type metadata accessor for TTRIRemindersBoardDropContext(0);
  swift_allocObject();
  *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext) = sub_1005E3E10(v9, a2);
  swift_unknownObjectRetain();

  if ((sub_1003FE474(a3, a1) & 1) == 0)
  {
    v11 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
    if (v11)
    {
      [v11 removeFromSuperview];
    }
  }

  sub_100074E7C();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    UIViewController.endFirstResponderEditing()();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003FE474(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v48 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_100769520);
  __chkstk_darwin(v6 - 8);
  v8 = &v42 - v7;
  v9 = type metadata accessor for TTRUnadjustedIndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(a1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_rootView);
  result = [v47 window];
  if (!result)
  {
    return result;
  }

  v46 = v12;

  v18 = *(a1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (!v18)
  {
    return 0;
  }

  v43 = a1;
  v44 = v10;
  v45 = v9;
  v19 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  v20 = v49;
  swift_beginAccess();
  (*(v14 + 16))(v16, v20 + v19, v13);

  v21 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
  (*(v14 + 8))(v16, v13);
  if ((v21 & 1) == 0)
  {

    return 0;
  }

  v22 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
  swift_beginAccess();
  if ((*(v48 + 48))(v18 + v22, 1, v3))
  {

    (*(v44 + 56))(v8, 1, 1, v45);
LABEL_9:
    sub_1000079B4(v8, &qword_100769520);
    return 0;
  }

  sub_100401370(v18 + v22, v5, type metadata accessor for TTRIRemindersBoardDropProposal);
  sub_1005E322C(v8);
  sub_100401310(v5, type metadata accessor for TTRIRemindersBoardDropProposal);
  v24 = v44;
  v23 = v45;
  if ((*(v44 + 48))(v8, 1, v45) == 1)
  {

    goto LABEL_9;
  }

  v25 = v46;
  (*(v24 + 32))(v46, v8, v23);
  v26 = v47;
  sub_1003FE9D8(v47, v49, v50);
  if (v51)
  {

    (*(v24 + 8))(v25, v23);
    return 0;
  }

  v27 = *v50;
  v28 = *&v50[1];
  v29 = *&v50[2];
  v30 = *&v50[3];
  v31 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView;
  v32 = v43;
  v33 = *(v43 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  if (v33)
  {
    v34 = *(v43 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  }

  else
  {
    v35 = [objc_allocWithZone(type metadata accessor for TTRITreeViewMultiRowReorderingDropIndicatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v36 = *(v32 + v31);
    *(v32 + v31) = v35;
    v34 = v35;

    v33 = 0;
  }

  v37 = v34;
  v38 = v33;
  v39 = [v37 superview];
  v40 = &selRef_addSubview_;
  if (v39)
  {
    v41 = v39;

    if (v41 == v26)
    {
      v40 = &selRef_bringSubviewToFront_;
    }
  }

  [v26 *v40];
  [v37 setFrame:{v27, v28, v29, v30}];

  (*(v24 + 8))(v46, v23);
  return 1;
}

void sub_1003FE9D8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRUnadjustedIndexPath.indexPath.getter();
  v10 = IndexPath.section.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  TTRUnadjustedIndexPath.indexPath.getter();
  v12 = IndexPath.item.getter();
  v11(v9, v6);
  if (!v12)
  {
    v13 = 0;
    goto LABEL_5;
  }

  if ([*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) numberOfItemsInSection:v10] < v12)
  {
    v12 = 0;
    v13 = 1;
LABEL_5:
    v14 = 1;
    goto LABEL_8;
  }

  v13 = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    return;
  }

  v14 = 0;
LABEL_8:
  sub_1003FCDB0(v13, v12, v14, v10, &v21);
  v16 = *(&v21 + 1);
  v15 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  if ((v24 & 1) == 0)
  {
    [*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) convertRect:a1 toCoordinateSpace:{v21, v22, v23}];
    v19 = 0;
  }

  *a3 = v15;
  *(a3 + 8) = v16;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
}

uint64_t sub_1003FEB9C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&unk_10076FE30);
  __chkstk_darwin(v10 - 8);
  v32 = v30 - v11;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
  if (v17)
  {
    [v17 removeFromSuperview];
  }

  (*(v13 + 16))(v16, a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_coordinatorID, v12, v14);
  v18 = *(a3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (v18)
  {
    v30[1] = a3;
    v31 = a2;
    v19 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    (*(v7 + 16))(v9, &a1[v19], v6);

    v20 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    (*(v7 + 8))(v9, v6);
    if (v20)
    {
      v21 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
      swift_beginAccess();
      v22 = v18 + v21;
      v23 = v32;
      sub_10000794C(v22, v32, &unk_10076FE30);

      a2 = v31;
      goto LABEL_8;
    }

    a2 = v31;
  }

  v24 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v23 = v32;
  (*(*(v24 - 8) + 56))(v32, 1, 1, v24);
LABEL_8:
  type metadata accessor for TTRIRemindersBoardDropCommitCoordinator(0);
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dropCoordinator) = a2;
  (*(v13 + 32))(v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_dragAndDropCoordinatorID, v16, v12);
  v26 = (v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_column);
  *v26 = a1;
  v26[1] = &off_1007266F8;
  sub_100016588(v23, v25 + OBJC_IVAR____TtC9Reminders39TTRIRemindersBoardDropCommitCoordinator_lastDropProposal, &unk_10076FE30);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  v28 = a1;
  if (!Strong)
  {
  }

  sub_100486448(v25);

  return swift_unknownObjectRelease();
}

void sub_1003FEF68(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5, uint64_t a6)
{
  v57 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo(0);
  __chkstk_darwin(v57);
  v55 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source(0);
  v49 = *(v52 - 8);
  __chkstk_darwin(v52);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v16 = *(v15 - 8);
  v53 = v15;
  v54 = v16;
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a6;
  v51 = OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext;
  if (!*(a6 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext) || (*&v50 = a4, v19 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID, swift_beginAccess(), v20 = a1, v21 = v54, v22 = a2 + v19, v23 = v53, (*(v54 + 16))(v18, v22, v53), sub_1001E66F0(), , v24 = dispatch thunk of static Equatable.== infix(_:_:)(), , v25 = v21, a1 = v20, v26 = v23, a4 = v50, (*(v25 + 8))(v18, v26), (v24 & 1) != 0))
  {
    if (qword_100766EA8 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100003E30(v27, qword_1007693C8);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v58 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_100004060(a3, a4, &v58);
      _os_log_impl(&_mh_execute_header, v28, v29, "TTRIRemindersBoardDragAndDropCoordinator: session ended - %s", v30, 0xCu);
      sub_100004758(v31);
    }

    v32 = v56;
    *(v56 + v51) = 0;

    v33 = *(v32 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
    if (v33)
    {
      [v33 removeFromSuperview];
    }

    sub_100074E7C();
    if (a5)
    {
      sub_100070D88(a1);
      v35 = v34;
      swift_unknownObjectRelease();
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = *(v49 + 80);
        v48 = v35;
        v38 = v35 + ((v37 + 32) & ~v37);
        v39 = *(v49 + 72);
        v40 = v55;
        v51 = v54 + 16;
        v50 = xmmword_10062D400;
        v49 = v39;
        do
        {
          sub_100401370(v38, v14, type metadata accessor for TTRIRemindersBoardDragItemSources.Source);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v41 = type metadata accessor for TTRIRemindersBoardDragItemSources.Source;
            v42 = v14;
          }

          else
          {
            sub_1004012A8(v14, v40, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);
            if (*(v40 + *(v57 + 28)))
            {
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v44 = *(v57 + 24);
                sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
                sub_100058000(&qword_100772760);
                v45 = v54;
                v46 = (*(v54 + 80) + 32) & ~*(v54 + 80);
                v47 = swift_allocObject();
                *(v47 + 16) = v50;
                (*(v45 + 16))(v47 + v46, &v55[v44], v53);
                v58 = v47;
                type metadata accessor for TTRRemindersBoardCollapsedStatesPresenterCapability();

                sub_100058000(&unk_1007821D0);
                v39 = v49;
                sub_10000E188(&unk_100784540, &unk_1007821D0);
                dispatch thunk of TTRRemindersBoardItemCollapsedStates.expand<A>(_:)();
                swift_unknownObjectRelease();
                v40 = v55;

                sub_100401310(v40, type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo);

                goto LABEL_14;
              }
            }

            v41 = type metadata accessor for TTRIRemindersBoardDragItemSources.ItemInfo;
            v42 = v40;
          }

          sub_100401310(v42, v41);
LABEL_14:
          v38 += v39;
          --v36;
        }

        while (v36);
      }
    }
  }
}

id sub_1003FF594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v76 = a3;
  v79 = type metadata accessor for TTRIRemindersBoardDropProposal(0);
  v77 = *(v79 - 8);
  __chkstk_darwin(v79);
  v75 = (&v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = sub_100058000(&unk_10076FE30);
  __chkstk_darwin(v11 - 8);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  __chkstk_darwin(v17);
  v19 = &v71 - v18;
  __chkstk_darwin(v20);
  v80 = &v71 - v21;
  v22 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a4;
  v26 = *(a4 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_internalActiveDropContext);
  if (v26)
  {
    v73 = a2;
    v74 = v10;
    v27 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
    swift_beginAccess();
    (*(v23 + 16))(v25, a1 + v27, v22);

    v28 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
    (*(v23 + 8))(v25, v22);
    if (v28)
    {
      v29 = a1;
      v71 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo;
      v30 = *(v26 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_debugInfo);
      v31 = OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastDropSessionDidUpdateInput;
      swift_beginAccess();

      v32 = v30 + v31;
      v33 = v76;
      sub_100019180(v76, v32, &unk_100771B10);
      swift_endAccess();

      v34 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection;
      v35 = *(v26 + OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_dropProposalHasBlockingTargetRedirection);
      v36 = v79;
      v72 = v29;
      if (v35)
      {
        v37 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
        swift_beginAccess();
        sub_10000794C(v26 + v37, v19, &unk_10076FE30);
        v38 = v77;
        v39 = *(v77 + 48);
        if (v39(v19, 1, v36) != 1)
        {
          v49 = v80;
          sub_1004012A8(v19, v80, type metadata accessor for TTRIRemindersBoardDropProposal);
          v48 = 1;
          (*(v38 + 56))(v49, 0, 1, v36);
          goto LABEL_18;
        }

        sub_1000079B4(v19, &unk_10076FE30);
        v33 = v76;
      }

      v40 = v80;
      sub_1000712DC(v26, v29, &off_1007266F8, v33, v80);
      sub_10000794C(v40, v13, &unk_10076FE30);
      v39 = *(v77 + 48);
      if (v39(v13, 1, v36) == 1)
      {
        sub_1000079B4(v13, &unk_10076FE30);
      }

      else
      {
        v46 = v75;
        sub_1004012A8(v13, v75, type metadata accessor for TTRIRemindersBoardDropProposal);
        v47 = sub_10040105C(v46, v29);
        sub_100401310(v46, type metadata accessor for TTRIRemindersBoardDropProposal);
        if (v47)
        {
          v48 = 1;
LABEL_18:
          v50 = OBJC_IVAR____TtC9Reminders29TTRIRemindersBoardDropContext_lastDropProposal;
          swift_beginAccess();
          v51 = v80;
          sub_100019180(v80, v26 + v50, &unk_10076FE30);
          swift_endAccess();
          v52 = *(v26 + v34) ^ 1;
          *(v26 + v34) = v48;
          sub_10000794C(v51, v16, &unk_10076FE30);
          if (v39(v16, 1, v79) == 1)
          {
            sub_1000079B4(v16, &unk_10076FE30);
            v53 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
          }

          else
          {
            v53 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:*(v16 + 4) intent:sub_1005E3834()];
            sub_100401310(v16, type metadata accessor for TTRIRemindersBoardDropProposal);
          }

          v54 = v71;
          v55 = *(v26 + v71);
          v56 = v48 & v52;
          v57 = *(v55 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal);
          *(v55 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_lastReturnedProposal) = v53;

          v58 = v53;

          v59 = *(v26 + v54);
          v60 = v72;
          v61 = *(v72 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView);

          v62 = [v61 hasUncommittedUpdates];
          *(v59 + OBJC_IVAR____TtCC9Reminders29TTRIRemindersBoardDropContext9DebugInfo_collectionViewHasUncommittedUpdates) = v62;

          v63 = v78;
          if ((sub_1003FE474(v78, v60) & 1) == 0)
          {
            v64 = *(v63 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_multiRowReorderingDropIndicatorView);
            if (v64)
            {
              [v64 removeFromSuperview];
            }
          }

          sub_100074E7C();
          v65 = v74;
          if (v56)
          {
            v66 = type metadata accessor for TaskPriority();
            (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
            v67 = swift_allocObject();
            swift_unknownObjectWeakInit();
            type metadata accessor for MainActor();

            v68 = v73;
            swift_unknownObjectRetain();
            v69 = static MainActor.shared.getter();
            v70 = swift_allocObject();
            v70[2] = v69;
            v70[3] = &protocol witness table for MainActor;
            v70[4] = v67;
            v70[5] = v68;

            sub_10009E31C(0, 0, v65, &unk_10063E008, v70);

            sub_1000079B4(v80, &unk_10076FE30);
          }

          else
          {
            sub_1000079B4(v80, &unk_10076FE30);
          }

          return v58;
        }
      }

      v48 = 0;
      goto LABEL_18;
    }
  }

  if (qword_100766EA8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_100003E30(v41, qword_1007693C8);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&_mh_execute_header, v42, v43, "TTRIRemindersBoardDragAndDropCoordinator: missing activeDropContext", v44, 2u);
  }

  return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
}

void *sub_1003FFEA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v40 = a4;
  v38 = a3;
  v41 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  v37 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  v39 = a2;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000079B4(v13, &unk_10076BB50);
    return _swiftEmptyArrayStorage;
  }

  v21 = *(v15 + 32);
  v21(v17, v13, v14);
  v21(v20, v17, v14);
  v22 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
  swift_beginAccess();
  v23 = *(v15 + 16);
  v23(v10, a1 + v22, v14);
  v24 = v41;
  v25 = *(v41 + 20);
  v26 = type metadata accessor for IndexPath();
  (*(*(v26 - 8) + 16))(&v10[v25], v39, v26);
  v23(&v10[*(v24 + 24)], v20, v14);
  v27 = sub_1000765A0(v10);
  sub_100401310(v10, type metadata accessor for TTRIRemindersBoardDragItemInfo);
  if (!v27)
  {
    (*(v15 + 8))(v20, v14);
    return _swiftEmptyArrayStorage;
  }

  v39 = v14;
  if (v38)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100484754();
      v30 = v29;
      result = swift_unknownObjectRelease();
    }

    else
    {
      v30 = _swiftEmptyArrayStorage;
    }

    v31 = v37;
    v32 = 0;
    v33 = v30[2];
    do
    {
      if (v33 == v32)
      {

        goto LABEL_17;
      }

      if (v32 >= v30[2])
      {
        __break(1u);
        return result;
      }

      sub_100401370(v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v32++, v7, type metadata accessor for TTRIRemindersBoardDragItemInfo);
      v34 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();
      result = sub_100401310(v7, type metadata accessor for TTRIRemindersBoardDragItemInfo);
    }

    while ((v34 & 1) == 0);
    v35 = v30[2];

    if (v35 < 2)
    {
      goto LABEL_17;
    }

    *(v40 + OBJC_IVAR____TtC9Reminders40TTRIRemindersBoardDragAndDropCoordinator_shouldHandleNextRootViewDragInteraction) = 1;

    (*(v15 + 8))(v20, v39);
    return _swiftEmptyArrayStorage;
  }

LABEL_17:
  sub_100058000(&qword_10076B780);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10062D420;
  *(v36 + 32) = v27;
  (*(v15 + 8))(v20, v39);
  return v36;
}

void *sub_100400358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter())
  {
    if (qword_100766EA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003E30(v6, qword_1007693C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "TTRIRemindersBoardDragAndDropCoordinator: disallow starting a drag because there is an in-progress drag", v9, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {

    return sub_1003FFEA0(a1, a2, 1, a3);
  }
}

uint64_t sub_100400488(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_100782210);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v31 - v7);
  v9 = sub_100058000(&qword_100782220);
  __chkstk_darwin(v9);
  v11 = (&v31 - v10);
  v12 = sub_100058000(&qword_10076FE00);
  __chkstk_darwin(v12 - 8);
  v31 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  TTRICollectionViewDragAndDropActivityTracker.dragSessionWillBegin(_:)();
  swift_getObjectType();
  v20 = sub_100076064(a1, a2);
  if (v20[2] == 1)
  {
    sub_10000794C(v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)), v8, &unk_100782210);

    v21 = *(v6 + 48);
    v22 = *(v9 + 48);
    *v11 = *v8;
    sub_100016588(v8 + v21, v11 + v22, &qword_10076FE00);
    v23 = *v11;
    sub_100016588(v11 + *(v9 + 48), v19, &qword_10076FE00);
    sub_10000794C(v19, v16, &qword_10076FE00);
    v24 = v34;
    if ((*(v34 + 48))(v16, 1, v4) == 1)
    {
      sub_1000079B4(v19, &qword_10076FE00);

      v25 = v16;
      return sub_1000079B4(v25, &qword_10076FE00);
    }

    v27 = v32;
    sub_1004012A8(v16, v32, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = *(v4 + 28);
      sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24));
      if (sub_10013B49C(v27 + v29))
      {
        *(v27 + *(v4 + 32)) = 1;
        v30 = v31;
        sub_100401370(v27, v31, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        (*(v24 + 56))(v30, 0, 1, v4);
        sub_10007093C(v30);
        swift_unknownObjectRelease();

        sub_1000079B4(v30, &qword_10076FE00);
        sub_100401310(v27, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
        v25 = v19;
        return sub_1000079B4(v25, &qword_10076FE00);
      }

      swift_unknownObjectRelease();
    }

    sub_100401310(v27, type metadata accessor for TTRIRemindersBoardDragItemUserInfo);
    v25 = v19;
    return sub_1000079B4(v25, &qword_10076FE00);
  }
}

void *sub_100400968(void *a1, uint64_t a2)
{
  v45 = type metadata accessor for TTRIRemindersBoardDragItemInfo(0);
  __chkstk_darwin(v45);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10076BB50);
  __chkstk_darwin(v7 - 8);
  v46 = &v39 - v8;
  v9 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100058000(&unk_100782210);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - v15;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = v6;
    v42 = a2;
    v40 = v12;
    v43 = v10;
    v44 = v9;
    v18 = Strong;
    swift_getObjectType();
    v47 = v18;
    result = sub_100076064(a1, v18);
    v20 = result;
    v21 = result[2];
    if (v21)
    {
      v22 = 0;
      while (1)
      {
        if (v22 >= v20[2])
        {
          __break(1u);
          return result;
        }

        sub_10000794C(v20 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v16, &unk_100782210);
        v23 = *(v13 + 48);
        v24 = type metadata accessor for TTRIRemindersBoardDragItemUserInfo(0);
        if ((*(*(v24 - 8) + 48))(&v16[v23], 1, v24) != 1)
        {
          break;
        }

        ++v22;
        result = sub_1000079B4(v16, &unk_100782210);
        if (v21 == v22)
        {
          goto LABEL_7;
        }
      }

      sub_1000079B4(v16, &unk_100782210);
      v25 = v2;
      v26 = v46;
      v27 = v42;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();
      v29 = v43;
      v28 = v44;
      if ((*(v43 + 48))(v26, 1, v44) == 1)
      {
        sub_1000079B4(v26, &unk_10076BB50);
      }

      else
      {
        v30 = v40;
        (*(v29 + 32))(v40, v26, v28);
        v31 = OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_columnID;
        swift_beginAccess();
        v32 = *(v29 + 16);
        v33 = v41;
        v32(v41, v25 + v31, v28);
        v34 = v45;
        v35 = *(v45 + 20);
        v36 = type metadata accessor for IndexPath();
        (*(*(v36 - 8) + 16))(v33 + v35, v27, v36);
        v32((v33 + *(v34 + 24)), v30, v28);
        v37 = sub_1000765A0(v33);
        sub_100401310(v33, type metadata accessor for TTRIRemindersBoardDragItemInfo);
        if (v37)
        {
          sub_100058000(&qword_10076B780);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_10062D420;
          *(v38 + 32) = v37;
          swift_unknownObjectRelease();
          (*(v29 + 8))(v30, v28);
          return v38;
        }

        (*(v29 + 8))(v30, v28);
      }

      swift_unknownObjectRelease();
    }

    else
    {
LABEL_7:
      swift_unknownObjectRelease();
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100400E5C(void *a1)
{
  v2 = [a1 items];
  sub_1000776A8();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if ((TTRICollectionViewDragAndDropActivityTracker.hasActiveDrag.getter() & 1) != 0 && (sub_100070D88(a1), v6 = sub_1005D1850(v5), , swift_unknownObjectRelease(), !v6))
    {
      if (qword_100766EA8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100003E30(v12, qword_1007693C8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "TTRIRemindersBoardDragAndDropCoordinator: reject external drop session because there is an in-progress local drag", v15, 2u);
      }
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v8 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 24);
        v9 = *(Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter + 32);
        sub_10000C36C((Strong + OBJC_IVAR____TtC9Reminders36TTRIRemindersBoardMainViewController_presenter), v8);
        v10 = (*(*(v9 + 8) + 560))(a1, v8);
        swift_unknownObjectRelease();
        return v10 & 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10040105C(void *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v7 = *(v5 + 16);
  v8 = *(v4 + 16);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v8 + result;
    if (!__OFADD__(v8, result))
    {
      goto LABEL_3;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v7)
  {
    v11 = __OFADD__(v7, v10);
    v12 = v7 + v10;
    if (!v11)
    {
      if (v12 != 1)
      {
        return 0;
      }

      goto LABEL_6;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_6:
  if (*(v5 + 16) != 1 || *(v4 + 16))
  {
LABEL_8:
    v13 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:a1[4] intent:sub_1005E3834()];
    v14 = [v13 intent];

    if (v14 == 1)
    {
      return [*(a2 + OBJC_IVAR____TtC9Reminders36TTRIBoardColumnDragAndDropController_collectionView) hasUncommittedUpdates] ^ 1;
    }

    return 0;
  }

  if (v6 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004011A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_1003FD600(a1, v4, v5, v7, v6);
}

uint64_t sub_1004012A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100401310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100401370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TTRIRemindersListRecentlyDeletedDisclaimerCell()
{
  result = qword_100782230;
  if (!qword_100782230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100401474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v27[1] = a2;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(UILabel) init];
  static TTRLocalizableStrings.RecentlyDeletedList.disclaimerString.getter();
  v13 = String._bridgeToObjectiveC()();

  [v12 setText:v13];

  sub_100003540(0, &qword_100771DF0);
  v14 = static UIFont.roundedBodyFont.getter();
  [v12 setFont:v14];

  v15 = [objc_opt_self() secondaryLabelColor];
  [v12 setTextColor:v15];

  [v12 setAdjustsFontForContentSizeCategory:1];
  [v12 setNumberOfLines:0];
  v16 = v12;
  LODWORD(v17) = 1132068864;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];
  *&v4[qword_100782228] = v16;
  v18 = v16;
  if (a3)
  {
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
    v19 = 0;
  }

  v28.receiver = v4;
  v28.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v28, "initWithStyle:reuseIdentifier:", a1, v19);

  v21 = v20;
  v22 = TTRITableViewContainerCell.containerView.getter();
  [v22 setHorizontalAlignment:1];
  [v22 setVerticalAlignment:0];
  sub_100058000(&qword_10076B780);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10062D420;
  *(v23 + 32) = v16;
  sub_100003540(0, &qword_10076B020);
  v24 = v22;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 setArrangedSubviews:isa];

  (*(v9 + 104))(v11, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v8);
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v9 + 8))(v11, v8);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v21;
}

id sub_1004017D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100401474(a3, a4, v6);
}

Class sub_1004018D4(uint64_t a1)
{
  sub_100058000(&unk_100777760);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D400;
  v3 = *(a1 + qword_100782228);
  *(v2 + 56) = sub_100003540(0, &qword_100776820);
  *(v2 + 32) = v3;
  v4 = v3;
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

uint64_t type metadata accessor for TTRListDetailViewModel()
{
  result = qword_100782388;
  if (!qword_100782388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v100 = a2;
  v3 = type metadata accessor for TTRRemindersListListType();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v104 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v103 = &v83 - v7;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for TTRListDetailBadgeViewModel();
  v101 = *(v16 - 8);
  v102 = v16;
  v17 = __chkstk_darwin(v16);
  v99 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v106 = &v83 - v19;
  v20 = [a1 displayName];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v95 = v22;
  v96 = v21;

  v23 = [a1 appearanceContext];
  v24 = v23;
  if (v23)
  {
  }

  v94 = v24;
  *v15 = a1;
  v25 = *(v13 + 104);
  v93 = enum case for TTRListOrCustomSmartListChangeItem.list(_:);
  v97 = v13 + 104;
  v92 = v25;
  v25(v15);
  v26 = a1;
  TTRListDetailBadgeViewModel.init(listOrCustomSmartListChangeItem:)();
  v91 = [v26 isShared];
  v27 = [v26 accountCapabilities];
  v105 = [v27 supportsCustomSmartLists];

  v28 = [v26 groceryContextChangeItem];
  v98 = v12;
  if (!v28)
  {
    goto LABEL_8;
  }

  v29 = v28;
  if (![v28 shouldCategorizeGroceryItems])
  {

LABEL_8:
    v32 = [objc_opt_self() daemonUserDefaults];
    v33 = [v32 preferredLocalizations];

    if (v33)
    {
      v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v34 + 16))
      {

        goto LABEL_14;
      }
    }

    static Locale.current.getter();
    Locale.identifier.getter();
LABEL_13:
    (*(v9 + 8))(v11, v8);
    goto LABEL_14;
  }

  v30 = [v29 groceryLocaleID];
  if (!v30)
  {
    v80 = [objc_opt_self() daemonUserDefaults];
    v81 = [v80 preferredLocalizations];

    if (v81)
    {
      countAndFlagsBits = v4;
      v82 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v82 + 16))
      {

        v4 = countAndFlagsBits;
        goto LABEL_14;
      }

      v4 = countAndFlagsBits;
    }

    static Locale.current.getter();
    Locale.identifier.getter();

    goto LABEL_13;
  }

  v31 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_14:
  type metadata accessor for REMGroceryDummyModel();
  v35 = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  v36 = [v26 accountCapabilities];
  v37 = [v36 supportsGroceriesList];

  v38 = v37 & v35;
  v39._countAndFlagsBits = 0x666E49207473694CLL;
  v40._object = 0x8000000100685AC0;
  v39._object = 0xE90000000000006FLL;
  v41._countAndFlagsBits = 0xD000000000000020;
  v41._object = 0x8000000100685AE0;
  v40._countAndFlagsBits = 0xD00000000000001BLL;
  v42 = TTRLocalizedString(_:value:comment:)(v40, v39, v41);
  countAndFlagsBits = v42._countAndFlagsBits;
  object = v42._object;
  v43._countAndFlagsBits = 0x6D614E207473694CLL;
  v44._countAndFlagsBits = 0xD000000000000026;
  v44._object = 0x800000010067E940;
  v43._object = 0xE900000000000065;
  v45 = TTRLocalizedString(_:comment:)(v43, v44);
  v88 = v45._countAndFlagsBits;
  v87 = v45._object;
  v46 = [v26 groceryContextChangeItem];
  if (v46 && (v47 = v46, v48 = [v46 shouldCategorizeGroceryItems], v47, (v48 & 1) != 0))
  {
    v49 = &enum case for TTRRemindersListListType.groceries(_:);
  }

  else
  {
    v49 = &enum case for TTRRemindersListListType.standard(_:);
  }

  v50 = v103;
  v51 = v4;
  (*(v4 + 104))(v103, *v49, v3);
  v52 = v94;
  v53 = v3;
  if (v38)
  {
    v54._countAndFlagsBits = 0x707954207473694CLL;
    v55._object = 0x8000000100685B10;
    v56._countAndFlagsBits = 0xD000000000000020;
    v56._object = 0x8000000100685B30;
    v55._countAndFlagsBits = 0xD00000000000001BLL;
    v54._object = 0xE900000000000065;
    v57 = TTRLocalizedString(_:value:comment:)(v55, v54, v56);
    v103 = v57._countAndFlagsBits;
    v86 = v57._object;
  }

  else
  {
    v103 = 0;
    v86 = 0;
  }

  LODWORD(v94) = v52 != 0;
  v84 = v38 ^ 1;
  v91 = v105 & (v91 ^ 1);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  v85 = v38;
  *v15 = v26;
  v92(v15, v93, v98);
  v58 = type metadata accessor for TTRUserDefaults();
  v59 = v26;
  v60 = static TTRUserDefaults.appUserDefaults.getter();
  v108 = v58;
  v109 = &protocol witness table for TTRUserDefaults;
  v107 = v60;
  v61 = TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)();
  v98 = v61;

  v62 = v102;
  v63 = *(v101 + 32);
  v64 = v99;
  v63(v99, v106, v102);
  v65 = *(v51 + 32);
  v66 = v104;
  v65(v104, v50, v53);
  v67 = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  if (!v61)
  {
    v67 = 0;
  }

  v106 = v67;
  v68 = v100;
  v69 = v95;
  *v100 = v96;
  v68[1] = v69;
  v70 = type metadata accessor for TTRListDetailViewModel();
  v63(v68 + v70[5], v64, v62);
  *(v68 + v70[6]) = 0;
  *(v68 + v70[7]) = v84;
  *(v68 + v70[8]) = 1;
  *(v68 + v70[9]) = v94;
  *(v68 + v70[10]) = v91;
  *(v68 + v70[11]) = v105;
  *(v68 + v70[12]) = v85;
  v71 = (v68 + v70[13]);
  v72 = v86;
  *v71 = v103;
  v71[1] = v72;
  *(v68 + v70[14]) = 0;
  v73 = (v68 + v70[15]);
  v74 = object;
  *v73 = countAndFlagsBits;
  v73[1] = v74;
  v75 = (v68 + v70[16]);
  v76 = v87;
  *v75 = v88;
  v75[1] = v76;
  result = (v65)(v68 + v70[17], v66, v53);
  v78 = (v68 + v70[18]);
  v79 = v106;
  *v78 = v98;
  v78[1] = v79;
  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v88 = type metadata accessor for TTRRemindersListListType();
  v86 = *(v88 - 8);
  v4 = __chkstk_darwin(v88);
  v84 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v71 - v6;
  v8 = type metadata accessor for TTRListOrCustomSmartListChangeItem();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = type metadata accessor for TTRListDetailBadgeViewModel();
  v12 = *(v77 - 8);
  v13 = __chkstk_darwin(v77);
  v87 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v71 - v15;
  v89 = a1;
  sub_100003540(0, &qword_10076CAB8);
  v17 = protocol witness for TTRListProtocol.displayName.getter in conformance REMSmartListChangeItem();
  v82 = v18;
  v83 = v17;
  *v11 = a1;
  v19 = enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:);
  v21 = *(v9 + 104);
  v20 = v9 + 104;
  v78 = v8;
  v75 = v21;
  v21(v11, enum case for TTRListOrCustomSmartListChangeItem.customSmartList(_:), v8);
  v22 = a1;
  TTRListDetailBadgeViewModel.init(listOrCustomSmartListChangeItem:)();
  v23._countAndFlagsBits = 0xD000000000000011;
  v24._countAndFlagsBits = 0xD000000000000023;
  v24._object = 0x8000000100685B60;
  v23._object = 0x8000000100685B90;
  v25._countAndFlagsBits = 0xD000000000000028;
  v25._object = 0x8000000100685BB0;
  v26 = TTRLocalizedString(_:value:comment:)(v24, v23, v25);
  object = v26._object;
  countAndFlagsBits = v26._countAndFlagsBits;
  v27 = &selRef_layoutIfNeeded;
  v74 = v22;
  v28 = [v22 customContext];
  v85 = v7;
  if (v28)
  {
    LODWORD(v76) = v19;
    v29 = v28;
    v30 = REMSmartListCustomContextChangeItem.filter.getter();

    if (v30)
    {
      v31 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
      _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v31);
      v32 = objc_allocWithZone(NSAttributedString);
      v73 = v20;
      v33 = v12;
      v34 = v32;
      v35 = String._bridgeToObjectiveC()();
      v7 = v85;

      v36 = v34;
      v37 = v77;
      v38 = [v36 initWithString:v35];

      v79 = v38;
      v39 = v38;
      v12 = v33;
      v27 = &selRef_layoutIfNeeded;
    }

    else
    {
      v79 = 0;
      v37 = v77;
    }

    v19 = v76;
  }

  else
  {
    v79 = 0;
    v37 = v77;
  }

  v40._countAndFlagsBits = 0xD000000000000021;
  v41._countAndFlagsBits = 0x694C207472616D53;
  v41._object = 0xEF6F666E49207473;
  v40._object = 0x8000000100685BE0;
  v42._object = 0x8000000100685C10;
  v42._countAndFlagsBits = 0xD000000000000026;
  v43 = TTRLocalizedString(_:value:comment:)(v40, v41, v42);
  v76 = v43._object;
  v77 = v43._countAndFlagsBits;
  v44._countAndFlagsBits = 0x6D614E207473694CLL;
  v45._object = 0x800000010067E940;
  v44._object = 0xE900000000000065;
  v45._countAndFlagsBits = 0xD000000000000026;
  v46 = TTRLocalizedString(_:comment:)(v44, v45);
  v73 = v46._countAndFlagsBits;
  v72 = v46._object;
  v86[13](v7, enum case for TTRRemindersListListType.smartList(_:), v88);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  v48 = v74;
  v47 = v75;
  *v11 = v74;
  v47(v11, v19, v78);
  v49 = type metadata accessor for TTRUserDefaults();
  v50 = v48;
  v51 = static TTRUserDefaults.appUserDefaults.getter();
  v90 = v49;
  v91 = &protocol witness table for TTRUserDefaults;
  v89 = v51;
  v78 = TTRRemindersListDataModelSourceLayoutContext.__allocating_init(listOrSmartListChangeItem:userDefaults:)();
  (*(v12 + 16))(v87, v16, v37);
  v52 = [v50 v27[366]];
  if (v52)
  {
    v53 = v52;
    v75 = REMSmartListCustomContextChangeItem.filter.getter();

    v54 = v79;
    (*(v12 + 8))(v16, v37);
  }

  else
  {
    (*(v12 + 8))(v16, v37);

    v54 = v79;
    v75 = 0;
  }

  v55 = v86[4];
  v56 = v84;
  v57 = v88;
  v55(v84, v85, v88);
  v58 = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  v59 = v78;
  if (!v78)
  {
    v58 = 0;
  }

  v86 = v58;
  v60 = v82;
  *a2 = v83;
  *(a2 + 1) = v60;
  v61 = type metadata accessor for TTRListDetailViewModel();
  (*(v12 + 32))(&a2[v61[5]], v87, v37);
  *&a2[v61[6]] = v75;
  a2[v61[7]] = 1;
  a2[v61[8]] = 0;
  a2[v61[9]] = 1;
  a2[v61[10]] = 0;
  a2[v61[11]] = 0;
  a2[v61[12]] = 0;
  v62 = &a2[v61[13]];
  v63 = object;
  *v62 = countAndFlagsBits;
  v62[1] = v63;
  *&a2[v61[14]] = v54;
  v64 = &a2[v61[15]];
  v65 = v76;
  *v64 = v77;
  v64[1] = v65;
  v66 = &a2[v61[16]];
  v67 = v72;
  *v66 = v73;
  v66[1] = v67;
  result = (v55)(&a2[v61[17]], v56, v57);
  v69 = &a2[v61[18]];
  v70 = v86;
  *v69 = v59;
  v69[1] = v70;
  return result;
}

uint64_t TTRListDetailViewModel.init(changeItem:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&qword_100782320);
  __chkstk_darwin(v4 - 8);
  v89 = &v73 - v5;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRListDetailBadgeViewModel();
  v87 = *(v10 - 8);
  v88 = v10;
  __chkstk_darwin(v10);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 40);
  v84 = *(a1 + 48);
  v85 = v13;
  v14 = *(a1 + 24);

  v15 = [v14 capabilities];
  v83 = [v15 supportsListAppearance];

  swift_beginAccess();
  v16 = *(a1 + 72);
  v91 = type metadata accessor for TTRListDetailCreationChangeItem(0);
  v92 = sub_100405794(&qword_10076EAB8, type metadata accessor for TTRListDetailCreationChangeItem);
  v90 = a1;

  v86 = v12;
  TTRListDetailBadgeViewModel.init(listProtocol:)();
  type metadata accessor for REMGroceryDummyModel();
  static Locale.current.getter();
  Locale.identifier.getter();
  (*(v7 + 8))(v9, v6);
  LODWORD(v9) = static REMGroceryDummyModel.isSupported(localeIdentifier:)();

  v17 = [*(a1 + 24) capabilities];
  v18 = [v17 supportsCustomSmartLists];

  v19 = [*(a1 + 24) capabilities];
  LODWORD(v15) = [v19 supportsGroceriesList];

  v81 = v15 & v9;
  v82 = v18;
  if ((v15 & v9) != 1)
  {
    v31._countAndFlagsBits = 0xD000000000000014;
    v32._countAndFlagsBits = 0xD000000000000026;
    v32._object = 0x8000000100685C40;
    v31._object = 0x8000000100685C70;
    v33._countAndFlagsBits = 0xD00000000000002BLL;
    v33._object = 0x8000000100685C90;
    v34 = TTRLocalizedString(_:value:comment:)(v32, v31, v33);
    countAndFlagsBits = v34._countAndFlagsBits;
    object = v34._object;
    v35 = *(a1 + 72);
    if (v35)
    {
      v36 = v35;
      v37 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
      _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v37);
      v38 = objc_allocWithZone(NSAttributedString);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v38 initWithString:v39];
    }

    else
    {
      v41._countAndFlagsBits = 0xD000000000000029;
      v41._object = 0x800000010067E6D0;
      v42._countAndFlagsBits = 0xD000000000000026;
      v42._object = 0x800000010067E700;
      v43._countAndFlagsBits = 0xD00000000000002ELL;
      v43._object = 0x800000010067E730;
      TTRLocalizedString(_:value:comment:)(v41, v42, v43);
      v44 = objc_allocWithZone(NSAttributedString);
      v39 = String._bridgeToObjectiveC()();

      v40 = [v44 initWithString:v39];
    }

    v24 = v40;
    v78 = v18 ^ 1;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_8:
    v29 = 0xD00000000000001ALL;
    v25 = 0x7473694C2077654ELL;
    v27 = 0x8000000100682BE0;
    v28 = 0x8000000100682C00;
    v26 = 0xE800000000000000;
    v30 = 0xD00000000000001ALL;
    goto LABEL_9;
  }

  v20._countAndFlagsBits = 0xD00000000000001BLL;
  v21._countAndFlagsBits = 0x707954207473694CLL;
  v20._object = 0x8000000100685B10;
  v22._object = 0x8000000100685B30;
  v21._object = 0xE900000000000065;
  v22._countAndFlagsBits = 0xD000000000000020;
  v23 = TTRLocalizedString(_:value:comment:)(v20, v21, v22);
  countAndFlagsBits = v23._countAndFlagsBits;
  object = v23._object;
  v24 = 0;
  v78 = 0;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  v25 = 0x72616D532077654ELL;
  v26 = 0xEE007473694C2074;
  v27 = 0x8000000100685CC0;
  v28 = 0x8000000100685CF0;
  v29 = 0xD000000000000020;
  v30 = 0xD000000000000020;
LABEL_9:
  v45 = TTRLocalizedString(_:value:comment:)(*&v29, *&v25, *&v30);
  v77 = v45._countAndFlagsBits;
  v76 = v45._object;
  v46 = v16 == 0;
  v47._countAndFlagsBits = 0x6D614E207473694CLL;
  v48._countAndFlagsBits = 0xD000000000000026;
  v48._object = 0x800000010067E940;
  v47._object = 0xE900000000000065;
  v49 = TTRLocalizedString(_:comment:)(v47, v48);
  v75 = v49._countAndFlagsBits;
  v74 = v49._object;
  v50 = OBJC_IVAR____TtC9Reminders31TTRListDetailCreationChangeItem_listType;
  swift_beginAccess();
  v51 = type metadata accessor for TTRListDetailViewModel();
  v52 = v51[17];
  v53 = type metadata accessor for TTRRemindersListListType();
  (*(*(v53 - 8) + 16))(&a2[v52], a1 + v50, v53);
  sub_100058000(&qword_100782328);
  v54 = type metadata accessor for TTRRemindersListLayout();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D400;
  (*(v55 + 104))(v57 + v56, enum case for TTRRemindersListLayout.list(_:), v54);
  sub_1004044D8(v57);
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v58 = type metadata accessor for TTRUserDefaults();
  v59 = static TTRUserDefaults.appUserDefaults.getter();
  v91 = v58;
  v92 = &protocol witness table for TTRUserDefaults;
  v90 = v59;
  v60 = type metadata accessor for TTRUserDefaults.RemindersListLayoutKey();
  (*(*(v60 - 8) + 56))(v89, 1, 1, v60);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  swift_allocObject();
  v61 = TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)();

  v62 = *(a1 + 72);
  v63 = v62;

  v64 = v84;
  *a2 = v85;
  *(a2 + 1) = v64;
  result = (*(v87 + 32))(&a2[v51[5]], v86, v88);
  *&a2[v51[6]] = v62;
  a2[v51[7]] = v78;
  a2[v51[8]] = v46;
  a2[v51[9]] = v83;
  a2[v51[10]] = 0;
  a2[v51[11]] = v82;
  a2[v51[12]] = v81;
  v66 = &a2[v51[13]];
  v67 = object;
  *v66 = countAndFlagsBits;
  v66[1] = v67;
  *&a2[v51[14]] = v24;
  v68 = &a2[v51[15]];
  v69 = v76;
  *v68 = v77;
  v68[1] = v69;
  v70 = &a2[v51[16]];
  v71 = v74;
  *v70 = v75;
  v70[1] = v71;
  v72 = &a2[v51[18]];
  *v72 = v61;
  v72[1] = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
  return result;
}

void TTRListDetailViewModel.init(changeItem:)(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100058000(&qword_100782320);
  __chkstk_darwin(v4 - 8);
  v6 = &v36 - v5;
  v7 = [a1 name];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v9;
  v40 = v8;

  v42 = sub_100003540(0, &qword_10076EAC0);
  v43 = &protocol witness table for REMTemplateChangeItem;
  v41 = a1;
  v10 = type metadata accessor for TTRListDetailViewModel();
  v11 = a1;
  TTRListDetailBadgeViewModel.init(listProtocol:)();
  v12._countAndFlagsBits = 0x6574616C706D6554;
  v12._object = 0xED00006F666E4920;
  v13._object = 0x8000000100685D20;
  v14._countAndFlagsBits = 0xD000000000000024;
  v14._object = 0x8000000100685D40;
  v13._countAndFlagsBits = 0xD00000000000001FLL;
  v15 = TTRLocalizedString(_:value:comment:)(v13, v12, v14);
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;
  v16 = static TTRLocalizableStrings.Templates.namePlaceholderText.getter();
  v36 = v17;
  v18 = v10[17];
  v19 = enum case for TTRRemindersListListType.standard(_:);
  v20 = type metadata accessor for TTRRemindersListListType();
  (*(*(v20 - 8) + 104))(&a2[v18], v19, v20);
  sub_100058000(&qword_100782328);
  v21 = type metadata accessor for TTRRemindersListLayout();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10062D400;
  (*(v22 + 104))(v24 + v23, enum case for TTRRemindersListLayout.list(_:), v21);
  sub_1004044D8(v24);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v21);
  swift_deallocClassInstance();
  v25 = type metadata accessor for TTRUserDefaults();
  v26 = static TTRUserDefaults.appUserDefaults.getter();
  v42 = v25;
  v43 = &protocol witness table for TTRUserDefaults;
  v41 = v26;
  v27 = type metadata accessor for TTRUserDefaults.RemindersListLayoutKey();
  (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
  type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
  swift_allocObject();
  v28 = TTRRemindersListDataModelSourceLayoutContext.init(supportedLayouts:userDefaults:userDefaultsKey:)();

  v29 = v39;
  *a2 = v40;
  *(a2 + 1) = v29;
  *&a2[v10[6]] = 0;
  a2[v10[7]] = 1;
  a2[v10[8]] = 1;
  a2[v10[9]] = 1;
  a2[v10[10]] = 0;
  a2[v10[11]] = 0;
  a2[v10[12]] = 0;
  v30 = &a2[v10[13]];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&a2[v10[14]] = 0;
  v31 = &a2[v10[15]];
  v32 = object;
  *v31 = countAndFlagsBits;
  v31[1] = v32;
  v33 = &a2[v10[16]];
  v34 = v36;
  *v33 = v16;
  v33[1] = v34;
  v35 = &a2[v10[18]];
  *v35 = v28;
  v35[1] = &protocol witness table for TTRRemindersListDataModelSourceLayoutContext;
}

BOOL TTRListDetailViewModel.canSave.getter()
{
  v1 = v0[1];
  v2 = *v0 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t TTRSmartListFilterEditorViewModel.ListData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TTRListDetailViewModel.badge.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel() + 20);
  v4 = type metadata accessor for TTRListDetailBadgeViewModel();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *TTRListDetailViewModel.filter.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel() + 24));
  v2 = v1;
  return v1;
}

uint64_t TTRListDetailViewModel.filterDisclosureTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel() + 52));

  return v1;
}

void *TTRListDetailViewModel.filterDisclosureSubtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel() + 56));
  v2 = v1;
  return v1;
}

uint64_t TTRListDetailViewModel.dialogViewTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel() + 60));

  return v1;
}

uint64_t TTRListDetailViewModel.dialogViewTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRListDetailViewModel() + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRListDetailViewModel.placeholderText.getter()
{
  v1 = *(v0 + *(type metadata accessor for TTRListDetailViewModel() + 64));

  return v1;
}

uint64_t TTRListDetailViewModel.placeholderText.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for TTRListDetailViewModel() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t TTRListDetailViewModel.listType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel() + 68);
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRListDetailViewModel.listType.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRListDetailViewModel() + 68);
  v4 = type metadata accessor for TTRRemindersListListType();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void *sub_100403C3C(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100058000(&qword_100782400);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100405794(&qword_100782408, &type metadata accessor for Calendar.Component);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100405794(&qword_100782410, &type metadata accessor for Calendar.Component);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_100403F5C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_1007823F8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

unint64_t sub_10040423C(unint64_t result, uint64_t *a2)
{
  v2 = result;
  v3 = result >> 62;
  if (result >> 62)
  {
    v7 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v7;
    if (result)
    {
LABEL_3:
      sub_100058000(a2);
      result = static _SetStorage.allocate(capacity:)();
      v4 = result;
      v5 = v2 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v4 = &_swiftEmptySetSingleton;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if (!v3)
  {
LABEL_4:
    v6 = *(v5 + 16);
    if (!v6)
    {
      return v4;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = _CocoaArrayWrapper.endIndex.getter();
  v6 = result;
  if (!result)
  {
    return v4;
  }

LABEL_9:
  v8 = v4 + 56;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    while (1)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        break;
      }

      v11 = result;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v11 + 16));
      result = Hasher._finalize()();
      v12 = -1 << v4[32];
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *&v8[8 * (v13 >> 6)];
      v16 = 1 << v13;
      v17 = *(v4 + 6);
      if (((1 << v13) & v15) != 0)
      {
        v18 = ~v12;
        while (*(*(v17 + 8 * v13) + 16) != *(v11 + 16))
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = *&v8[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v9 == v6)
        {
          return v4;
        }
      }

      else
      {
LABEL_17:
        *&v8[8 * v14] = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v19 = *(v4 + 2);
        v10 = __OFADD__(v19, 1);
        v20 = v19 + 1;
        if (v10)
        {
          goto LABEL_31;
        }

        *(v4 + 2) = v20;
        if (v9 == v6)
        {
          return v4;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v21 = 0;
    v22 = v2 + 32;
    v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v21 != v23)
    {
      v26 = *(v22 + 8 * v21);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v26 + 16));
      result = Hasher._finalize()();
      v27 = -1 << v4[32];
      v28 = result & ~v27;
      v29 = v28 >> 6;
      v30 = *&v8[8 * (v28 >> 6)];
      v31 = 1 << v28;
      v32 = *(v4 + 6);
      if (((1 << v28) & v30) != 0)
      {
        v33 = ~v27;
        while (*(*(v32 + 8 * v28) + 16) != *(v26 + 16))
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = *&v8[8 * (v28 >> 6)];
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *&v8[8 * v29] = v31 | v30;
        *(v32 + 8 * v28) = v26;
        v24 = *(v4 + 2);
        v10 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v10)
        {
          goto LABEL_33;
        }

        *(v4 + 2) = v25;
      }

      if (++v21 == v6)
      {
        return v4;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_1004044D8(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListLayout();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_100058000(&qword_100782440);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_100405794(&unk_10076BAF0, &type metadata accessor for TTRRemindersListLayout);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_100405794(&qword_1007809E0, &type metadata accessor for TTRRemindersListLayout);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

char *initializeBufferWithCopyOfBuffer for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v33 = *a2;
    *v3 = *a2;
    v3 = (v33 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v5;
    v6 = a3[5];
    v9 = type metadata accessor for TTRListDetailBadgeViewModel();
    v10 = *(*(v9 - 8) + 16);

    v10(&v3[v6], &a2[v6], v9);
    v11 = a3[6];
    v12 = a3[7];
    v36 = *&a2[v11];
    *&v3[v11] = v36;
    v3[v12] = a2[v12];
    v13 = a3[9];
    v3[a3[8]] = a2[a3[8]];
    v3[v13] = a2[v13];
    v14 = a3[11];
    v3[a3[10]] = a2[a3[10]];
    v3[v14] = a2[v14];
    v15 = a3[13];
    v3[a3[12]] = a2[a3[12]];
    v16 = &v3[v15];
    v17 = &a2[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    v19 = a3[14];
    v20 = a3[15];
    v21 = *&a2[v19];
    *&v3[v19] = v21;
    v22 = &v3[v20];
    v23 = &a2[v20];
    v24 = *(v23 + 1);
    *v22 = *v23;
    *(v22 + 1) = v24;
    v25 = a3[16];
    v26 = a3[17];
    v27 = &v3[v25];
    v28 = &a2[v25];
    v29 = *(v28 + 1);
    *v27 = *v28;
    *(v27 + 1) = v29;
    v30 = type metadata accessor for TTRRemindersListListType();
    v35 = *(*(v30 - 8) + 16);
    v31 = v36;

    v32 = v21;

    v35(&v3[v26], &a2[v26], v30);
    *&v3[a3[18]] = *&a2[a3[18]];
    swift_unknownObjectRetain();
  }

  return v3;
}

uint64_t destroy for TTRListDetailViewModel(uint64_t a1, int *a2)
{

  v4 = a2[5];
  v5 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);

  v6 = a2[17];
  v7 = type metadata accessor for TTRRemindersListListType();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);

  return swift_unknownObjectRelease();
}

char *initializeWithCopy for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = type metadata accessor for TTRListDetailBadgeViewModel();
  v9 = *(*(v8 - 8) + 16);

  v9(&a1[v7], &a2[v7], v8);
  v10 = a3[6];
  v11 = a3[7];
  v34 = *&a2[v10];
  *&a1[v10] = v34;
  a1[v11] = a2[v11];
  v12 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v12] = a2[v12];
  v13 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v13] = a2[v13];
  v14 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = *(v16 + 1);
  *v15 = *v16;
  *(v15 + 1) = v17;
  v18 = a3[14];
  v19 = a3[15];
  v20 = *&a2[v18];
  *&a1[v18] = v20;
  v21 = &a1[v19];
  v22 = &a2[v19];
  v23 = *(v22 + 1);
  *v21 = *v22;
  *(v21 + 1) = v23;
  v24 = a3[16];
  v25 = a3[17];
  v26 = &a1[v24];
  v27 = &a2[v24];
  v28 = *(v27 + 1);
  *v26 = *v27;
  *(v26 + 1) = v28;
  v29 = type metadata accessor for TTRRemindersListListType();
  v33 = *(*(v29 - 8) + 16);
  v30 = v34;

  v31 = v20;

  v33(&a1[v25], &a2[v25], v29);
  *&a1[a3[18]] = *&a2[a3[18]];
  swift_unknownObjectRetain();
  return a1;
}

char *assignWithCopy for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v7 - 8) + 24))(&a1[v6], &a2[v6], v7);
  v8 = a3[6];
  v9 = *&a1[v8];
  v10 = *&a2[v8];
  *&a1[v8] = v10;
  v11 = v10;

  a1[a3[7]] = a2[a3[7]];
  a1[a3[8]] = a2[a3[8]];
  a1[a3[9]] = a2[a3[9]];
  a1[a3[10]] = a2[a3[10]];
  a1[a3[11]] = a2[a3[11]];
  a1[a3[12]] = a2[a3[12]];
  v12 = a3[13];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);

  v15 = a3[14];
  v16 = *&a1[v15];
  v17 = *&a2[v15];
  *&a1[v15] = v17;
  v18 = v17;

  v19 = a3[15];
  v20 = &a1[v19];
  v21 = &a2[v19];
  *v20 = *v21;
  *(v20 + 1) = *(v21 + 1);

  v22 = a3[16];
  v23 = &a1[v22];
  v24 = &a2[v22];
  *v23 = *v24;
  *(v23 + 1) = *(v24 + 1);

  v25 = a3[17];
  v26 = type metadata accessor for TTRRemindersListListType();
  (*(*(v26 - 8) + 24))(&a1[v25], &a2[v25], v26);
  v27 = a3[18];
  v28 = &a1[v27];
  v29 = &a2[v27];
  v30 = *(v29 + 1);
  *v28 = *v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(v28 + 1) = v30;
  return a1;
}

char *initializeWithTake for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  v8 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  a1[v8] = a2[v8];
  v9 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  a1[v9] = a2[v9];
  v10 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v10] = a2[v10];
  v11 = a3[13];
  a1[a3[12]] = a2[a3[12]];
  *&a1[v11] = *&a2[v11];
  v12 = a3[15];
  *&a1[a3[14]] = *&a2[a3[14]];
  *&a1[v12] = *&a2[v12];
  v13 = a3[17];
  *&a1[a3[16]] = *&a2[a3[16]];
  v14 = type metadata accessor for TTRRemindersListListType();
  (*(*(v14 - 8) + 32))(&a1[v13], &a2[v13], v14);
  *&a1[a3[18]] = *&a2[a3[18]];
  return a1;
}

char *assignWithTake for TTRListDetailViewModel(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = type metadata accessor for TTRListDetailBadgeViewModel();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  v9 = a3[6];
  v10 = *&a1[v9];
  *&a1[v9] = *&a2[v9];

  v11 = a3[8];
  a1[a3[7]] = a2[a3[7]];
  a1[v11] = a2[v11];
  v12 = a3[10];
  a1[a3[9]] = a2[a3[9]];
  a1[v12] = a2[v12];
  v13 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  a1[v13] = a2[v13];
  v14 = a3[13];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v18 = *v16;
  v17 = *(v16 + 1);
  *v15 = v18;
  *(v15 + 1) = v17;

  v19 = a3[14];
  v20 = *&a1[v19];
  *&a1[v19] = *&a2[v19];

  v21 = a3[15];
  v22 = &a1[v21];
  v23 = &a2[v21];
  v25 = *v23;
  v24 = *(v23 + 1);
  *v22 = v25;
  *(v22 + 1) = v24;

  v26 = a3[16];
  v27 = &a1[v26];
  v28 = &a2[v26];
  v30 = *v28;
  v29 = *(v28 + 1);
  *v27 = v30;
  *(v27 + 1) = v29;

  v31 = a3[17];
  v32 = type metadata accessor for TTRRemindersListListType();
  (*(*(v32 - 8) + 40))(&a1[v31], &a2[v31], v32);
  v33 = a3[18];
  v34 = &a1[v33];
  v35 = &a2[v33];
  v36 = *(v35 + 1);
  *v34 = *v35;
  swift_unknownObjectRelease();
  *(v34 + 1) = v36;
  return a1;
}

uint64_t sub_1004051A8()
{
  result = type metadata accessor for TTRListDetailBadgeViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListListType();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void *sub_1004052B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100058000(&qword_100782438);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void sub_1004054A4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100058000(&qword_100782428);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100003540(0, &qword_10076BA50);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100003540(0, &qword_10076BA50);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100405794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004057DC()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100782448);
  v1 = sub_100003E30(v0, qword_100782448);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1004058A4()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = sub_1003DFB40(*(*(v0 + 56) + 32));
    *(v0 + 48) = v1;
  }

  return v1;
}

void sub_10040590C(void *a1)
{
  v2 = v1;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003E30(v4, qword_100782448);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D3F0;
  strcpy((inited + 32), "participantID");
  *(inited + 46) = -4864;
  sub_100058000(&qword_10076DB18);
  *(inited + 48) = Optional.descriptionOrNil.getter();
  *(inited + 56) = v6;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x44497473696CLL;
  *(inited + 88) = 0xE600000000000000;
  v7 = [*(v1[7] + 32) objectID];
  *(inited + 120) = sub_100003540(0, &qword_10076BA50);
  *(inited + 96) = v7;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_100058000(&unk_10076BA70);
  swift_arrayDestroy();
  sub_10000FD44();

  v8 = v2[15];
  v9 = sub_100469610(a1[9], a1[10], a1[11], a1[12]);
  if (v9)
  {
    v10 = v9;
    sub_10000C36C(v2 + 9, v2[12]);
    v11 = *(v8 + 32);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 viewControllerForContact:v10];
  }

  else
  {
    v10 = sub_10046991C(a1);
    sub_10000C36C(v2 + 9, v2[12]);
    v15 = *(v8 + 32);
    v16 = objc_opt_self();
    v13 = v15;
    v14 = [v16 viewControllerForUnknownContact:v10];
  }

  v17 = v14;
  sub_100421E08(v17, v13);
}

void sub_100405BA0()
{
  v1 = v0;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782448);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v4 = v0[7];
  v5 = [*(v4 + 32) objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v5;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  v6 = [*(v4 + 32) account];
  v7 = [v6 daSupportsPhoneNumbers];

  v8 = [objc_allocWithZone(type metadata accessor for TTRIAddShareesViewController()) initWithAllowsPhoneNumbers:v7];
  if (v8)
  {
    v9 = v8;
    v10 = v8;
    v11 = [v10 navigationItem];
    v12 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"requestCancelAddingSharees"];
    [v11 setLeftBarButtonItem:v12];

    v13 = [v10 navigationItem];
    sub_100003540(0, &qword_10076B800);
    v14._object = 0x8000000100685EB0;
    v15._countAndFlagsBits = 6579265;
    v15._object = 0xE300000000000000;
    v14._countAndFlagsBits = 0xD000000000000029;
    TTRLocalizedString(_:comment:)(v15, v14);

    v16 = UIBarButtonItem.init(doneButtonWithCustomTitle:target:action:)();
    [v13 setRightBarButtonItem:{v16, v1}];

    v17 = v1[16];
    v1[16] = v9;
    v18 = v10;

    sub_10000C36C(v1 + 9, v1[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      [Strong pushViewController:v18 animated:1];
    }
  }
}

void sub_100405ED8(uint64_t *a1)
{
  v2 = v1;
  v16 = sub_1004058A4();
  sub_100103660(a1, v15);
  v4 = sub_100406714(&v16, a1);
  sub_1001036BC(a1);
  v5 = v16;
  v6 = *(v16 + 2);
  if (v4 > v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__OFADD__(v6, v4 - v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v4 > *(v5 + 3) >> 1)
  {
    if (v6 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = v6;
    }

    v5 = sub_100547808(isUniquelyReferenced_nonNull_native, v8, 1, v5);
    v16 = v5;
  }

  sub_1000FE2E4(v4, v6, 0);
  *(v1 + 48) = v5;

  if (*a1)
  {
    v9 = qword_1007672A0;
    v4 = *a1;
    if (v9 == -1)
    {
LABEL_12:
      v10 = type metadata accessor for Logger();
      sub_100003E30(v10, qword_100782448);
      sub_100058000(&unk_100775610);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10062D3F0;
      *(inited + 32) = 0x44497473696CLL;
      *(inited + 40) = 0xE600000000000000;
      v12 = [*(*(v2 + 56) + 32) objectID];
      v13 = sub_100003540(0, &qword_10076BA50);
      *(inited + 48) = v12;
      *(inited + 72) = v13;
      *(inited + 80) = 0x4449656572616873;
      *(inited + 120) = v13;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = v4;
      v14 = v4;
      sub_100008E04(inited);
      swift_setDeallocating();
      sub_100058000(&unk_10076BA70);
      swift_arrayDestroy();
      sub_10000FD44();

      sub_10041C880(v14, a1[7], a1[8]);

      return;
    }

LABEL_17:
    swift_once();
    goto LABEL_12;
  }
}

uint64_t sub_100406138()
{
  v1 = v0;
  if (qword_1007672A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003E30(v2, qword_100782448);
  sub_100058000(&unk_100775610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x44497473696CLL;
  *(inited + 40) = 0xE600000000000000;
  v4 = [*(v0[7] + 32) objectID];
  *(inited + 72) = sub_100003540(0, &qword_10076BA50);
  *(inited + 48) = v4;
  sub_100008E04(inited);
  swift_setDeallocating();
  sub_10011F2F8(inited + 32);
  sub_10000FD44();

  sub_10000C36C(v0 + 9, v0[12]);
  if (qword_1007672C8 != -1)
  {
    swift_once();
  }

  sub_100003E30(v2, qword_100782D00);
  sub_1003F99F4(0x616853207473694CLL, 0xEC000000676E6972);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = v1[5];
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v1, &off_100726830, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100406364()
{
  if (v0[16])
  {
    sub_10000C36C(v0 + 9, v0[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      v3 = [Strong popViewControllerAnimated:1];
    }

    v4 = v0[16];
    v0[16] = 0;
  }
}

void sub_100406414()
{
  v1 = v0;
  v2 = v0[16];
  if (v2)
  {
    v3 = *(v1[7] + 32);
    v4 = v2;
    v5 = sub_10007C458(v3, 1);

    sub_10041BDB8(v5);

    sub_10000C36C(v1 + 9, v1[12]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong popViewControllerAnimated:1];
    }

    v9 = v1[16];
    v1[16] = 0;
  }
}

uint64_t sub_10040651C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t sub_100406560()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);

  swift_unknownObjectRelease();
  sub_100004758(v0 + 72);

  return v0;
}

uint64_t sub_1004065B8()
{
  sub_100406560();

  return swift_deallocClassInstance();
}

void sub_100406610()
{
  v1 = sub_1003DFB40(*(*(v0 + 56) + 32));
  v2 = sub_1004058A4();
  v3 = sub_100126464(v1, v2);

  if (v3)
  {
  }

  else
  {
    *(v0 + 48) = v1;

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = [Strong tableView];
      if (v5)
      {
        v6 = v5;
        [v5 reloadData];
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_100406714(uint64_t result, uint64_t *a2)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = *a2;
  while (1)
  {
    v10 = *(v3 + v7 + 32);
    if (!v10)
    {
      if (!v9)
      {
        break;
      }

      goto LABEL_4;
    }

    if (v10 == v9)
    {
      break;
    }

LABEL_4:
    ++v8;
    v7 += 112;
    if (v4 == v8)
    {
      return *(*result + 16);
    }
  }

  if (v2)
  {
    return *(*result + 16);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    goto LABEL_33;
  }

  if (v11 == v4)
  {
    return v8;
  }

  v12 = v7 + 144;
  while (2)
  {
    if (v11 < v4)
    {
      v24 = (v3 + v12);
      v25 = *(v3 + v12);
      v26 = *a2;
      if (v25)
      {
        if (v25 != v26)
        {
LABEL_22:
          if (v11 != v8)
          {
            if (v8 >= v4)
            {
              goto LABEL_30;
            }

            v27 = 112 * v8;
            v28 = (v3 + 32 + 112 * v8);
            v29 = *v28;
            v30 = v28[2];
            v55 = v28[1];
            v56 = v30;
            v54 = v29;
            v31 = v28[3];
            v32 = v28[4];
            v33 = v28[5];
            *(v59 + 9) = *(v28 + 89);
            v58 = v32;
            v59[0] = v33;
            v57 = v31;
            v35 = v24[4];
            v34 = v24[5];
            v36 = v24[3];
            *(v65 + 9) = *(v24 + 89);
            v64 = v35;
            v65[0] = v34;
            v63 = v36;
            v37 = *v24;
            v38 = v24[2];
            v61 = v24[1];
            v62 = v38;
            v60 = v37;
            sub_100103660(&v54, v52);
            sub_100103660(&v60, v52);
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1003B2ED0(v3);
              v3 = result;
            }

            if (v8 >= *(v3 + 16))
            {
              goto LABEL_31;
            }

            v39 = (v3 + v27);
            v40 = *(v3 + v27 + 32);
            v41 = *(v3 + v27 + 64);
            v50[1] = *(v3 + v27 + 48);
            v50[2] = v41;
            v50[0] = v40;
            v42 = *(v3 + v27 + 80);
            v43 = *(v3 + v27 + 96);
            v44 = *(v3 + v27 + 112);
            *&v51[9] = *(v3 + v27 + 121);
            v50[4] = v43;
            *v51 = v44;
            v50[3] = v42;
            v46 = v64;
            v45 = v65[0];
            v47 = v63;
            *(v39 + 121) = *(v65 + 9);
            v39[6] = v46;
            v39[7] = v45;
            v39[5] = v47;
            v48 = v60;
            v49 = v62;
            v39[3] = v61;
            v39[4] = v49;
            v39[2] = v48;
            result = sub_1001036BC(v50);
            if (v11 >= *(v3 + 16))
            {
              goto LABEL_32;
            }

            v13 = (v3 + v12);
            v14 = *(v3 + v12);
            v15 = *(v3 + v12 + 32);
            v52[1] = *(v3 + v12 + 16);
            v52[2] = v15;
            v52[0] = v14;
            v16 = *(v3 + v12 + 48);
            v17 = *(v3 + v12 + 64);
            v18 = *(v3 + v12 + 80);
            *(v53 + 9) = *(v3 + v12 + 89);
            v52[4] = v17;
            v53[0] = v18;
            v52[3] = v16;
            v20 = v58;
            v19 = v59[0];
            v21 = v57;
            *(v13 + 89) = *(v59 + 9);
            v13[4] = v20;
            v13[5] = v19;
            v13[3] = v21;
            v22 = v54;
            v23 = v56;
            v13[1] = v55;
            v13[2] = v23;
            *v13 = v22;
            result = sub_1001036BC(v52);
            *v6 = v3;
          }

          ++v8;
        }
      }

      else if (v26)
      {
        goto LABEL_22;
      }

      ++v11;
      v4 = *(v3 + 16);
      v12 += 112;
      if (v11 == v4)
      {
        return v8;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

id sub_1004069B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PPTTestClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004069E8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  *(v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_segmentedControl) = 0;
  *(v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_palette) = 0;
  v4 = (v2 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);
  *v4 = 0;
  v4[1] = 0;
  v38 = v4;
  v5 = *(a1 + 16);

  v42 = v5;
  if (v5)
  {
    v6 = 0;
    v7 = (v3 + 64);
    v8 = &_swiftEmptyDictionarySingleton;
    v41 = v3;
    while (1)
    {
      if (v6 >= *(v3 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v12 = *(v7 - 4);
      v11 = *(v7 - 3);
      v13 = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = *v7;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v16 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v8;
      v18 = sub_100009044(v12, v11);
      v20 = v8[2];
      v21 = (v19 & 1) == 0;
      v22 = __OFADD__(v20, v21);
      v23 = v20 + v21;
      if (v22)
      {
        goto LABEL_21;
      }

      v24 = v19;
      if (v8[3] < v23)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v30 = v18;
      sub_1003AF8E0();
      v18 = v30;
      v8 = v44;
      if (v24)
      {
LABEL_3:
        v9 = (v8[7] + 56 * v18);
        v10 = v9[5];
        *v9 = v6;
        v9[1] = v12;
        v9[2] = v11;
        v9[3] = v13;
        v9[4] = v14;
        v9[5] = v16;
        v9[6] = 0;

        goto LABEL_4;
      }

LABEL_12:
      v8[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v8[6] + 16 * v18);
      *v26 = v12;
      v26[1] = v11;
      v27 = (v8[7] + 56 * v18);
      *v27 = v6;
      v27[1] = v12;
      v27[2] = v11;
      v27[3] = v13;
      v27[4] = v14;
      v27[5] = v16;
      v27[6] = 0;

      v28 = v8[2];
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (v22)
      {
        goto LABEL_22;
      }

      v8[2] = v29;
LABEL_4:
      ++v6;
      v7 += 5;
      v3 = v41;
      if (v42 == v6)
      {
        goto LABEL_17;
      }
    }

    sub_10054C540(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_100009044(v12, v11);
    if ((v24 & 1) != (v25 & 1))
    {
      goto LABEL_25;
    }

LABEL_11:
    v8 = v44;
    if (v24)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v8 = &_swiftEmptyDictionarySingleton;
LABEL_17:

  *&v40[OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID] = v8;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (*(v3 + 16) <= a2)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v31 = (v3 + 40 * a2);
    v32 = v31[4];
    v33 = v31[5];
    v34 = v31[8];

    v35 = v34;

    *v38 = v32;
    v38[1] = v33;

    v43.receiver = v40;
    v43.super_class = type metadata accessor for TTRISegmentedNavigationController();
    v36 = objc_msgSendSuper2(&v43, "initWithRootViewController:", v35);

    return v36;
  }

  return result;
}

uint64_t sub_100406D10()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID + 8);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_selectedTabID);
  v3 = OBJC_IVAR____TtC9Reminders33TTRISegmentedNavigationController_tabStateByID;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_100009044(v2, v1);
    v7 = v6;

    if (v7)
    {
      v8 = (*(v4 + 56) + 56 * v5);
      v10 = *v8;
      v9 = v8[1];
      v12 = v8[2];
      v11 = v8[3];
      v13 = v8[4];
      v14 = v8[5];

      v15 = v14;

      if (v12)
      {
        sub_10016B1B8(v10, v9, v12, v11, v13, v14);
        return v10;
      }

      v17 = v10;
      v18 = v9;
      v19 = v11;
      v20 = v13;
      v21 = v14;
      goto LABEL_8;
    }
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
LABEL_8:
  sub_10016B1B8(v17, v18, 0, v19, v20, v21);
  return 0;
}