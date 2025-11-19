void sub_10008A634()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = v1;
    v4 = [v3 navigationItem];
    v5 = [v4 leftBarButtonItem];

    v6 = sub_1000BC190(sub_10008D084, v2, 0, 0, v5);

    [v3 presentViewController:v6 animated:1 completion:0];
  }
}

uint64_t sub_10008A790()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v4 = *(v12 - 8);
  __chkstk_darwin(v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_10008CE0C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2728;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10008CE64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_10008AA70()
{
  v1 = v0;
  v76 = type metadata accessor for UploadConsentItem();
  isa = v76[-1].isa;
  __chkstk_darwin(v76);
  v3 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TargetDevice();
  v67 = *(v4 - 1);
  v5 = __chkstk_darwin(v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v57 - v8;
  if (qword_1001FC7E8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v10 = SessionManager.currentSession.getter();
    if (!v10)
    {
      break;
    }

    v11 = v10;
    v78[0] = Session.targetedDevices.getter();

    sub_1000C6404(sub_100124B0C, 0);

    v12 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices;
    *(v1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices) = v78[0];

    v13 = *(v1 + v12);
    v66 = *(v13 + 16);
    if (!v66)
    {

      return;
    }

    v65 = v13 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v71 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files;
    v75 = isa + 16;
    v73 = v67 + 16;
    v74 = (isa + 8);
    v62 = (v67 + 8);

    v15 = 0;
    v60 = v1;
    v59 = v4;
    v58 = v7;
    v57 = v9;
    v63 = v14;
    v64 = v11;
    while (1)
    {
      if (v15 >= *(v14 + 16))
      {
        goto LABEL_56;
      }

      v69 = *(v67 + 72);
      v70 = v15;
      v72 = *(v67 + 16);
      v72(v9, v65 + v69 * v15, v4);
      v17 = Session.uploadConsentItems.getter();
      v18 = TargetDevice.id.getter();
      if (*(v17 + 16))
      {
        v20 = sub_100064AFC(v18, v19);
        v22 = v21;

        if (v22)
        {
          v23 = *(*(v17 + 56) + 8 * v20);

          goto LABEL_13;
        }
      }

      else
      {
      }

      v23 = _swiftEmptyArrayStorage;
LABEL_13:
      v72(v7, v9, v4);
      v24 = v23[2];
      if (v24)
      {
        break;
      }

      v27 = _swiftEmptyArrayStorage;
LABEL_32:
      v37 = v71;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = *(v1 + v37);
      v39 = v77;
      *(v1 + v37) = 0x8000000000000000;
      v40 = sub_100064C6C(v7);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v35 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v35)
      {
        goto LABEL_57;
      }

      v45 = v41;
      if (v39[3] >= v44)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v51 = v40;
          sub_100143278();
          v40 = v51;
        }
      }

      else
      {
        sub_100140394(v44, isUniquelyReferenced_nonNull_native);
        v40 = sub_100064C6C(v7);
        if ((v45 & 1) != (v46 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);

          __break(1u);
          return;
        }
      }

      v47 = v77;
      if (v45)
      {
        *(v77[7] + 8 * v40) = v27;
      }

      else
      {
        v77[(v40 >> 6) + 8] |= 1 << v40;
        v48 = v40;
        v72((v47[6] + v40 * v69), v7, v4);
        *(v47[7] + 8 * v48) = v27;
        v49 = v47[2];
        v35 = __OFADD__(v49, 1);
        v50 = v49 + 1;
        if (v35)
        {
          goto LABEL_58;
        }

        v47[2] = v50;
      }

      v15 = v70 + 1;
      v16 = *v62;
      (*v62)(v7, v4);
      *(v1 + v71) = v47;
      swift_endAccess();
      v16(v9, v4);
      v14 = v63;
      if (v15 == v66)
      {

        return;
      }
    }

    v25 = *(isa + 80);
    v68 = v23;
    v26 = v23 + ((v25 + 32) & ~v25);
    v9 = *(isa + 9);
    v4 = *(isa + 2);
    v27 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = v76;
      (v4)(v3, v26, v76);
      v7 = UploadConsentItem.files.getter();
      (*v74)(v3, v28);
      v29 = *(v7 + 2);
      v1 = v27[2];
      v30 = v1 + v29;
      if (__OFADD__(v1, v29))
      {
        break;
      }

      v31 = swift_isUniquelyReferenced_nonNull_native();
      if (v31 && v30 <= v27[3] >> 1)
      {
        if (*(v7 + 2))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v1 <= v30)
        {
          v32 = v1 + v29;
        }

        else
        {
          v32 = v1;
        }

        v27 = sub_1000D4EA4(v31, v32, 1, v27);
        if (*(v7 + 2))
        {
LABEL_26:
          v1 = v27[2];
          v33 = (v27[3] >> 1) - v1;
          type metadata accessor for URL();
          if (v33 < v29)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v29)
          {
            v34 = v27[2];
            v35 = __OFADD__(v34, v29);
            v36 = v34 + v29;
            if (v35)
            {
              goto LABEL_55;
            }

            v27[2] = v36;
          }

          goto LABEL_16;
        }
      }

      if (v29)
      {
        goto LABEL_53;
      }

LABEL_16:
      v26 = &v9[v26];
      if (!--v24)
      {

        v1 = v60;
        v4 = v59;
        v7 = v58;
        v9 = v57;
        goto LABEL_32;
      }
    }

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
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  if (qword_1001FC7D0 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_10003DAAC(v52, qword_10020A528);
  v76 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v76, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v78[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_100056B7C(0xD000000000000014, 0x800000010018D7E0, v78);
    _os_log_impl(&_mh_execute_header, v76, v53, "%s No active enhanced logging session", v54, 0xCu);
    sub_100044554(v55);
  }

  else
  {
    v56 = v76;
  }
}

void sub_10008B2B4()
{
  sub_100101C50();
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView];
  type metadata accessor for DeviceFileReviewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = v1;
  v4 = String._bridgeToObjectiveC()();
  [v3 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v4];

  v5 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ALL, 0x800000010018D6E0);
  v6 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryActionTitle];
  *v6 = v5;
  v6[1] = v7;

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v9 = &v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_primaryAction];
  *v9 = sub_10008CD40;
  v9[1] = v8;
  v11 = v0;
  sub_10003C52C(v10);
  v12 = MobileGestalt_get_current_device();
  if (v12)
  {
    v13 = v12;
    containsCellularRadioCapability = MobileGestalt_get_containsCellularRadioCapability();

    if (containsCellularRadioCapability)
    {
      v15 = sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001ELL, 0x800000010018D700);
      v16 = &v11[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryActionTitle];
      *v16 = v15;
      v16[1] = v17;

      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      v19 = &v11[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
      v20 = *&v11[OBJC_IVAR____TtC11Diagnostics27ConsentNoticeViewController_secondaryAction];
      *v19 = sub_10008CD68;
      v19[1] = v18;
      v21 = v11;

      sub_10003C52C(v20);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10008B4D0(void *a1)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    goto LABEL_25;
  }

  v3 = v2;
  wapiCapability = MobileGestalt_get_wapiCapability();

  if (wapiCapability)
  {
    v5 = 0xD00000000000002BLL;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (wapiCapability)
  {
    v6 = "_CELLULAR_WARNING_USE";
  }

  else
  {
    v6 = "ENHANCED_LOGGING_SEND_CELLULAR";
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000027, 0x800000010018D750);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v5, (v6 | 0x8000000000000000));

  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:0];

  v10 = [v9 popoverPresentationController];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = [a1 buttonTray];
  v13 = [v12 allButtons];

  sub_10003E110(0, &qword_1001FEE40);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_11;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_18;
  }

LABEL_11:
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
    goto LABEL_22;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_22:
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_16;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v17 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v14 + 8 * v17 + 32);
LABEL_16:
    v19 = v18;
LABEL_19:

    [v11 setSourceItem:v19];

    swift_unknownObjectRelease();
LABEL_20:
    sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000025, 0x800000010018D780);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    v21 = a1;
    v22 = String._bridgeToObjectiveC()();

    v25[4] = sub_10008CD70;
    v25[5] = v20;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_100072168;
    v25[3] = &unk_1001C26B0;
    v23 = _Block_copy(v25);

    v24 = [objc_opt_self() actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v9 addAction:v24];
    [v9 setPreferredAction:v24];
    [v21 presentViewController:v9 animated:1 completion:0];

    return;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_10008B8AC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    containsCellularRadioCapability = MobileGestalt_get_containsCellularRadioCapability();

    return containsCellularRadioCapability;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008B934(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for Session.UploadOptions();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = v1[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason];
  if (v11 != 2 && (v11 & 1) == 0)
  {
    if (qword_1001FC7E8 != -1)
    {
      swift_once();
    }

    if (SessionManager.currentSession.getter())
    {
      v22 = v5;
      Session.issueOccurred()();
      v14 = v13;
      if (v13)
      {

        goto LABEL_20;
      }

      v5 = v22;
    }
  }

  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  if (!SessionManager.currentSession.getter())
  {
    sub_10008CDB0();
    v14 = swift_allocError();
    swift_willThrow();
LABEL_20:
    v15 = swift_allocObject();
    *(v15 + 16) = v2;
    v16 = v2;
    v17 = sub_1000B99C8(v14, sub_10008CE04, v15);

    [v16 presentViewController:v17 animated:1 completion:0];
  }

  if (a1)
  {
    if (a1 == 1)
    {
      static Session.UploadOptions.allowCellular.getter();
      Session.startUploading(options:)();
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      if (qword_1001FC6C8 != -1)
      {
        swift_once();
      }

      sub_100066800(3, 0);
      Session.cancel()();
    }
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
    sub_10008CE64(&qword_1001FEE48, &type metadata accessor for Session.UploadOptions);
    sub_10003C49C(&qword_1001FEE50);
    sub_10003E278(&qword_1001FEE58, &qword_1001FEE50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    Session.startUploading(options:)();
    (*(v5 + 8))(v10, v4);
  }

  v19 = *&v1[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  if (v19)
  {

    v19(v20);
    sub_10003C52C(v19);
  }
}

uint64_t sub_10008BD5C(uint64_t a1)
{
  if (qword_1001FC6C8 != -1)
  {
    swift_once();
  }

  sub_100066800(3, 0);
  if (qword_1001FC7E8 != -1)
  {
    swift_once();
  }

  result = SessionManager.currentSession.getter();
  if (result)
  {
    Session.cancel()();
  }

  v3 = *(a1 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion);
  if (v3)
  {

    v3(v4);

    return sub_10003C52C(v3);
  }

  return result;
}

uint64_t sub_10008BE70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = TargetDevice.isLocal.getter();
  type metadata accessor for ReviewableFile();
  v9 = swift_allocObject();
  *(v9 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___fileExists) = 2;
  *(v9 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile____lazy_storage___isDirectory) = 2;
  result = (*(v5 + 32))(v9 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_url, v7, v4);
  *(v9 + OBJC_IVAR____TtC11Diagnostics14ReviewableFile_isOnRemoteDevice) = (v8 & 1) == 0;
  *a2 = v9;
  return result;
}

void sub_10008BFD4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000AD8E4();
    v3 = v2;
    v4 = [v1 navigationController];
    if (v4)
    {
      v5 = v4;
      [v4 pushViewController:v3 animated:1];
    }
  }
}

id sub_10008C1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 2;
  *&v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices] = _swiftEmptyArrayStorage;
  *&v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files] = _swiftEmptyDictionarySingleton;
  v11 = &v7[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  *v11 = 0;
  v11[1] = 0;
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = type metadata accessor for FileReviewingTableViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

id sub_10008C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_activationReason] = 2;
  *&v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices] = _swiftEmptyArrayStorage;
  *&v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files] = _swiftEmptyDictionarySingleton;
  v10 = &v6[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion];
  *v10 = 0;
  v10[1] = 0;
  v11 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v6;
  v15.super_class = type metadata accessor for FileReviewingTableViewController();
  v13 = objc_msgSendSuper2(&v15, "initWithTitle:detailText:icon:contentLayout:", v11, v12, a5, a6);

  return v13;
}

uint64_t sub_10008C514()
{

  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_completion);

  return sub_10003C52C(v1);
}

id sub_10008C568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FileReviewingTableViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10008C634()
{
  result = qword_1001FEE38;
  if (!qword_1001FEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FEE38);
  }

  return result;
}

unint64_t sub_10008C688()
{
  v1 = v0;
  v2 = sub_10003C49C(&qword_1001FFE10);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v44 - v6;
  v8 = type metadata accessor for TargetDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = *&v0[OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_targetedDevices];
  if (result >= *(v13 + 16))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v46 = v7;
  v47 = v5;
  v14 = v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result;
  v15 = v8;
  v45 = *(v9 + 16);
  v45(v11, v14, v8);
  v16 = *&v0[OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView];
  v17 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v16 dequeueReusableCellWithIdentifier:v17 forIndexPath:isa];

  v20 = type metadata accessor for DeviceFileReviewCell();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {

    v22 = objc_allocWithZone(v20);
    v23 = String._bridgeToObjectiveC()();
    v21 = [v22 initWithStyle:0 reuseIdentifier:v23];
  }

  v24 = OBJC_IVAR____TtC11Diagnostics32FileReviewingTableViewController_files;
  swift_beginAccess();
  v25 = *&v1[v24];
  v26 = v8;
  if (*(v25 + 16))
  {

    v27 = sub_100064C6C(v11);
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v27);

      v30 = v46;
      v45(v46, v11, v15);
      (*(v9 + 56))(v30, 0, 1, v15);
      v31 = OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_device;
      swift_beginAccess();
      v32 = v47;
      sub_10008CEAC(&v21[v31], v47);
      swift_beginAccess();
      sub_10008CF1C(v30, &v21[v31]);
      swift_endAccess();
      sub_100110CC8(v32);
      sub_10008CF8C(v32);
      v33 = sub_10008CF8C(v30);
      __chkstk_darwin(v33);
      *(&v44 - 2) = v11;
      v34 = sub_100089C00(sub_10008CFF4, (&v44 - 4), v29);

      v35 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files];
      *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_files] = v34;

      LOBYTE(v30) = sub_10011291C(v36, v35);

      if ((v30 & 1) == 0)
      {
        sub_1001110D4();
      }

      v37 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_expandableContentView];
      v38 = &v37[OBJC_IVAR____TtC11Diagnostics17ExpandableSection_expansionDelegate];
      *v38 = v1;
      *(v38 + 1) = &off_1001C2620;
      v39 = v37;
      v40 = v1;

      swift_unknownObjectRelease();
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v42 = &v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
      v43 = *&v21[OBJC_IVAR____TtC11Diagnostics20DeviceFileReviewCell_didSelectURL];
      *v42 = sub_10008D04C;
      v42[1] = v41;

      sub_10003C52C(v43);
    }

    else
    {
    }
  }

  (*(v9 + 8))(v11, v26);
  return v21;
}

double sub_10008CB7C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10014FFA0(&off_1001BDBD8);
  v3 = objc_opt_self();
  v4 = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v5 = [v4 fontDescriptor];
  v6 = [v5 fontDescriptorWithSymbolicTraits:2];

  if (!v6)
  {
    v6 = [v4 fontDescriptor];
  }

  [v4 pointSize];
  v7 = [v3 fontWithDescriptor:v6 size:?];

  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];
  v11 = [v8 labelColor];
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v11;
  *(a1 + 40) = xmmword_100181240;
  result = 1.0;
  *(a1 + 56) = xmmword_100181250;
  return result;
}

uint64_t sub_10008CD08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008CDB0()
{
  result = qword_1001FFE50;
  if (!qword_1001FFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FFE50);
  }

  return result;
}

id sub_10008CE0C()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView;
  [*(v1 + OBJC_IVAR____TtC11Diagnostics32ConsentNoticeTableViewController_tableView) reloadData];
  v3 = *(v1 + v2);

  return [v3 invalidateIntrinsicContentSize];
}

uint64_t sub_10008CE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008CEAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_1001FFE10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008CF8C(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FFE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10008D0DC()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  [v0 setModalPresentationStyle:2];
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = [v0 navigationBar];
    v2 = [objc_allocWithZone(UIImage) init];
    [v1 setBackgroundImage:v2 forBarMetrics:0];

    v3 = [v0 navigationBar];
    v4 = [objc_allocWithZone(UIImage) init];
    [v3 setShadowImage:v4];

    v5 = [v0 navigationBar];
    [v5 setAlpha:0.0];
  }

  sub_10003C49C(&unk_1001FD020);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10017EBF0;
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics44EnhancedLoggingCompletedNavigationController_enhancedLoggingCompletedViewController];
  *(v6 + 32) = v7;
  sub_100045CC4();
  v8 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setViewControllers:isa];
}

id sub_10008D55C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EnhancedLoggingCompletedNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10008D5C4()
{
  v0 = sub_10003C49C(&qword_1001FDF40);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();

  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10008D844(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v9 = result;
    URL._bridgeToObjectiveC()(v8);
    v11 = v10;
    sub_1000D59EC(_swiftEmptyArrayStorage);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v9 openSensitiveURL:v11 withOptions:isa];

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008D844(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FDF40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008D8AC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1001FEE90 = v4;
    *algn_1001FEE98 = v6;
  }

  return result;
}

uint64_t sub_10008D9BC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1001FEEA0 = v4;
    *algn_1001FEEA8 = v6;
  }

  return result;
}

uint64_t sub_10008DACC()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    qword_1001FEEB0 = v4;
    *algn_1001FEEB8 = v6;
  }

  return result;
}

