id sub_10014DF3C()
{
  result = *&v0[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView];
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = [result recipients];
  if (result)
  {
    v2 = result;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = sub_1005373B4(v3);

    if (v4)
    {
      if (v4 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_6;
        }
      }

      else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_6:
        sub_100437A74(0);
        v5 = swift_allocObject();
        *(v5 + 16) = v0;
        v6 = v0;
        v7 = sub_10019A3DC(v4, sub_10014FF04, v5);
      }
    }
  }

  return result;
}

uint64_t sub_10014E088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v4);
  (*(v6 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a3 + OBJC_IVAR____TtC6FindMy40FMItemSharingContactPickerViewController_item);
  type metadata accessor for FMIPShareItemAction();
  swift_allocObject();

  v7 = FMIPShareItemAction.init(item:handles:)();
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4CD8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemSharingContactPickerViewController: Will perform sendShareInvite action", v11, 2u);
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10014FF0C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_1006292F0;
  v13 = _Block_copy(aBlock);
  v14 = objc_opt_self();

  v15 = [v14 timerWithTimeInterval:0 repeats:v13 block:60.0];
  _Block_release(v13);

  v16 = [objc_opt_self() mainRunLoop];
  [v16 addTimer:v15 forMode:NSDefaultRunLoopMode];

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;

  v19 = v15;
  sub_1000D8B2C(v7, sub_10014FF14, v18);
}

void sub_10014E428()
{
  v0 = type metadata accessor for FMIPProductType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &aBlock[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1003EB538(0);
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005B14(v6, qword_1006D4CD8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "FMItemSharingContactPickerViewController: sendShareInvite - error: timeout", v9, 2u);
    }

    v10 = objc_opt_self();
    v11 = [v10 mainBundle];
    v36._object = 0x800000010057D3F0;
    v12._countAndFlagsBits = 0xD000000000000025;
    v12._object = 0x8000000100581080;
    v13.value._object = 0x800000010057D3D0;
    v36._countAndFlagsBits = 0xD000000000000018;
    v13.value._countAndFlagsBits = 0xD000000000000013;
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v36);

    FMIPItem.productType.getter();
    v15 = FMIPProductType.isAirTag.getter();
    (*(v1 + 8))(v3, v0);
    if (v15)
    {
      v16 = "CT_PICKER_ERROR_ACTION";
    }

    else
    {
      v16 = "CT_PICKER_ERROR_TITLE";
    }

    if (v15)
    {
      v17 = 0xD000000000000029;
    }

    else
    {
      v17 = 0xD000000000000027;
    }

    v18 = [v10 mainBundle];
    v37._object = 0x800000010057D3F0;
    v19._object = (v16 | 0x8000000000000000);
    v20.value._object = 0x800000010057D3D0;
    v37._countAndFlagsBits = 0xD000000000000018;
    v19._countAndFlagsBits = v17;
    v20.value._countAndFlagsBits = 0xD000000000000013;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v37);

    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];

    v25 = [v10 mainBundle];
    v38._object = 0x800000010057D3F0;
    v26._countAndFlagsBits = 0xD000000000000026;
    v26._object = 0x80000001005812F0;
    v27.value._object = 0x800000010057D3D0;
    v38._countAndFlagsBits = 0xD000000000000018;
    v27.value._countAndFlagsBits = 0xD000000000000013;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v26, v27, v25, v28, v38);

    v29 = swift_allocObject();
    *(v29 + 16) = v5;
    v30 = v5;
    v31 = String._bridgeToObjectiveC()();

    aBlock[4] = sub_100150150;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100017328;
    aBlock[3] = &unk_100629480;
    v32 = _Block_copy(aBlock);

    v33 = [objc_opt_self() actionWithTitle:v31 style:0 handler:v32];
    _Block_release(v32);

    [v24 addAction:v33];
    [v30 presentViewController:v24 animated:1 completion:0];
  }
}

void sub_10014E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = type metadata accessor for FMIPItemActionStatus();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v33 = a1;
    v34 = a5;
    v17 = v8;
    if (qword_1006AED68 != -1)
    {
      swift_once();
    }

    v18 = a3;
    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4CD8);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "FMItemSharingContactPickerViewController: Did perform sendShareInvite action", v22, 2u);
    }

    v23 = type metadata accessor for TaskPriority();
    v24 = *(*(v23 - 8) + 56);
    v32 = v14;
    v24(v14, 1, 1, v23);
    v25 = v9;
    (*(v9 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v17);
    type metadata accessor for MainActor();
    v26 = v34;
    v27 = v16;

    v28 = static MainActor.shared.getter();
    v29 = (*(v25 + 80) + 48) & ~*(v25 + 80);
    v30 = (v10 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    *(v31 + 2) = v28;
    *(v31 + 3) = &protocol witness table for MainActor;
    *(v31 + 4) = v26;
    *(v31 + 5) = v27;
    (*(v25 + 32))(&v31[v29], v11, v17);
    *&v31[v30] = v18;
    sub_100170C90(0, 0, v32, &unk_100555330, v31);
  }
}

uint64_t sub_10014EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v8 = type metadata accessor for FMIPBeaconSharingLimits();
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  v9 = type metadata accessor for FMIPProductType();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  v10 = type metadata accessor for FMIPItemActionStatus();
  v7[36] = v10;
  v7[37] = *(v10 - 8);
  v7[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[39] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10014EDEC, v12, v11);
}

uint64_t sub_10014EDEC()
{
  v105 = v0;
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[37];
  v4 = v0[26];

  [v4 invalidate];
  sub_1003EB538(0);
  (*(v3 + 104))(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_100150054();
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v1, v2);
  if ((v5 & 1) == 0)
  {
    v0[23] = sub_10014CD94(v0[29]);
    sub_10007EBC0(&qword_1006C0C10);
    sub_1001500AC();
    v9.super.isa = BidirectionalCollection<>.joined(separator:)();
    v11 = v10;

    if (qword_1006AED68 != -1)
    {
LABEL_52:
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100005B14(v12, qword_1006D4CD8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v104[0] = v16;
      *v15 = 136315138;
      v17 = sub_100005B4C(v9.super.isa, v11, v104);

      *(v15 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "FMItemSharingContactPickerViewController: sendShareInvite - error: %s", v15, 0xCu);
      sub_100006060(v16);
    }

    else
    {
    }

    v19 = v0[34];
    v18 = v0[35];
    v101 = v0[31];
    v102 = v0[29];
    v103 = v0[33];
    v20 = objc_opt_self();
    v21.super.isa = [v20 mainBundle];
    v107._object = 0x800000010057D3F0;
    v22._countAndFlagsBits = 0xD000000000000025;
    v22._object = 0x8000000100581080;
    v23.value._object = 0x800000010057D3D0;
    v107._countAndFlagsBits = 0xD000000000000018;
    v23.value._countAndFlagsBits = 0xD000000000000013;
    v24._countAndFlagsBits = 0;
    v24._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v107);

    FMIPItem.productType.getter();
    LOBYTE(v21.super.isa) = FMIPProductType.isAirTag.getter();
    v96 = *(v19 + 8);
    v96(v18, v103);
    v100 = v20;
    v9.super.isa = [v20 mainBundle];
    v25 = "CT_PICKER_ERROR_TITLE";
    if (v21.super.isa)
    {
      v25 = "CT_PICKER_ERROR_ACTION";
      v26 = 0xD000000000000029;
    }

    else
    {
      v26 = 0xD000000000000027;
    }

    v108._object = 0x800000010057D3F0;
    v27 = v25 | 0x8000000000000000;
    v28.value._object = 0x800000010057D3D0;
    v108._countAndFlagsBits = 0xD000000000000018;
    v28.value._countAndFlagsBits = 0xD000000000000013;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v26, v28, v9, v29, v108);

    v30 = -1;
    v31 = -1 << *(v102 + 32);
    if (-v31 < 64)
    {
      v30 = ~(-1 << -v31);
    }

    v32 = v30 & *(v102 + 64);
    v33 = (63 - v31) >> 6;

    v11 = 0;
    while (1)
    {
      while (1)
      {
        if (!v32)
        {
          while (1)
          {
            v34 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v34 >= v33)
            {
              v78 = v0[27];

              v79 = String._bridgeToObjectiveC()();

              v80 = String._bridgeToObjectiveC()();

              v81 = [objc_opt_self() alertControllerWithTitle:v79 message:v80 preferredStyle:1];

              v82 = [v100 mainBundle];
              v113._object = 0x800000010057D3F0;
              v83._countAndFlagsBits = 0xD000000000000026;
              v83._object = 0x80000001005812F0;
              v84.value._object = 0x800000010057D3D0;
              v113._countAndFlagsBits = 0xD000000000000018;
              v84.value._countAndFlagsBits = 0xD000000000000013;
              v85._countAndFlagsBits = 0;
              v85._object = 0xE000000000000000;
              NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v84, v82, v85, v113);

              v86 = swift_allocObject();
              *(v86 + 16) = v78;
              v87 = v78;
              v88 = String._bridgeToObjectiveC()();

              v0[6] = sub_100150110;
              v0[7] = v86;
              v0[2] = _NSConcreteStackBlock;
              v0[3] = 1107296256;
              v0[4] = sub_100017328;
              v0[5] = &unk_100629390;
              v89 = _Block_copy(v0 + 2);

              v90 = [objc_opt_self() actionWithTitle:v88 style:0 handler:v89];
              _Block_release(v89);

              [v81 addAction:v90];
              [v87 presentViewController:v81 animated:1 completion:0];

              goto LABEL_48;
            }

            v32 = *(v102 + 64 + 8 * v34);
            ++v11;
            if (v32)
            {
              v11 = v34;
              goto LABEL_19;
            }
          }

          __break(1u);
          goto LABEL_52;
        }

LABEL_19:
        v32 &= v32 - 1;
        swift_getErrorValue();
        v35 = v0[15];
        swift_errorRetain();
        v9.super.isa = sub_100271E80(v35);
        v37 = v36;
        if (v9.super.isa == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
        {
        }

        else
        {
          v9.super.isa = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v9.super.isa & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        swift_getErrorValue();
        v40 = sub_100271D20(v0[18]);
        if (v40 <= 9)
        {
          break;
        }

        if (v40 == 10)
        {
          v68 = v0[35];
          v99 = v0[33];

          v69 = [v100 mainBundle];
          v112._object = 0x800000010057D3F0;
          v70._countAndFlagsBits = 0xD000000000000034;
          v70._object = 0x80000001005811A0;
          v71.value._object = 0x800000010057D3D0;
          v112._countAndFlagsBits = 0xD000000000000018;
          v71.value._countAndFlagsBits = 0xD000000000000013;
          v72._countAndFlagsBits = 0;
          v72._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v69, v72, v112);

          FMIPItem.productType.getter();
          v73 = FMIPProductType.isAirTag.getter();
          v96(v68, v99);
          v47 = [v100 mainBundle];
          v9.super.isa = 0x800000010057D3F0;
          v92 = 0x800000010057D3F0;
          if (v73)
          {
            v48 = 0xD000000000000038;
            v49 = "PENDING_SHARES_MESSAGE";
          }

          else
          {
            v48 = 0xD000000000000036;
            v49 = "PENDING_SHARES_TITLE";
          }

LABEL_46:
          v74 = v49 | 0x8000000000000000;
          v75.value._object = 0x800000010057D3D0;
          v76 = 0xD000000000000018;
          v75.value._countAndFlagsBits = 0xD000000000000013;
          v77._countAndFlagsBits = 0;
          v77._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v48, v75, v47, v77, *(&v92 - 1));
        }

        else
        {
          if (v40 == 11)
          {
LABEL_32:
            v41 = v0[35];
            v97 = v0[33];

            v42 = [v100 mainBundle];
            v109._object = 0x800000010057D3F0;
            v43._countAndFlagsBits = 0xD00000000000002BLL;
            v43._object = 0x8000000100581260;
            v44.value._object = 0x800000010057D3D0;
            v109._countAndFlagsBits = 0xD000000000000018;
            v44.value._countAndFlagsBits = 0xD000000000000013;
            v45._countAndFlagsBits = 0;
            v45._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v109);

            FMIPItem.productType.getter();
            v46 = FMIPProductType.isAirTag.getter();
            v96(v41, v97);
            v47 = [v100 mainBundle];
            v9.super.isa = 0x800000010057D3F0;
            v92 = 0x800000010057D3F0;
            if (v46)
            {
              v48 = 0xD00000000000002FLL;
              v49 = "CT_PICKER_ERROR_LIMIT_MESSAGE";
            }

            else
            {
              v48 = 0xD00000000000002DLL;
              v49 = "CT_PICKER_ERROR_LIMIT_TITLE";
            }

            goto LABEL_46;
          }

LABEL_13:
        }
      }

      if (v40 != 6)
      {
        if (v40 == 7)
        {
          goto LABEL_32;
        }

        goto LABEL_13;
      }

      v50 = v0[35];
      v93 = v0[33];
      v98 = v0[32];
      v94 = v0[27];
      v95 = v0[30];

      v51.super.isa = [v100 mainBundle];
      v110._object = 0x800000010057D3F0;
      v52._countAndFlagsBits = 0xD000000000000032;
      v52._object = 0x80000001005810E0;
      v53.value._object = 0x800000010057D3D0;
      v110._countAndFlagsBits = 0xD000000000000018;
      v53.value._countAndFlagsBits = 0xD000000000000013;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v52, v53, v51, v54, v110);

      FMIPItem.productType.getter();
      LOBYTE(v51.super.isa) = FMIPProductType.isAirTag.getter();
      v96(v50, v93);
      v55 = (v51.super.isa & 1) == 0;
      if (v51.super.isa)
      {
        v56 = 0xD000000000000036;
      }

      else
      {
        v56 = 0xD000000000000034;
      }

      if (v55)
      {
        v57 = "PEOPLE_LIMIT_TITLE";
      }

      else
      {
        v57 = "PEOPLE_LIMIT_MESSAGE";
      }

      v58 = [v100 mainBundle];
      v111._object = 0x800000010057D3F0;
      v59._object = (v57 | 0x8000000000000000);
      v60.value._object = 0x800000010057D3D0;
      v111._countAndFlagsBits = 0xD000000000000018;
      v59._countAndFlagsBits = v56;
      v60.value._countAndFlagsBits = 0xD000000000000013;
      v61._countAndFlagsBits = 0;
      v61._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v59, v60, v58, v61, v111);

      sub_10007EBC0(&unk_1006B20B0);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_100552220;
      v63 = *(*(v94 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_mediator) + 24);
      v64 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
      swift_beginAccess();
      v65 = v63 + v64;
      v9.super.isa = v98;
      (*(v101 + 16))(v98, v65, v95);
      v66 = FMIPBeaconSharingLimits.maxCircleMembers.getter();
      result = (*(v101 + 8))(v98, v95);
      if (!v66)
      {
        __break(1u);
        return result;
      }

      *(v62 + 56) = &type metadata for UInt;
      *(v62 + 64) = &protocol witness table for UInt;
      *(v62 + 32) = v66 - 1;
      String.init(format:_:)();
    }
  }

  v6 = v0[27];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v0[12] = sub_1000822F4;
  v0[13] = v7;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100004AE4;
  v0[11] = &unk_1006293E0;
  v8 = _Block_copy(v0 + 8);

  [v6 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
LABEL_48:

  v91 = v0[1];

  return v91();
}

void sub_10014FB98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  v10[4] = a4;
  v10[5] = v8;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100004AE4;
  v10[3] = a5;
  v9 = _Block_copy(v10);

  [a2 dismissViewControllerAnimated:1 completion:v9];
  _Block_release(v9);
}

uint64_t sub_10014FC58()
{
  v1 = OBJC_IVAR____TtC6FindMy40FMItemSharingContactPickerViewController_item;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_10014FCC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMItemSharingContactPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMItemSharingContactPickerViewController()
{
  result = qword_1006B3648;
  if (!qword_1006B3648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10014FDB8()
{
  result = type metadata accessor for FMIPItem();
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

uint64_t sub_10014FE48(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3658);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10014FEB8()
{
  result = qword_1006B50C0;
  if (!qword_1006B50C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B50C0);
  }

  return result;
}

uint64_t sub_10014FF1C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1000E3478;

  return sub_10014EC3C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

unint64_t sub_100150054()
{
  result = qword_1006C0210;
  if (!qword_1006C0210)
  {
    type metadata accessor for FMIPItemActionStatus();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0210);
  }

  return result;
}

unint64_t sub_1001500AC()
{
  result = qword_1006B0700;
  if (!qword_1006B0700)
  {
    sub_10007EC08(&qword_1006C0C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0700);
  }

  return result;
}

id sub_100150190()
{
  v1 = v0;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4CD8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0x73286E6F69746361, 0xEF293A7265646E65, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemSharingContactPickerViewController: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v7 = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText + 8);
  if (v7 && ((v7 & 0x2000000000000000) != 0 ? (v8 = HIBYTE(v7) & 0xF) : (v8 = *(v1 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText) & 0xFFFFFFFFFFFFLL), v8))
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100192F0C(sub_10015038C, v9);
  }

  else
  {

    return sub_10014DF3C();
  }
}

char *sub_1001503CC(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v16._object = 0x8000000100581460;
  v5._object = 0x8000000100581430;
  v16._countAndFlagsBits = 0xD000000000000034;
  v5._countAndFlagsBits = 0xD000000000000022;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v16);

  v7 = [v3 mainBundle];
  v17._object = 0x80000001005814D0;
  v8._countAndFlagsBits = 0xD000000000000025;
  v8._object = 0x80000001005814A0;
  v17._countAndFlagsBits = 0xD000000000000037;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v17);

  v10 = objc_allocWithZone(v1);
  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [v10 initWithTitle:v11 detailText:v12 icon:0 contentLayout:1];

  *&v13[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_mediator] = a1;
  v14 = v13;

  sub_1001505AC();
  sub_100150924();

  return v14;
}

void sub_1001505AC()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_activityIndicator];
  [v1 setHidden:1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_boldButton];
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v23._object = 0x8000000100581540;
  v5._countAndFlagsBits = 0xD000000000000027;
  v5._object = 0x8000000100581510;
  v23._countAndFlagsBits = 0xD000000000000039;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v23);

  v7 = String._bridgeToObjectiveC()();

  [v2 setTitle:v7 forState:0];

  [v2 addTarget:v0 action:"continue" forControlEvents:64];
  v8 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_notNowButton];
  v9 = [v3 mainBundle];
  v24._object = 0x800000010057BF40;
  v10._countAndFlagsBits = 0x574F4E5F544F4ELL;
  v10._object = 0xE700000000000000;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v24);

  v12 = String._bridgeToObjectiveC()();

  [v8 setTitle:v12 forState:0];

  [v8 addTarget:v0 action:"ignore" forControlEvents:64];
  v13 = [v0 contentView];
  v14 = [objc_opt_self() systemBackgroundColor];
  [v13 setBackgroundColor:v14];

  v15 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_onboardingImageView];
  [v15 setContentMode:2];
  v16 = [v0 contentView];
  [v16 addSubview:v15];

  v17 = [v0 contentView];
  [v17 setClipsToBounds:1];

  v18 = [v0 buttonTray];
  [v18 addButton:v2];

  v19 = [v0 buttonTray];
  [v19 addButton:v8];

  v20 = [v0 view];
  if (v20)
  {
    v21 = v20;
    [v20 addSubview:v1];
  }

  else
  {
    __break(1u);
  }
}

