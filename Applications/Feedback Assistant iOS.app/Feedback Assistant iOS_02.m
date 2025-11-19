uint64_t sub_100066768(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100041AA0(&qword_10010A0A8, &qword_1000C3070);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100066A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100065F3C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_100066768(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_100065F3C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_100066BB0();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

void *sub_100066BB0()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A0A8, &qword_1000C3070);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100066D28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

uint64_t sub_100066DCC(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = qword_100108DE8;
  v13 = a2;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = qword_10010CEC0;
  Logger.init(_:)();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v13;
    v18 = a1;
    v19 = a3;
    v20 = v17;
    v21 = swift_slowAlloc();
    v30 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_10008D954(0xD000000000000023, 0x80000001000CC7C0, &v30);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v20, 0xCu);
    sub_1000466E4(v21);

    a3 = v19;
    a1 = v18;
    v13 = v29;
  }

  (*(v7 + 8))(v10, v6);
  v22 = *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
  if (v22)
  {
    v23 = v22;
    v24 = [v23 deConsentTextsForGatheringAttachments];
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25[2])
    {
      v26 = v25[5];
      v27 = v25[4] & 0xFFFFFFFFFFFFLL;
      if ((v26 & 0x2000000000000000) != 0)
      {
        v27 = HIBYTE(v26) & 0xF;
      }

      if (v27)
      {
        *(a1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) = 0;
        sub_10005CDE4();
      }
    }

    static FBKDEConsentAlertPresenter.presentConsentTexts(_:from:presentedConsent:cancelAction:andContinue:)();
  }

  else
  {
    v13[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting] = 1;
    sub_10005CDE4();
    sub_10005E994(a3 & 1);
  }
}

void sub_1000670DC(char *a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
  if (v5)
  {
    v6 = a2;
    if ([v5 hasUnmetRequirementAttachments])
    {
      v7 = objc_opt_self();
      v8 = [v7 mainBundle];
      v50._object = 0xE000000000000000;
      v9._object = 0x80000001000CC6D0;
      v9._countAndFlagsBits = 0xD000000000000011;
      v10._countAndFlagsBits = 0;
      v10._object = 0xE000000000000000;
      v50._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v50);

      v11 = [v7 mainBundle];
      v51._object = 0xE000000000000000;
      v12._countAndFlagsBits = 0xD000000000000019;
      v12._object = 0x80000001000CC6F0;
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      v51._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v51);

      v14 = String._bridgeToObjectiveC()();

      v15 = String._bridgeToObjectiveC()();

      v41 = [objc_opt_self() alertControllerWithTitle:v14 message:v15 preferredStyle:1];

      v16 = [v7 mainBundle];
      v52._object = 0xE000000000000000;
      v17._object = 0x80000001000CC710;
      v17._countAndFlagsBits = 0xD000000000000011;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      v52._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v52);

      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = sub_100068D44;
      v19[4] = v4;
      v20 = a1;

      v21 = String._bridgeToObjectiveC()();

      v47 = sub_100068D4C;
      v48 = v19;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E1420;
      v22 = _Block_copy(&aBlock);

      v23 = objc_opt_self();
      v42 = [v23 actionWithTitle:v21 style:0 handler:v22];
      _Block_release(v22);

      [v41 addAction:v42];
      v24 = [v7 mainBundle];
      v53._object = 0xE000000000000000;
      v25._countAndFlagsBits = 0x575F54494D425553;
      v25._object = 0xEF53454C49465F4FLL;
      v26._countAndFlagsBits = 0;
      v26._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v24, v26, v53);

      v27 = swift_allocObject();
      v27[2] = v20;
      v27[3] = sub_100068D44;
      v27[4] = v4;
      v28 = v20;

      v29 = String._bridgeToObjectiveC()();

      v47 = sub_100068D58;
      v48 = v27;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E1470;
      v30 = _Block_copy(&aBlock);

      v31 = [v23 actionWithTitle:v29 style:0 handler:v30];
      _Block_release(v30);

      [v41 addAction:v31];
      v32 = [v7 mainBundle];
      v54._object = 0xE000000000000000;
      v33._countAndFlagsBits = 0x5F4F545F4B434142;
      v33._object = 0xED00005446415244;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      v54._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v33, 0, v32, v34, v54);

      v35 = swift_allocObject();
      *(v35 + 16) = v28;
      v36 = v28;
      v37 = String._bridgeToObjectiveC()();

      v47 = sub_100068DC4;
      v48 = v35;
      aBlock = _NSConcreteStackBlock;
      v44 = 1107296256;
      v45 = sub_100040DDC;
      v46 = &unk_1000E14C0;
      v38 = _Block_copy(&aBlock);

      v39 = [v23 actionWithTitle:v37 style:1 handler:v38];
      _Block_release(v38);

      [v41 addAction:v39];
      [v36 presentViewController:v41 animated:1 completion:0];

      return;
    }
  }

  else
  {
    v40 = a2;
  }

  sub_10005E458(0, a2);
}

id sub_100067768()
{
  sub_1000605EC();
  if (v2)
  {
    v3 = v1;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (((v4 != 0) & v3) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
      if (v5)
      {
        v6 = v4;
        v7 = v5;
        v8 = [v7 trailingSwipeActionConfigurationWithAttachment:v6 fromViewController:v0];
LABEL_9:
        v12 = v8;

        swift_unknownObjectRelease();
        return v12;
      }
    }

    else
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        if (v3)
        {
          v10 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController);
          if (v10)
          {
            v11 = v9;
            v7 = v10;
            v8 = [v7 trailingSwipeActionConfigurationWithDevice:v11 fromViewController:v0];
            goto LABEL_9;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void sub_10006787C()
{
  v1 = v0;
  v2 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_47;
  }

  v4 = Strong;
  [Strong resignFirstResponder];

  v5 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_dataSource];
  if (!v5)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = v5;
  dispatch thunk of UITableViewDiffableDataSource.itemIdentifier(for:)();

  v7 = v60;
  if (!v60)
  {
LABEL_54:
    _StringGuts.grow(_:)(44);

    aBlock = 0xD00000000000002ALL;
    v60 = 0x80000001000CC8D0;
    type metadata accessor for IndexPath();
    sub_100068EF4(&qword_10010A0D8, &type metadata accessor for IndexPath);
    v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v58);

    goto LABEL_55;
  }

  v8 = aBlock;
  static os_log_type_t.default.getter();
  v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C29F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100047484();
  *(v10 + 32) = v8;
  *(v10 + 40) = v7;

  os_log(_:dso:log:_:_:)();

  v11 = (*&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell] + OBJC_IVAR____TtC18Feedback_Assistant25FBAExpandingTextInputCell_itemIdentifier);
  v12 = v8 == *v11 && v7 == v11[1];
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return;
  }

  if (v8 == 0xD00000000000001ALL && v7 == 0x80000001000C2EA0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = sub_10006395C();
    [v1 performSegueWithIdentifier:v13 sender:v14];

    v15 = [v1 tableView];
    if (v15)
    {
LABEL_14:
      v16 = v15;

      v17.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v16 deselectRowAtIndexPath:v17.super.isa animated:1];
LABEL_15:

LABEL_16:
      return;
    }

    goto LABEL_48;
  }

  if ((v8 != qword_100109D10 || v7 != off_100109D18) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v43._countAndFlagsBits = 0xD000000000000015;
    v43._object = 0x80000001000CC2E0;
    if (String.hasPrefix(_:)(v43))
    {
      v44 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup];
      if (v44)
      {
        v45 = v44;

        v46 = objc_opt_self();
        v17.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v47 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v63 = sub_100068F3C;
        v64 = v47;
        aBlock = _NSConcreteStackBlock;
        v60 = 1107296256;
        v61 = sub_100060A74;
        v62 = &unk_1000E1588;
        v48 = _Block_copy(&aBlock);

        [v46 showValidationChoicesForCellAtIndexPath:v17.super.isa followup:v45 fromViewController:v1 completion:v48];
        _Block_release(v48);

        goto LABEL_16;
      }

      while (1)
      {
LABEL_55:
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    v49 = OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController;
    v50 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
    if (v50 && (v51 = v50, v52 = String._bridgeToObjectiveC()(), v8 = [v51 maybeAttachmentWithIdentifier:v52], v51, v52, v8))
    {
      if ([v8 canStartGathering])
      {
        v53 = *&v1[v49];
        if (!v53)
        {
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        v54 = v53;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        [v54 gatherAttachment:v8 answers:isa];

        goto LABEL_44;
      }
    }

    else
    {
      v15 = [v1 tableView];
      if (v15)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    if ([v8 isReadyToDisplayContents])
    {
      v56 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v1 fbkPresetAttachment:v8 fromIndexPath:v56];
    }

    else
    {
      static os_log_type_t.info.getter();
      os_log(_:dso:log:_:_:)();
    }

LABEL_44:
    v57 = [v1 tableView];
    if (v57)
    {
      v16 = v57;

      v17.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [v16 deselectRowAtIndexPath:v17.super.isa animated:1];

      goto LABEL_15;
    }

    goto LABEL_52;
  }

  v18 = [v1 tableView];
  if (!v18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v19 = v18;

  v20 = IndexPath._bridgeToObjectiveC()().super.isa;
  v21 = [v19 cellForRowAtIndexPath:v20];

  v22 = sub_10005D2A8();
  v23 = v21;
  static os_log_type_t.info.getter();
  v24 = [objc_opt_self() appHandle];
  if (!v24)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v25 = v24;
  os_log(_:dso:log:_:_:)();

  v26 = [objc_opt_self() mainBundle];
  v65._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0x415454415F444441;
  v27._object = 0xEE00544E454D4843;
  v28.value._countAndFlagsBits = 0x74536E6F6D6D6F43;
  v28.value._object = 0xED000073676E6972;
  v29._countAndFlagsBits = 0x6174744120646441;
  v29._object = 0xEE00746E656D6863;
  v65._countAndFlagsBits = 0;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v65);

  sub_10004D740(v1);
  v32 = v31;
  v33 = objc_allocWithZone(type metadata accessor for FBAActionSheetController());
  v34 = sub_100069D74(v30._countAndFlagsBits, v30._object, 0, 0, v32);
  v35 = [v1 tableView];
  if (!v35)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v36 = v35;
  v37 = IndexPath._bridgeToObjectiveC()().super.isa;
  [v36 deselectRowAtIndexPath:v37 animated:1];

  if (v23)
  {
    v38 = v23;
    v39 = [v34 popoverPresentationController];
    if (v39)
    {
      v40 = v39;
      [v38 bounds];
      [v40 setSourceRect:?];
      [v40 setSourceView:v38];
      [v40 setPermittedArrowDirections:2];

      v22 = v40;
    }
  }

  else
  {
    v38 = v22;
  }

  v41 = [v34 popoverPresentationController];
  if (v41)
  {
    v42 = v41;
    [v41 setPermittedArrowDirections:3];
  }

  [v1 presentViewController:v34 animated:1 completion:0];
}

void sub_1000681EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(FBADevicePickingNavigationController);
  sub_1000497E4(0, &qword_1001098C8, FBKGroupedDevice_ptr);
  sub_10005327C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v11[4] = a2;
  v11[5] = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100087F70;
  v11[3] = &unk_1000E1088;
  v8 = _Block_copy(v11);

  v9 = [v6 initWithDeviceChoices:isa allowsMultipleSelection:1 completion:v8];

  _Block_release(v8);

  if (v9)
  {
    v10 = v9;
    sub_100088000(v10, v3);
  }

  else
  {
    __break(1u);
  }
}