void sub_10008DBDC()
{
  v1 = sub_10003C49C(&unk_1001FEEC0);
  v2 = __chkstk_darwin(v1 - 8);
  v113 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v112 = &v106 - v5;
  v6 = __chkstk_darwin(v4);
  v115 = &v106 - v7;
  v8 = __chkstk_darwin(v6);
  v122 = &v106 - v9;
  v10 = __chkstk_darwin(v8);
  v120 = &v106 - v11;
  v12 = __chkstk_darwin(v10);
  v119 = &v106 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v106 - v15;
  v16 = __chkstk_darwin(v14);
  v124 = &v106 - v17;
  v18 = __chkstk_darwin(v16);
  v128 = &v106 - v19;
  v20 = __chkstk_darwin(v18);
  v127 = &v106 - v21;
  v22 = __chkstk_darwin(v20);
  v129 = &v106 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v106 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v106 - v27;
  __chkstk_darwin(v26);
  v30 = &v106 - v29;
  v31 = type metadata accessor for DispatchData();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v108 = &v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v111 = &v106 - v36;
  v37 = __chkstk_darwin(v35);
  v114 = &v106 - v38;
  v39 = __chkstk_darwin(v37);
  v121 = &v106 - v40;
  v41 = __chkstk_darwin(v39);
  v123 = &v106 - v42;
  v43 = __chkstk_darwin(v41);
  v126 = &v106 - v44;
  __chkstk_darwin(v43);
  v46 = &v106 - v45;
  v135 = v0;
  v47 = *v0;
  v48 = v0[1];
  v49 = v32 + 7;
  v137 = v32[7];
  v137(v30, 1, 1, v31);
  v117 = v47;
  v116 = v48;
  sub_10008EBC8(v47, v48, v30);
  sub_10008F3F0(v30, v28);
  v51 = v32 + 6;
  v50 = v32[6];
  if (v50(v28, 1, v31) == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v136 = v32[4];
  v133 = v32 + 4;
  v136(v46, v28, v31);
  sub_10008F460(v30);
  v118 = DispatchData._bridgeToObjectiveC()();
  v53 = v32[1];
  v52 = (v32 + 1);
  v130 = v53;
  v53(v46, v31);
  v54 = v135[2];
  v55 = v135[3];
  v56 = v131;
  v137(v131, 1, 1, v31);
  v110 = v54;
  v109 = v55;
  sub_10008EBC8(v54, v55, v56);
  v57 = v129;
  sub_10008F3F0(v56, v129);
  v58 = v50(v57, 1, v31);
  v134 = v49;
  if (v58 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v59 = v126;
  v136(v126, v57, v31);
  sub_10008F460(v131);
  v131 = DispatchData._bridgeToObjectiveC()();
  v60 = v130;
  v130(v59, v31);
  v61 = v135[4];
  v62 = v135[5];
  v63 = v127;
  v137(v127, 1, 1, v31);
  v126 = v61;
  v107 = v62;
  v64 = v62;
  v65 = v63;
  sub_10008EBC8(v61, v64, v63);
  v66 = v128;
  sub_10008F3F0(v63, v128);
  if (v50(v66, 1, v31) == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v67 = v51;
  v68 = v60;
  v69 = v50;
  v70 = v123;
  v136(v123, v66, v31);
  sub_10008F460(v65);
  v129 = DispatchData._bridgeToObjectiveC()();
  v68(v70, v31);
  v71 = v135[6];
  v72 = v135[7];
  v73 = v124;
  v137(v124, 1, 1, v31);
  sub_10008EBC8(v71, v72, v73);
  v135 = 0;
  v74 = v125;
  sub_10008F3F0(v73, v125);
  v75 = v67;
  v132 = v69;
  if (v69(v74, 1, v31) == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v121;
  v136(v121, v74, v31);
  sub_10008F460(v73);
  v77 = DispatchData._bridgeToObjectiveC()();
  v128 = v52;
  v68(v76, v31);
  v78 = v118;
  v79 = v131;
  v80 = v129;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  v82 = v122;
  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v83 = sec_identity_copy_SPAKE2PLUSV1_server_password_verifier();
  v85 = v119;
  v84 = v120;
  v86 = v132;
  v131 = v83;
  if (!v83)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v127 = client_SPAKE2PLUSV1_identity;
  v87 = sec_identity_copy_SPAKE2PLUSV1_registration_record();
  v88 = v137;
  v129 = v87;
  if (!v87)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v137(v85, 1, 1, v31);
  sub_10008EBC8(v117, v116, v85);
  sub_10008F3F0(v85, v84);
  v89 = v86(v84, 1, v31);
  v135 = v75;
  if (v89 == 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v90 = v114;
  v91 = v136;
  v136(v114, v84, v31);
  sub_10008F460(v85);
  v125 = DispatchData._bridgeToObjectiveC()();
  v92 = v90;
  v93 = v130;
  v130(v92, v31);
  v88(v82, 1, 1, v31);
  sub_10008EBC8(v110, v109, v82);
  v94 = v115;
  sub_10008F3F0(v82, v115);
  if (v132(v94, 1, v31) == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v95 = v111;
  v91(v111, v94, v31);
  sub_10008F460(v82);
  v96 = DispatchData._bridgeToObjectiveC()();
  v93(v95, v31);
  v97 = v112;
  v88(v112, 1, 1, v31);
  sub_10008EBC8(v126, v107, v97);
  v98 = v97;
  v99 = v113;
  sub_10008F3F0(v97, v113);
  if (v132(v99, 1, v31) == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v100 = v108;
  v91(v108, v99, v31);
  sub_10008F460(v98);
  v101 = DispatchData._bridgeToObjectiveC()();
  v93(v100, v31);
  v102 = v125;
  v103 = v131;
  v104 = v129;
  server_SPAKE2PLUSV1_identity = sec_identity_create_server_SPAKE2PLUSV1_identity();

  if (server_SPAKE2PLUSV1_identity)
  {
    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_10008E61C()
{
  v1 = sub_10003C49C(&unk_1001FEEC0);
  v2 = __chkstk_darwin(v1 - 8);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v57 = &v53 - v5;
  v6 = __chkstk_darwin(v4);
  v60 = &v53 - v7;
  v8 = __chkstk_darwin(v6);
  v59 = &v53 - v9;
  v10 = __chkstk_darwin(v8);
  v62 = &v53 - v11;
  v12 = __chkstk_darwin(v10);
  v61 = &v53 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = &v53 - v15;
  __chkstk_darwin(v14);
  v18 = &v53 - v17;
  v19 = type metadata accessor for DispatchData();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v55 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v56 = &v53 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v53 - v26;
  __chkstk_darwin(v25);
  v29 = &v53 - v28;
  v30 = *v0;
  v31 = v0[1];
  v32 = v20[7];
  v66 = v20 + 7;
  v67 = v0;
  v65 = v32;
  v32(v18, 1, 1, v19);
  sub_10008EBC8(v30, v31, v18);
  sub_10008F3F0(v18, v16);
  v64 = v20[6];
  if (v64(v16, 1, v19) == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v63 = v20[4];
  v63(v29, v16, v19);
  sub_10008F460(v18);
  v54 = DispatchData._bridgeToObjectiveC()();
  v33 = v20[1];
  v33(v29, v19);
  v34 = v67[2];
  v35 = v67[3];
  v36 = v61;
  v65(v61, 1, 1, v19);
  sub_10008EBC8(v34, v35, v36);
  v37 = v62;
  sub_10008F3F0(v36, v62);
  if (v64(v37, 1, v19) == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v63(v27, v37, v19);
  sub_10008F460(v36);
  v62 = DispatchData._bridgeToObjectiveC()();
  v33(v27, v19);
  v38 = v67[4];
  v39 = v67[5];
  v40 = v59;
  v65(v59, 1, 1, v19);
  sub_10008EBC8(v38, v39, v40);
  v41 = v60;
  sub_10008F3F0(v40, v60);
  if (v64(v41, 1, v19) == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v42 = v56;
  v63(v56, v41, v19);
  sub_10008F460(v40);
  v43 = DispatchData._bridgeToObjectiveC()();
  v33(v42, v19);
  v44 = v67[6];
  v45 = v67[7];
  v46 = v57;
  v65(v57, 1, 1, v19);
  sub_10008EBC8(v44, v45, v46);
  v47 = v58;
  sub_10008F3F0(v46, v58);
  if (v64(v47, 1, v19) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v48 = v55;
  v63(v55, v47, v19);
  sub_10008F460(v46);
  v49 = DispatchData._bridgeToObjectiveC()();
  v33(v48, v19);
  v50 = v54;
  v51 = v62;
  client_SPAKE2PLUSV1_identity = sec_identity_create_client_SPAKE2PLUSV1_identity();

  if (!client_SPAKE2PLUSV1_identity)
  {
LABEL_11:
    __break(1u);
  }
}

uint64_t sub_10008EBC8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10003C49C(&unk_1001FEEC0);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(&v14[1], 0, 14);
      goto LABEL_9;
    }

    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
    return sub_10008EDB8(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v9)
  {
    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10008EDB8(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v14[1] = a1;
  LOWORD(v14[2]) = a2;
  BYTE2(v14[2]) = BYTE2(a2);
  BYTE3(v14[2]) = BYTE3(a2);
  BYTE4(v14[2]) = BYTE4(a2);
  BYTE5(v14[2]) = BYTE5(a2);
LABEL_9:
  DispatchData.init(bytes:)();
  v13 = type metadata accessor for DispatchData();
  (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
  return sub_10008F4C8(v8, a3);
}

uint64_t sub_10008EDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10003C49C(&unk_1001FEEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v12 - v8;
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      DispatchData.init(bytes:)();
      v11 = type metadata accessor for DispatchData();
      (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
      return sub_10008F4C8(v9, a4);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10008EEF0(uint64_t a1, unint64_t a2)
{
  if (qword_1001FC718 != -1)
  {
    swift_once();
  }

  v4 = qword_1001FEE90;
  v5 = *algn_1001FEE98;
  sub_10005FC70(qword_1001FEE90, *algn_1001FEE98);
  if (qword_1001FC720 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEEA0;
  v7 = *algn_1001FEEA8;
  sub_10005FC70(qword_1001FEEA0, *algn_1001FEEA8);
  if (qword_1001FC728 != -1)
  {
    swift_once();
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v15 = xmmword_1001FEEB0;
  v16 = a1;
  v17 = a2;
  sub_10005FC70(xmmword_1001FEEB0, *(&xmmword_1001FEEB0 + 1));
  sub_10005FC70(a1, a2);
  sub_10008DBDC();
  v9 = v8;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v10 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_10008F3C0(v14);

    return 0;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v11 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v11, v9);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  v12 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  swift_unknownObjectRelease();

  sub_10008F3C0(v14);
  return v12;
}

uint64_t sub_10008F14C(uint64_t a1, unint64_t a2)
{
  if (qword_1001FC718 != -1)
  {
    swift_once();
  }

  v4 = qword_1001FEE90;
  v5 = *algn_1001FEE98;
  sub_10005FC70(qword_1001FEE90, *algn_1001FEE98);
  if (qword_1001FC720 != -1)
  {
    swift_once();
  }

  v6 = qword_1001FEEA0;
  v7 = *algn_1001FEEA8;
  sub_10005FC70(qword_1001FEEA0, *algn_1001FEEA8);
  if (qword_1001FC728 != -1)
  {
    swift_once();
  }

  v14[0] = v4;
  v14[1] = v5;
  v14[2] = v6;
  v14[3] = v7;
  v15 = xmmword_1001FEEB0;
  v16 = a1;
  v17 = a2;
  sub_10005FC70(xmmword_1001FEEB0, *(&xmmword_1001FEEB0 + 1));
  sub_10005FC70(a1, a2);
  sub_10008E61C();
  v9 = v8;
  type metadata accessor for NWProtocolTCP.Options();
  swift_allocObject();
  NWProtocolTCP.Options.init()();
  dispatch thunk of NWProtocolTCP.Options.enableKeepalive.setter();
  dispatch thunk of NWProtocolTCP.Options.keepaliveIdle.setter();
  type metadata accessor for NWProtocolTLS.Options();
  nw_swift_tls_record_create_options();
  v10 = static NWProtocolOptions.fromNW(_:)();
  swift_unknownObjectRelease();
  if (!v10)
  {
    swift_unknownObjectRelease();
LABEL_12:
    sub_10008F3C0(v14);

    return 0;
  }

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v11 = dispatch thunk of NWProtocolTLS.Options.securityProtocolOptions.getter();
  sec_protocol_options_set_local_identity(v11, v9);
  swift_unknownObjectRelease();
  type metadata accessor for NWParameters();

  v12 = NWParameters.__allocating_init(tls:tcp:)();
  NWParameters.includePeerToPeer.setter();
  NWParameters.nw.getter();
  nw_parameters_set_indefinite();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10008F3C0(v14);
  return v12;
}

uint64_t sub_10008F3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FEEC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F460(uint64_t a1)
{
  v2 = sub_10003C49C(&unk_1001FEEC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008F4C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&unk_1001FEEC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008F538(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10008F554(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008F568(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10008F5BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_10008F62C(int a1, id a2, void (*a3)(void))
{
  v4 = [a2 identifier];
  a3();
}

uint64_t sub_10008F698(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v32 = a6;
  v33 = a3;
  v30 = a5;
  v31 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v10 = *(v36 - 8);
  __chkstk_darwin(v36);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  v18 = swift_allocObject();
  v19 = v31;
  v21 = v32;
  v20 = v33;
  v18[2] = v30;
  v18[3] = v21;
  v22 = v34;
  v23 = v35;
  v18[4] = a2;
  v18[5] = v23;
  v18[6] = v20;
  v18[7] = v22;
  v18[8] = v19;
  aBlock[4] = sub_100099DD4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2BB0;
  v24 = _Block_copy(aBlock);
  v25 = a2;
  v26 = v23;

  v27 = v19;
  static DispatchQoS.unspecified.getter();
  v38 = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);

  (*(v37 + 8))(v9, v7);
  (*(v10 + 8))(v12, v36);
}

void sub_10008FA64(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = _swiftEmptyArrayStorage;
  v14 = [a1 imageLocators];
  if (v14)
  {
    v15 = a3;
    v16 = v14;
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (qword_1001FC820 != -1)
    {
      swift_once();
    }

    v18 = sub_100107734(v17);

    *(v13 + 16) = v18;

    a3 = v15;
  }

  if (_UISolariumEnabled())
  {
    v19 = 2;
  }

  else
  {
    v19 = 3;
  }

  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = a7;
  v20[4] = v13;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = v19;
  v20[8] = a3;
  v20[9] = a4;
  swift_retain_n();

  v21 = a2;
  v22 = a1;
  v23 = [v22 iconLocator];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1001FC820 != -1)
    {
      swift_once();
    }

    v28 = qword_10020A588;

    sub_10010D858(v25, v27, v28, sub_100099E70, v20);

LABEL_12:

    return;
  }

  v56 = a3;
  v57 = a6;
  v29 = (*(a7 + 24))(a6, a7);
  v30 = qword_1001FC738;
  v31 = swift_retain_n();
  if (v30 != -1)
  {
    v31 = swift_once();
    v55 = v21;
    if (v29)
    {
      goto LABEL_15;
    }

LABEL_28:
    sub_100099EA4();
    swift_allocError();
    *v46 = 0;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v48 = Error.localizedDescription.getter();
    v50 = v49;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = sub_10003DFBC();
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    os_log(_:dso:log:type:_:)();

    sub_100090200(0, v13, v22, v55, v19, v56, a4, v57, a7);

    return;
  }

  v55 = v21;
  if (!v29)
  {
    goto LABEL_28;
  }

LABEL_15:
  if (qword_1001FEED8)
  {
    v53 = &v51;
    __chkstk_darwin(v31);
    v54 = v29;
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    v32 = v58;
    if (v58)
    {
      if (qword_1001FC820 != -1)
      {
        swift_once();
      }

      v33 = qword_10020A588;
      v34 = [v32 primaryAssetLocator];
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v37 = v36;

      sub_10010D800(v35, v37, v33, sub_100099E70, v20);

      v38 = v54;

      goto LABEL_12;
    }

    sub_100099EA4();
    swift_allocError();
    *v41 = 2;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v53 = qword_10020A4F8;
    v52 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
  }

  else
  {
    sub_100099EA4();
    swift_allocError();
    *v39 = 1;
    v54 = v29;
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    v53 = qword_10020A4F8;
    v52 = static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
  }

  v42 = Error.localizedDescription.getter();
  v44 = v43;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_10003DFBC();
  *(v40 + 32) = v42;
  *(v40 + 40) = v44;
  os_log(_:dso:log:type:_:)();

  sub_100090200(0, v13, v22, v55, v19, v56, a4, v57, a7);

  v45 = v54;
}

uint64_t sub_100090200(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a8;
  v31 = a5;
  v32 = a6;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v34 = *(v17 - 8);
  v35 = v17;
  __chkstk_darwin(v17);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E110(0, &qword_1001FD040);
  v33 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  v21 = v31;
  v20[2] = v30;
  v20[3] = a9;
  v20[4] = a2;
  v20[5] = a3;
  v20[6] = a4;
  v20[7] = a1;
  v22 = v32;
  v20[8] = v21;
  v20[9] = v22;
  v20[10] = a7;
  aBlock[4] = sub_100099F50;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2C50;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  v25 = a3;
  v26 = a4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
  sub_10003C49C(&unk_1001FD050);
  sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v33;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v36 + 8))(v16, v14);
  return (*(v34 + 8))(v19, v35);
}

void sub_100090528(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_beginAccess();
  v14 = *(a1 + 16);

  v15 = [a2 instructions];
  v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = [a2 instructionsStyle];
  v16 = [a2 localizedTitle];
  if (v16)
  {
    v17 = v16;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    (*(a9 + 16))(a8);
  }

  v47 = a6;
  v18 = [a2 localizedSubtitle];
  if (v18)
  {
    v19 = v18;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v20 = [a2 options];
  sub_10003C49C(&unk_1001FDF80);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a2 navigationBarActions];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = type metadata accessor for SelfServiceInstructionsViewController();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActionsMaxCount] = 2;
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_defaultTransitionDuration] = 0x3FC999999999999ALL;
  v26 = _UISolariumEnabled();
  v27 = 15.0;
  if (v26)
  {
    v27 = 0.0;
  }

  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructionsViewHorizontalSpacing] = v27;
  v28 = &v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_answer];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onDismiss];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_images] = v14;
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_instructions] = v43;
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_style] = v42;
  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_options] = v21;
  if (*(v23 + 16) >= 3uLL)
  {
    sub_100098AE8(v23, v23 + 32, 0, 5uLL);
    v32 = v31;

    v23 = v32;
  }

  *&v25[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_navigationBarActions] = v23;
  v33 = String._bridgeToObjectiveC()();

  v34 = String._bridgeToObjectiveC()();

  v48.receiver = v25;
  v48.super_class = v24;
  v35 = objc_msgSendSuper2(&v48, "initWithTitle:detailText:icon:contentLayout:", v33, v34, a4, a5);

  v36 = swift_allocObject();
  *(v36 + 2) = v47;
  *(v36 + 3) = a7;
  *(v36 + 4) = a2;
  v37 = &v35[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  v38 = *&v35[OBJC_IVAR____TtC11Diagnostics37SelfServiceInstructionsViewController_onButtonPress];
  *v37 = sub_100099FC8;
  v37[1] = v36;

  v39 = a2;
  sub_10003C52C(v38);
  v40 = [a3 navigationController];
  if (v40)
  {
    v41 = v40;
    [v40 pushViewController:v35 animated:1];
  }

  else
  {
    v41 = [v39 identifier];
    v47();
  }
}

uint64_t sub_100090948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = v6;
    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_10003DFBC();
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    os_log(_:dso:log:type:_:)();
  }

  return a3();
}

uint64_t sub_100090A9C()
{
  sub_10003C52C(*(v0 + 32));

  return swift_deallocClassInstance();
}

id sub_100090B08()
{
  result = [objc_allocWithZone(type metadata accessor for SuiteManager()) init];
  qword_10020A3C8 = result;
  return result;
}

void sub_100090B38()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    v2 = MobileGestalt_copy_serialNumber_obj();

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    qword_1001FEED0 = v3;
    qword_1001FEED8 = v5;
  }

  else
  {
    __break(1u);
  }
}

void sub_100090BB8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = *(v12 + 24);
  v14 = v13;

  if (!v13)
  {
LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = [v14 suiteID];

LABEL_7:
  *a4 = v15;
}

void *sub_100090CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_6;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {

    goto LABEL_6;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = *(v12 + 24);
  v14 = v13;

  if (!v13)
  {
LABEL_6:
    result = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v15 = [v14 history];

  sub_10003E110(0, &qword_1001FDEB8);
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = sub_100090DD0(v16);
LABEL_7:
  *a4 = result;
  return result;
}

unint64_t sub_100090DD0(uint64_t a1)
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
      v1 = sub_100068EB4(v19, 0);
      sub_100065C5C(v1 + 32, v20, v18);
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
          v1 = sub_10003E3D8(v1);
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
          a1 = sub_10003E3D8(v1);
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

void **sub_100090FE0()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin(v2);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  *&v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager;
  *&v0[v7] = [objc_allocWithZone(type metadata accessor for DeviceManager()) init];
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  *&v0[v8] = sub_1000D5B1C(_swiftEmptyArrayStorage);
  v40 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue;
  v39[1] = sub_10003E110(0, &qword_1001FD040);
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10003E230(&unk_1001FD740, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10003C49C(&unk_1001FCEA0);
  sub_10003E278(&qword_1001FD750, &unk_1001FCEA0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v41 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
  *&v0[v40] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint] = 0;
  *&v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_accessoryViewSymbolPointSize] = 0x403E000000000000;
  v9 = &v0[OBJC_IVAR____TtC11Diagnostics12SuiteManager_diagnosticEventID];
  v10 = type metadata accessor for SuiteManager();
  *v9 = 0;
  *(v9 + 1) = 0;
  v49.receiver = v1;
  v49.super_class = v10;
  v42 = v10;
  v11 = objc_msgSendSuper2(&v49, "init");
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 defaultCenter];
  if (qword_1001FC810 != -1)
  {
    swift_once();
  }

  v15 = qword_10020A578;
  v16 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager;
  v17 = *(v13 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 mainQueue];
  v21 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = sub_10009A4C0;
  v48 = v21;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C3060;
  v22 = _Block_copy(&aBlock);

  v23 = [v14 addObserverForName:v15 object:v19 queue:v20 usingBlock:v22];
  _Block_release(v22);
  swift_unknownObjectRelease();

  v24 = [v12 defaultCenter];
  if (qword_1001FC818 != -1)
  {
    swift_once();
  }

  v25 = qword_10020A580;
  v26 = *(v13 + v16);
  v27 = [v18 mainQueue];
  v28 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = sub_10009A4C8;
  v48 = v28;
  aBlock = _NSConcreteStackBlock;
  v44 = 1107296256;
  v45 = sub_100060B2C;
  v46 = &unk_1001C3088;
  v29 = _Block_copy(&aBlock);

  v30 = [v24 addObserverForName:v25 object:v26 queue:v27 usingBlock:v29];
  _Block_release(v29);
  swift_unknownObjectRelease();

  v31 = *(v13 + v16);
  v46 = v42;
  v47 = &off_1001C2908;
  aBlock = v13;
  v32 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_delegate;
  swift_beginAccess();
  v33 = v31;
  sub_10009A4D0(&aBlock, v31 + v32);
  swift_endAccess();

  LODWORD(v31) = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  if (v31)
  {
    v34 = objc_opt_self();
    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = sub_10009A540;
    v48 = v35;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = sub_100031FA8;
    v46 = &unk_1001C30B0;
    v36 = _Block_copy(&aBlock);

    v37 = String._bridgeToObjectiveC()();
    [v34 addShutdownTask:v36 forReason:v37];

    _Block_release(v36);
  }

  return v13;
}

void sub_100091738(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Notification.userInfo.getter();
  if (v11)
  {
    v12 = v11;
    strcpy(v39, "deviceStateKey");
    HIBYTE(v39[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v12 + 16) && (v13 = sub_100064B74(aBlock), (v14 & 1) != 0))
    {
      sub_10003E010(*(v12 + 56) + 32 * v13, v40);
      sub_10003DB48(aBlock);

      sub_10003E110(0, &qword_1001FF0E0);
      if (swift_dynamicCast())
      {
        v35 = v8;
        v36 = v4;
        v34 = v39[0];
        v15 = [v39[0] serialNumber];
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        sub_10003C49C(&unk_1001FEAD0);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_10017EC00;
        *(v18 + 56) = &type metadata for String;
        *(v18 + 64) = sub_10003DFBC();
        v19 = v37;
        *(v18 + 32) = v37;
        *(v18 + 40) = v17;

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        Strong = swift_unknownObjectUnownedLoadStrong();
        v21 = *&Strong[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

        v33 = &v33;
        __chkstk_darwin(v22);
        *(&v33 - 4) = a2;
        *(&v33 - 3) = v19;
        *(&v33 - 2) = v17;
        type metadata accessor for SuiteManagerRegistryEntry();
        OS_dispatch_queue.sync<A>(execute:)();

        v23 = aBlock[0];
        v24 = *(aBlock[0] + 24);
        v25 = v34;
        *(aBlock[0] + 24) = v34;
        v34 = v25;

        v26 = swift_unknownObjectUnownedLoadStrong();
        v27 = *&v26[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

        static DispatchWorkItemFlags.barrier.getter();
        v28 = swift_allocObject();
        v28[2] = a2;
        v28[3] = v19;
        v28[4] = v17;
        v28[5] = v23;
        aBlock[4] = sub_10009A5B8;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031FA8;
        aBlock[3] = &unk_1001C3150;
        v29 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v29);

        (*(v36 + 8))(v6, v3);
        (*(v35 + 8))(v10, v7);

        v30 = *(v23 + 32);
        if (v30)
        {

          v30(v31);
          sub_10003C52C(v30);
        }

        v32 = swift_unknownObjectUnownedLoadStrong();
        sub_1000935DC(v37, v17);
      }
    }

    else
    {

      sub_10003DB48(aBlock);
    }
  }
}

uint64_t sub_100091C6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v8 = *&Strong[v7];

  if (*(v8 + 16) && (v9 = sub_100064AFC(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    type metadata accessor for SuiteManagerRegistryEntry();
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0u;
    *(v11 + 40) = 0u;
  }

  *a3 = v11;
  return result;
}

void sub_100091D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *&Strong[v8];
  *&Strong[v8] = 0x8000000000000000;
  sub_100142594(a4, a2, a3, isUniquelyReferenced_nonNull_native);

  *&Strong[v8] = v10;
  swift_endAccess();
}

uint64_t sub_100091E10()
{
  v0 = type metadata accessor for DispatchQoS();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Notification.userInfo.getter();
  if (result)
  {
    v9 = result;
    strcpy(v42, "deviceStateKey");
    HIBYTE(v42[1]) = -18;
    AnyHashable.init<A>(_:)();
    if (*(v9 + 16) && (v10 = sub_100064B74(aBlock), (v11 & 1) != 0))
    {
      sub_10003E010(*(v9 + 56) + 32 * v10, v43);
      sub_10003DB48(aBlock);

      sub_10003E110(0, &qword_1001FF0E0);
      result = swift_dynamicCast();
      if (result)
      {
        v38 = v5;
        v39 = v1;
        v40 = v42[0];
        v12 = [v42[0] serialNumber];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (qword_1001FC7B0 != -1)
        {
          swift_once();
        }

        sub_10003C49C(&unk_1001FEAD0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10017EC00;
        *(v16 + 56) = &type metadata for String;
        *(v16 + 64) = sub_10003DFBC();
        *(v16 + 32) = v13;
        *(v16 + 40) = v15;

        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        Strong = swift_unknownObjectUnownedLoadStrong();
        sub_100093C8C(v13, v15);

        v18 = swift_unknownObjectUnownedLoadStrong();
        v19 = *&v18[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];

        v20 = [v40 serialNumber];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
        swift_beginAccess();
        v25 = *&v19[v24];
        if (*(v25 + 16))
        {

          v26 = sub_100064AFC(v21, v23);
          if (v27)
          {
            v28 = *(*(v25 + 56) + 8 * v26);
            swift_unknownObjectRetain();

            [v28 end];

            swift_unknownObjectRelease();
LABEL_15:
            v29 = swift_unknownObjectUnownedLoadStrong();
            v30 = *&v29[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

            static DispatchWorkItemFlags.barrier.getter();
            v31 = swift_allocObject();
            v32 = swift_unknownObjectUnownedLoadStrong();
            swift_unknownObjectWeakInit();

            v33 = swift_allocObject();
            v34 = v40;
            *(v33 + 16) = v31;
            *(v33 + 24) = v34;
            aBlock[4] = sub_10009A548;
            aBlock[5] = v33;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100031FA8;
            aBlock[3] = &unk_1001C3100;
            v35 = _Block_copy(aBlock);

            v36 = v34;
            static DispatchQoS.unspecified.getter();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v35);

            (*(v39 + 8))(v3, v0);
            (*(v38 + 8))(v7, v4);
          }
        }

        else
        {
        }

        goto LABEL_15;
      }
    }

    else
    {

      return sub_10003DB48(aBlock);
    }
  }

  return result;
}

void sub_100092388(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a2 serialNumber];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    swift_beginAccess();
    sub_10013C38C(0, v6, v8);
    swift_endAccess();
  }
}

void sub_100092448()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_10009617C(qword_1001FEED0, qword_1001FEED8);
    v2 = objc_opt_self();
    v3 = String._bridgeToObjectiveC()();
    [v2 removeShutdownTask:v3];
  }
}

uint64_t sub_1000925B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_sync_enter(v4);
  if (a2)
  {
    v23[1] = *&v4[OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue];

    static DispatchWorkItemFlags.barrier.getter();
    v16 = swift_allocObject();
    v23[0] = v8;
    v17 = a3;
    v18 = v16;
    swift_unknownObjectWeakInit();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = a1;
    v19[4] = a2;
    v19[5] = v17;
    aBlock[4] = sub_10009A418;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2F98;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v9 + 8))(v11, v23[0]);
    (*(v13 + 8))(v15, v12);

    return objc_sync_exit(v4);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v22 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return objc_sync_exit(v4);
  }
}