void sub_100150924()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_activityIndicator];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_onboardingImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100552EE0;
  v4 = [v1 centerXAnchor];
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = [v5 centerXAnchor];

  v8 = [v4 constraintEqualToAnchor:v7];
  *(v3 + 32) = v8;
  v9 = [v1 bottomAnchor];
  v10 = [v0 view];
  if (!v10)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v11 safeAreaLayoutGuide];

  v14 = [v13 bottomAnchor];
  v15 = [v9 constraintEqualToAnchor:v14 constant:-40.0];

  *(v3 + 40) = v15;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:isa];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  v18 = [v2 centerYAnchor];
  v19 = [v0 contentView];
  v20 = [v19 centerYAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v17 + 32) = v21;
  v22 = [v2 leadingAnchor];
  v23 = [v0 contentView];
  v24 = [v23 leadingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v17 + 40) = v25;
  v26 = [v2 trailingAnchor];
  v27 = [v0 contentView];
  v28 = [v27 trailingAnchor];

  v29 = [v26 constraintEqualToAnchor:v28];
  *(v17 + 48) = v29;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v12 activateConstraints:v30];
}

uint64_t sub_100150EC8(void (*a1)(void))
{
  [*&v1[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_boldButton] setHidden:1];
  [*&v1[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_notNowButton] setHidden:1];
  v3 = *&v1[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_activityIndicator];
  [v3 setHidden:0];
  [v3 startAnimating];
  v4 = [v1 navigationItem];
  [v4 setHidesBackButton:1 animated:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a1();

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100151028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_mediator] = 0;
  v11 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_boldButton;
  *&v7[v11] = [objc_opt_self() boldButton];
  v12 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_notNowButton;
  *&v7[v12] = [objc_opt_self() linkButton];
  v13 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_activityIndicator;
  *&v7[v13] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v14 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_onboardingImageView;
  v15 = String._bridgeToObjectiveC()();
  v16 = [objc_opt_self() imageNamed:v15];

  v17 = [objc_allocWithZone(UIImageView) initWithImage:v16];
  *&v7[v14] = v17;
  *&v7[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v18 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v19 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = 0;
    goto LABEL_6;
  }

  v19 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = String._bridgeToObjectiveC()();

LABEL_6:
  v25.receiver = v7;
  v25.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v25, "initWithTitle:detailText:symbolName:contentLayout:", v18, v19, v20, a7, a5);

  return v21;
}

id sub_1001512F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  *&v7[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_mediator] = 0;
  v12 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_boldButton;
  *&v7[v12] = [objc_opt_self() boldButton];
  v13 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_notNowButton;
  *&v7[v13] = [objc_opt_self() linkButton];
  v14 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_activityIndicator;
  *&v7[v14] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v15 = OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_onboardingImageView;
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() imageNamed:v16];

  v18 = [objc_allocWithZone(UIImageView) initWithImage:v17];
  *&v7[v15] = v18;
  *&v7[OBJC_IVAR____TtC6FindMy42FMNotificationAuthOnboardingViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v20 = String._bridgeToObjectiveC()();
  }

  else
  {
    v20 = 0;
  }

  v23.receiver = v7;
  v23.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v23, "initWithTitle:detailText:icon:contentLayout:", v19, v20, a5, a6);

  return v21;
}

void sub_100151650(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  String.hash(into:)();
  if (a4)
  {
    Hasher._combine(_:)(1u);
    v7 = a4;
    NSObject.hash(into:)();

    if (a5)
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      type metadata accessor for AnyCancellable();
      sub_100152BA0(&qword_1006AF990, &type metadata accessor for AnyCancellable);
      dispatch thunk of Hashable.hash(into:)();
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
}

Swift::Int sub_100151758()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_100151650(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1001517C4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  sub_100151650(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t static UUID.< infix(_:_:)()
{
  v0 = UUID.uuidString.getter();
  v2 = v1;
  if (v0 == UUID.uuidString.getter() && v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100151918()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100151A10()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100151B00()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100151BF4()
{
  v1 = *(*v0 + 112);
  type metadata accessor for FMAccessoryDiscoveryDataSource.Item();
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = sub_10007EBC0(&qword_1006B3878);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_100151D10()
{
  sub_100151BF4();

  return swift_deallocClassInstance();
}

uint64_t sub_100151D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for UUID();
  v38 = *(v12 - 8);
  v39 = v12;
  __chkstk_darwin(v12);
  v34 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = a6;
  v14 = type metadata accessor for FMAccessoryDiscoveryDataSource.Item();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v36 = &v34 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v18 = *(TupleTypeMetadata2 - 8);
  v19 = __chkstk_darwin(TupleTypeMetadata2);
  v21 = &v34 - v20;
  v35 = v19;
  v22 = *(v19 + 48);
  v37 = v15;
  v23 = *(v15 + 16);
  v23(&v34 - v20, a1, v14);
  v23(&v21[v22], a2, v14);
  v24 = sub_10007EBC0(&qword_1006B76D0);
  v25 = *(*(v24 - 8) + 48);
  if (v25(v21, 1, v24) == 1)
  {
    v26 = 1;
    if (v25(&v21[v22], 1, v24) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v27 = v36;
    v23(v36, v21, v14);
    if (v25(&v21[v22], 1, v24) != 1)
    {
      v29 = v38;
      v28 = v39;
      v30 = v34;
      (*(v38 + 32))(v34, &v21[v22], v39);
      v31 = v27;
      v26 = static UUID.== infix(_:_:)();
      v32 = *(v29 + 8);
      v32(v30, v28);
      v32(v31, v28);
LABEL_8:
      v18 = v37;
      goto LABEL_9;
    }

    (*(v38 + 8))(v27, v39);
  }

  v26 = 0;
  v14 = v35;
LABEL_9:
  (*(v18 + 8))(v21, v14);
  return v26 & 1;
}

void sub_1001520E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v2, a2);
  v12 = sub_10007EBC0(&qword_1006B76D0);
  if ((*(*(v12 - 8) + 48))(v10, 1, v12) == 1)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    Hasher._combine(_:)(0);
    sub_100152BA0(&unk_1006C2410, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v8, v4);
  }
}

Swift::Int sub_10015230C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1001520E4(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_10015235C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  sub_1001520E4(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_10015240C()
{
}

id sub_100152508()
{
  v1 = swift_isaMask & *v0;
  v3 = *(v1 + qword_1006D3DA0);
  v4 = *(v1 + qword_1006D3DA0 + 16);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryDataSource();
  return objc_msgSendSuper2(&v5, "dealloc", v3, v4);
}

uint64_t sub_10015258C(void *a1)
{
}

void sub_1001526BC()
{
  type metadata accessor for FMAccessoryDiscoveryDataSource.Item();
  type metadata accessor for Optional();
  type metadata accessor for Published();
  if (v0 <= 0x3F)
  {
    sub_1001527DC();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1001527DC()
{
  if (!qword_1006B37B8)
  {
    sub_10007EC08(qword_1006B37C0);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B37B8);
    }
  }
}

uint64_t sub_100152850()
{
  sub_100012DA8();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1001528E4()
{
  result = qword_1006B3850;
  if (!qword_1006B3850)
  {
    sub_10007EC08(&qword_1006B3858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B3850);
  }

  return result;
}

unint64_t sub_10015294C()
{
  result = qword_1006B3860;
  if (!qword_1006B3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B3860);
  }

  return result;
}

unint64_t sub_1001529C0()
{
  result = qword_1006B3868;
  if (!qword_1006B3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B3868);
  }

  return result;
}

uint64_t sub_100152A14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if ((a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a3)
  {
    if (!a7)
    {
      return 0;
    }

    sub_100152B54();
    v12 = a7;
    v13 = a3;
    v14 = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a7)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      type metadata accessor for AnyCancellable();
      sub_100152BA0(&qword_1006B3870, &type metadata accessor for AnyCancellable);

      v15 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v15)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_100152B54()
{
  result = qword_1006BC2B0;
  if (!qword_1006BC2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BC2B0);
  }

  return result;
}

uint64_t sub_100152BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100152BE8(uint64_t a1)
{
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 96);
  v6 = *(*v1 + 104);
  v13 = *(*v1 + 80);
  v3 = v13;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  type metadata accessor for FMAccessoryDiscoveryDataSource.Item();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  v12[4] = v13;
  v12[5] = v4;
  v12[6] = v5;
  v12[7] = v6;
  swift_getKeyPath();
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v5;
  v12[3] = v6;
  swift_getKeyPath();
  (*(v8 + 16))(v10, a1, v7);

  return static Published.subscript.setter();
}

id sub_10015300C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSegmentedControl();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100153064()
{
  result = qword_1006B0C30;
  if (!qword_1006B0C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B0C30);
  }

  return result;
}

id sub_1001530D8(void *a1)
{
  sub_10007EBC0(&qword_1006BA720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = *a1;
  v3 = UIFontWeightTrait;
  v4 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0);
  v5 = sub_10002ACDC(v4);

  return v5;
}

unint64_t sub_1001531D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B39E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007204(v4, &v11, &qword_1006B39E0);
      v5 = v11;
      result = sub_10001ADB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000072E4(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10015330C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B38B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B38B8);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B38B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000726C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for FMBeaconSharingModuleEntry(0);
      result = sub_100154AC0(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for FMBeaconSharingModuleEntry);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1001534F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B38A8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
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

unint64_t sub_10015362C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3948);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3950);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3948);
      result = sub_1001B3964(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 32 * v13;
      v17 = *(v8 + 1);
      v18 = *(v8 + 1);
      *v16 = *v8;
      *(v16 + 8) = v17;
      *(v16 + 16) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_100153824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B39A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1001B3FC0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_10015391C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B38C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007204(v4, &v11, &qword_1006B38D0);
      v5 = v11;
      result = sub_10001ADB4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000072E4(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100153A44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B38D8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_100153B6C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_10007EBC0(a2);
    v4 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7 = *(i - 1);
      v8 = v6;
      result = sub_10001ADB4(v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v4[6] + 8 * result) = v7;
      *(v4[7] + 8 * result) = v8;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_100153C5C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3978);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3980);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3978);
      result = sub_1001B3964(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FMUnknownItemCellViewModel();
      result = sub_100154AC0(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FMUnknownItemCellViewModel);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_100153EA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10007EBC0(a2);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100153FB4(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3960);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3968);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3960);
      result = sub_1001B3964(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10015419C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B39B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10000726C(v5, v6);
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

unint64_t sub_1001542A0(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B3988);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B3990);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B3988);
      result = sub_1001B3964(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for FMModernPlatterButtonEntry(0);
      result = sub_100154AC0(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for FMModernPlatterButtonEntry);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1001544BC(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B39A8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B39B0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B39A8);
      result = sub_1001B3EEC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMItemCapabilities();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1001546A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B1AF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100007204(v4, v13, &qword_1006B3998);
      result = sub_10004CC50(v13);
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
      result = sub_1000072E4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1001547E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B38F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
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

unint64_t sub_1001548DC(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B38E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10007EBC0(&qword_1006B38F0);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100007204(v9, v5, &qword_1006B38E8);
      result = sub_1001B4074(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for FMAnnotationIdentifier();
      result = sub_100154AC0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for FMAnnotationIdentifier);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100154AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

NSString *sub_100154B28()
{
  v0 = objc_opt_self();
  v6 = UIFontTextStyleBody;
  v1 = [v0 labelColor];
  v2 = [v1 colorWithAlphaComponent:0.5];

  v3 = UIFontTextStyleFootnote;
  v4 = [v0 redColor];
  *&xmmword_1006D3DB0 = v6;
  *(&xmmword_1006D3DB0 + 1) = v6;
  qword_1006D3DC0 = v2;
  unk_1006D3DC8 = v3;
  *&xmmword_1006D3DD0 = v4;
  *(&xmmword_1006D3DD0 + 8) = xmmword_100555870;
  unk_1006D3DE8 = xmmword_100555880;
  qword_1006D3DF8 = 10;

  return v6;
}

char *sub_100154C28()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_style;
  if (qword_1006AEAB0 != -1)
  {
    swift_once();
  }

  v18[2] = xmmword_1006D3DD0;
  v18[3] = unk_1006D3DE0;
  v18[4] = unk_1006D3DF0;
  v18[0] = xmmword_1006D3DB0;
  v18[1] = *&qword_1006D3DC0;
  memmove(&v0[v1], &xmmword_1006D3DB0, 0x50uLL);
  v2 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  v3 = objc_allocWithZone(UITextView);
  sub_100156554(v18, v17);
  *&v0[v2] = [v3 init];
  v4 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel;
  *&v0[v5] = [objc_allocWithZone(UILabel) init];
  swift_unknownObjectWeakInit();
  v6 = &v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit];
  *v6 = 0;
  v6[8] = 1;
  v7 = &v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_initialMessageText];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText];
  v9 = type metadata accessor for FMMessageTextView();
  *v8 = 0;
  *(v8 + 1) = 0;
  v16.receiver = v0;
  v16.super_class = v9;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10015517C();
  sub_1001554C0();
  v11 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  v12 = *&v10[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView];
  v13 = String._bridgeToObjectiveC()();
  [v12 setText:v13];

  v14 = *&v10[v11];
  [v14 setDelegate:v10];

  sub_10015604C();
  sub_100155E6C();

  return v10;
}

id sub_100154E54(void *a1)
{
  v3 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_style;
  if (qword_1006AEAB0 != -1)
  {
    swift_once();
  }

  v22[2] = xmmword_1006D3DD0;
  v22[3] = unk_1006D3DE0;
  v22[4] = unk_1006D3DF0;
  v22[0] = xmmword_1006D3DB0;
  v22[1] = *&qword_1006D3DC0;
  memmove(&v1[v3], &xmmword_1006D3DB0, 0x50uLL);
  v4 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  v5 = objc_allocWithZone(UITextView);
  sub_100156554(v22, v21);
  *&v1[v4] = [v5 init];
  v6 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel;
  *&v1[v7] = [objc_allocWithZone(UILabel) init];
  swift_unknownObjectWeakInit();
  v8 = &v1[OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC6FindMy17FMMessageTextView_initialMessageText];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v1[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderText];
  v11 = type metadata accessor for FMMessageTextView();
  *v10 = 0;
  *(v10 + 1) = 0;
  v20.receiver = v1;
  v20.super_class = v11;
  v12 = objc_msgSendSuper2(&v20, "initWithCoder:", a1);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
    sub_10015517C();
    sub_1001554C0();
    v15 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
    v16 = *&v14[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView];
    v17 = String._bridgeToObjectiveC()();
    [v16 setText:v17];

    v18 = *&v14[v15];
    [v18 setDelegate:v14];

    sub_10015604C();
    sub_100155E6C();
  }

  return v13;
}

void sub_100155084()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMMessageTextView();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView] setScrollEnabled:1];
  v2 = *&v0[v1];
  [v2 contentSize];
  v4 = v3;
  [*&v0[v1] bounds];
  [v2 setScrollEnabled:CGRectGetHeight(v6) <= v4];
}

id sub_10015517C()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView];
  v3 = objc_opt_self();
  v4 = &v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_style];
  v5 = *&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_style];
  v6 = v2;
  v7 = [v3 preferredFontForTextStyle:v5];
  [v6 setFont:v7];

  v8 = *&v0[v1];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 clearColor];
  [v10 setBackgroundColor:v11];

  v12 = *&v0[v1];
  v13 = [v9 labelColor];
  [v12 setTextColor:v13];

  [*&v0[v1] setAdjustsFontForContentSizeCategory:0];
  [*&v0[v1] setKeyboardType:0];
  [*&v0[v1] setAutocorrectionType:2];
  [*&v0[v1] setTextAlignment:4];
  [*&v0[v1] setScrollEnabled:0];
  [v0 addSubview:*&v0[v1]];
  v14 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel;
  v15 = *(v4 + 1);
  v16 = *&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel];
  v17 = [v3 preferredFontForTextStyle:v15];
  [v16 setFont:v17];

  [*&v0[v14] setNumberOfLines:0];
  [*&v0[v14] setTextColor:*(v4 + 2)];
  [*&v0[v14] setTextAlignment:4];
  [*&v0[v14] setAdjustsFontForContentSizeCategory:1];
  [v0 addSubview:*&v0[v14]];
  v18 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel;
  v19 = *(v4 + 3);
  v20 = *&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel];
  v21 = [v3 preferredFontForTextStyle:v19];
  [v20 setFont:v21];

  [*&v0[v18] setAdjustsFontForContentSizeCategory:1];
  [*&v0[v18] setNumberOfLines:0];
  [*&v0[v18] setTextColor:*(v4 + 4)];
  [*&v0[v18] setTextAlignment:2];
  [*&v0[v18] setHidden:1];
  [*&v0[v18] setAdjustsFontForContentSizeCategory:1];
  v22 = *&v0[v18];

  return [v0 addSubview:v22];
}

void sub_1001554C0()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v41 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 topAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];

  *(v2 + 32) = v5;
  v6 = [*&v0[v1] bottomAnchor];
  v7 = [v0 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v2 + 40) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v2 + 48) = v11;
  v12 = [*&v0[v1] trailingAnchor];
  v13 = [v0 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v2 + 56) = v14;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:isa];

  v16 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100552EF0;
  v18 = [*&v0[v16] topAnchor];
  v19 = [*&v0[v1] topAnchor];
  v20 = &v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_style];
  v21 = [v18 constraintEqualToAnchor:v19 constant:*&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_style + 40]];

  *(v17 + 32) = v21;
  v22 = [*&v0[v16] leadingAnchor];
  v23 = [*&v0[v1] leadingAnchor];
  v24 = v20[6];
  v25 = [v22 constraintEqualToAnchor:v23 constant:v24];

  *(v17 + 40) = v25;
  v26 = [*&v0[v16] trailingAnchor];
  v27 = [*&v0[v1] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:-v24];

  *(v17 + 48) = v28;
  v29 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:v29];

  v30 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100552EF0;
  v32 = [*&v0[v30] bottomAnchor];
  v33 = [*&v0[v1] topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:-v20[7]];

  *(v31 + 32) = v34;
  v35 = [*&v0[v30] leadingAnchor];
  v36 = [*&v0[v1] leadingAnchor];
  v37 = [v35 constraintGreaterThanOrEqualToAnchor:v36];

  *(v31 + 40) = v37;
  v38 = [*&v0[v30] trailingAnchor];
  v39 = [*&v0[v1] trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v20[8]];

  *(v31 + 48) = v40;
  v42 = Array._bridgeToObjectiveC()().super.isa;

  [v41 activateConstraints:v42];
}

void sub_100155AF8(void *a1)
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = String.characterCount.getter();
    if (*(v1 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit + 8) == 1 || *(v1 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit) >= v8)
    {
    }

    else
    {
      sub_100035F3C();

      v9 = String.Index.init<A>(utf16Offset:in:)();
      v13 = v7;

      if (String.Index.init<A>(utf16Offset:in:)() >> 14 < v9 >> 14)
      {
        __break(1u);
        return;
      }

      String.subscript.getter();

      static String._fromSubstring(_:)();

      v10 = String._bridgeToObjectiveC()();

      [a1 setText:{v10, v5, v13}];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if ([Strong respondsToSelector:"textViewDidChange:"])
    {
      [v12 textViewDidChange:a1];
    }

    swift_unknownObjectRelease();
  }

  sub_100155E6C();
}

