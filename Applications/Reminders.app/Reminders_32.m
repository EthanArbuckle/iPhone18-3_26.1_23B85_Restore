uint64_t sub_10038BBA4(uint64_t isEscapingClosureAtFileLocation)
{
  sub_100058000(&qword_10076B920);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10062D3F0;
  v3 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView);
  *(v2 + 32) = v3;
  v4 = v3;
  *(v2 + 40) = sub_10037BD64();
  sub_100058000(&qword_100780A08);
  sub_100003540(0, &qword_10076B020);
  sub_10000E188(&qword_100788500, &qword_100780A08);
  v5 = Sequence.removingNils<A>()();

  v20[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 superview];
      v12 = [isEscapingClosureAtFileLocation view];
      if (v11)
      {
        if (v12)
        {
          v13 = v12;

          if (v11 == v13)
          {
            goto LABEL_17;
          }
        }

        else
        {
        }
      }

      else
      {
        if (!v12)
        {
LABEL_17:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }
      }

LABEL_6:
      ++v7;
      if (v10 == i)
      {
        v14 = v20[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    goto LABEL_29;
  }

  if (!*(v14 + 16))
  {
  }

  while (1)
  {
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = isEscapingClosureAtFileLocation;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_100390558;
    *(v17 + 24) = v16;
    v20[4] = sub_100026410;
    v20[5] = v17;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 1107296256;
    v20[2] = sub_100026440;
    v20[3] = &unk_100724060;
    v14 = _Block_copy(v20);
    v18 = isEscapingClosureAtFileLocation;

    [v15 performWithoutAnimation:v14];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_29:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
    }
  }

  return result;
}

void sub_10038BF60(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_14:
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

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = [a2 view];
    if (!v9)
    {
      break;
    }

    v10 = v9;
    [v9 bringSubviewToFront:v7];

    if (v8 == v4)
    {
      return;
    }
  }

  __break(1u);
}

void sub_10038C068()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100058000(&unk_1007809F8);
    TTRViewModelObserver.ValueChangeInfo.oldValue.getter();
    sub_10038C0E4(v2);
  }
}

void sub_10038C0E4(unsigned int a1)
{
  v2 = v1;
  if (*&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver])
  {

    TTRViewModelObserver.localValue.getter();

    if (v14 != 2)
    {
      if (a1 == 2 || ((v14 ^ a1) & 1) != 0)
      {
        v4 = [v1 navigationItem];
        v5 = [v4 scrollEdgeAppearance];

        if (v5)
        {
          v6 = [v5 copy];

          v7 = &selRef_configureWithDefaultBackground;
          if ((v14 & 1) == 0)
          {
            v7 = &selRef_configureWithTransparentBackground;
          }

          [v6 *v7];
          v8 = [v2 navigationItem];
          [v8 setScrollEdgeAppearance:v6];
        }
      }

      v9 = sub_10037BD64();
      if (v9)
      {
        if (a1 == 2 || (v14 & 0x100) >> 8 != ((a1 >> 8) & 1))
        {
          v10 = v9;
          v11 = [v9 standardAppearance];
          v12 = [v11 copy];

          v13 = &selRef_configureWithDefaultBackground;
          if ((v14 & 0x100) != 0)
          {
            v13 = &selRef_configureWithTransparentBackground;
          }

          [v12 *v13];
          [v10 setStandardAppearance:v12];
          [v10 setNeedsLayout];

          v9 = v12;
        }
      }
    }
  }
}

void sub_10038C2C8(char a1, char a2, void *a3)
{
  v6 = sub_10037BD64();
  if (v6)
  {
    v11 = v6;
    if (a2)
    {
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v11;
      *(v8 + 24) = a1 & 1;
      aBlock[4] = sub_1003901D8;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001047C;
      aBlock[3] = &unk_100723F20;
      v9 = _Block_copy(aBlock);
      v10 = v11;

      [v7 animateWithDuration:v9 animations:0.33];

      _Block_release(v9);
      return;
    }

    [v6 setHidden:a1 & 1];
  }

  else
  {
    v11 = [a3 navigationController];
    [v11 setToolbarHidden:a1 & 1 animated:a2 & 1];
  }
}

void sub_10038C454()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 view];
  if (!v10)
  {
    goto LABEL_54;
  }

  v11 = v10;
  [v10 setAccessibilityElements:0];

  v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listInfo;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v12], v6);
  LOBYTE(v12) = TTRRemindersListViewModel.ListInfo.hasDefaultNewReminderButton.getter();
  (*(v7 + 8))(v9, v6);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = [v1 isEditing] ^ 1;
  }

  v14 = sub_10037BD64();
  if (v14)
  {
    v15 = v14;
    if (([v14 isHidden] | v13))
    {
      goto LABEL_12;
    }

    v16 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v16], v2);
    LOBYTE(v16) = TTRRemindersListViewModel.EmptyListMessagingType.shouldUseUnavailableConfiguration.getter();
    (*(v3 + 8))(v5, v2);
    if ((v16 & 1) == 0)
    {
      goto LABEL_12;
    }

    v17 = [v1 view];
    if (!v17)
    {
      goto LABEL_55;
    }

    v18 = v17;
    v19 = [v17 accessibilityElements];

    if (v19)
    {
      v20 = v15;
      v15 = v19;
LABEL_11:

LABEL_12:
      return;
    }

    v21 = [objc_opt_self() defaultVoiceOverOptions];
    if (!v21)
    {
      goto LABEL_12;
    }

    v20 = v21;
    v22 = [v1 view];
    if (!v22)
    {
      goto LABEL_56;
    }

    v23 = v22;
    v24 = [v22 _accessibilityLeafDescendantsWithOptions:v20];

    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v25 + 16))
    {

      goto LABEL_11;
    }

    v26 = [v1 view];
    if (!v26)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v27 = v26;
    v47[13] = v25;
    sub_100058000(&unk_100777760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 56) = sub_100003540(0, &qword_100780998);
    *(inited + 32) = v15;
    v48 = inited;
    v29 = *(v25 + 16);
    v30 = _swiftEmptyArrayStorage[2];
    v31 = v30 + v29;
    v32 = __OFADD__(v30, v29);
    v33 = v15;
    if (!v32)
    {
      v15 = v33;

      v34 = _swiftEmptyArrayStorage;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v31 > _swiftEmptyArrayStorage[3] >> 1)
      {
        if (v30 <= v31)
        {
          v36 = v30 + v29;
        }

        else
        {
          v36 = v30;
        }

        v34 = sub_1005470E4(isUniquelyReferenced_nonNull_native, v36, 1, _swiftEmptyArrayStorage);
      }

      if (*(v25 + 16))
      {
        if ((*(v34 + 3) >> 1) - *(v34 + 2) < v29)
        {
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        swift_arrayInitWithCopy();

        v37 = *(v34 + 2);
        if (v29)
        {
          v38 = __OFADD__(v37, v29);
          v37 += v29;
          if (v38)
          {
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
            goto LABEL_57;
          }

          *(v34 + 2) = v37;
        }
      }

      else
      {

        if (v29)
        {
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v37 = *(v34 + 2);
      }

      v39 = v48;
      v40 = *(v48 + 16);
      v41 = v37 + v40;
      if (!__OFADD__(v37, v40))
      {

        v42 = swift_isUniquelyReferenced_nonNull_native();
        if (!v42 || v41 > *(v34 + 3) >> 1)
        {
          if (v37 <= v41)
          {
            v43 = v37 + v40;
          }

          else
          {
            v43 = v37;
          }

          v34 = sub_1005470E4(v42, v43, 1, v34);
        }

        if (*(v39 + 16))
        {
          if ((*(v34 + 3) >> 1) - *(v34 + 2) >= v40)
          {
            swift_arrayInitWithCopy();

            if (!v40)
            {
LABEL_49:
              sub_100058000(&unk_1007809A0);
              swift_arrayDestroy();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v27 setAccessibilityElements:isa];

              goto LABEL_11;
            }

            v44 = *(v34 + 2);
            v38 = __OFADD__(v44, v40);
            v45 = v44 + v40;
            if (!v38)
            {
              *(v34 + 2) = v45;
              goto LABEL_49;
            }

            goto LABEL_53;
          }

          goto LABEL_52;
        }

        if (!v40)
        {
          goto LABEL_49;
        }

        goto LABEL_51;
      }
    }

    __break(1u);
    goto LABEL_51;
  }
}

void sub_10038CA04()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1003AB968(v6), (v3 & 1) == 0))
  {

    sub_100077654(v6);
LABEL_11:
    v7 = 0u;
    v8 = 0u;
    goto LABEL_12;
  }

  sub_1000046FC(*(v1 + 56) + 32 * v2, &v7);
  sub_100077654(v6);

  if (!*(&v8 + 1))
  {
LABEL_12:
    sub_1000079B4(&v7, &qword_10076AE40);
    goto LABEL_13;
  }

  sub_100003540(0, &qword_100780A30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    UIViewController.endFirstResponderEditing()();
    return;
  }

  v4 = v6[0];
  v5 = [v6[0] integerValue];

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    return;
  }

  if ((v5 & 0xFFFFFFFE) != 0xC)
  {
    goto LABEL_13;
  }
}

void sub_10038CB88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 1;
  if (v8 == 1)
  {
    goto LABEL_5;
  }

  v9 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v2[v9], v4);
  LOBYTE(v9) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    goto LABEL_5;
  }

  v10 = [v2 view];
  if (v10)
  {
    v11 = v10;
    [v10 setNeedsLayout];

LABEL_5:
    sub_10038CD04(a1);
    sub_10037DD70(0, 1);
    return;
  }

  __break(1u);
}

void sub_10038CD04(uint64_t a1)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100780A28);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TTRIKeyboardNotification();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, a1, v3, v12);
  TTRIKeyboardNotification.init(notification:)();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000079B4(v9, &qword_100780A28);
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003E30(v15, qword_100780830);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "TTRIShowRemindersViewController: invalid keyboard change notification", v18, 2u);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v9, v10);
    v19 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v20 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 176);
    v23 = v19;
    v24 = v22(v14, ObjectType, v20);

    if (static TTRIKeyboard.isInFloatingKeyboardMode.getter())
    {
      v25 = 0.0;
    }

    else
    {
      v25 = v24;
    }

    v26 = *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight);
    *(v1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight) = v25;
    sub_10038B458(v26);
    (*(v11 + 8))(v14, v10);
  }
}

id sub_10038D078()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 2;
  if (v6 == 2)
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  LOBYTE(v7) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    goto LABEL_5;
  }

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result setNeedsLayout];

LABEL_5:
    v10 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
    v11 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v12 = v10[4];
    sub_10000C36C(v10, v11);
    return (*(v12 + 992))(v11, v12);
  }

  __break(1u);
  return result;
}

void sub_10038D228()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 3;
  if (v6 == 3)
  {
    goto LABEL_5;
  }

  v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
  swift_beginAccess();
  (*(v3 + 16))(v5, &v1[v7], v2);
  LOBYTE(v7) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
  (*(v3 + 8))(v5, v2);
  if (v7)
  {
    goto LABEL_5;
  }

  v8 = [v1 view];
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];

LABEL_5:
    v10 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
    *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight] = 0;
    sub_10038B458(v10);
    sub_10037DD70(0, 1);
    return;
  }

  __break(1u);
}

id sub_10038D3C4()
{
  v1 = v0;
  v2 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
  v7 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight];
  v8 = v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState];
  v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState] = 0;
  if (v8)
  {
    v9 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v9], v2);
    LOBYTE(v9) = TTRIShowRemindersDeferredItemUpdates.isEmpty.getter();
    (*(v3 + 8))(v5, v2);
    if ((v9 & 1) == 0)
    {
      result = [v1 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v11 = result;
      [result setNeedsLayout];
    }
  }

  v12 = *&v1[v6];
  *&v1[v6] = 0;
  sub_10038B458(v12);
  if (fabs(v7) >= 0.0000000149011612)
  {
    sub_10037DD70(0, 1);
  }

  v13 = &v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter];
  v14 = *&v1[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
  v15 = v13[4];
  sub_10000C36C(v13, v14);
  return (*(v15 + 992))(v14, v15);
}

void sub_10038D5B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight;
  v13 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight);
  sub_10038CD04(a1);
  v14 = *(v2 + v12);
  if (v14 > 0.0 && v13 > 0.0 && v14 != v13)
  {
    v40 = v8;
    v16 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
    v17 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
    ObjectType = swift_getObjectType();
    v41 = v11;
    v19 = v5;
    v20 = v7;
    v21 = v4;
    v22 = ObjectType;
    v23 = *(v17 + 64);
    v24 = v16;
    v39 = v9;
    v25 = v24;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = v17;
    v31 = v40;
    v32 = v41;
    v33 = v23(v26, v30);
    v35 = v34;

    v36 = v39;
    if (v33)
    {
      v32[3] = swift_getObjectType();
      v32[4] = *(*(v35 + 8) + 8);
      *v32 = v33;
      (*(v36 + 104))(v32, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.keyboardFrameChange(_:), v31);
      v37 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      swift_beginAccess();
      (*(v29 + 16))(v28, v2 + v37, v27);
      v38 = v33;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v28);
    }
  }

  sub_10037DD70(0, 1);
}

uint64_t sub_10038D86C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = type metadata accessor for Notification();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