uint64_t sub_1000928DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v45 = *(v7 - 8);
  __chkstk_darwin(v7);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v46 = a2;
    v41 = a4;
    v17 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    swift_beginAccess();
    v18 = *&v16[v17];
    v19 = *(v18 + 16);

    v40 = v7;
    if (v19 && (v20 = sub_100064AFC(v46, a3), (v21 & 1) != 0))
    {
      v22 = *(*(v18 + 56) + 8 * v20);
    }

    else
    {
      type metadata accessor for SuiteManagerRegistryEntry();
      v22 = swift_allocObject();
      *(v22 + 16) = 0;
      *(v22 + 24) = 0u;
      *(v22 + 40) = 0u;
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = *&v16[v17];
    *&v16[v17] = 0x8000000000000000;
    v24 = v46;
    sub_100142594(v22, v46, a3, isUniquelyReferenced_nonNull_native);

    *&v16[v17] = v48;
    swift_endAccess();
    if (*(v22 + 24))
    {
      sub_10003E110(0, &qword_1001FD040);
      (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.default(_:), v11);
      v39 = static OS_dispatch_queue.global(qos:)();
      (*(v12 + 8))(v14, v11);
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      v26[2] = v25;
      v26[3] = v24;
      v27 = v41;
      v26[4] = a3;
      v26[5] = v27;
      aBlock[4] = sub_10009A47C;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C3010;
      v28 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v48 = _swiftEmptyArrayStorage;
      sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
      sub_10003C49C(&unk_1001FD050);
      sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
      v29 = v43;
      v30 = v40;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v31 = v39;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v28);

      (*(v45 + 8))(v29, v30);
      (*(v42 + 8))(v10, v44);
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_10003E110(0, &qword_1001FD6F0);
      v32 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      sub_10003C49C(&unk_1001FEAD0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10017EC00;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_10003DFBC();
      v34 = v46;
      *(v33 + 32) = v46;
      *(v33 + 40) = a3;

      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      v35 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v36 = swift_allocObject();
      v36[2] = v35;
      v36[3] = v34;
      v37 = v41;
      v36[4] = a3;
      v36[5] = v37;
      v38 = *(v22 + 32);
      *(v22 + 32) = sub_10009A424;
      *(v22 + 40) = v36;

      sub_10003C52C(v38);
    }
  }

  return result;
}

void sub_100092FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1000925B4(a2, a3, a4);
  }
}

void sub_10009302C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (qword_1001FC7B0 != -1)
    {
      swift_once();
    }

    sub_10003C49C(&unk_1001FEAD0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10017EC00;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_10003DFBC();
    *(v9 + 32) = a2;
    *(v9 + 40) = a3;

    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v10 = *&v8[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
    sub_100102FA4(a2, a3, a4);
  }
}

uint64_t sub_100093180(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = v4;
  if (!v4 || (v6 = [v4 getPairedDevices]) == 0)
  {
LABEL_42:
    v24 = static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v25 = static OS_os_log.default.getter();
    if (os_log_type_enabled(v25, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v35[0] = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100056B7C(a1, a2, v35);
      _os_log_impl(&_mh_execute_header, v25, v24, "[SuiteManager] Unable to find the paired device with serial number: %s", v26, 0xCu);
      sub_100044554(v27);
    }

    return 0;
  }

  v7 = v6;
  sub_10003E110(0, &unk_1001FF0D0);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v36 = _swiftEmptyArrayStorage;
  if (v8 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v28 = a3;
    v29 = v5;
    v10 = 0;
    a3 = v8 & 0xC000000000000001;
    v11 = v8 & 0xFFFFFFFFFFFFFF8;
    v12 = NRDevicePropertySerialNumber;
    v30 = NRDevicePropertySerialNumber;
    while (1)
    {
      if (a3)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_31;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v5 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ([v13 valueForProperty:v12])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0u;
        v34 = 0u;
      }

      v35[0] = v33;
      v35[1] = v34;
      if (!*(&v34 + 1))
      {
        sub_10003DD84(v35, &unk_1001FD720);
LABEL_7:
        String.lowercased()();
        goto LABEL_8;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_7;
      }

      v15 = i;
      v16 = v11;
      v17 = a3;
      v18 = String.lowercased()();

      v19 = String.lowercased()();
      if (v18._object)
      {
        if (v18._countAndFlagsBits == v19._countAndFlagsBits && v18._object == v19._object)
        {

          goto LABEL_25;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
LABEL_25:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        a3 = v17;
        v11 = v16;
        i = v15;
        v12 = v30;
        goto LABEL_9;
      }

      v11 = v16;
      i = v15;
      v12 = v30;
LABEL_8:

LABEL_9:
      ++v10;
      if (v5 == i)
      {
        v21 = v36;
        v5 = v29;
        a3 = v28;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_34:

  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_37;
    }

    goto LABEL_41;
  }

  if (!*(v21 + 16))
  {
LABEL_41:

    goto LABEL_42;
  }

LABEL_37:
  if ((v21 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();

    goto LABEL_39;
  }

  v22 = *(v21 + 16);

  if (v22)
  {
LABEL_39:
    sub_1000925B4(a1, a2, a3);

    return 1;
  }

  __break(1u);
  return result;
}

void sub_1000935DC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v24 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v2;
  v26 = a1;
  v27 = a2;
  sub_10003C49C(&unk_1001FF0B0);
  OS_dispatch_queue.sync<A>(execute:)();
  v12 = aBlock[0];
  if (aBlock[0])
  {
    v13 = *(aBlock[0] + 24);
    if (v13)
    {
      v14 = v13;
      static DispatchWorkItemFlags.barrier.getter();
      v15 = swift_allocObject();
      v15[2] = v12;
      v15[3] = v14;
      v15[4] = v2;
      aBlock[4] = sub_10009A3A0;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100031FA8;
      aBlock[3] = &unk_1001C2F20;
      v16 = _Block_copy(aBlock);
      v17 = v14;

      v18 = v2;
      static DispatchQoS.unspecified.getter();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v24 + 8))(v7, v5);
      (*(v9 + 8))(v11, v8);

      return;
    }
  }

  v19 = static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v20 = static OS_os_log.default.getter();
  if (os_log_type_enabled(v20, v19))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_100056B7C(a1, a2, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v19, "[SuiteManager] Unable to find entry or state matching the serial number: %s", v21, 0xCu);
    sub_100044554(v22);
  }
}

void sub_100093964(uint64_t a1, void *a2, void *a3)
{
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a2;
  v7 = a3;
  v8 = a2;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = *(a1 + 48);
  *(a1 + 48) = v9;
}

void sub_100093A2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_10003C49C(&qword_1001FF0C8);
  NSKeyValueObservedChange.newValue.getter();
  if (v21 >= 2)
  {
    v6 = v21;
    if (([v6 integerValue] & 0x8000000000000000) == 0)
    {
      v7 = a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v8 = *(v7 + 8);
        ObjectType = swift_getObjectType();
        v10 = [a4 serialNumber];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = [a4 suiteID];
        (*(v8 + 32))(a3, v6, v11, v13, v14, ObjectType, v8);

        swift_unknownObjectRelease();
      }

      if (qword_1001FC7B0 != -1)
      {
        swift_once();
      }

      static os_log_type_t.debug.getter();
      sub_10003C49C(&unk_1001FEAD0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10017EC10;
      v16 = [a4 serialNumber];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      *(v15 + 56) = &type metadata for String;
      *(v15 + 64) = sub_10003DFBC();
      *(v15 + 32) = v17;
      *(v15 + 40) = v19;
      v20 = [v6 integerValue];
      *(v15 + 96) = &type metadata for Int;
      *(v15 + 104) = &protocol witness table for Int;
      *(v15 + 72) = v20;
      os_log(_:dso:log:type:_:)();
    }

    sub_100079A54(v21);
    sub_100079A54(v21);
  }
}

uint64_t sub_100093C8C(uint64_t a1, uint64_t a2)
{
  v16 = type metadata accessor for DispatchQoS();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchWorkItemFlags.barrier.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_10009A34C;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2ED0;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v4 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);
}

void sub_100093EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    if (*(v8 + 16) && (v9 = sub_100064AFC(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      v12 = *(v11 + 48);
      *(v11 + 48) = 0;
    }

    else
    {
    }
  }
}

void sub_100093FD8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v18 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_registryUpdateQueue);

    static DispatchWorkItemFlags.barrier.getter();
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = a1;
    v14[4] = a2;
    aBlock[4] = sub_10009A340;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2E80;
    v15 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v15);
    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    v16 = v18;
  }
}