void sub_100068320(_BYTE *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 2) = v5;
  *(v6 + 3) = sub_10006894C;
  *(v6 + 4) = v4;
  if (*&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(Strong + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_followup);
      _Block_copy(a2);

      if (!v9)
      {
        static os_log_type_t.error.getter();
        v10 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
        os_log(_:dso:log:_:_:)();
      }

      sub_1000644F8();
      v11 = a2[2];
      v12 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_devicesController];
      v11(a2, v12);
    }

    else
    {
      _Block_copy(a2);
    }

LABEL_9:

    return;
  }

  if (a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup])
  {
    _Block_copy(a2);

    static os_log_type_t.default.getter();
    v13 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log];
    os_log(_:dso:log:_:_:)();
    v14 = &a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v15 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler];
    v16 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_createFollowupSavedHandler + 8];
    *v14 = sub_1000689A0;
    v14[1] = v6;
    sub_10004BA44(v15);

    goto LABEL_9;
  }

  if (a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isUnsolicited] == 1)
  {
    a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isCreatingFollowup] = 1;
    v17 = objc_opt_self();
    _Block_copy(a2);

    v18 = [v17 sharedInstance];
    v19 = *&a1[OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_contentItem];
    if (v19)
    {
      v20 = v18;
      v21 = swift_allocObject();
      v21[2] = a1;
      v21[3] = sub_1000689A0;
      v21[4] = v6;
      aBlock[4] = sub_1000689B0;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000565DC;
      aBlock[3] = &unk_1000E1038;
      v22 = _Block_copy(aBlock);
      v23 = v19;
      v24 = a1;

      [v20 createUnsolicitedFeedbackFollowupForItem:v23 completion:v22];

      _Block_release(v22);

      return;
    }

    _Block_release(a2);
    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10006874C()
{
  v1 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = Strong;

  v4 = v3[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v4 != 1)
  {
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v7 resignFirstResponder];
}

void sub_100068824()
{
  static os_log_type_t.info.getter();
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  v2 = sub_100063AC4();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = Strong;

  v5 = v4[OBJC_IVAR____TtC18Feedback_Assistant20FBAExpandingTextView_isEditing];
  if (v5 == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController____lazy_storage___cachedCommentsCell);
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      [v8 resignFirstResponder];

      goto LABEL_5;
    }

LABEL_9:
    __break(1u);
    return;
  }

LABEL_5:

  sub_10005F8DC();
}

uint64_t sub_100068914()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068960()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068A18()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068A58()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068A90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(a1, a2, *a3, a3[1]);
}

uint64_t sub_100068AC0()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100068B08()
{
  v1 = *(v0 + 16);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 32);
    v5 = *(v0 + 24);
    sub_10006256C(v4, 0, 0, v1 + 1, v2, v3);
  }
}

uint64_t sub_100068B4C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_100068BA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068C00(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100068C18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068C60()
{
  v1 = *(v0 + 16);
  static os_log_type_t.default.getter();

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100068CDC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100068D58()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  static os_log_type_t.default.getter();
  v4 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);
  os_log(_:dso:log:_:_:)();
  return v2(1);
}

uint64_t sub_100068DC4()
{
  v1 = *(v0 + 16);
  static os_log_type_t.default.getter();
  v2 = *(v1 + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_log);

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_100068E24()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100068E68()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100068EA8()
{
  v1 = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC18Feedback_Assistant33FBAFollowupResponseViewController_isSubmitting) = 1;
  sub_10005CDE4();
  return sub_10005E994(v1);
}

uint64_t sub_100068EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100069250(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1000694DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  *&v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions] = _swiftEmptyArrayStorage;
  v7 = &v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v5[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];
  *v7 = a1;
  *(v7 + 1) = a2;
  *v8 = a3;
  *(v8 + 1) = a4;
  if (a5)
  {
    swift_beginAccess();
    v10 = *&v5[v6];
    *&v5[v6] = a5;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for FBAActionMenuController();
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100069598(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for FBAActionControllerAction();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image;
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image] = 0;
  v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive] = 0;
  v15 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
  *v15 = a1;
  v15[1] = a2;
  *&v13[v14] = a3;
  v16 = &v13[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  *v16 = a4;
  v16[1] = a5;
  v21.receiver = v13;
  v21.super_class = v12;

  v17 = a3;

  objc_msgSendSuper2(&v21, "init");
  v18 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v18) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*(v6 + v18) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return swift_endAccess();
}

Class sub_100069874()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title + 8];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title];
    v4 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_title + 8];

    v5._countAndFlagsBits = v3;
    v5._object = v2;
    String.append(_:)(v5);
  }

  v6 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle + 8];
  if (v6)
  {
    v7 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle];
    v8 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_subtitle + 8];

    v9._countAndFlagsBits = 10;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v7;
    v10._object = v6;
    String.append(_:)(v10);
  }

  v11 = OBJC_IVAR____TtC18Feedback_Assistant23FBAActionMenuController_actions;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    v15 = 0;
    v31 = v12 & 0xC000000000000001;
    sub_1000497E4(0, &qword_10010A250, UIAction_ptr);
    v16 = v12;
    v17 = v13;
    do
    {
      if (v31)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v12 + 8 * v15 + 32);
      }

      v19 = v18;
      v21 = *&v18[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
      v20 = *&v18[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title + 8];
      v22 = *&v18[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image];
      if (v18[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_destructive])
      {
        v23 = 2;
      }

      else
      {
        v23 = 0;
      }

      ++v15;
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      *(v24 + 24) = v1;
      v25 = v22;
      v26 = v1;

      children._rawValue = v23;
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v27 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v12 = v16;
    }

    while (v17 != v15);
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_1000497E4(0, &qword_10010A258, UIMenuElement_ptr);

    preferredElementSize = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_1000497E4(0, &qword_10010A258, UIMenuElement_ptr);
    preferredElementSize = _swiftEmptyArrayStorage;
  }

  sub_1000497E4(0, &qword_10010A260, UIMenu_ptr);
  v29._countAndFlagsBits = 0;
  v29._object = 0xE000000000000000;
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v32, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
}

char *sub_100069D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(type metadata accessor for _FBAActionSheetController());
  v13 = sub_10006A384(a1, a2, a3, a4, a5);
  v14 = [v6 initWithRootViewController:v13];
  v15 = *&v14[OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController];
  *&v14[OBJC_IVAR____TtC18Feedback_Assistant24FBAActionSheetController_actionSheetController] = v13;
  v16 = v14;
  v17 = v13;

  [v16 setModalPresentationStyle:7];
  v18 = [v16 presentationController];

  if (v18)
  {
    v19 = v16;
    [v18 setDelegate:v19];
  }

  return v16;
}

void sub_100069E98()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FBAActionSheetController();
  objc_msgSendSuper2(&v3, "viewDidLoad");
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  [v0 setDetentBehavior:UIContentSizeCategory.isAccessibilityCategory.getter() & 1];
}

char *sub_10006A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = [v5 initWithStyle:2];
  if (a5)
  {
    v12 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
    swift_beginAccess();
    v13 = *&v11[v12];
    *&v11[v12] = a5;
  }

  v14 = &v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  v15 = *&v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8];
  *v14 = a1;
  *(v14 + 1) = a2;

  v16 = &v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  v17 = *&v11[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle + 8];
  *v16 = a3;
  *(v16 + 1) = a4;

  result = [v11 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = result;
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() nibWithNibName:v20 bundle:0];

  v22 = String._bridgeToObjectiveC()();
  [v19 registerNib:v21 forCellReuseIdentifier:v22];

  result = [v11 tableView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = result;
  v24 = [objc_opt_self() systemBackgroundColor];
  [v23 setBackgroundColor:v24];

  result = [v11 tableView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v25 = result;
  [result setRowHeight:UITableViewAutomaticDimension];

  result = [v11 tableView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v26 = result;
  [result setEstimatedRowHeight:60.0];

  result = [v11 tableView];
  if (result)
  {
    v27 = result;

    [v27 reloadData];

    return v11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10006A65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a4;
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = 0;
    return a6(v9, v11, v8, v13, v14);
  }

  v9 = 0;
  v11 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for FBAActionControllerAction();
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return a6(v9, v11, v8, v13, v14);
}

id sub_10006A714()
{
  v1 = type metadata accessor for _FBAActionSheetController();
  v9.receiver = v0;
  v9.super_class = v1;
  objc_msgSendSuper2(&v9, "viewDidLoad");
  result = [v0 tableView];
  if (result)
  {
    v3 = result;
    [result setShowsVerticalScrollIndicator:0];

    v4 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
    swift_beginAccess();
    v5 = *&v0[v4];
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v7 = *&v0[v4];
      }

      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8.receiver = v0;
    v8.super_class = v1;
    objc_msgSendSuper2(&v8, "preferredContentSize");
    return [v0 setPreferredContentSize:?];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10006A8D4(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for _FBAActionSheetController();
  objc_msgSendSuper2(&v19, "viewWillAppear:", a1 & 1);
  if (*&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle + 8])
  {
    v18 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
    v3 = objc_allocWithZone(UIStackView);

    v4 = [v3 init];
    [v4 setAxis:1];
    [v4 setSpacing:1.0];
    v5 = [objc_allocWithZone(UILabel) init];
    v6 = objc_opt_self();
    v7 = [v6 systemFontOfSize:16.0 weight:UIFontWeightSemibold];
    [v5 setFont:v7];

    if (*&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8])
    {
      v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
      v9 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8];

      v10 = String._bridgeToObjectiveC()();
    }

    else
    {
      v10 = 0;
    }

    [v5 setText:v10];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addArrangedSubview:v5];
    v14 = [objc_allocWithZone(UILabel) init];
    v15 = [v6 systemFontOfSize:14.0 weight:UIFontWeightRegular];
    [v14 setFont:v15];

    v16 = [objc_opt_self() secondaryLabelColor];
    [v14 setTextColor:v16];

    v17 = String._bridgeToObjectiveC()();

    [v14 setText:v17];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v4 addArrangedSubview:v14];
    v11 = [v1 navigationItem];
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v4];
    [v11 setLeftBarButtonItem:v13];
  }

  else
  {
    v11 = [v1 navigationItem];
    if (*&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle + 8])
    {
      v12 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];

      v13 = String._bridgeToObjectiveC()();
    }

    else
    {
      v13 = 0;
    }

    [v11 setTitle:v13];
  }
}