uint64_t type metadata accessor for TTRIShowRemindersViewController()
{
  result = qword_100780918;
  if (!qword_100780918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10038DC58()
{
  type metadata accessor for TTRRemindersListLayout();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListViewModel.ListInfo();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
      if (v2 <= 0x3F)
      {
        type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
        if (v3 <= 0x3F)
        {
          sub_10038DEB8(319, &qword_100780928, &type metadata accessor for TTRSharedWithYouHighlight);
          if (v4 <= 0x3F)
          {
            sub_10038DEB8(319, &qword_100780930, &type metadata accessor for TTRRemindersListViewModel.Item);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10038DEB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10038DF0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController;
  v9 = *(a1 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v10 = *(v8 + 8);
  ObjectType = swift_getObjectType();
  (*(v5 + 104))(v7, enum case for TTRIShowRemindersEditableCellScrollingTarget.cell(_:), v4);
  v12 = *(v10 + 168);
  v13 = v9;
  v12(v7, a2, 1, ObjectType, v10);

  return (*(v5 + 8))(v7, v4);
}

id sub_10038E060(void *a1)
{
  v2 = v1;
  if ([v1 isViewLoaded])
  {
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003E30(v4, qword_100780830);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "TTRIShowRemindersViewController: prepareForModalPresentation is called after viewDidLoad", v7, 2u);
    }
  }

  result = [a1 setDelegate:v2];
  v9 = &v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions];
  if (*&v2[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions + 8] == 1)
  {
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 0;
  }

  return result;
}

uint64_t sub_10038E190(char *a1, char a2, int a3)
{
  v4 = v3;
  v53 = a3;
  v7 = type metadata accessor for TTRRemindersListLayout();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v54 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v46 - v11;
  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  swift_beginAccess();
  v14 = *(v8 + 16);
  v14(v12, &v4[v13], v7);
  sub_1003912B4(&qword_1007809E0, &type metadata accessor for TTRRemindersListLayout);
  v55 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v52 = v8;
  v15 = *(v8 + 8);
  result = v15(v12, v7);
  if (a1 & 1) == 0 || (a2)
  {
    v50 = v13;
    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100003E30(v17, qword_100780830);
    v14(v54, v55, v7);
    v18 = v4;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    v51 = v18;

    v49 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v47 = v21;
      v48 = swift_slowAlloc();
      v56[0] = v48;
      *v21 = 136315394;
      v22 = v50;
      v14(v12, &v4[v50], v7);
      sub_1003912B4(&qword_1007809E8, &type metadata accessor for TTRRemindersListLayout);
      v23 = v19;
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v26 = v25;
      v15(v12, v7);
      v27 = sub_100004060(v24, v26, v56);

      v28 = v47;
      *(v47 + 1) = v27;
      *(v28 + 6) = 2080;
      v29 = v54;
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      v15(v29, v7);
      v33 = sub_100004060(v30, v32, v56);

      *(v28 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v23, v49, "TTRIShowRemindersViewController: replace content view controller {from: %s, to: %s}", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v15(v54, v7);
      v22 = v50;
    }

    swift_beginAccess();
    v34 = &v4[v22];
    v35 = v55;
    (*(v52 + 24))(v34, v55, v7);
    swift_endAccess();
    v36 = *&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24];
    v37 = *&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32];
    sub_10000C36C(&v51[OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter], v36);
    v38 = (*(v37 + 16))(v35, v36, v37);
    v40 = v39;
    v42 = v41;
    ObjectType = swift_getObjectType();
    v44 = *(v42 + 32);
    v45 = swift_unknownObjectRetain();
    v44(v45, &off_100723D78, ObjectType, v42);
    sub_10038B8A0(v38, v40, v53 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10038E674(void *a1, char a2)
{
  v5 = type metadata accessor for AppEntityID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 view];
  v10 = result;
  if (a2)
  {
    if (result)
    {
      type metadata accessor for GroupEntity();
      v11 = a1;
      AppEntityID.init(objectID:)();
      v12 = &qword_10076BE30;
      v13 = &type metadata accessor for GroupEntity;
LABEL_6:
      sub_1003912B4(v12, v13);
      UIView.setAssociatedAppEntity<A>(entityType:identifier:)();

      return (*(v6 + 8))(v8, v5);
    }

    __break(1u);
  }

  else if (result)
  {
    type metadata accessor for ListEntity();
    v14 = a1;
    AppEntityID.init(objectID:)();
    v12 = &qword_100771DE8;
    v13 = &type metadata accessor for ListEntity;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

id sub_10038E818(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for REMFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 isViewLoaded];
  if (result)
  {
    (*(v9 + 104))(v11, enum case for REMFeatureFlags.viewAnnotation(_:), v8);
    v13 = REMFeatureFlags.isEnabled.getter();
    result = (*(v9 + 8))(v11, v8);
    if (v13)
    {
      (*(v5 + 16))(v7, a1, v4);
      result = (*(v5 + 88))(v7, v4);
      if (result != enum case for TTRListType.PredefinedSmartListType.today(_:) && result != enum case for TTRListType.PredefinedSmartListType.scheduled(_:) && result != enum case for TTRListType.PredefinedSmartListType.all(_:) && result != enum case for TTRListType.PredefinedSmartListType.flagged(_:) && result != enum case for TTRListType.PredefinedSmartListType.assigned(_:) && result != enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:) && result != enum case for TTRListType.PredefinedSmartListType.completed(_:))
      {
        result = _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
      }
    }
  }

  return result;
}

unint64_t sub_10038EC08()
{
  result = qword_100780938;
  if (!qword_100780938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780938);
  }

  return result;
}

void sub_10038EC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v3 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v65 = *(v3 - 8);
  v66 = v3;
  __chkstk_darwin(v3);
  v67 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin(v5);
  v64 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v68 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100058000(&qword_100772140);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v22 = TTRIReminderCellTitleModuleInterface.editableReminderCell.getter();
  if (v22)
  {
    v24 = v23;
    v71 = v22;
    (*(v19 + 16))(v21, v76, v18);
    v25 = (*(v19 + 88))(v21, v18);
    if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
      dispatch thunk of TTRReminderCellTitleModuleInterface.editingState.getter();
      sub_10000C36C(v78, v78[3]);
      dispatch thunk of TTRReminderCellTitleEditingState.editingItem.getter();

      (*(v74 + 56))(v17, 0, 1, v75);
      v26 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      v27 = v77;
      swift_beginAccess();
      sub_10030DB18(v17, v27 + v26);
      swift_endAccess();
      sub_100004758(v78);
      return;
    }

    if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      v28 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v29 = v77;
      swift_beginAccess();
      v30 = v73;
      v31 = *(v72 + 16);
      v31(v11, v29 + v28, v73);
      v32 = v24;
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v11);
      v33 = v71;
      ObjectType = swift_getObjectType();
      v36 = v68;
      v35 = v69;
      *(v68 + 3) = ObjectType;
      v36[4] = *(*(v32 + 8) + 8);
      *v36 = v33;
      (*(v35 + 104))(v36, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v70);
      v31(v11, v29 + v28, v30);
      v37 = v33;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v11);
      (*(v74 + 56))(v17, 1, 1, v75);
      v38 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
      swift_beginAccess();
      sub_10030DB18(v17, v29 + v38);
      swift_endAccess();
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v37);

      return;
    }

    if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
    {
      v39 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v40 = v77;
      swift_beginAccess();
      v41 = v73;
      v42 = *(v72 + 16);
      v42(v11, v40 + v39, v73);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v11);
      sub_100058000(&qword_100780A10);
      v43 = v71;
      v44 = swift_getObjectType();
      v45 = v68;
      *(v68 + 3) = v44;
      v45[4] = *(*(v24 + 8) + 8);
      *v45 = v43;
      v46 = v43;
      static TTRIShowRemindersEditableCellScrollingTarget.reminderTitle.getter();
      (*(v69 + 104))(v45, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v70);
      v42(v11, v40 + v39, v41);
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v11);

      return;
    }

    if (v25 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      v47 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v48 = v77;
      swift_beginAccess();
      (*(v72 + 16))(v11, v48 + v47, v73);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v11);
      TTRIReminderCellTitleModuleInterface.item.getter();
      v50 = v74;
      v49 = v75;
      if ((*(v74 + 48))(v14, 1, v75) == 1)
      {

        sub_1000079B4(v14, &qword_100772140);
        return;
      }

      v51 = v64;
      (*(v50 + 32))(v64, v14, v49);
      v52 = v67;
      TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
      v53 = v65;
      v54 = v66;
      v55 = (*(v65 + 88))(v52, v66);
      if (v55 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:))
      {
        v56 = (v48 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
        v57 = v53;
        v58 = *(v48 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
        v59 = *(v48 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
        sub_10000C36C(v56, v58);
        sub_100058000(&qword_100772150);
        v60 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_10062D400;
        (*(v50 + 16))(v61 + v60, v51, v49);
        (*(v59 + 912))(v61, v58, v59);

        (*(v50 + 8))(v51, v49);
        (*(v57 + 8))(v67, v54);
        return;
      }

      if (v55 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:) || v55 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
      {
        (*(v50 + 8))(v51, v49);

        (*(v53 + 8))(v52, v54);
        return;
      }

      if (v55 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
      {
        (*(v50 + 8))(v51, v49);

        return;
      }
    }

    else
    {
      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100003E30(v62, qword_100780830);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown editing event", 21, 2);
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }
}

uint64_t sub_10038F640()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 88);
  v5 = v1;
  LOBYTE(v1) = v4(ObjectType, v2);

  return v1 & 1;
}

void sub_10038F6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentViewController + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 152);
  v5 = v1;
  v4(ObjectType, v2);
}

void sub_10038F748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v14 = TTRIReminderCellNotesModuleInterface.editableReminderCell.getter();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    v28 = v4;
    v17 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    v27 = *(v11 + 16);
    v27(v13, v3 + v17, v10);
    TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
    v29 = v3;
    sub_10037AF34(v13);
    (*(v7 + 16))(v9, v32, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
LABEL_9:

      return;
    }

    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      ObjectType = swift_getObjectType();
      v20 = v30;
      v21 = v31;
      *(v31 + 3) = ObjectType;
      v21[4] = *(*(v26 + 8) + 8);
      *v21 = v16;
      (*(v20 + 104))(v21, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v28);
      v27(v13, v29 + v17, v10);
      v22 = v16;
LABEL_7:
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v13);
      goto LABEL_9;
    }

    v23 = v31;
    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
    {
      sub_100058000(&qword_100780A10);
      v23[3] = swift_getObjectType();
      v23[4] = *(*(v26 + 8) + 8);
      *v23 = v16;
      v24 = v16;
      static TTRIShowRemindersEditableCellScrollingTarget.reminderNotes.getter();
      (*(v30 + 104))(v23, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:), v28);
      v27(v13, v29 + v17, v10);
      goto LABEL_7;
    }

    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      goto LABEL_9;
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100003E30(v25, qword_100780830);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown editing event", 21, 2);
    __break(1u);
  }
}

void sub_10038FBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v4 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v29 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v14 = TTRIReminderCellHashtagModuleInterface.editableReminderCell.getter();
  if (v14)
  {
    v16 = v14;
    v26 = v15;
    v27 = v4;
    v17 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
    swift_beginAccess();
    v25 = *(v11 + 16);
    v25(v13, v3 + v17, v10);
    TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
    v28 = v3;
    sub_10037AF34(v13);
    (*(v7 + 16))(v9, v31, v6);
    v18 = (*(v7 + 88))(v9, v6);
    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
    {
LABEL_7:

      return;
    }

    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
    {
      ObjectType = swift_getObjectType();
      v20 = v29;
      v21 = v30;
      *(v30 + 3) = ObjectType;
      v22 = v27;
      v21[4] = *(*(v26 + 8) + 8);
      *v21 = v16;
      (*(v20 + 104))(v21, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:), v22);
      v25(v13, v28 + v17, v10);
      v23 = v16;
      TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
      sub_10037AF34(v13);
      goto LABEL_7;
    }

    if (v18 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:) || v18 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      goto LABEL_7;
    }

    if (qword_100767228 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100003E30(v24, qword_100780830);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("Unknown editing event", 21, 2);
    __break(1u);
  }
}

void sub_10038FF74()
{
  sub_10037BE04();
  v0 = sub_10037BD64();
  if (v0)
  {

    v1 = UIViewController.effectiveNavigationControllerForBars.getter();
    if (v1)
    {
      v2 = v1;
      [v1 setToolbarHidden:1 animated:1];
    }
  }
}

uint64_t sub_10038FFF0()
{
  v1 = (*v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000C36C(v1, v2);
  return (*(v3 + 824))(v2, v3) & 1;
}

uint64_t sub_100390054(void *a1)
{
  a1[2] = sub_1003912B4(&qword_100780940, type metadata accessor for TTRIShowRemindersViewController);
  a1[3] = sub_1003912B4(&qword_100780948, type metadata accessor for TTRIShowRemindersViewController);
  result = sub_1003912B4(&qword_100780950, type metadata accessor for TTRIShowRemindersViewController);
  a1[4] = result;
  return result;
}

uint64_t sub_100390100(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_100390114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.GeneralItemsInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100390178(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100390240(int a1, int a2)
{
  if (a2)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v8 = *(v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v2 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v7);
  v9 = (*(v8 + 504))(v7, v8);
  v10 = *(v9 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride);
  if (v10 == 2)
  {
    if (v6 == 2)
    {
      goto LABEL_13;
    }

LABEL_12:
    *(v9 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_templatesItemVisibilityOverride) = v6;
    sub_100081EF8(0xD000000000000027, 0x8000000100683BE0);
    goto LABEL_13;
  }

  if ((a1 | a2) & 1) == 0 || ((v10 ^ v6))
  {
    goto LABEL_12;
  }

LABEL_13:

  return swift_unknownObjectRelease();
}

objc_class *sub_10039032C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 504))(v1, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = sub_10010E890();
    v5 = v4;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    v3 = 0;
  }

  UIViewController.effectiveNavigationBar.getter();
  return v3;
}

uint64_t sub_1003903E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 920))(v5, v1, v2);
  if (v6)
  {
    sub_10000C36C(v5, v6);
    if ([objc_opt_self() isInternalInstall])
    {
      swift_getObjectType();
      v3 = dispatch thunk of TTRRemindersListDataModelSourceBaseType.isGroceryOrAutoCategorizedList.getter();
    }

    else
    {
      v3 = 0;
    }

    sub_100004758(v5);
  }

  else
  {
    sub_1000079B4(v5, &qword_10077B360);
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1003904D8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_1003904E8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_100390500()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[6];
  [v1 removeFromParentViewController];
  [v2 didMoveToParentViewController:v3];
  return sub_10037DC0C(0);
}

void sub_100390560()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  v3 = ceil(v2 / 44.0);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_100390618()
{
  v1 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_feedbackGenerator;
  *(v0 + v5) = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:0];
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___toolbar) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardAppearState) = 0;
  v6 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_navigationItemOptions;
  *v6 = xmmword_10062E1C0;
  *(v6 + 16) = 0;
  v7 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  v8 = enum case for TTRRemindersListViewModel.EmptyListMessagingType.none(_:);
  v9 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  (*(v2 + 104))(v4, enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:), v1);
  TTRIShowRemindersDeferredItemUpdates.init(needsRefreshCellSizes:pendingScrollAction:)();
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarHeight) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_keyboardHeight) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_pencilInputAreaHeight) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_toolbarController) = 0;
  v10 = v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_lastSetLargeTitleColor;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_listMessagingView) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_currentTextInputModeObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentPreferredChromelessBarStatesObserver) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController____lazy_storage___autoCategorizationController) = 0;
  v11 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_swHighlightToShowInNavBar;
  v12 = type metadata accessor for TTRSharedWithYouHighlight();
  (*(*(v12 - 8) + 56))(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_cellTitleItemGainingFocus_forKeyboardAvoidance;
  v14 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v14 - 8) + 56))(v0 + v13, 1, 1, v14);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003908F8()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListLayout();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.EmptyListMessagingType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v41 - v12;
  v14 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_emptyListMessaging;
  swift_beginAccess();
  v48 = *(v8 + 16);
  v48(v13, &v0[v14], v7);
  v15 = TTRRemindersListViewModel.EmptyListMessagingType.shouldUseUnavailableConfiguration.getter();
  v16 = *(v8 + 8);
  v16(v13, v7);
  if ((v15 & 1) == 0)
  {
    v18 = 0;
    goto LABEL_7;
  }

  v48(v10, &v1[v14], v7);
  v41[1] = TTRRemindersListViewModel.EmptyListMessagingType.imageSystemName.getter();
  v18 = v17;
  v16(v10, v7);
  v41[2] = v18;
  if (!v18)
  {
LABEL_7:
    v31 = v1;
    goto LABEL_11;
  }

  v48(v13, &v1[v14], v7);
  v19 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_contentLayout;
  swift_beginAccess();
  v42 = v16;
  v20 = v46;
  v21 = v47;
  (*(v46 + 16))(v6, &v1[v19], v47);
  v18 = TTRRemindersListViewModel.EmptyListMessagingType.localizedSubtitle(currentLayout:)();
  (*(v20 + 8))(v6, v21);
  v42(v13, v7);
  v47 = v18;
  if (v18)
  {
    v22 = [objc_opt_self() emptyProminentConfiguration];
    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() _systemImageNamed:v23];

    [v22 setImage:v24];
    v48(v13, &v1[v14], v7);
    v26 = v43;
    v25 = v44;
    v27 = v45;
    (*(v44 + 104))(v43, enum case for TTRRemindersListViewModel.EmptyListMessagingType.TextFormat.standard(_:), v45);
    TTRRemindersListViewModel.EmptyListMessagingType.localizedTitle(withTextFormat:)();
    v29 = v28;
    (*(v25 + 8))(v26, v27);
    v42(v13, v7);
    if (v29)
    {
      v30 = String._bridgeToObjectiveC()();
    }

    else
    {
      v30 = 0;
    }

    [v22 setText:v30];

    v32 = [v22 textProperties];
    v33 = [v22 textProperties];
    v34 = [v33 font];

    isa = UIFont.withRoundedDesign()().super.isa;
    [v32 setFont:isa];

    v36 = [v22 secondaryTextProperties];
    v37 = [v22 secondaryTextProperties];
    v38 = [v37 font];

    v39 = UIFont.withRoundedDesign()().super.isa;
    [v36 setFont:v39];

    v40 = v47;
    [v22 setSecondaryAttributedText:v47];

    v18 = v22;
    v31 = v1;
  }

  else
  {

    v31 = v1;
  }

LABEL_11:
  [v31 ttr_setContentUnavailableConfiguration:v18];
}

uint64_t sub_100390EC0()
{
  v1 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v1 - 8);
  v3 = &v12[-1] - v2;
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v5 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v4);
  (*(v5 + 832))(v12, v4, v5);
  if (!v13)
  {
    return sub_1000079B4(v12, &unk_100780A18);
  }

  v6 = *sub_10000C36C(v12, v13);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10009E31C(0, 0, v3, &unk_10063C798, v9);

  return sub_100004758(v12);
}

uint64_t sub_100391058()
{
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v0 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v1);
  (*(v2 + 832))(v9, v1, v2);
  if (!v10)
  {
    return sub_1000079B4(v9, &unk_100780A18);
  }

  v3 = *sub_10000C36C(v9, v10);
  if (swift_unknownObjectWeakLoadStrong())
  {
    ObjectType = swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (v5)
    {
      v6 = v5;
      v8[3] = type metadata accessor for TTRIShowTemplatePresenter();
      v8[4] = &off_10071AA88;
      v8[0] = v3;
      (*(v6 + 16))(v8, ObjectType, v6);

      swift_unknownObjectRelease();
      sub_100004758(v8);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_100004758(v9);
}

uint64_t sub_10039118C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001AA3C;

  return sub_1001E42C4();
}

uint64_t sub_100391258(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t sub_1003912B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10039134C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780A58);
  v1 = sub_100003E30(v0, qword_100780A58);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100391414(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      v10 = dispatch thunk of Promise.cast<A>(as:)();
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10078A340);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10078A340);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1003917A8(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_100775650);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FD80);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FD80);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100391B44(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FD70);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FD98);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FD98);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100391EE0(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDC0);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDC8);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDC8);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_10039227C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDD0);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDD8);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDD8);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100392618(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDE0);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDE8);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDE8);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_1003929B4(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(v1 + 24);
      sub_100024C90(a1 & 1);
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = v7;
      swift_unknownObjectRetain();
      v9 = zalgo.getter();
      sub_100058000(&qword_100780B48);
      dispatch thunk of Promise.then<A>(on:closure:)();

      sub_100058000(&qword_10077FDF0);
      v10 = dispatch thunk of Promise.cast<A>(as:)();

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_100767230 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100003E30(v19, qword_100780A58);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Root Router has a nil delegate. Navigation failed", v22, 2u);
      }

      v23 = objc_opt_self();
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 internalErrorWithDebugDescription:v24];

      sub_100058000(&qword_10077FDF8);
      swift_allocObject();
      v10 = Promise.init(error:)();
    }

    return v10;
  }

  else
  {
    if (qword_100767230 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100780A58);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Root Router has a nil view controller. Navigation failed", v14, 2u);
    }

    v15 = objc_opt_self();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 internalErrorWithDebugDescription:v16];

    sub_100058000(&qword_10077FDF8);
    swift_allocObject();
    return Promise.init(error:)();
  }
}

uint64_t sub_100392D50(int a1, uint64_t a2, id a3)
{
  v4 = [a3 objectID];
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  firstly<A>(closure:)();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = a2;

  v10 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v11 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v11;
}

uint64_t sub_100392EBC(uint64_t a1, uint64_t a2, void *a3, char a4)
{

  TTRModuleState.initialLoadPromise.getter();

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  v8 = a3;
  v9 = zalgo.getter();
  v10 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v10;
}

uint64_t sub_100392FA4(int a1, uint64_t a2, id a3)
{
  v4 = [a3 objectID];
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  firstly<A>(closure:)();
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = a2;

  v10 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v11 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v11;
}