void sub_1000942DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];

    if (*(v8 + 16) && (v9 = sub_100064AFC(a2, a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      v12 = *(v11 + 24);

      [v12 resetState];
    }

    else
    {
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
    v15 = v13;
    swift_beginAccess();
    v16 = *&v15[v14];

    if (*(v16 + 16) && (v17 = sub_100064AFC(a2, a3), (v18 & 1) != 0))
    {
      v19 = *(*(v16 + 56) + 8 * v17);

      v20 = *(v19 + 24);
      v21 = v20;

      if (v20)
      {
        [v21 setPhase:0];
      }
    }

    else
    {
    }
  }
}

void sub_100094488(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a2)
  {
    __chkstk_darwin(a1);

    sub_10003C49C(&unk_1001FF0B0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v21)
    {
      v9 = *(v21 + 24);
      if (v9)
      {
        v10 = &v4[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v11 = *(v10 + 1);
          ObjectType = swift_getObjectType();
          v12 = swift_allocObject();
          v12[2] = v4;
          v12[3] = v9;
          v12[4] = a3;
          v12[5] = v21;
          v12[6] = a1;
          v12[7] = a2;
          v13 = *(v11 + 56);
          v14 = v9;
          v15 = v4;
          v16 = a3;

          v13(v15, v16, a4 & 1, sub_10009A2B4, v12, ObjectType, v11);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return;
      }
    }

    sub_10003C49C(&unk_1001FEAD0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_10017EC00;
    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10003DFBC();
    *(v17 + 32) = a1;
    *(v17 + 40) = a2;
    sub_10003E110(0, &qword_1001FD6F0);
    v18 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v20 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

void sub_100094794(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a1;
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0A0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (aBlock[0])
    {

      return;
    }
  }

  v12 = *&v11[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
  v13 = [a2 serialNumber];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = swift_allocObject();
  v17[2] = v11;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v18 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
  swift_beginAccess();
  v19 = *(v12 + v18);
  v20 = *(v19 + 16);

  v21 = v11;
  if (v20)
  {

    v22 = sub_100064AFC(v14, v16);
    if (v23)
    {
      v24 = *(*(v19 + 56) + 8 * v22);
      swift_unknownObjectRetain();

      if ([v24 respondsToSelector:"requestSuiteStart:completionHandler:"])
      {
        aBlock[4] = sub_10009A30C;
        aBlock[5] = v17;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10009898C;
        aBlock[3] = &unk_1001C2E30;
        v25 = _Block_copy(aBlock);
        [v24 requestSuiteStart:a3 completionHandler:v25];
        swift_unknownObjectRelease();

        _Block_release(v25);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return;
    }
  }

  sub_10009A1F4();
  v26 = swift_allocError();
  *v27 = v14;
  v27[1] = v16;
  sub_10003C49C(&unk_1001FEAD0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10017EC00;
  swift_getErrorValue();

  swift_errorRetain();
  v29 = Error.localizedDescription.getter();
  v31 = v30;
  *(v28 + 56) = &type metadata for String;
  *(v28 + 64) = sub_10003DFBC();
  *(v28 + 32) = v29;
  *(v28 + 40) = v31;
  sub_10003E110(0, &qword_1001FD6F0);
  v32 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v33 = &v21[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v33 + 1);
    ObjectType = swift_getObjectType();
    v36 = *(v34 + 24);
    swift_errorRetain();
    v36(v21, a3, 0, v26, ObjectType, v34);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_100094C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a6)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    swift_errorRetain();
    v14 = Error.localizedDescription.getter();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_10003DFBC();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_10003E110(0, &qword_1001FD6F0);
    v17 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v18 = a7 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v21 = *(v19 + 24);
      swift_errorRetain();
      v21(a7, a1, 0, a6, ObjectType, v19);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v23 = (a7 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_diagnosticEventID);
    *v23 = a2;
    v23[1] = a3;

    if (*(a8 + 16))
    {
      sub_10003E110(0, &qword_1001FD6F0);

      v24 = a1;
      v25 = static OS_os_log.default.getter();
      v26 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        *(v27 + 4) = v24;
        *v28 = v24;
        v29 = v24;
        _os_log_impl(&_mh_execute_header, v25, v26, "[SuiteManager] Suite cancellation was pending at the time %@ was started. Cancelling now.", v27, 0xCu);
        sub_10003DD84(v28, &qword_1001FF0C0);
      }

      sub_100094F00(a9, a10);
    }

    else
    {
    }
  }
}

void sub_100094F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = __chkstk_darwin(v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v44 = v12;
    v45 = v7;
    v46 = v11;
    __chkstk_darwin(v11);
    *(&v43 - 4) = v2;
    *(&v43 - 3) = a1;
    *(&v43 - 2) = a2;

    sub_10003C49C(&unk_1001FF0B0);
    OS_dispatch_queue.sync<A>(execute:)();
    v15 = aBlock;
    if (aBlock)
    {
      v16 = aBlock[3];
      if (v16)
      {
        v17 = v16;

        v18 = sub_100089BF8(v2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint], &off_1001BDC00);
        if (v18)
        {
          if (qword_1001FC738 != -1)
          {
            v18 = swift_once();
          }

          if (!qword_1001FEED8 || (__chkstk_darwin(v18), *(&v43 - 4) = v2, *(&v43 - 3) = v19, *(&v43 - 2) = v20, sub_10003C49C(&unk_1001FF0A0), OS_dispatch_queue.sync<A>(execute:)(), !aBlock))
          {
            sub_10003E110(0, &qword_1001FD6F0);
            v39 = static OS_os_log.default.getter();
            static os_log_type_t.default.getter();
            os_log(_:dso:log:type:_:)();

            static DispatchWorkItemFlags.barrier.getter();
            v51 = sub_10009A248;
            v52 = v15;
            aBlock = _NSConcreteStackBlock;
            v48 = 1107296256;
            v49 = sub_100031FA8;
            v50 = &unk_1001C2D90;
            v40 = _Block_copy(&aBlock);

            static DispatchQoS.unspecified.getter();
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v40);

            (*(v45 + 8))(v9, v6);
            (*(v44 + 8))(v14, v46);
LABEL_23:

            return;
          }
        }

        v21 = *&v2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager];
        v22 = [v17 serialNumber];
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v25 = v24;

        v26 = swift_allocObject();
        v26[2] = v3;
        v26[3] = v17;
        v26[4] = v15;
        v27 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
        swift_beginAccess();
        v28 = *(v21 + v27);
        v29 = *(v28 + 16);
        v30 = v17;

        v31 = v3;
        if (v29)
        {

          v32 = sub_100064AFC(v23, v25);
          if (v33)
          {
            v34 = *(*(v28 + 56) + 8 * v32);
            swift_unknownObjectRetain();

            if ([v34 respondsToSelector:"requestSuiteFinishWithCompletionHandler:"])
            {
              v51 = sub_10009A1E8;
              v52 = v26;
              aBlock = _NSConcreteStackBlock;
              v48 = 1107296256;
              v49 = sub_100098A7C;
              v50 = &unk_1001C2D68;
              v35 = _Block_copy(&aBlock);
              [v34 requestSuiteFinishWithCompletionHandler:v35];
              swift_unknownObjectRelease();

              _Block_release(v35);
            }

            else
            {
              swift_unknownObjectRelease();
            }

            goto LABEL_23;
          }
        }

        sub_10009A1F4();
        v41 = swift_allocError();
        *v42 = v23;
        v42[1] = v25;

        sub_10009565C(v41, v31, v30, v15);

        return;
      }
    }

    sub_10003C49C(&unk_1001FEAD0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10017EC00;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = sub_10003DFBC();
    *(v37 + 32) = a1;
    *(v37 + 40) = a2;
    sub_10003E110(0, &qword_1001FD6F0);
    v38 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  static os_log_type_t.error.getter();
  sub_10003E110(0, &qword_1001FD6F0);
  v46 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
  v36 = v46;
}

uint64_t sub_10009565C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v23 = a3;
  v26 = type metadata accessor for DispatchQoS();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v24 - 8);
  __chkstk_darwin(v24);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10003C49C(&unk_1001FEAD0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    swift_errorRetain();
    v13 = Error.localizedDescription.getter();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_10003DFBC();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_10003E110(0, &qword_1001FD6F0);
    v16 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
  }

  v17 = a2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    v20 = [v23 suiteID];
    (*(v18 + 24))(a2, v20, 0, a1, ObjectType, v18);

    swift_unknownObjectRelease();
  }

  static DispatchWorkItemFlags.barrier.getter();
  aBlock[4] = sub_10009A254;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031FA8;
  aBlock[3] = &unk_1001C2DB8;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v6 + 8))(v8, v26);
  (*(v9 + 8))(v11, v24);
}

void sub_1000959E0(unint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, id))
{
  if (a3)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0B0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v22)
    {
      v7 = *(v22 + 24);
      if (v7 && (a1 >= 3 ? (v8 = 0) : (v8 = qword_100181800[a1]), v8 == *(v4 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint)))
      {
        v9 = v7;
        v10 = [v9 suitesAvailable];
        sub_10003E110(0, &unk_1001FF070);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v11 >> 62)
        {
          v12 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12 == 1)
        {
          v13 = [v9 suitesAvailable];
          v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
          if (v14 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_16:

              if ((v15 & 0xC000000000000001) == 0)
              {
                if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  return;
                }

                v16 = *(v15 + 32);
                goto LABEL_19;
              }

LABEL_30:
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
              v17 = v16;

              v18 = [v17 suiteID];

              if (a4)
              {
                v19 = v18;
                a4(1, v18);
              }

              else
              {
              }

              return;
            }
          }

          else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    sub_10003E110(0, &qword_1001FD6F0);
    v20 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (a4)
    {
      a4(0, 0);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v21 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_100095D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (*(v10 + 16))
  {

    v11 = sub_100064AFC(a2, a3);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  *a4 = v13;
  return result;
}

uint64_t sub_100095E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_100064AFC(a2, a3);
  if ((v12 & 1) == 0)
  {

    goto LABEL_16;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = *(v13 + 24);
  v15 = v14;

  if (!v14)
  {
LABEL_16:
    v21 = 0;
    goto LABEL_17;
  }

  v16 = [v15 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = a4;
  if (v17 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      sub_10003E110(0, &qword_1001FCE88);
      v23 = [v21 suiteID];
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {

        goto LABEL_23;
      }

      ++v19;
      if (v22 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v21 = 0;
LABEL_23:
  a4 = v25;
LABEL_17:
  *a4 = v21;
  return result;
}

uint64_t sub_100096060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    if (!v9)
    {
      return 0;
    }

    v4 = [v9 estimatedCompletionTimeLocalizedString];
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {

      return 0;
    }
  }

  return a2;
}

void sub_10009617C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v6 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    if (*(*(v5 + v6) + 16))
    {

      sub_100064AFC(a1, a2);
      if (v7)
      {
        swift_unknownObjectRetain();

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          [v8 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v9 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

id sub_1000962D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SuiteManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

_BYTE *sub_1000963B4(void *a1)
{
  v2 = v1;
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (v5)
  {
    type metadata accessor for SelfServiceViewCell();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for SelfServiceViewCell();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
LABEL_5:
  v6[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleTruncated] = 1;
  v7 = OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel;
  v8 = [*&v6[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleLabel] setNumberOfLines:2];
  if (qword_1001FC738 != -1)
  {
    v8 = swift_once();
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(v8);
    sub_10003C49C(&qword_1001FDF90);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v44)
    {
      v42 = v7;
      v43 = v2;
      v9 = [v44 suiteID];
      v10 = qword_1001FC820;
      v11 = v6;
      if (v10 != -1)
      {
        swift_once();
      }

      v12 = qword_10020A588;
      v13 = [v44 primaryAssetLocator];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      sub_10010DCF4(v14, v16, v12, v11);

      __chkstk_darwin(v17);
      v18 = v9;
      OS_dispatch_queue.sync<A>(execute:)();
      v19 = [v44 suiteNameLocalizedString];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = &v11[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleText];
      *v23 = v20;
      v23[1] = v22;

      if (v22)
      {
        v25 = *&v11[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_titleLabel];

        v26 = v25;
        v27 = String._bridgeToObjectiveC()();

        [v26 setText:v27];
      }

      __chkstk_darwin(v24);
      v28 = v18;
      OS_dispatch_queue.sync<A>(execute:)();
      v29 = [v44 suiteDescriptionLocalizedString];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = &v11[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_subtitleText];
      *v33 = v30;
      v33[1] = v32;

      if (v32)
      {
        v34 = *&v6[v42];

        v35 = v34;
        v36 = String._bridgeToObjectiveC()();

        [v35 setText:v36];
      }

      v11[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreEnabled] = 1;
      v37 = *&v11[OBJC_IVAR____TtC11Diagnostics19SelfServiceViewCell_learnMoreLabel];
      sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x4F4D5F4E5241454CLL, 0xEA00000000004552);
      v38 = String._bridgeToObjectiveC()();

      [v37 setText:v38];

      v39 = v11;
      v40 = sub_100096EBC(v43, v28);
      [v39 setAccessoryView:v40];
    }
  }

  return v6;
}

void sub_100096958(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = *(v12 + 24);
  v14 = v13;

  if (!v13)
  {
LABEL_11:
    *a4 = v13;
    return;
  }

  v15 = IndexPath.section.getter();
  v16 = [v14 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v15 + 32);
LABEL_8:
    v13 = v18;

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_100096AD8(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = v12;
    v29 = result;
    sub_10003E110(0, &qword_1001FD040);
    v15 = a1;
    v27 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = v15;
    aBlock[4] = sub_10009A130;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031FA8;
    aBlock[3] = &unk_1001C2D18;
    v17 = _Block_copy(aBlock);
    v18 = v15;
    v19 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v20 = v27;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v7 + 8))(v9, v6);
    return (*(v28 + 8))(v14, v29);
  }

  else if (a2)
  {
    swift_errorRetain();
    static os_log_type_t.error.getter();
    sub_10003C49C(&unk_1001FEAD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10017EC00;
    swift_getErrorValue();
    v22 = Error.localizedDescription.getter();
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10003DFBC();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_10003E110(0, &qword_1001FD6F0);
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  return result;
}

id sub_100096EBC(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 configurationWithPointSize:30.0];
  v5 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v6 = [v3 configurationWithHierarchicalColor:v5];

  v7 = [v6 configurationByApplyingConfiguration:v4];
  v8 = v7;
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (v10)
  {
    v11 = [v10 imageFlippedForRightToLeftLayoutDirection];
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_opt_self() buttonWithType:0];
  [v12 setFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setClipsToBounds:1];
  [v12 setImage:v11 forState:0];
  sub_10003E110(0, &qword_1002023B0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a2;
  v15 = a2;
  v16 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v12 addAction:v16 forControlEvents:{64, 0, 0, 0, sub_10009A0E8, v14}];

  return v12;
}

void sub_100097178(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_1001FC738 != -1)
    {
      swift_once();
    }

    sub_100094488(qword_1001FEED0, qword_1001FEED8, a3, 0);
  }
}

uint64_t sub_100097328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v11 = sub_100064AFC(a2, a3);
  if ((v12 & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = *(v13 + 24);
  v15 = v14;

  if (!v14)
  {
LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  v16 = [v15 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_9:
  *a4 = v18;
  return result;
}

void sub_10009756C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_10;
  }

  v10 = sub_100064AFC(a2, a3);
  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v13 = *(v12 + 24);
  v14 = v13;

  if (!v13)
  {
LABEL_10:
    v20 = 0;
    goto LABEL_11;
  }

  v15 = IndexPath.section.getter();
  v16 = [v14 suitesAvailable];

  sub_10003E110(0, &unk_1001FF070);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v17 + 8 * v15 + 32);
LABEL_8:
    v19 = v18;

    v20 = [v19 suiteID];

LABEL_11:
    *a4 = v20;
    return;
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for SuiteManagerEndpoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SuiteManagerEndpoint(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100097958()
{
  result = qword_1001FF058;
  if (!qword_1001FF058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF058);
  }

  return result;
}

uint64_t sub_1000979AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = OBJC_IVAR____TtC11Diagnostics12SuiteManager_registry;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_5;
  }

  v11 = sub_100064AFC(a2, a3);
  if ((v12 & 1) == 0)
  {

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  v14 = *(v13 + 24);
  v15 = v14;

LABEL_6:
  *a4 = v14;
  return result;
}

uint64_t sub_100097A74(id a1)
{
  if (qword_1001FC820 != -1)
  {
    swift_once();
  }

  v2 = qword_10020A588;
  v3 = [a1 primaryAssetLocator];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  sub_100107B14(v4, v6, v2);

  v7 = [a1 secondaryAssetLocator];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100107B48(v8, v10, v2);
}

uint64_t sub_100097B70(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = &a2[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v12[5] = a4;
    v13 = *(v10 + 16);

    v14 = a2;

    v13(v14, a1, sub_10009A680, v12, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100097C90(id a1, unint64_t a2, uint64_t a3, void (*a4)(id), uint64_t a5)
{
  v24 = a5;
  if (a2 >> 62)
  {
LABEL_24:
    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_25:
    sub_10003E110(0, &qword_1001FD6F0);
    v25 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();
    goto LABEL_26;
  }

  v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_25;
  }

LABEL_3:
  v10 = 0;
  while ((a2 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v25 = v11;
    if ([v11 endpoint] == a1)
    {
      goto LABEL_13;
    }

    ++v10;
    if (v12 == v9)
    {
      goto LABEL_25;
    }
  }

  if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_24;
  }

  v11 = *(a2 + 8 * v10 + 32);
  v12 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  v13 = [v25 endpoint];
  if (v13 == 2)
  {
    *(a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = 2;
    v14 = a4;
    if (qword_1001FC6D8 != -1)
    {
      swift_once();
    }

    type metadata accessor for DKViewControllerDelegateResponder();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_1000462E8(16, 0);
      v19 = v17 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__presentationTransitionStyle;
      *v19 = v18;
      *(v19 + 8) = v20 & 1;
      v21 = sub_1000462E8(16, 0);
      v22 = v17 + OBJC_IVAR____TtC11Diagnostics33DKViewControllerDelegateResponder__dismissalTransitionStyle;
      *v22 = v21;
      *(v22 + 8) = v23 & 1;
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = a4;
    if (v13 == 1)
    {
      v15 = 3;
    }

    else
    {
      v15 = 0;
    }

    *(a3 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_endpoint) = v15;
  }

  v14(a1);
LABEL_26:
}

void sub_100097F0C(uint64_t a1, uint64_t a2)
{
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000002ELL, 0x800000010018DBB0);
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000030, 0x800000010018DBE0);
  v4 = String._bridgeToObjectiveC()();

  v5 = String._bridgeToObjectiveC()();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0x5952544552, 0xE500000000000000);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = String._bridgeToObjectiveC()();

  v20 = sub_100099CEC;
  v21 = v7;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100072168;
  v19 = &unk_1001C2A48;
  v9 = _Block_copy(&v16);

  v10 = objc_opt_self();
  v11 = [v10 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v6 addAction:v11];
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x800000010018DC20);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = String._bridgeToObjectiveC()();

  v20 = sub_100099D1C;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100072168;
  v19 = &unk_1001C2A98;
  v14 = _Block_copy(&v16);

  v15 = [v10 actionWithTitle:v13 style:2 handler:v14];
  _Block_release(v14);

  [v6 addAction:v15];
  [v6 showOnTopWithAnimated:1 completion:0];
}