id sub_10006ADBC(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  swift_beginAccess();
  v5 = a1;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v10 = *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  result = [v2 tableView];
  if (result)
  {
    v7 = result;
    [result reloadData];

    v8 = *(v2 + v4);
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v11 = *(v2 + v4);
      }

      _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12.receiver = v2;
    v12.super_class = type metadata accessor for _FBAActionSheetController();
    objc_msgSendSuper2(&v12, "preferredContentSize");
    return [v2 setPreferredContentSize:?];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006B118(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v6 = [a1 dequeueReusableCellWithIdentifier:v4 forIndexPath:isa];

  type metadata accessor for FBAActionSheetCell();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = IndexPath.section.getter();
  v9 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  result = swift_beginAccess();
  v11 = *(v2 + v9);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    goto LABEL_5;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v12 = *(v11 + 8 * v8 + 32);
LABEL_5:
  v13 = v6;
  [v7 setSelectionStyle:2];
  v14 = OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel;
  v15 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionTitleLabel];
  if (v15)
  {
    v16 = *&v12[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title];
    v17 = *&v12[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_title + 8];
    v18 = v15;

    v19 = String._bridgeToObjectiveC()();

    [v18 setText:v19];
  }

  v20 = OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView;
  v21 = *&v7[OBJC_IVAR____TtC18Feedback_Assistant18FBAActionSheetCell_actionImageView];
  if (v21)
  {
    [v21 setImage:*&v12[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_image]];
  }

  v22 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_100048F64;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BBE8;
  aBlock[3] = &unk_1000E15B0;
  v23 = _Block_copy(aBlock);
  v24 = [v22 initWithDynamicProvider:v23];
  _Block_release(v23);

  v25 = *&v7[v14];
  if (v25)
  {
    [v25 setTextColor:v24];
  }

  v26 = *&v7[v20];
  if (v26)
  {
    [v26 setTintColor:v24];
  }

  v27 = UIAccessibilityTraitButton;
  v28 = v13;
  [v7 setAccessibilityTraits:v27];

  return v7;
}

id sub_10006B5B4(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions] = _swiftEmptyArrayStorage;
  v5 = &v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  *v5 = 0;
  v5[1] = 0;
  v6 = &v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  *v6 = 0;
  v6[1] = 0;
  v3[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] = 0;
  if (a2)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for _FBAActionSheetController();
  v8 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", v7, a3);

  return v8;
}

id sub_10006B6D4(void *a1)
{
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions] = _swiftEmptyArrayStorage;
  v3 = &v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerTitle];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_headerSubtitle];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for _FBAActionSheetController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_10006B7D8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = *(a1 + *a3);

  v9 = *(a1 + *a4 + 8);

  v10 = *(a1 + *a5 + 8);
}

id sub_10006BB40(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10006BBE8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t sub_10006BC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006BC68()
{
  v1 = [v0 presentingViewController];
  if (v1 && (v2 = v1, v5 = [v1 traitCollection], v2, v5))
  {
    if ([v5 horizontalSizeClass] == 1 || objc_msgSend(v5, "verticalSizeClass") == 1)
    {
      v3 = [v0 navigationItem];
      v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v0 action:"dismissSelf"];
      [v3 setRightBarButtonItem:v4];

      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
  }

  v4 = [v0 navigationItem];
  [v4 setRightBarButtonItem:0];
LABEL_8:
}

void sub_10006BDB4()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  v3 = OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_actions;
  swift_beginAccess();
  v4 = *&v1[v3];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 8 * v2 + 32);

      v6 = v5;
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_12;
  }

  v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v7 = v6;
  v9 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler];
  v8 = *&v6[OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler + 8];

  v10 = [v1 navigationController];
  if (!v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v11 = v10;

  type metadata accessor for FBAActionSheetController();
  v12 = swift_dynamicCastClassUnconditional();
  v9(v12);

  if (v1[OBJC_IVAR____TtC18Feedback_Assistant25_FBAActionSheetController_dismissesOnAction] == 1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_10006BF14()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006BF4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006BF8C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC18Feedback_Assistant25FBAActionControllerAction_actionHandler;
  v4 = *v2;
  v3 = *(v2 + 8);

  v4(v1);
}

uint64_t sub_10006C010()
{
  v1 = type metadata accessor for FBANotEnrolledView();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *&v8[*(v2 + 32)] = swift_getKeyPath();
  sub_100041AA0(&qword_100109380, &qword_1000C26B8);
  swift_storeEnumTagMultiPayload();
  *v8 = 1;
  *(v8 + 1) = sub_10006CD8C;
  *(v8 + 2) = v9;
  sub_100044C58(v8, v6);
  v10 = objc_allocWithZone(sub_100041AA0(&qword_100109690, &qword_1000C2AD8));
  v11 = v0;
  v12 = UIHostingController.init(rootView:)();
  v13 = [v11 traitCollection];
  v14 = [v13 horizontalSizeClass];

  if (v14 == 1)
  {
    [v12 setModalPresentationStyle:0];
  }

  else
  {
    [v12 setModalPresentationStyle:2];
    [v12 setModalInPresentation:1];
  }

  [v11 presentViewController:v12 animated:1 completion:0];

  return sub_10004BB30(v8);
}

void sub_10006C304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AgreementConsentView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  if ([v3 isPresentingConsentView])
  {
    return;
  }

  [v3 setIsPresentingConsentView:1];
  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 pendingConsents];

  if (!v15)
  {
    return;
  }

  sub_1000497E4(0, &qword_10010A270, FBKSPendingConsent_ptr);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v17 = *(v16 + 32);
  }

  v18 = v17;

  v19 = swift_allocObject();
  v19[2] = v3;
  v19[3] = v18;
  v19[4] = a1;
  v19[5] = a2;
  v20 = v18;
  v21 = v3;
  sub_10004374C(a1);
  AgreementConsentView.init(consent:completion:)();
  (*(v7 + 16))(v11, v13, v6);
  v22 = objc_allocWithZone(sub_100041AA0(&qword_10010A268, &qword_1000C3178));
  v23 = UIHostingController.init(rootView:)();
  [v23 setModalPresentationStyle:2];
  [v23 setModalInPresentation:1];
  [v21 presentViewController:v23 animated:1 completion:0];

  (*(v7 + 8))(v13, v6);
}

void sub_10006C628(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for AgreementConsentView.ConsentResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 setIsPresentingConsentView:0];
  v14 = [objc_opt_self() sharedInstance];
  (*(v10 + 104))(v13, enum case for AgreementConsentView.ConsentResult.accepted(_:), v9);
  v15 = static AgreementConsentView.ConsentResult.== infix(_:_:)();
  (*(v10 + 8))(v13, v9);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  aBlock[4] = sub_10006CC6C;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E1768;
  v17 = _Block_copy(aBlock);
  sub_10004374C(a4);

  [v14 recordConsentResponseForConsent:a3 response:v15 & 1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_10006C834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v18);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000497E4(0, &qword_100109970, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  aBlock[4] = sub_10006CCCC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E17B8;
  v15 = _Block_copy(aBlock);
  sub_10004374C(a1);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006CCFC();
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v5 + 8))(v8, v4);
  return (*(v9 + 8))(v12, v18);
}

uint64_t sub_10006CBD4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CC0C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 40);
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006CC74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006CC8C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006CCCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_10006CCFC()
{
  result = qword_100108F80;
  if (!qword_100108F80)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100108F80);
  }

  return result;
}

uint64_t sub_10006CD54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CDE4(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

void sub_10006CF04()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FBAFFUDisplayTextViewController();
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode:2];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText];
    v5 = *&v0[OBJC_IVAR____TtC18Feedback_Assistant31FBAFFUDisplayTextViewController_displayText + 8];

    v6 = String._bridgeToObjectiveC()();

    [v3 setText:v6];

    v7 = [v0 navigationItem];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    v11 = [objc_opt_self() mainBundle];
    v19._object = 0xE000000000000000;
    v12._object = 0x80000001000CCEB0;
    v12._countAndFlagsBits = 0xD00000000000001BLL;
    v13.value._countAndFlagsBits = v8;
    v13.value._object = v10;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    v19._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

    v15 = String._bridgeToObjectiveC()();

    [v7 setTitle:v15];

    v16 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:v0 action:"didTapDone"];
    v17 = [v0 navigationItem];
    [v17 setRightBarButtonItem:v16];
  }

  else
  {
    __break(1u);
  }
}

id sub_10006D314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAFFUDisplayTextViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t FBKFilerFormType.description.getter(uint64_t a1)
{
  v1 = 1414743380;
  v2 = 5588550;
  if (a1 != 1)
  {
    v2 = 0;
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 21062;
  }
}

uint64_t sub_10006D408()
{
  v1 = *v0;
  v2 = 1414743380;
  v3 = 5588550;
  if (*v0 != 1)
  {
    v3 = 0;
  }

  *v0;
  if (v1 != 2)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 21062;
  }
}

uint64_t sub_10006D458()
{
  v0 = type metadata accessor for Logger();
  sub_100046848(v0, qword_10010A2B0);
  sub_1000466AC(v0, qword_10010A2B0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006D4D0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for Date();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_100041AA0(&qword_10010A310, &qword_1000C3280);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v36 - v16;
  v18 = sub_100041AA0(&qword_10010A318, qword_1000C3288);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v36 = type metadata accessor for DateComponents();
  v22 = *(v36 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v36);
  v25 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 56))(v21, 1, 1, v5);
  v26 = type metadata accessor for TimeZone();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = v37;
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  DateComponents.day.setter();
  v28 = [objc_opt_self() currentCalendar];
  static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

  Date.init()();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v29 = v38;
  (*(v27 + 8))(v4, v38);
  (*(v6 + 8))(v9, v5);
  if ((*(v27 + 48))(v13, 1, v29) == 1)
  {
    v30 = v36;
    sub_1000454C8(v13, &qword_10010A2F0, &unk_1000C3260);
    if (qword_100108DF0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000466AC(v31, qword_10010A2B0);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Could not build date object for draft directories cleanup", v34, 2u);
    }

    static Date.distantFuture.getter();
    return (*(v22 + 8))(v25, v30);
  }

  else
  {
    (*(v22 + 8))(v25, v36);
    return (*(v27 + 32))(v39, v13, v29);
  }
}