uint64_t sub_100393108(uint64_t a1, uint64_t a2, void *a3)
{

  TTRModuleState.initialLoadPromise.getter();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;
  v6 = a3;
  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_100393220(int a1, int a2, id a3)
{
  v3 = [a3 list];

  TTRModuleState.initialLoadPromise.getter();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *(v5 + 32) = 0;
  v6 = v3;
  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_100393318(int a1, int a2, id a3)
{
  v3 = [a3 smartList];

  TTRModuleState.initialLoadPromise.getter();

  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = v3;
  v7 = zalgo.getter();
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_100393418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);

  TTRModuleState.initialLoadPromise.getter();

  v7 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v5 + 32))(v9 + v8, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v10 = zalgo.getter();
  v11 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v11;
}

uint64_t sub_1003935C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  v13 = (v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = [a1 store];
  v17 = *(v6 + 56);
  sub_10000794C(a2, v15 + v13[7], &unk_10076BB50);
  *v15 = v16;
  *(v15 + v13[8]) = v17;
  v18 = v13[9];
  v30 = *(v6 + 64);
  *(v15 + v18) = v30;
  *(v15 + v13[10]) = 0;
  type metadata accessor for TTRIShowRemindersInListAssembly();

  swift_unknownObjectRetain();
  v19 = sub_1005A9588(a5, v15, a1, a3, a4, 1);
  sub_10000B0D8(a5, v33);
  v33[40] = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v22 = *(Strong + OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController);
    sub_100058000(&qword_10076B780);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_10062D420;
    *(v23 + 32) = v19;
    sub_100003540(0, &qword_10076AD28);
    v24 = v19;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setViewControllers:isa animated:0];

    sub_1002FB7EC(0);
  }

  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = v26;
    sub_10001A06C(a1);
  }

  sub_10000E224(v31);
  if (v32)
  {
    sub_1000079B4(v31, &unk_100792FE0);
    v28 = swift_unknownObjectWeakLoadStrong();

    if (v28)
    {
      swift_unknownObjectRelease();
    }

    sub_100079664(v15);
  }

  else
  {
    sub_100079664(v15);

    sub_1000079B4(v31, &unk_100792FE0);
  }

  swift_beginAccess();
  sub_100371B94(v33, v6 + 96);
  return swift_endAccess();
}

uint64_t sub_100393888@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v12);
  v14 = (&v34[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(v6 + 96, v34);
  if (v35)
  {
    sub_100015124(v34);
    v15 = [a1 store];
    v16 = v12[5];
    v17 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v17 - 8) + 56))(v14 + v16, 1, 1, v17);
    v18 = *(v6 + 56);
    *v14 = v15;
    *(v14 + v12[6]) = v18;
    v19 = v12[7];
    v33 = *(v6 + 64);
    *(v14 + v19) = v33;
    *(v14 + v12[8]) = a4 & 1;
    type metadata accessor for TTRIShowRemindersInListAssembly();

    swift_unknownObjectRetain();
    v20 = sub_1005A9588(a5, v14, a1, a2, a3, 0);
    sub_10000B0D8(a5, v34);
    v35 = 0;
    sub_1003944FC(v34, v20);

    sub_100015124(v34);
    return sub_100079664(v14);
  }

  else
  {
    sub_100005FD0(v34, &v36);
    sub_10000C36C(&v36, v37);
    swift_getObjectType();
    v22 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
    if (v22)
    {
      v23 = v22;
      v24 = [v22 objectID];
    }

    else
    {
      v24 = 0;
    }

    v25 = [a1 objectID];
    v26 = v25;
    if (v24)
    {
      if (v25)
      {
        sub_100003540(0, &qword_10076BA50);
        static NSObject.== infix(_:_:)();
      }

      else
      {
        v26 = v24;
      }
    }

    v28 = v37;
    v27 = v38;
    sub_10000C36C(&v36, v37);
    (*(*(v27 + 8) + 40))(v28);
    v29 = *(*sub_10000C36C(&v36, v37) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v29);
    swift_getObjectType();
    dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.setList(_:advancesAfterDate:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      sub_1002FB7EC(1);
      v32 = sub_100341598();
      sub_10001A06C(v32);
    }

    return sub_100005FD0(&v36, a5);
  }
}

uint64_t sub_100393C18@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v10);
  v12 = (&v48[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(v4 + 96, v48);
  if (v49 != 1)
  {
    sub_100015124(v48);
LABEL_35:
    v41 = [a1 store];
    v42 = v10[5];
    v43 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v43 - 8) + 56))(v12 + v42, 1, 1, v43);
    v44 = *(v5 + 56);
    *v12 = v41;
    *(v12 + v10[6]) = v44;
    v45 = v10[7];
    v47 = *(v5 + 64);
    *(v12 + v45) = v47;
    *(v12 + v10[8]) = 0;
    type metadata accessor for TTRIShowCustomSmartListAssembly();

    swift_unknownObjectRetain();
    v46 = sub_1004F97FC(a4, v12, a1, a2, a3, 0);
    sub_10000B0D8(a4, v48);
    v49 = 1;
    sub_1003944FC(v48, v46);

    sub_100015124(v48);
    return sub_100079664(v12);
  }

  *&v47 = a4;
  sub_100005FD0(v48, &v50);
  sub_10000C36C(&v50, v51);
  swift_getObjectType();
  v13 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v13 smartListType];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  sub_10000C36C(&v50, v51);
  swift_getObjectType();
  v22 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 objectID];
  }

  else
  {
    v24 = 0;
  }

  v25 = [a1 objectID];
  v26 = v25;
  if (!v24)
  {
    if (!v25)
    {
      goto LABEL_19;
    }

LABEL_33:

LABEL_34:
    sub_100004758(&v50);
    a4 = v47;
    goto LABEL_35;
  }

  if (!v25)
  {
    v26 = v24;
    goto LABEL_33;
  }

  sub_100003540(0, &qword_10076BA50);
  v27 = static NSObject.== infix(_:_:)();

  if ((v27 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_19:
  sub_10000C36C(&v50, v51);
  swift_getObjectType();
  v28 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 objectID];
  }

  else
  {
    v30 = 0;
  }

  v31 = [a1 objectID];
  v32 = v31;
  if (v30)
  {
    v33 = v47;
    if (v31)
    {
      sub_100003540(0, &qword_10076BA50);
      static NSObject.== infix(_:_:)();
    }

    else
    {
      v32 = v30;
    }
  }

  else
  {
    v33 = v47;
  }

  v34 = v51;
  v35 = v52;
  sub_10000C36C(&v50, v51);
  (*(*(v35 + 8) + 40))(v34);
  v36 = *(*sub_10000C36C(&v50, v51) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1A4(v36);
  swift_getObjectType();
  dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.setSmartList(_:advancesAfterDate:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = Strong;
    sub_1002FB7EC(1);
    v39 = sub_100341598();
    sub_10001A06C(v39);
  }

  return sub_100005FD0(&v50, v33);
}

uint64_t sub_100394170@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v7);
  v9 = (&v29[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  sub_100010540(v3 + 96, v29);
  if (v30 == 2)
  {
    sub_100005FD0(v29, &v31);
    sub_10000C36C(&v31, v32);
    swift_getObjectType();
    v10 = dispatch thunk of TTRShowGroupDataModelSourceBaseType.group.getter();
    if (v10)
    {
      v11 = v10;
      v12 = [v10 objectID];
    }

    else
    {
      v12 = 0;
    }

    v20 = [a1 objectID];
    v21 = v20;
    if (v12)
    {
      if (v20)
      {
        sub_100003540(0, &qword_10076BA50);
        static NSObject.== infix(_:_:)();
      }

      else
      {
        v21 = v12;
      }
    }

    v23 = v32;
    v22 = v33;
    sub_10000C36C(&v31, v32);
    (*(*(v22 + 8) + 40))(v23);
    v24 = *(*sub_10000C36C(&v31, v32) + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_editingPresenter);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      swift_getObjectType();
      dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
      swift_unknownObjectRelease();
    }

    sub_1004EF1A4(v24);
    swift_getObjectType();
    dispatch thunk of TTRShowGroupDataModelSourceBaseType.setGroup(_:advancesAfterDate:)();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      sub_1002FB7EC(1);
      v27 = sub_100341598();
      sub_10001A06C(v27);
    }

    return sub_100005FD0(&v31, a3);
  }

  else
  {
    sub_100015124(v29);
    v13 = [a1 store];
    v14 = v7[5];
    v15 = type metadata accessor for TTRRemindersListViewModel.ItemID();
    (*(*(v15 - 8) + 56))(v9 + v14, 1, 1, v15);
    v16 = *(v3 + 56);
    *v9 = v13;
    *(v9 + v7[6]) = v16;
    v17 = v7[7];
    v28 = *(v3 + 64);
    *(v9 + v17) = v28;
    *(v9 + v7[8]) = 0;
    type metadata accessor for TTRIShowGroupAssembly();

    swift_unknownObjectRetain();
    v18 = sub_1003A3078(a3, v9, a1, a2);
    sub_10000B0D8(a3, v29);
    v30 = 2;
    sub_1003944FC(v29, v18);

    sub_100015124(v29);
    return sub_100079664(v9);
  }
}

uint64_t sub_1003944FC(__int128 *a1, void *a2)
{
  swift_beginAccess();
  sub_10039829C(a1, v2 + 96);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a2;
    sub_1002FB2D8(a2);
  }

  sub_10000E224(v9);
  return sub_1000079B4(v9, &unk_100792FE0);
}

void sub_1003945A0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v0 = static TTRLocalizableStrings.Templates.publicTemplateDownloading.getter();
    v2 = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_10048DE3C(v0, v2, Strong);
  }
}

uint64_t sub_10039464C(uint64_t a1)
{
  v1[5] = a1;
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return _swift_task_switch(sub_1003946E4, v3, v2);
}

uint64_t sub_1003946E4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 72) = *(Strong + 80);

    return _swift_task_switch(sub_1003947BC, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1003947BC()
{
  v1 = *(v0[9] + 16);
  v0[10] = v1;
  if (v1)
  {
    v1;
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1003948A8;

    return UIViewController.dismissAndWait(animated:)(1);
  }

  else
  {

    v3 = v0[7];
    v4 = v0[8];

    return _swift_task_switch(sub_1001E2124, v3, v4);
  }
}

uint64_t sub_1003948A8()
{

  return _swift_task_switch(sub_1003949A4, 0, 0);
}

uint64_t sub_1003949A4()
{
  v1 = *(v0 + 72);

  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return _swift_task_switch(sub_1001E2124, v3, v4);
}

void sub_100394A1C(void *a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48[1] = a6;
  v49 = a7;
  v13 = sub_100058000(&qword_10076BE10);
  __chkstk_darwin(v13 - 8);
  v15 = v48 - v14;
  v16 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v16);
  v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_100058000(&unk_10077D160);
  __chkstk_darwin(v19 - 8);
  v21 = v48 - v20;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v48[0] = a8;
    swift_beginAccess();
    sub_1000EA904(a4, v21);
    swift_endAccess();
    sub_1000079B4(v21, &unk_10077D160);
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      if (a2)
      {
        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          v27 = v26;
          v28 = UIViewController.isIPadIdiom.getter();
        }

        else
        {
          v28 = 0;
        }

        v43 = sub_10010BED4(a1, v28 & 1);
        v44 = type metadata accessor for TaskPriority();
        (*(*(v44 - 8) + 56))(v15, 1, 1, v44);
        type metadata accessor for MainActor();

        v45 = v43;
        v46 = static MainActor.shared.getter();
        v47 = swift_allocObject();
        v47[2] = v46;
        v47[3] = &protocol witness table for MainActor;
        v47[4] = v23;
        v47[5] = v45;
        sub_10009E31C(0, 0, v15, &unk_10063C8F0, v47);
      }

      else
      {
        v29 = v16[5];
        v30 = type metadata accessor for TTRRemindersListViewModel.ItemID();
        (*(*(v30 - 8) + 56))(v18 + v29, 1, 1, v30);
        v31 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
        v32 = static TTRAttachmentThumbnailSizeProviding<>.remindersList.getter();
        v53[3] = v31;
        v53[4] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
        v53[0] = v32;
        sub_100003540(0, &qword_100777780);
        static OS_dispatch_queue.main.getter();
        type metadata accessor for RDIDispatchQueue();
        static RDIDispatchQueue.utilityQueue.getter();
        v33 = type metadata accessor for TTRThumbnailGenerator();
        swift_allocObject();
        v34 = TTRThumbnailGenerator.init(queue:backgroundQueue:)();
        v51 = v33;
        v52 = &protocol witness table for TTRThumbnailGenerator;
        v50 = v34;
        type metadata accessor for TTRAttachmentThumbnailsManager();
        swift_allocObject();
        v35 = TTRAttachmentThumbnailsManager.init(thumbnailSizeProvider:thumbnailGenerator:)();
        *v18 = a5;
        v36 = *(v23 + 64);
        *(v18 + v16[6]) = v35;
        *(v18 + v16[7]) = v36;
        *(v18 + v16[8]) = 0;
        swift_unknownObjectRetain();
        v37 = a5;
        v38 = REMiCloudSharedItemSpecifier.PublicTemplate.name.getter();
        v40 = sub_10010ACF0(v53, v18, a1, v38, v39, v49);

        sub_100004758(v53);
        v41 = v25;
        v42 = UIViewController.topPresentedViewController.getter();

        [v42 presentViewController:v40 animated:1 completion:0];

        sub_100079664(v18);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_100394EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100394F44, v7, v6);
}

uint64_t sub_100394F44()
{
  sub_100058000(&qword_10076B260);
  sub_100058000(&unk_100775890);
  v1 = swift_allocObject();
  *(v0 + 56) = v1;
  *(v1 + 16) = xmmword_10062D400;
  static TTRLocalizableStrings.Common.alertOKButton.getter();
  *(v0 + 72) = 0;
  TTRIValueBasedAlertAction.init(title:style:value:)();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1003950B4;
  v3 = *(v0 + 24);

  return sub_1003951F8(v3, v1);
}

uint64_t sub_1003950B4()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return _swift_task_switch(sub_100223F40, v3, v2);
}

uint64_t sub_1003951F8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_100395294, v5, v4);
}

uint64_t sub_100395294()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1000A8258;
    v3 = v0[2];
    v4 = v0[3];

    return UIViewController.present<A>(alert:actions:didPresent:animated:)(v0 + 10, v3, v4, 0, 0, 1, &type metadata for Bool);
  }

  else
  {

    v5 = v0[1];

    return v5(2);
  }
}

uint64_t sub_100395398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  type metadata accessor for MainActor();
  v8[10] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[11] = v10;
  v8[12] = v9;

  return _swift_task_switch(sub_100395440, v10, v9);
}

uint64_t sub_100395440()
{
  v1 = *(v0 + 72);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  v4 = sub_100058000(&qword_100780B50);
  *v3 = v0;
  v3[1] = sub_100395534;

  return TTRPotentiallyLongOperationPerformer.perform<A>(_:)(v0 + 16, &unk_10063C8D0, v2, v4);
}

uint64_t sub_100395534()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_100395678, v3, v2);
}

uint64_t sub_100395678()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v1(v2, v3);
  sub_100284F88(v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100395708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a1;
  v6 = type metadata accessor for UUID();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = type metadata accessor for MainActor();
  v4[16] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[17] = v7;
  *v7 = v4;
  v7[1] = sub_100395838;

  return REMStore.downloadPublicTemplate(withPublicLinkURLUUID:)(a3);
}