uint64_t sub_100098288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_opt_self() "currentPlatform")];
  swift_unknownObjectRelease();
  v6 = swift_allocObject();
  if (v5)
  {
    v7 = sub_1000983A4;
  }

  else
  {
    v7 = sub_10009856C;
  }

  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_100088E48(1, 0);
  sub_10003C52C(v7);
}

void sub_1000983A4()
{
  if (qword_1001FC730 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A3C8;
  if (qword_1001FC738 != -1)
  {
    swift_once();
  }

  v1 = qword_1001FEED8;
  if (qword_1001FEED8)
  {
    v2 = qword_1001FEED0;
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_deviceManager);
    v4 = OBJC_IVAR____TtC11Diagnostics13DeviceManager_devicesBySerialNumber;
    swift_beginAccess();
    if (*(*(v3 + v4) + 16))
    {

      sub_100064AFC(v2, v1);
      if (v5)
      {
        swift_unknownObjectRetain();

        objc_opt_self();
        v6 = swift_dynamicCastObjCClass();
        if (v6)
        {
          [v6 archiveConnection];
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_10009856C()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  v0 = qword_10020A368;
  v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_disableSystemGesturesQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100099D24;
  *(v3 + 24) = v2;
  v12[4] = sub_10003DAA4;
  v12[5] = v3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100060C48;
  v12[3] = &unk_1001C2B38;
  v4 = _Block_copy(v12);
  v5 = v0;

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v7 = OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled;
    v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingAssertionEnabled] = (v5[OBJC_IVAR____TtC11Diagnostics10Assertions_nearbySharingPreferencesState] & 1) == 0;
    v8 = sub_100050814();
    [v8 setNearbySharingEnabled:(v5[v7] & 1) == 0];

    v9 = sub_100050814();
    [v9 setDiscoverableMode:*&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_airDropUserSetting]];

    v10 = OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion;
    v11 = *&v5[OBJC_IVAR____TtC11Diagnostics10Assertions_captureButtonAssertion];
    if (v11)
    {
      [v11 invalidate];
    }

    *&v5[v10] = 0;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000987EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *v5 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(v9, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000988A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  v10 = *v5 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(v9, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10009898C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v8 = *(a1 + 32);
  if (a3)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v6)
    {
LABEL_3:
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = 0;
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:

  v14 = a2;
  v15 = a5;
  v8(v14, v9, v11, v12, v6, a5);
}

void sub_100098A7C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void sub_100098AE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_10003C49C(&unk_1001FDF80);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10003C49C(&qword_1001FF088);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_100098BFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_10003E110(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10003C49C(&unk_1001FD020);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_100098CF8(uint64_t a1)
{
  if (qword_1001FC738 != -1)
  {
    a1 = swift_once();
  }

  if (!qword_1001FEED8)
  {
    return 0;
  }

  __chkstk_darwin(a1);
  OS_dispatch_queue.sync<A>(execute:)();
  v1 = v5;
  sub_10003C49C(&unk_1001FEAD0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10017EC00;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v5;
  sub_10003E110(0, &qword_1001FD6F0);
  v3 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return v1;
}

void sub_100098E80(uint64_t a1)
{
  v2 = v1;
  if (qword_1001FC738 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  if (qword_1001FEED8)
  {
    __chkstk_darwin(a1);
    sub_10003C49C(&unk_1001FF0A0);
    OS_dispatch_queue.sync<A>(execute:)();
    if (v7)
    {
      v3 = v2 + OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 48))(v2, v7, ObjectType, v4);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_100098FDC(id a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v89 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for DispatchQoS();
  v10 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v85 - 8);
  v13 = __chkstk_darwin(v85);
  v84 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001FC738 != -1)
  {
    goto LABEL_36;
  }

  while (1)
  {
    if (!qword_1001FEED8)
    {
      goto LABEL_21;
    }

    v82 = v12;
    __chkstk_darwin(v13);
    v72 = v15;
    *(&v65 - 4) = v15;
    *(&v65 - 3) = v16;
    *(&v65 - 2) = v17;
    sub_10003C49C(&qword_1001FF068);
    OS_dispatch_queue.sync<A>(execute:)();
    v18 = aBlock;
    if (!aBlock)
    {
      goto LABEL_21;
    }

    v83 = a2;
    v69 = a3;
    v70 = a4;
    v68 = v10;
    v19 = [a1 state];
    v20 = [v19 serialNumber];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v71 = v18;
    v24 = [v18 serialNumber];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v21 == v25 && v23 == v27)
    {

      a2 = v83;
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      a2 = v83;
      if ((v28 & 1) == 0)
      {

        a3 = v69;
LABEL_21:
        sub_10003E110(0, &qword_1001FD6F0);
        v33 = static OS_os_log.default.getter();
        static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)();

        (a3)(0);
        return;
      }
    }

    a3 = v71;
    a4 = a2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v67 = a4;
    if (!a4)
    {
      break;
    }

    v29 = 0;
    v12 = a2 & 0xC000000000000001;
    a1 = (a2 & 0xFFFFFFFFFFFFFF8);
    v10 = &selRef_btManagerAvailableSemaphore;
    while (1)
    {
      if (v12)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v29 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v30 = *(a2 + 8 * v29 + 32);
      }

      v31 = v30;
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if ([v30 endpoint] == 1)
      {
        v34 = [v31 suites];

        sub_10003E110(0, &unk_1001FF070);
        v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v66 = v8;
        if (v12 >> 62)
        {
          v35 = _CocoaArrayWrapper.endIndex.getter();
          v36 = v82;
          if (v35)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v35 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v36 = v82;
          if (v35)
          {
LABEL_24:
            a3 = 0;
            v81 = v12 & 0xFFFFFFFFFFFFFF8;
            v82 = v12 & 0xC000000000000001;
            v78 = enum case for DispatchQoS.QoSClass.default(_:);
            v77 = (v36 + 104);
            v76 = (v36 + 8);
            v75 = &v93;
            v74 = (v66 + 8);
            v73 = (v68 + 1);
            v79 = v35;
            v80 = v12;
            do
            {
              if (v82)
              {
                v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (a3 >= *(v81 + 16))
                {
                  goto LABEL_35;
                }

                v37 = *(v12 + 8 * a3 + 32);
              }

              a1 = v37;
              v10 = (a3 + 1);
              if (__OFADD__(a3, 1))
              {
                goto LABEL_34;
              }

              sub_10003E110(0, &qword_1001FD040);
              v39 = v84;
              v38 = v85;
              (*v77)(v84, v78, v85);
              v40 = static OS_dispatch_queue.global(qos:)();
              (*v76)(v39, v38);
              v41 = swift_allocObject();
              *(v41 + 16) = a1;
              v95 = sub_100099C30;
              v96 = v41;
              aBlock = _NSConcreteStackBlock;
              v92 = 1107296256;
              v93 = sub_100031FA8;
              v94 = &unk_1001C2958;
              v42 = _Block_copy(&aBlock);
              a1 = a1;
              a4 = v86;
              static DispatchQoS.unspecified.getter();
              v90 = _swiftEmptyArrayStorage;
              sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
              sub_10003C49C(&unk_1001FD050);
              sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
              v8 = v87;
              v43 = v89;
              v12 = v80;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              v44 = v79;
              v45 = v42;
              a2 = v83;
              _Block_release(v45);

              (*v74)(v8, v43);
              (*v73)(a4, v88);

              ++a3;
            }

            while (v10 != v44);
          }
        }

        v8 = v66;
        a3 = v71;
        goto LABEL_40;
      }

      ++v29;
      if (v32 == a4)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    v13 = swift_once();
  }

LABEL_40:
  v46 = swift_allocObject();
  v47 = v72;
  v48 = v69;
  v46[2] = v72;
  v46[3] = v48;
  v46[4] = v70;

  v49 = v47;
  if ([a3 phase] == 1)
  {
    if (!v67)
    {
      goto LABEL_46;
    }

LABEL_45:
    static os_log_type_t.debug.getter();
    sub_10003E110(0, &qword_1001FD6F0);
    v51 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    sub_10003E110(0, &qword_1001FD040);
    v85 = static OS_dispatch_queue.main.getter();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_100099C90;
    *(v52 + 24) = v46;
    v95 = sub_100099CE4;
    v96 = v52;
    aBlock = _NSConcreteStackBlock;
    v92 = 1107296256;
    v93 = sub_100031FA8;
    v94 = &unk_1001C29F8;
    v53 = v8;
    v54 = _Block_copy(&aBlock);

    v55 = v86;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10003E230(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_10003E278(&qword_1001FDE70, &unk_1001FD050);
    v56 = v87;
    v57 = v89;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v58 = v85;
    OS_dispatch_queue.async(group:qos:flags:execute:)();

    _Block_release(v54);

    v53[1](v56, v57);
    (v68[1])(v55, v88);
    return;
  }

  v50 = [a3 phase];
  if (v67 && v50 == 5)
  {
    goto LABEL_45;
  }

LABEL_46:
  v59 = &v49[OBJC_IVAR____TtC11Diagnostics12SuiteManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v60 = *(v59 + 1);
    ObjectType = swift_getObjectType();
    v62 = swift_allocObject();
    v62[2] = a2;
    v62[3] = v49;
    v62[4] = v69;
    v62[5] = v70;
    v63 = *(v60 + 16);

    v64 = v49;

    v63(v64, a2, sub_100099CA0, v62, ObjectType, v60);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100099BF8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100099C50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100099CAC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100099D3C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100099D84()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100099DE8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100099E20()
{

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_100099EA4()
{
  result = qword_1001FF080;
  if (!qword_1001FF080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF080);
  }

  return result;
}

uint64_t sub_100099EF8()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100099F88()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100099FC8()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) identifier];
  v1();
}

uint64_t sub_10009A0AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A0F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10009A130()
{
  v1 = *(v0 + 24);
  v2 = v1;
  sub_1000BB560(v1);
}

uint64_t sub_10009A1A0()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_10009A1F4()
{
  result = qword_1002018F0;
  if (!qword_1002018F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002018F0);
  }

  return result;
}

uint64_t sub_10009A25C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10009A2C4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10009A358()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10009A3B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 progress];
  *a2 = result;
  return result;
}

uint64_t sub_10009A430(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10009A488()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009A4D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003C49C(&qword_100201810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009A570()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_10009A5D8()
{
  result = qword_1001FF0E8;
  if (!qword_1001FF0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF0E8);
  }

  return result;
}

id sub_10009A744(char a1)
{
  v1[OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType] = a1;
  v3 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v4 = [objc_opt_self() configurationWithHierarchicalColor:v3];

  if (a1)
  {
    if (a1 == 1)
    {
      DeviceClass = GestaltGetDeviceClass();
      sub_100100580(DeviceClass);
      v6 = 0xD00000000000001ALL;
      v7 = "E_CHECK_CANCELLED_SUBTITLE";
      v8 = "ASSESSMENT_THANK_YOU_TITLE";
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      _StringGuts.grow(_:)(24);
      v10 = GestaltGetDeviceClass();
      v11 = sub_100100580(v10);
      v13 = v12;

      v23 = v11;
      v24 = v13;
      v14._countAndFlagsBits = 0xD000000000000016;
      v14._object = 0x8000000100189E10;
      String.append(_:)(v14);
      v6 = 0xD000000000000027;
      v7 = "pleteViewController";
      v8 = "E_CHECK_CANCELLED_TITLE";
      v9 = 0xD00000000000002ALL;
    }
  }

  else
  {
    v6 = 0xD000000000000019;
    v7 = "ASSESSMENT_THANK_YOU_SUBTITLE";
    v8 = "ASSESSMENT_COMPLETE_TITLE";
    v9 = 0xD00000000000001CLL;
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v6, (v7 | 0x8000000000000000));

  v15 = String._bridgeToObjectiveC()();

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v9, (v8 | 0x8000000000000000));

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();

  v18 = [objc_opt_self() _systemImageNamed:v17];

  if (v18)
  {
    v19 = [v18 imageWithConfiguration:v4];
  }

  else
  {
    v19 = 0;
  }

  v22.receiver = v1;
  v22.super_class = type metadata accessor for AssessmentCompleteViewController();
  v20 = objc_msgSendSuper2(&v22, "initWithTitle:detailText:icon:contentLayout:", v15, v16, v19, 3);

  return v20;
}

void sub_10009AA34()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for AssessmentCompleteViewController();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 buttonTray];
  v3 = [objc_opt_self() boldButton];
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType))
  {
    v4 = 0x45534F4C43;
  }

  else
  {
    v4 = 1162760004;
  }

  if (*(v0 + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType))
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = v3;
  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, v4, v5);

  v7 = String._bridgeToObjectiveC()();

  [v6 setTitle:v7 forState:0];

  sub_10006D004();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v9 = v0;
  v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v6 addAction:v10 forControlEvents:{64, 0, 0, 0, sub_10009ADE8, v8}];

  [v2 addButton:v6];
}

id sub_10009ACF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentCompleteViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009AD5C()
{
  result = qword_1001FF120;
  if (!qword_1001FF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF120);
  }

  return result;
}

uint64_t sub_10009ADB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10009ADE8()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC11Diagnostics32AssessmentCompleteViewController_layoutType) == 2)
  {
    sub_1000F74E8(0xEu);
  }

  else
  {
    sub_1000F74E8(0xFu);
  }
}

uint64_t sub_10009AE08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009AE50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009AEC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 name];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v70 = v5;
  v71 = v7;
  sub_100079A64();
  v8 = Text.init<A>(_:)();
  v61 = v9;
  v62 = v8;
  v60 = v10;
  v63 = v11;
  v12 = [v2 value];
  if (v12)
  {
    v13 = v12;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v71 = v15;
    v55 = v2;
    v16 = Text.init<A>(_:)();
    v18 = v17;
    v20 = v19;
    v21 = [objc_opt_self() systemGrayColor];
    v70 = Color.init(uiColor:)();
    v22 = Text.foregroundStyle<A>(_:)();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = v16;
    v2 = v55;
    sub_10007C874(v29, v18, v20 & 1);

    v30 = v22;
    v59 = v24;
    v57 = v26 & 1;
    sub_10007C884(v22, v24, v26 & 1);
    v58 = v28;
  }

  else
  {
    v30 = 0;
    v58 = 0;
    v59 = 0;
    v57 = 0;
  }

  v31 = [v2 status];
  if (v31)
  {
    v32 = v31;
    sub_1000B7164(v31, &v70);

    v34 = v70;
    v33 = v71;
    v35 = v72;
    v36 = v73;
    v37 = v74;
    v38 = BYTE2(v74);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LOBYTE(v70) = v38;
    v39 = v81;
    v40 = v82;
    v41 = v83;
    v42 = v84;
    v43 = v85;
    v44 = v86;
    v45 = v37 | (v38 << 16);
  }

  else
  {
    v34 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 16711680;
  }

  v49 = v45;
  v50 = v39;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v56 = v44;
  *&v64 = v34;
  *(&v64 + 1) = v33;
  *&v65 = v35;
  *(&v65 + 1) = v36;
  *&v66 = v45;
  *(&v66 + 1) = v39;
  *&v67 = v40;
  *(&v67 + 1) = v41;
  *&v68 = v42;
  *(&v68 + 1) = v43;
  v69 = v44;
  sub_10007C884(v62, v61, v60 & 1);

  sub_10009DE94(v30, v59, v57, v58);
  sub_100044704(&v64, &v70, &qword_1001FF310);
  sub_10009DED8(v30, v59, v57, v58);
  *a2 = v62;
  *(a2 + 8) = v61;
  *(a2 + 16) = v60 & 1;
  *(a2 + 24) = v63;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v30;
  *(a2 + 56) = v59;
  *(a2 + 64) = v57;
  *(a2 + 72) = v58;
  v46 = v67;
  *(a2 + 112) = v66;
  *(a2 + 128) = v46;
  *(a2 + 144) = v68;
  *(a2 + 160) = v69;
  v47 = v65;
  *(a2 + 80) = v64;
  *(a2 + 96) = v47;
  v70 = v34;
  v71 = v33;
  v72 = v35;
  v73 = v36;
  v74 = v49;
  v75 = v50;
  v76 = v51;
  v77 = v52;
  v78 = v53;
  v79 = v54;
  v80 = v56;
  sub_10003DD84(&v70, &qword_1001FF310);
  sub_10009DED8(v30, v59, v57, v58);
  sub_10007C874(v62, v61, v60 & 1);
}

double sub_10009B2A8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = static VerticalAlignment.center.getter();
  v25 = 1;
  sub_10009AEC4(v3, &v13);
  v34 = v21;
  v35 = v22;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v37[8] = v21;
  v37[9] = v22;
  v37[4] = v17;
  v37[5] = v18;
  v37[6] = v19;
  v37[7] = v20;
  v37[0] = v13;
  v37[1] = v14;
  v36 = v23;
  v38 = v23;
  v37[2] = v15;
  v37[3] = v16;
  sub_100044704(&v26, v12, &qword_1001FF308);
  sub_10003DD84(v37, &qword_1001FF308);
  *(&v24[7] + 7) = v33;
  *(&v24[8] + 7) = v34;
  *(&v24[9] + 7) = v35;
  *(&v24[10] + 7) = v36;
  *(&v24[3] + 7) = v29;
  *(&v24[4] + 7) = v30;
  *(&v24[5] + 7) = v31;
  *(&v24[6] + 7) = v32;
  *(v24 + 7) = v26;
  *(&v24[1] + 7) = v27;
  *(&v24[2] + 7) = v28;
  v5 = v24[6];
  *(a1 + 129) = v24[7];
  v6 = v24[9];
  *(a1 + 145) = v24[8];
  *(a1 + 161) = v6;
  *(a1 + 176) = *(&v24[9] + 15);
  v7 = v24[2];
  *(a1 + 65) = v24[3];
  v8 = v24[5];
  *(a1 + 81) = v24[4];
  *(a1 + 97) = v8;
  *(a1 + 113) = v5;
  result = *v24;
  v10 = v24[1];
  *(a1 + 17) = v24[0];
  *(a1 + 33) = v10;
  v11 = v25;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v11;
  *(a1 + 49) = v7;
  return result;
}