uint64_t sub_10006DA44()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041A4C();
  (*(v10 + 104))(v13, enum case for DispatchQoS.QoSClass.background(_:), v9);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v10 + 8))(v13, v9);
  v15 = swift_allocObject();
  *(v15 + 16) = v18[1];
  aBlock[4] = sub_10006FC4C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100088474;
  aBlock[3] = &unk_1000E1830;
  v16 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10006FC6C(&qword_100108F80, &type metadata accessor for DispatchWorkItemFlags);
  sub_100041AA0(&unk_100109980, &qword_1000C1B50);
  sub_100041AE8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v1 + 8))(v4, v0);
  (*(v5 + 8))(v8, v19);
}

void sub_10006DDB0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v33 = type metadata accessor for Date();
  v8 = *(v33 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  if (qword_100108DF0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v32 = sub_1000466AC(v15, qword_10010A2B0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Did start draft cleanup", v18, 2u);
  }

  sub_10006D4D0(v14);
  v19 = objc_opt_self();
  v20 = [v19 draftDirectoryForFilerType:0];
  if (!v20)
  {
    __break(1u);
    goto LABEL_11;
  }

  v21 = v20;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006E400(v14, 0, v7);
  v22 = *(v1 + 8);
  v22(v7, v0);
  v23 = v0;
  v24 = *(v8 + 8);
  v25 = v14;
  v26 = v33;
  v24(v25, v33);
  sub_10006D4D0(v12);
  v27 = [v19 draftDirectoryForFilerType:1];
  if (!v27)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v28 = v27;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006E400(v12, 1, v5);
  v22(v5, v23);
  v24(v12, v26);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Did start draft cleanup", v31, 2u);
  }
}

id sub_10006E354()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBADraftDirectoriesCleanUp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10006E3B0(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_10006E3D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_10006E400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v176 = a2;
  v166 = a1;
  v175 = type metadata accessor for Date();
  v4 = *(v175 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v175);
  v165 = &v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v184 = &v146 - v8;
  v9 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v168 = &v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v170 = &v146 - v14;
  __chkstk_darwin(v13);
  v171 = &v146 - v15;
  v167 = type metadata accessor for URLResourceValues();
  v186 = *(v167 - 8);
  v16 = *(v186 + 8);
  __chkstk_darwin(v167);
  v178 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v146 - v20;
  v185 = type metadata accessor for URL();
  v22 = *(v185 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v185);
  v177 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v146 - v27;
  v29 = __chkstk_darwin(v26);
  v164 = &v146 - v30;
  __chkstk_darwin(v29);
  v181 = &v146 - v31;
  v32 = type metadata accessor for NSFastEnumerationIterator();
  v179 = *(v32 - 8);
  v33 = *(v179 + 64);
  __chkstk_darwin(v32);
  v35 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [objc_opt_self() defaultManager];
  sub_100041AA0(&qword_10010A2F8, &unk_1000C3270);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000C2530;
  *(v37 + 32) = NSURLContentModificationDateKey;
  *(v37 + 40) = NSURLCreationDateKey;
  v38 = NSURLContentModificationDateKey;
  v39 = NSURLCreationDateKey;
  v40 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();
  if (!v40)
  {

    if (qword_100108DF0 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_1000466AC(v122, qword_10010A2B0);
    v123 = a3;
    v124 = v185;
    (*(v22 + 16))(v28, v123, v185);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v191 = v128;
      *v127 = 136315138;
      sub_10006FC6C(&qword_100109870, &type metadata accessor for URL);
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v124;
      v132 = v131;
      (*(v22 + 8))(v28, v130);
      v133 = sub_10008D954(v129, v132, &v191);

      *(v127 + 4) = v133;
      _os_log_impl(&_mh_execute_header, v125, v126, "Could not reach enumerator at url %s", v127, 0xCu);
      sub_1000466E4(v128);
    }

    else
    {

      (*(v22 + 8))(v28, v124);
    }

    return;
  }

  v180 = v37;
  v174 = v36;
  v173 = v40;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  p_cache = _TtC18Feedback_Assistant26FBADevicePickerCoordinator.cache;
  if (v192)
  {
    v152 = 0;
    v43 = 0;
    v163 = 0;
    v172 = 0;
    v44 = (v22 + 56);
    v161 = (v22 + 32);
    v159 = (v4 + 48);
    v157 = (v4 + 32);
    v154 = (v4 + 56);
    v155 = (v4 + 8);
    v156 = (v186 + 8);
    v162 = (v22 + 8);
    v160 = (v22 + 16);
    v151 = (v4 + 16);
    v150 = FBKDraftDirectoriesCleanUpDryRun;
    v153 = 0x80000001000CCF30;
    *&v41 = 136315394;
    v158 = v41;
    *&v41 = 136315138;
    v182 = v41;
    v45 = v185;
    v46 = v184;
    v183 = v44;
    v169 = v32;
    while (2)
    {
      v47 = v43;
      while (1)
      {
        sub_10006FB68(&v191, &v190);
        v43 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        sub_100046784(&v190, &v189);
        v48 = swift_dynamicCast();
        v49 = *v44;
        if (v48)
        {
          break;
        }

        v49(v21, 1, 1, v45);
        sub_1000454C8(v21, &qword_100109790, &unk_1000C29E0);
        if (p_cache[446] != -1)
        {
          swift_once();
        }

        v50 = type metadata accessor for Logger();
        sub_1000466AC(v50, qword_10010A2B0);
        sub_100046784(&v190, &v189);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v186 = v47 + 1;
          v54 = v21;
          v55 = p_cache;
          v56 = v35;
          v57 = v53;
          v58 = swift_slowAlloc();
          v188 = v58;
          *v57 = v182;
          sub_100046784(&v189, v187);
          v59 = String.init<A>(describing:)();
          v61 = v60;
          sub_1000466E4(&v189);
          v62 = sub_10008D954(v59, v61, &v188);

          *(v57 + 4) = v62;
          v46 = v184;
          _os_log_impl(&_mh_execute_header, v51, v52, "Failed to parse enumerated object as a URL: %s", v57, 0xCu);
          sub_1000466E4(v58);
          v45 = v185;

          v44 = v183;
          v35 = v56;
          p_cache = v55;
          v21 = v54;
          v43 = v186;
        }

        else
        {

          sub_1000466E4(&v189);
        }

        sub_1000466E4(&v190);
        NSFastEnumerationIterator.next()();
        ++v47;
        if (!v192)
        {
          v32 = v169;
          goto LABEL_49;
        }
      }

      v186 = v35;
      v49(v21, 0, 1, v45);
      (*v161)(v181, v21, v45);

      sub_10007BE90(v63);

      v64 = v172;
      URL.resourceValues(forKeys:)();
      if (v64)
      {

        v65 = v64;
      }

      else
      {
        v172 = 0;

        v66 = v170;
        URLResourceValues.contentModificationDate.getter();
        v67 = v175;
        v149 = *v159;
        if (v149(v66, 1, v175) == 1)
        {
          v68 = v171;
          URLResourceValues.creationDate.getter();
          v67 = v175;
          v69 = v149;
          v70 = v149(v66, 1, v175);
          v71 = v168;
          v72 = v69;
          v73 = v181;
          if (v70 != 1)
          {
            sub_1000454C8(v170, &qword_10010A2F0, &unk_1000C3260);
          }
        }

        else
        {
          v68 = v171;
          (*v157)(v171, v66, v67);
          (*v154)(v68, 0, 1, v67);
          v71 = v168;
          v73 = v181;
          v72 = v149;
        }

        sub_10006FB78(v68, v71);
        if (v72(v71, 1, v67) != 1)
        {
          (*v157)(v46, v71, v67);
          if ((static Date.< infix(_:_:)() & 1) == 0)
          {
            (*v155)(v46, v67);
            sub_1000454C8(v171, &qword_10010A2F0, &unk_1000C3260);
            (*v156)(v178, v167);
            (*v162)(v73, v45);
LABEL_27:
            sub_1000466E4(&v190);
            goto LABEL_28;
          }

          v92 = v164;
          if (p_cache[446] != -1)
          {
            swift_once();
          }

          v93 = type metadata accessor for Logger();
          sub_1000466AC(v93, qword_10010A2B0);
          (*v160)(v92, v181, v45);
          v94 = v165;
          v95 = v175;
          (*v151)(v165, v46, v175);
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            v189 = v163;
            *v98 = v158;
            v99 = URL.path.getter();
            v100 = v92;
            v102 = v101;
            v149 = *v162;
            (v149)(v100, v185);
            v103 = sub_10008D954(v99, v102, &v189);

            *(v98 + 4) = v103;
            *(v98 + 12) = 2082;
            sub_10006FC6C(&qword_10010A308, &type metadata accessor for Date);
            v104 = dispatch thunk of CustomStringConvertible.description.getter();
            v106 = v105;
            v107 = v94;
            v108 = *v155;
            (*v155)(v107, v95);
            v109 = sub_10008D954(v104, v106, &v189);

            *(v98 + 14) = v109;
            _os_log_impl(&_mh_execute_header, v96, v97, "Deleting stale draft directory: %s date: %{public}s", v98, 0x16u);
            swift_arrayDestroy();

            v45 = v185;
          }

          else
          {

            v110 = v94;
            v108 = *v155;
            (*v155)(v110, v95);
            v149 = *v162;
            (v149)(v92, v45);
          }

          v111 = v152 + 1;
          v46 = v184;
          v112 = v171;
          if (__OFADD__(v152, 1))
          {
            __break(1u);
          }

          v113 = [objc_opt_self() standardUserDefaults];
          v114 = [v113 BOOLForKey:v150];

          v163 = v111;
          if (v114)
          {
            v108(v46, v175);
            sub_1000454C8(v112, &qword_10010A2F0, &unk_1000C3260);
            (*v156)(v178, v167);
            (v149)(v181, v45);
            sub_1000466E4(&v190);
            v152 = v111;
          }

          else
          {
            v115 = v181;
            URL._bridgeToObjectiveC()(&v193);
            v117 = v116;
            v189 = 0;
            v118 = [v174 removeItemAtURL:v116 error:&v189];

            v119 = v189;
            if (!v118)
            {
              v120 = v119;
              v121 = _convertNSErrorToError(_:)();

              v65 = v121;
              swift_willThrow();
              v108(v46, v175);
              sub_1000454C8(v171, &qword_10010A2F0, &unk_1000C3260);
              (*v156)(v178, v167);
              v172 = 0;
              v152 = v163;
              goto LABEL_22;
            }

            v108(v46, v175);
            sub_1000454C8(v112, &qword_10010A2F0, &unk_1000C3260);
            (*v156)(v178, v167);
            (v149)(v115, v45);
            sub_1000466E4(&v190);
            v152 = v163;
          }

LABEL_28:
          v32 = v169;
          v35 = v186;
          NSFastEnumerationIterator.next()();
          v44 = v183;
          if (v192)
          {
            continue;
          }

          goto LABEL_49;
        }

        sub_1000454C8(v71, &qword_10010A2F0, &unk_1000C3260);
        sub_10006FBE8();
        v74 = swift_allocError();
        *v75 = 0xD000000000000011;
        v75[1] = v153;
        swift_willThrow();
        v65 = v74;
        sub_1000454C8(v68, &qword_10010A2F0, &unk_1000C3260);
        (*v156)(v178, v167);
      }

      break;
    }

    v172 = 0;