void sub_100155E6C()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView;
  [*(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) setScrollEnabled:1];
  v2 = *(v0 + v1);
  [v2 contentSize];
  v4 = v3;
  [*(v0 + v1) bounds];
  [v2 setScrollEnabled:CGRectGetHeight(v15) <= v4];

  v5 = [*(v0 + v1) text];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = String.characterCount.getter();

  [*(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_placeHolderLabel) setHidden:v7 > 0];
  if (*(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit + 8))
  {
    return;
  }

  v8 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_maxCharacterLimit);
  v9 = __OFSUB__(v8, v7);
  v10 = v8 - v7;
  if (v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (v7)
  {
    v11 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel);
    if (*(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_style + 72) >= v10)
    {
      v12 = v11;
      dispatch thunk of CustomStringConvertible.description.getter();
      v13 = String._bridgeToObjectiveC()();

      [v12 setText:v13];

      return;
    }
  }

  else
  {
    v11 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel);
  }

  [v11 setHidden:1];
}

void sub_10015604C()
{
  v1 = [objc_opt_self() sharedApplication];
  v10 = [v1 preferredContentSizeCategory];

  v2 = objc_opt_self();
  v3 = [v2 traitCollectionWithPreferredContentSizeCategory:v10];
  if (_UIContentSizeCategoryCompareToContentSizeCategory() == 1)
  {
    v4 = [v2 traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

    v3 = v4;
  }

  v5 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_remainingCharsLabel);
  v6 = objc_opt_self();
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_style + 24);
  v8 = v5;
  v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v3];
  [v8 setFont:v9];
}

id sub_1001561BC()
{
  result = [*(v0 + OBJC_IVAR____TtC6FindMy17FMMessageTextView_textView) font];
  if (result)
  {
    v2 = result;
    v3 = [result fontDescriptor];

    if (v3)
    {
      if ([v3 objectForKey:UIFontDescriptorTextStyleAttribute])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = 0u;
        v8 = 0u;
      }

      v9[0] = v7;
      v9[1] = v8;
      if (*(&v8 + 1))
      {
        type metadata accessor for TextStyle(0);
        if (swift_dynamicCast())
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v4._object = 0x8000000100581760;
          v4._countAndFlagsBits = 0xD000000000000011;
          v5 = String.hasPrefix(_:)(v4);

          result = v6;
          if (v5)
          {
            return result;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_10000D2C0(v9);
      }
    }

    return 0;
  }

  return result;
}

id sub_100156380()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMessageTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001564A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001564F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015658C()
{
  result = type metadata accessor for FMLostModeTrackable();
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

uint64_t sub_100156640()
{
  v135 = swift_isaMask & *v0;
  v1 = sub_10007EBC0(&qword_1006B64E0);
  __chkstk_darwin(v1 - 8);
  v133 = v112 - v2;
  v3 = sub_10007EBC0(&qword_1006B3B08);
  v136 = *(v3 - 8);
  v137 = v3;
  __chkstk_darwin(v3);
  v134 = v112 - v4;
  v5 = type metadata accessor for FMIPProductType();
  v123 = *(v5 - 8);
  v124 = v5;
  __chkstk_darwin(v5);
  v122 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v7 - 8);
  v130 = v112 - v8;
  v9 = sub_10007EBC0(&qword_1006B3B10);
  __chkstk_darwin(v9 - 8);
  v127 = v112 - v10;
  v140 = type metadata accessor for FMIPPerson();
  v11 = *(v140 - 1);
  v12 = __chkstk_darwin(v140);
  v126 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v125 = v112 - v15;
  v16 = __chkstk_darwin(v14);
  v117 = v112 - v17;
  __chkstk_darwin(v16);
  v118 = v112 - v18;
  v19 = type metadata accessor for FMIPDevice();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v131 = v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v22;
  __chkstk_darwin(v21);
  v24 = v112 - v23;
  v25 = type metadata accessor for FMIPItem();
  v138 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FMLostModeTrackable();
  v29 = __chkstk_darwin(v28);
  v139 = v112 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = v112 - v31;
  v141 = v0;
  v128 = qword_1006D3E00;
  sub_1000970F8(&v0[qword_1006D3E00], v112 - v31);
  v129 = v28;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v132 = v19;
  v120 = v24;
  if (EnumCaseMultiPayload == 1)
  {
    v34 = v25;
    v35 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v20 + 32))(v24, v32, v19);
    v36 = FMIPDevice.ownerIdentifier.getter();
    v37 = v24;
    v38 = v36;
    v39 = v19;
    v41 = v40;
    (*(v20 + 8))(v37, v39);
    v42 = &v32[v35];
    v25 = v34;
    sub_100012DF0(v42, &qword_1006B07D0);
  }

  else
  {
    v43 = v138;
    (*(v138 + 32))(v27, v32, v25);
    v38 = FMIPItem.owner.getter();
    v41 = v44;
    (*(v43 + 8))(v27, v25);
  }

  v45 = FMIPDefaultOwnerIdentifier.getter();
  v47 = v140;
  v119 = v25;
  if (v38 == v45 && v41 == v46)
  {
    goto LABEL_6;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    goto LABEL_8;
  }

  if (v38 == FMIPDefaultBeaconOwnerIdentifier.getter() && v41 == v80)
  {
LABEL_6:

LABEL_8:

    goto LABEL_9;
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v81)
  {
    goto LABEL_8;
  }

  v113 = v20;
  v112[1] = *&v141[qword_1006B8E58];

  v82 = FMIPManager.familyMembers.getter();

  v114 = *(v82 + 16);
  if (v114)
  {
    v83 = 0;
    v115 = v11 + 16;
    v116 = (v11 + 8);
    while (v83 < *(v82 + 16))
    {
      (*(v11 + 16))(v125, v82 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v83, v140);
      if (FMIPPerson.identifier.getter() == v38 && v84 == v41)
      {

LABEL_33:

        v106 = *(v11 + 32);
        v107 = v117;
        v108 = v140;
        v106(v117, v125, v140);
        v109 = v118;
        v106(v118, v107, v108);
        v52 = FMIPPerson.username.getter();
        v54 = v110;
        (*(v11 + 8))(v109, v108);
        v20 = v113;
        goto LABEL_11;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v85)
      {

        goto LABEL_33;
      }

      ++v83;
      result = (*v116)(v125, v140);
      if (v114 == v83)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

LABEL_27:

  v20 = v113;
  v47 = v140;
LABEL_9:

  v49 = v127;
  FMIPManager.owner.getter();
  result = (*(v11 + 48))(v49, 1, v47);
  if (result == 1)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v51 = v126;
  (*(v11 + 32))(v126, v49, v47);
  v52 = FMIPPerson.username.getter();
  v54 = v53;
  (*(v11 + 8))(v51, v47);
LABEL_11:

  v55 = sub_100477BA0(v52, v54, 0);

  if (v55)
  {
    sub_100123238(v52);
  }

  v56 = v141;
  v57 = *&v141[qword_1006B8E48];
  v58 = *(v57 + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_secondaryLabel);
  v59 = String._bridgeToObjectiveC()();

  [v58 setText:v59];

  v60 = v128;
  v61 = v130;
  sub_100284894(v130);
  sub_1004791AC(v61);
  v62 = v139;
  sub_1000970F8(&v56[v60], v139);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v63 = v20;
    v140 = *(v20 + 32);
    (v140)(v131, v62, v132);
    v64 = [v141 headerView];
    if (FMIPDevice.isConsideredAccessory.getter())
    {
      v65 = [objc_opt_self() mainBundle];
      v111 = 0x80000001005817F0;
      v66 = 0x80000001005817D0;
      v67 = 0xD000000000000029;
      v68 = 0xD000000000000017;
    }

    else
    {
      v65 = [objc_opt_self() mainBundle];
      v111 = 0x8000000100581820;
      v68 = 0x444F4D5F54534F4CLL;
      v66 = 0xEF454C5449545F45;
      v67 = 0xD000000000000021;
    }

    v86._countAndFlagsBits = 0;
    v86._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v68, 0, v65, v86, *&v67);

    v138 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    v87 = String._bridgeToObjectiveC()();

    [v64 setTitle:v87];

    v88 = v131;
    FMIPDevice.name.getter();
    v89 = *(v57 + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel);
    v90 = String._bridgeToObjectiveC()();

    [v89 setText:v90];

    v91 = swift_allocObject();
    swift_weakInit();
    v92 = v120;
    v93 = v132;
    (*(v20 + 16))(v120, v88, v132);
    v94 = (*(v20 + 80) + 24) & ~*(v20 + 80);
    v95 = v94 + v121;
    v96 = swift_allocObject();
    *(v96 + 16) = v91;
    (v140)(v96 + v94, v92, v93);
    *(v96 + v95) = 1;
    sub_10007EBC0(&unk_1006B3B20);
    swift_allocObject();

    v143 = Future.init(_:)();
    sub_100004098(&qword_1006C39C0, &unk_1006B3B20);
    v79 = Publisher.eraseToAnyPublisher()();

    (*(v63 + 8))(v88, v93);

    sub_100012DF0(v139 + v138, &qword_1006B07D0);
  }

  else
  {
    v69 = v138;
    v70 = v119;
    (*(v138 + 32))(v27, v62, v119);
    v71 = [v141 headerView];
    v72 = [objc_opt_self() mainBundle];
    v144._object = 0x80000001005817F0;
    v73._object = 0x80000001005817D0;
    v144._countAndFlagsBits = 0xD000000000000029;
    v73._countAndFlagsBits = 0xD000000000000017;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v73, 0, v72, v74, v144);

    v75 = String._bridgeToObjectiveC()();

    [v71 setTitle:v75];

    FMIPItem.name.getter();
    v76 = *(v57 + OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_primaryLabel);
    v77 = String._bridgeToObjectiveC()();

    [v76 setText:v77];

    v78 = v122;
    FMIPItem.productType.getter();
    v79 = sub_1001AF880(v78, 1);

    (*(v123 + 8))(v78, v124);
    (*(v69 + 8))(v27, v70);
  }

  v143 = v79;
  v97 = [objc_opt_self() mainRunLoop];
  v142 = v97;
  v98 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v99 = v133;
  (*(*(v98 - 8) + 56))(v133, 1, 1, v98);
  sub_10007EBC0(&unk_1006B4D90);
  sub_10011060C();
  sub_100004098(&qword_1006B7800, &unk_1006B4D90);
  sub_100110658();
  v100 = v134;
  Publisher.receive<A>(on:options:)();
  sub_100012DF0(v99, &qword_1006B64E0);

  v101 = swift_allocObject();
  v102 = v141;
  swift_unknownObjectWeakInit();
  v103 = swift_allocObject();
  *(v103 + 16) = *(v135 + 504);
  *(v103 + 24) = v101;
  sub_100004098(&qword_1006B3B18, &qword_1006B3B08);
  v104 = v137;
  v105 = Publisher.sink(receiveCompletion:receiveValue:)();

  (*(v136 + 8))(v100, v104);
  *&v102[qword_1006B3A80] = v105;
}

uint64_t sub_1001577A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeBaseViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  return sub_100156640();
}

void sub_100157804(void *a1)
{
  v1 = a1;
  sub_1001577A4();
}

void sub_10015784C(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_1006B8E48);

    [*&v4[OBJC_IVAR____TtC6FindMy25FMProductActionHeaderView_productImageView] setImage:v1];
  }
}

uint64_t sub_1001578E0()
{

  v1 = v0 + qword_1006D3E00;

  return sub_10009715C(v1);
}

id sub_100157920()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeBaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10015797C(uint64_t a1)
{

  v2 = a1 + qword_1006D3E00;

  return sub_10009715C(v2);
}

void sub_1001579E8(void (*a1)(void **), uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPDevice() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  sub_1001B114C(a1, a2, v8, v6, v7);
}

void sub_100157C74(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (!a1)
  {
    goto LABEL_5;
  }

  v7 = [a1 textView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = v7;
  v9 = [v7 text];

  if (!v9)
  {
LABEL_5:
    if (a3)
    {

      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
    return;
  }

  a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a3 = v10;

LABEL_7:
  v11 = sub_100478D60(a2, a3);
  v13 = v12;

  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = &v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText];
    *v15 = v11;
    v15[1] = v13;

    v16 = swift_allocObject();
    v16[2] = v11;
    v16[3] = v13;
    v16[4] = v4;

    v17 = v4;
    sub_100193BEC(v11, v13, sub_1001586C0, v16);
  }

  else
  {

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMRecipientsViewController: clearing searched contacts list.", v21, 2u);
    }

    v22 = &v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientText];
    *v22 = 0;
    *(v22 + 1) = 0;

    *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts] = 0;

    sub_100195F20();
    sub_10019415C();
    v23 = *&v4[OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation];

    [v23 cancel];
  }
}

uint64_t sub_100157F18(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27 = a2;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v11 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a4;
    v26 = v8;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_100005B4C(v27, a3, aBlock);
    *(v17 + 12) = 2048;
    if (a1 >> 62)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 14) = v19;

    _os_log_impl(&_mh_execute_header, v15, v16, "FMRecipientsViewController: composeRecipientView:textDidChange handle: %s, contacts count: %ld", v17, 0x16u);
    sub_100006060(v18);

    v8 = v26;
  }

  else
  {
  }

  sub_100003E90();
  v20 = static OS_dispatch_queue.main.getter();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = sub_1001586CC;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100629A90;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v8 + 8))(v10, v7);
  return (*(v11 + 8))(v13, v28);
}

void sub_100158334(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v4 = *(Strong + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchOperation), v5 = Strong, v6 = v4, v5, !v4) || (v7 = [v6 isCancelled], v6, (v7 & 1) == 0))
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      *(v8 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_searchedContacts) = a2;
      v9 = v8;

      sub_100195F20();
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      sub_10019415C();
    }
  }
}

void sub_100158628()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy26FMRecipientsViewController_recipientTextView);
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v2 setEditable:1];
  v3 = *(v0 + v1);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = [v3 textView];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 becomeFirstResponder];
}

uint64_t sub_1001586D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a1;
  v26 = a4;
  v6 = sub_10007EBC0(&qword_1006B2B70);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for FMPerformanceTestCase();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);
  v15 = type metadata accessor for FMSelectedSection();
  v16 = *(*(v15 - 8) + 56);
  v16(&v13[v14], 1, 1, v15);
  v27._countAndFlagsBits = 0x6E6F6974636573;
  v27._object = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v17 = sub_10004CC50(v28), (v18 & 1) == 0))
  {

LABEL_10:

    sub_10004CDB8(v28);
LABEL_13:
    sub_100158C10(&v13[v14]);
    return (*(v10 + 56))(v26, 1, 1, v9);
  }

  sub_100006004(*(a3 + 56) + 32 * v17, v29);
  sub_10004CDB8(v28);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:

LABEL_12:

    goto LABEL_13;
  }

  v24 = v27;
  v27._countAndFlagsBits = 0x6C79745374736574;
  v27._object = 0xE900000000000065;
  AnyHashable.init<A>(_:)();
  if (!*(a3 + 16) || (v19 = sub_10004CC50(v28), (v20 & 1) == 0))
  {

    goto LABEL_10;
  }

  sub_100006004(*(a3 + 56) + 32 * v19, v29);
  sub_10004CDB8(v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = _findStringSwitchCase(cases:string:)(&off_1006220C0, v27);

  if (v23)
  {
    goto LABEL_11;
  }

  if (sub_10001C4B4(v24) == 5)
  {
    goto LABEL_12;
  }

  *v13 = v25;
  *(v13 + 1) = a2;
  sub_100057FEC();
  v16(v8, 0, 1, v15);
  sub_100158C78(v8, &v13[v14]);
  v22 = v26;
  sub_100158CE8(v13, v26);
  (*(v10 + 56))(v22, 0, 1, v9);
  return sub_100122BA0(v13);
}

uint64_t type metadata accessor for FMPerformanceTestCase()
{
  result = qword_1006B3C48;
  if (!qword_1006B3C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100158AD4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100158B48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100158B9C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100622120, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_100158C10(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B2B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100158C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B2B70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100158CE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPerformanceTestCase();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100158D74()
{
  sub_100158DF8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100158DF8()
{
  if (!qword_1006B3C58)
  {
    type metadata accessor for FMSelectedSection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B3C58);
    }
  }
}

unint64_t sub_100158E64()
{
  result = qword_1006B3C90;
  if (!qword_1006B3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B3C90);
  }

  return result;
}

id sub_100158EB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10007EBC0(&qword_1006B0050);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences;
  v9 = type metadata accessor for FMSectionPlatterGroupView();
  *(v3 + v8) = [objc_allocWithZone(v9) init];
  v10 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences;
  *(v3 + v10) = [objc_allocWithZone(v9) init];
  *(v3 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendsFencesRows) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFencesRows) = _swiftEmptyArrayStorage;
  v11 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friend;
  v12 = type metadata accessor for FMFFriend();
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription) = 0;
  v13 = *a2;
  v14 = *(a2 + 8);

  sub_1000BD300(v13, v14, v7);

  swift_beginAccess();
  sub_10015D4D8(v7, v3 + v11);
  swift_endAccess();
  v15 = (v3 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_viewModel);
  v16 = *(a2 + 16);
  *v15 = *a2;
  v15[1] = v16;
  v15[2] = *(a2 + 32);

  v18 = sub_1003435AC(v17, 1);
  sub_100159830();

  return v18;
}

id sub_10015917C(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FMFriendLocationAlertsViewController();
  result = objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  v4 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription;
  if (*&v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription])
  {
    v5 = *(*(*&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 48) + 32);

    os_unfair_lock_lock((v5 + 24));
    sub_10008FB88((v5 + 16));
    os_unfair_lock_unlock((v5 + 24));

    *&v1[v4] = 0;
  }

  return result;
}

void sub_1001592B8()
{
  sub_1003436C8();
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v41._object = 0x80000001005819F0;
  v3._countAndFlagsBits = 0xD000000000000018;
  v3._object = 0x80000001005819D0;
  v41._countAndFlagsBits = 0xD00000000000002ALL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v41);

  v5 = String._bridgeToObjectiveC()();

  [v0 setTitle:v5];

  v37 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences;
  v6 = *(*&v0[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v7 = [v1 mainBundle];
  v42._object = 0x8000000100581A40;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v8._object = 0x8000000100581A20;
  v42._countAndFlagsBits = 0xD00000000000002ELL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v42);

  v10 = String._bridgeToObjectiveC()();

  [v6 setText:v10];

  v38 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences;
  v11 = *(*&v0[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_sectionLabel);
  v12 = [v1 mainBundle];
  v43._object = 0x8000000100581AA0;
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x8000000100581A70;
  v43._countAndFlagsBits = 0xD000000000000033;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, 0, v12, v14, v43);

  sub_10007EBC0(&unk_1006B20B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100552220;
  v16 = &v0[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_viewModel];
  v17 = String.uppercased()();
  *(v15 + 56) = &type metadata for String;
  v36 = sub_10008EE84();
  *(v15 + 64) = v36;
  *(v15 + 32) = v17;
  String.init(format:_:)();

  v18 = String._bridgeToObjectiveC()();

  [v11 setText:v18];

  v19 = *(*&v0[v37] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel);
  v20 = [v1 mainBundle];
  v44._object = 0x800000010057ABB0;
  v21._countAndFlagsBits = 0xD000000000000030;
  v21._object = 0x8000000100581AE0;
  v22.value._object = 0x800000010057AB90;
  v44._countAndFlagsBits = 0xD000000000000017;
  v22.value._countAndFlagsBits = 0xD000000000000012;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v44);

  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100552220;
  v26 = *(v16 + 2);
  v25 = *(v16 + 3);
  *(v24 + 56) = &type metadata for String;
  *(v24 + 64) = v36;
  *(v24 + 32) = v26;
  *(v24 + 40) = v25;

  String.init(format:_:)();

  v27 = String._bridgeToObjectiveC()();

  [v19 setText:v27];

  v28 = *(*&v0[v38] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_footerLabel);
  v29 = [v1 mainBundle];
  v45._object = 0x800000010057ABB0;
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v30._object = 0x8000000100581B20;
  v31.value._object = 0x800000010057AB90;
  v45._countAndFlagsBits = 0xD000000000000017;
  v31.value._countAndFlagsBits = 0xD000000000000012;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v45);

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100552220;
  v35 = *(v16 + 2);
  v34 = *(v16 + 3);
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = v36;
  *(v33 + 32) = v35;
  *(v33 + 40) = v34;

  String.init(format:_:)();

  v39 = String._bridgeToObjectiveC()();

  [v28 setText:v39];
}