uint64_t sub_100395838(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v1)
  {
    v6 = sub_100395C74;
  }

  else
  {
    v6 = sub_100395998;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100395998()
{
  v31 = v0;

  if (qword_100767230 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v6 = type metadata accessor for Logger();
  sub_100003E30(v6, qword_100780A58);
  (*(v4 + 16))(v2, v5, v3);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[18];
  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  if (v10)
  {
    v15 = v0[10];
    v16 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v16 = 136315650;
    v0[6] = v15;
    swift_getMetatypeMetadata();
    v17 = String.init<A>(describing:)();
    v19 = sub_100004060(v17, v18, &v30);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = UUID.uuidString.getter();
    v22 = v21;
    (*(v13 + 8))(v12, v14);
    v23 = sub_100004060(v20, v22, &v30);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2112;
    *(v16 + 24) = v11;
    *v29 = v11;
    v24 = v11;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s Downloaded public template. Will show public template. {templatePublicLinkURLUUID: %s, publicTemplateObjectID: %@}", v16, 0x20u);
    sub_1000079B4(v29, &unk_10076DF80);

    swift_arrayDestroy();
  }

  else
  {

    (*(v13 + 8))(v12, v14);
  }

  v25 = v0[8];
  v26 = v0[19] != 0;
  *v25 = v11;
  *(v25 + 8) = v26;

  v27 = v0[1];

  return v27();
}

uint64_t sub_100395C74()
{
  v31 = v0;

  if (qword_100767230 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100780A58);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v29 = v0[11];
    v11 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v11 = 136315650;
    v0[5] = v10;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_100004060(v12, v13, &v30);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2080;
    v15 = UUID.uuidString.getter();
    v17 = v16;
    (*(v9 + 8))(v8, v29);
    v18 = sub_100004060(v15, v17, &v30);

    *(v11 + 14) = v18;
    *(v11 + 22) = 2080;
    swift_getErrorValue();
    v19 = Error.rem_errorDescription.getter();
    v21 = sub_100004060(v19, v20, &v30);

    *(v11 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Failed to download public template. {templatePublicLinkURLUUID: %s, error: %s}", v11, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v23 = v0[12];
    v22 = v0[13];
    v24 = v0[11];

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[19];
  v26 = v0[8];
  *v26 = v25;
  *(v26 + 8) = v25 != 0;

  v27 = v0[1];

  return v27();
}

void sub_100395F48(void *a1, void *a2, char a3)
{
  sub_100391414(1);
  swift_allocObject();
  swift_weakInit();
  v6 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = a1;
  v9 = a2;
  v10 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

void sub_10039609C(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = sub_1003962A4();
  sub_100391414(1);
  swift_allocObject();
  swift_weakInit();
  v6 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();

  (*(v3 + 16))(&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  *(v8 + v7 + v4) = !v5;
  v9 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

BOOL sub_1003962A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong isCollapsed];
  }

  else
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 traitCollection];

      v6 = [v5 horizontalSizeClass];
      return v6 == 1;
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void sub_100396340(uint64_t a1)
{
  v3 = type metadata accessor for REMHashtagLabelSpecifier();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = *(v1 + 32);
  swift_unknownObjectRetain();

  TTRModuleState.initialLoadPromise.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = sub_10003A9B0;
  *(v7 + 24) = v6;
  swift_unknownObjectRetain();
  v8 = zalgo.getter();
  sub_100058000(&qword_10077FD70);
  dispatch thunk of Promise.then<A>(on:closure:)();
  swift_unknownObjectRelease();

  (*(v4 + 16))(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v11 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_100396564(void *a1, uint64_t a2)
{
  if (sub_1003962A4())
  {
    sub_100391414(1);
    swift_allocObject();
    swift_weakInit();
    v5 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    dispatch thunk of Promise.then<A>(on:closure:)();
  }

  else
  {
    v6 = *(v2 + 32);
    swift_unknownObjectRetain();

    TTRModuleState.initialLoadPromise.getter();

    v7 = swift_allocObject();
    *(v7 + 16) = sub_100371EEC;
    *(v7 + 24) = v6;
    swift_unknownObjectRetain();
    v5 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    dispatch thunk of Promise.then<A>(on:closure:)();
    swift_unknownObjectRelease();
  }

  v8 = sub_1003962A4();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 32) = !v8;
  v10 = a1;

  v11 = zalgo.getter();
  dispatch thunk of Promise.then<A>(on:closure:)();
}

uint64_t sub_100396780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 32);
    swift_unknownObjectRetain();

    TTRModuleState.initialLoadPromise.getter();

    v7 = swift_allocObject();
    *(v7 + 16) = a4;
    *(v7 + 24) = v6;
    swift_unknownObjectRetain();
    v8 = zalgo.getter();
    sub_100058000(&qword_10077FD70);
    v9 = dispatch thunk of Promise.then<A>(on:closure:)();

    swift_unknownObjectRelease();
  }

  else
  {
    v9 = type metadata accessor for PromiseError();
    sub_10016CE9C();
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for PromiseError.abandoned(_:), v9);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_10039690C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_getObjectType();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a4;

  dispatch thunk of TTRListToCustomSmartListConverterType.convert(listID:reminders:completionHandler:)();
}

uint64_t sub_1003969FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  sub_100010540(v3 + 96, &v29);
  sub_10000E224(v32);
  sub_100015124(&v29);
  v7 = sub_10001D354();
  if (v7)
  {
    if (v7 == 1)
    {
      sub_10000794C(v32, &v29, &unk_100792FE0);
      v8 = *(&v30 + 1);
      if (*(&v30 + 1))
      {
        v9 = v31;
        sub_10000C36C(&v29, *(&v30 + 1));
        (*(v9 + 128))(&v27, a1, a2, v8, v9);
        sub_1000079B4(v32, &unk_100792FE0);
        result = sub_100004758(&v29);
      }

      else
      {
        sub_1000079B4(v32, &unk_100792FE0);
        result = sub_1000079B4(&v29, &unk_100792FE0);
        v27 = 0u;
        v28 = 0u;
      }

      v19 = v27;
      v20 = v28;
      goto LABEL_24;
    }

    sub_10000794C(v32, &v29, &unk_100792FE0);
    v17 = *(&v30 + 1);
    if (*(&v30 + 1))
    {
      v18 = v31;
      sub_10000C36C(&v29, *(&v30 + 1));
      (*(v18 + 128))(&v27, a1, a2, v17, v18);
      sub_100004758(&v29);
      if (*(&v28 + 1))
      {
        sub_1000079B4(v32, &unk_100792FE0);
        result = sub_100007DD8(&v27, &v29);
LABEL_23:
        v19 = v29;
        v20 = v30;
LABEL_24:
        *a3 = v19;
        *(a3 + 16) = v20;
        return result;
      }
    }

    else
    {
      sub_1000079B4(&v29, &unk_100792FE0);
      v27 = 0u;
      v28 = 0u;
    }

    v21 = *(v3 + 32);
    swift_unknownObjectRetain();

    v22 = TTRModuleState.isReady.getter();

    if (v22)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = Strong;
        v25 = *(v21 + 24);
        ObjectType = swift_getObjectType();
        if ((*(v25 + 8))(a1, a2, ObjectType, v25))
        {
          *(&v30 + 1) = ObjectType;
          swift_unknownObjectRelease();
          *&v29 = v24;
          result = sub_1000079B4(v32, &unk_100792FE0);
          goto LABEL_21;
        }

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
    result = sub_1000079B4(v32, &unk_100792FE0);
    v29 = 0u;
    v30 = 0u;
LABEL_21:
    if (*(&v28 + 1))
    {
      result = sub_1000079B4(&v27, &qword_10076AE40);
    }

    goto LABEL_23;
  }

  v11 = *(v3 + 32);
  swift_unknownObjectRetain();

  v12 = TTRModuleState.isReady.getter();

  if (v12)
  {
    v13 = swift_unknownObjectWeakLoadStrong();
    if (v13)
    {
      v14 = v13;
      v15 = *(v11 + 24);
      v16 = swift_getObjectType();
      if ((*(v15 + 8))(a1, a2, v16, v15))
      {
        *(a3 + 24) = v16;
        swift_unknownObjectRelease();
        *a3 = v14;
        return sub_1000079B4(v32, &unk_100792FE0);
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  result = sub_1000079B4(v32, &unk_100792FE0);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

char *sub_100396DCC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    if ([result isCollapsed])
    {
      v3 = [*&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_mainNavigationController] viewControllers];
      sub_100003540(0, &qword_10076AD28);
      v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v10[0] = *&v2[OBJC_IVAR____TtC9Reminders22TTRIRootViewController_detailNavigationController];
      __chkstk_darwin(v5);
      v9[2] = v10;
      LOBYTE(v3) = sub_10000C158(sub_1003989D8, v9, v4);

      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
    }

    swift_beginAccess();
    sub_100010540(v0 + 96, v10);
    sub_10000E224(v11);
    sub_100015124(v10);
    v6 = v12;
    if (v12)
    {
      v7 = v13;
      sub_10000C36C(v11, v12);
      v8 = (*(v7 + 104))(v6, v7);
      sub_100004758(v11);
      return v8;
    }

    sub_1000079B4(v11, &unk_100792FE0);
    return 0;
  }

  return result;
}

uint64_t sub_100396F88@<X0>(uint64_t *a1@<X8>)
{
  sub_100010540(v1, v14);
  if (v15 - 2 >= 0xB)
  {
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_3;
      }

      sub_100005FD0(v14, v12);
      sub_10000C36C(v12, v13);
      swift_getObjectType();
      v5 = dispatch thunk of TTRShowCustomSmartListDataModelSourceBaseType.smartList.getter();
      if (v5)
      {
        *a1 = v5;
        v6 = &enum case for TTRListOrCustomSmartList.customSmartList(_:);
LABEL_11:
        v8 = *v6;
        v9 = type metadata accessor for TTRListOrCustomSmartList();
        v10 = *(v9 - 8);
        (*(v10 + 104))(a1, v8, v9);
        (*(v10 + 56))(a1, 0, 1, v9);
        return sub_100004758(v12);
      }
    }

    else
    {
      sub_100005FD0(v14, v12);
      sub_10000C36C(v12, v13);
      swift_getObjectType();
      v7 = dispatch thunk of TTRShowRemindersInListDataModelSourceBaseType.list.getter();
      if (v7)
      {
        *a1 = v7;
        v6 = &enum case for TTRListOrCustomSmartList.list(_:);
        goto LABEL_11;
      }
    }

    v11 = type metadata accessor for TTRListOrCustomSmartList();
    (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
    return sub_100004758(v12);
  }

  sub_100015124(v14);
LABEL_3:
  v3 = type metadata accessor for TTRListOrCustomSmartList();
  return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
}

uint64_t sub_1003971A0@<X0>(uint64_t a1@<X8>)
{
  sub_100010540(v1, v10);
  switch(v10[40])
  {
    case 3:
      v4 = &enum case for TTRListType.PredefinedSmartListType.scheduled(_:);
      goto LABEL_10;
    case 4:
      v4 = &enum case for TTRListType.PredefinedSmartListType.flagged(_:);
      goto LABEL_10;
    case 5:
      v4 = &enum case for TTRListType.PredefinedSmartListType.all(_:);
      goto LABEL_10;
    case 6:
      v4 = &enum case for TTRListType.PredefinedSmartListType.today(_:);
      goto LABEL_10;
    case 7:
      v4 = &enum case for TTRListType.PredefinedSmartListType.assigned(_:);
      goto LABEL_10;
    case 8:
      v4 = &enum case for TTRListType.PredefinedSmartListType.siriFoundInApps(_:);
      goto LABEL_10;
    case 0xB:
      v4 = &enum case for TTRListType.PredefinedSmartListType.completed(_:);
LABEL_10:
      v5 = *v4;
      v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
      v7 = *(v6 - 8);
      (*(v7 + 104))(a1, v5, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return sub_100015124(v10);
    case 0xD:
      v9 = type metadata accessor for TTRListType.PredefinedSmartListType();
      return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    default:
      v3 = type metadata accessor for TTRListType.PredefinedSmartListType();
      (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
      return sub_100015124(v10);
  }
}

uint64_t sub_100397370(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  v9 = objc_opt_self();
  v10 = [v9 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v11 = *(v6 + 8);
  v11(v8, v5);
  v12 = *(a3 + 40);
  v13 = swift_unknownObjectRetain();
  v14 = a1(v13, v12);
  swift_unknownObjectRelease();
  static os_signpost_type_t.end.getter();
  v15 = [v9 ppt];
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();

  v11(v8, v5);
  return v14;
}

uint64_t sub_100397544(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a1 != 1)
  {
    v8 = objc_opt_self();
    _StringGuts.grow(_:)(43);

    v20 = 0xD000000000000028;
    v21 = 0x8000000100683D40;
    v9._countAndFlagsBits = a2;
    v9._object = a3;
    String.append(_:)(v9);
    v10._countAndFlagsBits = 125;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    v7 = 0x8000000100683D40;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v8 internalErrorWithDebugDescription:v11];
LABEL_6:
    v12;

    swift_willThrow();
    return v7;
  }

  swift_beginAccess();
  sub_100010540(a4 + 96, &v20);
  sub_10000E224(&v18);
  sub_100015124(&v20);
  if (!v19)
  {
    sub_1000079B4(&v18, &unk_100792FE0);
    v13 = objc_opt_self();
    v20 = 0;
    v21 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v14._countAndFlagsBits = 0xD00000000000004BLL;
    v14._object = 0x8000000100683D70;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a2;
    v15._object = a3;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 125;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v7 = v21;
    v11 = String._bridgeToObjectiveC()();

    v12 = [v13 internalErrorWithDebugDescription:v11];
    goto LABEL_6;
  }

  sub_100005FD0(&v18, v22);
  sub_10000B0D8(v22, &v20);
  sub_100058000(&qword_10077FD80);
  swift_allocObject();
  v7 = Promise.init(value:)();
  sub_100004758(v22);
  return v7;
}

uint64_t sub_10039778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  firstly<A>(closure:)();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = zalgo.getter();
  sub_100058000(&qword_100775650);
  v8 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v8;
}

uint64_t sub_10039788C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);

  TTRModuleState.initialLoadPromise.getter();

  v9 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v11 + v10 + v8) = a4;
  v12 = zalgo.getter();
  v13 = dispatch thunk of Promise.then<A>(on:closure:)();

  return v13;
}

uint64_t sub_100397A48()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();

  sub_100015124(v0 + 96);
  return v0;
}

uint64_t sub_100397AA0()
{
  sub_100397A48();

  return swift_deallocClassInstance();
}

uint64_t assignWithCopy for TTRIRootRouter.CurrentDetailContents(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    v3 = *(a1 + 40);
    if (v3 >= 0xD)
    {
      v3 = *a1 + 13;
    }

    if (v3 <= 0xC)
    {
      v4 = a2;
      sub_100004758(a1);
      a2 = v4;
    }

    v5 = *(a2 + 40);
    if (v5 >= 0xD)
    {
      v5 = *a2 + 13;
    }

    switch(v5)
    {
      case 0u:
        v6 = *(a2 + 3);
        *(a1 + 24) = v6;
        *(a1 + 32) = *(a2 + 4);
        (**(v6 - 8))(a1);
        *(a1 + 40) = 0;
        return a1;
      case 1u:
        v15 = *(a2 + 3);
        *(a1 + 24) = v15;
        *(a1 + 32) = *(a2 + 4);
        (**(v15 - 8))(a1);
        v8 = 1;
        goto LABEL_23;
      case 2u:
        v12 = *(a2 + 3);
        *(a1 + 24) = v12;
        *(a1 + 32) = *(a2 + 4);
        (**(v12 - 8))(a1);
        v8 = 2;
        goto LABEL_23;
      case 3u:
        v13 = *(a2 + 3);
        *(a1 + 24) = v13;
        *(a1 + 32) = *(a2 + 4);
        (**(v13 - 8))(a1);
        v8 = 3;
        goto LABEL_23;
      case 4u:
        v9 = *(a2 + 3);
        *(a1 + 24) = v9;
        *(a1 + 32) = *(a2 + 4);
        (**(v9 - 8))(a1);
        v8 = 4;
        goto LABEL_23;
      case 5u:
        v16 = *(a2 + 3);
        *(a1 + 24) = v16;
        *(a1 + 32) = *(a2 + 4);
        (**(v16 - 8))(a1);
        v8 = 5;
        goto LABEL_23;
      case 6u:
        v19 = *(a2 + 3);
        *(a1 + 24) = v19;
        *(a1 + 32) = *(a2 + 4);
        (**(v19 - 8))(a1);
        v8 = 6;
        goto LABEL_23;
      case 7u:
        v14 = *(a2 + 3);
        *(a1 + 24) = v14;
        *(a1 + 32) = *(a2 + 4);
        (**(v14 - 8))(a1);
        v8 = 7;
        goto LABEL_23;
      case 8u:
        v21 = *(a2 + 3);
        *(a1 + 24) = v21;
        *(a1 + 32) = *(a2 + 4);
        (**(v21 - 8))(a1);
        v8 = 8;
        goto LABEL_23;
      case 9u:
        v11 = *(a2 + 3);
        *(a1 + 24) = v11;
        *(a1 + 32) = *(a2 + 4);
        (**(v11 - 8))(a1);
        v8 = 9;
        goto LABEL_23;
      case 0xAu:
        v20 = *(a2 + 3);
        *(a1 + 24) = v20;
        *(a1 + 32) = *(a2 + 4);
        (**(v20 - 8))(a1);
        v8 = 10;
        goto LABEL_23;
      case 0xBu:
        v7 = *(a2 + 3);
        *(a1 + 24) = v7;
        *(a1 + 32) = *(a2 + 4);
        (**(v7 - 8))(a1);
        v8 = 11;
        goto LABEL_23;
      case 0xCu:
        v10 = *(a2 + 3);
        *(a1 + 24) = v10;
        *(a1 + 32) = *(a2 + 4);
        (**(v10 - 8))(a1);
        v8 = 12;
LABEL_23:
        *(a1 + 40) = v8;
        break;
      default:
        v17 = *a2;
        v18 = a2[1];
        *(a1 + 25) = *(a2 + 25);
        *a1 = v17;
        *(a1 + 16) = v18;
        break;
    }
  }

  return a1;
}

__n128 initializeWithTake for TTRIRootRouter.CurrentDetailContents(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 assignWithTake for TTRIRootRouter.CurrentDetailContents(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = *(a1 + 40);
    if (v2 >= 0xD)
    {
      v2 = *a1 + 13;
    }

    if (v2 <= 0xC)
    {
      v3 = a1;
      v4 = a2;
      sub_100004758(a1);
      a2 = v4;
      a1 = v3;
    }

    v5 = *(a2 + 40);
    if (v5 >= 0xD)
    {
      v5 = *a2 + 13;
    }

    switch(v5)
    {
      case 0u:
        result = *a2;
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 0;
        break;
      case 1u:
        result = *a2;
        v15 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v15;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 1;
        break;
      case 2u:
        result = *a2;
        v12 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v12;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 2;
        break;
      case 3u:
        result = *a2;
        v13 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v13;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 3;
        break;
      case 4u:
        result = *a2;
        v9 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v9;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 4;
        break;
      case 5u:
        result = *a2;
        v16 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v16;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 5;
        break;
      case 6u:
        result = *a2;
        v18 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v18;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 6;
        break;
      case 7u:
        result = *a2;
        v14 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v14;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 7;
        break;
      case 8u:
        result = *a2;
        v20 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v20;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 8;
        break;
      case 9u:
        result = *a2;
        v11 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v11;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 9;
        break;
      case 0xAu:
        result = *a2;
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 10;
        break;
      case 0xBu:
        result = *a2;
        v8 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v8;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 11;
        break;
      case 0xCu:
        result = *a2;
        v10 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v10;
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = 12;
        break;
      default:
        v17 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v17;
        result = *(a2 + 25);
        *(a1 + 25) = result;
        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIRootRouter.CurrentDetailContents(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && *(a1 + 41))
  {
    return (*a1 + 243);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xE)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIRootRouter.CurrentDetailContents(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 243;
    if (a3 >= 0xF3)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1003981A0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 0xD)
  {
    return (*a1 + 13);
  }

  return result;
}

uint64_t sub_1003981BC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 13;
    LOBYTE(a2) = 13;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1003981F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = UIViewController.topPresentedViewController.getter();

  return v2;
}

uint64_t sub_1003982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  __chkstk_darwin(a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  (*(a4 + 40))(a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1002FB7EC(1);
    v11 = sub_100341598();
    sub_10001A06C(v11);
  }

  return (*(v6 + 8))(v8, a3);
}

void sub_1003984D4()
{
  v1 = *(type metadata accessor for REMHashtagLabelSpecifier() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_10044B828(v2, *(v2 + *(v1 + 64)));
}

uint64_t sub_10039863C@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for TTRListType.PredefinedSmartListType() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_10044C9D8(v1 + v4, *(v1 + v4 + *(v3 + 64)), a1);
}

uint64_t sub_10039875C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001AA38;

  return sub_100395708(a1, v4, v5, v6);
}