LABEL_22:
    v76 = v177;
    if (p_cache[446] != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_1000466AC(v77, qword_10010A2B0);
    (*v160)(v76, v181, v45);
    swift_errorRetain();
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v189 = v149;
      *v80 = v158;
      sub_10006FC6C(&qword_100109870, &type metadata accessor for URL);
      v148 = v79;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v146 = v65;
      v82 = v81;
      v84 = v83;
      v85 = *v162;
      v147 = v78;
      v85(v76, v45);
      v86 = sub_10008D954(v82, v84, &v189);

      *(v80 + 4) = v86;
      *(v80 + 12) = 2080;
      swift_getErrorValue();
      v87 = Error.localizedDescription.getter();
      v89 = sub_10008D954(v87, v88, &v189);

      *(v80 + 14) = v89;
      v90 = v147;
      _os_log_impl(&_mh_execute_header, v147, v148, "Failed to clean up draft directory: %s error: %s", v80, 0x16u);
      swift_arrayDestroy();

      v46 = v184;

      v85(v181, v45);
    }

    else
    {

      v91 = *v162;
      (*v162)(v76, v45);
      v91(v181, v45);
    }

    goto LABEL_27;
  }

  v163 = 0;
  v43 = 0;
LABEL_49:
  (*(v179 + 8))(v35, v32);

  if (p_cache[446] != -1)
  {
LABEL_66:
    swift_once();
  }

  v134 = type metadata accessor for Logger();
  sub_1000466AC(v134, qword_10010A2B0);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *&v191 = v138;
    *v137 = 134218498;
    *(v137 + 4) = v43;
    *(v137 + 12) = 2080;
    v139 = 0xE400000000000000;
    v140 = 1414743380;
    v141 = 0xE000000000000000;
    v142 = 5588550;
    if (v176 == 1)
    {
      v141 = 0xE300000000000000;
    }

    else
    {
      v142 = 0;
    }

    if (v176 != 2)
    {
      v140 = v142;
      v139 = v141;
    }

    if (v176)
    {
      v143 = v140;
    }

    else
    {
      v143 = 21062;
    }

    if (v176)
    {
      v144 = v139;
    }

    else
    {
      v144 = 0xE200000000000000;
    }

    v145 = sub_10008D954(v143, v144, &v191);

    *(v137 + 14) = v145;
    *(v137 + 22) = 2048;
    *(v137 + 24) = v163;
    _os_log_impl(&_mh_execute_header, v135, v136, "Found [%ld] %s draft directories, deleted [%ld]", v137, 0x20u);
    sub_1000466E4(v138);
  }
}

_OWORD *sub_10006FB68(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10006FB78(uint64_t a1, uint64_t a2)
{
  v4 = sub_100041AA0(&qword_10010A2F0, &unk_1000C3260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006FBE8()
{
  result = qword_10010A300;
  if (!qword_10010A300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A300);
  }

  return result;
}

uint64_t sub_10006FC54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006FC6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006FCB4()
{
  sub_1000497E4(0, &qword_10010A0C0, OS_os_log_ptr);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  result = OS_os_log.init(subsystem:category:)();
  qword_10010A320 = result;
  return result;
}

id sub_10006FD70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAAvatarHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10006FDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a5(v6, v8, v9, v10);

  return v11;
}

id sub_10006FFB0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(CNContactStore) init];
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 predicateForContactsMatchingEmailAddress:v6];

  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C2E80;
  *(v8 + 32) = CNContactThumbnailImageDataKey;
  v9 = CNContactThumbnailImageDataKey;
  sub_100041AA0(&qword_10010A358, &qword_1000C32C8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = 0;
  v11 = [v4 unifiedContactsMatchingPredicate:v7 keysToFetch:isa error:&v23];

  v12 = v23;
  if (v11)
  {
    sub_1000497E4(0, &qword_10010A360, CNContact_ptr);
    v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v12;

    if (v13 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      if ((v13 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_7;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v15 = *(v13 + 32);
LABEL_7:
        v16 = v15;

        return v16;
      }

      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v18 = v23;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  static os_log_type_t.error.getter();
  if (qword_100108DF8 != -1)
  {
LABEL_15:
    swift_once();
  }

  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000C2530;
  *(v19 + 56) = &type metadata for String;
  v20 = sub_100047484();
  *(v19 + 64) = v20;
  *(v19 + 32) = a1;
  *(v19 + 40) = a2;
  swift_getErrorValue();

  v21 = Error.localizedDescription.getter();
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = v20;
  *(v19 + 72) = v21;
  *(v19 + 80) = v22;
  os_log(_:dso:log:_:_:)();

LABEL_12:

  return 0;
}

id sub_100070300()
{
  v0 = sub_10006FECC();
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  v4 = [v0 snapshotWithSize:0 scale:24.0 options:{24.0, v3}];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 imageWithRenderingMode:1];

    if (v6)
    {
      goto LABEL_5;
    }
  }

  result = [objc_opt_self() systemImageNamed:FBKSystemImageNameGenericUser];
  if (result)
  {
    v6 = result;
LABEL_5:

    return v6;
  }

  __break(1u);
  return result;
}

id sub_100070404()
{
  v0 = sub_10006FECC();
  v1 = [v0 text];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v2 = String.count.getter();

  if (v2 >= 1)
  {
    v3 = [objc_opt_self() mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = [v0 snapshotWithSize:0 scale:40.0 options:{40.0, v5}];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 imageWithRenderingMode:1];

      if (v8)
      {
        goto LABEL_6;
      }
    }
  }

  result = [objc_opt_self() systemImageNamed:FBKSystemImageNameGenericUser];
  if (result)
  {
    v8 = result;
LABEL_6:

    return v8;
  }

  __break(1u);
  return result;
}

id sub_100070554(uint64_t a1, uint64_t a2)
{
  v2 = sub_10006FFB0(a1, a2);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 thumbnailImageData];
  if (v4)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = objc_allocWithZone(UIImage);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = [v9 initWithData:isa];

    sub_100046730(v6, v8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_1000707DC(char a1)
{
  *(v1 + OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active) = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        [v5 filterManager:v4 didToggleFilter:v1];
        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    }

    else
    {
    }
  }
}

char *sub_100070980(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
  v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = a1;
  v9 = &v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
  *v9 = a2;
  v9[1] = a3;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FBAFilter();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v17, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 systemImageNamed:{a4, v17.receiver, v17.super_class}];

  v15 = *&v13[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image];
  *&v13[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = v14;

  return v13;
}

void sub_100070BB0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      swift_getKeyPath();
      _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        [v4 filterManager:v3 didToggleFilter:v0];
        swift_unknownObjectRelease();
      }

      swift_getKeyPath();
      _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
    }

    else
    {
    }
  }
}

id sub_100070CF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAFilter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100070DB8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image;
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
  v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = a1;
  v10 = &v4[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
  *v10 = a2;
  v10[1] = a3;
  v11 = *&v4[v9];
  *&v4[v9] = a4;
  v12 = a1;
  v13 = a4;

  v15.receiver = v4;
  v15.super_class = type metadata accessor for FBAFilter();
  return objc_msgSendSuper2(&v15, "init");
}

id sub_100070E80@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 active];
  *a2 = result;
  return result;
}

void *sub_100071044(char a1)
{
  *(v1 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = a1;
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (a1)
  {
    if (!result)
    {
      return result;
    }

    v5 = &selRef_filterManagerDidActivate_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v5 = &selRef_filterManagerDidDeactivate_;
  }

  if ([result respondsToSelector:*v5])
  {
    [v4 *v5];
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_100071110()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if (v1 >> 62)
  {
    goto LABEL_53;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v36 = v1 & 0xFFFFFFFFFFFFFF8;
    v5 = _swiftEmptyArrayStorage;
    v35 = v1 + 32;
    v6 = &unk_10010A400;
    v33 = v1 & 0xC000000000000001;
    v34 = v2;
    while (1)
    {
      v41 = v5;
      if (v4)
      {
        v7 = v6;
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v36 + 16))
        {
          goto LABEL_47;
        }

        v7 = v6;
        v8 = *(v35 + 8 * v3);
      }

      v9 = __OFADD__(v3, 1);
      v10 = v3 + 1;
      if (v9)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
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
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v11 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];
      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v29 = v8;
        if (v11 < 0)
        {
          v30 = *&v8[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];
        }

        v31 = _CocoaArrayWrapper.endIndex.getter();
        v8 = v29;
        v13 = v31;
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v5 >> 62;
      v39 = v8;
      if (v41 >> 62)
      {
        v15 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v15 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v40 = v13;
      v9 = __OFADD__(v15, v13);
      v1 = v15 + v13;
      if (v9)
      {
        goto LABEL_48;
      }

      v37 = v10;
      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v14)
        {
          goto LABEL_23;
        }

        v16 = v41 & 0xFFFFFFFFFFFFFF8;
        v17 = v41;
        if (v1 <= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v14)
        {
LABEL_23:
          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_24;
        }

        v16 = v41 & 0xFFFFFFFFFFFFFF8;
      }

      v18 = *(v16 + 16);
LABEL_24:
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = v17 & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v38 = v17;
      v6 = v7;
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v12)
      {
        v1 = _CocoaArrayWrapper.endIndex.getter();
        if (v1)
        {
LABEL_29:
          if (((v20 >> 1) - v19) < v40)
          {
            goto LABEL_50;
          }

          v21 = v16 + 8 * v19 + 32;
          if (v12)
          {
            if (v1 < 1)
            {
              goto LABEL_52;
            }

            sub_1000456EC(&qword_10010A408, v6, &qword_1000C3410);
            v22 = v6;
            for (i = 0; i != v1; ++i)
            {
              sub_100041AA0(v22, &qword_1000C3410);
              v24 = sub_10005A2D4(v42, i, v11);
              v26 = *v25;
              (v24)(v42, 0);
              v22 = v6;
              *(v21 + 8 * i) = v26;
            }

            v4 = v33;
            v2 = v34;
            v1 = v40;
          }

          else
          {
            type metadata accessor for FBAFilter();
            v1 = v40;
            swift_arrayInitWithCopy();
          }

          v5 = v38;
          if (v1 > 0)
          {
            v27 = *(v16 + 16);
            v9 = __OFADD__(v27, v1);
            v28 = v27 + v1;
            if (v9)
            {
              goto LABEL_51;
            }

            *(v16 + 16) = v28;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
          goto LABEL_29;
        }
      }

      v5 = v38;
      if (v40 > 0)
      {
        goto LABEL_49;
      }

LABEL_6:
      v3 = v37;
      if (v37 == v2)
      {
        goto LABEL_45;
      }
    }
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_45:

  return v5;
}