void sub_100159830()
{
  v1 = v0;
  v183 = type metadata accessor for FMFLocationAlertTriggerType();
  v202 = *(v183 - 8);
  __chkstk_darwin(v183);
  v182 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = type metadata accessor for FMPlatterIcon();
  v192 = *(v186 - 8);
  __chkstk_darwin(v186);
  v4 = &v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B3298);
  v6 = __chkstk_darwin(v5 - 8);
  v178 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v189 = &v147 - v8;
  v180 = type metadata accessor for FMFLocationAlertAcceptanceStatus();
  v9 = *(v180 - 8);
  __chkstk_darwin(v180);
  v159 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_10007EBC0(&unk_1006C3CA0);
  __chkstk_darwin(v179);
  v12 = &v147 - v11;
  v13 = sub_10007EBC0(&unk_1006BC950);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v147 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v191 = &v147 - v18;
  __chkstk_darwin(v17);
  v20 = &v147 - v19;
  v21 = type metadata accessor for FMFLocationAlertTarget();
  v200 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v199 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v198 = &v147 - v25;
  v26 = __chkstk_darwin(v24);
  v204 = &v147 - v27;
  __chkstk_darwin(v26);
  v203 = &v147 - v28;
  v196 = type metadata accessor for FMFLocationAlert();
  v197 = *(v196 - 8);
  __chkstk_darwin(v196);
  v30 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);

  v31 = dispatch thunk of FMFManager.locationAlerts.getter();

  if (!v31)
  {
    v139 = swift_allocObject();
    *(v139 + 16) = 0;
    *(v139 + 24) = 0;
    v214 = sub_100097224;
    v215 = v139;
    aBlock = _NSConcreteStackBlock;
    v211 = 1107296256;
    v212 = sub_100004AE4;
    v213 = &unk_100629C78;
    v140 = _Block_copy(&aBlock);

    [v1 dismissViewControllerAnimated:1 completion:v140];
    _Block_release(v140);
    return;
  }

  v187 = v20;
  v165 = v16;
  v177 = v12;
  v164 = v4;
  v208 = _swiftEmptyArrayStorage;
  v209 = _swiftEmptyArrayStorage;
  v32 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFencesRows;
  v158 = v31;
  v33 = *&v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFencesRows];
  v153 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences;
  v34 = *(*&v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);

  v35 = v34;
  sub_10015D548(v33, v35);

  v36 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendsFencesRows;
  v37 = *&v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendsFencesRows];
  v154 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences;
  v38 = *(*&v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);

  v39 = v38;
  sub_10015D548(v37, v39);
  v40 = v158;

  v156 = v32;
  *&v1[v32] = _swiftEmptyArrayStorage;

  v155 = v36;
  *&v1[v36] = _swiftEmptyArrayStorage;

  v41 = *(v40 + 16);
  v181 = v1;
  if (v41)
  {
    v190 = 0;
    v184 = &v1[OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_viewModel];
    v195 = *(v197 + 16);
    v42 = v40 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
    v201 = (v200 + 13);
    ++v200;
    v176 = (v9 + 104);
    v194 = *(v197 + 72);
    v175 = (v9 + 56);
    v174 = (v9 + 48);
    v193 = enum case for FMFLocationAlertTarget.alertFriends(_:);
    v157 = (v9 + 32);
    v163 = (v9 + 8);
    v188 = enum case for FMFLocationAlertTarget.alertMe(_:);
    v171 = (v192 + 7);
    v170 = (v192 + 6);
    v169 = (v202 + 88);
    v173 = enum case for FMFLocationAlertAcceptanceStatus.hidden(_:);
    v152 = "s";
    v168 = enum case for FMFLocationAlertTriggerType.leaving(_:);
    v162 = enum case for FMFLocationAlertTriggerType.scheduled(_:);
    v151 = 0x8000000100581920;
    v150 = (v202 + 8);
    v149 = "g MY_LOCATION_ALERTS_LEAVE";
    v148 = "LOCATION_ALERT_WHEN_I_AM_NOT_AT";
    v147 = 0x800000010057ABB0;
    v161 = "g MY_LOCATION_ALERTS_ARRIVE";
    v160 = 0x8000000100581970;
    v197 += 16;
    v192 = (v197 - 8);
    v167 = _swiftEmptyArrayStorage;
    v166 = _swiftEmptyArrayStorage;
    v43 = v196;
    v172 = v30;
    while (1)
    {
      v202 = v41;
      v195(v30, v42, v43);
      FMFLocationAlert.locationAlertTarget.getter();
      v46 = *v201;
      (*v201)(v204, v193, v21);
      sub_10000A030(&unk_1006B0058, &type metadata accessor for FMFLocationAlertTarget);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (aBlock == v206 && v211 == v207)
      {
        v48 = 1;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v49 = *v200;
      (*v200)(v204, v21);
      v49(v203, v21);

      if (v48)
      {
        v50 = FMFLocationAlert.setByMe.getter();
        if (v50)
        {
          goto LABEL_28;
        }
      }

      FMFLocationAlert.locationAlertTarget.getter();
      v46(v199, v188, v21);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (aBlock == v206 && v211 == v207)
      {
        v49(v199, v21);
        v49(v198, v21);

        v51 = v191;
      }

      else
      {
        v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v49(v199, v21);
        v49(v198, v21);

        v51 = v191;
        if ((v52 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v53 = FMFLocationAlert.setOnMe.getter();
      v54 = v187;
      if (v53)
      {
        v185 = v42;
        FMFLocationAlert.acceptanceStatus.getter();
        v55 = v180;
        (*v176)(v51, v173, v180);
        (*v175)(v51, 0, 1, v55);
        v56 = *(v179 + 48);
        v57 = v177;
        sub_100007204(v54, v177, &unk_1006BC950);
        sub_100007204(v51, v57 + v56, &unk_1006BC950);
        v58 = *v174;
        if ((*v174)(v57, 1, v55) == 1)
        {
          sub_100012DF0(v51, &unk_1006BC950);
          sub_100012DF0(v54, &unk_1006BC950);
          if (v58(v57 + v56, 1, v55) != 1)
          {
            goto LABEL_27;
          }

          sub_100012DF0(v57, &unk_1006BC950);
          v30 = v172;
          v42 = v185;
        }

        else
        {
          v59 = v165;
          sub_100007204(v57, v165, &unk_1006BC950);
          if (v58(v57 + v56, 1, v55) == 1)
          {
            sub_100012DF0(v191, &unk_1006BC950);
            sub_100012DF0(v187, &unk_1006BC950);
            (*v163)(v59, v55);
LABEL_27:
            v50 = sub_100012DF0(v57, &unk_1006C3CA0);
            v30 = v172;
            v42 = v185;
LABEL_28:
            v60 = *(v184 + 5);
            __chkstk_darwin(v50);
            v218._object = v30;

            v61 = v190;
            v62 = sub_1003F7EAC(sub_10015DA0C, (&v147 - 4), v60);
            v190 = v61;

            v63 = v62[2];

            if (v63)
            {
              (*v171)(v189, 1, 1, v186);
              v213 = &type metadata for SolariumFeatureFlag;
              v185 = sub_10000BD04();
              v214 = v185;
              v64 = isFeatureEnabled(_:)();
              sub_100006060(&aBlock);
              v65 = 16.0;
              if ((v64 & 1) == 0)
              {
                if (qword_1006AEC30 != -1)
                {
                  swift_once();
                }

                v65 = *&qword_1006D4798;
              }

              v66 = type metadata accessor for FMMultiSettingsRowView();
              v67 = objc_allocWithZone(v66);
              v68 = &v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
              *v68 = 0;
              v68[1] = 0;
              v69 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
              *&v67[v69] = [objc_allocWithZone(UIView) init];
              v70 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
              *&v67[v70] = [objc_allocWithZone(UIImageView) init];
              v71 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
              *&v67[v71] = [objc_allocWithZone(UILabel) init];
              v72 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
              type metadata accessor for FMCopyableLabel();
              *&v67[v72] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
              v73 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
              v74 = sub_1003DE824();
              v75 = [objc_allocWithZone(UIImageView) initWithImage:v74];

              *&v67[v73] = v75;
              v76 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
              *&v67[v76] = [objc_allocWithZone(UIView) init];
              v77 = &v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
              *v77 = 0;
              v77[1] = 0;
              v78 = &v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
              *v78 = 0;
              v78[1] = 0;
              v79 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
              *&v67[v79] = [objc_opt_self() secondaryLabelColor];
              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
              *v77 = 0;
              v77[1] = 0;

              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 0;
              *&v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = v65;
              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = 0;
              v67[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
              v205.receiver = v67;
              v205.super_class = v66;
              v80 = objc_msgSendSuper2(&v205, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
              v81 = v178;
              sub_100007204(v189, v178, &qword_1006B3298);
              if ((*v170)(v81, 1, v186) == 1)
              {
                v82 = v80;
                sub_100012DF0(v81, &qword_1006B3298);
              }

              else
              {
                v83 = v164;
                sub_10015DA28(v81, v164);
                v84 = v80;
                v85 = sub_10043BBEC(v83, 0);
                v87 = v86;
                v88 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
                [*&v84[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v85];
                [*&v84[v88] setTintAdjustmentMode:1];
                v213 = &type metadata for SolariumFeatureFlag;
                v214 = v185;
                v89 = isFeatureEnabled(_:)();
                sub_100006060(&aBlock);
                if (v89)
                {
                  [*&v84[v88] setTintColor:v87];

                  sub_1000D59F8(v83);
                }

                else
                {
                  sub_1000D59F8(v83);
                }
              }

              [v80 setUserInteractionEnabled:{1, v147, v148, v149}];
              v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 1;
              sub_1004EE178();
              sub_1004EE5A4(v65);

              sub_100012DF0(v189, &qword_1006B3298);
              v95 = v182;
              FMFLocationAlert.triggerType.getter();
              v96 = (*v169)(v95, v183);
              if (v96 == v168)
              {
                v97 = [objc_opt_self() mainBundle];
                v218._object = v160;
                v98._countAndFlagsBits = 0xD000000000000018;
                v98._object = (v161 | 0x8000000000000000);
                v216._countAndFlagsBits = 0xD00000000000002ALL;
                v99._countAndFlagsBits = 0;
                v99._object = 0xE000000000000000;
                v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v98, 0, v97, v99, v216);
                countAndFlagsBits = v100._countAndFlagsBits;
                object = v100._object;

                v103 = FMFLocationAlert.displayLabel.getter();
                if (!v104)
                {
                  v103 = FMFLocationAlert.address.getter();
                }

                v105 = v103;
                v106 = v104;
              }

              else
              {
                v107 = v96;
                v108 = [objc_opt_self() mainBundle];
                if (v107 == v162)
                {
                  v218._object = v147;
                  v109._countAndFlagsBits = 0xD000000000000022;
                  v109._object = (v149 | 0x8000000000000000);
                  v110.value._object = (v148 | 0x8000000000000000);
                  v217._countAndFlagsBits = 0xD000000000000017;
                  v110.value._countAndFlagsBits = 0xD000000000000012;
                  v111._countAndFlagsBits = 0;
                  v111._object = 0xE000000000000000;
                  v112 = NSLocalizedString(_:tableName:bundle:value:comment:)(v109, v110, v108, v111, v217);
                  countAndFlagsBits = v112._countAndFlagsBits;
                  object = v112._object;

                  sub_10028536C();
                  v113 = FMFLocationAlert.fence.getter();
                  v114 = String._bridgeToObjectiveC()();

                  v115 = [v113 localizedSubtitleStringWithLocationName:v114];

                  v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v106 = v116;
                }

                else
                {
                  v218._object = v151;
                  v117._countAndFlagsBits = 0xD000000000000019;
                  v117._object = (v152 | 0x8000000000000000);
                  v218._countAndFlagsBits = 0xD00000000000002BLL;
                  v118._countAndFlagsBits = 0;
                  v118._object = 0xE000000000000000;
                  v119 = NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v108, v118, v218);
                  countAndFlagsBits = v119._countAndFlagsBits;
                  object = v119._object;

                  v120 = FMFLocationAlert.displayLabel.getter();
                  if (!v121)
                  {
                    v120 = FMFLocationAlert.address.getter();
                  }

                  v105 = v120;
                  v106 = v121;
                  (*v150)(v182, v183);
                }
              }

              v122 = FMFLocationAlert.identifier.getter();
              v123 = &v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
              *v123 = v122;
              v123[1] = v124;

              v125 = &v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
              *v125 = countAndFlagsBits;
              v125[1] = object;

              v126 = *&v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel];

              v127 = v126;
              v128 = String._bridgeToObjectiveC()();

              [v127 setText:v128];

              v129 = &v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
              *v129 = v105;
              v129[1] = v106;

              v130 = *&v80[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel];
              v131 = v130;
              if (v106)
              {

                v132 = String._bridgeToObjectiveC()();
              }

              else
              {
                v132 = 0;
              }

              [v130 setText:v132];

              v133 = objc_allocWithZone(UITapGestureRecognizer);
              v134 = [v133 initWithTarget:v181 action:"handleFenceTapWithGestureRecognizer:"];
              [v80 addGestureRecognizer:v134];
              v135 = FMFLocationAlert.setByMe.getter();
              v136 = v80;
              if (v135)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v44 = v208;
                v45 = &v198;
              }

              else
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                v44 = v209;
                v45 = &v199;
              }

              *(v45 - 32) = v44;
            }

            goto LABEL_8;
          }

          v90 = v57 + v56;
          v91 = v57;
          v92 = v159;
          (*v157)(v159, v90, v55);
          sub_10000A030(&qword_1006B3D08, &type metadata accessor for FMFLocationAlertAcceptanceStatus);
          v93 = dispatch thunk of static Equatable.== infix(_:_:)();
          v94 = *v163;
          (*v163)(v92, v55);
          sub_100012DF0(v191, &unk_1006BC950);
          sub_100012DF0(v187, &unk_1006BC950);
          v94(v59, v55);
          v50 = sub_100012DF0(v91, &unk_1006BC950);
          v30 = v172;
          v42 = v185;
          if ((v93 & 1) == 0)
          {
            goto LABEL_28;
          }
        }
      }

LABEL_8:
      v43 = v196;
      (*v192)(v30, v196);
      v42 += v194;
      v41 = v202 - 1;
      if (v202 == 1)
      {

        v137 = v167;
        v138 = v166;
        goto LABEL_59;
      }
    }
  }

  v137 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
LABEL_59:
  v141 = v181;
  if (v138 >> 62)
  {
    v142 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v142 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v142)
  {
    v143 = v153;
    [*&v141[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView] addArrangedSubview:*&v141[v153]];
    v144 = *(*&v141[v143] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);
    sub_10015D63C(v138, v144);

    if (!(v137 >> 62))
    {
      goto LABEL_63;
    }

LABEL_66:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_64;
    }

LABEL_67:
    [*&v141[v154] removeFromSuperview];
    goto LABEL_68;
  }

  [*&v141[v153] removeFromSuperview];
  if (v137 >> 62)
  {
    goto LABEL_66;
  }

LABEL_63:
  if (!*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_67;
  }

LABEL_64:
  v145 = v154;
  [*&v141[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView] addArrangedSubview:{*&v141[v154], v147, v148, v149}];
  v146 = *(*&v141[v145] + OBJC_IVAR____TtC6FindMy25FMSectionPlatterGroupView_contentStackView);
  sub_10015D63C(v137, v146);

LABEL_68:
  *&v141[v156] = v138;

  *&v141[v155] = v137;
}

uint64_t sub_10015B198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = FMFLocationAlert.identifier.getter();
  v6 = v5;
  v7 = FMFLocationAlert.identifier.getter();
  if (!v6)
  {
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v8)
  {
LABEL_7:

    goto LABEL_8;
  }

  if (v4 != v7 || v6 != v8)
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {
      goto LABEL_10;
    }

LABEL_8:
    v9 = type metadata accessor for FMFLocationAlert();
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

LABEL_10:
  v12 = type metadata accessor for FMFLocationAlert();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a2, a1, v12);
  return (*(v13 + 56))(a2, 0, 1, v12);
}