uint64_t sub_100398810(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001AA3C;

  return sub_100394EAC(a1, v4, v5, v7, v6);
}

uint64_t sub_10039893C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_100398A0C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4;
  result = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return result;
  }

  v17 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a4;
    if (a4 <= a3)
    {
      v10 = a3;
    }

    v11 = v10 - a3 + 1;
    while (v9 < v5)
    {
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_16;
      }

      v15 = a3 + v9;
      a1(&v16, &v15);
      if (v6)
      {
        goto LABEL_21;
      }

      v6 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (a4 < a3)
      {
        goto LABEL_17;
      }

      if (v11 == ++v9)
      {
        goto LABEL_18;
      }

      if (v12 == v5)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_20:
  __break(1u);
LABEL_21:

  __break(1u);
  return result;
}

void sub_100398B5C(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = _swiftEmptyArrayStorage;
    sub_1004A1C8C(0, v9, 0);
    v10 = v21;
    v16 = v6 + 32;
    v11 = (a3 + 40);
    while (1)
    {
      v12 = *v11;
      v20[0] = *(v11 - 1);
      v20[1] = v12;
      v13 = v20[0];
      v18(v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v21 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1004A1C8C(v14 > 1, v15 + 1, 1);
        v10 = v21;
      }

      v11 += 2;
      v10[2] = v15 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v8, v17);
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_100398D20(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v13 = v11;
      a1(&v14, &v13);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v14;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_100398E94(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_100058000(&qword_10076BDF0);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - v7;
  v9 = *(a3 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_1004A20F4(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_1004A20F4(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100399058(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_100058000(&qword_10076BDF0);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - v7;
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_1004A20F4(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_1004A20F4(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100399264(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = *(type metadata accessor for TTRReminderSwipeAction() - 8);
    v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    while (1)
    {
      a1(&v12, v10);
      if (v4)
      {
        break;
      }

      v4 = 0;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += v11;
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003993A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a2;
  v41 = sub_100058000(&qword_10076E8E0);
  v5 = __chkstk_darwin(v41);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = v32 - v8;
  v39 = type metadata accessor for TTRRemindersListTreeViewModel.SectionsContainer();
  v9 = *(v39 - 8);
  __chkstk_darwin(v39);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a3 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v44 = v3;
  v38 = v7;
  v45 = _swiftEmptyArrayStorage;
  sub_1004A229C(0, v12, 0);
  v13 = v45;
  v14 = 0;
  v37 = type metadata accessor for REMRemindersListDataView.ListsSectionsModel.List();
  v15 = *(v37 - 8);
  v16 = *(v15 + 16);
  v35 = v15 + 16;
  v36 = v16;
  v17 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v33 = v12;
  v34 = (v15 + 32);
  v32[0] = *(v15 + 72);
  v32[1] = v9 + 32;
  while (1)
  {
    v18 = v13;
    v19 = v9;
    v20 = v11;
    v22 = v40;
    v21 = v41;
    v23 = *(v41 + 48);
    v24 = v37;
    v36(&v40[v23], v17, v37);
    v25 = v38;
    *v38 = v14;
    v26 = &v22[v23];
    v27 = v25;
    (*v34)(&v25[*(v21 + 48)], v26, v24);
    v11 = v20;
    v28 = v44;
    v42(v27);
    v44 = v28;
    if (v28)
    {
      break;
    }

    sub_1000079B4(v27, &qword_10076E8E0);
    v13 = v18;
    v45 = v18;
    v30 = v18[2];
    v29 = v18[3];
    if (v30 >= v29 >> 1)
    {
      sub_1004A229C(v29 > 1, v30 + 1, 1);
      v13 = v45;
    }

    ++v14;
    v13[2] = v30 + 1;
    v9 = v19;
    (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30, v11, v39);
    v17 += v32[0];
    if (v33 == v14)
    {
      return v13;
    }
  }

  sub_1000079B4(v27, &qword_10076E8E0);

  __break(1u);
  return result;
}

uint64_t sub_1003996D0(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v23 = type metadata accessor for IndexPath();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a4;
  v9 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_1004A1DB4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v4;
    v11 = 0;
    v10 = v30;
    v12 = v27;
    if (v27 <= a3)
    {
      v12 = a3;
    }

    v21 = v12 - a3 + 1;
    v22 = v26 + 32;
    while (v11 < v9)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_17;
      }

      v29 = a3 + v11;
      v14 = v8;
      v15 = v28;
      v24(&v29);
      v28 = v15;
      if (v15)
      {
        goto LABEL_22;
      }

      v30 = v10;
      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        sub_1004A1DB4(v16 > 1, v17 + 1, 1);
        v10 = v30;
      }

      v10[2] = v17 + 1;
      v18 = v10 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v17;
      v8 = v14;
      (*(v26 + 32))(v18, v14, v23);
      if (v27 < a3)
      {
        goto LABEL_18;
      }

      if (v21 == ++v11)
      {
        goto LABEL_19;
      }

      if (v13 == v9)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_100399908(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for TTRRemindersListTreeViewModel.Section();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (!v9)
  {
    return v10;
  }

  v22 = _swiftEmptyArrayStorage;
  sub_1004A22E0(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for REMRemindersListDataView.TodayGroupModel.Group() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      sub_1004A22E0(v13 > 1, v14 + 1, 1);
      v10 = v22;
    }

    v10[2] = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

void *sub_100399B0C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v13 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    for (i = (a3 + 16 * v6 + 24); ; i -= 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;
      --v6;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (!v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100399C20(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for REMHashtagLabelSpecifier();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076BDB8);
  v10 = __chkstk_darwin(v9 - 8);
  v34 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  __chkstk_darwin(v12);
  v16 = &v28 - v15;
  v17 = sub_100058000(&qword_10076BDC8);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - v19;
  v21 = sub_10039B7CC(a1);
  sub_10039A0BC(v21 & 1);
  v22 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  swift_beginAccess();
  sub_10039BAA0(v2 + v22, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    return sub_1000079B4(v16, &qword_10076BDB8);
  }

  (*(v18 + 32))(v20, v16, v17);
  (*(v29 + 16))(v6, a1, v30);
  v24 = v31;
  TTRAccountsListsViewModel.HashtagFilterOperation.Option.init(selection:)();
  v25 = TTRValueBasedMenu.children.getter();
  __chkstk_darwin(v25);
  *(&v28 - 2) = v24;
  sub_100398E94(sub_10039BB10, (&v28 - 4), v25);

  sub_10039BCB0(&unk_10076BDD0, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
  v26 = v33;
  TTRValueBasedMenu.init(children:)();
  (*(v32 + 8))(v24, v26);
  (*(v18 + 56))(v14, 0, 1, v17);
  v27 = v34;
  sub_10039BAA0(v2 + v22, v34);
  swift_beginAccess();
  sub_10039BB30(v14, v2 + v22);
  swift_endAccess();
  sub_10039A538(v27);
  sub_1000079B4(v27, &qword_10076BDB8);
  sub_1000079B4(v14, &qword_10076BDB8);
  return (*(v18 + 8))(v20, v17);
}

id sub_10039A0BC(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  __chkstk_darwin(v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for DispatchTime();
  v8 = *(v35 - 8);
  v9 = __chkstk_darwin(v35);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = sub_10039A940();
  v15 = [v14 isHidden];

  if (v15)
  {
    if ((a1 & 1) == 0)
    {
      v16 = static TTRAccesibility.General.Announcements.MoreOptionsShown.getter();
      v18 = v17;
      v19 = 0;
      goto LABEL_9;
    }

    v16 = 0;
    v18 = 0;
  }

  else
  {
    if ((a1 & 1) == 0)
    {
      v19 = 0;
      v16 = 0;
      v18 = 0;
      goto LABEL_9;
    }

    v16 = static TTRAccesibility.General.Announcements.FewerOptionsShown.getter();
    v18 = v20;
  }

  v19 = 1;
LABEL_9:
  result = [*(v1 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton) setHidden:v19];
  if (v18)
  {
    sub_100003540(0, &qword_100777780);
    v30 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v29 = v13;
    v31 = *(v8 + 8);
    v31(v11, v35);
    v22 = swift_allocObject();
    *(v22 + 16) = v16;
    *(v22 + 24) = v18;
    aBlock[4] = sub_10039B328;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001047C;
    aBlock[3] = &unk_100724970;
    v23 = _Block_copy(aBlock);

    v24 = v33;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = &_swiftEmptyArrayStorage;
    sub_10039BCB0(&qword_10076B7D0, &type metadata accessor for DispatchWorkItemFlags);
    sub_100058000(&qword_100780A50);
    v25 = v32;
    v28 = v6;
    sub_10000E188(&qword_10076B7E0, &qword_100780A50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v27 = v29;
    v26 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v23);

    (*(v4 + 8))(v25, v3);
    (*(v34 + 8))(v24, v28);
    return (v31)(v27, v35);
  }

  return result;
}

void sub_10039A538(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100058000(&qword_10076BDC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v27[-v6];
  v7 = sub_100058000(&qword_10076BDB8);
  __chkstk_darwin(v7 - 8);
  v9 = &v27[-v8];
  v10 = sub_100058000(&qword_100780BA0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v27[-v12];
  v14 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_10039BAA0(&v2[v14], v13);
  sub_10039BAA0(a1, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1000079B4(v13, &qword_10076BDB8);
      return;
    }
  }

  else
  {
    sub_10039BAA0(v13, v9);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = *(v5 + 32);
      v20 = &v13[v15];
      v21 = v5;
      v22 = v30;
      v19(v30, v20, v4);
      sub_10000E188(&qword_100780BA8, &qword_10076BDC8);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = v21;
      v23 = *(v21 + 8);
      v23(v22, v4);
      v23(v9, v4);
      sub_1000079B4(v13, &qword_10076BDB8);
      if (v28)
      {
        return;
      }

      goto LABEL_7;
    }

    (*(v5 + 8))(v9, v4);
  }

  v29 = v5;
  sub_1000079B4(v13, &qword_100780BA0);
LABEL_7:
  v17 = sub_10039A940();
  if (v16(&v2[v14], 1, v4))
  {
    v18 = 0;
  }

  else
  {
    v25 = v29;
    v24 = v30;
    (*(v29 + 16))(v30, &v2[v14], v4);
    *(swift_allocObject() + 16) = v2;
    v26 = v2;
    v18 = TTRValueBasedMenu.buildMenu(selectionHandler:)();

    (*(v25 + 8))(v24, v4);
  }

  [v17 setMenu:v18];
}

id sub_10039A940()
{
  v1 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
  }

  else
  {
    v4 = sub_10039AE6C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_10039A9A0(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      sub_1000FCD64(a1);
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10039AA24()
{
  v0 = UIAccessibilityAnnouncementNotification;
  v1 = String._bridgeToObjectiveC()();
  UIAccessibilityPostNotification(v0, v1);
}

char *sub_10039AA7C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu;
  v6 = sub_100058000(&qword_10076BDC8);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v19.receiver = v2;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithReuseIdentifier:", v7);

  v9 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView];
  sub_100058000(&qword_10076B780);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1006322B0;
  v11 = OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView;
  v12 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_labelView];
  *(v10 + 32) = v12;
  v13 = v8;
  v14 = v9;
  v15 = v12;
  *(v10 + 40) = sub_10039A940();
  *(v10 + 48) = sub_10039BBA8();
  sub_100003540(0, &qword_10076B020);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setArrangedSubviews:isa];

  [*&v13[OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton] setCustomAlignmentRectInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v8[v11];

  [v17 setIsAccessibilityElement:0];
  sub_10039AC90();

  return v13;
}

id sub_10039AC90()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  v3 = UIContentSizeCategory.isAccessibilityCategory.getter();
  v4 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsSectionHeaderView_innerStackView);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [v4 setAxis:v3 & 1];

  return [v4 setAlignment:v5];
}

void *sub_10039AE6C()
{
  v0 = sub_100058000(&qword_100769CF8);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for UIButton.Configuration.Size();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  static UIButton.Configuration.plain()();
  (*(v4 + 104))(v6, enum case for UIButton.Configuration.Size.small(_:), v3);
  UIButton.Configuration.buttonSize.setter();
  UIConfigurationTextAttributesTransformer.init(_:)();
  v14 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v14 - 8) + 56))(v2, 0, 1, v14);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  sub_100003540(0, &unk_10077A690);
  (*(v8 + 16))(v11, v13, v7);
  v15 = UIButton.init(configuration:primaryAction:)();
  [v15 setChangesSelectionAsPrimaryAction:1];
  [v15 setShowsMenuAsPrimaryAction:1];
  (*(v8 + 8))(v13, v7);
  return v15;
}

void sub_10039B12C()
{
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView_menu, &qword_10076BDB8);
  v1 = *(v0 + OBJC_IVAR____TtC9Reminders38TTRIAccountsListsTagsSectionHeaderView____lazy_storage___menuButton);
}

uint64_t type metadata accessor for TTRIAccountsListsTagsSectionHeaderView()
{
  result = qword_100780B88;
  if (!qword_100780B88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10039B22C()
{
  sub_10039B2C4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10039B2C4()
{
  if (!qword_100780B98)
  {
    sub_10005D20C(&qword_10076BDC8);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780B98);
    }
  }
}

uint64_t sub_10039B330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v31 = a2;
  v4 = sub_100058000(&qword_10076BDE8);
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v35 = &v26 - v5;
  v32 = type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&qword_100780BB0);
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  v10 = sub_100058000(&qword_10076BDF0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - v12;
  v14 = *(v11 + 16);
  v14(&v26 - v12, a1, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for TTRValueBasedMenuElement.item<A>(_:))
  {
    v16 = *(v11 + 96);
    v28 = v15;
    v16(v13, v10);
    (*(v36 + 32))(v9, v13, v7);
    v17 = v29;
    TTRValueBasedMenuItem.value.getter();
    v27 = &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option;
    sub_10039BCB0(&qword_100780BB8, &type metadata accessor for TTRAccountsListsViewModel.HashtagFilterOperation.Option);
    v18 = v32;
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v30 + 8))(v17, v18);
    v19 = v39;
    v20 = v38;
    v21 = TTRValueBasedMenuItem.title.getter();
    v30 = v22;
    v31 = v21;
    v23 = &enum case for TTRValueBasedMenuItem.SelectionState.on<A>(_:);
    if (v19 != v20)
    {
      v23 = &enum case for TTRValueBasedMenuItem.SelectionState.off<A>(_:);
    }

    (*(v33 + 104))(v35, *v23, v34);
    TTRValueBasedMenuItem.value.getter();
    sub_10039BCB0(&unk_10076BDD0, v27);
    v24 = v37;
    TTRValueBasedMenuItem.init(title:image:state:value:)();
    (*(v36 + 8))(v9, v7);
    return (*(v11 + 104))(v24, v28, v10);
  }

  else if (v15 == enum case for TTRValueBasedMenuElement.separator<A>(_:))
  {
    return (v14)(v37, a1, v10);
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039B7CC(uint64_t a1)
{
  v2 = type metadata accessor for REMHashtagLabelSpecifier();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(v3 + 16);
  v12(&v21 - v10, a1, v2);
  v13 = *(v3 + 88);
  v14 = v13(v11, v2);
  if (v14 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v14 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    return 1;
  }

  v12(v9, v11, v2);
  static REMHashtagLabelSpecifier.empty.getter();
  sub_10039BCB0(&unk_10076B9B0, &type metadata accessor for REMHashtagLabelSpecifier);
  v17 = dispatch thunk of static Equatable.== infix(_:_:)();
  v18 = *(v3 + 8);
  v18(v6, v2);
  v18(v9, v2);
  if (v17)
  {
    v18(v11, v2);
    return 1;
  }

  else if (v13(v11, v2) == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v3 + 96))(v11, v2);

    v19 = *(sub_100058000(&qword_10076B830) + 64);
    v20 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v20 - 8) + 8))(&v11[v19], v20);
    return 0;
  }

  else
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039BAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BDB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039BB30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076BDB8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_10039BBA8()
{
  v0 = [objc_allocWithZone(UIView) init];
  type metadata accessor for UILayoutPriority(0);
  sub_10039BCB0(&unk_10077A6B0, type metadata accessor for UILayoutPriority);
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v1) = v4;
  [v0 setContentHuggingPriority:0 forAxis:v1];
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v2) = v4;
  [v0 setContentCompressionResistancePriority:0 forAxis:v2];
  return v0;
}