uint64_t sub_10009B48C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v100 = a2;
  v99 = type metadata accessor for ScrollBounceBehavior();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ScrollIndicatorVisibility();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for InsetGroupedListStyle();
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ListSectionSpacing();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10003C49C(&qword_1001FF130);
  __chkstk_darwin(v10);
  v12 = &v75 - v11;
  v78 = sub_10003C49C(&qword_1001FF138);
  v79 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v75 - v13;
  v85 = sub_10003C49C(&qword_1001FF140);
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v101 = &v75 - v14;
  v88 = sub_10003C49C(&qword_1001FF148);
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v75 - v15;
  v94 = sub_10003C49C(&qword_1001FF150);
  v93 = *(v94 - 8);
  v16 = __chkstk_darwin(v94);
  v92 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v75 - v18;
  v19 = [*(a1 + 32) name];
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v20;

  v87 = static Font.title.getter();
  v102 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  LOBYTE(v109) = 0;
  v103 = a1;
  sub_10003C49C(&qword_1001FF158);
  sub_10009D404(&qword_1001FF160, &qword_1001FF158, &unk_1001819E8, sub_10009D1C8);
  List<>.init(content:)();
  LOBYTE(v19) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v12[*(sub_10003C49C(&qword_1001FF220) + 36)];
  *v37 = v19;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  static ListSectionSpacing.custom(_:)();
  v38 = *(sub_10003C49C(&qword_1001FF228) + 36);
  (*(v7 + 16))(&v12[v38], v9, v6);
  v39 = *(v7 + 56);
  v39(&v12[v38], 0, 1, v6);
  KeyPath = swift_getKeyPath();
  v41 = &v12[*(v10 + 36)];
  v42 = *(sub_10003C49C(&qword_1001FF230) + 28);
  (*(v7 + 32))(v41 + v42, v9, v6);
  v39(v41 + v42, 0, 1, v6);
  *v41 = KeyPath;
  v43 = v80;
  v44 = v77;
  InsetGroupedListStyle.init()();
  v45 = sub_10009D884();
  v46 = v76;
  v47 = v81;
  View.listStyle<A>(_:)();
  (*(v82 + 8))(v44, v47);
  sub_10009DAAC(v12);
  *&v104 = static Color.clear.getter();
  v109 = v10;
  v110 = v47;
  v111 = v45;
  v112 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v78;
  View.scrollContentBackground<A>(_:)();

  (*(v79 + 8))(v46, v49);
  static ScrollIndicatorVisibility.never.getter();
  sub_10003C49C(&qword_1001FF278);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC10;
  LOBYTE(v42) = static Axis.Set.vertical.getter();
  *(inited + 32) = v42;
  v51 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v51;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v42)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v51)
  {
    Axis.Set.init(rawValue:)();
  }

  v52 = v97;
  v53 = v85;
  v109 = v49;
  v110 = &type metadata for Color;
  v111 = OpaqueTypeConformance2;
  v112 = &protocol witness table for Color;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = v84;
  v56 = v101;
  View.scrollIndicators(_:axes:)();
  (*(v95 + 8))(v43, v96);
  (*(v83 + 8))(v56, v53);
  static ScrollBounceBehavior.basedOnSize.getter();
  v57 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v57)
  {
    Axis.Set.init(rawValue:)();
  }

  v109 = v53;
  v110 = v54;
  swift_getOpaqueTypeConformance2();
  v58 = v91;
  v59 = v88;
  View.scrollBounceBehavior(_:axes:)();
  (*(v98 + 8))(v52, v99);
  (*(v86 + 8))(v55, v59);
  v60 = v93;
  v61 = *(v93 + 16);
  v62 = v92;
  v63 = v94;
  v61(v92, v58, v94);
  v64 = v90;
  *&v104 = v90;
  v65 = v89;
  *(&v104 + 1) = v89;
  v66 = v87;
  *&v105 = v87;
  BYTE8(v105) = v102;
  *(&v105 + 9) = *v118;
  HIDWORD(v105) = *&v118[3];
  *&v106 = v22;
  *(&v106 + 1) = v24;
  *&v107 = v26;
  *(&v107 + 1) = v28;
  v108 = 0;
  v67 = v104;
  v68 = v105;
  v69 = v106;
  v70 = v107;
  v71 = v100;
  v100[64] = 0;
  *(v71 + 2) = v69;
  *(v71 + 3) = v70;
  *v71 = v67;
  *(v71 + 1) = v68;
  v72 = sub_10003C49C(&qword_1001FF280);
  v61(&v71[*(v72 + 48)], v62, v63);
  sub_100044704(&v104, &v109, &qword_1001FF288);
  v73 = *(v60 + 8);
  v73(v58, v63);
  v73(v62, v63);
  v109 = v64;
  v110 = v65;
  v111 = v66;
  LOBYTE(v112) = v102;
  *(&v112 + 1) = *v118;
  HIDWORD(v112) = *&v118[3];
  v113 = v22;
  v114 = v24;
  v115 = v26;
  v116 = v28;
  v117 = 0;
  return sub_10003DD84(&v109, &qword_1001FF288);
}

uint64_t sub_10009C114(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 sections];
  sub_10003E110(0, &qword_1001FF298);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {

LABEL_3:
    swift_getKeyPath();
    v5 = swift_allocObject();
    v6 = *(a1 + 16);
    *(v5 + 16) = *a1;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(a1 + 32);
    v7 = v2;
    sub_10003C49C(&qword_1001FF2A0);
    sub_10003C49C(&qword_1001FF170);
    sub_10009DB54();
    sub_10009D1C8();
    return ForEach<>.init(_:id:content:)();
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();

  if ((v9 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void sub_10009C294(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v51 = type metadata accessor for Prominence();
  v5 = *(v51 - 8);
  __chkstk_darwin(v51);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10003C49C(&qword_1001FF178);
  v49 = *(v55 - 8);
  __chkstk_darwin(v55);
  v9 = v47 - v8;
  v56 = sub_10003C49C(&qword_1001FF2B8);
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v50 = v47 - v10;
  v53 = sub_10003C49C(&qword_1001FF2C0);
  __chkstk_darwin(v53);
  v54 = v47 - v11;
  v12 = sub_10003C49C(&qword_1001FF1A0);
  v48 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v47 - v13;
  v15 = *a1;
  v16 = *(a2 + 32);
  v17 = [v16 sections];
  sub_10003E110(0, &qword_1001FF298);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v18 + 8 * v15 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_5:
  v20 = v19;

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a2 + 16);
  *(v21 + 24) = *a2;
  *(v21 + 40) = v22;
  *(v21 + 56) = *(a2 + 32);
  sub_10009DC80(a2, &v58);
  v23 = v20;
  v24 = [v23 title];
  if (v24)
  {
    v25 = v24;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v58 = v26;
    v59 = v28;
    sub_100079A64();
    v29 = Text.init<A>(_:)();
    v48 = v23;
    v30 = *(a2 + 16);
    v58 = v29;
    v59 = v31;
    v60 = v32 & 1;
    v61 = v33;
    v62 = -v30;
    v63 = 0;
    __chkstk_darwin(v29);
    sub_10003C49C(&qword_1001FF190);
    sub_10009D380();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &unk_100181A08, sub_10009D480);
    Section<>.init(header:content:)();
    v34 = v51;
    (*(v5 + 104))(v7, enum case for Prominence.increased(_:), v51);
    v35 = sub_10009D2BC();
    v47[1] = v21;
    v36 = v50;
    v37 = v55;
    View.headerProminence(_:)();
    (*(v5 + 8))(v7, v34);
    (*(v49 + 8))(v9, v37);
    v38 = v52;
    v39 = v56;
    (*(v52 + 16))(v54, v36, v56);
    swift_storeEnumTagMultiPayload();
    v58 = v37;
    v59 = v35;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();

    (*(v38 + 8))(v36, v39);
  }

  else
  {
    v40 = [v23 tests];
    sub_10003E110(0, &qword_1001FF2C8);
    v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v41;
    swift_getKeyPath();
    v42 = swift_allocObject();
    v43 = *(a2 + 16);
    *(v42 + 16) = *a2;
    *(v42 + 32) = v43;
    *(v42 + 48) = *(a2 + 32);
    v44 = v16;
    sub_10003C49C(&qword_1001FF2D0);
    sub_10003C49C(&qword_1001FF1B0);
    sub_10005C71C(&qword_1001FF2D8, &qword_1001FF2D0);
    sub_10009DCC0();
    sub_10009D480();
    ForEach<>.init(_:id:content:)();
    v45 = v48;
    (*(v48 + 2))(v54, v14, v12);
    swift_storeEnumTagMultiPayload();
    v46 = sub_10009D2BC();
    v58 = v55;
    v59 = v46;
    swift_getOpaqueTypeConformance2();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &unk_100181A08, sub_10009D480);
    _ConditionalContent<>.init(storage:)();

    v45[1](v14, v12);
  }
}

uint64_t sub_10009CA88(void *a1, uint64_t a2)
{
  v3 = [a1 tests];
  sub_10003E110(0, &qword_1001FF2C8);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v5;
  v6 = *(a2 + 32);
  *(v4 + 48) = v6;
  v7 = v6;
  sub_10003C49C(&qword_1001FF2D0);
  sub_10003C49C(&qword_1001FF1B0);
  sub_10005C71C(&qword_1001FF2D8, &qword_1001FF2D0);
  sub_10009DCC0();
  sub_10009D480();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_10009CBFC@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a2;
  v59 = a3;
  v4 = sub_10003C49C(&qword_1001FF1F8);
  __chkstk_darwin(v4);
  v6 = v56 - v5;
  v7 = sub_10003C49C(&qword_1001FF1E8);
  v8 = __chkstk_darwin(v7);
  v10 = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v58 = v56 - v11;
  v12 = sub_10003C49C(&qword_1001FF2E8);
  __chkstk_darwin(v12);
  v14 = (v56 - v13);
  v15 = *a1;
  v16 = [v15 value];
  if (v16)
  {

    v17 = [v15 status];
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = [v17 status];

    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v23)
    {
      goto LABEL_17;
    }
  }

  v24 = [v15 testDescription];
  if (!v24)
  {
    goto LABEL_17;
  }

  v25 = v24;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v29 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = [v15 result];
  if (!v30)
  {
    goto LABEL_17;
  }

  v31 = v30;
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v36 = HIBYTE(v34) & 0xF;
  if ((v34 & 0x2000000000000000) == 0)
  {
    v36 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v56[1] = v56;
    __chkstk_darwin(v35);
    v56[0] = &v56[-4];
    v56[-2] = v15;
    v37 = [*(v57 + 32) name];
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;

    v41 = v15;
    v42 = _UISolariumEnabled();
    v43 = 40.0;
    if (!v42)
    {
      v43 = 20.0;
    }

    v60 = *&v43;
    v61 = xmmword_100181900;
    v62 = 0x402A000000000000;
    v63 = v38;
    v64 = v40;
    v65 = v41;
    sub_10009D5C4();
    sub_10009DD60();
    NavigationLink.init(destination:label:)();
    v44 = static Color.black.getter();
    KeyPath = swift_getKeyPath();
    v46 = &v6[*(v4 + 36)];
    *v46 = KeyPath;
    v46[1] = v44;
    v47 = [objc_opt_self() secondarySystemBackgroundColor];
    v60 = Color.init(_:)();
    v48 = AnyView.init<A>(_:)();
    sub_10009DDBC(v6, v10, &qword_1001FF1F8);
    *&v10[*(v7 + 36)] = v48;
    v49 = v10;
    v50 = v58;
    sub_10009DDBC(v49, v58, &qword_1001FF1E8);
    sub_100044704(v50, v14, &qword_1001FF1E8);
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FF1C0);
    sub_10009D50C();
    sub_10009D618();
    _ConditionalContent<>.init(storage:)();
    return sub_10003DD84(v50, &qword_1001FF1E8);
  }

  else
  {
LABEL_17:
    v52 = objc_opt_self();
    v53 = v15;
    v54 = [v52 secondarySystemBackgroundColor];
    v60 = Color.init(_:)();
    v55 = AnyView.init<A>(_:)();
    *v14 = 0x4036000000000000;
    v14[1] = v53;
    v14[2] = v55;
    swift_storeEnumTagMultiPayload();
    sub_10003C49C(&qword_1001FF1C0);
    sub_10009D50C();
    sub_10009D618();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_10009D154@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_10003C49C(&qword_1001FF128);
  return sub_10009B48C(v6, (a1 + *(v4 + 44)));
}

unint64_t sub_10009D1C8()
{
  result = qword_1001FF168;
  if (!qword_1001FF168)
  {
    sub_10003C4E4(&qword_1001FF170);
    sub_10003C4E4(&qword_1001FF178);
    sub_10009D2BC();
    swift_getOpaqueTypeConformance2();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &unk_100181A08, sub_10009D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF168);
  }

  return result;
}

unint64_t sub_10009D2BC()
{
  result = qword_1001FF180;
  if (!qword_1001FF180)
  {
    sub_10003C4E4(&qword_1001FF178);
    sub_10009D380();
    sub_10009D404(&qword_1001FF198, &qword_1001FF1A0, &unk_100181A08, sub_10009D480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF180);
  }

  return result;
}

unint64_t sub_10009D380()
{
  result = qword_1001FF188;
  if (!qword_1001FF188)
  {
    sub_10003C4E4(&qword_1001FF190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF188);
  }

  return result;
}

uint64_t sub_10009D404(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003C4E4(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10009D480()
{
  result = qword_1001FF1A8;
  if (!qword_1001FF1A8)
  {
    sub_10003C4E4(&qword_1001FF1B0);
    sub_10009D50C();
    sub_10009D618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1A8);
  }

  return result;
}

unint64_t sub_10009D50C()
{
  result = qword_1001FF1B8;
  if (!qword_1001FF1B8)
  {
    sub_10003C4E4(&qword_1001FF1C0);
    sub_10009D5C4();
    sub_10005C71C(&qword_1001FF1D0, &qword_1001FF1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1B8);
  }

  return result;
}

unint64_t sub_10009D5C4()
{
  result = qword_1001FF1C8;
  if (!qword_1001FF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1C8);
  }

  return result;
}

unint64_t sub_10009D618()
{
  result = qword_1001FF1E0;
  if (!qword_1001FF1E0)
  {
    sub_10003C4E4(&qword_1001FF1E8);
    sub_10009D6D0();
    sub_10005C71C(&qword_1001FF1D0, &qword_1001FF1D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1E0);
  }

  return result;
}

unint64_t sub_10009D6D0()
{
  result = qword_1001FF1F0;
  if (!qword_1001FF1F0)
  {
    sub_10003C4E4(&qword_1001FF1F8);
    sub_10005C71C(&qword_1001FF200, &qword_1001FF208);
    sub_10005C71C(&qword_1001FF210, &qword_1001FF218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF1F0);
  }

  return result;
}

uint64_t sub_10009D7D8(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF290);
  __chkstk_darwin(v2 - 8);
  sub_100044704(a1, &v5 - v3, &qword_1001FF290);
  return EnvironmentValues.listSectionSpacing.setter();
}

unint64_t sub_10009D884()
{
  result = qword_1001FF238;
  if (!qword_1001FF238)
  {
    sub_10003C4E4(&qword_1001FF130);
    sub_10009D93C();
    sub_10005C71C(&qword_1001FF270, &qword_1001FF230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF238);
  }

  return result;
}

unint64_t sub_10009D93C()
{
  result = qword_1001FF240;
  if (!qword_1001FF240)
  {
    sub_10003C4E4(&qword_1001FF228);
    sub_10009D9F4();
    sub_10005C71C(&qword_1001FF260, &qword_1001FF268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF240);
  }

  return result;
}

unint64_t sub_10009D9F4()
{
  result = qword_1001FF248;
  if (!qword_1001FF248)
  {
    sub_10003C4E4(&qword_1001FF220);
    sub_10005C71C(&qword_1001FF250, &qword_1001FF258);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF248);
  }

  return result;
}

uint64_t sub_10009DAAC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009DB14()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_10009DB54()
{
  result = qword_1001FF2A8;
  if (!qword_1001FF2A8)
  {
    sub_10003C4E4(&qword_1001FF2A0);
    sub_10009DBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2A8);
  }

  return result;
}

unint64_t sub_10009DBE0()
{
  result = qword_1001FF2B0;
  if (!qword_1001FF2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2B0);
  }

  return result;
}

uint64_t sub_10009DC34()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10009DCC0()
{
  result = qword_1001FF2E0;
  if (!qword_1001FF2E0)
  {
    sub_10003E110(255, &qword_1001FF2C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2E0);
  }

  return result;
}

id sub_10009DD50@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = 0x4036000000000000;
  a1[1] = v2;
  return v2;
}

unint64_t sub_10009DD60()
{
  result = qword_1001FF2F0;
  if (!qword_1001FF2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF2F0);
  }

  return result;
}

uint64_t sub_10009DDBC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10003C49C(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10009DE94(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10007C884(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_10009DED8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10007C874(result, a2, a3 & 1);
  }

  return result;
}

id sub_10009DF78()
{
  type metadata accessor for DeviceStateResponder();
  v0 = swift_allocObject();
  result = [objc_opt_self() sharedInstance];
  *(v0 + 16) = result;
  qword_10020A3D0 = v0;
  return result;
}

id sub_10009DFD4(void *a1)
{
  if ([a1 overrideTrueToneSettings] && (objc_msgSend(a1, "requestedTrueToneSetting") & 1) == 0)
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    sub_100050ADC();
  }

  else
  {
    if (qword_1001FC6B8 != -1)
    {
      swift_once();
    }

    if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) != 2)
    {
      v3 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
      isa = Bool._bridgeToObjectiveC()().super.super.isa;
      v5 = String._bridgeToObjectiveC()();
      [v3 setProperty:isa forKey:v5];
    }
  }

  v6 = [a1 overrideDisplayBrightness];
  v7 = *(v1 + 16);
  if (v6)
  {
    [a1 requestedDisplayBrightness];
    v8 = "setScreenToBrightness:animate:";
    v9 = v7;
    v10 = 1;
  }

  else
  {
    v8 = "resetScreenBrightness:";
    v9 = v7;
    v10 = 0;
  }

  return [v9 v8];
}

void sub_10009E188()
{
  if (qword_1001FC6B8 != -1)
  {
    swift_once();
  }

  if (*(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_trueToneUserSetting) != 2)
  {
    v1 = *(qword_10020A368 + OBJC_IVAR____TtC11Diagnostics10Assertions_brightnessClient);
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v3 = String._bridgeToObjectiveC()();
    [v1 setProperty:isa forKey:v3];
  }

  sub_1000F6DA8();
  v4 = *(v0 + 16);
  v6[4] = sub_10009E2D8;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100031FA8;
  v6[3] = &unk_1001C3470;
  v5 = _Block_copy(v6);
  [v4 resetScreenBrightness:v5];
  _Block_release(v5);
}

void sub_10009E2D8()
{
  if (qword_10020A548)
  {
    v0 = qword_10020A548;
    OS_dispatch_semaphore.signal()();
  }
}