uint64_t sub_10015B338(void *a1, void *a2)
{
  v2 = (*a1 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = (*a2 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
  if (v5[1])
  {
    v6 = v5[1];
    if (v3 != *v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0xE000000000000000;
    if (v3)
    {
LABEL_10:
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_11;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7 & 1;
}

void sub_10015B418(void *a1)
{
  v3 = type metadata accessor for FMFLocationAlertTarget();
  v59 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0050);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v49 - v10;
  v12 = type metadata accessor for FMFLocationAlert();
  v63 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10007EBC0(&unk_1006BEF80);
  v16 = __chkstk_darwin(v15 - 8);
  v58 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v49 - v19;
  __chkstk_darwin(v18);
  v22 = &v49 - v21;
  v23 = [a1 view];
  if (!v23)
  {
    return;
  }

  v61 = v23;
  type metadata accessor for FMMultiSettingsRowView();
  v24 = swift_dynamicCastClass();
  if (!v24 || (v25 = *(v24 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier + 8)) == 0)
  {
    v36 = v61;

    return;
  }

  v54 = v3;
  v57 = v20;
  v60 = v12;
  v62 = *(v24 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier);
  v26 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v55 = v1;
  v56 = v26;

  v27 = dispatch thunk of FMFManager.locationAlerts.getter();

  if (!v27)
  {

    v29 = v60;
    (*(v63 + 56))(v22, 1, 1, v60);
LABEL_23:
    v38 = v57;

    v39 = dispatch thunk of FMFManager.friends.getter();

    __chkstk_darwin(v40);
    *(&v49 - 2) = v22;
    sub_1000341A8(sub_10015DA8C, v39, v11);

    (*(v59 + 104))(v5, enum case for FMFLocationAlertTarget.alertFriends(_:), v54);
    sub_100007204(v11, v9, &qword_1006B0050);
    sub_100007204(v22, v38, &unk_1006BEF80);
    v41 = v58;
    sub_100007204(v22, v58, &unk_1006BEF80);
    v42 = v63;
    v43 = (*(v63 + 48))(v41, 1, v29);

    if (v43 == 1)
    {
      sub_100012DF0(v41, &unk_1006BEF80);
      v44 = 0;
    }

    else
    {
      v44 = FMFLocationAlert.setByMe.getter();
      (*(v42 + 8))(v41, v29);
    }

    v45 = objc_allocWithZone(type metadata accessor for FMLocationAlertViewController(0));
    v46 = sub_100098BC0(v56, v5, v9, 0, v57, 0, v44 & 1);
    v47 = [v55 navigationController];
    if (v47)
    {
      v48 = v47;
      [v47 pushViewController:v46 animated:1];

      sub_100012DF0(v11, &qword_1006B0050);
    }

    else
    {
      sub_100012DF0(v11, &qword_1006B0050);
    }

    sub_100012DF0(v22, &unk_1006BEF80);
    return;
  }

  v53 = v9;
  v28 = *(v27 + 16);
  v29 = v60;
  if (!v28)
  {

LABEL_20:
    (*(v63 + 56))(v22, 1, 1, v29);
LABEL_22:
    v9 = v53;
    goto LABEL_23;
  }

  v50 = v22;
  v51 = v5;
  v52 = v11;
  v30 = 0;
  v31 = v27 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
  v32 = (v63 + 8);
  while (v30 < *(v27 + 16))
  {
    (*(v63 + 16))(v14, v31 + *(v63 + 72) * v30, v29);
    v34 = FMFLocationAlert.identifier.getter();
    if (v35)
    {
      if (v34 == v62 && v35 == v25)
      {

LABEL_21:

        v37 = v63;
        v22 = v50;
        v29 = v60;
        (*(v63 + 32))(v50, v14, v60);
        (*(v37 + 56))(v22, 0, 1, v29);
        v5 = v51;
        v11 = v52;
        goto LABEL_22;
      }

      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v33)
      {
        goto LABEL_21;
      }
    }

    ++v30;
    v29 = v60;
    (*v32)(v14, v60);
    if (v28 == v30)
    {

      v5 = v51;
      v11 = v52;
      v22 = v50;
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_10015BB54(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BEF80);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = FMFFriend.identifier.getter();
  v8 = v7;
  sub_100007204(a2, v5, &unk_1006BEF80);
  v9 = type metadata accessor for FMFLocationAlert();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v5, 1, v9) == 1)
  {
    sub_100012DF0(v5, &unk_1006BEF80);
LABEL_9:

    v15 = 0;
    return v15 & 1;
  }

  v11 = FMFLocationAlert.friendId.getter();
  v13 = v12;
  (*(v10 + 8))(v5, v9);
  if (!v13)
  {
    goto LABEL_9;
  }

  if (v6 == v11 && v13 == v8)
  {

    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

void sub_10015BD80(void *a1)
{

  v2 = dispatch thunk of FMFManager.locationAlerts.getter();

  if (v2 && (v3 = *(v2 + 16), , v3))
  {
    sub_100159830();
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    v6[4] = sub_1000822F4;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100004AE4;
    v6[3] = &unk_100629C28;
    v5 = _Block_copy(v6);

    [a1 dismissViewControllerAnimated:1 completion:v5];
    _Block_release(v5);
  }
}

uint64_t sub_10015BEA4()
{

  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friend, &qword_1006B0050);
}

id sub_10015BF70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMFriendLocationAlertsViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMFriendLocationAlertsViewController()
{
  result = qword_1006B3CF8;
  if (!qword_1006B3CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015C0CC()
{
  sub_10015C190();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10015C190()
{
  if (!qword_1006AFE60)
  {
    type metadata accessor for FMFFriend();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006AFE60);
    }
  }
}

uint64_t sub_10015C1F0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1000573A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v26 = v2 + 32;
  v31[0] = v2 + 32;
  v31[1] = v4;
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 >= v4)
  {
    if (v4 < 2)
    {
      return specialized ContiguousArray._endMutation()();
    }

    v8 = -1;
    v9 = 1;
    v10 = v2 + 32;
    v25 = v4;
LABEL_10:
    v28 = v9;
    v29 = v8;
    v13 = *(v26 + 8 * v9);
    v27 = v10;
    while (1)
    {
      if (*&v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8])
      {
        v14 = *&v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
        v15 = *&v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8];
      }

      else
      {
        v14 = 0;
        v15 = 0xE000000000000000;
      }

      v16 = *v10;
      v17 = (*v10 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
      if (v17[1])
      {
        v18 = v17[1];
        if (v14 != *v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v18 = 0xE000000000000000;
        if (v14)
        {
          goto LABEL_19;
        }
      }

      if (v15 == v18)
      {

        v11 = v13;
        v12 = v16;

LABEL_9:
        v9 = v28 + 1;
        v10 = v27 + 8;
        v8 = v29 - 1;
        if (v28 + 1 == v25)
        {
          return specialized ContiguousArray._endMutation()();
        }

        goto LABEL_10;
      }

LABEL_19:
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v20 = v13;
      v21 = v16;

      if (v19)
      {
        v22 = *v10;
        v13 = *(v10 + 8);
        *v10 = v13;
        *(v10 + 8) = v22;
        v10 -= 8;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      goto LABEL_9;
    }
  }

  v6 = v5;
  if (v4 >= 2)
  {
    type metadata accessor for FMMultiSettingsRowView();
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = v4 >> 1;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v30[0] = ((v7 & 0xFFFFFFFFFFFFFF8) + 32);
  v30[1] = (v4 >> 1);
  sub_10015C454(v30, v32, v31, v6);
  *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

  return specialized ContiguousArray._endMutation()();
}

void sub_10015C454(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_107:
    v4 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v113 = v4;
      v92 = *(v4 + 2);
      if (v92 >= 2)
      {
        while (*a3)
        {
          v93 = *&v4[16 * v92];
          v94 = *&v4[16 * v92 + 24];
          sub_10015CC14((*a3 + 8 * v93), (*a3 + 8 * *&v4[16 * v92 + 16]), (*a3 + 8 * v94), v7);
          if (v108)
          {
            goto LABEL_117;
          }

          if (v94 < v93)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10025EFD4(v4);
          }

          if (v92 - 2 >= *(v4 + 2))
          {
            goto LABEL_134;
          }

          v95 = &v4[16 * v92];
          *v95 = v93;
          *(v95 + 1) = v94;
          v113 = v4;
          sub_10025EF48(v92 - 1);
          v4 = v113;
          v92 = *(v113 + 2);
          if (v92 <= 1)
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
    v4 = sub_10025EFD4(v4);
    goto LABEL_109;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (2)
  {
    v8 = v6;
    v104 = v7;
    if (v6 + 1 >= v5)
    {
      ++v6;
      goto LABEL_29;
    }

    v106 = v5;
    v9 = *a3;
    v112 = *(*a3 + 8 * (v6 + 1));
    v10 = v6;
    v111 = *(v9 + 8 * v6);
    v11 = v111;
    v12 = v112;
    v13 = v11;
    v109 = sub_10015B338(&v112, &v111);
    if (v108)
    {

      return;
    }

    v14 = v10 + 2;
    v97 = v10;
    v102 = 8 * v10;
    v4 = (v9 + 8 * v10 + 16);
    while (1)
    {
      v6 = v106;
      v7 = v104;
      if (v106 == v14)
      {
        break;
      }

      v18 = *v4;
      v19 = (*v4 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
      if (v19[1])
      {
        v20 = *v19;
        v21 = v19[1];
      }

      else
      {
        v20 = 0;
        v21 = 0xE000000000000000;
      }

      v22 = *(v4 - 1);
      v23 = &v22[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
      if (*&v22[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8])
      {
        v24 = *(v23 + 1);
        if (v20 != *v23)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v24 = 0xE000000000000000;
        if (v20)
        {
          goto LABEL_7;
        }
      }

      if (v21 == v24)
      {
        v15 = 0;
        goto LABEL_8;
      }

LABEL_7:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_8:

      v16 = v18;
      v17 = v22;

      ++v14;
      v4 += 8;
      if ((v109 ^ v15))
      {
        v6 = v14 - 1;
        v7 = v104;
        break;
      }
    }

    v8 = v97;
    v25 = v102;
    if ((v109 & 1) == 0)
    {
      goto LABEL_29;
    }

    if (v6 < v97)
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    if (v97 < v6)
    {
      v26 = 8 * v6 - 8;
      v27 = v6;
      v28 = v97;
      do
      {
        if (v28 != --v27)
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_143;
          }

          v30 = *(v29 + v25);
          *(v29 + v25) = *(v29 + v26);
          *(v29 + v26) = v30;
        }

        ++v28;
        v26 -= 8;
        v25 += 8;
      }

      while (v28 < v27);
    }

LABEL_29:
    v31 = a3[1];
    if (v6 >= v31)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_136;
    }

    if (v6 - v8 >= a4)
    {
LABEL_55:
      if (v6 < v8)
      {
        goto LABEL_135;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10008B8B8(0, *(v7 + 2) + 1, 1, v7);
      }

      v47 = *(v7 + 2);
      v46 = *(v7 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        v7 = sub_10008B8B8((v46 > 1), v47 + 1, 1, v7);
      }

      *(v7 + 2) = v48;
      v49 = &v7[16 * v47];
      *(v49 + 4) = v8;
      *(v49 + 5) = v6;
      v4 = *a1;
      if (!*a1)
      {
        goto LABEL_145;
      }

      if (!v47)
      {
LABEL_3:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_107;
        }

        continue;
      }

      while (1)
      {
        v50 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v7 + 4);
          v52 = *(v7 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_75:
          if (v54)
          {
            goto LABEL_124;
          }

          v67 = &v7[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_127;
          }

          v73 = &v7[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_131;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v48 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v77 = &v7[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_89:
        if (v72)
        {
          goto LABEL_126;
        }

        v80 = &v7[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_129;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_96:
        v88 = v50 - 1;
        if (v50 - 1 >= v48)
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

        if (!*a3)
        {
          goto LABEL_142;
        }

        v89 = *&v7[16 * v88 + 32];
        v90 = *&v7[16 * v50 + 40];
        sub_10015CC14((*a3 + 8 * v89), (*a3 + 8 * *&v7[16 * v50 + 32]), (*a3 + 8 * v90), v4);
        if (v108)
        {
          goto LABEL_117;
        }

        if (v90 < v89)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_10025EFD4(v7);
        }

        if (v88 >= *(v7 + 2))
        {
          goto LABEL_121;
        }

        v91 = &v7[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v113 = v7;
        sub_10025EF48(v50);
        v7 = v113;
        v48 = *(v113 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v7[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_122;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_123;
      }

      v62 = &v7[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_125;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_128;
      }

      if (v66 >= v58)
      {
        v84 = &v7[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_132;
        }

        if (v53 < v87)
        {
          v50 = v48 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_137;
  }

  if (v8 + a4 < v31)
  {
    v31 = v8 + a4;
  }

  if (v31 < v8)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v6 == v31)
  {
    goto LABEL_55;
  }

  v100 = v31;
  v110 = *a3;
  v32 = *a3 + 8 * v6 - 8;
  v98 = v8;
  v33 = v8 - v6;
  while (2)
  {
    v107 = v6;
    v36 = *(v110 + 8 * v6);
    v101 = v33;
    v103 = v32;
LABEL_41:
    if (*&v36[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8])
    {
      v37 = *&v36[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
      v4 = *&v36[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8];
    }

    else
    {
      v37 = 0;
      v4 = 0xE000000000000000;
    }

    v38 = *v32;
    v39 = (*v32 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
    if (v39[1])
    {
      v40 = v39[1];
      if (v37 != *v39)
      {
        break;
      }
    }

    else
    {
      v40 = 0xE000000000000000;
      if (v37)
      {
        break;
      }
    }

    if (v4 == v40)
    {

      v34 = v36;
      v35 = v38;

LABEL_39:
      v6 = v107 + 1;
      v32 = v103 + 8;
      v33 = v101 - 1;
      if (v107 + 1 == v100)
      {
        v7 = v104;
        v6 = v100;
        v8 = v98;
        goto LABEL_55;
      }

      continue;
    }

    break;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v42 = v36;
  v43 = v38;

  if ((v41 & 1) == 0)
  {
    goto LABEL_39;
  }

  if (v110)
  {
    v44 = *v32;
    v36 = *(v32 + 8);
    *v32 = v36;
    *(v32 + 8) = v44;
    v32 -= 8;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_41;
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

uint64_t sub_10015CC14(void **__src, char *a2, void **a3, char *a4)
{
  v4 = a3;
  v5 = a2 - __src;
  v6 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v6 = a2 - __src;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    v55 = __src;
    if (a4 != a2 || &a2[8 * v10] <= a4)
    {
      v32 = a2;
      v33 = a4;
      memmove(a4, a2, 8 * v10);
      a2 = v32;
      a4 = v33;
    }

    __src = a2;
    v56 = &a4[8 * v10];
    v12 = a4;
    if (v8 < 8 || a2 <= v55)
    {
      goto LABEL_56;
    }

    v50 = a4;
LABEL_35:
    __dsta = __src;
    v34 = __src - 1;
    v35 = v4 - 1;
    v36 = v56;
    while (1)
    {
      v38 = *--v36;
      v37 = v38;
      v39 = &v38[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
      v40 = *&v38[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title + 8];
      v51 = v35;
      if (v40)
      {
        v41 = *v39;
        v42 = v40;
      }

      else
      {
        v41 = 0;
        v42 = 0xE000000000000000;
      }

      v43 = *v34;
      v44 = *v34 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title;
      if (v44[1])
      {
        v45 = v44[1];
        if (v41 != *v44)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v45 = 0xE000000000000000;
        if (v41)
        {
          goto LABEL_46;
        }
      }

      if (v42 != v45)
      {
LABEL_46:
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_47;
      }

      v46 = 0;
LABEL_47:

      v47 = v37;
      v48 = v43;

      if (v46)
      {
        v4 = v51;
        v12 = v50;
        if (v51 + 1 != __dsta)
        {
          *v51 = *v34;
        }

        if (v56 <= v50 || (__src = v34, v34 <= v55))
        {
          __src = v34;
          goto LABEL_56;
        }

        goto LABEL_35;
      }

      v12 = v50;
      if (v51 + 1 != v56)
      {
        *v51 = *v36;
      }

      v35 = v51 - 1;
      v56 = v36;
      if (v36 <= v50)
      {
        v56 = v36;
        __src = __dsta;
        goto LABEL_56;
      }
    }
  }

  v11 = a2;
  v12 = a4;
  if (a4 != __src || &__src[v7] <= a4)
  {
    v13 = __src;
    memmove(a4, __src, 8 * v7);
    __src = v13;
  }

  v56 = &v12[v7];
  if (v5 >= 8)
  {
    v14 = v11;
    if (v11 < v4)
    {
      v15 = v4;
      do
      {
        __dst = v14;
        v54 = __src;
        v16 = *v14;
        v17 = (*v14 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title);
        if (v17[1])
        {
          v18 = *v17;
          v19 = v17[1];
        }

        else
        {
          v18 = 0;
          v19 = 0xE000000000000000;
        }

        v20 = *v12;
        v21 = *v12 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title;
        if (v21[1])
        {
          v22 = v21[1];
          if (v18 != *v21)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v22 = 0xE000000000000000;
          if (v18)
          {
            goto LABEL_21;
          }
        }

        if (v19 == v22)
        {

          v23 = v16;
          v24 = v20;

LABEL_24:
          v29 = v12;
          v28 = v54;
          v31 = v54 == v12++;
          v14 = __dst;
          v30 = v15;
          if (v31)
          {
            goto LABEL_26;
          }

LABEL_25:
          *v28 = *v29;
          goto LABEL_26;
        }

LABEL_21:
        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v26 = v16;
        v27 = v20;

        if ((v25 & 1) == 0)
        {
          goto LABEL_24;
        }

        v28 = v54;
        v29 = __dst;
        v14 = __dst + 1;
        v30 = v15;
        if (v54 != __dst)
        {
          goto LABEL_25;
        }

LABEL_26:
        __src = v28 + 1;
      }

      while (v12 < v56 && v14 < v30);
    }
  }

LABEL_56:
  if (__src != v12 || __src >= (v12 + ((v56 - v12 + (v56 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(__src, v12, 8 * ((v56 - v12) / 8));
  }

  return 1;
}

uint64_t sub_10015D034(uint64_t a1, uint64_t a2)
{
  type metadata accessor for FMPeopleSubscription();
  v3 = swift_allocObject();
  *(v3 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();
  UUID.init()();
  *(v3 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100629B48;
  swift_unknownObjectWeakAssign();
  v4 = *(a2 + 32);

  os_unfair_lock_lock((v4 + 24));
  sub_10000E7C0((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));

  return v3;
}

uint64_t sub_10015D104(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v7;
    v16 = v4;
    v17 = v9;
    v18 = v5;
    v19 = v2;
    v20 = v8;
    v21 = v15;
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "FMFriendLocationAlertsViewController: didUpdate %ld locationAlerts", v21, 0xCu);
    v8 = v20;
    v2 = v19;
    v5 = v18;
    v9 = v17;
    v4 = v16;
    v7 = v28;
  }

  else
  {
  }

  sub_100003E90();
  v22 = static OS_dispatch_queue.main.getter();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  aBlock[4] = sub_10015D4D0;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100629BD8;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A030(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10015D4D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_10015D548(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = v6;
      v8 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      [v6 removeFromSuperview];
      [a2 removeArrangedSubview:v7];

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_10015D63C(uint64_t a1, void *a2)
{

  v35[0] = sub_1004EC120(v3);
  sub_10015C1F0(v35);
  v4 = v35[0];
  LODWORD(v5) = v35[0] < 0 || (v35[0] & 0x4000000000000000) != 0;
  if (v5 != 1)
  {
    v6 = *(v35[0] + 16);
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_39:

    return;
  }

LABEL_38:
  v6 = _CocoaArrayWrapper.endIndex.getter();
  if (!v6)
  {
    goto LABEL_39;
  }

LABEL_6:
  if (v6 < 1)
  {
    __break(1u);
LABEL_43:
    __break(1u);

    __break(1u);
  }

  else
  {
    v32 = v6 - 1;
    if (v5)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *(v4 + 16);
    }

    v8 = 0;
    v9 = v4 & 0xC000000000000001;
    v31 = v4 + 32;
    v10 = _UISheetCornerRadius;
    v5 = 1;
    v33 = v6;
    v34 = a2;
    do
    {
      if (v9)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v4 + 8 * v8 + 32);
      }

      v13 = v12;
      if (v7 == 1)
      {
        v14 = [*&v12[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView] layer];
        v36 = &type metadata for SolariumFeatureFlag;
        v37 = sub_10000BD04();
        v15 = isFeatureEnabled(_:)();
        sub_100006060(v35);
        if (v15)
        {
          v16 = 26.0;
        }

        else
        {
          v16 = v10;
        }

        [v14 setCornerRadius:{v16, v31}];
      }

      else
      {
        if (v5 == 1)
        {
          v17 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
          v18 = [*&v12[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView] layer];
          v36 = &type metadata for SolariumFeatureFlag;
          v37 = sub_10000BD04();
          v19 = isFeatureEnabled(_:)();
          sub_100006060(v35);
          if (v19)
          {
            v20 = 26.0;
          }

          else
          {
            v20 = v10;
          }

          [v18 setCornerRadius:v20];

          v21 = *&v13[v17];
          v6 = v33;
          a2 = v34;
          v22 = [v21 layer];
          [v22 setMaskedCorners:3];
        }

        else if (v5 == v7)
        {
          v23 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
          v24 = [*&v12[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView] layer];
          v36 = &type metadata for SolariumFeatureFlag;
          v37 = sub_10000BD04();
          v25 = isFeatureEnabled(_:)();
          sub_100006060(v35);
          if (v25)
          {
            v26 = 26.0;
          }

          else
          {
            v26 = v10;
          }

          [v24 setCornerRadius:v26];

          v27 = *&v13[v23];
          v6 = v33;
          a2 = v34;
          v28 = [v27 layer];
          [v28 setMaskedCorners:12];
        }

        if (__OFADD__(v5++, 1))
        {
          __break(1u);
          goto LABEL_38;
        }
      }

      ++v8;
      [a2 addArrangedSubview:{v13, v31}];
    }

    while (v6 != v8);
    if (v9)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 > *(v4 + 16))
      {
        goto LABEL_43;
      }

      v29 = *(v31 + 8 * v32);
    }

    v30 = v29;

    v30[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 0;
    [*&v30[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator] setHidden:1];
  }
}

uint64_t sub_10015DA28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMPlatterIcon();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10015DAAC()
{
  v1 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFences;
  v2 = type metadata accessor for FMSectionPlatterGroupView();
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  v3 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendFences;
  *(v0 + v3) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friendsFencesRows) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_myFencesRows) = _swiftEmptyArrayStorage;
  v4 = OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_friend;
  v5 = type metadata accessor for FMFFriend();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC6FindMy36FMFriendLocationAlertsViewController_peopleSubscription) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10015DBD0(uint64_t a1, uint64_t a2)
{
  v4 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005B4C(0xD000000000000027, 0x8000000100581D90, &v12);
    _os_log_impl(&_mh_execute_header, v6, v4, "FMAccessoryPairingWatchdog: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  dispatch thunk of FMIPAccessoryDiscoveryController.initiatePairing(accessory:completion:)();
}

uint64_t sub_10015DDC4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v62 = a4;
  v63 = a3;
  v5 = type metadata accessor for FMIPAccessoryError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  __chkstk_darwin(v12 - 8);
  v61 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10007EBC0(&qword_1006B3048);
  v15 = __chkstk_darwin(v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v58 - v18;
  sub_100007204(a1, &v58 - v18, &qword_1006B3048);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v11, v19, v5);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      (*(v6 + 16))(v9, v11, v5);
      v20 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100005B14(v21, qword_1006D4630);
      v22 = Logger.logObject.getter();
      if (os_log_type_enabled(v22, v20))
      {
        v23 = swift_slowAlloc();
        v59 = v23;
        v60 = swift_slowAlloc();
        v65[0] = v60;
        *v23 = 136315138;
        v66 = 0;
        v67 = 0xE000000000000000;
        v58 = v22;
        _StringGuts.grow(_:)(41);
        v24._countAndFlagsBits = 0xD000000000000026;
        v24._object = 0x8000000100581DC0;
        String.append(_:)(v24);
        _print_unlocked<A, B>(_:_:)();
        v25._countAndFlagsBits = 46;
        v25._object = 0xE100000000000000;
        String.append(_:)(v25);
        v26 = sub_100005B4C(v66, v67, v65);

        v27 = v59;
        *(v59 + 1) = v26;
        v28 = v58;
        _os_log_impl(&_mh_execute_header, v58, v20, "FMAccessoryPairingWatchdog: %s", v27, 0xCu);
        sub_100006060(v60);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v5);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v53 = *(v6 + 16);
    if (Strong)
    {
      v54 = Strong;
      v55 = v61;
      v53(v61, v11, v5);
      v56 = sub_10007EBC0(&qword_1006B3020);
      (*(*(v56 - 8) + 56))(v55, 0, 3, v56);
      v57 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
      swift_beginAccess();
      sub_1001601D4(v55, v54 + v57);
      swift_endAccess();
    }

    v53(v17, v11, v5);
    swift_storeEnumTagMultiPayload();
    v63(v17);
    sub_100012DF0(v17, &qword_1006B3048);
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v29 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100005B14(v30, qword_1006D4630);
      v31 = Logger.logObject.getter();
      if (os_log_type_enabled(v31, v29))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v66 = v33;
        *v32 = 136315138;
        *(v32 + 4) = sub_100005B4C(0xD000000000000020, 0x8000000100581E30, &v66);
        _os_log_impl(&_mh_execute_header, v31, v29, "FMAccessoryPairingWatchdog: %s", v32, 0xCu);
        sub_100006060(v33);
      }
    }

    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = sub_10007EBC0(&qword_1006B3020);
      v37 = v61;
      (*(*(v36 - 8) + 56))(v61, 2, 3, v36);
      v38 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
      swift_beginAccess();
      sub_1001601D4(v37, v35 + v38);
      swift_endAccess();
    }

    swift_storeEnumTagMultiPayload();
    v63(v17);
    sub_100012DF0(v17, &qword_1006B3048);
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v41 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext);
      v40 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 8);
      v43 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 16);
      v42 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 24);
      v45 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 32);
      v44 = *(result + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 40);
      sub_100160284(v41, v40);

      if (v40)
      {
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {

          v46 = static os_log_type_t.default.getter();
          if (qword_1006AEBE0 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100005B14(v47, qword_1006D4630);
          v48 = Logger.logObject.getter();
          if (os_log_type_enabled(v48, v46))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            LODWORD(v63) = v46;
            v51 = v50;
            v64[0] = v50;
            *v49 = 136315138;
            *(v49 + 4) = sub_100005B4C(0xD00000000000003BLL, 0x8000000100581DF0, v64);
            _os_log_impl(&_mh_execute_header, v48, v63, "FMAccessoryPairingWatchdog: %s", v49, 0xCu);
            sub_100006060(v51);
          }
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          sub_10015E704(v41, v40, v43, v42, v45, v44);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10015E704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v34 = a1;
  v35 = a3;
  v12 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
  swift_beginAccess();
  sub_1001600AC(v7 + v15, v14);
  v16 = sub_10007EBC0(&qword_1006B3020);
  v17 = (*(*(v16 - 8) + 48))(v14, 3, v16);
  sub_100160110(v14);
  v18 = static os_log_type_t.default.getter();
  if (v17 == 2)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v18))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_100005B4C(0xD00000000000001FLL, 0x8000000100581D20, &v36);
      _os_log_impl(&_mh_execute_header, v20, v18, "FMAccessoryPairingWatchdog: %s", v21, 0xCu);
      sub_100006060(v22);
    }

    v23 = swift_allocObject();
    swift_weakInit();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = a5;
    v24[4] = a6;

    dispatch thunk of FMIPAccessoryDiscoveryController.finalizePairing(accessory:name:emoji:completion:)();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100005B14(v26, qword_1006D4630);
    v27 = Logger.logObject.getter();
    if (os_log_type_enabled(v27, v18))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_100005B4C(0xD00000000000004ELL, 0x8000000100581CD0, &v36);
      _os_log_impl(&_mh_execute_header, v27, v18, "FMAccessoryPairingWatchdog: %s", v28, 0xCu);
      sub_100006060(v29);
    }

    v30 = (v7 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext);
    v31 = *(v7 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext);
    v32 = *(v7 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 8);
    v33 = v35;
    *v30 = v34;
    v30[1] = a2;
    v30[2] = v33;
    v30[3] = a4;
    v30[4] = a5;
    v30[5] = a6;

    return sub_100160178(v31, v32);
  }
}

uint64_t sub_10015EB30(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v57 = a4;
  v58 = a3;
  v5 = type metadata accessor for FMIPAccessoryError();
  v54 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  __chkstk_darwin(v10 - 8);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10007EBC0(&unk_1006B3008);
  v17 = __chkstk_darwin(v16);
  v56 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  sub_100007204(a1, &v50 - v19, &unk_1006B3008);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = v54;
    (*(v54 + 32))(v9, v20, v5);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v22 = v53;
      (*(v21 + 16))(v53, v9, v5);
      v23 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_100005B14(v24, qword_1006D4630);
      v25 = Logger.logObject.getter();
      if (os_log_type_enabled(v25, v23))
      {
        v26 = swift_slowAlloc();
        v52 = v23;
        v27 = v26;
        v51 = swift_slowAlloc();
        v59[0] = v51;
        *v27 = 136315138;
        v60 = 0;
        v61 = 0xE000000000000000;
        _StringGuts.grow(_:)(45);
        v28._countAndFlagsBits = 0xD00000000000002ALL;
        v28._object = 0x8000000100581D40;
        String.append(_:)(v28);
        _print_unlocked<A, B>(_:_:)();
        v29._countAndFlagsBits = 46;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30 = sub_100005B4C(v60, v61, v59);

        *(v27 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v25, v52, "FMAccessoryPairingWatchdog: %s", v27, 0xCu);
        sub_100006060(v51);
      }

      (*(v21 + 8))(v22, v5);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v32 = *(v21 + 16);
    if (Strong)
    {
      v33 = Strong;
      v34 = v55;
      v32(v55, v9, v5);
      v35 = sub_10007EBC0(&qword_1006B3020);
      (*(*(v35 - 8) + 56))(v34, 0, 3, v35);
      v36 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
      swift_beginAccess();
      sub_1001601D4(v34, v33 + v36);
      swift_endAccess();
    }

    v37 = v56;
    v32(v56, v9, v5);
    swift_storeEnumTagMultiPayload();
    v58(v37);
    sub_100012DF0(v37, &unk_1006B3008);
    return (*(v21 + 8))(v9, v5);
  }

  else
  {
    (*(v13 + 32))(v15, v20, v12);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v39 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100005B14(v40, qword_1006D4630);
      v41 = Logger.logObject.getter();
      if (os_log_type_enabled(v41, v39))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v60 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_100005B4C(0xD00000000000001ELL, 0x8000000100581D70, &v60);
        _os_log_impl(&_mh_execute_header, v41, v39, "FMAccessoryPairingWatchdog: %s", v42, 0xCu);
        sub_100006060(v43);
      }
    }

    swift_beginAccess();
    v44 = swift_weakLoadStrong();
    if (v44)
    {
      v45 = v44;
      v46 = sub_10007EBC0(&qword_1006B3020);
      v47 = v55;
      (*(*(v46 - 8) + 56))(v55, 3, 3, v46);
      v48 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
      swift_beginAccess();
      sub_1001601D4(v47, v45 + v48);
      swift_endAccess();
    }

    v49 = v56;
    (*(v13 + 16))(v56, v15, v12);
    swift_storeEnumTagMultiPayload();
    v58(v49);
    sub_100012DF0(v49, &unk_1006B3008);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_10015F334(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v12 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
  swift_beginAccess();
  sub_1001600AC(v3 + v12, v11);
  v13 = sub_10007EBC0(&qword_1006B3020);
  v14 = (*(*(v13 - 8) + 48))(v11, 3, v13);
  sub_100160110(v11);
  if (v14 == 3)
  {

    v15 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    if (os_log_type_enabled(v17, v15))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v31 = 0;
      v32 = 0xE000000000000000;
      v33 = v19;
      _StringGuts.grow(_:)(71);
      v20._countAndFlagsBits = 0xD000000000000044;
      v20._object = 0x8000000100581C20;
      String.append(_:)(v20);
      sub_1001600AC(v3 + v12, v9);
      _print_unlocked<A, B>(_:_:)();
      sub_100160110(v9);
      v21._countAndFlagsBits = 46;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);
      v22 = sub_100005B4C(v31, v32, &v33);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v17, v15, "FMAccessoryPairingWatchdog: %s", v18, 0xCu);
      sub_100006060(v19);
    }
  }

  else
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    if (os_log_type_enabled(v25, v23))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v31 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100005B4C(0xD000000000000021, 0x8000000100581BF0, &v31);
      _os_log_impl(&_mh_execute_header, v25, v23, "FMAccessoryPairingWatchdog: %s", v26, 0xCu);
      sub_100006060(v27);
    }

    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = a1;
    v29[4] = a2;

    dispatch thunk of FMIPAccessoryDiscoveryController.invalidatePairing(accessory:completion:)();
  }
}