Class sub_1000714FC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  type metadata accessor for FBAFilter();
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

void *sub_100071568()
{
  v0 = sub_100071110();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 active])
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v7 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id sub_1000716F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v2)
  {
    v30 = v1 & 0xC000000000000001;
    v25 = v1 + 32;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v27 = v1;
    v28 = v2;
    while (1)
    {
      if (v30)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(v26 + 16))
        {
          goto LABEL_35;
        }

        v4 = *(v25 + 8 * v3);
      }

      v5 = v4;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v2 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v7 = sub_100059EA0();
      if (v7 >> 62)
      {
        v20 = _CocoaArrayWrapper.endIndex.getter();

        if (!v20)
        {
          goto LABEL_5;
        }

LABEL_13:
        v9 = *&v5[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_compoundType];
        v10 = sub_100059EA0();
        v11 = v10;
        if (v10 >> 62)
        {
          v12 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          specialized ContiguousArray.reserveCapacity(_:)();
          if (v12 < 0)
          {
            goto LABEL_34;
          }

          v29 = v9;
          v13 = 0;
          do
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v14 = *(v11 + 8 * v13 + 32);
            }

            v15 = v14;
            ++v13;
            v16 = *&v14[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate];

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v17 = _swiftEmptyArrayStorage[2];
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          while (v12 != v13);

          v1 = v27;
          v9 = v29;
        }

        else
        {
        }

        v18 = objc_allocWithZone(NSCompoundPredicate);
        sub_100072C28();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v18 initWithType:v9 subpredicates:isa];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v21 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v2 = v28;
        if (v3 == v28)
        {
LABEL_31:

          break;
        }
      }

      else
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v8)
        {
          goto LABEL_13;
        }

LABEL_5:

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }
    }
  }

  sub_100072C28();
  v22 = Array._bridgeToObjectiveC()().super.isa;

  v23 = [objc_opt_self() andPredicateWithSubpredicates:v22];

  return v23;
}

uint64_t sub_100071B50()
{
  v0 = sub_100071568();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2 >= 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= 3)
    {
LABEL_3:

      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
      v6 = [objc_opt_self() mainBundle];
      v39._object = 0xE000000000000000;
      v7._countAndFlagsBits = 0x65746C6946207525;
      v7._object = 0xEA00000000007372;
      v8.value._countAndFlagsBits = v3;
      v8.value._object = v5;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v39._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v39);

      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1000C29F0;
      *(v10 + 56) = &type metadata for Int;
      *(v10 + 64) = &protocol witness table for Int;
      *(v10 + 32) = v2;
      v11 = String.init(format:_:)();
      goto LABEL_20;
    }
  }

  if (v2 < 1)
  {

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
    v16 = [objc_opt_self() mainBundle];
    v40._object = 0xE000000000000000;
    v17._object = 0x80000001000CD1B0;
    v17._countAndFlagsBits = 0xD000000000000012;
    v18.value._countAndFlagsBits = v13;
    v18.value._object = v15;
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    v40._countAndFlagsBits = 0;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v40)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  sub_100077CEC(0, v2, 0);
  if ((v1 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v12 = *(v1 + 32);
  }

  v22 = v12;
  v23 = [v12 title];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v28 = _swiftEmptyArrayStorage[2];
  v27 = _swiftEmptyArrayStorage[3];
  if (v28 >= v27 >> 1)
  {
    sub_100077CEC((v27 > 1), v28 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v28 + 1;
  v29 = &_swiftEmptyArrayStorage[2 * v28];
  v29[4] = v24;
  v29[5] = v26;
  if (v2 != 1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v1 + 40);
    }

    v31 = v30;
    v32 = [v30 title];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v37 = _swiftEmptyArrayStorage[2];
    v36 = _swiftEmptyArrayStorage[3];
    if (v37 >= v36 >> 1)
    {
      sub_100077CEC((v36 > 1), v37 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v37 + 1;
    v38 = &_swiftEmptyArrayStorage[2 * v37];
    v38[4] = v33;
    v38[5] = v35;
  }

  sub_100041AA0(&unk_10010A850, qword_1000C3418);
  sub_1000456EC(&qword_10010A410, &unk_10010A850, qword_1000C3418);
  v11 = BidirectionalCollection<>.joined(separator:)();
LABEL_20:

  return v11;
}

char *sub_100071F38(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active] = 0;
  *&v1[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FBAFilterManager();
  v3 = objc_msgSendSuper2(&v12, "init");
  v4 = *&v3[OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups];
  if (v4 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v6 = v3;

    if (!v5)
    {
      break;
    }

    v7 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v3 = *(v4 + 8 * v7 + 32);
      }

      v8 = v3;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      swift_unknownObjectWeakAssign();

      ++v7;
      if (v9 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v11 = v3;
    v5 = _CocoaArrayWrapper.endIndex.getter();
    v3 = v11;
  }

LABEL_12:

  return v6;
}

void sub_1000720D8()
{
  v1 = IndexPath.section.getter();
  v2 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v3 = *(v2 + 8 * v1 + 32);
  }

  v4 = IndexPath.item.getter();
  v5 = *&v3[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_12:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 8 * v4 + 32);
LABEL_9:

    return;
  }

LABEL_15:
  __break(1u);
}

void sub_1000722E4()
{
  v1 = v0;
  v2 = IndexPath.section.getter();
  v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_filterGroups);

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_15;
    }

    if (v2 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v4 = *(v3 + 8 * v2 + 32);
  }

  v5 = IndexPath.item.getter();
  v6 = *&v4[OBJC_IVAR____TtC18Feedback_Assistant14FBAFilterGroup_filters];

  if ((v6 & 0xC000000000000001) == 0)
  {
    if ((v5 & 0x8000000000000000) == 0)
    {
      if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 8 * v5 + 32);
        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_15:
  v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v8 = v7;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [v8 setActive:{objc_msgSend(v8, "active") ^ 1}];
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong filterManager:v1 didToggleFilter:v8];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void *sub_1000724A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100071568();
  *a2 = result;
  return result;
}

void sub_1000725B4(unint64_t a1)
{
  v3 = sub_100071110();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v4 = *(v3 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v5 = v4;

  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  [v5 setActive:{objc_msgSend(v5, "active") ^ 1}];
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong filterManager:v1 didToggleFilter:v5];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_10007273C()
{
  v1 = v0;
  swift_getKeyPath();
  _KeyValueCodingAndObserving.willChangeValue<A>(for:)();
  v2 = OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active;
  v3 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active);
  *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = v3 ^ 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = Strong;
  if (v3)
  {
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_filterManagerDidDeactivate_;
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_9;
    }

    v6 = &selRef_filterManagerDidActivate_;
  }

  if ([Strong respondsToSelector:*v6])
  {
    [v5 *v6];
  }

  swift_unknownObjectRelease();
LABEL_9:
  swift_getKeyPath();
  _KeyValueCodingAndObserving.didChangeValue<A>(for:)();
  sub_100072A34();
  return *(v1 + v2);
}