uint64_t sub_10039BCB0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10039BCF8(void *a1)
{
  v2 = objc_allocWithZone(TTRUndoManager);
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 initWithDebugIdentifier:v3];

  type metadata accessor for TTREditTodaySectionsInteractor();
  swift_allocObject();
  v5 = v4;
  v6 = a1;
  TTREditTodaySectionsInteractor.init(store:undoManager:)();
  type metadata accessor for TTRIEditTodaySectionsRouter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  sub_10039C020();
  type metadata accessor for TTREditTodaySectionsPresenter();
  swift_allocObject();
  v7 = v5;

  v8 = TTREditTodaySectionsPresenter.init(interactor:router:undoManager:needsDiscardChangesConfirmation:)();
  type metadata accessor for TTREditTodaySectionsModelObject();
  swift_allocObject();
  TTREditTodaySectionsModelObject.init()();

  State.init(wrappedValue:)();
  v9 = (objc_allocWithZone(type metadata accessor for TTRIEditTodaySectionsHostingController(0)) + qword_1007861D0);
  *v9 = v8;
  v9[1] = &protocol witness table for TTREditTodaySectionsPresenter;

  swift_retain_n();

  v10 = TTRIHostingControllerWithCustomUndo.init(rootView:undoManager:)();
  v11 = objc_allocWithZone(UINavigationController);
  v12 = v10;
  v13 = [v11 initWithRootViewController:v12];

  TTREditTodaySectionsInteractor.delegate.setter();

  TTREditTodaySectionsPresenter.delegate.setter();
  swift_unknownObjectRetain();
  TTREditTodaySectionsPresenter.moduleDelegate.setter();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  v14 = v13;
  v15 = [v14 presentationController];
  if (v15)
  {
    v16 = v15;
    [v15 setDelegate:v12];
  }

  TTREditTodaySectionsInteractor.start()();

  return v14;
}

unint64_t sub_10039C020()
{
  result = qword_100780BC0;
  if (!qword_100780BC0)
  {
    type metadata accessor for TTRIEditTodaySectionsRouter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780BC0);
  }

  return result;
}

uint64_t sub_10039C078(uint64_t a1)
{
  if ([v1 localContext])
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
    type metadata accessor for TTRIAnyTreeViewDragSessionContext();
    if (swift_dynamicCast())
    {
      result = v4;
      if (*(v4 + qword_1007A8800) == a1)
      {
        return result;
      }
    }
  }

  else
  {
    sub_1000079B4(v7, &qword_10076AE40);
  }

  return 0;
}

uint64_t sub_10039C1A0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100780BD0);
  v1 = sub_100003E30(v0, qword_100780BD0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10039C268(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(qword_100780EF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TTRITreeViewDropProposal(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000794C(a2, v11, qword_100780EF0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000079B4(v11, qword_100780EF0);
  }

  else
  {
    sub_10039FF24(v11, v15, type metadata accessor for TTRITreeViewDropProposal);
    if (sub_10039D2C4(a1))
    {
      sub_1000079B4(a2, qword_100780EF0);

      sub_10039FF24(v15, a3, type metadata accessor for TTRITreeViewDropProposal);
      return;
    }

    sub_10039FE60(v15);
  }

  v16 = [a1 intent];
  if (v16 >= 4)
  {
    if (qword_100767238 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100003E30(v20, qword_100780BD0);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_100008E04(_swiftEmptyArrayStorage);
    sub_1003F9818("unknown intent", 14, 2);
    __break(1u);
  }

  else
  {
    v17 = v16;
    v18 = sub_100058000(&qword_100780DC0);
    (*(*(v18 - 8) + 56))(v8, (v17 + 1), 4, v18);
    v19 = [a1 operation];

    sub_1000079B4(a2, qword_100780EF0);
    sub_10039FF24(v8, a3 + *(v12 + 20), type metadata accessor for TTRITreeViewDropProposal.Intent);
    *a3 = v19;
  }
}

uint64_t sub_10039C5CC()
{
  sub_10039FE60(v0 + qword_1007A8670);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10039C614()
{
  sub_10039C5CC();

  return swift_deallocClassInstance();
}

uint64_t sub_10039C66C()
{
  swift_beginAccess();
  type metadata accessor for TTRITreeViewDropUpdateCoordinator();
  Dictionary.subscript.getter();
  swift_endAccess();
  return v1;
}

uint64_t sub_10039C754(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_10039F250(a4);

  swift_unknownObjectRelease();
  return v8 & 1;
}

uint64_t sub_10039C7D0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v7 - 8);
  v44 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v42 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v42);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&unk_100780EE0);
  __chkstk_darwin(v14 - 8);
  v16 = (&v40 - v15);
  *(v3 + qword_100780CB8) = a2;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  v17 = sub_10039C66C();
  if (!v17)
  {
    v17 = sub_10039CC8C();
  }

  v18 = v17;
  v19 = sub_100058000(qword_100771F18);
  v20 = *(v19 + 64);
  *v16 = a2;
  v16[1] = a1;
  sub_10000794C(a3, v16 + v20, &unk_100771B10);
  v21 = *(v19 - 8);
  v22 = *(v21 + 56);
  v43 = v19;
  v40 = v21 + 56;
  v41 = v22;
  v22(v16, 0, 1, v19);
  v23 = qword_1007A84A0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v24 = a1;
  sub_10039FDF0(v16, v18 + v23);
  swift_endAccess();
  v25 = *(v3 + qword_100780C98);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v28 = sub_1001893F4();

    v25(v28, v18);
    v42 = *(v42 + 20);
    sub_10039FEBC(&v13[v42], v11, type metadata accessor for TTRITreeViewDropProposal.Intent);
    v29 = sub_100058000(&qword_100780DC0);
    v30 = v13;
    v31 = *(*(v29 - 8) + 48);
    v32 = v31(v11, 4, v29);
    v33 = v30;
    if ((v32 - 2) >= 3)
    {
      if (!v32)
      {
        v34 = type metadata accessor for IndexPath();
        (*(*(v34 - 8) + 8))(v11, v34);
      }
    }

    else
    {
      sub_10015A8D8(v18, v30);
    }

    sub_1001BF42C(v30);
    sub_1001BF6C8();
    v41(v16, 1, 1, v43);
    swift_beginAccess();
    sub_10039FDF0(v16, v18 + v23);
    swift_endAccess();
    v35 = v44;
    sub_10039FEBC(v30 + v42, v44, type metadata accessor for TTRITreeViewDropProposal.Intent);
    v36 = v31(v35, 4, v29);
    if (v36 <= 1)
    {
      v37 = 0;
      if (!v36)
      {
        v38 = type metadata accessor for IndexPath();
        (*(*(v38 - 8) + 8))(v35, v38);
        v37 = 0;
      }
    }

    else if (v36 == 2)
    {
      v37 = 1;
    }

    else if (v36 == 3)
    {
      v37 = 2;
    }

    else
    {
      v37 = 3;
    }

    v39 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:*v33 intent:v37];

    sub_10039FE60(v33);
    return v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039CC8C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for TTRITreeViewDropUpdateCoordinator();
    v2 = sub_1001B7764(v1);

    sub_10039CD48();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039CD48()
{
  swift_beginAccess();
  type metadata accessor for TTRITreeViewDropUpdateCoordinator();
  type metadata accessor for Dictionary();

  Dictionary.subscript.setter();
  return swift_endAccess();
}

id sub_10039CE24(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100058000(&unk_100771B10);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  if (a5)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for IndexPath();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = a3;
  swift_unknownObjectRetain();
  v15 = a1;
  v16 = sub_10039C7D0(v14, a4, v11);

  swift_unknownObjectRelease();
  sub_1000079B4(v11, &unk_100771B10);

  return v16;
}

void sub_10039CFCC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

id sub_10039D050(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = sub_10039FB74(v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t sub_10039D1A0()
{
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectRelease();
}

BOOL sub_10039D2C4(void *a1)
{
  v3 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRITreeViewDropProposal(0);
  sub_10039FEBC(v1 + *(v6 + 20), v5, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v7 = sub_100058000(&qword_100780DC0);
  v8 = (*(*(v7 - 8) + 48))(v5, 4, v7);
  if (v8 <= 1)
  {
    v10 = 0;
    if (!v8)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 8))(v5, v11);
      v10 = 0;
    }
  }

  else
  {
    v9 = 2;
    if (v8 != 3)
    {
      v9 = 3;
    }

    if (v8 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }
  }

  v12 = [objc_allocWithZone(UITableViewDropProposal) initWithDropOperation:*v1 intent:v10];
  v13 = [v12 operation];
  if (v13 == [a1 operation])
  {
    v14 = [v12 intent];
    v15 = [a1 intent];

    return v14 == v15;
  }

  else
  {

    return 0;
  }
}

uint64_t UIDropOperation.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 1702260589;
      }

      return 63;
    }

    return 2037411683;
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6564646962726F66;
      }

      return 63;
    }

    return 0x6C65636E6163;
  }
}

uint64_t sub_10039D51C()
{
  result = type metadata accessor for TTRITreeViewDropProposal(319);
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_10039D698(char *a1, char *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *v4 = *a2;
    v4 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    v6 = *(a3 + 20);
    v7 = sub_100058000(&qword_100780DC0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 4, v7))
    {
      v9 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
      memcpy(&v4[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 16))(&v4[v6], &a2[v6], v11);
      (*(v8 + 56))(&v4[v6], 0, 4, v7);
    }
  }

  return v4;
}

uint64_t sub_10039D834(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 20);
  v4 = sub_100058000(&qword_100780DC0);
  result = (*(*(v4 - 8) + 48))(a1 + v3, 4, v4);
  if (!result)
  {
    v6 = type metadata accessor for IndexPath();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v3, v6);
  }

  return result;
}

char *sub_10039D8F4(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 4, v6))
  {
    v8 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 16))(&a1[v5], &a2[v5], v9);
    (*(v7 + 56))(&a1[v5], 0, 4, v6);
  }

  return a1;
}

char *sub_10039DA24(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 4, v6);
  v10 = v8(&a2[v5], 4, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 24))(&a1[v5], &a2[v5], v14);
      return a1;
    }

    sub_1000079B4(&a1[v5], &qword_100780DC0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v12 - 8) + 64));
    return a1;
  }

  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 16))(&a1[v5], &a2[v5], v11);
  (*(v7 + 56))(&a1[v5], 0, 4, v6);
  return a1;
}

char *sub_10039DBD8(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(&a2[v5], 4, v6))
  {
    v8 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 32))(&a1[v5], &a2[v5], v9);
    (*(v7 + 56))(&a1[v5], 0, 4, v6);
  }

  return a1;
}

char *sub_10039DD08(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(&a1[v5], 4, v6);
  v10 = v8(&a2[v5], 4, v6);
  if (!v9)
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 40))(&a1[v5], &a2[v5], v14);
      return a1;
    }

    sub_1000079B4(&a1[v5], &qword_100780DC0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
    memcpy(&a1[v5], &a2[v5], *(*(v12 - 8) + 64));
    return a1;
  }

  v11 = type metadata accessor for IndexPath();
  (*(*(v11 - 8) + 32))(&a1[v5], &a2[v5], v11);
  (*(v7 + 56))(&a1[v5], 0, 4, v6);
  return a1;
}

uint64_t sub_10039DEE4()
{
  result = type metadata accessor for TTRITreeViewDropProposal.Intent(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_10039DF80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_100058000(&qword_100780DC0);
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 4, v7))
  {
    v12 = type metadata accessor for IndexPath();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
    (*(v8 + 56))(a1, 0, 4, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_10039E110(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780DC0);
  result = (*(*(v2 - 8) + 48))(a1, 4, v2);
  if (!result)
  {
    v4 = type metadata accessor for IndexPath();
    v5 = *(*(v4 - 8) + 8);

    return v5(a1, v4);
  }

  return result;
}

void *sub_10039E1CC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_10039E320(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 24))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100780DC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *sub_10039E4FC(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 4, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 32))(a1, a2, v10);
    (*(v7 + 56))(a1, 0, 4, v6);
    return a1;
  }
}

void *sub_10039E650(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100780DC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 4, v6);
  v10 = v8(a2, 4, v6);
  if (v9)
  {
    if (!v10)
    {
      v11 = type metadata accessor for IndexPath();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
      (*(v7 + 56))(a1, 0, 4, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      v14 = type metadata accessor for IndexPath();
      (*(*(v14 - 8) + 40))(a1, a2, v14);
      return a1;
    }

    sub_1000079B4(a1, &qword_100780DC0);
  }

  v12 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v12);
}

uint64_t sub_10039E854(uint64_t a1)
{
  v2 = sub_100058000(&qword_100780DC0);
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 4, v2);
}

uint64_t sub_10039E8C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100780DC0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 4, v4);
}