uint64_t sub_10015F7A4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v37 = a4;
  v38 = a3;
  v5 = type metadata accessor for FMIPAccessoryError();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = sub_10007EBC0(&qword_1006B3048);
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v33 - v16;
  sub_100007204(a1, &v33 - v16, &qword_1006B3048);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v11, v17, v5);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v36 = *(v6 + 16);
      v36(v9, v11, v5);
      v18 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100005B14(v19, qword_1006D4630);
      v20 = Logger.logObject.getter();
      if (os_log_type_enabled(v20, v18))
      {
        v21 = swift_slowAlloc();
        v34 = v21;
        v22 = swift_slowAlloc();
        v35 = v22;
        *v21 = 136315138;
        v39 = 0;
        v40 = 0xE000000000000000;
        v41 = v22;
        v33 = v20;
        _StringGuts.grow(_:)(45);
        v23._countAndFlagsBits = 0xD00000000000002BLL;
        v23._object = 0x8000000100581C70;
        String.append(_:)(v23);
        _print_unlocked<A, B>(_:_:)();
        v24 = sub_100005B4C(v39, v40, &v41);

        v25 = v34;
        *(v34 + 1) = v24;
        v26 = v33;
        _os_log_impl(&_mh_execute_header, v33, v18, "FMAccessoryPairingWatchdog: %s", v25, 0xCu);
        sub_100006060(v35);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v5);
      v36(v15, v11, v5);
    }

    else
    {
      v36 = *(v6 + 16);
      v36(v15, v11, v5);
    }

    swift_storeEnumTagMultiPayload();
    v38(v15);
    sub_100012DF0(v15, &qword_1006B3048);
    return (*(v6 + 8))(v11, v5);
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      v27 = static os_log_type_t.default.getter();
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100005B14(v28, qword_1006D4630);
      v29 = Logger.logObject.getter();
      if (os_log_type_enabled(v29, v27))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v39 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_100005B4C(0xD000000000000020, 0x8000000100581CA0, &v39);
        _os_log_impl(&_mh_execute_header, v29, v27, "FMAccessoryPairingWatchdog: %s", v30, 0xCu);
        sub_100006060(v31);
      }
    }

    swift_storeEnumTagMultiPayload();
    v38(v15);
    return sub_100012DF0(v15, &qword_1006B3048);
  }
}

uint64_t sub_10015FD2C()
{
  v1 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_accessory;
  v2 = type metadata accessor for FMIPDiscoveredAccessory();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100160110(v0 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state);
  sub_100160178(*(v0 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext), *(v0 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_10015FE2C()
{
  result = type metadata accessor for FMIPDiscoveredAccessory();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMAccessoryPairingWatchdog.State(319);
    if (v2 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 sub_10015FF2C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10015FF40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10015FF88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016000C()
{
  sub_100160064();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_100160064()
{
  if (!qword_1006B8CE0)
  {
    v0 = type metadata accessor for FMIPAccessoryError();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B8CE0);
    }
  }
}

uint64_t sub_1001600AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100160110(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100160178(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001601D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryPairingWatchdog.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100160238()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100160284(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1001602D4(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a1 > 4u)
  {
    switch(a1)
    {
      case 5u:
        v4 = 4;
        goto LABEL_17;
      case 6u:
        v4 = 5;
        goto LABEL_17;
      case 7u:
        v4 = 6;
        goto LABEL_17;
    }

LABEL_14:
    Hasher._combine(_:)(3uLL);
    Hasher._combine(_:)(a1 & 1);
    goto LABEL_18;
  }

  if (a1 == 2)
  {
    v4 = 0;
    goto LABEL_17;
  }

  if (a1 == 3)
  {
    v4 = 1;
    goto LABEL_17;
  }

  if (a1 != 4)
  {
    goto LABEL_14;
  }

  v4 = 2;
LABEL_17:
  Hasher._combine(_:)(v4);
LABEL_18:
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 > 4)
      {
        switch(v10)
        {
          case 5u:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_21;
          case 6u:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_21;
          case 7u:
            if (a1 == 7)
            {
              return 1;
            }

            goto LABEL_21;
        }
      }

      else
      {
        switch(v10)
        {
          case 2u:
            if (a1 == 2)
            {
              return 1;
            }

            goto LABEL_21;
          case 3u:
            if (a1 == 3)
            {
              return 1;
            }

            goto LABEL_21;
          case 4u:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_21;
        }
      }

      if ((a1 - 2) >= 6u && ((v10 ^ a1) & 1) == 0)
      {
        return 1;
      }

LABEL_21:
      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1001604DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1001605D4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMIPPlaySoundChannels();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1001702F0(&qword_1006B41C8, &type metadata accessor for FMIPPlaySoundChannels), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1001702F0(&qword_1006B41D0, &type metadata accessor for FMIPPlaySoundChannels);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1001607EC()
{
  v1 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for FindingMode(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v0 + v11, v3, &qword_1006B4058);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100012DF0(v3, &qword_1006B4058);
    return 0;
  }

  sub_10016FED8(v3, v10);
  sub_10016FF44(v10, v8, type metadata accessor for FindingMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10016FFAC(v10, type metadata accessor for FindingMode);
      sub_10016FFAC(v8, type metadata accessor for FindingMode);
      return 0;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    sub_10016FFAC(v10, type metadata accessor for FindingMode);
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 8))(v8, v14);
    return 0;
  }

  v15 = dispatch thunk of FMFindingSession.findingSessionIdentifier.getter();

  sub_10016FFAC(v10, type metadata accessor for FindingMode);
  return v15;
}

id sub_100160AB0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_conditionSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_itemProviderSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_peopleProviderSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_locationSubscription] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_selectionSubscription] = 0;
  v3 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  v4 = type metadata accessor for FindingMode(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = &v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
  *v5 = 0;
  v5[1] = 0;
  v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_confirmedSafetyWarning] = 0;
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_expiryTimer] = 0;
  v6 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_backgroundedDate;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(&v1[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_sharingClient;
  *&v1[v8] = [objc_allocWithZone(SFClient) init];
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for FMFindingExperiencePresenter(0);

  v9 = objc_msgSendSuper2(&v11, "init");
  sub_100160EC4();

  return v9;
}

id sub_100160C60()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMFindingExperiencePresenter: Deinit, tearing down", v5, 2u);
  }

  sub_100161130();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FMFindingExperiencePresenter(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_100160EC4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator);
  v3 = *(v2 + 16);
  v4 = sub_1003CC6A4(v1, v3);

  *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_conditionSubscription) = v4;

  v5 = *(v2 + 24);
  type metadata accessor for FMDevicesSubscription();
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v6 + OBJC_IVAR____TtC6FindMy21FMDevicesSubscription_subscriber + 8) = &off_100629E80;
  swift_unknownObjectWeakAssign();
  v7 = *(v5 + 16);

  os_unfair_lock_lock((v7 + 24));
  sub_10000E7C0((v7 + 16));
  os_unfair_lock_unlock((v7 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_itemProviderSubscription) = v6;

  v8 = *(v2 + 48);
  type metadata accessor for FMPeopleSubscription();
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = 0;
  swift_unknownObjectWeakInit();

  UUID.init()();
  *(v9 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber + 8) = &off_100629E18;
  swift_unknownObjectWeakAssign();
  v10 = *(v8 + 32);

  os_unfair_lock_lock((v10 + 24));
  sub_10000E7C0((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));

  *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_peopleProviderSubscription) = v9;

  v11 = *(v2 + 40);
  v12 = sub_1003CBB3C(v1, v11);

  *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_locationSubscription) = v12;

  v13 = *(v2 + 56);

  v14 = sub_1003CD35C(v1, v13);

  *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_selectionSubscription) = v14;
}