void sub_100072864()
{
  if ((*(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if ([Strong respondsToSelector:"filterManagerDidActivate:"])
      {
        [v2 filterManagerDidActivate:v0];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_10007294C()
{
  if (*(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) == 1)
  {
    *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active) = 0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      if ([Strong respondsToSelector:"filterManagerDidDeactivate:"])
      {
        [v2 filterManagerDidDeactivate:v0];
      }

      swift_unknownObjectRelease();
    }
  }
}

void *sub_100072A34()
{
  v1 = *(v0 + OBJC_IVAR____TtC18Feedback_Assistant16FBAFilterManager_active);
  result = swift_unknownObjectWeakLoadStrong();
  v3 = result;
  if (v1 == 1)
  {
    if (!result)
    {
      return result;
    }

    v4 = &selRef_filterManagerDidActivate_;
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v4 = &selRef_filterManagerDidDeactivate_;
  }

  if ([result respondsToSelector:*v4])
  {
    [v3 *v4];
  }

  return swift_unknownObjectRelease();
}

id sub_100072B18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAFilterManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_100072BFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_100071568();
  *a2 = result;
  return result;
}

unint64_t sub_100072C28()
{
  result = qword_10010A3F8;
  if (!qword_10010A3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10010A3F8);
  }

  return result;
}

uint64_t sub_100072C74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100041AA0(&qword_10010A460, &qword_1000C3478);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10006FB68(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10006FB68(v33, v34);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
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
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10006FB68(v34, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_100072F3C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100041AA0(&qword_10010A458, &qword_1000C3470);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_unknownObjectRetain();
        swift_dynamicCast();
        sub_10006FB68(&v25, v27);
        sub_10006FB68(v27, v28);
        sub_10006FB68(v28, &v26);
        result = sub_100065F3C(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_1000466E4(v12);
          result = sub_10006FB68(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_10006FB68(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_100073190(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_100077CEC(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = __DataStorage._bytes.getter();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = __DataStorage._offset.getter();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = __DataStorage._bytes.getter();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = __DataStorage._offset.getter();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000C29F0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = String.init(format:_:)();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_100077CEC((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

id sub_1000735E0()
{
  result = [objc_allocWithZone(type metadata accessor for FBANotificationManager()) init];
  qword_10010CEC8 = result;
  return result;
}

uint64_t sub_1000736BC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v16[0] = sub_100073190(a1, a2);
  sub_100041AA0(&unk_10010A850, qword_1000C3418);
  sub_100073E38();
  v4 = BidirectionalCollection<>.joined(separator:)();
  v6 = v5;

  v7 = (v3 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
  v8 = *(v3 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8);
  *v7 = v4;
  v7[1] = v6;

  sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000C29F0;
  strcpy(v16, "APNS Token: ");
  BYTE5(v16[1]) = 0;
  HIWORD(v16[1]) = -5120;
  if (v7[1])
  {
    v10 = *v7;
    v11 = v7[1];
  }

  else
  {
    v11 = 0xE800000000000000;
    v10 = 0x6E656B6F74206F6ELL;
  }

  v12._countAndFlagsBits = v10;
  v12._object = v11;
  String.append(_:)(v12);

  v13 = v16[0];
  v14 = v16[1];
  *(v9 + 56) = &type metadata for String;
  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  debugPrint(_:separator:terminator:)();
}

void sub_1000738A8(void *a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken + 8))
  {
    v5 = *(v2 + OBJC_IVAR____TtC18Feedback_Assistant22FBANotificationManager_apnsToken);
    sub_100054080();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

    [ObjCClassFromMetadata platform];
    sub_100041AA0(&qword_10010A448, &qword_1000C3460);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C2520;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    v9 = String._bridgeToObjectiveC()();

    *(inited + 48) = v9;
    *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 64) = v10;
    v11 = String._bridgeToObjectiveC()();

    *(inited + 72) = v11;
    *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 88) = v12;
    [a1 integerValue];
    *(inited + 96) = Int._bridgeToObjectiveC()();
    v13 = sub_100076240(inited);
    swift_setDeallocating();
    sub_100041AA0(&qword_10010A450, &qword_1000C3468);
    swift_arrayDestroy();
    sub_100072F3C(v13);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100073C48;
    v21 = &unk_1000E1858;
    v15 = _Block_copy(&aBlock);
    v22 = FBAMailboxesViewController.controller(_:didFinishLoadingDraft:devicesController:draftingController:);
    v23 = 0;
    aBlock = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100073CD0;
    v21 = &unk_1000E1880;
    v16 = _Block_copy(&aBlock);
    [a2 registerAPNSWithRequestDictionary:isa success:v15 error:v16];
    _Block_release(v16);
    _Block_release(v15);
  }

  else
  {
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1000C29F0;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 32) = 0xD000000000000043;
    *(v17 + 40) = 0x80000001000CD270;
    debugPrint(_:separator:terminator:)();
  }
}

uint64_t sub_100073C48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v4(v6, v8);
  sub_100046730(v6, v8);
}

void sub_100073CD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

id sub_100073DB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBANotificationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100073E20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100073E38()
{
  result = qword_10010A410;
  if (!qword_10010A410)
  {
    sub_100041B4C(&unk_10010A850, qword_1000C3418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10010A410);
  }

  return result;
}

id FBACustomBehavior.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_makeVisible] = 0;
  v5 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_notifyOnUpload] = 0;
  v6 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_formId] = 0;
  v7 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers;
  *&v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_answers] = 0;
  v8 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_launchNewDraft] = 0;
  v9 = OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive;
  v2[OBJC_IVAR____TtC18Feedback_Assistant17FBACustomBehavior_isCaptive] = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = sub_100065F3C(0x7369765F656B616DLL, 0xEC000000656C6269);
    if ((v12 & 1) != 0 && (v33 = *(*(a1 + 56) + 8 * v11), swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v10) = v32;
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  v2[v4] = v10;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = sub_100065F3C(0xD000000000000010, 0x80000001000CD2E0);
    if ((v15 & 1) != 0 && (v34 = *(*(a1 + 56) + 8 * v14), swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v13) = v32;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  v2[v5] = v13;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = sub_100065F3C(0x73726577736E61, 0xE700000000000000);
    if (v18 & 1) != 0 && (v35 = *(*(a1 + 56) + 8 * v17), swift_unknownObjectRetain(), sub_100041AA0(&qword_10010A498, &unk_1000C3480), (swift_dynamicCast()))
    {
      v16 = v32;
    }

    else
    {
      v16 = 0;
    }
  }

  v19 = *&v2[v7];
  *&v2[v7] = v16;

  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = sub_100065F3C(0xD000000000000010, 0x80000001000CD300);
    if ((v22 & 1) != 0 && (v36 = *(*(a1 + 56) + 8 * v21), swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v20) = v32;
    }

    else
    {
      LOBYTE(v20) = 0;
    }
  }

  v2[v8] = v20;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = sub_100065F3C(0x69747061635F7369, 0xEA00000000006576);
    if ((v25 & 1) != 0 && (v37 = *(*(a1 + 56) + 8 * v24), swift_unknownObjectRetain(), swift_dynamicCast()))
    {
      LOBYTE(v23) = v32;
    }

    else
    {
      LOBYTE(v23) = 0;
    }
  }

  v2[v9] = v23;
  if (*(a1 + 16) && (v26 = sub_100065F3C(0x64695F6D726F66, 0xE700000000000000), (v27 & 1) != 0))
  {
    v28 = *(*(a1 + 56) + 8 * v26);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      v29 = [objc_allocWithZone(NSNumber) initWithInteger:v32];
      v30 = *&v2[v6];
      *&v2[v6] = v29;
    }
  }

  else
  {
  }

  v38.receiver = v2;
  v38.super_class = type metadata accessor for FBACustomBehavior();
  return objc_msgSendSuper2(&v38, "init");
}

id FBACustomBehavior.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBACustomBehavior();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100074870(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100077778(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100074964(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100077884(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_100074B88()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_questionGroupsStack;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v4 = Strong;
  sub_100075448();

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v6 = v5;
  [v5 setSpacing:20.0];

  v7 = OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem;
  v8 = *&v1[OBJC_IVAR____TtC18Feedback_Assistant25FBAResponseItemDetailCell_contentItem];
  v72 = v1;
  if (v8)
  {
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v10 = v9;
    v69 = v8;
    v11 = [v69 displayTitle];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = *&v1[v7];
    if (v15)
    {
      v16 = [v15 feedback];
      v17 = [v16 status];
    }

    else
    {
      v17 = 0;
    }

    v19 = v69;
    sub_100075574(v12, v14, v17, [v69 isClosedFeedback]);

    v20 = [v69 formResponseStub];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 questionGroupStubs];
      if (!v22)
      {

        goto LABEL_51;
      }

      v23 = v22;
      v68 = v21;
      sub_1000497E4(0, &qword_10010A508, FBKQuestionGroupStub_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v24 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v26 = 0;
        v71 = v2;
        v70 = i;
        while (1)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v27 = *(v24 + 32 + 8 * v26);
          }

          v28 = v27;
          v29 = __OFADD__(v26++, 1);
          if (v29)
          {
            break;
          }

          v30 = swift_unknownObjectWeakLoadStrong();
          if (!v30)
          {
            goto LABEL_76;
          }

          v31 = v30;
          v32 = [objc_allocWithZone(UIStackView) init];
          [v32 setAxis:1];
          [v32 setSpacing:20.0];
          v33 = [v28 title];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          sub_100075B80();

          v34 = [v28 questionAnswerPairs];
          sub_1000497E4(0, &qword_10010A510, FBKQuestionAnswerPair_ptr);
          v35 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v35 >> 62)
          {
            v36 = _CocoaArrayWrapper.endIndex.getter();
            if (!v36)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v36)
            {
              goto LABEL_30;
            }
          }

          if (v36 < 1)
          {
            goto LABEL_45;
          }

          v37 = 0;
          do
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v38 = *(v35 + 8 * v37 + 32);
            }

            v39 = v38;
            ++v37;
            v40 = sub_100076590(v38);
            [v32 addArrangedSubview:v40];
          }

          while (v36 != v37);
LABEL_30:

          [v31 addArrangedSubview:v32];

          v2 = v71;
          v41 = swift_unknownObjectWeakLoadStrong();
          if (!v41)
          {
            goto LABEL_77;
          }

          v42 = v41;
          v43 = [objc_allocWithZone(UIView) init];
          [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
          v44 = [v43 heightAnchor];
          v45 = [v44 constraintEqualToConstant:0.5];

          [v45 setActive:1];
          v46 = [objc_opt_self() separatorColor];
          [v43 setBackgroundColor:v46];

          [v42 addArrangedSubview:v43];
          [v42 setCustomSpacing:v43 afterView:8.0];

          if (v26 == v70)
          {
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

LABEL_32:
      v47 = swift_unknownObjectWeakLoadStrong();
      if (!v47)
      {
        goto LABEL_83;
      }

      v48 = v47;
      v49 = [v47 arrangedSubviews];

      sub_1000497E4(0, &qword_100109D00, UIView_ptr);
      v50 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v50 >> 62)
      {
        v51 = _CocoaArrayWrapper.endIndex.getter();
        if (v51)
        {
LABEL_35:
          v29 = __OFSUB__(v51, 1);
          v52 = v51 - 1;
          if (v29)
          {
            __break(1u);
          }

          else if ((v50 & 0xC000000000000001) == 0)
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (v52 < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v53 = *(v50 + 8 * v52 + 32);
LABEL_40:
              v54 = v53;

              v55 = swift_unknownObjectWeakLoadStrong();
              if (!v55)
              {
LABEL_84:
                __break(1u);
                return;
              }

              v56 = v55;

              [v56 removeArrangedSubview:v54];

              [v54 removeFromSuperview];
              goto LABEL_50;
            }

            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

          v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_40;
        }
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51)
        {
          goto LABEL_35;
        }
      }

LABEL_50:

      v19 = v68;
    }
  }

  else
  {
    v18 = [objc_opt_self() appHandle];
    if (!v18)
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

    v19 = v18;
    static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)();
  }

LABEL_51:

  v57 = swift_unknownObjectWeakLoadStrong();
  if (!v57)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v58 = v57;
  v59 = [v57 arrangedSubviews];

  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v60 >> 62)
  {
    goto LABEL_68;
  }

  for (j = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v62 = 0;
    while (1)
    {
      if ((v60 & 0xC000000000000001) != 0)
      {
        v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v62 >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v64 = *(v60 + 8 * v62 + 32);
      }

      v65 = v64;
      v66 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v63 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v62;
      if (v66 == j)
      {
        goto LABEL_69;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_69:

  v67 = sub_100076D1C(_swiftEmptyArrayStorage);

  sub_100074964(v67);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v72 setAccessibilityElements:isa];
}

void sub_100075448()
{
  v1 = [v0 arrangedSubviews];
  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  v4 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    [v0 removeArrangedSubview:v5];
    [v6 removeFromSuperview];
  }

  while (v3 != v4);
LABEL_10:
}

void sub_100075574(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v25 = [objc_allocWithZone(UILabel) init];
  [v25 setNumberOfLines:0];
  v7 = String._bridgeToObjectiveC()();
  [v25 setText:v7];

  v8 = sub_100076344();
  [v25 setFont:v8];

  [v4 addArrangedSubview:v25];
  if ((a4 & 1) == 0)
  {
    v11 = v25;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = objc_allocWithZone(UILabel);
  v10 = v25;
  v11 = [v9 init];
  [v11 setNumberOfLines:0];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = [objc_opt_self() mainBundle];
  v27._object = 0xE000000000000000;
  v16._object = 0x80000001000CD620;
  v16._countAndFlagsBits = 0xD000000000000015;
  v17.value._countAndFlagsBits = v12;
  v17.value._object = v14;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v27);

  v19 = String._bridgeToObjectiveC()();

  [v11 setText:v19];

  v20 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor:v20];

  [v4 addArrangedSubview:v11];
  [v4 setCustomSpacing:v10 afterView:5.0];

  if (a3)
  {
LABEL_5:
    v21 = objc_allocWithZone(UILabel);
    v22 = a3;
    v23 = [v21 init];
    [v23 setNumberOfLines:0];
    v24 = [v22 attributedStringRepresentation];
    [v23 setAttributedText:v24];

    [v4 addArrangedSubview:v23];
    [v4 setCustomSpacing:v11 afterView:5.0];

    v11 = v23;
  }