uint64_t sub_10009E354(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10009E3AC()
{
  v2.receiver = v0;
  v2.super_class = _s10DiagnosticCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009E624()
{
  sub_10003C49C(&qword_1001FF400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  strcpy((inited + 32), "operationMode");
  *(inited + 46) = -4864;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v1;
}

unint64_t sub_10009E8D4()
{
  sub_10003C49C(&qword_1001FF400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000010018E6B0;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  v1 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v1;
}

unint64_t sub_10009EA0C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10003C49C(&qword_1001FF400);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_10017EF10;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  *(inited + 48) = a1;
  *(inited + 56) = 0x646F43726F727265;
  *(inited + 64) = 0xE900000000000065;
  if (a2)
  {
    v10 = a1;
    [a2 code];
    v9[9].super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
    v9[10].super.super.isa = 0x6D6F44726F727265;
    v9[11].super.super.isa = 0xEB000000006E6961;
    v11 = [a2 domain];
    if (!v11)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();

      v11 = v12;
    }
  }

  else
  {
    *(inited + 72) = xmmword_100181C50;
    *(inited + 88) = 0xEB000000006E6961;
    v13 = a1;
    v11 = 0;
  }

  v9[12].super.super.isa = v11;
  v14 = sub_1000D5C20(v9);
  swift_setDeallocating();
  sub_10003C49C(&qword_1001FF408);
  swift_arrayDestroy();
  return v14;
}

unint64_t sub_10009EC44(void *a1)
{
  sub_10003C49C(&qword_1001FF400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000010018E630;
  *(inited + 48) = a1;
  v3 = a1;
  v4 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v4;
}

unint64_t sub_10009EE38(void *a1, uint64_t a2, uint64_t a3)
{
  sub_10003C49C(&qword_1001FF400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10017EC00;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 48) = a1;
  v7 = a1;
  v8 = sub_1000D5C20(inited);
  swift_setDeallocating();
  sub_10009F404(inited + 32);
  return v8;
}

uint64_t sub_10009EFB0(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_10009F010(v1);

  return v2;
}

uint64_t sub_10009F010(uint64_t a1)
{
  v2 = a1 + 64;
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

  v8 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v9 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v10 = v9 | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        if (v11)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_7;
        }
      }

      v13 = (*(a1 + 48) + 16 * v10);
      v28 = *v13;
      v29 = v13[1];
      v14 = _swiftEmptyDictionarySingleton[2];
      if (_swiftEmptyDictionarySingleton[3] <= v14)
      {
        v16 = v11;

        sub_100140CD8(v14 + 1, 1);
      }

      else
      {
        v15 = v11;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v17 = &_swiftEmptyDictionarySingleton[8];
      v18 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~_swiftEmptyDictionarySingleton[(v19 >> 6) + 8]) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~_swiftEmptyDictionarySingleton[(v19 >> 6) + 8])) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v29;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = (_swiftEmptyDictionarySingleton[6] + 16 * v21);
      *v27 = v28;
      v27[1] = v22;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v21) = v11;
      ++_swiftEmptyDictionarySingleton[2];
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v29;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = v17[v20];
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v12 >= v6)
      {

        return _swiftEmptyDictionarySingleton;
      }

      v5 = *(v2 + 8 * v12);
      ++v8;
      if (v5)
      {
        v8 = v12;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10009F260(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  _StringGuts.grow(_:)(24);

  v8._countAndFlagsBits = a1;
  v8._object = a2;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = sub_10009F3E4;
  v12[5] = v10;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000EBD70;
  v12[3] = &unk_1001C34C0;
  v11 = _Block_copy(v12);

  AnalyticsSendEventLazy();
  _Block_release(v11);
}

uint64_t sub_10009F3AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F3EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009F404(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009F474()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009F530()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10009F5E8()
{
  v1 = (v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction);
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16))
  {
    v2 = *v1;
    v3 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel);
    v10 = *v1;

    [v4 setTextAlignment:1];
    if (v2)
    {
      v5 = *(v0 + v3);
      v6 = v10;
      [v5 setTextAlignment:4];
      v7 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
      [*(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView) setImage:v6];
      [*(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView) insertArrangedSubview:*(v0 + v7) atIndex:0];
    }

    v8 = *(v0 + v3);

    v9 = String._bridgeToObjectiveC()();

    [v8 setText:v9];
  }
}

id sub_10009F754()
{
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor:v1];

  [v0 setSelectionStyle:0];
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView];

  return [v2 setSpacing:16.0];
}

void sub_10009F7E8()
{
  v1 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  [*&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView] addArrangedSubview:*&v0[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel]];
  v2 = [v0 contentView];
  [v2 addSubview:*&v0[v1]];
}

void sub_10009F870()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = type metadata accessor for InstructionListCell();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10017EDB0;
  v4 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v5 = [*&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView] widthAnchor];
  v6 = [v5 constraintEqualToConstant:40.0];

  *(v3 + 32) = v6;
  v7 = [*&v1[v4] heightAnchor];
  v8 = [v7 constraintEqualToConstant:40.0];

  *(v3 + 40) = v8;
  v9 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v10 = [*&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView] topAnchor];
  v11 = [v1 contentView];
  v12 = [v11 topAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v3 + 48) = v13;
  v14 = [*&v1[v9] bottomAnchor];
  v15 = [v1 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v3 + 56) = v17;
  v18 = [*&v1[v9] leadingAnchor];
  v19 = [v1 contentView];
  v20 = [v19 leadingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v3 + 64) = v21;
  v22 = [*&v1[v9] trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor:v24];
  *(v3 + 72) = v25;
  sub_10007E540();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

id sub_10009FC04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconDimensionSize] = 0x4044000000000000;
  *&v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_horizontalPadding] = 0x4030000000000000;
  v6 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v7 = [objc_allocWithZone(UIStackView) init];
  [v7 setAxis:0];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAlignment:3];
  [v7 setDistribution:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v9 = [objc_allocWithZone(UIImageView) init];
  [v9 setContentMode:1];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v3[v8] = v9;
  v10 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v11 setFont:v12];

  [v11 setNumberOfLines:0];
  [v11 setAdjustsFontForContentSizeCategory:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v10] = v11;
  v13 = &v3[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  *v13 = 0;
  if (a3)
  {
    v14 = String._bridgeToObjectiveC()();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for InstructionListCell();
  v15 = objc_msgSendSuper2(&v17, "initWithStyle:reuseIdentifier:", a1, v14);

  return v15;
}

id sub_10009FE84(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconDimensionSize] = 0x4044000000000000;
  *&v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_horizontalPadding] = 0x4030000000000000;
  v3 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_stackView;
  v4 = [objc_allocWithZone(UIStackView) init];
  [v4 setAxis:0];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAlignment:3];
  [v4 setDistribution:0];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_iconImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setContentMode:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instructionLabel;
  v8 = [objc_allocWithZone(UILabel) init];
  v9 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v8 setFont:v9];

  [v8 setNumberOfLines:0];
  [v8 setAdjustsFontForContentSizeCategory:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v1[v7] = v8;
  v10 = &v1[OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction];
  v11 = type metadata accessor for InstructionListCell();
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = 0;
  v14.receiver = v1;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_1000A00B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction);
  v2 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 8);
  v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics19InstructionListCell_instruction + 16);

  sub_1000A01EC(v1, v2, v3);
}

id sub_1000A0120()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstructionListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A01EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }
}

unint64_t sub_1000A0230@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A265C(*a1);
  *a2 = result;
  return result;
}

void sub_1000A0268()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 15.0;
  if (v1 == 1)
  {
    sub_1000A4918();
    v2 = v3 / 6.0;
  }

  qword_1001FF468 = *&v2;
}

void sub_1000A02DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  if (*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) == 1)
  {
    if (v1)
    {
      [v1 setTextAlignment:1];
    }

    v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAlignment:3];
    v3 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
    [v3 removeArrangedSubview:*(v0 + v2)];
    v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
    [v4 insertArrangedSubview:*(v0 + v2) atIndex:0];
    v5 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
    if (v5)
    {
      v6 = v5;
      [v3 removeArrangedSubview:v6];
      [v4 addArrangedSubview:v6];
    }

    v7 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint);
    if (v7)
    {
      v15 = v7;
      [v3 spacing];
      [v15 setConstant:-v8];
    }
  }

  else
  {
    if (v1)
    {
      [v1 setTextAlignment:4];
    }

    v9 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAlignment:1];
    v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
    [v10 removeArrangedSubview:*(v0 + v9)];
    v11 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
    [v11 addArrangedSubview:*(v0 + v9)];
    v12 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
    if (v12)
    {
      v13 = v12;
      [v10 removeArrangedSubview:v13];
      [v11 addArrangedSubview:v13];
    }

    v14 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint);
    if (v14)
    {

      [v14 setConstant:0.0];
    }
  }
}

void sub_1000A06F4()
{
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  sub_1000A4918();
  v4 = v3;
  if (v2 == 1)
  {
    sub_1000A4918();
    v6 = v5 / -3.0;
  }

  else
  {
    v6 = -30.0;
  }

  v7 = v4 + v6;
  v8 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView);
  [v8 setAxis:1];
  [v8 setDistribution:2];
  [v8 setAlignment:1];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView);
  [v9 setAxis:1];
  [v9 setDistribution:3];
  [v9 setAlignment:3];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  v11 = &off_1001EE000;
  v12 = &off_1001EE000;
  if (v10)
  {
    v13 = objc_opt_self();
    v14 = v10;
    v15 = [v13 preferredFontForTextStyle:UIFontTextStyleBody];
    v16 = [v15 fontDescriptor];
    v17 = [v16 fontDescriptorWithSymbolicTraits:2];

    if (!v17)
    {
      v17 = [v15 fontDescriptor];
    }

    [v15 pointSize];
    v18 = [v13 fontWithDescriptor:v17 size:?];

    [v14 setFont:v18];
    v19 = objc_opt_self();
    v12 = &off_1001EE000;
    v20 = [v19 labelColor];
    [v14 setTextColor:v20];

    [v14 setTextAlignment:4];
    [v14 setNumberOfLines:0];
    v11 = &off_1001EE000;
    [v14 setPreferredMaxLayoutWidth:v7];
    v21 = [v19 labelColor];
    [v14 setTextColor:v21];

    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v22 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel);
  if (v22)
  {
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
    [v24 setFont:v25];

    v26 = [objc_opt_self() secondaryLabelColor];
    [v24 setTextColor:v26];

    [v24 setTextAlignment:4];
    [v24 setNumberOfLines:0];
    [v24 v11[386]];
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v27 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  [*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) setAxis:1];
  [*(v0 + v27) setDistribution:4];
  [*(v0 + v27) setAlignment:3];
  [*(v0 + v27) setSpacing:8.0];
  [*(v0 + v27) setTranslatesAutoresizingMaskIntoConstraints:0];
  v28 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView);
  v29 = [objc_allocWithZone(UIColor) initWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  [v28 setTintColor:v29];

  v30 = objc_opt_self();
  v31 = [v30 opaqueSeparatorColor];
  [v28 setTrackTintColor:v31];

  [v28 setAlpha:0.0];
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel);
  if (v32)
  {
    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 preferredFontForTextStyle:UIFontTextStyleBody];
    [v34 setFont:v35];

    v36 = [v30 secondaryLabelColor];
    [v34 setTextColor:v36];

    [v34 setTextAlignment:1];
    [v34 setNumberOfLines:0];
    [v34 v11[386]];
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v37 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView);
  [v37 setHidesWhenStopped:0];
  v38 = [v30 v12[356]];
  [v37 setColor:v38];

  [v37 startAnimating];
  [v37 setAlpha:0.0];
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  v39 = *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
  if (v39)
  {
    v40 = v39;
    [v40 setDistribution:3];
    [v40 setAlignment:3];
    v41 = [v40 axis];
    v42 = 50.0;
    if (v41)
    {
      v42 = 10.0;
    }

    [v40 setSpacing:v42];
    [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;

  sub_1000A02DC();
}

void sub_1000A0E2C()
{
  v1 = sub_10003C49C(&qword_1001FD070);
  __chkstk_darwin(v1 - 8);
  v52 = &v43 - v2;
  v51 = type metadata accessor for UIButton.Configuration();
  v3 = *(v51 - 8);
  v4 = __chkstk_darwin(v51);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v49 = &v43 - v6;
  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView];
  [v0 addSubview:v7];
  v8 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView];
  [v0 addSubview:v8];
  v9 = &off_1001EE000;
  if (*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel])
  {
    [v7 addArrangedSubview:?];
  }

  if (*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel])
  {
    [v7 addArrangedSubview:?];
  }

  v10 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel];
  if (v10)
  {
    v11 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
    v12 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView];
    v13 = v10;
    [v12 addArrangedSubview:v13];
    [v8 addArrangedSubview:*&v0[v11]];
  }

  v14 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView];
  if (v14)
  {
    v43 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView];
    v44 = v8;
    v15 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_actions];
    v16 = *(v15 + 16);
    if (v16)
    {
      v47 = (v3 + 16);
      v48 = UIFontTextStyleBody;
      v46 = (v3 + 8);
      v17 = v14;
      v18 = (v15 + 64);
      v19 = &off_1001EE000;
      v20 = &off_1001EE000;
      v45 = v17;
      do
      {
        v36 = *(v18 - 3);
        v37 = *(v18 - 16);
        v38 = *(v18 - 1);
        v39 = *v18;
        *&v55 = *(v18 - 4);
        *(&v55 + 1) = v36;
        LOBYTE(v56) = v37;
        *(&v56 + 1) = v38;
        v57 = v39;
        if (v37 == 7)
        {
          v53 = type metadata accessor for TextButton();
          v21 = objc_allocWithZone(v53);
          v22 = objc_opt_self();
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v23 = [v22 preferredFontForTextStyle:v48];
          v24 = v49;
          static UIButton.Configuration.plain()();
          *(swift_allocObject() + 16) = v23;
          v25 = v9;
          v26 = v23;
          v27 = v52;
          UIConfigurationTextAttributesTransformer.init(_:)();
          v28 = type metadata accessor for UIConfigurationTextAttributesTransformer();
          (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
          UIButton.Configuration.titleTextAttributesTransformer.setter();

          sub_10003E110(0, &qword_1001FD078);
          v29 = v51;
          (*v47)(v50, v24, v51);
          v9 = v25;
          v19 = &off_1001EE000;
          *&v21[OBJC_IVAR____TtC11Diagnostics10TextButton_button] = UIButton.init(configuration:primaryAction:)();
          v30 = &v21[OBJC_IVAR____TtC11Diagnostics10TextButton_action];
          *(v30 + 4) = v57;
          v31 = v56;
          *v30 = v55;
          *(v30 + 1) = v31;
          v54.receiver = v21;
          v54.super_class = v53;
          v32 = objc_msgSendSuper2(&v54, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v33 = v24;
          v20 = &off_1001EE000;
          v34 = v29;
          v17 = v45;
          (*v46)(v33, v34);
        }

        else
        {
          v40 = objc_allocWithZone(type metadata accessor for GlyphButton());
          swift_bridgeObjectRetain_n();
          swift_retain_n();
          v32 = sub_100085D80(&v55);
        }

        v35 = v32;
        [v35 v19[334]];
        [v35 v20[498]];
        [v17 v9[435]];

        v18 += 5;
        --v16;
      }

      while (v16);
    }

    else
    {
      v41 = v14;
    }

    v42 = v43;
    [v44 v9[435]];
  }
}

void sub_1000A131C()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView];
  v2 = [v1 bottomAnchor];
  v3 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView];
  v4 = [v3 topAnchor];
  [v1 spacing];
  v6 = [v2 constraintEqualToAnchor:v4 constant:-v5];

  v7 = *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint];
  *&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint] = v6;
  v8 = v6;

  v31 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100181CB0;
  v10 = [v1 topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v9 + 32) = v12;
  *(v9 + 40) = v8;
  v13 = v8;
  v14 = [v1 leadingAnchor];
  v15 = [v0 leadingAnchor];
  if (qword_1001FC748 != -1)
  {
    swift_once();
  }

  v16 = *&qword_1001FF468;
  v17 = [v14 constraintEqualToAnchor:v15 constant:{*&qword_1001FF468, v31}];

  *(v9 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 trailingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:-v16];

  *(v9 + 56) = v20;
  v21 = [v3 bottomAnchor];
  v22 = [v0 bottomAnchor];
  [v3 spacing];
  v24 = [v21 constraintEqualToAnchor:v22 constant:-v23];

  *(v9 + 64) = v24;
  v25 = [v3 leadingAnchor];
  v26 = [v0 leadingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26 constant:v16];

  *(v9 + 72) = v27;
  v28 = [v3 trailingAnchor];
  v29 = [v0 trailingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:-v16];

  *(v9 + 80) = v30;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

void sub_1000A1730(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel);
  if (a2)
  {
    if (v3)
    {
      v4 = v3;
      v5 = String._bridgeToObjectiveC()();
      [v4 setText:v5];
    }
  }

  else
  {
    if (v3)
    {
      [v3 removeFromSuperview];
    }

    v6 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
    if (v6)
    {

      v6(v7);
      sub_10003C52C(v6);
    }
  }

  v8 = *(v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_buttonStackView);
  if (v8)
  {
    v9 = [v8 subviews];
    sub_10003E110(0, &qword_1001FF090);
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v10 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
      if (v11)
      {
LABEL_11:
        if (v11 < 1)
        {
          __break(1u);
        }

        else
        {
          for (i = 0; i != v11; ++i)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v15 = *(v10 + 8 * i + 32);
            }

            v19 = v15;
            v16 = v15;
            sub_10003C49C(&qword_1001FF518);
            if (swift_dynamicCast())
            {
              sub_100049F74(v17, v20);
              v13 = v21;
              v14 = v22;
              sub_1000442A0(v20, v21);
              (*(v14 + 8))(v13, v14);

              sub_100044554(v20);
            }

            else
            {

              v18 = 0;
              memset(v17, 0, sizeof(v17));
              sub_1000A27BC(v17);
            }
          }
        }

        return;
      }
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_11;
      }
    }
  }
}

id sub_1000A19FC()
{
  result = [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView] alpha];
  if (v2 == 0.0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_opt_self();
    v13 = sub_1000A2750;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100031FA8;
    v12 = &unk_1001C38D0;
    v6 = _Block_copy(&v9);
    v7 = v0;

    v13 = sub_1000A29C8;
    v14 = v4;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100084F94;
    v12 = &unk_1001C38F8;
    v8 = _Block_copy(&v9);

    [v5 animateWithDuration:0x10000 delay:v6 options:v8 animations:0.375 completion:0.0];
    _Block_release(v8);
    _Block_release(v6);
  }

  return result;
}

id sub_1000A1BD4()
{
  result = [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView] alpha];
  if (v2 == 1.0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = v0;
    v5 = objc_opt_self();
    v13 = sub_1000A26D0;
    v14 = v3;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100031FA8;
    v12 = &unk_1001C3830;
    v6 = _Block_copy(&v9);
    v7 = v0;

    v13 = sub_1000A2734;
    v14 = v4;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_100084F94;
    v12 = &unk_1001C3858;
    v8 = _Block_copy(&v9);

    [v5 animateWithDuration:0x20000 delay:v6 options:v8 animations:0.125 completion:0.0];
    _Block_release(v8);
    _Block_release(v6);
  }

  return result;
}

void sub_1000A1DB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  if (v2)
  {

    v2(v3);

    sub_10003C52C(v2);
  }
}