int64_t sub_100161130()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_100170C90(0, 0, v4, &unk_100555E98, v6);

  v7 = *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator);
  v8 = *(v7 + 40);
  sub_10052974C(0);

  v9 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_conditionSubscription;
  v10 = *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_conditionSubscription);
  if (v10)
  {
    v11 = *(v7 + 16);
    v12 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    swift_beginAccess();

    v13 = v11;
    result = sub_1003CD738(&v11[v12], v10);
    v15 = *&v11[v12];
    if (v15 >> 62)
    {
      v30 = result;
      v16 = _CocoaArrayWrapper.endIndex.getter();
      result = v30;
      if (v16 >= v30)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= result)
      {
LABEL_4:
        sub_1003CDB08(result, v16);
        swift_endAccess();

        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_5:
  *(v1 + v9) = 0;

  v17 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_itemProviderSubscription;
  if (*(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_itemProviderSubscription))
  {
    v18 = *(*(v7 + 24) + 16);

    os_unfair_lock_lock((v18 + 24));
    sub_10008FB6C((v18 + 16));
    os_unfair_lock_unlock((v18 + 24));
  }

  *(v1 + v17) = 0;

  v19 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_peopleProviderSubscription;
  if (*(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_peopleProviderSubscription))
  {
    v20 = *(*(v7 + 48) + 32);

    os_unfair_lock_lock((v20 + 24));
    sub_10008FB88((v20 + 16));
    os_unfair_lock_unlock((v20 + 24));
  }

  *(v1 + v19) = 0;

  v9 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_locationSubscription;
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_locationSubscription);
  if (v21)
  {
    v22 = *(v7 + 40);
    v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
    swift_beginAccess();

    v13 = v22;
    result = sub_1003CEA10(&v22[v23], v21);
    v24 = *&v22[v23];
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25 >= result)
      {
LABEL_12:
        sub_1003CEA44(result, v25);
        swift_endAccess();

        goto LABEL_13;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_20:
    v31 = result;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    result = v31;
    if (v25 >= v31)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

LABEL_13:
  *(v1 + v9) = 0;

  v9 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_selectionSubscription;
  v26 = *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_selectionSubscription);
  if (!v26)
  {
LABEL_17:
    *(v1 + v9) = 0;
  }

  v27 = *(v7 + 56);
  swift_beginAccess();

  result = sub_1003CD53C((v27 + 16), v26);
  v28 = *(v27 + 16);
  if (v28 >> 62)
  {
LABEL_22:
    v32 = result;
    v29 = _CocoaArrayWrapper.endIndex.getter();
    result = v32;
    if (v29 >= v32)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v29 >= result)
  {
LABEL_16:
    sub_1003CD570(result, v29);
    swift_endAccess();

    goto LABEL_17;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_1001615AC()
{
  v1 = type metadata accessor for ClientOrigin();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  type metadata accessor for RequestOrigin();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_100161694, 0, 0);
}

uint64_t sub_100161694()
{
  (*(v0[3] + 104))(v0[4], enum case for ClientOrigin.findMyApp(_:), v0[2]);
  RequestOrigin.init(_:)();
  type metadata accessor for Session();
  swift_allocObject();
  v0[6] = Session.init(_:)();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_100161784;

  return Session.stopConfigRangingSession()();
}

uint64_t sub_100161784()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1001619C8;
  }

  else
  {

    v2 = sub_1001618A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001618A0()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMFindingExperiencePresenter: stop token session config ranging session", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1001619C8()
{

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FMFindingExperiencePresenter: failed to stop token session config ranging session", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_100161B04(uint64_t a1, void *a2)
{
  v126 = a2;
  v3 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v3 - 8);
  v125 = &v112 - v4;
  v120 = type metadata accessor for FMFConfigValue();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMFindingProductType();
  v117 = *(v6 - 8);
  __chkstk_darwin(v6);
  v116 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for FindingExperienceType();
  v8 = *(v124 - 8);
  __chkstk_darwin(v124);
  v127 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FindingMode(0);
  v129 = *(v10 - 8);
  v11 = *(v129 + 64);
  v12 = __chkstk_darwin(v10);
  v13 = (&v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __chkstk_darwin(v12);
  v16 = &v112 - v15;
  __chkstk_darwin(v14);
  v18 = &v112 - v17;
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_100005B14(v19, qword_1006D4CF0);
  sub_10016FF44(a1, v18, type metadata accessor for FindingMode);
  v128 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v123 = v8;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v121 = v11;
    v25 = v24;
    v114 = v24;
    v115 = swift_slowAlloc();
    aBlock = v115;
    *v25 = 136315138;
    sub_10016FF44(v18, v16, type metadata accessor for FindingMode);
    v26 = v6;
    v27 = v13;
    v28 = v10;
    v29 = v16;
    v30 = String.init<A>(describing:)();
    v122 = a1;
    v32 = v31;
    sub_10016FFAC(v18, type metadata accessor for FindingMode);
    v33 = v30;
    v16 = v29;
    v10 = v28;
    v13 = v27;
    v6 = v26;
    v34 = sub_100005B4C(v33, v32, &aBlock);
    a1 = v122;

    v35 = v114;
    *(v114 + 4) = v34;
    _os_log_impl(&_mh_execute_header, v21, v22, "🧭 FMFindingExperiencePresenter: Presenting finding experience mode: %s", v35, 0xCu);
    sub_100006060(v115);

    v11 = v121;
  }

  else
  {

    sub_10016FFAC(v18, type metadata accessor for FindingMode);
  }

  sub_10016FF44(a1, v13, type metadata accessor for FindingMode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10016FFAC(v13, type metadata accessor for FindingMode);
      return;
    }

    v113 = v6;
    v42 = *v13;
    v41 = v13[1];
    v43 = v127;
    FMFindingSession.findingType.getter();
    v45 = v123;
    v44 = v124;
    v46 = (*(v123 + 88))(v43, v124);
    if (v46 == enum case for FindingExperienceType.precision(_:))
    {
      v115 = v10;
      v112 = v16;
      v121 = v11;
      v122 = a1;

      (*(v45 + 96))(v43, v44);
      v47 = &v43[*(sub_10007EBC0(&unk_1006B4210) + 48)];
      My = type metadata accessor for Feature.FindMy();
      v134 = My;
      v49 = sub_1001702F0(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
      v135 = v49;
      v50 = sub_100008FC0(&aBlock);
      v51 = *(*(My - 1) + 104);
      v51(v50, enum case for Feature.FindMy.gorgeousCherry(_:), My);
      v52 = isFeatureEnabled(_:)();
      sub_100006060(&aBlock);
      v114 = v42;
      if (v52 & 1) != 0 && (dispatch thunk of FMFindingSession.currentFindable.getter(), sub_1000244BC(&aBlock, v134), v53 = v116, v43 = v127, dispatch thunk of FMFindable.findingProductType.getter(), v54 = FMFindingProductType.isItem.getter(), (*(v117 + 8))(v53, v113), sub_100006060(&aBlock), (v54) || (v134 = My, v135 = v49, v55 = sub_100008FC0(&aBlock), v51(v55, enum case for Feature.FindMy.modernRose(_:), My), v56 = isFeatureEnabled(_:)(), sub_100006060(&aBlock), (v56) && (dispatch thunk of FMFindingSession.currentFindable.getter(), sub_1000244BC(&aBlock, v134), v57 = v116, dispatch thunk of FMFindable.findingProductType.getter(), v58 = FMFindingProductType.isAirPods.getter(), (*(v117 + 8))(v57, v113), sub_100006060(&aBlock), (v58))
      {
        v59 = objc_allocWithZone(type metadata accessor for FindingViewController());

        v74 = FindingViewController.init(session:)();
        v75 = &protocol witness table for FindingViewController;
      }

      else
      {
        v70 = objc_allocWithZone(type metadata accessor for FMFindingViewController());

        v74 = FMFindingViewController.init(session:)();
        v75 = &protocol witness table for FMFindingViewController;
      }

      v127 = v75;
      v76 = type metadata accessor for FMFindingType();
      v77 = *(*(v76 - 8) + 8);
      v78 = v74;
      v77(v47, v76);
      v79 = type metadata accessor for FindingModel();
      v80 = v43;
      v39 = v78;
      (*(*(v79 - 8) + 8))(v80, v79);
      a1 = v122;
      v16 = v112;
      v42 = v114;
    }

    else
    {
      if (v46 == enum case for FindingExperienceType.proximity(_:))
      {
        v114 = v42;

        v60 = v127;
        (*(v45 + 96))(v127, v44);
        v61 = &v60[*(sub_10007EBC0(&unk_1006B4210) + 48)];
        sub_10017005C();
        swift_allocError();
        *v62 = 0;
        swift_willThrow();
        v63 = type metadata accessor for FMFindingType();
        (*(*(v63 - 8) + 8))(v61, v63);
        v64 = type metadata accessor for FindingModel();
        (*(*(v64 - 8) + 8))(v60, v64);
        swift_errorRetain();
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          *v67 = 138543362;
          swift_errorRetain();
          v69 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 4) = v69;
          *v68 = v69;
          _os_log_impl(&_mh_execute_header, v65, v66, "Failure on view controller creation %{public}@", v67, 0xCu);
          sub_100012DF0(v68, &unk_1006AF760);
        }

        else
        {
        }

        return;
      }

      v115 = v10;
      if (v46 != enum case for FindingExperienceType.legacy(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v71 = objc_allocWithZone(type metadata accessor for FMFindingViewController());

      v72 = FMFindingViewController.init(session:)();
      v73 = *(v45 + 8);
      v39 = v72;
      v73(v127, v124);
      v127 = &protocol witness table for FMFindingViewController;
    }

    v81 = v119;
    v82 = v118;
    v83 = v120;
    (*(v119 + 104))(v118, enum case for FMFConfigValue.precisionFindingSesionTimeout(_:), v120);
    v137 = 0x4092C00000000000;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v81 + 8))(v82, v83);
    v84 = aBlock;
    v85 = objc_opt_self();
    v86 = swift_allocObject();
    v87 = v130;
    swift_unknownObjectWeakInit();
    v88 = swift_allocObject();
    *(v88 + 16) = v86;
    *(v88 + 24) = v42;
    v135 = sub_100170244;
    v136 = v88;
    aBlock = _NSConcreteStackBlock;
    v132 = 1107296256;
    v133 = sub_100017328;
    v134 = &unk_10062A2E8;
    v89 = _Block_copy(&aBlock);

    v90 = [v85 scheduledTimerWithTimeInterval:0 repeats:v89 block:*&v84];

    _Block_release(v89);
    v91 = *&v87[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_expiryTimer];
    *&v87[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_expiryTimer] = v90;

    v40 = v127;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v37 = type metadata accessor for UUID();
      (*(*(v37 - 8) + 8))(v13, v37);
      return;
    }

    v115 = v10;
    v38 = objc_allocWithZone(type metadata accessor for FMFindingViewController());
    v39 = FMFindingViewController.init(session:)();
    v40 = &protocol witness table for FMFindingViewController;
  }

  v92 = v125;
  sub_10016FF44(a1, v125, type metadata accessor for FindingMode);
  (*(v129 + 56))(v92, 0, 1, v115);
  v93 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  v94 = v130;
  swift_beginAccess();
  sub_1000BBF40(v92, &v94[v93], &qword_1006B4058);
  swift_endAccess();
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&_mh_execute_header, v95, v96, "🧭 FMFindingExperiencePresenter: Updating current heading and local device location", v97, 2u);
  }

  v98 = *&v130[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator];
  v99 = *(v98 + 40);
  v100 = *(v99 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading);
  if (v100)
  {
    v101 = v100;
    sub_100162B7C(v101, "FMFindingExperiencePresenter: Received updated local heading", &dispatch thunk of FMPrecisionConnectionManager.updateHeadingForLocalDevice(heading:));

    v99 = *(v98 + 40);
  }

  v102 = *(v99 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  if (v102)
  {
    v103 = v102;
    sub_100162B7C(v103, "FMFindingExperiencePresenter: Received updated local device location", &dispatch thunk of FMPrecisionConnectionManager.updateLocationForLocalDevice(location:));
  }

  v104 = v130;
  v105 = *&v130[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_sharingClient];
  sub_10016FF44(a1, v16, type metadata accessor for FindingMode);
  v106 = (*(v129 + 80) + 48) & ~*(v129 + 80);
  v107 = swift_allocObject();
  v107[2] = v104;
  v107[3] = v39;
  v107[4] = v40;
  v108 = v126;
  v107[5] = v126;
  sub_10016FED8(v16, v107 + v106);
  v135 = sub_10017024C;
  v136 = v107;
  aBlock = _NSConcreteStackBlock;
  v132 = 1107296256;
  v133 = sub_10037A044;
  v134 = &unk_10062A338;
  v109 = _Block_copy(&aBlock);
  v110 = v104;
  v111 = v108;

  [v105 startProxCardTransactionWithOptions:0 completion:v109];

  _Block_release(v109);
}

void sub_100162AE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    dispatch thunk of FMFindingSession.sessionTimedOut()();
  }
}

void sub_100162B7C(uint64_t a1, const char *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v8 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v8 - 8);
  v10 = (&v19 - v9);
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4CF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, a2, v14, 2u);
  }

  v15 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v6 + v15, v10, &qword_1006B4058);
  v16 = type metadata accessor for FindingMode(0);
  if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
  {
    sub_100012DF0(v10, &qword_1006B4058);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v17 = *v10;
    type metadata accessor for FMPrecisionConnectionManager();
    if (swift_dynamicCastClass())
    {
      v18 = v17;
      a3(a1);
    }

    else
    {
    }
  }

  else
  {
    sub_10016FFAC(v10, type metadata accessor for FindingMode);
  }
}

uint64_t sub_100162DDC(char a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4CF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v14 = 136315138;
    if (a1)
    {
      v15 = 0x64656C6261736964;
    }

    else
    {
      v15 = 0xD000000000000010;
    }

    if (a1)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v16 = 0x8000000100582330;
    }

    v17 = a5;
    v18 = a6;
    v19 = sub_100005B4C(v15, v16, &v22);

    *(v14 + 4) = v19;
    a6 = v18;
    a5 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "🧭 FMFindingExperiencePresenter: %s prox card", v14, 0xCu);
    sub_100006060(v21);
  }

  return sub_1001636B0(a3, a4, a5, a6);
}

void sub_100162FAC(unsigned int (**a1)(char *, uint64_t))
{
  v2 = v1;
  v46 = type metadata accessor for FMFindingProductType();
  v4 = *(v46 - 8);
  __chkstk_darwin(v46);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v7 - 8);
  v45 = &v40 - v8;
  v9 = type metadata accessor for FindingMode(0);
  v44 = *(v9 - 1);
  v10 = __chkstk_darwin(v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __chkstk_darwin(v10);
  v15 = &v40 - v14;
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  if (qword_1006AED70 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4CF0);
    sub_10016FF44(a1, v17, type metadata accessor for FindingMode);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v42 = a1;
      v22 = v21;
      v23 = swift_slowAlloc();
      v41 = v12;
      v24 = v23;
      v47[0] = v23;
      *v22 = 136315138;
      v43 = v6;
      sub_10016FF44(v17, v15, type metadata accessor for FindingMode);
      v25 = String.init<A>(describing:)();
      v40 = v9;
      v26 = v2;
      v27 = v4;
      v29 = v28;
      sub_10016FFAC(v17, type metadata accessor for FindingMode);
      v30 = sub_100005B4C(v25, v29, v47);
      v4 = v27;
      v2 = v26;
      v9 = v40;

      *(v22 + 4) = v30;
      v6 = v43;
      _os_log_impl(&_mh_execute_header, v19, v20, "🧭 FMFindingExperiencePresenter: Started discovering for finding experience mode: %s", v22, 0xCu);
      sub_100006060(v24);
      v12 = v41;

      a1 = v42;
    }

    else
    {

      sub_10016FFAC(v17, type metadata accessor for FindingMode);
    }

    v31 = v45;
    sub_10016FF44(a1, v45, type metadata accessor for FindingMode);
    (v44)[7](v31, 0, 1, v9);
    v32 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
    swift_beginAccess();
    sub_1000BBF40(v31, &v2[v32], &qword_1006B4058);
    swift_endAccess();
    sub_10016FF44(a1, v12, type metadata accessor for FindingMode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_15;
    }

    v35 = *v12;
    v43 = v2;
    v44 = v35;
    v36 = FMConnectionManager.findables.getter();
    v15 = v36;
    v45 = *(v36 + 16);
    if (!v45)
    {
LABEL_14:

      return;
    }

    v17 = 0;
    v37 = v36 + 32;
    a1 = (v4 + 88);
    v2 = enum case for FMFindingProductType.person(_:);
    v9 = (v4 + 8);
    while (v17 < *(v15 + 2))
    {
      sub_100037840(v37, v47);
      v12 = v6;
      v4 = v47[4];
      sub_1000244BC(v47, v47[3]);
      dispatch thunk of FMFindable.findingProductType.getter();
      v38 = v46;
      if ((*a1)(v6, v46) == v2)
      {

        (*v9)(v6, v38);
        sub_100006060(v47);
        v39 = *(*&v43[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 40);
        sub_10052974C(1);

        return;
      }

      ++v17;
      (*v9)(v6, v38);
      sub_100006060(v47);
      v37 += 40;
      if (v45 == v17)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  if (!EnumCaseMultiPayload)
  {
    v34 = type metadata accessor for UUID();
    (*(*(v34 - 8) + 8))(v12, v34);
    return;
  }

LABEL_15:
  sub_10016FFAC(v12, type metadata accessor for FindingMode);
}

id sub_100163594()
{
  v1 = v0;
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4CF0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "🧭 FMFindingExperiencePresenter: Dismissing Finding View Controller", v5, 2u);
  }

  result = *(v1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController);
  if (result)
  {

    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_1001636B0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v29 = a4;
  v30 = a3;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for FindingMode(0);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v6 - 8);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;

  dispatch thunk of FindingViewControllerType.willAppearHandler.setter();

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 24) = a2;
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;

  dispatch thunk of FindingViewControllerType.willDisappearHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of FindingViewControllerType.dismissedHandler.setter();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  dispatch thunk of FindingViewControllerType.playSoundHandler.setter();

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v16 = ObjectType;
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;

  dispatch thunk of FindingViewControllerType.flashLightHandler.setter();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = v27;
  sub_10016FF44(v29, v27, type metadata accessor for FindingMode);
  v19 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v20 = swift_allocObject();
  v21 = v30;
  v20[2] = v17;
  v20[3] = v21;
  v20[4] = a1;
  v20[5] = a2;
  sub_10016FED8(v18, v20 + v19);

  v22 = v21;
  v23 = a1;
  sub_100165840(v22, sub_100170044, v20);
}

void sub_100163AD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = *(*&v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 16);
      v8[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
      v9 = v8;
      sub_10041E45C();

      v10 = &v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 1);
        ObjectType = swift_getObjectType();
        (*(v11 + 8))(v4, v6, v7, ObjectType, v11);
        swift_unknownObjectRelease();
      }

      v13 = &v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
      v14 = *&v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
      *v13 = v6;
      v13[1] = v7;

      v4 = v14;
    }
  }
}

void sub_100163C00(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v3 - 8);
  v5 = v46 - v4;
  v6 = type metadata accessor for FMSelectedSection();
  v7 = __chkstk_darwin(v6);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v46 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = v46 - v14;
  __chkstk_darwin(v13);
  v17 = v46 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    swift_beginAccess();
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v46[0] = *(a2 + 24);
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v47 = v5;
      v20 = type metadata accessor for Logger();
      v46[1] = sub_100005B14(v20, qword_1006D4CF0);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "🧭 FMFindingExperiencePresenter: Finding View Controller will disappear", v23, 2u);
      }

      v24 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_expiryTimer;
      [*&v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_expiryTimer] invalidate];
      v25 = *&v19[v24];
      *&v19[v24] = 0;

      v26 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator;
      v27 = *(*&v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 16);
      v27[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
      v28 = v27;
      sub_10041E45C();

      v29 = *(*&v19[v26] + 56);
      v30 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
      swift_beginAccess();
      sub_10016FF44(v29 + v30, v17, type metadata accessor for FMSelectedSection);
      v31 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      swift_beginAccess();
      sub_10016FF44(v29 + v31, v15, type metadata accessor for FMSelectedSection);
      swift_storeEnumTagMultiPayload();

      LOBYTE(v31) = sub_10005F7D0(v17, v9);
      sub_10016FFAC(v9, type metadata accessor for FMSelectedSection);
      if (v31)
      {
        v32 = v15;
      }

      else
      {
        v32 = v17;
      }

      sub_10016FF44(v32, v12, type metadata accessor for FMSelectedSection);
      sub_10016FF44(v29 + v30, v9, type metadata accessor for FMSelectedSection);
      swift_beginAccess();
      sub_100058530(v12, v29 + v30);
      swift_endAccess();
      sub_100058594(v9);

      sub_10016FFAC(v9, type metadata accessor for FMSelectedSection);
      sub_10016FFAC(v12, type metadata accessor for FMSelectedSection);
      v33 = &v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
      v34 = swift_unknownObjectWeakLoadStrong();
      v35 = v48;
      if (v34)
      {
        v36 = *(v33 + 1);
        ObjectType = swift_getObjectType();
        (*(v36 + 16))(v19, v35, v46[0], ObjectType, v36);
        swift_unknownObjectRelease();
      }

      [*&v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_sharingClient] invalidate];
      v38 = &v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
      v39 = *&v19[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
      *v38 = 0;
      *(v38 + 1) = 0;

      v40 = type metadata accessor for FindingMode(0);
      v41 = v47;
      (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
      v42 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
      swift_beginAccess();
      sub_1000BBF40(v41, &v19[v42], &qword_1006B4058);
      swift_endAccess();
      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "🧭 FMFindingExperiencePresenter: re-enabled prox card", v45, 2u);
      }

      sub_10016FFAC(v15, type metadata accessor for FMSelectedSection);
      sub_10016FFAC(v17, type metadata accessor for FMSelectedSection);
    }

    else
    {
    }
  }
}