uint64_t sub_10039E944()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_10039E9BC()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRITreeViewDropProposal.Intent(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10039FEBC(v1, v8, type metadata accessor for TTRITreeViewDropProposal.Intent);
  v9 = sub_100058000(&qword_100780DC0);
  v10 = (*(*(v9 - 8) + 48))(v8, 4, v9);
  if (v10 <= 1)
  {
    if (v10)
    {
      return 0x6669636570736E75;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v14 = 0;
      v15 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v14 = 0xD000000000000013;
      v15 = 0x8000000100684070;
      sub_10039EDAC();
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13 = v14;
      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else if (v10 == 2)
  {
    return 0x747265736E69;
  }

  else if (v10 == 3)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_10039EC4C()
{
  _StringGuts.grow(_:)(27);

  strcpy(v9, "(operation: ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  v1 = *v0;
  if (*v0 > 1)
  {
    if (v1 == 2)
    {
      v2 = 0xE400000000000000;
      v3 = 2037411683;
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = 0xE400000000000000;
      v3 = 1702260589;
      goto LABEL_11;
    }

LABEL_8:
    v2 = 0xE100000000000000;
    v3 = 63;
    goto LABEL_11;
  }

  if (!v1)
  {
    v2 = 0xE600000000000000;
    v3 = 0x6C65636E6163;
    goto LABEL_11;
  }

  if (v1 != 1)
  {
    goto LABEL_8;
  }

  v2 = 0xE90000000000006ELL;
  v3 = 0x6564646962726F66;
LABEL_11:
  v4 = v2;
  String.append(_:)(*&v3);

  v5._countAndFlagsBits = 0x746E65746E69202CLL;
  v5._object = 0xEA0000000000203ALL;
  String.append(_:)(v5);
  type metadata accessor for TTRITreeViewDropProposal(0);
  v6._countAndFlagsBits = sub_10039E9BC();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9[0];
}

unint64_t sub_10039EDAC()
{
  result = qword_1007720C0;
  if (!qword_1007720C0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007720C0);
  }

  return result;
}

uint64_t sub_10039EE04(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_100058000(qword_100780EF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TTRITreeViewDropProposal(0);
  __chkstk_darwin(v10 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v3 + qword_100780BE8) = a1;
  *(v3 + qword_100780BF0) = a2;
  swift_unknownObjectRetain();
  v13 = a2;
  v14 = [a1 proposal];
  sub_10000794C(a3, v9, qword_100780EF0);
  sub_10039C268(v14, v9, v12);
  sub_1000079B4(a3, qword_100780EF0);
  sub_10039FF24(v12, v3 + qword_1007A8670, type metadata accessor for TTRITreeViewDropProposal);
  return v3;
}

uint64_t sub_10039EF80(void *a1)
{
  v2 = v1;
  v4 = sub_100058000(qword_100780EF0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TTRITreeViewDropProposal(0);
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v12 = [a1 session];
  v13 = sub_10039C66C();
  swift_unknownObjectRelease();
  if (v13)
  {
    sub_1001BFC50();
    sub_1000079B4(v9, qword_100780EF0);
    v14 = qword_1007A8498;
    swift_beginAccess();
    sub_10039FEBC(v13 + v14, v9, type metadata accessor for TTRITreeViewDropProposal);

    v11(v9, 0, 1, v10);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    type metadata accessor for TTRITreeViewDropCoordinator();
    sub_10000794C(v9, v6, qword_100780EF0);
    swift_allocObject();
    v17 = swift_unknownObjectRetain();
    v18 = sub_10039EE04(v17, v16, v6);
    swift_unknownObjectRelease();

    v19 = *(v2 + qword_100780C80);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = result;
      v21 = sub_1001893F4();

      v19(v21, v18);

      return sub_1000079B4(v9, qword_100780EF0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10039F250(uint64_t a1)
{
  v3 = *(v1 + qword_100780C88);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1001893F4();

    v7 = v3(v6, a1);
    return v7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10039F2D8(uint64_t a1)
{
  *(v1 + qword_100780CB8) = a1;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100780C90);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();
    swift_unknownObjectRetain();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10039F384(uint64_t a1)
{
  v3 = *(v1 + qword_100780CA0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1001893F4();

    v3(v6, a1);
    result = sub_10039C66C();
    if (result)
    {
      sub_1001BF48C();
      sub_1001BFC50();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10039F44C(void *a1)
{
  v3 = *((swift_isaMask & *v1) + 0x50);
  v51 = type metadata accessor for Optional();
  v59 = *(v51 - 8);
  __chkstk_darwin(v51);
  v52 = v45 - v4;
  v54 = *(v3 - 8);
  __chkstk_darwin(v5);
  v7 = v45 - v6;
  v60 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v58 = v45 - v9;
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v61 = v45 - v11;
  v62 = v1;
  v12 = *(v1 + qword_100780CA8);
  v13 = qword_100780C78;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = result;
  v16 = sub_1001893F4();

  v12(v16, a1);
  if (sub_10039C66C())
  {
    sub_1001BFC50();
  }

  v17 = [a1 localDragSession];
  v18 = v58;
  if (!v17)
  {
LABEL_32:
    v44 = v62;
    sub_10039CD48();
    *(v44 + qword_100780CB8) = 0;
    return swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = result;
    v20 = sub_1001893F4();

    v21 = sub_10039C078(v20);
    swift_unknownObjectRelease();

    if (v21)
    {
      v22 = qword_1007A8810;
      swift_beginAccess();
      v45[2] = v21;
      v23 = *(v21 + v22);
      v45[3] = a1;
      v49 = v7;
      if ((v23 & 0xC000000000000001) != 0)
      {

        __CocoaSet.makeIterator()();
        swift_getAssociatedConformanceWitness();
        result = Set.Iterator.init(_cocoa:)();
        v23 = v63;
        v24 = v64;
        v25 = v65;
        v57 = v66;
        v26 = v67;
      }

      else
      {
        v27 = -1 << *(v23 + 32);
        v24 = v23 + 56;
        v25 = ~v27;
        v28 = -v27;
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v26 = v29 & *(v23 + 56);

        v57 = 0;
      }

      v30 = v59;
      v59 = (v53 + 56);
      v45[1] = v25;
      v31 = (v25 + 64) >> 6;
      v50 = v53 + 16;
      v56 = (v53 + 32);
      v55 = (v54 + 6);
      v48 = (v54 + 4);
      v46 = v54 + 1;
      v54 = (v53 + 8);
      v47 = (v30 + 1);
      while (1)
      {
        v32 = v52;
        if ((v23 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            v34 = v61;
LABEL_31:

            (*v59)(v34, 1, 1, AssociatedTypeWitness);
            sub_10008BA48();
            goto LABEL_32;
          }

          v35 = v23;
          v36 = v13;
          v37 = v61;
          _forceBridgeFromObjectiveC<A>(_:_:)();
          v34 = v37;
          v13 = v36;
          v23 = v35;
          swift_unknownObjectRelease();
LABEL_25:
          (*v59)(v34, 0, 1, AssociatedTypeWitness);
          (*v56)(v18, v34, AssociatedTypeWitness);
          result = swift_unknownObjectWeakLoadStrong();
          if (!result)
          {
            goto LABEL_35;
          }

          v40 = result;
          sub_10018B550(v18, v32);

          v41 = v60;
          if ((*v55)(v32, 1, v60) != 1)
          {
            break;
          }

          (*v54)(v18, AssociatedTypeWitness);
          result = (*v47)(v32, v51);
          if ((v23 & 0x8000000000000000) == 0)
          {
            goto LABEL_15;
          }
        }

        v42 = v49;
        (*v48)(v49, v32, v41);
        result = swift_unknownObjectWeakLoadStrong();
        if (!result)
        {
          goto LABEL_36;
        }

        v43 = result;
        sub_1001A2A10(v42, 100);

        (*v46)(v42, v41);
        v18 = v58;
        result = (*v54)(v58, AssociatedTypeWitness);
      }

LABEL_15:
      if (v26)
      {
        v33 = v57;
        v34 = v61;
LABEL_24:
        v39 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        (*(v53 + 16))(v34, *(v23 + 48) + *(v53 + 72) * (v39 | (v33 << 6)), AssociatedTypeWitness);
        goto LABEL_25;
      }

      v38 = v57;
      v34 = v61;
      while (1)
      {
        v33 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v33 >= v31)
        {
          goto LABEL_31;
        }

        v26 = *(v24 + 8 * v33);
        ++v38;
        if (v26)
        {
          v57 = v33;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10039FB74(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v2) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v14 = result;
  sub_10019CB14(a1, v8);

  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v9 + 32))(v12, v8, v4);
  v15 = *(v2 + qword_100780CB0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v16 = result;
  v17 = sub_1001893F4();

  v18 = v15(v17, v12);
  (*(v9 + 8))(v12, v4);
  return v18;
}

uint64_t sub_10039FDF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_100780EE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10039FE60(uint64_t a1)
{
  v2 = type metadata accessor for TTRITreeViewDropProposal(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10039FEBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039FF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039FF8C()
{
  result = type metadata accessor for IndexPath();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void **sub_1003A0068(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  if ((v12 | v8) <= 7 && ((*(v11 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((((-9 - v8) | v8) - v9 - v12) | v12) - *(*(v10 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v16 = v6;
    v17 = *a2;
    *a1 = *a2;
    v18 = a2 + v8;
    v19 = (a1 + v8 + 8) & ~v8;
    v20 = (v18 + 8) & ~v8;
    v21 = *(v7 + 16);
    v22 = v17;
    v21(v19, v20, v16);
    (*(v11 + 16))((v19 + v9 + v12) & ~v12, (v20 + v9 + v12) & ~v12, v10);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)];
  }

  return a1;
}

uint64_t sub_1003A0224(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = v5 + 8;
  v7 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v5 + 8))(v7, v4);
  v8 = *(*(a2 + 16) - 8);
  v9 = *(v8 + 8);
  v10 = (v7 + *(v6 + 56) + *(v8 + 80)) & ~*(v8 + 80);

  return v9(v10);
}

void **sub_1003A02EC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v11 = *(v8 + 80);
  v12 = (a1 + v11 + 8) & ~v11;
  v13 = (a2 + v11 + 8) & ~v11;
  v14 = v6;
  v9(v12, v13, v7);
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 16))((*(v10 + 48) + *(v15 + 80) + v12) & ~*(v15 + 80), (*(v10 + 48) + *(v15 + 80) + v13) & ~*(v15 + 80));
  return a1;
}

void **sub_1003A03DC(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (a1 + v12 + 8) & ~v12;
  v14 = (a2 + v12 + 8) & ~v12;
  (*(v10 + 24))(v13, v14, v9);
  v15 = *(*(a3 + 16) - 8);
  (*(v15 + 24))((*(v11 + 40) + *(v15 + 80) + v13) & ~*(v15 + 80), (*(v11 + 40) + *(v15 + 80) + v14) & ~*(v15 + 80));
  return a1;
}

void *sub_1003A04C8(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  v10 = (a1 + v9 + 8) & ~v9;
  v11 = (a2 + v9 + 8) & ~v9;
  (*(v7 + 32))(v10, v11, v6);
  v12 = *(*(a3 + 16) - 8);
  (*(v12 + 32))((*(v8 + 32) + *(v12 + 80) + v10) & ~*(v12 + 80), (*(v8 + 32) + *(v12 + 80) + v11) & ~*(v12 + 80));
  return a1;
}

void **sub_1003A05A8(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  v11 = (a1 + v10 + 8) & ~v10;
  v12 = (a2 + v10 + 8) & ~v10;
  (*(v8 + 40))(v11, v12, v7);
  v13 = *(*(a3 + 16) - 8);
  (*(v13 + 40))((*(v9 + 24) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v9 + 24) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

uint64_t sub_1003A0690(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v7 <= v9)
  {
    v13 = *(v8 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        if (v7 == v14)
        {
          v24 = *(v6 + 48);

          return v24((a1 + v10 + 8) & ~v10);
        }

        else
        {
          v25 = *(v8 + 48);

          return v25((((a1 + v10 + 8) & ~v10) + v11 + v12) & ~v12, v9);
        }
      }

      else
      {
        v23 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = ((v11 + ((v10 + 8) & ~v10) + v12) & ~v12) + *(v8 + 64);
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1003A0918(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = *(v8 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((v13 + ((v12 + 8) & ~v12) + v14) & ~v14) + *(v10 + 64);
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_54:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_54;
            }
          }

          goto LABEL_51;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_54;
      }
    }

LABEL_51:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
  }

  else if (v18)
  {
    a1[v17] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    if (v9 == v16)
    {
      v25 = *(v8 + 56);

      v25(&a1[v12 + 8] & ~v12, a2);
    }

    else
    {
      v26 = *(v10 + 56);

      v26(((&a1[v12 + 8] & ~v12) + v13 + v14) & ~v14, a2, v11);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v24 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v24 = (a2 - 1);
    }

    *a1 = v24;
  }
}

void sub_1003A0C4C()
{
  sub_1001C3488();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void **sub_1003A0D30(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  if (*(v7 + 84))
  {
    v9 = *(v7 + 64);
  }

  else
  {
    v9 = *(v7 + 64) + 1;
  }

  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v12;
  if (*(v11 + 84))
  {
    v14 = *(v11 + 64);
  }

  else
  {
    v14 = *(v11 + 64) + 1;
  }

  v15 = v14 + 7;
  v16 = (v12 | *(v7 + 80)) & 0x100000;
  v17 = *a2;
  *a1 = *a2;
  if ((v12 | v8) > 7 || v16 != 0 || ((v14 + 7 + ((v9 + ((v8 + 8) & ~v8) + v12) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x18)
  {
    v20 = &v17[((v12 | v8) & 0xF8 ^ 0x1F8) & ((v12 | v8) + 16)];
  }

  else
  {
    v33 = v10;
    v34 = a1;
    v21 = ~v8;
    __n = v14;
    v32 = ~v12;
    v22 = a1 + v8;
    v23 = a2 + v8;
    v24 = ((v22 + 8) & v21);
    v25 = ((v23 + 8) & v21);
    v26 = *(v7 + 48);
    v27 = v17;
    if (v26(v25, 1, v6))
    {
      memcpy(v24, v25, v9);
    }

    else
    {
      (*(v7 + 16))(v24, v25, v6);
      (*(v7 + 56))(v24, 0, 1, v6);
    }

    v28 = ((v24 + v9 + v13) & v32);
    v29 = ((v25 + v9 + v13) & v32);
    v20 = v34;
    if ((*(v11 + 48))(v29, 1, v33))
    {
      memcpy(v28, v29, __n);
    }

    else
    {
      (*(v11 + 16))(v28, v29, v33);
      (*(v11 + 56))(v28, 0, 1, v33);
    }

    *((v28 + v15) & 0xFFFFFFFFFFFFFFF8) = *((v29 + v15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v20;
}

uint64_t sub_1003A0FF8(id *a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = (a1 + *(v5 + 80) + 8) & ~*(v5 + 80);
  if (!(*(v5 + 48))(v6, 1, v4))
  {
    (*(v5 + 8))(v6, v4);
  }

  v7 = *(a2 + 16);
  v13 = *(v7 - 8);
  v8 = *(v13 + 80);
  v9 = *(v5 + 64) + v6;
  if (!*(v5 + 84))
  {
    ++v9;
  }

  v10 = v9 + v8;
  result = (*(*(v7 - 8) + 48))((v9 + v8) & ~v8, 1, v7);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & ~v8, v7);
  }

  return result;
}

void **sub_1003A1190(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((a1 + v9 + 8) & ~v9);
  v11 = ((a2 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v6;
  if (v12(v11, 1, v7))
  {
    v14 = *(v8 + 84);
    v15 = *(v8 + 64);
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = v15 + 1;
    }

    memcpy(v10, v11, v16);
  }

  else
  {
    (*(v8 + 16))(v10, v11, v7);
    v18 = *(v8 + 56);
    v17 = v8 + 56;
    v18(v10, 0, 1, v7);
    v14 = *(v17 + 28);
    v15 = *(v17 + 8);
  }

  if (v14)
  {
    v19 = v15;
  }

  else
  {
    v19 = v15 + 1;
  }

  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v19 + v22;
  v24 = ((v10 + v23) & ~v22);
  v25 = ((v11 + v23) & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 16))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  *((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v25 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void **sub_1003A13F0(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = ((a1 + v11 + 8) & ~v11);
  v13 = ((a2 + v11 + 8) & ~v11);
  v14 = *(v10 + 48);
  v15 = v14(v12, 1, v9);
  v16 = v14(v13, 1, v9);
  if (v15)
  {
    if (!v16)
    {
      (*(v10 + 16))(v12, v13, v9);
      (*(v10 + 56))(v12, 0, 1, v9);
      goto LABEL_12;
    }

    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  else
  {
    if (!v16)
    {
      (*(v10 + 24))(v12, v13, v9);
      goto LABEL_12;
    }

    (*(v10 + 8))(v12, v9);
    v17 = *(v10 + 84);
    v18 = *(v10 + 64);
  }

  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = v18 + 1;
  }

  memcpy(v12, v13, v19);
LABEL_12:
  v20 = *(v10 + 64);
  if (!*(v10 + 84))
  {
    ++v20;
  }

  v21 = *(a3 + 16);
  v22 = *(v21 - 8);
  v23 = *(v22 + 80);
  v24 = v20 + v23;
  v25 = ((v12 + v24) & ~v23);
  v26 = ((v13 + v24) & ~v23);
  v27 = *(v22 + 48);
  v28 = v27(v25, 1, v21);
  v29 = v27(v26, 1, v21);
  if (v28)
  {
    if (!v29)
    {
      (*(v22 + 16))(v25, v26, v21);
      (*(v22 + 56))(v25, 0, 1, v21);
      goto LABEL_25;
    }

    v30 = *(v22 + 84);
    v31 = *(v22 + 64);
  }

  else
  {
    if (!v29)
    {
      (*(v22 + 24))(v25, v26, v21);
      goto LABEL_25;
    }

    (*(v22 + 8))(v25, v21);
    v30 = *(v22 + 84);
    v31 = *(v22 + 64);
  }

  if (v30)
  {
    v32 = v31;
  }

  else
  {
    v32 = v31 + 1;
  }

  memcpy(v25, v26, v32);
LABEL_25:
  if (*(v22 + 84))
  {
    v33 = *(v22 + 64);
  }

  else
  {
    v33 = *(v22 + 64) + 1;
  }

  v34 = ((v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v26 + v33 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  v34[1] = v35[1];
  return a1;
}

void *sub_1003A1730(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((a1 + v8 + 8) & ~v8);
  v10 = ((a2 + v8 + 8) & ~v8);
  if ((*(v7 + 48))(v10, 1, v6))
  {
    v11 = *(v7 + 84);
    v12 = *(v7 + 64);
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = v12 + 1;
    }

    memcpy(v9, v10, v13);
  }

  else
  {
    (*(v7 + 32))(v9, v10, v6);
    v15 = *(v7 + 56);
    v14 = v7 + 56;
    v15(v9, 0, 1, v6);
    v11 = *(v14 + 28);
    v12 = *(v14 + 8);
  }

  if (v11)
  {
    v16 = v12;
  }

  else
  {
    v16 = v12 + 1;
  }

  v17 = *(a3 + 16);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  v20 = v16 + v19;
  v21 = ((v9 + v20) & ~v19);
  v22 = ((v10 + v20) & ~v19);
  if ((*(v18 + 48))(v22, 1, v17))
  {
    v23 = *(v18 + 84);
    v24 = *(v18 + 64);
    if (v23)
    {
      v25 = *(v18 + 64);
    }

    else
    {
      v25 = v24 + 1;
    }

    memcpy(v21, v22, v25);
  }

  else
  {
    (*(v18 + 32))(v21, v22, v17);
    v27 = *(v18 + 56);
    v26 = v18 + 56;
    v27(v21, 0, 1, v17);
    v23 = *(v26 + 28);
    v24 = *(v26 + 8);
  }

  if (v23)
  {
    v28 = v24;
  }

  else
  {
    v28 = v24 + 1;
  }

  *((v21 + v28 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v22 + v28 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

void **sub_1003A197C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = ((a1 + v9 + 8) & ~v9);
  v11 = ((a2 + v9 + 8) & ~v9);
  v12 = *(v8 + 48);
  v13 = v12(v10, 1, v7);
  v14 = v12(v11, 1, v7);
  if (v13)
  {
    if (!v14)
    {
      (*(v8 + 32))(v10, v11, v7);
      (*(v8 + 56))(v10, 0, 1, v7);
      goto LABEL_12;
    }

    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  else
  {
    if (!v14)
    {
      (*(v8 + 40))(v10, v11, v7);
      goto LABEL_12;
    }

    (*(v8 + 8))(v10, v7);
    v15 = *(v8 + 84);
    v16 = *(v8 + 64);
  }

  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  memcpy(v10, v11, v17);
LABEL_12:
  v18 = *(v8 + 64);
  if (!*(v8 + 84))
  {
    ++v18;
  }

  v19 = *(a3 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v22 = v18 + v21;
  v23 = ((v10 + v22) & ~v21);
  v24 = ((v11 + v22) & ~v21);
  v25 = *(v20 + 48);
  v26 = v25(v23, 1, v19);
  v27 = v25(v24, 1, v19);
  if (v26)
  {
    if (!v27)
    {
      (*(v20 + 32))(v23, v24, v19);
      (*(v20 + 56))(v23, 0, 1, v19);
      goto LABEL_25;
    }

    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  else
  {
    if (!v27)
    {
      (*(v20 + 40))(v23, v24, v19);
      goto LABEL_25;
    }

    (*(v20 + 8))(v23, v19);
    v28 = *(v20 + 84);
    v29 = *(v20 + 64);
  }

  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v30 = v29 + 1;
  }

  memcpy(v23, v24, v30);
LABEL_25:
  if (*(v20 + 84))
  {
    v31 = *(v20 + 64);
  }

  else
  {
    v31 = *(v20 + 64) + 1;
  }

  v32 = ((v23 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v32[1] = v33[1];
  return a1;
}

uint64_t sub_1003A1CB8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  v9 = *(*(a3 + 16) - 8);
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v9 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  if (v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = 7;
  if (!v11)
  {
    v20 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v14 < a2)
  {
    v21 = ((v20 + v19 + ((v17 + ((v15 + 8) & ~v15) + v18) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 16;
    v22 = v21 & 0xFFFFFFF8;
    if ((v21 & 0xFFFFFFF8) != 0)
    {
      v23 = 2;
    }

    else
    {
      v23 = a2 - v14 + 1;
    }

    if (v23 >= 0x10000)
    {
      v24 = 4;
    }

    else
    {
      v24 = 2;
    }

    if (v23 < 0x100)
    {
      v24 = 1;
    }

    if (v23 >= 2)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v26 = *(a1 + v21);
        if (v26)
        {
          goto LABEL_33;
        }
      }
    }

    else if (v25)
    {
      v26 = *(a1 + v21);
      if (v26)
      {
LABEL_33:
        v27 = v26 - 1;
        if (v22)
        {
          v27 = 0;
          LODWORD(v22) = *a1;
        }

        return v14 + (v22 | v27) + 1;
      }
    }
  }

  if ((v13 & 0x80000000) != 0)
  {
    if (v10 == v14)
    {
      if (v8 >= 2)
      {
        v30 = (*(v7 + 48))((a1 + v15 + 8) & ~v15);
        goto LABEL_50;
      }
    }

    else if (v11 >= 2)
    {
      v30 = (*(*(*(a3 + 16) - 8) + 48))((((a1 + v15 + 8) & ~v15) + v17 + v18) & ~v18, v11);
LABEL_50:
      if (v30 >= 2)
      {
        return v30 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v29 = *a1;
  if (*a1 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v29) = -1;
  }

  return (v29 + 1);
}

void sub_1003A1F0C(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for IndexPath() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = *(*(a4 + 16) - 8);
  v13 = *(v12 + 84);
  v14 = *(v8 + 64);
  v15 = *(v8 + 80);
  v16 = *(v12 + 80);
  v17 = v13 - 1;
  if (!v13)
  {
    v17 = 0;
  }

  if (v11 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v11;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  if (v10)
  {
    v20 = v14;
  }

  else
  {
    v20 = v14 + 1;
  }

  if (v13)
  {
    v21 = *(v12 + 64);
  }

  else
  {
    v21 = *(v12 + 64) + 1;
  }

  v22 = ((v21 + ((v20 + ((v15 + 8) & ~v15) + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v21 + ((v20 + ((v15 + 8) & ~v15) + v16) & ~v16) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v23 = a3 - v19 + 1;
  }

  else
  {
    v23 = 2;
  }

  if (v23 >= 0x10000)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  if (v23 < 0x100)
  {
    v24 = 1;
  }

  if (v23 >= 2)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v19 < a3)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (a2 > v19)
  {
    if (v22)
    {
      v27 = 1;
    }

    else
    {
      v27 = a2 - v19;
    }

    if (v22)
    {
      v28 = ~v19 + a2;
      bzero(a1, v22);
      *a1 = v28;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        *(a1 + v22) = v27;
      }

      else
      {
        *(a1 + v22) = v27;
      }
    }

    else if (v26)
    {
      *(a1 + v22) = v27;
    }

    return;
  }

  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *(a1 + v22) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_50;
    }

    *(a1 + v22) = 0;
LABEL_49:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  if (!v26)
  {
    goto LABEL_49;
  }

  *(a1 + v22) = 0;
  if (!a2)
  {
    return;
  }

LABEL_50:
  if ((v18 & 0x80000000) != 0)
  {
    v30 = (a1 + v15 + 8) & ~v15;
    if (v11 == v19)
    {
      if (v10 >= 2)
      {
        v31 = *(v9 + 56);

        v31(v30, a2 + 1);
      }
    }

    else if (v13 >= 2)
    {
      v32 = *(v12 + 56);

      v32((v30 + v20 + v16) & ~v16, a2 + 1, v13);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v29 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v29 = a2 - 1;
    }

    *a1 = v29;
  }
}

uint64_t sub_1003A21E8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v4;
    swift_getTupleTypeLayout2();
    v6 = &v3;
    swift_getTupleTypeLayout2();
    v7 = &v2;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t *sub_1003A22C8(uint64_t *__dst, uint64_t *a2, uint64_t a3)
{
  v3 = __dst;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 9;
  v8 = *(v4 + 80);
  if ((v8 & 0x1000F8) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *v3 = *a2;
    v3 = (v10 + (((v8 & 0xF8) + 23) & ~(v8 & 0xF8) & 0x1F8));

    return v3;
  }

  v12 = v6 + 8;
  v13 = (v6 + 8) & 0xFFFFFFF8;
  v14 = *(a2 + v6 + 8);
  if (v13)
  {
    v15 = v14 >= 3;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v14 = *a2 + 3;
  }

  switch(v14)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 2;
      return v3;
    case 1u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 1;
      return v3;
    case 0u:
      (*(v4 + 16))(__dst);
      *((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      *(v3 + v12) = 0;
      return v3;
  }

  return memcpy(__dst, a2, v7);
}

_DWORD *sub_1003A24A4(_DWORD *result, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = v2;
  v4 = *(result + v2);
  if (v4 >= 3 && v3 != 0)
  {
    v4 = *result + 3;
  }

  if (v4 <= 2)
  {
    return (*(*(*(a2 + 16) - 8) + 8))();
  }

  return result;
}

_BYTE *sub_1003A2530(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = *(a2 + v6 + 8);
  if (v8 >= 3 && v6 != -8)
  {
    v8 = *a2 + 3;
  }

  switch(v8)
  {
    case 2u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 2;
      goto LABEL_12;
    case 1u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 1;
LABEL_12:
      __dst[v7] = v12;
      return __dst;
    case 0u:
      (*(v4 + 16))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      __dst[v7] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v6 + 9);
}

unsigned __int8 *sub_1003A26C8(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = __dst[v8 + 8];
  if (v10 >= 3 && v8 != -8)
  {
    v10 = *__dst + 3;
  }

  if (v10 <= 2)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v12 = __src[v9];
  if (v8 != -8 && v12 >= 3)
  {
    v12 = *__src + 3;
  }

  switch(v12)
  {
    case 2u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 2;
      goto LABEL_21;
    case 1u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 1;
LABEL_21:
      __dst[v9] = v14;
      return __dst;
    case 0u:
      (*(v6 + 16))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v8 + 9);
}

_BYTE *sub_1003A28D0(_BYTE *__dst, _DWORD *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v6 + 8;
  v8 = *(a2 + v6 + 8);
  if (v8 >= 3 && v6 != -8)
  {
    v8 = *a2 + 3;
  }

  switch(v8)
  {
    case 2u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 2;
      goto LABEL_12;
    case 1u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      v12 = 1;
LABEL_12:
      __dst[v7] = v12;
      return __dst;
    case 0u:
      (*(v4 + 32))(__dst);
      *(&__dst[v5 + 7] & 0xFFFFFFFFFFFFFFF8) = *((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
      __dst[v7] = 0;
      return __dst;
  }

  return memcpy(__dst, a2, v6 + 9);
}

unsigned __int8 *sub_1003A2A68(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  if (__dst == __src)
  {
    return __dst;
  }

  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 8;
  v10 = __dst[v8 + 8];
  if (v10 >= 3 && v8 != -8)
  {
    v10 = *__dst + 3;
  }

  if (v10 <= 2)
  {
    (*(v6 + 8))(__dst, v5);
  }

  v12 = __src[v9];
  if (v8 != -8 && v12 >= 3)
  {
    v12 = *__src + 3;
  }

  switch(v12)
  {
    case 2u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 2;
      goto LABEL_21;
    case 1u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v14 = 1;
LABEL_21:
      __dst[v9] = v14;
      return __dst;
    case 0u:
      (*(v6 + 32))(__dst, __src, v5);
      *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      __dst[v9] = 0;
      return __dst;
  }

  return memcpy(__dst, __src, v8 + 9);
}

uint64_t sub_1003A2C70(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v4 = v3 + 9;
  if ((v3 + 9) <= 3)
  {
    v5 = ((a2 + 3) >> 8) + 1;
  }

  else
  {
    v5 = 2;
  }

  if (v5 >= 0x10000)
  {
    v6 = 4;
  }

  else
  {
    v6 = 2;
  }

  if (v5 < 0x100)
  {
    v6 = 1;
  }

  if (v5 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = *&a1[v4];
      if (*&a1[v4])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *&a1[v4];
      if (v8)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    v12 = a1[v3 + 8];
    if (v12 >= 4)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_25;
  }

  v8 = a1[v4];
  if (!a1[v4])
  {
    goto LABEL_25;
  }

LABEL_21:
  v10 = (v8 - 1) << (8 * v4);
  if (v4 <= 3)
  {
    v11 = *a1;
  }

  else
  {
    v10 = 0;
    v11 = *a1;
  }

  return (v11 | v10) + 253;
}

void sub_1003A2D50(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  if (a3 < 0xFD)
  {
    v9 = 0;
    if (a2 > 0xFC)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (v9 > 1)
    {
      if (v9 != 2)
      {
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      *&a1[v6] = 0;
    }

    else if (v9)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_32:
      a1[v5 + 8] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_32;
  }

  if (v6 <= 3)
  {
    v7 = ((a3 + 3) >> 8) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (a2 <= 0xFC)
  {
    goto LABEL_22;
  }

LABEL_14:
  v10 = a2 - 253;
  v11 = (a2 - 253) >> 8;
  bzero(a1, v5 + 9);
  if (v6 <= 3)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 1;
  }

  if (v6 <= 3)
  {
    *a1 = v10;
    if (v9 > 1)
    {
LABEL_19:
      if (v9 == 2)
      {
        *&a1[v6] = v12;
      }

      else
      {
        *&a1[v6] = v12;
      }

      return;
    }
  }

  else
  {
    *a1 = v10;
    if (v9 > 1)
    {
      goto LABEL_19;
    }
  }

  if (v9)
  {
    a1[v6] = v12;
  }
}

uint64_t sub_1003A2E90(_DWORD *a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = v2;
  v4 = *(a1 + v2);
  if (v4 >= 3 && v3 != 0)
  {
    return (*a1 + 3);
  }

  return v4;
}

void sub_1003A2ED8(unsigned int *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (a2 > 2)
  {
    v4 = v3 + 8;
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = a2;
    }

    *(a1 + v4) = v5;
    if (v4)
    {
      v6 = a2 - 3;
      bzero(a1, v4);
      *a1 = v6;
    }
  }

  else
  {
    *(a1 + v3 + 8) = a2;
  }
}

uint64_t sub_1003A2F74(uint64_t a1)
{
  v7 = a1;
  v8 = sub_1003A3020();
  v3 = sub_1000317B8(v6);
  (*(*(a1 - 8) + 16))(v3, v1, a1);
  sub_10000C36C(v6, v7);
  v4 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  sub_100004758(v6);
  return v4;
}

unint64_t sub_1003A3020()
{
  result = qword_100781080;
  if (!qword_100781080)
  {
    type metadata accessor for TTRRemindersListViewModel.Item();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100781080);
  }

  return result;
}

id sub_1003A3078(uint64_t *a1, void **a2, void *a3, uint64_t a4)
{
  v105 = a4;
  v110 = a3;
  v111 = a1;
  v100 = a2;
  v4 = type metadata accessor for TTRRemindersListLayout();
  v114 = *(v4 - 8);
  v115 = v4;
  v5 = __chkstk_darwin(v4);
  v94 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v108 = &v93 - v8;
  v9 = __chkstk_darwin(v7);
  v93 = &v93 - v10;
  __chkstk_darwin(v9);
  v106 = &v93 - v11;
  v12 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  v13 = __chkstk_darwin(v12 - 8);
  v104 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v102 = &v93 - v15;
  v101 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v101);
  v113 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TTRListType.SortingCapability();
  v99 = *(v103 - 1);
  __chkstk_darwin(v103);
  v98 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for TTRRemindersListDefaultListType();
  v97 = *(v109 - 8);
  __chkstk_darwin(v109);
  v96 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  __chkstk_darwin(v19 - 8);
  v95 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v21 - 8);
  v112 = (&v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v23 = *(v107 - 8);
  __chkstk_darwin(v107);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TTRListType.PredefinedSmartListType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v31 = *(v30 - 1);
  v32 = __chkstk_darwin(v30);
  v34 = &v93 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v93 - v35;
  (*(v27 + 104))(v29, enum case for TTRListType.PredefinedSmartListType.all(_:), v26);
  TTRListType.PredefinedSmartListType.fallbackSortingStyle.getter();
  (*(v27 + 8))(v29, v26);
  v37 = v100;
  v38 = *v100;
  (*(v23 + 104))(v25, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v107);
  v39 = *(v31 + 16);
  v107 = v36;
  v39(v34, v36, v30);
  type metadata accessor for TTRShowGroupDataModelSource();
  swift_allocObject();
  v40 = v38;
  v41 = v110;
  v42 = TTRShowGroupDataModelSource.init(group:store:countCompleted:sortingStyle:canChangeSortingStyle:)();
  v43 = v37;
  v44 = v112;
  sub_10010BD5C(v37, v112, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v45 = v95;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v46 = v96;
  (*(v97 + 104))(v96, enum case for TTRRemindersListDefaultListType.any(_:), v109);
  v47 = v44;
  sub_10007786C(v44, v45, v46, v121);
  v48 = v121[0];
  v109 = v31;
  v110 = v30;
  v49 = v98;
  (*(v31 + 104))(v98, enum case for REMRemindersListDataView.SortingStyle.default(_:), v30);
  (*(v99 + 104))(v49, enum case for TTRListType.SortingCapability.notSupported(_:), v103);
  type metadata accessor for TTRShowGroupViewModelSource();
  v50 = swift_allocObject();

  v103 = v48;
  v51 = sub_1003A6800(v42, v103, v49, 0, v50);
  sub_10010BD5C(v43, v47, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v121, v118);
  v52 = sub_1003A9060(&qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource);
  v53 = v113;
  sub_10010BD5C(v47, v113, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v54 = v101;
  sub_10010BCAC(v118, v53 + *(v101 + 28));
  v55 = (v53 + *(v54 + 32));
  *v55 = v51;
  v55[1] = v52;
  v56 = v118[0];
  sub_100058000(&qword_10076C230);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v120, v117, &qword_100769608);
  v58 = *(v117[5] + 8);
  *(v57 + 32) = v117[4];
  *(v57 + 40) = v58;
  sub_10000794C(&v119, v116, &qword_100769600);
  swift_retain_n();
  v59 = v56;
  swift_unknownObjectRelease();
  *(v57 + 48) = v116[3];
  sub_100004758(v116);
  sub_100004758(v117);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v60 = swift_allocObject();
  v61 = sub_1003A6F44(v59, v51, v57, v60, &qword_1007810B0, type metadata accessor for TTRShowGroupViewModelSource, sub_1003A6DC8);
  v99 = v51;

  sub_10010BD08(v118);
  sub_10010BE0C(v112, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v62 = *(v54 + 36);
  v100 = v61;
  *(v53 + v62) = v61;
  v63 = v102;
  sub_100078BBC(v102);
  v101 = type metadata accessor for TTRIShowGroupPresenter();
  v64 = swift_allocObject();
  v65 = (v64 + OBJC_IVAR____TtC9Reminders22TTRIShowGroupPresenter_dataModelSource);
  *v65 = v42;
  v65[1] = &protocol witness table for TTRShowGroupDataModelSource;
  v66 = v104;
  sub_10010BD5C(v63, v104, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v112 = v42;

  v67 = v105;
  swift_unknownObjectRetain();
  v68 = sub_1003A579C(v66, v67, v64, &off_100721128, sub_10022E03C, sub_10022E044, sub_10022E04C, sub_10022E054);
  sub_10010BE0C(v63, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v69 = *(v68 + 144);
  ObjectType = swift_getObjectType();
  v71 = *(v69 + 112);

  if (v71(ObjectType, v69))
  {
    swift_getObjectType();
    v72 = v93;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v73 = v106;
    (*(v114 + 32))(v106, v72, v115);
  }

  else
  {
    v73 = v106;
    (*(v114 + 104))(v106, enum case for TTRRemindersListLayout.list(_:), v115);
  }

  v74 = sub_1003A4A1C(v73, v68);
  v105 = v75;
  v77 = v76;
  (*(v114 + 8))(v73, v115);
  v106 = swift_getObjectType();
  *(v68 + 24) = *(v77 + 8);
  swift_unknownObjectWeakAssign();
  v78 = *(v68 + 144);
  v79 = swift_getObjectType();
  v80 = *(v78 + 112);

  if (v80(v79, v78))
  {
    swift_getObjectType();
    v81 = v94;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v82 = v108;
    (*(v114 + 32))(v108, v81, v115);
  }

  else
  {

    v82 = v108;
    (*(v114 + 104))(v108, enum case for TTRRemindersListLayout.list(_:), v115);
  }

  v83 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController());
  v84 = v74;
  v85 = sub_1003A71D4(v68, v84, v105, v82, 0, 1, 0, v83, type metadata accessor for TTRIShowGroupPresenter);

  v86 = *(v77 + 32);
  v87 = v85;
  v86(v85, &off_100723D78, v106, v77);
  sub_1003A9060(&qword_1007810B8, type metadata accessor for TTRIShowGroupPresenter);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1003A9060(&qword_1007810C0, type metadata accessor for TTRShowGroupViewModelSource);

  v88 = v87;
  dispatch thunk of TTRShowGroupDataModelSource.delegate.setter();

  sub_10056FEB0(v89, &off_10071A9B0);

  v100[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v122, v118, &qword_100769600);
  v90 = v118[4];
  swift_unknownObjectRelease();
  *(v90 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v118);
  sub_10000794C(&v123, v118, &qword_100769608);
  swift_getObjectType();
  sub_1003A9060(&qword_1007810C8, type metadata accessor for TTRIShowGroupPresenter);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v118);
  v91 = v111;
  v111[3] = v101;
  v91[4] = &off_100714530;

  swift_unknownObjectRelease();
  *v91 = v68;
  (*(v109 + 8))(v107, v110);
  sub_10010BE0C(v113, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v121);
  return v88;
}