id sub_1000A1E18(float a1)
{
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView];
  [v3 alpha];
  if (v4 == 0.0)
  {
    *&v4 = a1;
    [v3 setProgress:0 animated:v4];
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    v6 = objc_opt_self();
    v12[4] = sub_1000A26C8;
    v12[5] = v5;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100031FA8;
    v12[3] = &unk_1001C37B8;
    v7 = _Block_copy(v12);
    v8 = v1;

    [v6 animateWithDuration:0x10000 delay:v7 options:0 animations:0.375 completion:0.0];
    _Block_release(v7);

    v10 = *&v8[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v10)
    {

      v10(v11);
      return sub_10003C52C(v10);
    }
  }

  else
  {
    *&v4 = a1;

    return [v3 setProgress:1 animated:v4];
  }

  return result;
}

id sub_1000A1FDC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView];
  [*&a1[OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView] insertArrangedSubview:v2 atIndex:0];
  v3 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10017ED90;
  v5 = [v2 leadingAnchor];
  v6 = [a1 leadingAnchor];
  if (qword_1001FC748 != -1)
  {
    swift_once();
  }

  v7 = *&qword_1001FF468 + 25.0;
  v8 = [v5 constraintEqualToAnchor:v6 constant:*&qword_1001FF468 + 25.0];

  *(v4 + 32) = v8;
  v9 = [v2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:-v7];

  *(v4 + 40) = v11;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints:isa];

  return [v2 setAlpha:1.0];
}

id sub_1000A21F4()
{
  result = [*&v0[OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView] alpha];
  if (v2 == 1.0)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = objc_opt_self();
    v9[4] = sub_1000A26A4;
    v9[5] = v3;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100031FA8;
    v9[3] = &unk_1001C3768;
    v5 = _Block_copy(v9);
    v6 = v0;

    [v4 animateWithDuration:0x20000 delay:v5 options:0 animations:0.125 completion:0.0];
    _Block_release(v5);

    v7 = *&v6[OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler];
    if (v7)
    {

      v7(v8);
      return sub_10003C52C(v7);
    }
  }

  return result;
}

uint64_t sub_1000A2390()
{
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler));
}

id sub_1000A2474()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000A25D0()
{
  result = qword_1001FF510;
  if (!qword_1001FF510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001FF510);
  }

  return result;
}

uint64_t sub_1000A2638(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return sub_10003C52C(v4);
}

unint64_t sub_1000A265C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000A266C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A26B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000A26DC(void *a1)
{
  v2 = *(*(v1 + 16) + *a1);
  [v2 removeFromSuperview];

  return [v2 setAlpha:0.0];
}

id sub_1000A2750()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView);
  [*(v1 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView) insertArrangedSubview:v2 atIndex:0];

  return [v2 setAlpha:1.0];
}

uint64_t sub_1000A27BC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FF520);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000A2824()
{
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_footerContentCenterAligned) = 1;
  v1 = OBJC_IVAR____TtC11Diagnostics10PromptView_promptStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC11Diagnostics10PromptView_footerStackView;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_promptFooterConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_subtitleLabel) = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoVerticalStackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoProgressIndicatorView;
  *(v0 + v4) = [objc_allocWithZone(UIProgressView) init];
  v5 = OBJC_IVAR____TtC11Diagnostics10PromptView_infoActivityIndicatorView;
  *(v0 + v5) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_infoLabel) = 0;
  v6 = (v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_containerLayoutUpdateHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC11Diagnostics10PromptView_hasExplicitHeight) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A29CC()
{
  result = _UISolariumEnabled();
  v1 = 12.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_10020A3D8 = *&v1;
  return result;
}

void sub_1000A2A0C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5);
  v9 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState];
  if (v9)
  {
    v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v8;
    v37 = v4;
    v38 = v6;
    v39 = v2;
    v40 = v1;

    sub_1000A3B88();
    v10 = objc_opt_self();
    v11 = [v10 defaultCenter];
    if (qword_1001FC6F0 != -1)
    {
      swift_once();
    }

    v12 = qword_10020A3A0;
    v13 = objc_opt_self();

    v14 = [v13 mainQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    v45 = sub_1000A48A8;
    v46 = v15;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100060B2C;
    v44 = &unk_1001C3948;
    v16 = _Block_copy(&aBlock);
    v17 = v0;

    v18 = [v11 addObserverForName:v12 object:v9 queue:v14 usingBlock:v16];
    _Block_release(v16);

    *&v17[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = v18;
    swift_unknownObjectRelease();
    v19 = [v10 defaultCenter];
    v20 = *(v9 + 40);
    v21 = @"com.apple.Diagnostics.deviceStateChangedNotification";
    v22 = v20;
    v23 = [v13 mainQueue];
    v24 = swift_allocObject();
    *(v24 + 16) = v17;
    v45 = sub_1000A48C8;
    v46 = v24;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100060B2C;
    v44 = &unk_1001C3998;
    v25 = _Block_copy(&aBlock);
    v26 = v17;

    v27 = [v19 addObserverForName:v21 object:v22 queue:v23 usingBlock:v25];
    _Block_release(v25);

    *&v26[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = v27;
    swift_unknownObjectRelease();
    sub_10003E110(0, &qword_1001FD040);
    v28 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v9;
    v45 = sub_1000A4910;
    v46 = v29;
    aBlock = _NSConcreteStackBlock;
    v42 = 1107296256;
    v43 = sub_100031FA8;
    v44 = &unk_1001C39E8;
    v30 = _Block_copy(&aBlock);

    v31 = v26;

    v32 = v35;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000A4B64(&qword_1001FDE60, &type metadata accessor for DispatchWorkItemFlags);
    sub_10003C49C(&unk_1001FD050);
    sub_1000446A0();
    v33 = v37;
    v34 = v40;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v30);

    (*(v39 + 8))(v33, v34);
    (*(v36 + 8))(v32, v38);
  }
}

uint64_t sub_1000A2FC0(uint64_t a1, void *a2)
{
  result = Notification.userInfo.getter();
  if (result)
  {
    v4 = result;
    strcpy(v7, "changeInfoKey");
    HIWORD(v7[1]) = -4864;
    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = sub_100064B74(v8), (v6 & 1) != 0))
    {
      sub_10003E010(*(v4 + 56) + 32 * v5, v9);
      sub_10003DB48(v8);

      result = swift_dynamicCast();
      if (result)
      {
        if ((v7[1] & 0x20) != 0)
        {
          sub_1000A4104(*(v7[0] + 32));
        }

        if ((v7[1] & 8) != 0)
        {
          (*((swift_isaMask & *a2) + 0x178))(v7[0]);
        }

        if ((v7[1] & 0x10) != 0)
        {
          (*((swift_isaMask & *a2) + 0x180))(*(v7[0] + 24));
        }
      }
    }

    else
    {

      return sub_10003DB48(v8);
    }
  }

  return result;
}

void sub_1000A315C()
{
  v0 = Notification.userInfo.getter();
  if (v0)
  {
    v1 = v0;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (*(v1 + 16) && (v2 = sub_100064B74(v5), (v3 & 1) != 0))
    {
      sub_10003E010(*(v1 + 56) + 32 * v2, v6);
      sub_10003DB48(v5);

      sub_10003E110(0, &unk_100201860);
      if (swift_dynamicCast())
      {
        sub_1000A3E4C(v4);
      }
    }

    else
    {

      sub_10003DB48(v5);
    }
  }
}

uint64_t sub_1000A3264(void *a1, uint64_t a2)
{
  (*((swift_isaMask & *a1) + 0x170))(a2);
  v4 = *(a2 + 40);
  v5 = [v4 suiteName];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  (*((swift_isaMask & *a1) + 0x198))(v7, v9);

  (*((swift_isaMask & *a1) + 0x178))(a2);
  (*((swift_isaMask & *a1) + 0x180))(*(a2 + 24));
  v10 = [v4 progress];
  (*((swift_isaMask & *a1) + 0x188))();

  v11 = [v4 durationRemaining];
  (*((swift_isaMask & *a1) + 0x190))(v11);
  v12 = [v4 sessionSettings];
  (*((swift_isaMask & *a1) + 0x1A0))();

  sub_1000A4104(*(a2 + 32));
  result = (*((swift_isaMask & *a1) + 0x1A8))(v4);
  *(a1 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation) = 0;
  return result;
}

id sub_1000A3554()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer);
  v2 = [objc_opt_self() secondarySystemBackgroundColor];
  [v1 setBackgroundColor:v2];

  v3 = [v1 layer];
  if (qword_1001FC750 != -1)
  {
    swift_once();
  }

  [v3 setCornerRadius:*&qword_10020A3D8];

  [v1 setClipsToBounds:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView);
  [v4 setAxis:1];
  [v4 setDistribution:0];
  [v4 setAlignment:0];

  return [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
}

void sub_1000A36B4()
{
  v1 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  [v1 addSubview:*&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView]];
  v2 = [v0 contentView];
  [v2 addSubview:v1];
}

void sub_1000A3744()
{
  v1 = v0;
  v33 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView];
  v2 = [v33 bottomAnchor];
  v3 = *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v4 = [v3 bottomAnchor];
  v5 = [v2 constraintEqualToAnchor:v4];

  LODWORD(v6) = 1148829696;
  [v5 setPriority:v6];
  v32 = objc_opt_self();
  sub_10003C49C(&unk_1001FD020);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100180E60;
  v8 = [v3 centerXAnchor];
  v9 = [v1 contentView];
  v10 = [v9 centerXAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v7 + 32) = v11;
  v12 = [v3 topAnchor];
  v13 = [v1 contentView];
  v14 = [v13 topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v7 + 40) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:-12.0];
  *(v7 + 48) = v19;
  v20 = [v3 widthAnchor];
  sub_1000A4918();
  v21 = [v20 constraintEqualToConstant:?];

  *(v7 + 56) = v21;
  v22 = [v33 topAnchor];
  v23 = [v3 topAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v7 + 64) = v24;
  *(v7 + 72) = v5;
  v25 = v5;
  v26 = [v33 leadingAnchor];
  v27 = [v3 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v7 + 80) = v28;
  v29 = [v33 trailingAnchor];
  v30 = [v3 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v7 + 88) = v31;
  sub_10003E110(0, &qword_1001FD550);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints:isa];
}

void sub_1000A3B88()
{
  v1 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000A3C98()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1000A4AFC(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller);
  sub_10003C52C(*(v0 + OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler));
}

id sub_1000A3D2C()
{
  sub_1000A3B88();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CardViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000A3E4C(void *a1)
{
  v3 = [a1 changedProperties];
  v13 = [a1 snapshot];
  if ([v13 phase] && objc_msgSend(v13, "phase") != 1)
  {
    v4 = [v13 progress];
    (*((swift_isaMask & *v1) + 0x188))();
  }

  if ((v3 & 0x100) != 0)
  {
    v6 = [v13 durationRemaining];
    (*((swift_isaMask & *v1) + 0x190))(v6);
    v5 = v13;
    if ((v3 & 2) == 0)
    {
LABEL_6:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v5 = v13;
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }
  }

  v7 = [v5 suiteName];
  if (v7)
  {
    v8 = v7;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  (*((swift_isaMask & *v1) + 0x198))(v9, v11);

  v5 = v13;
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [v13 sessionSettings];
  (*((swift_isaMask & *v1) + 0x1A0))();

  v5 = v13;
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    (*((swift_isaMask & *v1) + 0x1A8))(v13);
    v5 = v13;
  }

LABEL_9:
}

uint64_t sub_1000A4104(char a1)
{
  switch(a1)
  {
    case 1:
      result = (*((swift_isaMask & *v1) + 0x1B8))();
      break;
    case 2:
      result = (*((swift_isaMask & *v1) + 0x1C0))();
      break;
    case 3:
      result = (*((swift_isaMask & *v1) + 0x1C8))();
      break;
    case 4:
      result = (*((swift_isaMask & *v1) + 0x1D0))();
      break;
    case 5:
      result = (*((swift_isaMask & *v1) + 0x1D8))();
      break;
    case 6:
      result = (*((swift_isaMask & *v1) + 0x1E0))();
      break;
    case 7:
      result = (*((swift_isaMask & *v1) + 0x1E8))();
      break;
    case 8:
      result = (*((swift_isaMask & *v1) + 0x1F0))();
      break;
    case 9:
      result = (*((swift_isaMask & *v1) + 0x1F8))();
      break;
    case 10:
      result = (*((swift_isaMask & *v1) + 0x200))();
      break;
    case 11:
      result = (*((swift_isaMask & *v1) + 0x208))();
      break;
    case 12:
      result = (*((swift_isaMask & *v1) + 0x210))();
      break;
    default:
      result = (*((swift_isaMask & *v1) + 0x1B0))();
      break;
  }

  return result;
}

id sub_1000A4364()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer];
  v3 = [v2 layer];
  v4 = [v3 borderColor];

  v5 = objc_opt_self();
  v6 = [v5 opaqueSeparatorColor];
  v7 = [v6 CGColor];

  if (v4)
  {
    if (v7)
    {
      type metadata accessor for CGColor(0);
      sub_1000A4B64(&qword_1001FF598, type metadata accessor for CGColor);
      v8 = static _CFObject.== infix(_:_:)();

      if (v8)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v7 = v4;
  }

  else if (!v7)
  {
    goto LABEL_10;
  }

LABEL_9:
  v9 = [v2 layer];
  v10 = [v5 opaqueSeparatorColor];
  v11 = [v10 CGColor];

  [v9 setBorderColor:v11];
LABEL_10:
  v13.receiver = v1;
  v13.super_class = type metadata accessor for CardViewCell();
  return objc_msgSendSuper2(&v13, "layoutSubviews");
}

id sub_1000A4578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_spacing] = 0x4024000000000000;
  v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation] = 1;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = 0;
  v6 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView;
  type metadata accessor for CardStackView();
  *&v3[v6] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer;
  *&v3[v7] = [objc_allocWithZone(UIView) init];
  v8 = &v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = &v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = 0;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for CardViewCell();
  v11 = objc_msgSendSuper2(&v13, "initWithStyle:reuseIdentifier:", a1, v10);

  return v11;
}

id sub_1000A4708(void *a1)
{
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_spacing] = 0x4024000000000000;
  v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_pauseStateAnimation] = 1;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_deviceStateNotificationToken] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardStateNotificationToken] = 0;
  v3 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackView;
  type metadata accessor for CardStackView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC11Diagnostics12CardViewCell_stackViewContainer;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = &v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_controller];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = &v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_layoutUpdateHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v1[OBJC_IVAR____TtC11Diagnostics12CardViewCell_cardState] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CardViewCell();
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1000A4870()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000A48B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000A48D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000A4918()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_100049F8C();

  v1 = objc_opt_self();
  v2 = [v1 currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 != 1)
  {
    v4 = [v1 currentDevice];
    [v4 userInterfaceIdiom];
  }
}

void sub_1000A4A08()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_100049F8C();

  if (!_UISolariumEnabled() || (v1 = objc_opt_self(), v2 = [v1 currentDevice], v3 = objc_msgSend(v2, "userInterfaceIdiom"), v2, v3 == 1) || (v4 = objc_msgSend(v1, "currentDevice"), v5 = objc_msgSend(v4, "userInterfaceIdiom"), v4, v5 == 6))
  {
    sub_1000A4918();
  }
}

uint64_t sub_1000A4AFC(uint64_t a1)
{
  v2 = sub_10003C49C(&qword_1001FD060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A4B64(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000A4BC0(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC11Diagnostics37SelfServiceSuiteResultsViewController_entry] = a1;
  v3 = a1;
  _StringGuts.grow(_:)(35);
  DeviceClass = GestaltGetDeviceClass();
  v5 = sub_100100580(DeviceClass);
  v7 = v6;

  v21 = v5;
  v22 = v7;
  v8._countAndFlagsBits = 0xD000000000000021;
  v8._object = 0x800000010018EC60;
  String.append(_:)(v8);
  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 _systemImageNamed:v9];

  if (v11)
  {
  }

  else
  {
    v12 = String._bridgeToObjectiveC()();

    v11 = [v10 imageNamed:v12];
  }

  sub_1000494C8(0, 0, _swiftEmptyArrayStorage, 0xD000000000000015, 0x800000010018EC90);
  v13 = String._bridgeToObjectiveC()();
  sub_1000A54B8(v3);
  v14 = String._bridgeToObjectiveC()();

  v20.receiver = v2;
  v20.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  v15 = objc_msgSendSuper2(&v20, "initWithTitle:detailText:icon:contentLayout:", v13, v14, v11, 2);

  v16 = v15;
  v17 = [v16 navigationItem];
  v18 = String._bridgeToObjectiveC()();

  [v17 setBackButtonTitle:v18];

  return v16;
}

void sub_1000A4DEC()
{
  v34.receiver = v0;
  v34.super_class = type metadata accessor for SelfServiceSuiteResultsViewController();
  objc_msgSendSuper2(&v34, "viewDidLoad");
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton:1];

  v2 = [v0 navigationItem];
  sub_10003E110(0, &qword_1001FD3B8);
  sub_10003E110(0, &qword_1002023B0);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = v0;
  v35.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v35.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v35, v36).super.super.isa;
  [v2 setLeftBarButtonItem:{isa, 0, 0, 0, sub_1000A567C, v3}];

  v6 = *&v4[OBJC_IVAR____TtC11Diagnostics37SelfServiceSuiteResultsViewController_entry];
  v7 = [v6 results];
  if (v7)
  {
    v8 = v7;
    [v4 navigationController];
    v9 = [v6 testSuiteName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    objc_allocWithZone(sub_10003C49C(&qword_1001FD538));
    v10 = v8;
    v11 = UIHostingController.init(rootView:)();
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
      v14 = [v4 contentView];
      [v14 addSubview:v13];

      v33 = objc_opt_self();
      sub_10003C49C(&unk_1001FD020);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_10017ED60;
      v16 = [v13 leadingAnchor];
      v17 = [v4 contentView];
      v18 = [v17 leadingAnchor];

      v19 = [v16 constraintEqualToAnchor:v18];
      *(v15 + 32) = v19;
      v20 = [v13 trailingAnchor];
      v21 = [v4 contentView];
      v22 = [v21 trailingAnchor];

      v23 = [v20 constraintEqualToAnchor:v22];
      *(v15 + 40) = v23;
      v24 = [v13 topAnchor];
      v25 = [v4 contentView];
      v26 = [v25 topAnchor];

      v27 = [v24 constraintEqualToAnchor:v26];
      *(v15 + 48) = v27;
      v28 = [v13 bottomAnchor];
      v29 = [v4 contentView];
      v30 = [v29 bottomAnchor];

      v31 = [v28 constraintEqualToAnchor:v30];
      *(v15 + 56) = v31;
      sub_10003E110(0, &qword_1001FD550);
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v33 activateConstraints:v32];
    }

    else
    {
    }
  }

  else
  {
    [v4 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000A5320(int a1, id a2)
{
  v2 = [a2 navigationController];
  if (v2)
  {
    v3 = v2;
  }
}