void sub_100164180()
{
  v0 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v0 - 8);
  v2 = &v13[-v1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100005B14(v5, qword_1006D4CF0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "🧭 FMFindingExperiencePresenter: Finding View Controller was dismissed", v8, 2u);
    }

    v9 = &v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
    v10 = *&v4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController];
    *v9 = 0;
    *(v9 + 1) = 0;

    v11 = type metadata accessor for FindingMode(0);
    (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
    v12 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
    swift_beginAccess();
    sub_1000BBF40(v2, &v4[v12], &qword_1006B4058);
    swift_endAccess();
  }
}

void sub_100164378(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_1001607EC();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_1006AED70 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100005B14(v14, qword_1006D4CF0);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "🧭 FMFindingExperiencePresenter: Finding View Controller requested playSound action", v17, 2u);
      }

      sub_100062900(a3);
      v18 = v9;

      sub_10016C824(v12, v13, v18, a3, a4, v18, a1, a2 & 1, v12, v13);

      sub_10001835C(a3);
    }

    else
    {
    }
  }
}

uint64_t sub_10016452C(uint64_t result, uint64_t (*a2)(void), uint64_t a3, char *a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v15 = &a4[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate];
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v20 = a8;
      v16 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      v17 = swift_allocObject();
      v17[2] = a2;
      v17[3] = a3;
      v17[4] = a4;
      v18 = *(v16 + 24);
      sub_100062900(a2);
      v18(a4, a5, a6 & 1, a7, v20, sub_10017047C, v17, ObjectType, v16);

      return swift_unknownObjectRelease();
    }
  }

  else if (a2)
  {
    return a2(0);
  }

  return result;
}

uint64_t sub_100164688(char a1)
{
  v2 = [objc_opt_self() defaultDeviceWithMediaType:AVMediaTypeVideo];
  if (v2)
  {
    v3 = v2;
    if ([v2 hasTorch])
    {
      v29[0] = 0;
      v4 = [v3 lockForConfiguration:v29];
      v5 = v29[0];
      if (v4)
      {
        [v3 setTorchMode:a1 & 1];
        if (qword_1006AED70 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_100005B14(v6, qword_1006D4CF0);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          v10 = swift_slowAlloc();
          v29[0] = v10;
          *v9 = 136315138;
          if (a1)
          {
            v11 = 28271;
          }

          else
          {
            v11 = 6710895;
          }

          if (a1)
          {
            v12 = 0xE200000000000000;
          }

          else
          {
            v12 = 0xE300000000000000;
          }

          v13 = sub_100005B4C(v11, v12, v29);

          *(v9 + 4) = v13;
          _os_log_impl(&_mh_execute_header, v7, v8, "🧭 FMFindingPresenter: Did set torch mode %s", v9, 0xCu);
          sub_100006060(v10);
        }

        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v15 = Strong;
          sub_100165570(a1 & 1);
        }

        [v3 unlockForConfiguration];

        return 0;
      }

      else
      {
        v22 = v5;
        v23 = _convertNSErrorToError(_:)();

        v24 = v23;
        swift_willThrow();
        if (qword_1006AED70 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for Logger();
        sub_100005B14(v25, qword_1006D4CF0);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "🧭 FMFindingPresenter: Failed setting torch mode", v28, 2u);
        }

        return v24;
      }
    }
  }

  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4CF0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "🧭 FMFindingPresenter: Unable to set torch mode", v20, 2u);
  }

  sub_10017005C();
  result = swift_allocError();
  *v21 = 1;
  return result;
}

void sub_100164AB0(char a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v68 = a5;
  v69 = a4;
  v65 = type metadata accessor for FMSelectedSection();
  v9 = __chkstk_darwin(v65);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v66 = v61 - v11;
  v12 = type metadata accessor for FMFindingProductType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FindingMode(0);
  __chkstk_darwin(v16);
  v18 = (v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v20 = Strong;
  if (a1)
  {
    sub_10016FF44(a6, v18, type metadata accessor for FindingMode);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      v44 = *(*&v20[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 16);
      v45 = objc_opt_self();
      v46 = v44;
      v47 = [v45 mainBundle];
      v74._object = 0x8000000100582000;
      v48._countAndFlagsBits = 0xD000000000000021;
      v48._object = 0x80000001005820C0;
      v49.value._object = 0x8000000100581FE0;
      v74._countAndFlagsBits = 0xD000000000000015;
      v49.value._countAndFlagsBits = 0xD000000000000010;
      v50._countAndFlagsBits = 0;
      v50._object = 0xE000000000000000;
      v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v48, v49, v47, v50, v74);

      v52 = v69;
      v53 = v20;
      v54 = a3;
      sub_1003DD644(v46, v51._countAndFlagsBits, v51._object, v54, v52, v68, v53, v54);

      sub_10016FFAC(v18, type metadata accessor for FindingMode);
      return;
    }

    v63 = a3;
    v64 = v20;
    v21 = *v18;
    v22 = v18[1];
    v61[1] = v21;
    v62 = v22;
    v23 = FMConnectionManager.findables.getter();
    v24 = v23;
    v71 = *(v23 + 16);
    if (!v71)
    {
LABEL_9:

      v28 = v64;
      v29 = *(*&v64[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 16);
      v30 = objc_opt_self();
      v31 = v29;
      v32 = [v30 mainBundle];
      v73._object = 0x8000000100582000;
      v33._countAndFlagsBits = 0xD000000000000021;
      v33._object = 0x80000001005820C0;
      v34.value._object = 0x8000000100581FE0;
      v73._countAndFlagsBits = 0xD000000000000015;
      v34.value._countAndFlagsBits = 0xD000000000000010;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v73);

      v37 = v69;
      v38 = v28;
      v39 = v63;
      sub_1003DD644(v31, v36._countAndFlagsBits, v36._object, v39, v37, v68, v38, v39);

      return;
    }

    v20 = 0;
    v25 = v23 + 32;
    v70 = enum case for FMFindingProductType.person(_:);
    v26 = (v13 + 8);
    while (v20 < *(v24 + 16))
    {
      sub_100037840(v25, v72);
      sub_1000244BC(v72, v72[3]);
      dispatch thunk of FMFindable.findingProductType.getter();
      v27 = (*(v13 + 88))(v15, v12);
      if (v27 == v70)
      {

        (*v26)(v15, v12);
        sub_100006060(v72);
        v55 = v69;
        v56 = v64;
        [v69 setTransitioningDelegate:v64];
        [v55 setModalPresentationStyle:3];
        v57 = *(*&v56[OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator] + 56);
        v58 = v66;
        swift_storeEnumTagMultiPayload();
        v59 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
        swift_beginAccess();
        v60 = v67;
        sub_10016FF44(v57 + v59, v67, type metadata accessor for FMSelectedSection);
        swift_beginAccess();

        sub_100058530(v58, v57 + v59);
        swift_endAccess();
        sub_100058594(v60);

        sub_10016FFAC(v60, type metadata accessor for FMSelectedSection);
        sub_10016FFAC(v58, type metadata accessor for FMSelectedSection);
        [v63 presentViewController:v55 animated:1 completion:0];

        return;
      }

      ++v20;
      (*v26)(v15, v12);
      sub_100006060(v72);
      v25 += 40;
      if (v71 == v20)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

  if (qword_1006AED70 != -1)
  {
LABEL_18:
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100005B14(v40, qword_1006D4CF0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "🧭 FMFindingPresenter: Camera not enabled", v43, 2u);
  }
}

void sub_1001651EC(char a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = type metadata accessor for FMSelectedSection();
  v10 = __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  if (a1)
  {
    [a2 setTransitioningDelegate:a4];
    v15 = *(*(a4 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator) + 56);
    swift_storeEnumTagMultiPayload();
    v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_10016FF44(v15 + v16, v12, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v14, v15 + v16);
    swift_endAccess();
    sub_100058594(v12);

    sub_10016FFAC(v12, type metadata accessor for FMSelectedSection);
    sub_10016FFAC(v14, type metadata accessor for FMSelectedSection);
    v17 = [objc_opt_self() currentDevice];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      v19 = objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
      v20 = sub_1000CC510(a2, 2);
      [v20 setDelegate:v20];
      v21 = v20;
      [v21 setModalInPresentation:1];
      sub_10000905C(0, &qword_1006B41D8);
      [swift_getObjCClassFromMetadata() preferredContentSize];
      [v21 setPreferredContentSize:?];

      [a5 presentViewController:v21 animated:1 completion:0];
    }

    else
    {
      [a2 setModalPresentationStyle:3];
      [a5 presentViewController:a2 animated:1 completion:0];
    }
  }

  else
  {
    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100005B14(v22, qword_1006D4CF0);
    v27 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v27, v23, "🧭 FMFindingPresenter: Couldn't find, BT is off", v24, 2u);
    }

    v25 = v27;
  }
}

uint64_t sub_100165570(uint64_t a1)
{
  v3 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v1 + v6, v5, &qword_1006B4058);
  v7 = type metadata accessor for FindingMode(0);
  result = (*(*(v7 - 8) + 48))(v5, 1, v7);
  if (result != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        return sub_10016FFAC(v5, type metadata accessor for FindingMode);
      }
    }

    else if (!EnumCaseMultiPayload)
    {
      v10 = type metadata accessor for UUID();
      return (*(*(v10 - 8) + 8))(v5, v10);
    }

    if (qword_1006AED70 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4CF0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19 = v15;
      *v14 = 136315138;
      if (a1 == 1)
      {
        v16 = 28271;
      }

      else
      {
        v16 = 6710895;
      }

      if (a1 == 1)
      {
        v17 = 0xE200000000000000;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_100005B4C(v16, v17, &v19);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "🧭 FMFindingPresenter: Analytics: Torch button changed state to %s", v14, 0xCu);
      sub_100006060(v15);
    }

    dispatch thunk of FMFindingSession.analyticsLogTorchButtonStateChanged(state:)();
  }

  return result;
}

uint64_t sub_100165840(void *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v53 = a1;
  v6 = type metadata accessor for FMFindingProductType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&qword_1006B4058);
  __chkstk_darwin(v10 - 8);
  v12 = &v49 - v11;
  v13 = OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedMode;
  swift_beginAccess();
  sub_100007204(v3 + v13, v12, &qword_1006B4058);
  v14 = type metadata accessor for FindingMode(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    sub_100012DF0(v12, &qword_1006B4058);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v52 = v3;
    v15 = *(v12 + 1);

    v16 = FMConnectionManager.findables.getter();
    if (*(v16 + 16))
    {
      v51 = v15;
      sub_100037840(v16 + 32, v54);

      sub_100006A54(v54, v55);
      v17 = objc_opt_self();
      v18 = [v17 mainBundle];
      v56._object = 0x8000000100582000;
      v19._countAndFlagsBits = 0xD000000000000012;
      v19._object = 0x8000000100581FC0;
      v49 = "CAMERA_ALERT_TITLE";
      v20.value._object = 0x8000000100581FE0;
      v56._countAndFlagsBits = 0xD000000000000015;
      v20.value._countAndFlagsBits = 0xD000000000000010;
      v21._countAndFlagsBits = 0;
      v21._object = 0xE000000000000000;
      v50 = NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v56);

      sub_1000244BC(v55, v55[3]);
      dispatch thunk of FMFindable.findingProductType.getter();
      v22 = (*(v7 + 88))(v9, v6);
      if (v22 == enum case for FMFindingProductType.airpods(_:))
      {
        v23 = [v17 mainBundle];
        v57._object = 0x8000000100582060;
        v24._countAndFlagsBits = 0xD00000000000001CLL;
        v24._object = 0x8000000100582020;
        v25.value._object = 0x8000000100582040;
        v57._countAndFlagsBits = 0xD000000000000015;
        v25.value._countAndFlagsBits = 0xD000000000000010;
        v26._countAndFlagsBits = 0;
        v26._object = 0xE000000000000000;
        v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v57);
        countAndFlagsBits = v27._countAndFlagsBits;
        object = v27._object;
        v30 = 1;
        v31 = v52;
      }

      else
      {
        v31 = v52;
        if (v22 == enum case for FMFindingProductType.person(_:))
        {
          (*(v7 + 8))(v9, v6);
          v23 = [v17 mainBundle];
          v58._object = 0x80000001005800E0;
          v37._countAndFlagsBits = 0xD00000000000001BLL;
          v37._object = 0x8000000100582080;
          v38.value._countAndFlagsBits = 0xD000000000000019;
          v38.value._object = 0x80000001005800C0;
          v58._countAndFlagsBits = 0xD00000000000001ALL;
          v39._countAndFlagsBits = 0;
          v39._object = 0xE000000000000000;
          v40 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, v38, v23, v39, v58);
          countAndFlagsBits = v40._countAndFlagsBits;
          object = v40._object;
          v30 = 0;
        }

        else
        {
          if (v22 == enum case for FMFindingProductType.item(_:))
          {
            v23 = [v17 mainBundle];
            v48 = 0x8000000100582000;
            v41 = 0xD000000000000014;
            v42 = 0x80000001005820A0;
            v43 = v49 | 0x8000000000000000;
          }

          else
          {
            if (v22 != enum case for FMFindingProductType.device(_:))
            {
              result = _diagnoseUnexpectedEnumCase<A>(type:)();
              __break(1u);
              return result;
            }

            v23 = [v17 mainBundle];
            v48 = 0x8000000100582060;
            v41 = 0xD00000000000001CLL;
            v42 = 0x8000000100582020;
            v43 = 0x8000000100582040;
          }

          v44 = 0xD000000000000015;
          v45 = 0xD000000000000010;
          v46._countAndFlagsBits = 0;
          v46._object = 0xE000000000000000;
          v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v41, *(&v43 - 1), v23, v46, *(&v48 - 1));
          countAndFlagsBits = v47._countAndFlagsBits;
          object = v47._object;
          v30 = 1;
        }
      }

      sub_1003D9E94(v30, *(v31 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator), v53, v50._countAndFlagsBits, v50._object, countAndFlagsBits, object, a2, a3);

      return sub_100006060(v55);
    }
  }

  else
  {
    sub_10016FFAC(v12, type metadata accessor for FindingMode);
  }

  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005B14(v32, qword_1006D4CF0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "🧭 FMFindingExperiencePresenter: Not showing Camera access for BT finding.", v35, 2u);
  }

  return a2(1);
}

uint64_t sub_100165EB8(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "FMFindingExperiencePresenter: User canceled safety warning", v6, 2u);
  }

  return a2(0);
}

uint64_t sub_100165FB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4CF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMFindingExperiencePresenter: User confirmed safety warning", v8, 2u);
  }

  *(a2 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_confirmedSafetyWarning) = 1;
  return a3(1);
}

uint64_t sub_1001660BC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v7 = *(v19 - 8);
  __chkstk_darwin(v19);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4CF0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v11, v12, "🧭 FMFindingExperiencePresenter: Updating sound playback state, isPlaying: %{BOOL}d", v13, 8u);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1 & 1;
  aBlock[4] = sub_10017000C;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10062A018;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001702F0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v19);
}

void sub_100166480(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_presentedViewController);
  if (v1)
  {
    swift_getObjectType();
    v2 = v1;
    dispatch thunk of FindingViewControllerType.isSoundPlaying.setter();
  }
}

uint64_t sub_10016651C(unsigned int a1, char a2, int a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_mediator);
  v8 = *(v7 + 16);
  OS_dispatch_queue.sync<A>(execute:)();

  v9 = *(v7 + 16);
  v10 = sub_10041E648();

  type metadata accessor for FMConnectionManager();
  LOBYTE(v9) = static FMConnectionManager.hostSupportsRanging.getter();
  v11 = sub_100169288(a1, a2, a3);
  if ((v9 & 1) != 0 && (a1 & 0x400) != 0)
  {
    if ((v11 & 1) == 0 && (v11 & 0x100) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v11 & 1) == 0)
  {
LABEL_5:
    v12 = *&v10 & ((v11 & 0x100) >> 8);
    goto LABEL_8;
  }

  LOBYTE(v12) = v10 | v18;
LABEL_8:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v12 & 1;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMFindingExperiencePresenter: showFindingAttention: %{BOOL}d", v16, 8u);
  }

  return v12 & 1;
}

void sub_100166718()
{
  sub_100166884(319, &qword_1006B3F78, type metadata accessor for FindingMode);
  if (v0 <= 0x3F)
  {
    sub_100166884(319, &qword_1006B3F80, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100166884(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_100166950()
{
  sub_100166A40(319, &qword_1006B3848, &type metadata accessor for UUID);
  if (v0 <= 0x3F)
  {
    sub_100166A40(319, &qword_1006B4010, &type metadata accessor for FMFindingSession);
    if (v1 <= 0x3F)
    {
      sub_100166A40(319, &qword_1006B4018, &type metadata accessor for FMConnectionManager);
      if (v2 <= 0x3F)
      {
        sub_100166A8C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100166A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100166A8C()
{
  if (!qword_1006B4020)
  {
    type metadata accessor for FMFindingSession();
    type metadata accessor for FMConnectionManager();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006B4020);
    }
  }
}

id sub_100166B50()
{
  if (qword_1006AED70 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4CF0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "🧭 FMFindingExperiencePresenter: Dismissing finding view, findable is attached", v3, 2u);
  }

  return sub_100163594();
}

uint64_t sub_100166C54(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&unk_1006AF7A0);
  v3 = type metadata accessor for FMIPItem();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100552220;
  (*(v4 + 16))(v6 + v5, a2, v3);
  sub_10016B02C(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);

  return swift_deallocClassInstance();
}

void sub_100166D84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v6 = a2;
    v2 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v6;
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v5 = *(a2 + 8 * v4 + 32);
LABEL_8:
  v7 = v5;
  sub_100162B7C(v5, "FMFindingExperiencePresenter: Received updated local device location", &dispatch thunk of FMPrecisionConnectionManager.updateLocationForLocalDevice(location:));
}

id sub_100166E9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10016FF44(a2, v5, type metadata accessor for FMSelectedSection);
  LODWORD(a2) = swift_getEnumCaseMultiPayload();
  result = sub_10016FFAC(v5, type metadata accessor for FMSelectedSection);
  if (a2 == 2)
  {
    return sub_100163594();
  }

  return result;
}