LABEL_6:
  sub_10007588C();
}

void sub_10007588C()
{
  v4 = [objc_allocWithZone(UIView) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = [v4 heightAnchor];
  v2 = [v1 constraintEqualToConstant:0.5];

  [v2 setActive:1];
  v3 = [objc_opt_self() separatorColor];
  [v4 setBackgroundColor:v3];

  [v0 addArrangedSubview:v4];
  [v0 setCustomSpacing:v4 afterView:8.0];
}

void sub_1000759B4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FBAResponseItemDetailCell();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v2 = Strong;
  [Strong sizeToFit];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3;
  v5 = [v3 arrangedSubviews];

  sub_1000497E4(0, &qword_100109D00, UIView_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 layoutSubviews];
  }

LABEL_12:

  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 layoutSubviews];

    return;
  }

LABEL_17:
  __break(1u);
}

void sub_100075B80()
{
  v4 = [objc_allocWithZone(UILabel) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setNumberOfLines:0];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v4 setFont:v1];

  String.uppercased()();
  v2 = String._bridgeToObjectiveC()();

  [v4 setText:v2];

  v3 = [objc_opt_self() secondaryLabelColor];
  [v4 setTextColor:v3];

  [v0 addArrangedSubview:v4];
  [v0 setCustomSpacing:v4 afterView:8.0];
}

id sub_100075E5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FBAResponseItemDetailCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100075F00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A530, &qword_1000C3540);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100045460(v4, &v11, &qword_10010A538, &qword_1000C3548);
      v5 = v11;
      result = sub_10006906C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10006FB68(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100076028(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A520, &qword_1000C3530);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10006906C(v6);
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

unint64_t sub_100076118(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A518, &qword_1000C3528);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100045460(v4, &v11, &qword_10010A110, qword_1000C30B0);
      v5 = v11;
      result = sub_10006906C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10006FB68(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100076240(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100041AA0(&qword_10010A528, &qword_1000C3538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100065F3C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

id sub_100076344()
{
  sub_100041AA0(&qword_10010A0F8, &qword_1000C3520);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C29F0;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = UIFontWeightBold;
  v1 = UIFontWeightTrait;
  v2 = sub_100076028(inited);
  swift_setDeallocating();
  sub_1000454C8(inited + 32, &qword_10010A100, &qword_1000C30A0);
  v3 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleHeadline];
  sub_100041AA0(&qword_10010A0F0, &unk_1000C3090);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1000C29F0;
  *(v4 + 32) = UIFontDescriptorTraitsAttribute;
  *(v4 + 64) = sub_100041AA0(&qword_10010A108, &qword_1000C30A8);
  *(v4 + 40) = v2;
  v5 = UIFontDescriptorTraitsAttribute;
  sub_100076118(v4);
  swift_setDeallocating();
  sub_1000454C8(v4 + 32, &qword_10010A110, qword_1000C30B0);
  type metadata accessor for AttributeName(0);
  sub_1000768D4();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v3 fontDescriptorByAddingAttributes:isa];

  v8 = [objc_opt_self() fontWithDescriptor:v7 size:20.0];
  v9 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v10 = [v9 scaledFontForFont:v8];

  return v10;
}

id sub_100076590(void *a1)
{
  v2 = [objc_allocWithZone(UIStackView) init];
  [v2 setAxis:1];
  [v2 setSpacing:3.0];
  v3 = [objc_allocWithZone(UILabel) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setNumberOfLines:0];
  v4 = objc_opt_self();
  v5 = [v4 preferredFontForTextStyle:UIFontTextStyleHeadline];
  [v3 setFont:v5];

  v6 = [a1 questionText];
  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v3 setText:v6];

  v7 = [objc_allocWithZone(UILabel) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  v8 = [v4 preferredFontForTextStyle:UIFontTextStyleBody];
  [v7 setFont:v8];

  v9 = [a1 answerText];
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = String.count.getter();

  if (v11 < 1)
  {

LABEL_7:
    v12 = [objc_opt_self() mainBundle];
    v17._object = 0x80000001000CD5F0;
    v13._object = 0x80000001000CD5D0;
    v17._countAndFlagsBits = 0xD000000000000026;
    v13._countAndFlagsBits = 0xD00000000000001FLL;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v17);

    v15 = String._bridgeToObjectiveC()();

    [v7 setText:v15];

    v10 = [objc_opt_self() secondaryLabelColor];
    [v7 setTextColor:v10];
    goto LABEL_8;
  }

  [v7 setText:v10];
LABEL_8:

  [v2 addArrangedSubview:v3];
  [v2 addArrangedSubview:v7];

  return v2;
}

unint64_t sub_1000768D4()
{
  result = qword_100109068;
  if (!qword_100109068)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100109068);
  }

  return result;
}

void sub_10007692C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr);
    sub_10007DA50(&qword_100109998, &qword_100109990, FBKContentItem_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
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

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_1000497E4(0, &qword_100109990, FBKContentItem_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_100053364();
      return;
    }

LABEL_17:
    v12 = [v11 area];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100077778(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100077778((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_100076C2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v11 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 32;
    do
    {
      sub_100046784(v8, &v10);
      sub_1000497E4(0, a2, a3);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v9 = v11[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v8 += 32;
      --v4;
    }

    while (v4);
    return v11;
  }

  return result;
}

char *sub_100076D30(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v17 = &_swiftEmptyArrayStorage;
  result = sub_100077CCC(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_1000497E4(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = v7[2];
        v10 = v7[3];
        if (v11 >= v10 >> 1)
        {
          sub_100077CCC((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        v7[2] = v11 + 1;
        sub_10006FB68(v16, &v7[4 * v11 + 4]);
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1000497E4(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = v7[2];
        v14 = v7[3];
        if (v15 >= v14 >> 1)
        {
          sub_100077CCC((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        v7[2] = v15 + 1;
        sub_10006FB68(v16, &v7[4 * v15 + 4]);
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

void *sub_100076F1C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = -1 << *(v1 + 32);
    v33 = v1 + 56;
    v5 = _HashTable.startBucket.getter();
    v6 = *(v1 + 36);
    result = sub_1000497E4(0, &qword_10010A3F8, NSPredicate_ptr);
    v7 = 0;
    v29 = v1 + 64;
    v31 = v1;
    v30 = v6;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v33 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v32 = v7;
      v6 = v2;
      v10 = (*(v1 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      sub_100041AA0(&unk_100109860, qword_1000C2DA0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1000C29F0;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 64) = sub_100047484();
      *(v13 + 32) = v11;
      *(v13 + 40) = v12;
      swift_bridgeObjectRetain_n();
      v14 = NSPredicate.init(format:_:)();
      v15 = type metadata accessor for FBAFilter();
      v16 = objc_allocWithZone(v15);
      v17 = OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image;
      *&v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_image] = 0;
      v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_active] = 0;
      swift_unknownObjectWeakInit();
      *&v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_predicate] = v14;
      v18 = &v16[OBJC_IVAR____TtC18Feedback_Assistant9FBAFilter_title];
      *v18 = v11;
      v18[1] = v12;
      v19 = *&v16[v17];
      *&v16[v17] = 0;

      v20 = v14;

      v34.receiver = v16;
      v34.super_class = v15;
      objc_msgSendSuper2(&v34, "init");

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = v35[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v31;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v8 = 1 << *(v31 + 32);
      if (v5 >= v8)
      {
        goto LABEL_23;
      }

      v22 = *(v33 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v6;
      LODWORD(v6) = v30;
      if (v30 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v29 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_10007D288(v5, v30, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_10007D288(v5, v30, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v5 = v8;
      if (v32 + 1 == v2)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

BOOL sub_1000774D4(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

size_t sub_1000775A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100041AA0(&qword_10010A5A0, qword_1000C35B0);
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

char *sub_100077778(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100077884(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100077994(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A540, &qword_1000C3560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100077A98(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100041AA0(&qword_10010A598, &qword_1000C35A8);
  v4 = *(type metadata accessor for FBKFeedbackUpload.BugSession() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_100077B94(uint64_t a1, uint64_t a2)
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

  sub_100041AA0(&qword_10010A0D0, &qword_1000C2CB0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_100077C1C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100077B94(v2, 0);

    v1 = sub_10007B5AC(&v5, v3 + 4, v2, v1);
    sub_100053364();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  return v3;
}

char *sub_100077CCC(char *a1, int64_t a2, char a3)
{
  result = sub_100077D0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077CEC(char *a1, int64_t a2, char a3)
{
  result = sub_100077E1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100077D0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_10010A040, &unk_1000C37D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100077E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100041AA0(&qword_100109890, &qword_1000C2CA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100077F3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10007819C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100078418(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100041AA0(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_10007863C(uint64_t a1, uint64_t a2)
{
  NSObject._rawHashValue(seed:)(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1000786C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_100078AB8(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_100078834(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1000786C0(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000788C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100041AA0(&qword_10010A588, &qword_1000C3598);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100078AB8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100078D00(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100079600(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100078E50(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_100079780(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_100078FFC(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      sub_1000497E4(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v37;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_100079270(v15, result + 1, a5, a6, a3, a4);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_100078418(v29 + 1, a5, a6);
        }

        v30 = v16;
        sub_10007863C(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    sub_1000497E4(0, a3, a4);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38 = *v11;
      v27 = a2;
      sub_100079470(v27, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v38;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

Swift::Int sub_100079270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    sub_100041AA0(a3, a4);
    v10 = static _SetStorage.convert(_:capacity:)();
    v23 = v10;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_1000497E4(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_100078418(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = NSObject._rawHashValue(seed:)(*(v23 + 40));
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v10;
}

void sub_100079470(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100078418(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100079C14(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_10007A1E0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1000497E4(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100079600(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100077F3C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100079968();
      goto LABEL_16;
    }

    sub_100079D54(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100079780(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10007819C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100079AC4();
      goto LABEL_16;
    }

    sub_100079F8C(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100079968()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100079AC4()
{
  v1 = v0;
  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_100079C14(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100041AA0(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100079D54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100041AA0(&qword_10010A548, &qword_1000C3568);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100079F8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100041AA0(&qword_10010A580, &qword_1000C3590);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10007A1E0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100041AA0(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_10007A3EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10007BAA4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_10007A468(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_10007A468(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for FBAFilter();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_10007A6E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10007A56C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10007A56C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 title];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 title];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_10007A6E8(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_10007AEE8((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_10007B360(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_134;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_10007B2D4(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_10007B360(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 title];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 title];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 title];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 title];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_100077994(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_100077994((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
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
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_10007AEE8((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_10007B360(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_121;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_10007B2D4(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 title];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 title];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
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