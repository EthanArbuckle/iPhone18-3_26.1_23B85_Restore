uint64_t sub_100399A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_10007EBC0(&unk_1006C0240);
  v5[4] = swift_task_alloc();
  v6 = type metadata accessor for FMIPBeaconShare();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100399BA0, v8, v7);
}

uint64_t sub_100399BA0()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  v6 = *(*(*(v5 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);
  *(swift_task_alloc() + 16) = v4;

  sub_100110880(sub_1003B0618, v6, v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v7 = v0[2];
    sub_100012DF0(v0[4], &unk_1006C0240);
    *(*(v7 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention) + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 1;
    sub_1002B20D8();
  }

  else
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);

    dispatch thunk of FMFManager.contactsController.getter();

    FMIPBeaconShare.shareeHandle.getter();
    v8 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

    if (!v8)
    {
      FMIPBeaconShare.shareeHandle.getter();
      v8 = sub_1000EC68C();
    }

    v10 = v0[6];
    v9 = v0[7];
    v11 = v0[5];
    v12 = *(v0[2] + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention);
    sub_1003E57C8(v8);
    *(v12 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 0;
    sub_1002B20D8();

    (*(v10 + 8))(v9, v11);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100399DE8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.identifier.getter();
  v4 = static UUID.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100399ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  sub_10007EBC0(&unk_1006B8DD0);
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for DelegatedSharesReportingState();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_10007EBC0(&qword_1006BD088);
  v5[19] = swift_task_alloc();
  type metadata accessor for FMItemDetailViewModel();
  v5[20] = swift_task_alloc();
  v5[21] = type metadata accessor for DelegationState(0);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for DelegatedURLShare();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v8 = type metadata accessor for FMIPItem();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[29] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10039A14C, v10, v9);
}

uint64_t sub_10039A14C()
{

  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v2 = sub_100008FC0(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060((v0 + 2));
  if ((My & 1) == 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: Feature not enabled";
    goto LABEL_11;
  }

  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = *(v0[13] + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v7 = *(v6 + 40);
  v8 = *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v7 + v9));
  (*(v4 + 16))(v3, v7 + v8, v5);
  os_unfair_lock_unlock((v7 + v9));

  LOBYTE(v7) = FMIPItem.isOwner.getter();
  (*(v4 + 8))(v3, v5);
  if (v7)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: Item belongs to owner, this action is only for sharees";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v11, v12, v14, v13, 2u);

LABEL_12:

    goto LABEL_13;
  }

  v18 = v0[24];
  v39 = v0[23];
  v20 = v0[21];
  v19 = v0[22];
  v21 = v0[19];
  v22 = v0[20];
  v23 = v0[13];
  v24 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v6 + v24, v22, type metadata accessor for FMItemDetailViewModel);
  v25 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v38 = v23;
  v26 = *(*(*(v23 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 24) + 64);

  sub_10037FE6C(v22, v26, v19);

  sub_1003ABABC(v22, type metadata accessor for FMItemDetailViewModel);
  sub_100035318(&v19[*(v20 + 20)], v21, &qword_1006BD088);
  if ((*(v18 + 48))(v21, 1, v39) == 1)
  {
    sub_100012DF0(v0[19], &qword_1006BD088);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100005B14(v27, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_12;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "FMItemDetailContentViewController: No delegated URL share to create";
    goto LABEL_11;
  }

  v29 = v0[24];
  v28 = v0[25];
  v30 = v0[23];
  v31 = v0[18];
  v33 = v0[16];
  v32 = v0[17];
  v34 = v0[15];
  (*(v29 + 32))(v28, v0[19], v30);
  (*(v29 + 16))(v31, v28, v30);
  (*(v29 + 56))(v31, 0, 1, v30);
  (*(v32 + 104))(v31, enum case for DelegatedSharesReportingState.hasAlreadyReported(_:), v33);
  LostModeManagementSectionViewModel.presentShareeLandingPageAsPendingAction(reportingState:)();
  (*(v32 + 8))(v31, v33);
  (*(v29 + 8))(v28, v30);
  v35 = *(*(v38 + v25) + 56);
  v36 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
  v37 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v34, v35 + v37, &unk_1006B8DD0);
  swift_endAccess();

LABEL_13:

  v16 = v0[1];

  return v16();
}

void sub_10039A7E0(char *a1)
{
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(*&a1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56);
  v6 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_1000BBF40(v4, v5 + v7, &unk_1006B8DD0);
  swift_endAccess();

  v8 = [a1 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutIfNeeded];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10039A940(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v61 = a6;
  v62 = a7;
  v60 = a5;
  v69 = a1;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v67 = *(v9 - 8);
  v68 = v9;
  __chkstk_darwin(v9);
  v66 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMSelectionPendingAction(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(a3);
  v20 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v52 - v22;
  v24 = __chkstk_darwin(v21);
  v27 = &v52 - v25;
  v28 = v24;
  v70 = a4;
  if (!v24)
  {
    v54 = v17;
    v55 = v15;
    v56 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v57 = v14;
    v58 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = 0;
    v29 = v69;
    sub_100007204(v69, &v52 - v25, &qword_1006BB1E0);
    v30 = type metadata accessor for FMIPAddress();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v27, 1, v30) == 1)
    {
      sub_100012DF0(v27, &qword_1006BB1E0);
      goto LABEL_6;
    }

    v53 = FMIPAddress.label.getter();
    v28 = v33;
    (*(v31 + 8))(v27, v30);
    if (!v28)
    {
LABEL_6:
      sub_100007204(v29, v23, &qword_1006BB1E0);
      if (v32(v23, 1, v30) == 1)
      {
        sub_100012DF0(v23, &qword_1006BB1E0);
      }

      else
      {
        v34 = FMIPAddress.formattedAddressLines.getter();
        (*(v31 + 8))(v23, v30);
        if (v34)
        {
          a4 = v70;
          if (v34[2])
          {
            v35 = v34[4];
            v28 = v34[5];

            v26 = v35;
          }

          else
          {

            v26 = 0;
            v28 = 0;
          }

          goto LABEL_12;
        }
      }

      v26 = 0;
      v28 = 0;
      a4 = v70;
LABEL_12:
      v16 = v58;
      v20 = v56;
      v14 = v57;
      v15 = v55;
      v17 = v54;
      goto LABEL_13;
    }

    a4 = v70;
    v16 = v58;
    v20 = v56;
    v14 = v57;
    v15 = v55;
    v17 = v54;
    v26 = v53;
  }

LABEL_13:
  v36 = &a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
  *v36 = v26;
  v36[1] = v28;

  sub_10000905C(0, &qword_1006AEDC0);
  v59 = static OS_dispatch_queue.main.getter();
  sub_1003B027C(v60, v16, type metadata accessor for FMSelectionPendingAction);
  sub_100007204(v69, v20, &qword_1006BB1E0);
  v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v38 = (v15 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (*(v17 + 80) + v38 + 8) & ~*(v17 + 80);
  v40 = swift_allocObject();
  v41 = v68;
  v42 = v40;
  sub_1003B0214(v16, v40 + v37, type metadata accessor for FMSelectionPendingAction);
  v43 = v70;
  *(v42 + v38) = v70;
  sub_100035318(v20, v42 + v39, &qword_1006BB1E0);
  v44 = (v42 + ((v18 + v39 + 7) & 0xFFFFFFFFFFFFFFF8));
  v45 = v62;
  *v44 = v61;
  v44[1] = v45;
  aBlock[4] = sub_1003B0684;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063AA40;
  v46 = _Block_copy(aBlock);
  v47 = v43;

  v48 = v63;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v49 = v66;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v50 = v59;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v46);

  (*(v67 + 8))(v49, v41);
  return (*(v64 + 8))(v48, v65);
}

void sub_10039B080(uint64_t a1, char *a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v78 = a5;
  v79 = a4;
  v70 = a3;
  v77 = a2;
  v6 = type metadata accessor for FMIPSeparationLocation();
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006BC990);
  v9 = __chkstk_darwin(v8 - 8);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v73 = &v67 - v12;
  __chkstk_darwin(v11);
  v76 = &v67 - v13;
  v14 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v67 - v15;
  v17 = sub_10007EBC0(&qword_1006B68E0);
  __chkstk_darwin(v17 - 8);
  v19 = &v67 - v18;
  v20 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v71 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for FMSelectionPendingAction(0);
  __chkstk_darwin(v26);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  My = type metadata accessor for Feature.FindMy();
  v81 = My;
  v82 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v30 = sub_100008FC0(aBlock);
  (*(*(My - 8) + 104))(v30, enum case for Feature.FindMy.separationAlerts(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(aBlock);
  if (My)
  {
    sub_1003B027C(a1, v28, type metadata accessor for FMSelectionPendingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 5:
        v37 = sub_10037F428(0);
        break;
      case 4:
        FMIPSeparationEvent.init(itemOrDeviceCount:addSafeLocationTapped:addToAllTapped:homeRemoved:)();
        v42 = type metadata accessor for FMIPSeparationEvent();
        (*(*(v42 - 8) + 56))(v19, 0, 1, v42);
        v43 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
        v44 = v77;
        swift_beginAccess();
        sub_1000BBF40(v19, &v44[v43], &qword_1006B68E0);
        swift_endAccess();
        v45 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
        swift_beginAccess();
        sub_100007204(&v44[v45], v16, &unk_1006BB1B0);
        v46 = type metadata accessor for FMIPSafeLocation();
        LODWORD(v45) = (*(*(v46 - 8) + 48))(v16, 1, v46);
        sub_100012DF0(v16, &unk_1006BB1B0);
        if (v45 != 1)
        {
          sub_10037F428(1);
        }

        v48 = v74;
        v47 = v75;
        v49 = *(v74 + 56);
        v50 = v76;
        v49(v76, 1, 1, v75);
        v51 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
        v52 = *(*&v44[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
        swift_beginAccess();
        v53 = v52 + *(type metadata accessor for FMPendingActionInfo(0) + 20);
        v54 = v73;
        sub_100007204(v53, v73, &qword_1006BC990);
        if ((*(v48 + 48))(v54, 1, v47) == 1)
        {
          sub_100012DF0(v54, &qword_1006BC990);
        }

        else
        {
          v55 = v69;
          (*(v48 + 32))(v69, v54, v47);
          v56 = v68;
          FMIPSeparationLocation.with(address:)();
          (*(v48 + 8))(v55, v47);
          sub_100012DF0(v50, &qword_1006BC990);
          v49(v56, 0, 1, v47);
          sub_100035318(v56, v50, &qword_1006BC990);
        }

        v57 = *(*&v44[v51] + 16);
        v58 = (*&v44[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
        swift_beginAccess();
        v60 = *v58;
        v59 = v58[1];
        v84 = 0xD00000000000001ELL;
        v85 = 0x800000010058DB30;

        v61 = v57;
        v62._countAndFlagsBits = v60;
        v62._object = v59;
        String.append(_:)(v62);
        v63 = [objc_opt_self() standardUserDefaults];
        v64 = String._bridgeToObjectiveC()();

        LOBYTE(v60) = [v63 BOOLForKey:v64];

        if ((v60 & 1) == 0)
        {
          sub_1003A3310(v50);
        }

        v65 = *(*&v44[v51] + 16);
        v65[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
        v66 = v65;
        sub_10041E45C();

        v37 = sub_100012DF0(v50, &qword_1006BC990);
        break;
      case 3:
        v32 = v77;
        sub_10037F428(1);
        sub_10000905C(0, &qword_1006AEDC0);
        v33 = static OS_dispatch_queue.main.getter();
        v34 = swift_allocObject();
        *(v34 + 16) = v32;
        v82 = sub_1003B079C;
        v83 = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100004AE4;
        v81 = &unk_10063AA90;
        v35 = _Block_copy(aBlock);
        v36 = v32;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640);
        sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v35);

        (*(v72 + 8))(v22, v20);
        v37 = (*(v71 + 8))(v25, v23);
        break;
      default:
        v37 = sub_1003ABABC(v28, type metadata accessor for FMSelectionPendingAction);
        break;
    }

    v79(v37);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "FMDItemDetailContentViewController: Separation Feature Not Enabled.", v41, 2u);
    }
  }
}

uint64_t sub_10039BB74(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v9, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &unk_1006BB1B0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v12 = a1;
  sub_1003A2FC4(v8, 0, sub_1003B07A4, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10039BD7C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for FMIPSafeLocation();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_1000BBF40(v5, a2 + v7, &unk_1006BB1B0);
  swift_endAccess();
  v8 = (a2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t sub_10039BE98(void *a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void *), uint64_t a4)
{
  v54 = a3;
  v55 = a4;
  v5 = type metadata accessor for FMIPSafeLocationType();
  v53 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v49 - v8;
  v9 = sub_10007EBC0(&qword_1006BB1E0);
  v10 = __chkstk_darwin(v9 - 8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v49 - v12;
  v13 = sub_10007EBC0(&unk_1006BB1B0);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for FMIPSafeLocation();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v23 = UUID.uuidString.getter();
  sub_1000E65EC(v23, v24, v18);

  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v25 = &unk_1006BB1B0;
    v26 = v18;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    (*(v20 + 16))(v16, v22, v19);
    (*(v20 + 56))(v16, 0, 1, v19);
    v27 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
    v28 = a1;
    swift_beginAccess();
    sub_1000BBF40(v16, a1 + v27, &unk_1006BB1B0);
    swift_endAccess();
    v29 = v56;
    v49 = v19;
    FMIPSafeLocation.address.getter();
    v30 = v51;
    FMIPSafeLocation.type.getter();
    v32 = v52;
    v31 = v53;
    (*(v53 + 104))(v52, enum case for FMIPSafeLocationType.home(_:), v5);
    sub_1003ABA74(&qword_1006B1320, &type metadata accessor for FMIPSafeLocationType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v33 = *(v31 + 8);
    v33(v32, v5);
    v33(v30, v5);
    v35 = v57;
    v34 = v58;
    v36 = type metadata accessor for FMIPAddress();
    v37 = *(v36 - 8);
    if (v34 == v35)
    {
      v38 = v50;
      (*(v37 + 56))(v50, 1, 1, v36);
      v39 = [objc_opt_self() mainBundle];
      v59._object = 0x8000000100587150;
      v40._object = 0x8000000100587130;
      v59._countAndFlagsBits = 0xD000000000000025;
      v40._countAndFlagsBits = 0xD000000000000013;
      v41._countAndFlagsBits = 0;
      v41._object = 0xE000000000000000;
      v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v59);

      v54(v38, v42._countAndFlagsBits, v42._object);

      sub_100012DF0(v38, &qword_1006BB1E0);
      (*(v20 + 8))(v22, v49);
      v26 = v29;
      v25 = &qword_1006BB1E0;
    }

    else
    {
      v43 = v49;
      if ((*(v37 + 48))(v29, 1, v36) == 1)
      {
        v44 = swift_allocObject();
        v45 = v54;
        v46 = v55;
        v44[2] = v28;
        v44[3] = v45;
        v44[4] = v46;
        v47 = v28;

        dispatch thunk of FMIPReverseGeocodingCache.address(for:completion:)();
      }

      else
      {
        v54(v29, 0, 0);
      }

      (*(v20 + 8))(v22, v43);
      v25 = &qword_1006BB1E0;
      v26 = v29;
    }
  }

  return sub_100012DF0(v26, v25);
}

uint64_t sub_10039C514(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, void))
{
  v5 = sub_10007EBC0(&qword_1006BB1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  v8 = sub_10037F738();
  v10 = v9;
  v11 = type metadata accessor for FMIPSafeLocation();
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    sub_100007204(a1, v7, &qword_1006BB1E0);
    FMIPSafeLocation.address.setter();
  }

  (v8)(v13, 0);
  return a3(a1, 0, 0);
}

void sub_10039C650(uint64_t a1)
{
  My = type metadata accessor for Feature.FindMy();
  v11 = My;
  v12 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v4 = sub_100008FC0(v10);
  (*(*(My - 8) + 104))(v4, enum case for Feature.FindMy.spPlaySoundAll(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (My)
  {
    sub_10039C86C(a1);
  }

  else if ((*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) & 1) == 0)
  {
    v5 = type metadata accessor for FMItemDetailViewModel();
    v6 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton);
    if ((*(a1 + *(v5 + 80)) & 2) != 0)
    {
      v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
    }

    else
    {
      v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v6;
      *(v8 + 24) = 0;
      v12 = sub_100141408;
      v13 = v8;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100004AE4;
      v11 = &unk_10063A888;
      v9 = _Block_copy(v10);
      v6 = v6;

      [v7 animateWithDuration:v9 animations:0.35];
      _Block_release(v9);
    }

    v6[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
    sub_1000D17E8();
  }
}

void sub_10039C86C(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for FMItemDetailViewModel() + 80));
  if ((v2 & 0x806) != 0)
  {
    v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 0;
  }

  if ((v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] & 1) == 0 && (v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] & 1) == 0)
  {
    if ((v2 & 2) != 0)
    {
      v23 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
      if (v23 != 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7E0();
        swift_unknownObjectRelease();
      }

      v24 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v24)
      {
        sub_10039FF90();
      }

      v20 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 1;
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v17 = objc_opt_self();
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v40 = sub_100141428;
      v41 = v25;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A838;
    }

    else if ((v2 & 4) != 0)
    {
      v26 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
      if (v26 != 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7E0();
        swift_unknownObjectRelease();
      }

      v27 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v27)
      {
        sub_10039FF90();
      }

      v20 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v17 = objc_opt_self();
      v28 = swift_allocObject();
      *(v28 + 16) = v20;
      v40 = sub_100141428;
      v41 = v28;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A7E8;
    }

    else if ((v2 & 0x800) != 0 && v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted] == 1)
    {
      v3 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 0;
      if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7F0();
        swift_unknownObjectRelease();
      }

      v4 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention];
      *(v4 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = 3;
      v5 = v1;
      sub_1003F0AB4();
      v6 = v1;
      v7 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 1;
      if ((v7 & 1) == 0 && *(v4 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) == 1)
      {
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_100005B14(v8, qword_1006D4630);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Show sound error", v11, 2u);
        }

        v12 = objc_opt_self();
        v13 = swift_allocObject();
        v6 = v5;
        *(v13 + 16) = v5;
        v40 = sub_1003B0E6C;
        v41 = v13;
        v36 = _NSConcreteStackBlock;
        v37 = 1107296256;
        v38 = sub_100004AE4;
        v39 = &unk_10063A798;
        v14 = _Block_copy(&v36);
        v15 = v5;

        [v12 animateWithDuration:4 delay:v14 options:0 animations:0.3 completion:0.0];
        _Block_release(v14);
      }

      v16 = *&v6[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v16[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      *(v18 + 24) = 0;
      v40 = sub_100141408;
      v41 = v18;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100004AE4;
      v39 = &unk_10063A6F8;
      v19 = _Block_copy(&v36);
      v20 = v16;

      [v17 animateWithDuration:v19 animations:0.35];
      _Block_release(v19);
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      v40 = sub_100141428;
      v41 = v21;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A748;
    }

    else
    {
      v29 = v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
      v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 0;
      if (v29 == 1 && swift_unknownObjectWeakLoadStrong())
      {
        sub_10011D7F0();
        swift_unknownObjectRelease();
      }

      v30 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v30[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v17 = objc_opt_self();
      v31 = swift_allocObject();
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      v40 = sub_100141408;
      v41 = v31;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100004AE4;
      v39 = &unk_10063A658;
      v32 = _Block_copy(&v36);
      v20 = v30;

      [v17 animateWithDuration:v32 animations:0.35];
      _Block_release(v32);
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v20[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v33 = swift_allocObject();
      *(v33 + 16) = v20;
      v40 = sub_100141428;
      v41 = v33;
      v36 = _NSConcreteStackBlock;
      v37 = 1107296256;
      v22 = &unk_10063A6A8;
    }

    v38 = sub_100004AE4;
    v39 = v22;
    v34 = _Block_copy(&v36);
    v35 = v20;

    [v17 animateWithDuration:4 delay:v34 options:0 animations:0.3 completion:{0.0, v36, v37}];
    _Block_release(v34);
  }
}

uint64_t sub_10039D0F4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Play Sound button pressed", v11, 2u);
  }

  v12 = v4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending];
  v4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending] = 1;
  if (v12 != 1 && swift_unknownObjectWeakLoadStrong())
  {
    sub_10011D7E0();
    swift_unknownObjectRelease();
  }

  v13 = *(*&v4[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 16);
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 mainBundle];
  v24._object = 0x8000000100579A00;
  v17._countAndFlagsBits = 0xD000000000000023;
  v17._object = 0x80000001005902A0;
  v18.value._object = 0x80000001005799E0;
  v24._countAndFlagsBits = 0xD000000000000018;
  v18.value._countAndFlagsBits = 0xD000000000000013;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v24);

  sub_100062900(a2);
  v21 = v4;
  sub_1003DD088(v15, v20._countAndFlagsBits, v20._object, v21, a2, a3, v21, a1);

  sub_10001835C(a2);
}

void sub_10039D344(char a1, void (*a2)(void), uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v10 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for FMIPItem();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v37 = a5;
    v38 = a3;
    v17 = (*&a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
    swift_beginAccess();
    v19 = *v17;
    v18 = v17[1];

    sub_1000E5FF8(v19, v18, v12);

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100012DF0(v12, &qword_1006B07D0);
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_100005B14(v20, qword_1006D4630);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "FMItemDetailContentViewController: cannot play sound on unknown item", v23, 2u);
      }

      if (a2)
      {
LABEL_14:
        a2(0);
      }
    }

    else
    {
      (*(v14 + 32))(v16, v12, v13);
      v28 = *&a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v28[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 1;
      v29 = objc_opt_self();
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      aBlock[4] = sub_100141428;
      aBlock[5] = v30;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_10063A450;
      v31 = _Block_copy(aBlock);
      v32 = v28;

      [v29 animateWithDuration:4 delay:v31 options:0 animations:0.3 completion:0.0];
      _Block_release(v31);
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 1;
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] = 0;
      v32[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 1;
      sub_1000D17E8();
      v33 = a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      a4[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
      if (v33)
      {
        sub_10039FF90();
      }

      v34 = swift_allocObject();
      v34[2] = a4;
      v34[3] = a2;
      v34[4] = v38;

      v35 = a4;
      sub_100062900(a2);
      sub_1000DB0B0(v16, v37, 0, sub_1003B0134, v34);

      (*(v14 + 8))(v16, v13);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "FMItemDetailContentViewController: <snd>  Couldn't play sound, BT is off", v27, 2u);
    }

    if (a2)
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_10039D8AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v51 = a5;
  v52 = a6;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v55 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for DispatchQoS();
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v48 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v50 = a4;
  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted) = 1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v19 = *(v13 + 16);
  v49 = a1;
  v19(v17, a1, v12);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = a3;
  v23 = v21;
  v59 = v22;

  if (os_log_type_enabled(v20, v23))
  {
    v24 = swift_slowAlloc();
    v47 = v19;
    v25 = v24;
    v46 = swift_slowAlloc();
    aBlock[0] = v46;
    *v25 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v13 + 8))(v17, v12);
    v29 = sub_100005B4C(v26, v28, aBlock);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v60 = v59;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v30 = String.init<A>(describing:)();
    v32 = sub_100005B4C(v30, v31, aBlock);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v23, "FMItemDetailContentViewController: Play sound command finished with status: %s, error: %s", v25, 0x16u);
    swift_arrayDestroy();

    v19 = v47;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v33 = static OS_dispatch_queue.main.getter();
  v34 = v48;
  v19(v48, v49, v12);
  v35 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v39 = v50;
  v38 = v51;
  *(v37 + 2) = v50;
  *(v37 + 3) = v38;
  *(v37 + 4) = v52;
  (*(v13 + 32))(&v37[v35], v34, v12);
  *&v37[v36] = v59;
  aBlock[4] = sub_1003B0140;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063A4C8;
  v40 = _Block_copy(aBlock);
  swift_errorRetain();
  v41 = v39;
  sub_100062900(v38);

  v42 = v53;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v43 = v55;
  v44 = v58;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v40);

  (*(v57 + 8))(v43, v44);
  return (*(v54 + 8))(v42, v56);
}

uint64_t sub_10039DF24(_BYTE *a1, void (*a2)(_BOOL8), uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a4, v10);
  if (a5)
  {
    swift_getErrorValue();
    v14 = v23[5];
    swift_errorRetain();
    if (sub_100271D20(v14) == 1)
    {
      swift_getErrorValue();
      v15 = sub_100271E80(v23[1]);
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
      }

      else
      {
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v20 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v21 = 0;
      goto LABEL_12;
    }

LABEL_8:
    v21 = 1;
LABEL_12:
    sub_10039E134(v21, a1, a2, a3, v13, a5);

    return (*(v11 + 8))(v13, v10);
  }

  sub_10039E134(0, a1, a2, a3, v13, 0);
  return (*(v11 + 8))(v13, v10);
}

void sub_10039E134(int a1, _BYTE *a2, void (*a3)(_BOOL8), uint64_t a4, uint64_t a5, void *a6)
{
  v92 = a5;
  v93 = a3;
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v15 = &v81 - v14;
  if (a2[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] == 1)
  {
    v84 = a6;
    v87 = a1;
    v88 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight;
    v90 = a2;
    v86 = v13;
    v91 = v12;
    v89 = a4;
    My = type metadata accessor for Feature.FindMy();
    v100 = My;
    v17 = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
    v101 = v17;
    v18 = sub_100008FC0(&aBlock);
    v19 = *(*(My - 8) + 104);
    LODWORD(v83) = enum case for Feature.FindMy.spPlaySoundAll(_:);
    v19(v18);
    v20 = isFeatureEnabled(_:)();
    sub_100006060(&aBlock);
    if ((v20 & 1) == 0)
    {
      v21 = v90;
      v22 = *&v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v22[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v85 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v101 = sub_100141428;
      v102 = v23;
      aBlock = _NSConcreteStackBlock;
      v98 = 1107296256;
      v99 = sub_100004AE4;
      v100 = &unk_10063A518;
      v24 = _Block_copy(&aBlock);
      v25 = v22;

      [v85 animateWithDuration:4 delay:v24 options:0 animations:0.3 completion:0.0];
      _Block_release(v24);
      v21[v88] = 0;
    }

    v26 = v91;
    (*(v91 + 16))(v15, v92, v10);
    v27 = (*(v26 + 88))(v15, v10);
    v28 = enum case for FMIPItemActionStatus.success(_:);
    LODWORD(v85) = enum case for FMIPItemActionStatus.pending(_:);
    if (v27 == enum case for FMIPItemActionStatus.success(_:) || v27 == enum case for FMIPItemActionStatus.pending(_:))
    {
      v100 = My;
      v101 = v17;
      v30 = sub_100008FC0(&aBlock);
      (v19)(v30, v83, My);
      v31 = isFeatureEnabled(_:)();
      sub_100006060(&aBlock);
      v32 = v91;
      if ((v31 & 1) == 0)
      {
        v33 = v90;
        v34 = v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
        v90[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = 0;
        if (v34)
        {
          sub_10039FF90();
        }

        v35 = *&v33[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
        *(v35 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) = 1;
        *(v35 + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending) = 0;
        sub_1000D17E8();
      }

      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100005B14(v36, qword_1006D4630);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "FMItemDetailContentViewController: Play sound command completed successfully", v39, 2u);
      }

      if (v93)
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      v83 = sub_100005B14(v45, qword_1006D4630);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = v90;
      v82 = v10;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v96[0] = v51;
        *v50 = 136315138;
        aBlock = 0;
        v98 = 0xE000000000000000;
        if (v87)
        {
          v52 = 1702195828;
        }

        else
        {
          v52 = 0x65736C6166;
        }

        if (v87)
        {
          v53 = 0xE400000000000000;
        }

        else
        {
          v53 = 0xE500000000000000;
        }

        v54 = v53;
        String.append(_:)(*&v52);

        v55 = sub_100005B4C(aBlock, v98, v96);

        *(v50 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v46, v47, "FMItemDetailContentViewController: Show failure attention, should show it? %s", v50, 0xCu);
        sub_100006060(v51);
      }

      v32 = v91;
      v56 = v84;
      if (v84)
      {
        swift_getErrorValue();
        v56 = sub_100271D20(v94);
      }

      v57 = v87;
      v58 = sub_1003F19BC(v56);
      if ((v58 - 3) <= 1u)
      {
        v59 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
        swift_beginAccess();
        if (*(v59 + 32) > 500)
        {
          v58 = 2;
        }

        else
        {
          v58 = 3;
        }
      }

      v60 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention];
      *(v60 + OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode) = v58;
      sub_1003F0AB4();
      v61 = v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError];
      v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError] = v57 & 1;
      if (v61 != (v57 & 1))
      {
        if (v57)
        {
          if (*(v60 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed))
          {
            v62 = Logger.logObject.getter();
            v63 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              *v64 = 0;
              _os_log_impl(&_mh_execute_header, v62, v63, "FMItemDetailContentViewController: Show sound error", v64, 2u);
            }

            v65 = objc_opt_self();
            v66 = swift_allocObject();
            *(v66 + 16) = v49;
            v101 = sub_1003B01D4;
            v102 = v66;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_100004AE4;
            v100 = &unk_10063A608;
            v67 = _Block_copy(&aBlock);
            v68 = v49;

            [v65 animateWithDuration:4 delay:v67 options:0 animations:0.3 completion:0.0];
            _Block_release(v67);
          }
        }

        else
        {
          sub_10039FF90();
        }
      }

      v49[v88] = 0;
      v69 = *&v49[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
      v69[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
      sub_1000D17E8();
      v69[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
      sub_1000D3C9C();
      v70 = objc_opt_self();
      v71 = swift_allocObject();
      *(v71 + 16) = v69;
      *(v71 + 24) = 0;
      v101 = sub_100141408;
      v102 = v71;
      aBlock = _NSConcreteStackBlock;
      v98 = 1107296256;
      v99 = sub_100004AE4;
      v100 = &unk_10063A568;
      v72 = _Block_copy(&aBlock);
      v73 = v69;

      [v70 animateWithDuration:v72 animations:0.35];
      _Block_release(v72);
      v73[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
      v74 = swift_allocObject();
      *(v74 + 16) = v73;
      v101 = sub_100141428;
      v102 = v74;
      aBlock = _NSConcreteStackBlock;
      v98 = 1107296256;
      v99 = sub_100004AE4;
      v100 = &unk_10063A5B8;
      v75 = _Block_copy(&aBlock);
      v76 = v73;

      [v70 animateWithDuration:4 delay:v75 options:0 animations:0.3 completion:0.0];
      _Block_release(v75);
      v10 = v82;
      (*(v32 + 8))(v15, v82);
      if (v93)
      {
LABEL_49:
        v77 = *(v32 + 104);
        v78 = v86;
        v77(v86, v85, v10);
        sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v79 = v10;
        v80 = *(v32 + 8);
        v80(v78, v79);
        if (aBlock == v95)
        {
          v44 = 1;
        }

        else
        {
          v77(v78, v28, v79);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          v80(v78, v79);
          v44 = aBlock == v95;
        }

        goto LABEL_52;
      }
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "FMItemDetailContentViewController: Play sound command completed but stop sound was pressed.", v43, 2u);
    }

    if (v93)
    {
      v44 = 1;
LABEL_52:
      v93(v44);
    }
  }
}

uint64_t sub_10039ED70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v28 = a1;
  v29 = a2;
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100005B14(v8, qword_1006D4630);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMItemDetailContentViewController: Stop Sound button pressed", v11, 2u);
  }

  v12 = *&v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
  v12[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v13 = objc_opt_self();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v34 = sub_1001412AC;
  v35 = v14;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100004AE4;
  v33 = &unk_10063A338;
  v15 = _Block_copy(&aBlock);
  v16 = v12;

  [v13 animateWithDuration:4 delay:v15 options:0 animations:0.3 completion:0.0];
  _Block_release(v15);
  v16[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  sub_1000D3C9C();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  v34 = sub_100141408;
  v35 = v17;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_100004AE4;
  v33 = &unk_10063A388;
  v18 = _Block_copy(&aBlock);
  v19 = v16;

  [v13 animateWithDuration:v18 animations:0.35];
  _Block_release(v18);
  v19[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  sub_1000D17E8();
  v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight] = 1;
  v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight] = 0;
  v20 = *(*&v3[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v21 = *(*v20 + class metadata base offset for ManagedBuffer + 16);
  v22 = (*(*v20 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v20 + v22));
  (*(v5 + 16))(v7, v20 + v21, v4);
  os_unfair_lock_unlock((v20 + v22));

  v23 = swift_allocObject();
  v25 = v28;
  v24 = v29;
  v23[2] = v3;
  v23[3] = v25;
  v23[4] = v24;
  v26 = v3;
  sub_100062900(v25);
  sub_1000DB0B0(v7, 0, 1, sub_1003B00C0, v23);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10039F208(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v48 = a4;
  v49 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItemActionStatus();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v46 = v15;
  v47 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100005B14(v18, qword_1006D4630);
  v45 = *(v13 + 16);
  v45(v17, a1, v12);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = a1;
    v22 = v21;
    v42 = swift_slowAlloc();
    aBlock[0] = v42;
    *v22 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = a6;
    v25 = v24;
    (*(v13 + 8))(v17, v12);
    v26 = sub_100005B4C(v23, v25, aBlock);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v56 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v27 = String.init<A>(describing:)();
    v29 = sub_100005B4C(v27, v28, aBlock);

    *(v22 + 14) = v29;
    a6 = v44;
    _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: Stop sound command finished with status: %s : %s", v22, 0x16u);
    swift_arrayDestroy();

    a1 = v43;
  }

  else
  {

    (*(v13 + 8))(v17, v12);
  }

  sub_10000905C(0, &qword_1006AEDC0);
  v30 = static OS_dispatch_queue.main.getter();
  v31 = v47;
  v45(v47, a1, v12);
  v32 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v33 = swift_allocObject();
  v35 = v48;
  v34 = v49;
  *(v33 + 2) = v48;
  *(v33 + 3) = v34;
  *(v33 + 4) = a6;
  (*(v13 + 32))(&v33[v32], v31, v12);
  aBlock[4] = sub_1003B00CC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063A400;
  v36 = _Block_copy(aBlock);
  v37 = v35;
  sub_100062900(v34);

  v38 = v50;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  v39 = v52;
  v40 = v55;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v36);

  (*(v54 + 8))(v39, v40);
  return (*(v51 + 8))(v38, v53);
}

void sub_10039F858(uint64_t a1, void (*a2)(_BOOL8))
{
  v4 = type metadata accessor for FMIPItemActionStatus();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) == 1)
  {
    *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
    if (!a2)
    {
      return;
    }

    v9 = v6;
    (*(v5 + 104))(v8, enum case for FMIPItemActionStatus.success(_:), v6);
    sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(v5 + 8))(v8, v9);
    v10 = v15[1] == v15[0];
    goto LABEL_10;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMItemDetailContentViewController: Stop sound command completed but play sound was pressed.", v14, 2u);
  }

  if (a2)
  {
    v10 = 1;
LABEL_10:
    a2(v10);
  }
}

uint64_t sub_10039FAAC()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPAnalyticsActionType();
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for FMIPItemState();
  v4 = *(v41 - 8);
  v5 = __chkstk_darwin(v41);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v32 - v8;
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v14 = *(v32 + 40);
  v15 = *(*v14 + class metadata base offset for ManagedBuffer + 16);
  v16 = (*(*v14 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v14 + v16));
  v33 = *(v11 + 16);
  v34 = v11 + 16;
  v33(v13, v14 + v15, v10);
  os_unfair_lock_unlock((v14 + v16));

  FMIPItem.state.getter();
  v17 = *(v11 + 8);
  v35 = v13;
  v36 = v11 + 8;
  v37 = v10;
  v17(v13, v10);
  v18 = v17;
  static FMIPItemState.soundPlaying.getter();
  sub_1003ABA74(&qword_1006C0350, &type metadata accessor for FMIPItemState);
  v19 = v41;
  LOBYTE(v14) = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v20 = *(v4 + 8);
  v20(v7, v19);
  v20(v9, v19);
  if ((v14 & 1) != 0 || *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) == 1)
  {
    v21 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError);
    *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
    if (v21)
    {
      sub_10039FF90();
    }

    return sub_10039ED70(0, 0);
  }

  else
  {
    v23 = *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError);
    *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
    if (v23)
    {
      sub_10039FF90();
    }

    sub_10039D0F4(0, 0, 0);
    v24 = *(v32 + 40);
    v25 = *(*v24 + class metadata base offset for ManagedBuffer + 16);
    v26 = (*(*v24 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v24 + v26));
    v27 = v35;
    v28 = v37;
    v33(v35, v24 + v25, v37);
    os_unfair_lock_unlock((v24 + v26));

    v30 = v38;
    v29 = v39;
    v31 = v40;
    (*(v39 + 104))(v38, enum case for FMIPAnalyticsActionType.playSound(_:), v40);
    sub_1003A49A0(v27, v30);
    (*(v29 + 8))(v30, v31);
    return v18(v27, v28);
  }
}

void sub_10039FF90()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailContentViewController: Hide sound error", v5, 2u);
  }

  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v17 = sub_1003B0074;
  v18 = v7;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_100004AE4;
  v16 = &unk_10063A298;
  v8 = _Block_copy(&v13);
  v9 = v1;

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v17 = sub_1003B00B8;
  v18 = v10;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10037A044;
  v16 = &unk_10063A2E8;
  v11 = _Block_copy(&v13);
  v12 = v9;

  [v6 animateWithDuration:4 delay:v8 options:v11 animations:0.3 completion:0.0];
  _Block_release(v11);
  _Block_release(v8);
}

void sub_1003A01DC(char a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "FMItemDetailContentViewController: Hide sound error done (completed=%{BOOL}d)", v7, 8u);
  }

  if (a1)
  {
    v8 = *(a2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention);
    [v8 setAlpha:0.0];

    [v8 setHidden:1];
  }
}

void sub_1003A032C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "FMItemDetailContentViewController: Notify me button toggled", v8, 2u);
  }

  v9 = (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v11 = *v9;
  v10 = v9[1];

  sub_1000E5FF8(v11, v10, v4);

  v12 = type metadata accessor for FMIPItem();
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
  sub_100012DF0(v4, &qword_1006B07D0);
  if (v13 == 1)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "FMItemDetailContentViewController: cannot enable lost mode on unknown itemt", v16, 2u);
    }
  }
}

void sub_1003A0668()
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
    _os_log_impl(&_mh_execute_header, v3, v4, "FMItemDetailContentViewController: Left Behind Button Toggled", v5, 2u);
  }

  if (v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded] == 1)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000C5474(sub_1003B0E64, v6, 0, 0);
  }

  else
  {
    v7 = sub_10037F798();
    v9 = v8;
    v10 = type metadata accessor for FMIPSeparationEvent();
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {
      FMIPSeparationEvent.addSafeLocationTapped.setter();
    }

    (v7)(&aBlock, 0);
    v11 = objc_opt_self();
    v12 = [v11 mainBundle];
    v62._object = 0x800000010057D660;
    v13._countAndFlagsBits = 0xD00000000000002ALL;
    v13._object = 0x8000000100586AB0;
    v14.value._object = 0x800000010057D640;
    v62._countAndFlagsBits = 0xD00000000000001BLL;
    v14.value._countAndFlagsBits = 0xD000000000000016;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v62);

    sub_10007EBC0(&unk_1006B20B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100552220;
    v18 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress];
    v17 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress + 8];
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_10008EE84();
    if (v17)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = 0xE000000000000000;
    if (v17)
    {
      v20 = v17;
    }

    *(v16 + 32) = v19;
    *(v16 + 40) = v20;

    String.init(format:_:)();

    v21 = v11;
    v22 = [v11 mainBundle];
    v63._object = 0x800000010057D660;
    v23._countAndFlagsBits = 0xD00000000000002DLL;
    v23._object = 0x8000000100586AE0;
    v24.value._object = 0x800000010057D640;
    v63._countAndFlagsBits = 0xD00000000000001BLL;
    v24.value._countAndFlagsBits = 0xD000000000000016;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v63);

    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    v52 = v1;
    v27 = String._bridgeToObjectiveC()();

    v59 = sub_1003AFF48;
    v60 = v26;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A040;
    v28 = _Block_copy(&aBlock);

    v51 = objc_opt_self();
    v54 = [v51 actionWithTitle:v27 style:0 handler:v28];
    _Block_release(v28);

    v29 = v21;
    v30 = [v21 mainBundle];
    v64._object = 0x800000010057D660;
    v31._countAndFlagsBits = 0xD000000000000030;
    v31._object = 0x8000000100586B10;
    v32.value._object = 0x800000010057D640;
    v64._countAndFlagsBits = 0xD00000000000001BLL;
    v32.value._countAndFlagsBits = 0xD000000000000016;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v32, v30, v33, v64);

    v34 = String._bridgeToObjectiveC()();

    v35 = String._bridgeToObjectiveC()();

    v36 = [objc_opt_self() alertControllerWithTitle:v34 message:v35 preferredStyle:1];

    [v36 addAction:v54];
    v37 = [v29 mainBundle];
    v65._object = 0x800000010057D660;
    v38._countAndFlagsBits = 0xD000000000000032;
    v38._object = 0x8000000100591590;
    v39.value._object = 0x800000010057D640;
    v65._countAndFlagsBits = 0xD00000000000001BLL;
    v39.value._countAndFlagsBits = 0xD000000000000016;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v65);

    v41 = swift_allocObject();
    *(v41 + 16) = v52;
    v53 = v52;
    v42 = String._bridgeToObjectiveC()();

    v59 = sub_1003AFF88;
    v60 = v41;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A090;
    v43 = _Block_copy(&aBlock);

    v44 = [v51 actionWithTitle:v42 style:0 handler:v43];
    _Block_release(v43);

    [v36 addAction:v44];
    v45 = [v29 mainBundle];
    v46._countAndFlagsBits = 0xD000000000000013;
    v66._object = 0x800000010057B8F0;
    v46._object = 0x800000010057B8D0;
    v66._countAndFlagsBits = 0xD000000000000025;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v66);

    v48 = String._bridgeToObjectiveC()();

    v59 = State.rawValue.getter;
    v60 = 0;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100017328;
    v58 = &unk_10063A0B8;
    v49 = _Block_copy(&aBlock);

    v50 = [v51 actionWithTitle:v48 style:0 handler:v49];
    _Block_release(v49);

    [v36 addAction:v50];
    [v53 presentViewController:v36 animated:1 completion:0];
  }
}

void sub_1003A0E80(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10037F798();
  v11 = v10;
  v12 = type metadata accessor for FMIPSeparationEvent();
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    FMIPSeparationEvent.addToAllTapped.setter();
  }

  (v9)(v20, 0);
  v13 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v13, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0);
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
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "FMItemDetailContentViewController: No pending safe location.", v17, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    v19 = a1;
    sub_1003A2FC4(v8, 1, sub_1003B0034, v18);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003A11B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v11 = *(v19 - 8);
  __chkstk_darwin(v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_1003A1494(void *a1)
{
  v2 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for FMIPSafeLocation();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  sub_100007204(a1 + v9, v4, &unk_1006BB1B0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &unk_1006BB1B0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "FMItemDetailContentViewController: No pending safe location.", v13, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    v15 = a1;
    sub_1003A2FC4(v8, 0, sub_1003AFFD0, v14);

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1003A1750(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_10000905C(0, &qword_1006AEDC0);
    v40 = static OS_dispatch_queue.main.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = a2;
    aBlock[4] = a4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = a5;
    v17 = _Block_copy(aBlock);
    v18 = a2;

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1003ABA74(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v19 = v40;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v17);

    (*(v41 + 8))(v11, v9);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: Add Safe Location failed", v24, 2u);
    }

    v25 = objc_opt_self();
    v26 = [v25 mainBundle];
    v44._object = 0x800000010057D660;
    v27._countAndFlagsBits = 0xD00000000000001ELL;
    v27._object = 0x8000000100586B90;
    v28.value._object = 0x800000010057D640;
    v44._countAndFlagsBits = 0xD00000000000001BLL;
    v28.value._countAndFlagsBits = 0xD000000000000016;
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v44);

    v31 = [v25 mainBundle];
    v45._object = 0x800000010057D660;
    v32._countAndFlagsBits = 0xD00000000000002ALL;
    v32._object = 0x8000000100586BB0;
    v33.value._object = 0x800000010057D640;
    v45._countAndFlagsBits = 0xD00000000000001BLL;
    v33.value._countAndFlagsBits = 0xD000000000000016;
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v45);

    v36 = [v25 mainBundle];
    v46._object = 0x8000000100579B60;
    v37._countAndFlagsBits = 0x4F545455425F4B4FLL;
    v37._object = 0xEF454C5449545F4ELL;
    v46._countAndFlagsBits = 0xD000000000000021;
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v46);

    sub_10027CEB4(v30._countAndFlagsBits, v30._object, v35._countAndFlagsBits, v35._object, v39._countAndFlagsBits, v39._object);
  }
}

uint64_t sub_1003A1CC0(uint64_t a1)
{
  v2 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 1;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v6 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v5 + v6, v4, type metadata accessor for FMItemDetailViewModel);
  sub_1003912F8(v4);
  return sub_1003ABABC(v4, type metadata accessor for FMItemDetailViewModel);
}

void sub_1003A1DFC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v28 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMItemDetailContentViewController: Rename button toggled", v14, 2u);
  }

  v15 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v16 = (*&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v18 = *v16;
  v17 = v16[1];

  sub_1000E5FF8(v18, v17, v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100012DF0(v4, &qword_1006B07D0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "FMItemDetailContentViewController: cannot rename an unknown item", v21, 2u);
    }
  }

  else
  {
    v22 = v28;
    (*(v6 + 32))(v28, v4, v5);
    v23 = *&v1[v15];
    (*(v6 + 16))(v9, v22, v5);
    v24 = objc_allocWithZone(type metadata accessor for FMRenameItemViewController());

    v25 = sub_1000C8980(v23, v9);
    objc_allocWithZone(type metadata accessor for FMTransparentNavigationController());
    v26 = v25;
    v27 = sub_1000CC510(v26, 2);
    [v27 setDelegate:v27];
    [v1 presentViewController:v27 animated:1 completion:0];

    (*(v6 + 8))(v22, v5);
  }
}

uint64_t sub_1003A225C()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v6 = *(*&v0[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  (*(v2 + 16))(v4, v6 + v7, v1);
  os_unfair_lock_unlock((v6 + v8));

  v9 = *&v0[v5];

  sub_1000DEF40(v4, v9, v0);

  return (*(v2 + 8))(v4, v1);
}

void sub_1003A2410(int a1)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for FMIPItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v30 = &v26 - v13;
  v14 = (*(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v15 = *v14;
  v16 = v14[1];

  sub_1000E5FF8(v15, v16, v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &qword_1006B07D0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100005B14(v17, qword_1006D4630);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "FMItemDetailContentViewController: Cannot toggle notify when left behind for unknown item", v20, 2u);
    }
  }

  else
  {
    v27 = *(v9 + 32);
    v21 = v30;
    v27(v30, v7, v8);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v9 + 16))(v12, v21, v8);
    v23 = (*(v9 + 80) + 25) & ~*(v9 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v22;
    *(v24 + 24) = v28 & 1;
    v27((v24 + v23), v12, v8);
    sub_1000C5474(sub_1003AFEC8, v24, 0, 0);
    v25 = v29;
    sub_1003B027C(v14, v29, type metadata accessor for FMItemDetailViewModel);
    sub_10038AC90(v25);
    sub_10039C650(v25);
    sub_100392B50(v25);
    sub_1003987F8();

    sub_1003ABABC(v25, type metadata accessor for FMItemDetailViewModel);
    (*(v9 + 8))(v30, v8);
    *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  }
}

uint64_t sub_1003A2868(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = type metadata accessor for FMIPNotifyItemActionType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItem();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *(result + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = a3 & 1;
    v15 = result;
    (*(v11 + 16))(v13, a4, v10);
    (*(v7 + 104))(v9, enum case for FMIPNotifyItemActionType.whenSeparated(_:), v6);
    type metadata accessor for FMIPNotifyItemAction();
    swift_allocObject();
    v16 = FMIPNotifyItemAction.init(item:type:state:)();
    v17 = swift_allocObject();
    *(v17 + 16) = v15;

    v18 = v15;
    sub_1000D6A90(v16, sub_1003AFF40, v17);
  }

  return result;
}

void sub_1003A2AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMIPItemActionStatus();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005B14(v11, qword_1006D4630);
  (*(v8 + 16))(v10, a1, v7);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = a4;
    v15 = v14;
    v26 = swift_slowAlloc();
    *v15 = 136315394;
    sub_1003ABA74(&unk_1006B4D60, &type metadata accessor for FMIPItemActionStatus);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = sub_100005B4C(v16, v18, &v26);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    v25 = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v20 = String.init<A>(describing:)();
    v22 = sub_100005B4C(v20, v21, &v26);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMItemDetailContentViewController: Enable leashing completed with status: %s, error: %s", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v24;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
}

void sub_1003A2DC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v3 = type metadata accessor for FMSeparationWelcomeScreenViewController();
  v4 = objc_allocWithZone(v3);

  v6 = sub_1004DEC88(v5, 0);
  v7 = objc_allocWithZone(v3);

  v9 = sub_1004DEC88(v8, 1);
  *&v9[OBJC_IVAR____TtC6FindMy39FMSeparationWelcomeScreenViewController_delegate + 8] = &off_100639198;
  swift_unknownObjectWeakAssign();
  v10 = *&v1[v2];
  sub_10007EBC0(&qword_1006AFC30);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552EE0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v9;
  v12 = objc_allocWithZone(type metadata accessor for FMPageViewController());

  v13 = v6;
  v14 = v9;
  v15 = sub_100141E10(v10, v11);
  v16 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v15];
  [v1 presentViewController:v16 animated:1 completion:0];
  v17 = [objc_opt_self() standardUserDefaults];
  v18 = String._bridgeToObjectiveC()();
  [v17 setBool:1 forKey:v18];
}

uint64_t sub_1003A2FC4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for FMIPSafeLocation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v17 = swift_slowAlloc();
    v26 = v11;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemNotificationsViewController: Add Safe Location", v17, 2u);
    v11 = v26;
  }

  sub_10007EBC0(&unk_1006AF770);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100552220;
  v19 = (*(v5 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *(v18 + 32) = v20;
  *(v18 + 40) = v21;
  if (a2)
  {

    (*(v11 + 16))(v13, a1, v10);
    type metadata accessor for FMIPAssignSafeLocationToAllSupportedBeaconsAction();
    swift_allocObject();
    v22 = FMIPAssignSafeLocationToAllSupportedBeaconsAction.init(location:)();
  }

  else
  {
    (*(v11 + 16))(v13, a1, v10);
    type metadata accessor for FMIPAssignMultipleSafeLocationsItemAction();
    swift_allocObject();

    v22 = FMIPAssignMultipleSafeLocationsItemAction.init(beaconUUIDs:location:)();
  }

  v23 = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = a4;

  sub_1000D6C5C(v23, sub_10021E964, v24);
}

uint64_t sub_1003A3310(uint64_t a1)
{
  v97 = a1;
  v2 = sub_10007EBC0(&qword_1006BC990);
  __chkstk_darwin(v2 - 8);
  v101 = &v87 - v3;
  v4 = sub_10007EBC0(&unk_1006BB1B0);
  __chkstk_darwin(v4 - 8);
  v102 = &v87 - v5;
  v99 = type metadata accessor for FMIPItem();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for TimeZone();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v8 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v9 - 8);
  v11 = &v87 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v103 = v1;
  v17 = *(*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v100 = type metadata accessor for FMPendingActionInfo(0);
  sub_100007204(v17 + *(v100 + 28), v11, &unk_1006B0000);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_100012DF0(v11, &unk_1006B0000);
  }

  v92 = v13;
  v19 = *(v13 + 32);
  v93 = v12;
  v19(v15, v11, v12);
  v20 = [objc_allocWithZone(NSDateFormatter) init];
  static TimeZone.autoupdatingCurrent.getter();
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (v94)[1](v8, v95);
  [v20 setTimeZone:isa];

  [v20 setTimeStyle:1];
  v95 = v15;
  v22 = Date._bridgeToObjectiveC()().super.isa;
  v94 = v20;
  v23 = [v20 stringFromDate:v22];

  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v24;

  v91 = v16;
  v25 = v103;
  v87 = *&v103[v16];
  sub_10007EBC0(&unk_1006AF770);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100552220;
  v90 = *&v25[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v27 = *(v90 + 40);
  v28 = *(*v27 + class metadata base offset for ManagedBuffer + 16);
  v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v27 + v29));
  v30 = v98;
  v31 = v27 + v28;
  v32 = v96;
  v33 = v99;
  (*(v98 + 16))(v96, v31, v99);
  os_unfair_lock_unlock((v27 + v29));

  v34 = FMIPItem.identifier.getter();
  v36 = v35;
  (*(v30 + 8))(v32, v33);
  *(v26 + 32) = v34;
  *(v26 + 40) = v36;
  v37 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  swift_beginAccess();
  v38 = v102;
  sub_100007204(&v25[v37], v102, &unk_1006BB1B0);
  v39 = v101;
  sub_100007204(v97, v101, &qword_1006BC990);
  v40 = objc_allocWithZone(type metadata accessor for FMSeparationNotificationWelcomeViewController());
  v41 = &v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollHandler];
  *v41 = 0;
  v41[1] = 0;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v42 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_titleLabel;
  *&v40[v42] = [objc_allocWithZone(UILabel) init];
  v43 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_subtitleLabel;
  *&v40[v43] = [objc_allocWithZone(UILabel) init];
  v44 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollView;
  *&v40[v44] = [objc_allocWithZone(UIScrollView) init];
  v45 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_scrollContentView;
  *&v40[v45] = [objc_allocWithZone(UIView) init];
  v46 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton;
  v47 = objc_opt_self();
  v48 = [v47 systemBlueColor];
  v49 = type metadata accessor for FMSingleLinePlatterButton();
  v50 = objc_allocWithZone(v49);
  *&v40[v46] = sub_100038758(v48, 1, 0, 1);
  v51 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton;
  v52 = [v47 clearColor];
  v53 = objc_allocWithZone(v49);
  *&v40[v51] = sub_100038758(v52, 1, 0, 1);
  v54 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_informativeImage;
  sub_10000905C(0, &qword_1006BC2B0);
  v55 = sub_1003DE3DC(0xD00000000000001ALL, 0x8000000100586BE0, 6778480, 0xE300000000000000);
  v56 = [objc_allocWithZone(UIImageView) initWithImage:v55];

  *&v40[v54] = v56;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_heightConstraint] = 0;
  (*(v30 + 56))(&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleItem], 1, 1, v33);
  v57 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_singleDevice;
  v58 = type metadata accessor for FMIPDevice();
  (*(*(v58 - 8) + 56))(&v40[v57], 1, 1, v58);
  v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationGroupType] = 2;
  v59 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_safeLocationSuggestion;
  v60 = type metadata accessor for FMIPSafeLocation();
  (*(*(v60 - 8) + 56))(&v40[v59], 1, 1, v60);
  v61 = &v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationTime];
  *v61 = 0;
  v61[1] = 0;
  v62 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_separationLocation;
  v63 = type metadata accessor for FMIPSeparationLocation();
  (*(*(v63 - 8) + 56))(&v40[v62], 1, 1, v63);
  v64 = OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_mapSnapshotter;
  type metadata accessor for FMMapSnapshotter();
  swift_allocObject();
  *&v40[v64] = sub_10012114C();
  v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_type] = 0;
  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconUUIDs] = v26;
  swift_beginAccess();
  v65 = v38;
  v66 = v87;
  sub_1000BBE44(v65, &v40[v59], &unk_1006BB1B0);
  swift_endAccess();
  v67 = *(v66 + 56) + OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingActionInfo;
  swift_beginAccess();
  v68 = 1;
  v69 = *(v67 + *(v100 + 32));
  if (v69)
  {
    v68 = *(v69 + 16);
  }

  *&v40[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_beaconCount] = v68;
  v70 = v88;
  *v61 = v89;
  v61[1] = v70;

  swift_beginAccess();
  sub_1000BBE44(v39, &v40[v62], &qword_1006BC990);
  swift_endAccess();
  *&v40[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] = v66;
  v71 = type metadata accessor for FMMediatedViewController();
  v106.receiver = v40;
  v106.super_class = v71;

  v72 = objc_msgSendSuper2(&v106, "initWithNibName:bundle:", 0, 0);
  sub_1002EEB9C();
  sub_1002EF8A8();
  v73 = objc_allocWithZone(UITapGestureRecognizer);
  v74 = v72;
  v75 = [v73 initWithTarget:v74 action:"primaryAction"];
  [*&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_actionButton] addGestureRecognizer:v75];
  v76 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v74 action:"secondaryAction"];

  [*&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_secondaryActionButton] addGestureRecognizer:v76];

  sub_100012DF0(v39, &qword_1006BC990);
  sub_100012DF0(v102, &unk_1006BB1B0);
  *&v74[OBJC_IVAR____TtC6FindMy45FMSeparationNotificationWelcomeViewController_delegate + 8] = &off_100639188;
  v77 = v103;
  swift_unknownObjectWeakAssign();
  v78 = [objc_allocWithZone(type metadata accessor for FMTransparentNavigationController()) initWithRootViewController:v74];
  [v77 presentViewController:v78 animated:1 completion:0];
  v79 = *(*&v77[v91] + 16);
  v80 = (v90 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v82 = *v80;
  v81 = v80[1];
  v104 = 0xD00000000000001ELL;
  v105 = 0x800000010058DB30;

  v83 = v79;
  v84._countAndFlagsBits = v82;
  v84._object = v81;
  String.append(_:)(v84);
  v85 = [objc_opt_self() standardUserDefaults];
  v86 = String._bridgeToObjectiveC()();

  [v85 setBool:1 forKey:v86];

  return (*(v92 + 8))(v95, v93);
}

void sub_1003A402C(const char *a1, void (*a2)(char *, uint64_t, uint64_t), const char *a3)
{
  v26 = a3;
  v27 = a2;
  v5 = v3;
  v6 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for FMIPItem();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, a1, v16, 2u);
  }

  v17 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v18 = (*(v5 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  sub_1000E5FF8(v20, v19, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100012DF0(v8, &qword_1006B07D0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, v26, v23, 2u);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v24 = *(v5 + v17);

    v27(v12, v24, v5);

    (*(v10 + 8))(v12, v9);
  }
}

void sub_1003A4498()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v17._object = 0x800000010057FC90;
  v3._countAndFlagsBits = 0xD000000000000023;
  v3._object = 0x800000010057FC60;
  v17._countAndFlagsBits = 0xD000000000000035;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v17);

  v5 = [v1 mainBundle];
  v18._object = 0x80000001005942A0;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x8000000100594270;
  v18._countAndFlagsBits = 0xD000000000000039;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v18);

  v8 = [v1 mainBundle];
  v19._object = 0x8000000100579B60;
  v9._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v9._object = 0xEF454C5449545F4ELL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  v11 = String._bridgeToObjectiveC()();

  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  v13 = String._bridgeToObjectiveC()();

  v14 = String._bridgeToObjectiveC()();

  v15 = [objc_opt_self() alertControllerWithTitle:v13 message:v14 preferredStyle:1];

  [v15 addAction:v12];
  [v0 presentViewController:v15 animated:1 completion:0];
}

void sub_1003A47E0()
{
  sub_1003B0BFC(319, &qword_1006BB190, &type metadata accessor for FMIPSafeLocation);
  if (v0 <= 0x3F)
  {
    sub_1003B0BFC(319, &qword_1006B67B0, &type metadata accessor for FMIPSeparationEvent);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1003A49A0(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v23 = a1;
  v2 = type metadata accessor for FMIPItem();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v4 - 8);
  v20 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPAnalyticsActionType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPActionEvent();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v21, v8);

  v16 = v23;
  v17 = FMIPItem.isOwner.getter();
  v18 = &enum case for FMIPAnalyticsOwnerContext.owner(_:);
  if ((v17 & 1) == 0)
  {
    v18 = &enum case for FMIPAnalyticsOwnerContext.shared(_:);
  }

  (*(v5 + 104))(v7, *v18, v20);
  (*(v24 + 16))(v22, v16, v25);
  FMIPAnalyticsProductType.init(item:)();
  FMIPActionEvent.init(type:ownerContext:productType:)();
  FMIPManager.enqueue(actionEvent:)();
  (*(v13 + 8))(v15, v12);
}

uint64_t sub_1003A4CF4()
{
  v1 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v4 + v5, v3, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v3);
  sub_10039C650(v3);
  sub_100392B50(v3);
  sub_1003987F8();
  result = sub_1003ABABC(v3, type metadata accessor for FMItemDetailViewModel);
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

uint64_t sub_1003A4DF4()
{
  v1 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v5 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v4 + v5, v3, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v3, type metadata accessor for FMItemDetailViewModel);
}

uint64_t sub_1003A4EF4()
{
  sub_10000905C(0, &qword_1006B4980);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {

    return sub_1004244CC();
  }

  return result;
}

uint64_t sub_1003A4F78(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView);
  v2[OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_disabled] = 1;
  [v2 setUserInteractionEnabled:0];
  sub_1003F61C0();
  v3 = *(a1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView);
  v3[OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_disabled] = 1;
  [v3 setUserInteractionEnabled:0];
  sub_1004FD044();
  return sub_1003A5010();
}

uint64_t sub_1003A5010()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource] + 40);
  v7 = *(*v6 + class metadata base offset for ManagedBuffer + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v6 + v8));
  (*(v3 + 16))(v5, v6 + v7, v2);
  os_unfair_lock_unlock((v6 + v8));

  type metadata accessor for FMIPFirmwareUpdateAction();
  swift_allocObject();
  v9 = FMIPFirmwareUpdateAction.init(item:updateInitiated:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;

  v11 = v1;
  sub_1000D6A90(v9, sub_1003B0B34, v10);
}

void sub_1003A51F8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v32._object = 0x8000000100579A00;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001005943B0;
  v5.value._object = 0x80000001005799E0;
  v32._countAndFlagsBits = 0xD000000000000018;
  v5.value._countAndFlagsBits = 0xD000000000000013;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v32);

  v7 = [v2 mainBundle];
  v33._object = 0x8000000100579A00;
  v8._countAndFlagsBits = 0xD00000000000002ELL;
  v8._object = 0x80000001005943E0;
  v9.value._object = 0x80000001005799E0;
  v33._countAndFlagsBits = 0xD000000000000018;
  v9.value._countAndFlagsBits = 0xD000000000000013;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v33);

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();

  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = [v2 mainBundle];
  v34._object = 0x800000010057B4A0;
  v15._countAndFlagsBits = 0x425F4C45434E4143;
  v15._object = 0xED00004E4F545455;
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v34);

  v17 = String._bridgeToObjectiveC()();

  v18 = objc_opt_self();
  v19 = [v18 actionWithTitle:v17 style:1 handler:0];

  v20 = [v2 mainBundle];
  v35._object = 0x8000000100579A00;
  v21._countAndFlagsBits = 0xD00000000000002DLL;
  v21._object = 0x8000000100594410;
  v22.value._object = 0x80000001005799E0;
  v35._countAndFlagsBits = 0xD000000000000018;
  v22.value._countAndFlagsBits = 0xD000000000000013;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v23, v35);

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;

  v25 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_100009624;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_10063AE28;
  v26 = _Block_copy(aBlock);

  v27 = [v18 actionWithTitle:v25 style:0 handler:v26];
  _Block_release(v26);

  [v13 addAction:v19];
  [v13 addAction:v27];
  [v30 presentViewController:v13 animated:1 completion:0];
}

uint64_t sub_1003A55E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27[1] = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v27[0] = v11;
    v20 = v19;
    v28[0] = v19;
    *v18 = 136315138;
    v28[3] = a3;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570);
    v21 = String.init<A>(describing:)();
    v23 = sub_100005B4C(v21, v22, v28);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMItemDetailContentViewController: firmware update completed with error: %s", v18, 0xCu);
    sub_100006060(v20);
    v11 = v27[0];
  }

  (*(v11 + 104))(v13, enum case for FMIPItemActionStatus.success(_:), v10);
  sub_1003ABA74(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v11 + 8))(v13, v10);
  v24 = *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v25 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v24 + v25, v9, type metadata accessor for FMItemDetailViewModel);
  sub_10038AC90(v9);
  sub_10039C650(v9);
  sub_100392B50(v9);
  sub_1003987F8();
  result = sub_1003ABABC(v9, type metadata accessor for FMItemDetailViewModel);
  *(a4 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 0;
  return result;
}

void sub_1003A5990()
{
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  *(*(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 96) = 1;
  sub_100104C2C();
}

uint64_t sub_1003A59D0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  if (a3)
  {
    return sub_10039ED70(a6, a7);
  }

  else
  {
    return sub_10039D0F4(a2, a6, a7);
  }
}

uint64_t sub_1003A59F8()
{
  sub_1003A2410(0);

  return sub_10037F428(0);
}

uint64_t sub_1003A5A28(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  v6 = enum case for DelegatedSharesReportingState.unknown(_:);
  v7 = type metadata accessor for DelegatedSharesReportingState();
  (*(*(v7 - 8) + 104))(v2 + v5, v6, v7);
  v8 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation;
  v9 = sub_10007EBC0(&qword_1006BCF00);
  (*(*(v9 - 8) + 56))(v2 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation;
  v11 = sub_10007EBC0(&qword_1006BCF10);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation;
  v13 = sub_10007EBC0(&unk_1006BCF20);
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  v14 = (v2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  *v14 = 0;
  v14[1] = 0;
  v15 = *(a1 + 24);

  v16 = *(v15 + 32);

  *(v2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_actionController) = v16;
  v17 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_accessoryId;
  v18 = type metadata accessor for UUID();
  (*(*(v18 - 8) + 32))(v2 + v17, a2, v18);
  v19 = (v2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  v20 = *(v2 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate);
  *v19 = 0;
  v19[1] = 0;
  sub_10001835C(v20);
  v21 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  v22 = enum case for LostModeReportingState.unknown(_:);
  v23 = type metadata accessor for LostModeReportingState();
  (*(*(v23 - 8) + 104))(v2 + v21, v22, v23);
  return v2;
}

uint64_t sub_1003A5C98()
{
  v0 = type metadata accessor for PersonModel.Handle();
  __chkstk_darwin(v0 - 8);
  v1 = FMIPItemLostModeMetadata.email.getter();
  v3 = v2;

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    FMIPItemLostModeMetadata.email.getter();
  }

  else
  {
    FMIPItemLostModeMetadata.ownerNumber.getter();
  }

  PersonModel.Handle.init(rawValue:)();
  FMIPItemLostModeMetadata.message.getter();
  return LostModeInfo.init(handle:message:)();
}

uint64_t sub_1003A5D6C()
{
  v1 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingState;
  v2 = type metadata accessor for DelegatedSharesReportingState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_reportingState;
  v4 = type metadata accessor for LostModeReportingState();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesUpdaterContinuation, &qword_1006BD098);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_delegatedSharesReportingStateContinuation, &qword_1006BD0C8);
  sub_100012DF0(v0 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_itemProximityContinuation, &qword_1006BD0A0);
  sub_10001835C(*(v0 + OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_onLostModeUpdate));

  v5 = OBJC_IVAR____TtC6FindMy37FMItemDetailLostModeStatusCoordinator_accessoryId;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_1003A5F34()
{
  type metadata accessor for DelegatedSharesReportingState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for LostModeReportingState();
    if (v1 <= 0x3F)
    {
      sub_1003A614C(319, &qword_1006BCEF8, &qword_1006BCF00);
      if (v2 <= 0x3F)
      {
        sub_1003A614C(319, &qword_1006BCF08, &qword_1006BCF10);
        if (v3 <= 0x3F)
        {
          sub_1003A614C(319, &qword_1006BCF18, &unk_1006BCF20);
          if (v4 <= 0x3F)
          {
            type metadata accessor for UUID();
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

void sub_1003A614C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10007EC08(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1003A61A0(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = a1;

  v5 = *(a1 + 16);
  if (!v5)
  {
    return result;
  }

  v6 = (a1 + 32);
  while (1)
  {
    v10 = *v6++;
    v9 = v10;
    v11 = v10 == 2;
    v12 = 0xD000000000000015;
    if (v10 == 2)
    {
      v12 = 0xD000000000000010;
    }

    v13 = 0x8000000100578BC0;
    if (v11)
    {
      v13 = 0x8000000100578BA0;
    }

    v14 = 0x7449656D616E6572;
    if (v9)
    {
      v14 = 0x744965766F6D6572;
    }

    v15 = v9 <= 1 ? v14 : v12;
    v16 = v9 <= 1 ? 0xEA00000000006D65 : v13;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v2 + 16);
    v31 = v18;
    *(v2 + 16) = 0x8000000000000000;
    v19 = sub_10000726C(v15, v16);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_1001B4FEC(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_10000726C(v15, v16);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_30;
      }

LABEL_22:
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v30 = v19;
    sub_1001BD468();
    v19 = v30;
    if (v25)
    {
LABEL_3:
      v7 = v19;

      v8 = v31;
      *(v31[7] + v7) = v9;
      goto LABEL_4;
    }

LABEL_23:
    v8 = v18;
    v18[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v18[6] + 16 * v19);
    *v27 = v15;
    v27[1] = v16;
    *(v18[7] + v19) = v9;
    v28 = v18[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_29;
    }

    v18[2] = v29;
LABEL_4:
    *(v2 + 16) = v8;
    result = swift_endAccess();
    if (!--v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003A63D0(uint64_t a1)
{
  v2 = v1;
  v54 = type metadata accessor for UUID();
  v4 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v56 = &v50 - v12;
  __chkstk_darwin(v11);
  v57 = &v50 - v13;
  *(v2 + 24) = a1;

  v15 = *(a1 + 16);
  if (!v15)
  {
    return result;
  }

  v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v17 = *(v7 + 72);
  v51 = (v4 + 8);
  v52 = (v4 + 32);
  v55 = v17;
  while (1)
  {
    v21 = v57;
    sub_1003B027C(v16, v57, type metadata accessor for FMBeaconSharingModuleEntry);
    v22 = v21;
    v23 = v56;
    sub_1003B027C(v22, v56, type metadata accessor for FMBeaconSharingModuleEntry);
    v24 = sub_10007EBC0(&qword_1006B9D48);
    v25 = (*(*(v24 - 8) + 48))(v23, 2, v24);
    if (v25)
    {
      v26 = v25 == 1 ? 25933 : 0x6F73726550646441;
      v27 = v25 == 1 ? 0xE200000000000000 : 0xE90000000000006ELL;
    }

    else
    {
      v28 = *(v24 + 48);
      v29 = *(v24 + 64);
      v30 = v53;
      v31 = v56;
      v32 = v54;
      (*v52)(v53, v56 + v29, v54);
      v26 = UUID.uuidString.getter();
      v27 = v33;
      (*v51)(v30, v32);
      sub_1003ABABC(v31 + v28, type metadata accessor for FMBeaconSharingModuleShareState);
      sub_1003ABABC(v31, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    }

    swift_beginAccess();
    v34 = v10;
    sub_1003B0214(v57, v10, type metadata accessor for FMBeaconSharingModuleEntry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v2 + 16);
    v36 = v58;
    *(v2 + 16) = 0x8000000000000000;
    v38 = sub_10000726C(v26, v27);
    v39 = v36[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      break;
    }

    v42 = v37;
    if (v36[3] >= v41)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v10 = v34;
        if (v37)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001BD9B8();
        v10 = v34;
        if (v42)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1001B590C(v41, isUniquelyReferenced_nonNull_native);
      v43 = sub_10000726C(v26, v27);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_27;
      }

      v38 = v43;
      v10 = v34;
      if (v42)
      {
LABEL_3:

        v18 = v58;
        v19 = v58[7] + v38 * v55;
        v20 = v55;
        sub_1003AFE20(v10, v19, type metadata accessor for FMBeaconSharingModuleEntry);
        goto LABEL_4;
      }
    }

    v18 = v58;
    v58[(v38 >> 6) + 8] |= 1 << v38;
    v45 = (v18[6] + 16 * v38);
    *v45 = v26;
    v45[1] = v27;
    v46 = v18[7] + v38 * v55;
    v20 = v55;
    sub_1003B0214(v10, v46, type metadata accessor for FMBeaconSharingModuleEntry);
    v47 = v18[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_26;
    }

    v18[2] = v49;
LABEL_4:
    *(v2 + 16) = v18;

    result = swift_endAccess();
    v16 += v20;
    if (!--v15)
    {
      return result;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1003A68A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v36 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7 - 8);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v38 = &v35 - v11;
  *(v2 + 24) = a1;

  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);
    v39 = (v36 + 16);
    v37 = (v36 + 8);
    while (1)
    {
      v16 = v38;
      sub_1003B027C(v14, v38, type metadata accessor for FMModernPlatterButtonEntry);
      v17 = *v39;
      v18 = v4;
      (*v39)(v6, v16, v4);
      swift_beginAccess();
      sub_1003B0214(v16, v40, type metadata accessor for FMModernPlatterButtonEntry);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v2 + 16);
      v20 = v41;
      *(v2 + 16) = 0x8000000000000000;
      v21 = sub_1001B3964(v6);
      v23 = v20[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        break;
      }

      v27 = v22;
      if (v20[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v21;
          sub_1001BFA4C();
          v21 = v34;
        }
      }

      else
      {
        sub_1001B8E38(v26, isUniquelyReferenced_nonNull_native);
        v21 = sub_1001B3964(v6);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_17;
        }
      }

      v4 = v18;
      v29 = v41;
      if (v27)
      {
        sub_1003AFE20(v40, v41[7] + v21 * v15, type metadata accessor for FMModernPlatterButtonEntry);
        (*v37)(v6, v18);
      }

      else
      {
        v41[(v21 >> 6) + 8] |= 1 << v21;
        v30 = v36;
        v31 = v21;
        v17((v29[6] + *(v36 + 72) * v21), v6, v4);
        sub_1003B0214(v40, v29[7] + v31 * v15, type metadata accessor for FMModernPlatterButtonEntry);
        (*(v30 + 8))(v6, v4);
        v32 = v29[2];
        v25 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v25)
        {
          goto LABEL_16;
        }

        v29[2] = v33;
      }

      *(v2 + 16) = v29;

      result = swift_endAccess();
      v14 += v15;
      if (!--v13)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

void sub_1003A6C78(char a1)
{
  v4 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v2) + 0x148))(&v4, v3);
  }
}

void sub_1003A6D40(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    (*((swift_isaMask & *v3) + 0x148))(a1, v4);
  }
}

uint64_t sub_1003A6E10(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *(a1 + qword_1006C2B70 + 16);
  v10[0] = *(a1 + qword_1006C2B70);
  v10[1] = v6;
  v10[2] = *(a1 + qword_1006C2B70 + 32);
  v11 = *(a1 + qword_1006C2B70 + 48);
  sub_100007204(v10, v9, a2);
  sub_10037D084(v10);
  sub_100012DF0(v10, a2);

  a4(v7);
}

uint64_t sub_1003A6EC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = sub_10007EBC0(a3);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = swift_projectBox();
  swift_beginAccess();
  (*(v4 + 16))(v6, v7, v3);
  dispatch thunk of UITableViewDiffableDataSource.apply(_:animatingDifferences:completion:)();
  return (*(v4 + 8))(v6, v3);
}

id sub_1003A6FF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UIListContentConfiguration();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMModernPlatterButtonEntry(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  v17 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [a1 dequeueReusableCellWithIdentifier:v17 forIndexPath:isa];

  swift_beginAccess();
  v20 = *(a4 + 16);
  if (*(v20 + 16))
  {

    v21 = sub_1001B3964(a3);
    if (v22)
    {
      sub_1003B027C(*(v20 + 56) + *(v11 + 72) * v21, v14, type metadata accessor for FMModernPlatterButtonEntry);

      sub_1003B0214(v14, v16, type metadata accessor for FMModernPlatterButtonEntry);
      [v19 setAccessoryView:0];
      [v19 setAccessoryType:0];
      v23 = objc_opt_self();
      v24 = v19;
      v25 = [v23 clearColor];
      [v24 setBackgroundColor:v25];

      v26 = [objc_allocWithZone(UIView) init];
      v27 = [v23 secondarySystemFillColor];
      [v26 setBackgroundColor:v27];

      [v24 setSelectedBackgroundView:v26];
      sub_1004ED5E8();
      UIListContentConfiguration.text.setter();
      v28 = [v23 systemBlueColor];
      v29 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v29(v41, 0);
      [v24 setAccessoryView:0];
      [v24 setAccessoryType:0];
      LODWORD(v27) = v16[*(v10 + 20)];
      [v24 setUserInteractionEnabled:v16[*(v10 + 20)]];

      v30 = [v24 contentView];
      v31 = v30;
      v32 = 0.5;
      if (v27)
      {
        v32 = 1.0;
      }

      [v30 setAlpha:{v32, v39}];

      v33 = v40;
      v41[3] = v40;
      v41[4] = &protocol witness table for UIListContentConfiguration;
      v34 = sub_100008FC0(v41);
      v35 = v39;
      (*(v39 + 16))(v34, v9, v33);
      UITableViewCell.contentConfiguration.setter();
      v36 = v24;
      v37 = String._bridgeToObjectiveC()();
      [v36 setAccessibilityIdentifier:v37];

      (*(v35 + 8))(v9, v33);
      sub_1003ABABC(v16, type metadata accessor for FMModernPlatterButtonEntry);
    }

    else
    {
    }
  }

  return v19;
}

void sub_1003A74C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = objc_opt_self();
  sub_1003B027C(a3, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FMBeaconSharingModuleEntry);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  sub_1003B0214(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FMBeaconSharingModuleEntry);
  aBlock[4] = sub_1003AFC34;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100639C30;
  v11 = _Block_copy(aBlock);

  [v8 setCompletionBlock:v11];
  _Block_release(v11);
}

uint64_t sub_1003A7678(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  if (v2)
  {

    v2(a2);

    return sub_10001835C(v2);
  }

  return result;
}

uint64_t sub_1003A76EC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1003A7724(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = v4;
  v8[4] = sub_1003AF914;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100004AE4;
  v8[3] = &unk_100639910;
  v7 = _Block_copy(v8);

  [v5 setCompletionBlock:v7];
  _Block_release(v7);
}

uint64_t sub_1003A7818(uint64_t result, char *a2)
{
  v3 = *a2;
  v2 = *(result + 32);
  if (v2)
  {

    v2(&v3);

    return sub_10001835C(v2);
  }

  return result;
}

uint64_t sub_1003A78F0(uint64_t a1)
{
  v474 = a1;
  *&v458 = swift_getObjectType();
  v2 = type metadata accessor for ItemManagementSectionView();
  __chkstk_darwin(v2 - 8);
  v379 = &v374 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = type metadata accessor for ManagedItem.Properties();
  __chkstk_darwin(v378);
  v376 = &v374 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ManagedItem();
  __chkstk_darwin(v5 - 8);
  v377 = &v374 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnerInfoSectionView();
  __chkstk_darwin(v7 - 8);
  v380 = &v374 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v420 = type metadata accessor for UIHostingControllerSizingOptions();
  v418 = *(v420 - 8);
  __chkstk_darwin(v420);
  v419 = &v374 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LostModeManagementSectionView();
  __chkstk_darwin(v10 - 8);
  v417 = &v374 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ItemContactInfoEditItemsProvider();
  __chkstk_darwin(v12 - 8);
  v416 = &v374 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ItemContactInfoUpdater();
  __chkstk_darwin(v14 - 8);
  v415 = &v374 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ItemContactInfoValidator();
  __chkstk_darwin(v16 - 8);
  v414 = &v374 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ItemContactInfoFormatter();
  __chkstk_darwin(v18 - 8);
  v413 = &v374 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ItemContactInfoProvider();
  __chkstk_darwin(v20 - 8);
  v412 = &v374 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DelegatedSharesInvalidator();
  __chkstk_darwin(v22 - 8);
  v457 = &v374 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PunchoutHandler();
  __chkstk_darwin(v24 - 8);
  v456 = &v374 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PasteboardHandler();
  __chkstk_darwin(v26 - 8);
  v455 = &v374 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FMIPBeaconSharingLimits();
  v408 = *(v28 - 8);
  v409 = v28;
  __chkstk_darwin(v28);
  v407 = &v374 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ShareLiveLocationURLGenerator();
  __chkstk_darwin(v30 - 8);
  v454 = &v374 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LostModeManagementSectionViewModel.Dependencies();
  __chkstk_darwin(v32 - 8);
  v411 = &v374 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10007EBC0(&qword_1006BCFD8);
  __chkstk_darwin(v34 - 8);
  v453 = &v374 - v35;
  v442 = type metadata accessor for DelegatedSharesUpdater();
  v441 = *(v442 - 8);
  v36 = __chkstk_darwin(v442);
  v452 = &v374 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v464 = &v374 - v38;
  v39 = sub_10007EBC0(&qword_1006BCFE0);
  v405 = *(v39 - 8);
  v406 = v39;
  __chkstk_darwin(v39);
  v404 = &v374 - v40;
  v440 = sub_10007EBC0(&qword_1006BCFE8);
  v439 = *(v440 - 8);
  v41 = __chkstk_darwin(v440);
  v403 = &v374 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v437 = &v374 - v43;
  v438 = type metadata accessor for ItemProximityProvider();
  v436 = *(v438 - 8);
  v44 = __chkstk_darwin(v438);
  v410 = &v374 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v463 = &v374 - v46;
  v47 = sub_10007EBC0(&qword_1006BCFF0);
  v401 = *(v47 - 8);
  v402 = v47;
  __chkstk_darwin(v47);
  v400 = &v374 - v48;
  v49 = sub_10007EBC0(&qword_1006BCFF8);
  v434 = *(v49 - 8);
  v435 = v49;
  v50 = __chkstk_darwin(v49);
  v399 = &v374 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v432 = &v374 - v52;
  v433 = type metadata accessor for LostModeStatusProvider();
  v431 = *(v433 - 8);
  v53 = __chkstk_darwin(v433);
  v451 = &v374 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v462 = &v374 - v55;
  v56 = type metadata accessor for DelegatedSharesReportingStatusProvider();
  v429 = *(v56 - 8);
  v430 = v56;
  v57 = __chkstk_darwin(v56);
  v450 = &v374 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v461 = &v374 - v59;
  v394 = sub_10007EBC0(&qword_1006BD000);
  v392 = *(v394 - 8);
  __chkstk_darwin(v394);
  v393 = &v374 - v60;
  v61 = sub_10007EBC0(&qword_1006BD008);
  v427 = *(v61 - 8);
  v428 = v61;
  v62 = __chkstk_darwin(v61);
  v391 = &v374 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v426 = &v374 - v64;
  v65 = type metadata accessor for LostAccessoryType();
  v389 = *(v65 - 8);
  v390 = v65;
  __chkstk_darwin(v65);
  v388 = &v374 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for LostAccessory();
  v424 = *(v67 - 8);
  v425 = v67;
  v68 = __chkstk_darwin(v67);
  v449 = &v374 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v460 = &v374 - v70;
  v469 = type metadata accessor for LostAccessory.Capabilities();
  v459 = *(v469 - 8);
  v71 = __chkstk_darwin(v469);
  v387 = &v374 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v375 = &v374 - v74;
  v75 = __chkstk_darwin(v73);
  v374 = &v374 - v76;
  __chkstk_darwin(v75);
  v423 = &v374 - v77;
  v78 = sub_10007EBC0(&unk_1006B20C0);
  __chkstk_darwin(v78 - 8);
  v385 = &v374 - v79;
  v470 = type metadata accessor for UUID();
  v422 = *(v470 - 8);
  v80 = __chkstk_darwin(v470);
  v448 = &v374 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __chkstk_darwin(v80);
  v386 = &v374 - v83;
  v398 = v84;
  __chkstk_darwin(v82);
  v473 = &v374 - v85;
  v468 = type metadata accessor for FMItemDetailViewModel();
  v395 = *(v468 - 8);
  v86 = __chkstk_darwin(v468);
  v396 = v87;
  v397 = &v374 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v421 = &v374 - v88;
  v444 = type metadata accessor for FMIPItem();
  v465 = *(v444 - 8);
  __chkstk_darwin(v444);
  v443 = &v374 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v90 - 8);
  v383 = &v374 - v91;
  v445 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v445);
  v93 = &v374 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  v475 = v1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v447 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton;
  v472 = objc_opt_self();
  v94 = [v472 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v384 = 0x8000000100593DC0;
  v95 = type metadata accessor for FMIconPlatterButton();
  v96 = objc_allocWithZone(v95);
  v97 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v96[v97] = [objc_allocWithZone(UIImageView) init];
  v98 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v96[v98] = [objc_allocWithZone(UILabel) init];
  v99 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v96[v99] = [objc_allocWithZone(UILabel) init];
  v100 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v96[v100] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v101 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v102 = type metadata accessor for FMPlatterBackgroundView();
  v381 = v102;
  v103 = objc_allocWithZone(v102);
  v103[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v484.receiver = v103;
  v484.super_class = v102;
  v104 = objc_msgSendSuper2(&v484, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v96[v101] = v104;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v105 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v94;
  v471 = type metadata accessor for FMPlatterIcon;
  sub_1003B027C(v93, &v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v106 = &v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v106 = 0xD00000000000001CLL;
  *(v106 + 1) = 0x8000000100593DC0;
  *(v106 + 3) = 0;
  *(v106 + 4) = 0;
  *(v106 + 2) = 0;
  v106[40] = 2;
  v96[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v96[v105] = 1;
  v483.receiver = v96;
  v483.super_class = v95;
  v107 = v94;
  v108 = objc_msgSendSuper2(&v483, "init");
  sub_1000D3C9C();
  v109 = objc_opt_self();
  v466 = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = v108;
  *(v110 + 24) = 0;
  *&v487 = sub_100140B98;
  *(&v487 + 1) = v110;
  *&v485 = _NSConcreteStackBlock;
  *(&v485 + 1) = 1107296256;
  v467 = &v486;
  *&v486 = sub_100004AE4;
  *(&v486 + 1) = &unk_100639320;
  v111 = _Block_copy(&v485);
  v112 = v108;

  [v109 animateWithDuration:v111 animations:0.35];
  _Block_release(v111);

  v446 = type metadata accessor for FMPlatterIcon;
  sub_1003ABABC(v93, type metadata accessor for FMPlatterIcon);
  *(v447 + v475) = v112;
  v382 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton;
  v113 = [v472 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v114 = objc_allocWithZone(v95);
  v115 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v114[v115] = [objc_allocWithZone(UIImageView) init];
  v116 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v114[v116] = [objc_allocWithZone(UILabel) init];
  v117 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v114[v117] = [objc_allocWithZone(UILabel) init];
  v118 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v114[v118] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v119 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v120 = v381;
  v121 = objc_allocWithZone(v381);
  v121[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v482.receiver = v121;
  v482.super_class = v120;
  v122 = objc_msgSendSuper2(&v482, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v114[v119] = v122;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v123 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v113;
  sub_1003B027C(v93, &v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v471);
  v124 = &v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v124 = 0xD00000000000001FLL;
  *(v124 + 1) = 0x800000010057F980;
  v124[40] = 0;
  *(v124 + 3) = 0;
  *(v124 + 4) = 0;
  *(v124 + 2) = 0;
  v114[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v114[v123] = 0;
  v481.receiver = v114;
  v481.super_class = v95;
  v125 = v113;
  v126 = objc_msgSendSuper2(&v481, "init");
  sub_1000D3C9C();
  v127 = swift_allocObject();
  *(v127 + 16) = v126;
  *(v127 + 24) = 0;
  *&v487 = sub_100141408;
  *(&v487 + 1) = v127;
  *&v485 = _NSConcreteStackBlock;
  *(&v485 + 1) = 1107296256;
  *&v486 = sub_100004AE4;
  *(&v486 + 1) = &unk_100639370;
  v128 = _Block_copy(&v485);
  v129 = v126;

  [v466 animateWithDuration:v128 animations:0.35];
  _Block_release(v128);

  sub_1003ABABC(v93, v446);
  *(v475 + v382) = v129;
  v382 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton;
  v130 = [v472 systemGreenColor];
  v131 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  *v93 = 1;
  v132 = enum case for FMFindingType.owner(_:);
  v133 = type metadata accessor for FMFindingType();
  (*(*(v133 - 8) + 104))(&v93[v131], v132, v133);
  v134 = enum case for FMFindingTechnology.precision(_:);
  v135 = type metadata accessor for FMFindingTechnology();
  (*(*(v135 - 8) + 104))(v93, v134, v135);
  swift_storeEnumTagMultiPayload();
  v136 = objc_allocWithZone(v95);
  v137 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v136[v137] = [objc_allocWithZone(UIImageView) init];
  v138 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v136[v138] = [objc_allocWithZone(UILabel) init];
  v139 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v136[v139] = [objc_allocWithZone(UILabel) init];
  v140 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v136[v140] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v141 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v142 = objc_allocWithZone(v120);
  v142[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v480.receiver = v142;
  v480.super_class = v120;
  v143 = objc_msgSendSuper2(&v480, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v136[v141] = v143;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v144 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v130;
  sub_1003B027C(v93, &v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v471);
  v145 = &v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v145 = 0xD000000000000019;
  *(v145 + 1) = 0x8000000100586460;
  v145[40] = 0;
  *(v145 + 3) = 0;
  *(v145 + 4) = 0;
  *(v145 + 2) = 0;
  v136[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v136[v144] = 0;
  v479.receiver = v136;
  v479.super_class = v95;
  v146 = v130;
  v147 = objc_msgSendSuper2(&v479, "init");
  sub_1000D3C9C();
  v148 = swift_allocObject();
  *(v148 + 16) = v147;
  *(v148 + 24) = 0;
  *&v487 = sub_100141408;
  *(&v487 + 1) = v148;
  *&v485 = _NSConcreteStackBlock;
  *(&v485 + 1) = 1107296256;
  *&v486 = sub_100004AE4;
  *(&v486 + 1) = &unk_1006393C0;
  v149 = _Block_copy(&v485);
  v150 = v147;

  [v466 animateWithDuration:v149 animations:0.35];
  _Block_release(v149);

  sub_1003ABABC(v93, v446);
  v151 = v475;
  *(v475 + v382) = v150;
  v152 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView;
  v153 = objc_allocWithZone(type metadata accessor for FMItemMarkAsLostView());
  *(v151 + v152) = sub_1004FBB6C();
  v154 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView;
  *(v151 + v154) = [objc_allocWithZone(UIView) init];
  v155 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView;
  v156 = objc_allocWithZone(v120);
  v156[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v478.receiver = v156;
  v478.super_class = v120;
  v157 = objc_msgSendSuper2(&v478, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  v158 = v151;
  *(v151 + v155) = v157;
  v382 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) = 0;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare) = 0;
  *(v151 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  v159 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView;
  v160 = objc_allocWithZone(type metadata accessor for FMItemNotificationsView());
  *(v151 + v159) = sub_1003F51F8();
  v161 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention;
  v162 = type metadata accessor for FMExtendedPlatterInfoView();
  v163 = objc_allocWithZone(v162);
  *(v158 + v161) = sub_10032B2F8(1, 0);
  v164 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention;
  v165 = objc_allocWithZone(v162);
  *(v158 + v164) = sub_10032B2F8(1, 0);
  v166 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention;
  v167 = objc_allocWithZone(v162);
  *(v158 + v166) = sub_10032B2F8(1, 0);
  v168 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention;
  v169 = objc_allocWithZone(v162);
  *(v158 + v168) = sub_10032B2F8(0, 0);
  v170 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
  v171 = objc_allocWithZone(v162);
  *(v158 + v170) = sub_10032B2F8(1, 0);
  v172 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention;
  v173 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView());
  v174 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v173[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v173[v174] = 0;
  v175 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v158 + v172) = v175;
  v176 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention;
  v177 = objc_allocWithZone(type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule());
  *(v158 + v176) = sub_1003E5B30();
  v178 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention;
  v179 = objc_allocWithZone(v162);
  *(v158 + v178) = sub_10032B2F8(1, 0);
  v180 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention;
  v181 = objc_allocWithZone(v162);
  *(v158 + v180) = sub_10032B2F8(1, 1);
  v182 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  *(v158 + v182) = [objc_allocWithZone(UIStackView) init];
  v183 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  *(v158 + v183) = [objc_allocWithZone(UIStackView) init];
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager) = 0;
  v184 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription);
  *v184 = 0;
  v184[1] = 0;
  v185 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription);
  *v185 = 0;
  v185[1] = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isUpdatingShareInFlight) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 1;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = 1;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v186 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  v187 = type metadata accessor for FMIPSafeLocation();
  (*(*(v187 - 8) + 56))(v158 + v186, 1, 1, v187);
  v188 = (v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v188 = 0;
  v188[1] = 0;
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 0;
  v189 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
  v190 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v190 - 8) + 56))(v158 + v189, 1, 1, v190);
  v191 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_geocodingCache;
  v192 = v383;
  static Locale.autoupdatingCurrent.getter();
  v193 = type metadata accessor for Locale();
  (*(*(v193 - 8) + 56))(v192, 0, 1, v193);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v158 + v191) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  type metadata accessor for FMItemDetailDataSource();
  swift_allocObject();

  v195 = sub_100105520(v194);
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) = v195;
  v196 = *(v195 + 40);
  v471 = v195;
  v197 = *(*v196 + class metadata base offset for ManagedBuffer + 16);
  v198 = (*(*v196 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v196 + v198));
  v199 = v465;
  v445 = *(v465 + 16);
  v446 = (v465 + 16);
  v200 = v443;
  v201 = v444;
  v445(v443, v196 + v197, v444);
  os_unfair_lock_unlock((v196 + v198));

  v202 = FMIPItem.identifier.getter();
  v204 = v203;
  v205 = *(v199 + 8);
  v205(v200, v201);
  v206 = objc_allocWithZone(type metadata accessor for FMTrustedLocationDetailViewController());

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController) = sub_1004A811C(v207, v202, v204);
  v208 = objc_allocWithZone(type metadata accessor for FMFindingExperiencePresenter(0));

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findingExperiencePresenter) = sub_100160AB0(v209);
  v210 = objc_allocWithZone(type metadata accessor for FMErrorConditionsAttentionModule());

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_errorConditionsAttentionModule) = sub_1004F28B0(v211);
  v212 = objc_allocWithZone(type metadata accessor for FMAccessoryDetailView());
  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView) = sub_1002CC8E8();
  v213 = objc_allocWithZone(type metadata accessor for FMBeaconSharingModuleView(0));

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingView) = sub_100299D2C(v214);
  v215 = v471;
  v216 = *(v471 + 5);
  v217 = *(*v216 + class metadata base offset for ManagedBuffer + 16);
  v218 = (*(*v216 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v216 + v218));
  v445(v200, v216 + v217, v201);
  os_unfair_lock_unlock((v216 + v218));

  LOBYTE(v216) = FMIPItem.isOwner.getter();
  v465 = v199 + 8;
  v383 = v205;
  v205(v200, v201);
  v219 = objc_allocWithZone(type metadata accessor for FMItemBottomActionsModule());
  *&v219[qword_1006B1698 + 8] = 0;
  swift_unknownObjectWeakInit();
  v219[qword_1006B16A0] = v216 & 1;
  v220 = sub_10037B210(0);
  v221 = String._bridgeToObjectiveC()();
  [v220 setAccessibilityIdentifier:v221];

  *(v158 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule) = v220;
  v222 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  v223 = v421;
  sub_1003B027C(v215 + v222, v421, type metadata accessor for FMItemDetailViewModel);
  v224 = *(v223 + *(v468 + 108));
  *(v158 + v382) = v224;
  v225 = *(v447 + v158);
  v226 = 0x8000000100590640;
  v227 = 0xD000000000000018;
  if (v224)
  {
    v228 = 1;
  }

  else
  {
    v227 = 0xD00000000000001CLL;
    v226 = v384;
    v228 = 2;
  }

  v229 = &v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v230 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  v231 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 8];
  v232 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 16];
  v233 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 24];
  v234 = *&v225[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext + 32];
  *v229 = v227;
  *(v229 + 1) = v226;
  *(v229 + 2) = 0;
  *(v229 + 3) = 0;
  *(v229 + 4) = 0;
  v235 = v229[40];
  v229[40] = v228;
  v236 = v225;
  v237 = v234;
  v238 = v422;
  sub_1000D5A54(v230, v231, v232, v233, v237, v235);
  sub_1000D3C9C();
  v239 = swift_allocObject();
  *(v239 + 16) = v236;
  *(v239 + 24) = 1;
  *&v487 = sub_100141408;
  *(&v487 + 1) = v239;
  *&v485 = _NSConcreteStackBlock;
  *(&v485 + 1) = 1107296256;
  *&v486 = sub_100004AE4;
  *(&v486 + 1) = &unk_100639410;
  v240 = _Block_copy(&v485);
  v241 = v236;
  v242 = v470;
  v243 = v241;

  [v466 animateWithDuration:v240 animations:0.35];
  v244 = v240;
  v245 = v385;
  _Block_release(v244);

  v246 = v223;
  UUID.init(uuidString:)();
  if ((*(v238 + 48))(v245, 1, v242) == 1)
  {
    goto LABEL_25;
  }

  v247 = *(v238 + 32);
  v467 = (v238 + 32);
  v466 = v247;
  (v247)(v473, v245, v242);
  *&v485 = 0;
  sub_1003ABA74(&qword_1006BD010, &type metadata accessor for LostAccessory.Capabilities);
  v248 = v423;
  dispatch thunk of OptionSet.init(rawValue:)();
  v249 = *(v223 + *(v468 + 56));
  if ((v249 & 2) != 0)
  {
    v250 = v238;
    v251 = v375;
    static LostAccessory.Capabilities.isLostModeEnabled.getter();
    v252 = v374;
    sub_10037A098(v374, v251);
    v253 = v246;
    v254 = *(v459 + 8);
    v255 = v251;
    v238 = v250;
    v256 = v469;
    v254(v255, v469);
    v254(v252, v256);
    v246 = v253;
  }

  if ((v249 & 0x1000) != 0 && (*(*(v474 + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) & 1) == 0)
  {
    v257 = v375;
    static LostAccessory.Capabilities.isDelegatedSharesEnabled.getter();
    v258 = v238;
    v259 = v374;
    sub_10037A098(v374, v257);
    v260 = *(v459 + 8);
    v261 = v469;
    v260(v257, v469);
    v262 = v259;
    v238 = v258;
    v260(v262, v261);
  }

  v263 = *(v238 + 16);
  v264 = v473;
  v265 = v470;
  v263(v386, v473, v470);
  v385 = (v238 + 16);
  v266 = v263;
  v447 = v263;
  (*(v459 + 16))(v387, v248, v469);
  v267 = FMIPProductType.isAirTag.getter();
  v268 = &enum case for LostAccessoryType.airTag(_:);
  if ((v267 & 1) == 0)
  {
    v268 = &enum case for LostAccessoryType.accessory(_:);
  }

  (*(v389 + 104))(v388, *v268, v390);
  LostAccessory.init(id:capabilities:accessoryType:)();
  v269 = v448;
  v266(v448, v264, v265);
  type metadata accessor for FMItemDetailLostModeStatusCoordinator(0);
  v270 = swift_allocObject();

  v272 = sub_1003A5A28(v271, v269);
  *(v475 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeStatusCoordinator) = v270;
  __chkstk_darwin(v272);
  type metadata accessor for DelegatedSharesReportingState();
  v273 = v246;
  v274 = enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:);
  (*(v392 + 104))(v393, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v394);

  v275 = v426;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v427 + 16))(v391, v275, v428);
  DelegatedSharesReportingStatusProvider.init(stream:)();

  LostModeStatusProvider.init(streamCreationBlock:)();
  type metadata accessor for ItemProximityProvider.Proximity();
  (*(v401 + 104))(v400, v274, v402);
  v276 = v432;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v434 + 16))(v399, v276, v435);
  v277 = ItemProximityProvider.init(stream:)();
  __chkstk_darwin(v277);
  v402 = v270;
  v278 = v474;
  type metadata accessor for DelegatedURLShare();
  (*(v405 + 104))(v404, v274, v406);
  v279 = v437;
  AsyncStream.init(_:bufferingPolicy:_:)();
  (*(v439 + 16))(v403, v279, v440);
  DelegatedSharesUpdater.init(stream:)();
  v280 = *(v278 + 24);
  v468 = *(v280 + 32);
  v281 = sub_10007EBC0(&qword_1006BD018);
  (*(*(v281 - 8) + 56))(v453, 1, 1, v281);
  (*(v424 + 16))(v449, v460, v425);
  (*(v429 + 16))(v450, v461, v430);
  (*(v431 + 16))(v451, v462, v433);
  v282 = OBJC_IVAR____TtC6FindMy17FMDevicesProvider_sharingLimits;
  swift_beginAccess();
  v284 = v407;
  v283 = v408;
  v285 = v280 + v282;
  v286 = v409;
  (*(v408 + 16))(v407, v285, v409);

  v406 = FMIPBeaconSharingLimits.maxDelegatedShares.getter();
  (*(v283 + 8))(v284, v286);
  v287 = v397;
  sub_1003B027C(v273, v397, type metadata accessor for FMItemDetailViewModel);
  v288 = v448;
  v289 = v470;
  v290 = v385;
  v447(v448, v473, v470);
  v291 = (*(v395 + 80) + 16) & ~*(v395 + 80);
  v292 = (v396 + v291 + 7) & 0xFFFFFFFFFFFFFFF8;
  v293 = (v290[64] + v292 + 8) & ~v290[64];
  v294 = (v398 + v293 + 7) & 0xFFFFFFFFFFFFFFF8;
  v295 = swift_allocObject();
  sub_1003B0214(v287, v295 + v291, type metadata accessor for FMItemDetailViewModel);
  *(v295 + v292) = v474;
  (v466)(v295 + v293, v288, v289);
  v296 = v468;
  *(v295 + v294) = v468;
  *(v295 + ((v294 + 15) & 0xFFFFFFFFFFFFFFF8)) = v458;

  ShareLiveLocationURLGenerator.init(maxShareLocationLimit:shareURLGenerator:)();
  PasteboardHandler.init(copyURLBlock:)();
  PunchoutHandler.init(urlPunchoutBlock:activityPunchoutBlock:)();

  DelegatedSharesInvalidator.init(urlInvalidationBlock:)();
  (*(v441 + 16))(v452, v464, v442);
  (*(v436 + 16))(v410, v463, v438);
  v297 = v471;

  ItemContactInfoProvider.init(contactInfoBlock:notifyWhenFoundBlock:)();
  ItemContactInfoFormatter.init(phoneNumberFormatBlock:phoneNumberUnformatBlock:)();
  ItemContactInfoValidator.init(emailValidationBlock:phoneNumberValidationBlock:)();
  v298 = swift_allocObject();
  *(v298 + 16) = v297;
  *(v298 + 24) = v296;
  v299 = swift_allocObject();
  *(v299 + 16) = v297;
  *(v299 + 24) = v296;
  v300 = swift_allocObject();
  *(v300 + 16) = v297;
  *(v300 + 24) = v296;
  swift_retain_n();
  swift_retain_n();
  ItemContactInfoUpdater.init(enableBlock:updateBlock:disableBlock:)();
  ItemContactInfoEditItemsProvider.init(visibleEditItemsBlock:userInteractableEditItemsBlock:)();
  LostModeManagementSectionViewModel.Dependencies.init(delegatedSharesStatusProvider:lostModeStatusProvider:linkGenerator:pasteboardHandler:punchoutHandler:delegatedSharesInvalidator:delegatedSharesUpdater:itemProximityProvider:contactInfoProvider:contactInfoFormatter:contactInfoValidator:contactInfoUpdater:contactInfoEditItemsProvider:)();
  type metadata accessor for LostModeManagementSectionViewModel();
  swift_allocObject();
  v301 = LostModeManagementSectionViewModel.init(initialDestination:lostAccessory:dependencies:)();
  v302 = v475;
  *(v475 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostViewModel) = v301;

  LostModeManagementSectionView.init(viewModel:)();
  v303 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD020));
  v304 = UIHostingController.init(rootView:)();
  v305 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController;
  *(v302 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostHostingController) = v304;
  v306 = sub_10007EBC0(&qword_1006B3280);
  v307 = *(v418 + 80);
  v467 = *(v418 + 72);
  v466 = v307;
  v308 = swift_allocObject();
  v458 = xmmword_100552220;
  *(v308 + 16) = xmmword_100552220;
  v309 = v304;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v485 = v308;
  v310 = sub_1003ABA74(&qword_1006C1310, &type metadata accessor for UIHostingControllerSizingOptions);
  v311 = sub_10007EBC0(&qword_1006B3288);
  v312 = sub_100004098(&qword_1006C1320, &qword_1006B3288);
  v456 = v311;
  v455 = v312;
  v457 = v310;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v245 = *(v302 + v305);
  UIHostingController.safeAreaRegions.setter();

  v313 = [*(v302 + v305) view];
  if (!v313)
  {
    __break(1u);
    goto LABEL_23;
  }

  v314 = v313;
  v315 = [v472 clearColor];
  [v314 setBackgroundColor:v315];

  type metadata accessor for OwnerInfoSectionViewModel();
  swift_allocObject();
  v316 = OwnerInfoSectionViewModel.init(account:serialNumber:)();
  v317 = v475;
  *(v475 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewModel) = v316;

  OwnerInfoSectionView.init(viewModel:)();
  v318 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD028));
  v319 = UIHostingController.init(rootView:)();
  v320 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController;
  *(v317 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_ownerInfoSectionViewHostingController) = v319;
  v454 = v306;
  v321 = swift_allocObject();
  *(v321 + 16) = v458;
  v322 = v319;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v485 = v321;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v245 = *(v317 + v320);
  UIHostingController.safeAreaRegions.setter();

  v323 = [*(v317 + v320) view];
  if (!v323)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v324 = v323;
  v325 = [v472 clearColor];
  [v324 setBackgroundColor:v325];

  v326 = *(v471 + 5);
  v327 = *(*v326 + class metadata base offset for ManagedBuffer + 16);
  v328 = (*(*v326 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v326 + v328));
  v329 = v443;
  v330 = v444;
  v445(v443, v326 + v327, v444);
  os_unfair_lock_unlock((v326 + v328));

  FMIPItem.isOwner.getter();
  (v383)(v329, v330);
  *&v485 = 0;
  sub_1003ABA74(&qword_1006BD030, &type metadata accessor for ManagedItem.Properties);
  dispatch thunk of OptionSet.init(rawValue:)();
  ManagedItem.init(isOwnedByMe:properties:)();
  type metadata accessor for ItemManagementSectionViewModel();
  swift_allocObject();
  v331 = ItemManagementSectionViewModel.init(managedItem:)();
  v332 = v475;
  *(v475 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementViewModel) = v331;

  ItemManagementSectionView.init(viewModel:)();
  v333 = objc_allocWithZone(sub_10007EBC0(&qword_1006BD038));
  v334 = UIHostingController.init(rootView:)();
  v335 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController;
  *(v332 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemManagementHostingController) = v334;
  v336 = swift_allocObject();
  *(v336 + 16) = v458;
  v337 = v334;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  *&v485 = v336;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v338 = *(v332 + v335);
  UIHostingController.safeAreaRegions.setter();

  v245 = [*(v332 + v335) view];
  if (!v245)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    sub_100012DF0(v245, &unk_1006B20C0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v339 = [v472 clearColor];
  [v245 setBackgroundColor:v339];

  v477 = 0;
  v485 = xmmword_100554AC0;
  v486 = xmmword_100554AD0;
  v487 = xmmword_100552170;
  v488 = xmmword_100552180;
  v489 = xmmword_100552190;
  v490 = xmmword_1005521A0;
  v491 = xmmword_1005521B0;
  v492 = xmmword_1005521C0;
  v493 = xmmword_1005521D0;
  v494 = xmmword_1005521E0;
  v495 = 0;
  v496 = 0x403A000000000000;
  v497 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v498 = _Q0;
  v499 = 0x4046000000000000;
  v500 = 0;

  v346 = sub_100278C9C(v345, &v485);
  *(v471 + 4) = &off_1006392E8;
  swift_unknownObjectWeakAssign();
  *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView] + OBJC_IVAR____TtC6FindMy23FMItemNotificationsView_delegate + 8) = &off_100639200;
  swift_unknownObjectWeakAssign();
  *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_trustedLocationsDetailViewController] + OBJC_IVAR____TtC6FindMy37FMTrustedLocationDetailViewController_delegate + 8) = &off_1006391F0;
  swift_unknownObjectWeakAssign();
  *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_bottomActionsModule] + qword_1006B1698 + 8) = &off_100639178;
  swift_unknownObjectWeakAssign();
  *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_accessoryDetailView] + OBJC_IVAR____TtC6FindMy21FMAccessoryDetailView_delegate + 8) = &off_1006391C8;
  swift_unknownObjectWeakAssign();
  My = type metadata accessor for Feature.FindMy();
  v476[3] = My;
  v476[4] = sub_1003ABA74(&qword_1006B4220, &type metadata accessor for Feature.FindMy);
  v348 = sub_100008FC0(v476);
  (*(*(My - 8) + 104))(v348, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100006060(v476);
  v349 = v423;
  v350 = v470;
  v351 = v473;
  if ((My & 1) == 0)
  {
    *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView] + OBJC_IVAR____TtC6FindMy20FMItemMarkAsLostView_delegate + 8) = &off_100639220;
    swift_unknownObjectWeakAssign();
  }

  *(*&v346[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findingExperiencePresenter] + OBJC_IVAR____TtC6FindMy28FMFindingExperiencePresenter_delegate + 8) = &off_1006391A8;
  swift_unknownObjectWeakAssign();
  v352 = v474;
  v353 = *(v474 + 16);
  v354 = v346;
  v355 = v353;
  v356 = sub_1003CC7C8(v354, v355);

  v357 = &v354[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription];
  *v357 = v356;
  v357[1] = &off_100635798;
  swift_unknownObjectRelease();
  v358 = *(v352 + 40);
  v359 = v354;
  v360 = v358;
  v361 = sub_1003CBC60(v359, v360);

  v362 = &v359[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription];
  *v362 = v361;
  v362[1] = &off_10063F000;
  swift_unknownObjectRelease();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v363 = type metadata accessor for Logger();
  sub_100005B14(v363, qword_1006D4630);
  v364 = Logger.logObject.getter();
  v365 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v364, v365))
  {
    v366 = swift_slowAlloc();
    v367 = swift_slowAlloc();
    *v366 = 138412290;
    *(v366 + 4) = v359;
    *v367 = v346;
    v368 = v359;
    _os_log_impl(&_mh_execute_header, v364, v365, "🧭 FMItemDetailContentViewController%@: init", v366, 0xCu);
    sub_100012DF0(v367, &unk_1006AF760);
  }

  swift_unknownObjectWeakAssign();
  v369 = *&v359[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton];
  v370 = String._bridgeToObjectiveC()();
  [v369 setAccessibilityIdentifier:v370];

  v371 = *&v359[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton];
  v372 = String._bridgeToObjectiveC()();
  [v371 setAccessibilityIdentifier:v372];

  (*(v441 + 8))(v464, v442);
  (*(v439 + 8))(v437, v440);
  (*(v436 + 8))(v463, v438);
  (*(v434 + 8))(v432, v435);
  (*(v431 + 8))(v462, v433);
  (*(v429 + 8))(v461, v430);
  (*(v427 + 8))(v426, v428);
  (*(v424 + 8))(v460, v425);
  (*(v459 + 8))(v349, v469);
  (*(v422 + 8))(v351, v350);
  sub_1003ABABC(v421, type metadata accessor for FMItemDetailViewModel);
  return v359;
}

uint64_t sub_1003AB5AC(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v7 = *(type metadata accessor for FMItemDetailViewModel() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v2 + v9);
  v14 = *(v2 + v12);
  v15 = *(v2 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_1000E3478;

  return sub_100381464(a1, a2, v2 + v8, v13, v2 + v11, v14, v15);
}

uint64_t sub_1003AB754(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1002AB55C;

  return sub_100382714(a1, v1);
}

uint64_t sub_1003AB7EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1003B0D4C;

  return sub_100382EA4(v0);
}

uint64_t sub_1003AB87C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000EE760;

  return sub_100383330(a1, a2, v7, v6);
}

uint64_t sub_1003AB92C(uint64_t a1, char a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000EE760;

  return sub_100384194(a1, a2, v7, v6);
}

uint64_t sub_1003AB9DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000EE760;

  return sub_100384FA0(v2, v3);
}

uint64_t sub_1003ABA74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003ABABC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003ABB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10007EBC0(&qword_1006B9FD0);

  return sub_100385540(a1, a2, a3);
}

uint64_t sub_1003ABBF0()
{
  v1 = sub_10007EBC0(&qword_1006B9FD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_1003ABD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(sub_10007EBC0(&qword_1006B9FD0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for FMIPItem() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  v14 = *(v4 + v13);
  v15 = *(v4 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8);

  return a4(a1, a2, a3, v4 + v9, v4 + v12, v14, v15);
}

uint64_t sub_1003ABF40(uint64_t a1, uint64_t a2)
{
  sub_10007EBC0(&qword_1006BD078);

  return sub_100382BDC(a1, a2);
}

uint64_t sub_1003ABFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for FMItemDetailViewModel() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_10007EBC0(&qword_1006BD080) - 8);
  v14 = v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_100382130(a1, a2, a3, v3 + v8, v3 + v11, v14);
}

uint64_t sub_1003AC180(uint64_t *a1)
{
  v2 = sub_10007EBC0(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1003AC204(uint64_t a1)
{
  sub_10007EBC0(&qword_1006BD0B0);

  return sub_10038072C(a1);
}

void sub_1003AC374()
{
  if ((*(*(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton) + OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active) & 1) != 0 || *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) == 1)
  {
    sub_10039ED70(0, 0);
  }

  *(*(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource) + 96) = 0;
  sub_100104C2C();
}

void sub_1003AC3E4()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B0080);
  __chkstk_darwin(v2 - 8);
  v106 = &v104 - v3;
  v112 = type metadata accessor for FMPlatterIcon();
  __chkstk_darwin(v112);
  v5 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundButton;
  v111 = objc_opt_self();
  v6 = [v111 systemIndigoColor];
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for FMIconPlatterButton();
  v8 = objc_allocWithZone(v7);
  v9 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v8[v9] = [objc_allocWithZone(UIImageView) init];
  v10 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v8[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v8[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v8[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v13 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v14 = type metadata accessor for FMPlatterBackgroundView();
  v15 = objc_allocWithZone(v14);
  v15[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v125.receiver = v15;
  v125.super_class = v14;
  v16 = objc_msgSendSuper2(&v125, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v8[v13] = v16;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v17 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v6;
  v107 = type metadata accessor for FMPlatterIcon;
  sub_1003B027C(v5, &v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], type metadata accessor for FMPlatterIcon);
  v18 = &v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v18 = 0xD00000000000001CLL;
  *(v18 + 1) = 0x8000000100593DC0;
  *(v18 + 3) = 0;
  *(v18 + 4) = 0;
  *(v18 + 2) = 0;
  v18[40] = 2;
  v8[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v8[v17] = 1;
  v124.receiver = v8;
  v124.super_class = v7;
  v19 = v7;
  v20 = v6;
  v21 = objc_msgSendSuper2(&v124, "init");
  sub_1000D3C9C();
  v22 = objc_opt_self();
  v109 = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = 0;
  v122 = sub_100141408;
  v123 = v23;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v110 = &v120;
  v120 = sub_100004AE4;
  v121 = &unk_10063AD38;
  v24 = _Block_copy(&aBlock);
  v25 = v21;

  [v22 animateWithDuration:v24 animations:0.35];
  _Block_release(v24);

  v108 = type metadata accessor for FMPlatterIcon;
  sub_1003ABABC(v5, type metadata accessor for FMPlatterIcon);
  *(v1 + v105) = v25;
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_directionsButton;
  v26 = [v111 systemBlueColor];
  swift_storeEnumTagMultiPayload();
  v27 = objc_allocWithZone(v19);
  v28 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v27[v28] = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v27[v29] = [objc_allocWithZone(UILabel) init];
  v30 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v27[v30] = [objc_allocWithZone(UILabel) init];
  v31 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v27[v31] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v32 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v33 = objc_allocWithZone(v14);
  v33[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v117.receiver = v33;
  v117.super_class = v14;
  v34 = objc_msgSendSuper2(&v117, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v27[v32] = v34;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v35 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v26;
  sub_1003B027C(v5, &v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v36 = &v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v36 = 0xD00000000000001FLL;
  *(v36 + 1) = 0x800000010057F980;
  v36[40] = 0;
  *(v36 + 3) = 0;
  *(v36 + 4) = 0;
  *(v36 + 2) = 0;
  v27[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v27[v35] = 0;
  v116.receiver = v27;
  v116.super_class = v19;
  v37 = v26;
  v38 = objc_msgSendSuper2(&v116, "init");
  sub_1000D3C9C();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = 0;
  v122 = sub_100141408;
  v123 = v39;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100004AE4;
  v121 = &unk_10063AD88;
  v40 = _Block_copy(&aBlock);
  v41 = v38;

  [v109 animateWithDuration:v40 animations:0.35];
  _Block_release(v40);

  sub_1003ABABC(v5, v108);
  *(v1 + v105) = v41;
  v105 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_findButton;
  v42 = [v111 systemGreenColor];
  v43 = *(sub_10007EBC0(&qword_1006C0020) + 48);
  *v5 = 1;
  v44 = enum case for FMFindingType.owner(_:);
  v45 = type metadata accessor for FMFindingType();
  (*(*(v45 - 8) + 104))(&v5[v43], v44, v45);
  v46 = enum case for FMFindingTechnology.precision(_:);
  v47 = type metadata accessor for FMFindingTechnology();
  (*(*(v47 - 8) + 104))(v5, v46, v47);
  swift_storeEnumTagMultiPayload();
  v48 = objc_allocWithZone(v19);
  v49 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_iconView;
  *&v48[v49] = [objc_allocWithZone(UIImageView) init];
  v50 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_titleLabel;
  *&v48[v50] = [objc_allocWithZone(UILabel) init];
  v51 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_subtitleLabel;
  *&v48[v51] = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activityIndicator;
  *&v48[v52] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v53 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterBackgroundView;
  v54 = objc_allocWithZone(v14);
  v54[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v115.receiver = v54;
  v115.super_class = v14;
  v55 = objc_msgSendSuper2(&v115, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v48[v53] = v55;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_state] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_currentIconState] = 3;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_active] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_queued] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_pending] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showActivityIndicator] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_disabled] = 0;
  v56 = OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showUnavailableWhenDisabled] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_showQueuedWhenDisabled] = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_stopping] = 0;
  *&v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeColor] = v42;
  sub_1003B027C(v5, &v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_platterIcon], v107);
  v57 = &v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_localizationContext];
  *v57 = 0xD000000000000019;
  *(v57 + 1) = 0x8000000100586460;
  v57[40] = 0;
  *(v57 + 3) = 0;
  *(v57 + 4) = 0;
  *(v57 + 2) = 0;
  v48[OBJC_IVAR____TtC6FindMy19FMIconPlatterButton_activeWhenPending] = 0;
  v48[v56] = 0;
  v114.receiver = v48;
  v114.super_class = v19;
  v58 = v42;
  v59 = objc_msgSendSuper2(&v114, "init");
  sub_1000D3C9C();
  v60 = swift_allocObject();
  *(v60 + 16) = v59;
  *(v60 + 24) = 0;
  v122 = sub_100141408;
  v123 = v60;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100004AE4;
  v121 = &unk_10063ADD8;
  v61 = _Block_copy(&aBlock);
  v62 = v59;

  [v109 animateWithDuration:v61 animations:0.35];
  _Block_release(v61);

  sub_1003ABABC(v5, v108);
  *(v1 + v105) = v62;
  v63 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_markAsLostView;
  v64 = objc_allocWithZone(type metadata accessor for FMItemMarkAsLostView());
  *(v1 + v63) = sub_1004FBB6C();
  v65 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingContentView;
  *(v1 + v65) = [objc_allocWithZone(UIView) init];
  v66 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingViewPlatterBackgroundView;
  v67 = objc_allocWithZone(v14);
  v67[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
  v113.receiver = v67;
  v113.super_class = v14;
  v68 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v66) = v68;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isSharedLostItem) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRemovingShare) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldHoldItem) = 0;
  v69 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsView;
  v70 = objc_allocWithZone(type metadata accessor for FMItemNotificationsView());
  *(v1 + v69) = sub_1003F51F8();
  v71 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationServicesAttention;
  v72 = type metadata accessor for FMExtendedPlatterInfoView();
  v73 = objc_allocWithZone(v72);
  *(v1 + v71) = sub_10032B2F8(1, 0);
  v74 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lowBatteryAttention;
  v75 = objc_allocWithZone(v72);
  *(v1 + v74) = sub_10032B2F8(1, 0);
  v76 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_inaccurateAttention;
  v77 = objc_allocWithZone(v72);
  *(v1 + v76) = sub_10032B2F8(1, 0);
  v78 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_lostModeAttention;
  v79 = objc_allocWithZone(v72);
  *(v1 + v78) = sub_10032B2F8(0, 0);
  v80 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAttention;
  v81 = objc_allocWithZone(v72);
  *(v1 + v80) = sub_10032B2F8(1, 0);
  v82 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundErrorAttention;
  v83 = objc_allocWithZone(type metadata accessor for FMFailablePlatterInfoView());
  v84 = OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_isActionable] = 0;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_playSoundFailureCode] = 0;
  v83[OBJC_IVAR____TtC6FindMy25FMFailablePlatterInfoView_localizableType] = 1;
  v83[v84] = 0;
  v85 = sub_1002AEC90(0);
  sub_1003F0AB4();

  *(v1 + v82) = v85;
  v86 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_sharingCircleUpdatedAttention;
  v87 = objc_allocWithZone(type metadata accessor for FMBeaconSharingCircleUpdatedAttentionModule());
  *(v1 + v86) = sub_1003E5B30();
  v88 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_oldShareAttention;
  v89 = objc_allocWithZone(v72);
  *(v1 + v88) = sub_10032B2F8(1, 0);
  v90 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_notificationsOffAttention;
  v91 = objc_allocWithZone(v72);
  *(v1 + v90) = sub_10032B2F8(1, 1);
  v92 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_firstButtonsStackView;
  *(v1 + v92) = [objc_allocWithZone(UIStackView) init];
  v93 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackView;
  *(v1 + v93) = [objc_allocWithZone(UIStackView) init];
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_verticalStackBottomConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_itemConnectionManager) = 0;
  v94 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_conditionSubscription);
  *v94 = 0;
  v94[1] = 0;
  v95 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_locationSubscription);
  *v95 = 0;
  v95[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isPlaySoundInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isStopSoundInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundAttempted) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isUpdatingShareInFlight) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isFirstModelUpdate) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSerialNumber) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_showSeparationAttention) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_soundPlayingOrPending) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isRangingServiceAvailable) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_shouldShowSoundError) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride) = 2;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenLeftBehindOnOverride) = 2;
  v96 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocation;
  v97 = type metadata accessor for FMIPSafeLocation();
  (*(*(v97 - 8) + 56))(v1 + v96, 1, 1, v97);
  v98 = (v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationAddress);
  *v98 = 0;
  v98[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_pendingSafeLocationAdded) = 0;
  v99 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_separationEvent;
  v100 = type metadata accessor for FMIPSeparationEvent();
  (*(*(v100 - 8) + 56))(v1 + v99, 1, 1, v100);
  v101 = OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_geocodingCache;
  v102 = v106;
  static Locale.autoupdatingCurrent.getter();
  v103 = type metadata accessor for Locale();
  (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
  type metadata accessor for FMIPReverseGeocodingCache();
  swift_allocObject();
  *(v1 + v101) = FMIPReverseGeocodingCache.init(preferredLocale:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1003AD550(int a1)
{
  v2 = v1;
  LODWORD(v48) = a1;
  v3 = type metadata accessor for FMIPAnalyticsActionType();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPNotifyItemActionType();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006B07D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for FMIPItem();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v40 - v16;
  v47 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v41 = *&v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource];
  v18 = (v41 + OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];

  sub_1000E5FF8(v20, v19, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_100012DF0(v10, &qword_1006B07D0);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "FMItemDetailContentViewController: Cannot toggle notify when found for unknown item", v24, 2u);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
    v25 = *(v12 + 16);
    v40 = v17;
    v25(v15, v17, v11);
    (*(v45 + 104))(v7, enum case for FMIPNotifyItemActionType.whenFound(_:), v46);
    type metadata accessor for FMIPNotifyItemAction();
    swift_allocObject();
    v26 = v48;
    v27 = v48 & 1;
    v28 = FMIPNotifyItemAction.init(item:type:state:)();
    v29 = v28;
    v1[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_isNotifyWhenFoundOnOverride] = v27;
    if (v26)
    {
      v30 = *(v41 + 40);
      v31 = *(*v30 + class metadata base offset for ManagedBuffer + 16);
      v32 = *(*v30 + 48) + 3;
      v48 = v28;
      v33 = v32 & 0x1FFFFFFFCLL;

      os_unfair_lock_lock((v30 + v33));
      v25(v15, (v30 + v31), v11);
      os_unfair_lock_unlock((v30 + v33));

      v35 = v42;
      v34 = v43;
      v36 = v44;
      (*(v43 + 104))(v42, enum case for FMIPAnalyticsActionType.enableNotifyWhenFound(_:), v44);
      sub_1003A49A0(v15, v35);
      v37 = v35;
      v29 = v48;
      (*(v34 + 8))(v37, v36);
      (*(v12 + 8))(v15, v11);
    }

    v38 = swift_allocObject();
    *(v38 + 16) = v2;
    *(v38 + 24) = v27;

    v39 = v2;
    sub_1000D6A90(v29, sub_1003AFCA0, v38);

    (*(v12 + 8))(v40, v11);
  }
}

uint64_t sub_1003ADB1C()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "FMItemDetailContentViewController: handle itemNotificationViewSelectNWLBDetailLabel", v3, 2u);
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000C5474(sub_1003AFC98, v4, 0, 0);
}

uint64_t sub_1003ADC58(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 28239;
    }

    else
    {
      v12 = 6710863;
    }

    if (a1)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_100005B4C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMItemDetailContentViewController: Airplane Mode is %s", v10, 0xCu);
    sub_100006060(v11);
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v16 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v15 + v16, v6, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v6, type metadata accessor for FMItemDetailViewModel);
}

uint64_t sub_1003ADE74(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for FMItemDetailViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315138;
    if (a1)
    {
      v12 = 6710863;
    }

    else
    {
      v12 = 28239;
    }

    if (a1)
    {
      v13 = 0xE300000000000000;
    }

    else
    {
      v13 = 0xE200000000000000;
    }

    v14 = sub_100005B4C(v12, v13, v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMItemDetailContentViewController: BT is %s", v10, 0xCu);
    sub_100006060(v11);
  }

  v15 = *(v2 + OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_dataSource);
  v16 = OBJC_IVAR____TtC6FindMy22FMItemDetailDataSource_itemViewModel;
  swift_beginAccess();
  sub_1003B027C(v15 + v16, v6, type metadata accessor for FMItemDetailViewModel);
  sub_10038B13C();
  return sub_1003ABABC(v6, type metadata accessor for FMItemDetailViewModel);
}

void sub_1003AE090()
{
  v0 = sub_10007EBC0(&unk_1006B0120);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.init(string:)();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_100012DF0(v2, &unk_1006B0120);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100005B14(v7, qword_1006D4630);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "FMItemDetailContentViewController: Error opening settings. Invalid URL", v10, 2u);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1003AE34C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UIListContentConfiguration();
  v90 = *(v9 - 8);
  v91 = v9;
  __chkstk_darwin(v9);
  v93 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v92 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v89 = &v84 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v84 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v84 - v21;
  __chkstk_darwin(v20);
  v94 = &v84 - v23;
  v24 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = [a1 dequeueReusableCellWithIdentifier:v24 forIndexPath:isa];

  swift_beginAccess();
  v27 = *(a5 + 16);
  if (!*(v27 + 16))
  {
    return v26;
  }

  v28 = sub_10000726C(a3, a4);
  if ((v29 & 1) == 0)
  {

    return v26;
  }

  sub_1003B027C(*(v27 + 56) + *(v12 + 72) * v28, v22, type metadata accessor for FMBeaconSharingModuleEntry);

  sub_1003B0214(v22, v94, type metadata accessor for FMBeaconSharingModuleEntry);
  [v26 setAccessoryView:0];
  [v26 setAccessoryType:0];
  v30 = objc_opt_self();
  v87 = v26;
  v31 = v26;
  v32 = [v30 clearColor];
  [v31 setBackgroundColor:v32];

  v33 = [objc_allocWithZone(UIView) init];
  v34 = [v30 secondarySystemFillColor];
  [v33 setBackgroundColor:v34];

  v88 = v31;
  v86 = v33;
  [v31 setSelectedBackgroundView:v33];
  sub_1004ED5E8();
  sub_1002924FC(&v101);
  v35 = v102;
  v36 = v104 | ((v105 | (v106 << 16)) << 32);
  v37 = v107;
  if (v108 <= 1u)
  {
    if (!v108)
    {
      v38 = v93;
      UIListContentConfiguration.text.setter();
      if (v35)
      {
        v39 = [v30 systemRedColor];
      }

      else
      {
        v39 = [v30 systemBlueColor];
      }

      v60 = v39;
      v61 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v61(&aBlock, 0);
      v40 = v38;
      v42 = v94;
      v46 = v88;
      [v88 setAccessoryView:0];
      [v46 setAccessoryType:0];
      goto LABEL_18;
    }

    v47 = v103;
    v40 = v93;
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    if (v37)
    {
      v48 = objc_opt_self();
      v49 = swift_allocObject();
      *(v49 + 16) = v47;
      *(v49 + 23) = BYTE6(v36);
      *(v49 + 21) = WORD2(v36);
      *(v49 + 17) = v36;
      v46 = v88;
      *(v49 + 24) = v37;
      *(v49 + 32) = v46;
      v50 = swift_allocObject();
      v84 = sub_1003B0E74;
      *(v50 + 16) = sub_1003B0E74;
      *(v50 + 24) = v49;
      v99 = sub_1003B0D50;
      v100 = v50;
      aBlock = _NSConcreteStackBlock;
      v96 = 1107296256;
      v97 = sub_1000095FC;
      v98 = &unk_100639B68;
      v51 = _Block_copy(&aBlock);
      v52 = v46;

      [v48 performWithoutAnimation:v51];
      _Block_release(v51);
      LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

      v54 = v92;
      if ((v48 & 1) == 0)
      {
        v85 = 0;
        v42 = v94;
LABEL_23:
        v62 = v89;
        sub_1003B027C(v42, v89, type metadata accessor for FMBeaconSharingModuleEntry);
        v63 = sub_10007EBC0(&qword_1006B9D48);
        v64 = *(*(v63 - 8) + 48);
        v65 = v64(v62, 2, v63);
        if (v65)
        {
          v66 = v65 != 1;
        }

        else
        {
          v67 = v40;
          v68 = *(v63 + 48);
          v69 = *(v63 + 64);
          v70 = type metadata accessor for UUID();
          v71 = v62 + v69;
          v46 = v88;
          (*(*(v70 - 8) + 8))(v71, v70);
          v72 = v62 + v68;
          v40 = v67;
          v42 = v94;
          sub_1003ABABC(v72, type metadata accessor for FMBeaconSharingModuleShareState);
          sub_1003ABABC(v62, type metadata accessor for FMBeaconSharingModuleRelationshipType);
          v66 = 1;
        }

        [v46 setUserInteractionEnabled:{v66, v84}];

        v73 = [v46 contentView];
        sub_1003B027C(v42, v54, type metadata accessor for FMBeaconSharingModuleEntry);
        v74 = v64(v54, 2, v63);
        v75 = 1.0;
        if (v74)
        {
          v77 = v90;
          v76 = v91;
          if (v74 == 1)
          {
            v75 = 0.5;
          }
        }

        else
        {
          v78 = *(v63 + 48);
          v79 = *(v63 + 64);
          v80 = type metadata accessor for UUID();
          (*(*(v80 - 8) + 8))(v54 + v79, v80);
          sub_1003ABABC(v54 + v78, type metadata accessor for FMBeaconSharingModuleShareState);
          sub_1003ABABC(v54, type metadata accessor for FMBeaconSharingModuleRelationshipType);
          v75 = 1.0;
          v77 = v90;
          v76 = v91;
        }

        [v73 setAlpha:v75];

        v98 = v76;
        v99 = &protocol witness table for UIListContentConfiguration;
        v81 = sub_100008FC0(&aBlock);
        (*(v77 + 16))(v81, v40, v76);
        UITableViewCell.contentConfiguration.setter();
        v82 = v46;
        v83 = String._bridgeToObjectiveC()();
        [v82 setAccessibilityIdentifier:v83];

        (*(v77 + 8))(v40, v76);
        sub_1003ABABC(v42, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_10001835C(v85);
        sub_10001835C(v84);
        return v87;
      }

      __break(1u);
      goto LABEL_33;
    }

    v46 = v88;
    [v88 setAccessoryType:1];
LABEL_21:
    v85 = 0;
    v84 = 0;
    v42 = v94;
    goto LABEL_22;
  }

  LODWORD(v85) = v103;
  if (v108 == 2)
  {
    v40 = v93;
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    v41 = [objc_allocWithZone(UISwitch) init];
    sub_10000905C(0, &qword_1006AF730);
    v42 = v94;
    sub_1003B027C(v94, v19, type metadata accessor for FMBeaconSharingModuleEntry);
    v43 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = a5;
    sub_1003B0214(v19, v44 + v43, type metadata accessor for FMBeaconSharingModuleEntry);

    v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v41 addAction:v45 forControlEvents:4096];
    [v41 setOn:v85 & 1];
    v46 = v88;
    [v88 setSelectionStyle:0];
    [v46 setAccessoryView:v41];

LABEL_18:
    v85 = 0;
    v84 = 0;
LABEL_22:
    v54 = v92;
    goto LABEL_23;
  }

  v40 = v93;
  UIListContentConfiguration.text.setter();
  UIListContentConfiguration.secondaryText.setter();
  if (!v37)
  {
    v46 = v88;
    [v88 setAccessoryView:0];
    goto LABEL_21;
  }

  v55 = objc_opt_self();
  v56 = swift_allocObject();
  *(v56 + 16) = v85;
  *(v56 + 23) = BYTE6(v36);
  *(v56 + 21) = WORD2(v36);
  *(v56 + 17) = v36;
  v46 = v88;
  *(v56 + 24) = v37;
  *(v56 + 32) = v46;
  v57 = swift_allocObject();
  v85 = sub_1003B0E78;
  *(v57 + 16) = sub_1003B0E78;
  *(v57 + 24) = v56;
  v99 = sub_1003B0D50;
  v100 = v57;
  aBlock = _NSConcreteStackBlock;
  v96 = 1107296256;
  v97 = sub_1000095FC;
  v98 = &unk_100639BE0;
  v58 = _Block_copy(&aBlock);
  v59 = v46;

  [v55 performWithoutAnimation:v58];
  _Block_release(v58);
  LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

  v54 = v92;
  if ((v55 & 1) == 0)
  {
    v84 = 0;
    v42 = v94;
    goto LABEL_23;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1003AF04C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for UIListContentConfiguration();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v15 = [a1 dequeueReusableCellWithIdentifier:v13 forIndexPath:isa];

  swift_beginAccess();
  v16 = *(a5 + 16);
  if (!*(v16 + 16))
  {
    return v15;
  }

  v17 = sub_10000726C(a3, a4);
  if ((v18 & 1) == 0)
  {

    return v15;
  }

  v60 = v10;
  v61 = v9;
  v19 = *(*(v16 + 56) + v17);

  [v15 setAccessoryView:0];
  [v15 setAccessoryType:0];
  v20 = objc_opt_self();
  v58 = v15;
  v21 = v15;
  v22 = [v20 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = [objc_allocWithZone(UIView) init];
  v24 = [v20 secondarySystemFillColor];
  [v23 setBackgroundColor:v24];

  v59 = v23;
  [v21 setSelectedBackgroundView:v23];
  sub_1004ED5E8();
  sub_1000EF468(v19, &v68);
  v25 = v69;
  v26 = v71 | ((v72 | (v73 << 16)) << 32);
  v27 = v74;
  if (v75 <= 1u)
  {
    if (!v75)
    {
      UIListContentConfiguration.text.setter();
      if (v25)
      {
        v28 = [v20 systemRedColor];
      }

      else
      {
        v28 = [v20 systemBlueColor];
      }

      v48 = v28;
      v49 = UIListContentConfiguration.textProperties.modify();
      UIListContentConfiguration.TextProperties.color.setter();
      v49(&aBlock, 0);
      [v21 setAccessoryView:0];
      v50 = "setAccessoryType:";
      goto LABEL_20;
    }

    v32 = v70;
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    if (v27)
    {
      v33 = objc_opt_self();
      v34 = swift_allocObject();
      *(v34 + 16) = v32;
      *(v34 + 23) = BYTE6(v26);
      *(v34 + 21) = WORD2(v26);
      *(v34 + 17) = v26;
      *(v34 + 24) = v27;
      *(v34 + 32) = v21;
      v35 = swift_allocObject();
      v36 = sub_1003AF8FC;
      *(v35 + 16) = sub_1003AF8FC;
      *(v35 + 24) = v34;
      v66 = sub_1003B0D50;
      v67 = v35;
      aBlock = _NSConcreteStackBlock;
      v63 = 1107296256;
      v64 = sub_1000095FC;
      v65 = &unk_100639848;
      v37 = _Block_copy(&aBlock);
      v38 = v21;

      [v33 performWithoutAnimation:v37];
      _Block_release(v37);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v41 = 0;
LABEL_22:
        [v21 setUserInteractionEnabled:1];

        v51 = [v21 contentView];
        [v51 setAlpha:1.0];

        v52 = v61;
        v65 = v61;
        v66 = &protocol witness table for UIListContentConfiguration;
        v53 = sub_100008FC0(&aBlock);
        v54 = v60;
        (*(v60 + 16))(v53, v12, v52);
        UITableViewCell.contentConfiguration.setter();
        v55 = v21;
        v56 = String._bridgeToObjectiveC()();
        [v55 setAccessibilityIdentifier:v56];

        (*(v54 + 8))(v12, v52);
        sub_10001835C(v41);
        sub_10001835C(v36);
        return v58;
      }

      __break(1u);
      goto LABEL_25;
    }

    [v21 setAccessoryType:1];
LABEL_21:
    v41 = 0;
    v36 = 0;
    goto LABEL_22;
  }

  HIDWORD(v57) = v70;
  if (v75 == 2)
  {
    UIListContentConfiguration.text.setter();
    UIListContentConfiguration.secondaryText.setter();
    v29 = [objc_allocWithZone(UISwitch) init];
    sub_10000905C(0, &qword_1006AF730);
    v30 = swift_allocObject();
    *(v30 + 16) = a5;
    *(v30 + 24) = v19;

    v31 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v29 addAction:v31 forControlEvents:4096];
    [v29 setOn:BYTE4(v57) & 1];
    [v21 setSelectionStyle:0];
    [v21 setAccessoryView:v29];

    goto LABEL_21;
  }

  UIListContentConfiguration.text.setter();
  UIListContentConfiguration.secondaryText.setter();
  if (!v27)
  {
    v50 = "setAccessoryView:";
LABEL_20:
    [v21 v50];
    goto LABEL_21;
  }

  v42 = objc_opt_self();
  v43 = swift_allocObject();
  *(v43 + 16) = BYTE4(v57);
  *(v43 + 23) = BYTE6(v26);
  *(v43 + 21) = WORD2(v26);
  *(v43 + 17) = v26;
  *(v43 + 24) = v27;
  *(v43 + 32) = v21;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1003AF908;
  *(v44 + 24) = v43;
  v66 = sub_1003B0D50;
  v67 = v44;
  aBlock = _NSConcreteStackBlock;
  v63 = 1107296256;
  v64 = sub_1000095FC;
  v65 = &unk_1006398C0;
  v45 = _Block_copy(&aBlock);
  v46 = v21;

  [v42 performWithoutAnimation:v45];
  _Block_release(v45);
  v47 = swift_isEscapingClosureAtFileLocation();

  if ((v47 & 1) == 0)
  {
    v36 = 0;
    v41 = sub_1003AF908;
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1003AF99C(uint64_t a1)
{
  v3 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1003A74C0(a1, v4, v5);
}

uint64_t sub_1003AFA10()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = sub_10007EBC0(&qword_1006B9D48);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 2, v6))
  {
    type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v7 = type metadata accessor for FMFFriend();
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
    }

    v8 = *(v6 + 48);
    v9 = sub_10007EBC0(&qword_1006B9DF8);
    if (!(*(*(v9 - 8) + 48))(v5 + v8, 1, v9))
    {
      v10 = type metadata accessor for FMIPBeaconShareState();
      (*(*(v10 - 8) + 8))(v5 + v8, v10);
    }

    v11 = *(v6 + 64);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(v5 + v11, v12);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1003AFC34()
{
  v1 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1003A7678(v2, v3);
}

uint64_t sub_1003AFD08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1003AFD78(uint64_t result)
{
  v2 = *(v1 + 16);
  if (result)
  {
    if (*(*(v2 + qword_1006C2B78) + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(v2 + qword_1006C2B70) != 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *(v2 + qword_1006C2BA0) = v3;
  return result;
}

uint64_t sub_1003AFDD0(void (*a1)(void))
{
  a1(*(v1 + 24));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1003AFE20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003AFEC8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMIPItem() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 25) & ~*(v3 + 80));

  return sub_1003A2868(a1, v4, v5, v6);
}

void sub_1003B00CC()
{
  type metadata accessor for FMIPItemActionStatus();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  sub_10039F858(v1, v2);
}

uint64_t sub_1003B0140()
{
  v1 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  return sub_10039DF24(v3, v4, v6, v0 + v2, v5);
}

uint64_t sub_1003B0214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B027C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B02EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = *(v3 + 16);
  v10 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_10039A940(a1, a2, a3, v9, v3 + v8, v11, v12);
}

uint64_t sub_1003B03A8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_10039BE98(v3, v0 + v2, v5, v6);
}

uint64_t sub_1003B0460(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000EE760;

  return sub_100399ED4(a1, v4, v5, v7, v6);
}

uint64_t sub_1003B0520(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_100399A74(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1003B0638()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1003B0684()
{
  v1 = *(type metadata accessor for FMSelectionPendingAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_10007EBC0(&qword_1006BB1E0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v0 + v3);
  v7 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_10039B080(v0 + v2, v6, v0 + v5, v8, v9);
}

void sub_1003B07AC(unint64_t a1, uint64_t a2)
{
  type metadata accessor for FMIPLocation();

  sub_100395C24(a1, a2);
}

uint64_t sub_1003B0900()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1003B09CC(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_100390310(a1, v6, v7, v8, v1 + v5);
}

void sub_1003B0B64()
{
  sub_1003B0BFC(319, &unk_1006BD278, &type metadata accessor for DelegatedURLShare);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003B0BFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1003B0EC4()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    sub_10000905C(319, &qword_1006C0000);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date();
      if (v2 <= 0x3F)
      {
        sub_1003B102C();
        if (v3 <= 0x3F)
        {
          sub_1003B1084();
          if (v4 <= 0x3F)
          {
            sub_1003B10EC();
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

void sub_1003B102C()
{
  if (!qword_1006BD310)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BD310);
    }
  }
}

void sub_1003B1084()
{
  if (!qword_1006BD318)
  {
    sub_10000905C(255, &qword_1006BFD00);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BD318);
    }
  }
}

void sub_1003B10EC()
{
  if (!qword_1006BD320)
  {
    type metadata accessor for FMLocationAlertRowViewModel(255);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006BD320);
    }
  }
}

void sub_1003B118C()
{
  sub_10000AF8C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for FMFLocationAlertTriggerType();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Int sub_1003B1234()
{
  Hasher.init(_seed:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B12F4()
{
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();
}

Swift::Int sub_1003B13A8()
{
  Hasher.init(_seed:)();
  if (*(v0 + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  FMFLocationAlertTriggerType.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1003B14B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, double a5@<X5>, int a6@<W6>, int a7@<W7>, Swift::String *a8@<X8>, char a9)
{
  v397 = a7;
  v420 = a6;
  v384 = a5;
  v387 = a4;
  v425 = a3;
  v429 = a2;
  v445 = a8;
  v10 = sub_10007EBC0(&unk_1006B0000);
  v11 = __chkstk_darwin(v10 - 8);
  v421 = v377 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v411 = v377 - v13;
  v14 = sub_10007EBC0(&qword_1006B0038);
  __chkstk_darwin(v14 - 8);
  v392 = v377 - v15;
  v428 = type metadata accessor for FMFConfigValue();
  v427 = *(v428 - 8);
  __chkstk_darwin(v428);
  v426 = v377 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10007EBC0(&unk_1006B0670);
  __chkstk_darwin(v17 - 8);
  v439 = (v377 - v18);
  v424 = sub_10007EBC0(&qword_1006B14A8);
  v19 = __chkstk_darwin(v424);
  v434 = v377 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v386 = v377 - v21;
  v22 = sub_10007EBC0(&unk_1006C2460);
  v23 = __chkstk_darwin(v22 - 8);
  v398 = v377 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v433 = v377 - v26;
  v27 = __chkstk_darwin(v25);
  v418 = v377 - v28;
  v29 = __chkstk_darwin(v27);
  v383 = v377 - v30;
  v31 = __chkstk_darwin(v29);
  v388 = v377 - v32;
  __chkstk_darwin(v31);
  v390 = v377 - v33;
  v382 = type metadata accessor for FormatStyleCapitalizationContext();
  v381 = *(v382 - 8);
  __chkstk_darwin(v382);
  v380 = v377 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Date();
  v437 = *(v35 - 8);
  v438 = v35;
  v36 = __chkstk_darwin(v35);
  v399 = v377 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __chkstk_darwin(v36);
  v393 = v377 - v39;
  v40 = __chkstk_darwin(v38);
  v408 = v377 - v41;
  v42 = __chkstk_darwin(v40);
  object = v377 - v43;
  __chkstk_darwin(v42);
  v401 = v377 - v44;
  v432 = type metadata accessor for FMFLocationSource();
  v435 = *(v432 - 8);
  v45 = __chkstk_darwin(v432);
  countAndFlagsBits = v377 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v400 = v377 - v47;
  v48 = type metadata accessor for FMFLocation();
  v442 = *(v48 - 8);
  v443 = v48;
  v49 = __chkstk_darwin(v48);
  v394 = v377 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v402 = v377 - v51;
  v52 = sub_10007EBC0(&qword_1006AF740);
  v53 = __chkstk_darwin(v52 - 8);
  v419 = v377 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __chkstk_darwin(v53);
  v407 = v377 - v56;
  v57 = __chkstk_darwin(v55);
  v406 = v377 - v58;
  v59 = __chkstk_darwin(v57);
  v405 = v377 - v60;
  v61 = __chkstk_darwin(v59);
  v396 = v377 - v62;
  v63 = __chkstk_darwin(v61);
  v395 = v377 - v64;
  v65 = __chkstk_darwin(v63);
  v389 = v377 - v66;
  v67 = __chkstk_darwin(v65);
  v403 = v377 - v68;
  v69 = __chkstk_darwin(v67);
  v385 = v377 - v70;
  v71 = __chkstk_darwin(v69);
  v73 = v377 - v72;
  v74 = __chkstk_darwin(v71);
  v76 = v377 - v75;
  v77 = __chkstk_darwin(v74);
  v440 = v377 - v78;
  __chkstk_darwin(v77);
  v444 = v377 - v79;
  v80 = type metadata accessor for FMFRelationshipType();
  v81 = *(v80 - 8);
  v82 = __chkstk_darwin(v80);
  v84 = v377 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v86 = v377 - v85;
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v87 = sub_1003B518C(&qword_1006B4070, &type metadata accessor for FMFRelationshipType);
  v404 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88 = *(v81 + 8);
  v88(v84, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.followsMyLocation.getter();
  v436 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88(v84, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.sharesLocationWithMe.getter();
  v410 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v88(v84, v80);
  v88(v86, v80);
  FMFFriend.relationshipType.getter();
  static FMFRelationshipType.willShareLocationWithMe.getter();
  v412 = v87;
  v391 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v415 = v84;
  v88(v84, v80);
  v414 = v86;
  v89 = v86;
  v90 = v442;
  v417 = v80;
  v416 = v81 + 8;
  v413 = v88;
  v88(v89, v80);
  v91 = a1;
  v92 = sub_1003B89E8(a1);
  v93 = FMFFriend.supportsShallowOrLiveLocations.getter();
  v409 = v92;
  if (v93 == 2 || (v93 & 1) == 0 || (FMFFriend.fallbackToLegacy.getter() & 1) != 0)
  {
    v94 = 0;
    goto LABEL_5;
  }

  v125 = v444;
  FMFFriend.location.getter();
  v126 = *(v90 + 48);
  v127 = v443;
  if (v126(v125, 1, v443) == 1)
  {
    sub_100012DF0(v125, &qword_1006AF740);
  }

  else
  {
    v137 = FMFLocation.isLivePending.getter();
    (*(v90 + 8))(v125, v127);
    if (v137)
    {
      v94 = 1;
LABEL_28:
      v90 = v442;
      goto LABEL_5;
    }
  }

  v138 = v440;
  FMFFriend.location.getter();
  if (v126(v138, 1, v127) == 1)
  {
    sub_100012DF0(v138, &qword_1006AF740);
    v94 = 0;
    goto LABEL_28;
  }

  v94 = FMFLocation.isLivePaused.getter();
  v90 = v442;
  (*(v442 + 8))(v138, v127);
LABEL_5:
  FMFFriend.location.getter();
  v95 = v443;
  v444 = *(v90 + 48);
  if ((v444)(v76, 1, v443) == 1)
  {
    sub_100012DF0(v76, &qword_1006AF740);
    v96 = 0;
    v97 = v444;
    if ((a9 & 1) == 0)
    {
LABEL_7:
      v431 = v94 | v96;
      goto LABEL_10;
    }
  }

  else
  {
    v96 = FMFLocation.locateInProgress.getter();
    (*(v90 + 8))(v76, v95);
    v97 = v444;
    if ((a9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v431 = 0;
LABEL_10:
  v98 = objc_opt_self();
  v430 = [v98 secondaryLabelColor];
  FMFFriend.location.getter();
  v99 = v443;
  v100 = v97(v73, 1, v443);
  v440 = (v90 + 48);
  if (v100 == 1)
  {
    sub_100012DF0(v73, &qword_1006AF740);
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    v101 = v439;
    goto LABEL_46;
  }

  v102 = *(v90 + 32);
  v103 = v90;
  v104 = v402;
  v102(v402, v73, v99);
  if (a9)
  {
    v105 = [objc_opt_self() mainBundle];
    v449._object = 0x800000010057DA00;
    v106._countAndFlagsBits = 0xD00000000000001CLL;
    v106._object = 0x800000010057D9E0;
    v449._countAndFlagsBits = 0xD00000000000002ELL;
    v107._countAndFlagsBits = 0;
    v107._object = 0xE000000000000000;
    v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, v449);
    countAndFlagsBits = v108._countAndFlagsBits;
    object = v108._object;

    (*(v103 + 8))(v104, v99);
    v101 = v439;
    v90 = v103;
    goto LABEL_46;
  }

  v379 = v98;
  v109 = v400;
  FMFLocation.locationSource.getter();
  v110 = v435;
  v111 = *(v435 + 104);
  v112 = countAndFlagsBits;
  v113 = v432;
  v111(countAndFlagsBits, enum case for FMFLocationSource.secureLive(_:), v432);
  sub_1003B518C(&qword_1006B14E8, &type metadata accessor for FMFLocationSource);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v116 = *(v110 + 8);
  v115 = v110 + 8;
  v114 = v116;
  v116(v112, v113);
  v116(v109, v113);
  v117 = v104;
  if (v447[0] == v446 && (FMFLocation.isLivePaused.getter() & 1) == 0)
  {
    v132 = [objc_opt_self() mainBundle];
    v133._countAndFlagsBits = 0xD000000000000019;
    v451._object = 0x8000000100594480;
    v133._object = 0x8000000100594460;
    v451._countAndFlagsBits = 0xD00000000000002BLL;
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    v135 = NSLocalizedString(_:tableName:bundle:value:comment:)(v133, 0, v132, v134, v451);
    countAndFlagsBits = v135._countAndFlagsBits;
    object = v135._object;

    v136 = [v379 systemGreenColor];
    v90 = v442;
    v99 = v443;
    (*(v442 + 8))(v117, v443);
    v430 = v136;
    v101 = v439;
    goto LABEL_46;
  }

  v118 = FMFLocation.location.getter();
  if (!v118)
  {
    v101 = v439;
    if (v431)
    {
      v128 = [objc_opt_self() mainBundle];
      v450._object = 0x800000010057D9B0;
      v129._countAndFlagsBits = 0xD00000000000001DLL;
      v129._object = 0x800000010057D990;
      v450._countAndFlagsBits = 0xD00000000000002FLL;
      v130._countAndFlagsBits = 0;
      v130._object = 0xE000000000000000;
      v131 = NSLocalizedString(_:tableName:bundle:value:comment:)(v129, 0, v128, v130, v450);
      countAndFlagsBits = v131._countAndFlagsBits;
      object = v131._object;

      v90 = v442;
      v99 = v443;
      (*(v442 + 8))(v117, v443);
    }

    else
    {
      v90 = v442;
      v99 = v443;
      (*(v442 + 8))(v117, v443);
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    goto LABEL_46;
  }

  v378 = v114;
  v119 = v118;
  v120 = [v118 timestamp];

  v121 = object;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v437 + 32))(v401, v121, v438);
  Date.timeIntervalSinceNow.getter();
  if (v122 >= 3600.0)
  {
    v139 = sub_100455280();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v141 = [v139 stringFromDate:isa];

    countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    object = v142;
  }

  else
  {
    v123 = v380;
    static FormatStyleCapitalizationContext.beginningOfSentence.getter();
    countAndFlagsBits = sub_1000CA844(v123);
    object = v124;
    (*(v381 + 8))(v123, v382);
  }

  v143 = v386;
  v144 = v390;
  v145 = v385;
  FMFFriend.location.getter();
  v146 = v443;
  v147 = (v444)(v145, 1, v443);
  v377[1] = v115;
  if (v147 == 1)
  {
    sub_100012DF0(v145, &qword_1006AF740);
    v148 = 1;
  }

  else
  {
    FMFLocation.locationSource.getter();
    (*(v442 + 8))(v145, v146);
    v148 = 0;
  }

  v149 = v435;
  v150 = *(v435 + 56);
  v151 = v144;
  v152 = v144;
  v153 = v432;
  v150(v151, v148, 1, v432);
  v154 = v388;
  v111(v388, enum case for FMFLocationSource.stewie(_:), v153);
  v155 = v153;
  v150(v154, 0, 1, v153);
  v156 = *(v424 + 48);
  sub_100007204(v152, v143, &unk_1006C2460);
  sub_100007204(v154, v143 + v156, &unk_1006C2460);
  v157 = *(v149 + 48);
  if (v157(v143, 1, v155) == 1)
  {
    sub_100012DF0(v154, &unk_1006C2460);
    sub_100012DF0(v390, &unk_1006C2460);
    v158 = v157(v143 + v156, 1, v155);
    v99 = v443;
    if (v158 == 1)
    {
      sub_100012DF0(v143, &unk_1006C2460);
      v90 = v442;
      v101 = v439;
LABEL_42:
      v169 = [objc_opt_self() mainBundle];
      v170.value._countAndFlagsBits = 0xD000000000000012;
      v452._countAndFlagsBits = 0xD000000000000017;
      v452._object = 0x800000010057FD20;
      v171._object = 0x8000000100594440;
      v170.value._object = 0x800000010057FD00;
      v171._countAndFlagsBits = 0xD00000000000001ALL;
      v172._countAndFlagsBits = 0;
      v172._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v171, v170, v169, v172, v452);

      sub_10007EBC0(&unk_1006B20B0);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_100552220;
      *(v173 + 56) = &type metadata for String;
      *(v173 + 64) = sub_10008EE84();
      v174 = object;
      *(v173 + 32) = countAndFlagsBits;
      *(v173 + 40) = v174;
      countAndFlagsBits = String.init(format:_:)();
      object = v175;

      goto LABEL_43;
    }

    goto LABEL_38;
  }

  v159 = v383;
  sub_100007204(v143, v383, &unk_1006C2460);
  v160 = v157(v143 + v156, 1, v155);
  v161 = v155;
  v99 = v443;
  if (v160 == 1)
  {
    sub_100012DF0(v388, &unk_1006C2460);
    sub_100012DF0(v390, &unk_1006C2460);
    v378(v159, v161);
LABEL_38:
    sub_100012DF0(v143, &qword_1006B14A8);
    v90 = v442;
    v101 = v439;
    goto LABEL_43;
  }

  v162 = v143 + v156;
  v163 = v143;
  v164 = v400;
  (*(v435 + 32))(v400, v162, v161);
  sub_1003B518C(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
  v165 = v159;
  v166 = dispatch thunk of static Equatable.== infix(_:_:)();
  v167 = v164;
  v168 = v378;
  v378(v167, v161);
  sub_100012DF0(v388, &unk_1006C2460);
  sub_100012DF0(v390, &unk_1006C2460);
  v168(v165, v161);
  sub_100012DF0(v163, &unk_1006C2460);
  v90 = v442;
  v101 = v439;
  if (v166)
  {
    goto LABEL_42;
  }

LABEL_43:
  v176 = v401;
  Date.timeIntervalSinceNow.getter();
  v177 = &selRef_systemRedColor;
  if (v178 >= -900.0)
  {
    v177 = &selRef_systemGreenColor;
  }

  v179 = [v379 *v177];

  (*(v437 + 8))(v176, v438);
  (*(v90 + 8))(v402, v99);
  v430 = v179;
LABEL_46:
  v180 = FMFFriend.contactHandles.getter();
  v181 = v180;
  v182 = *(v180 + 16);
  if (v182)
  {
    v183 = v91;
    v184 = sub_10002E21C(*(v180 + 16), 0);
    v185 = sub_100016318(v447, v184 + 4, v182, v181);
    v186 = v447[2];
    LOBYTE(v91) = v448;

    sub_10000BEC8();
    if (v185 != v182)
    {
      goto LABEL_151;
    }

    v91 = v183;
    v90 = v442;
    v99 = v443;
    v101 = v439;
  }

  else
  {
    v184 = _swiftEmptyArrayStorage;
  }

  v447[0] = v184;
  sub_10000BED0(v447);

  if (*(v447[0] + 2))
  {
    v185 = *(v447[0] + 5);
    v402 = *(v447[0] + 4);

    v401 = FMFFriend.contactHandles.getter();
    FMFFriend.contact.getter();
    v187 = type metadata accessor for FMFContact();
    v188 = *(v187 - 8);
    if ((*(v188 + 48))(v101, 1, v187) == 1)
    {
      sub_100012DF0(v101, &unk_1006B0670);
      v189 = 0;
    }

    else
    {
      FMFContact.storeUUID.getter();
      (*(v188 + 8))(v101, v187);
      type metadata accessor for FMFCoreHelper();
      v189 = static FMFCoreHelper.contact(for:keysToFetch:)();
    }

    v184 = v405;
    v190 = type metadata accessor for FMPersonDetailViewModel(0);
    *(&v445->_countAndFlagsBits + v190[17]) = v189;
    v191 = v403;
    FMFFriend.location.getter();
    v192 = (v444)(v191, 1, v99);
    v439 = v190;
    v441 = v91;
    if (v192 == 1)
    {

      sub_100012DF0(v191, &qword_1006AF740);
      v193 = 0;
      v194 = 0;
      v195 = 0;
      LOBYTE(v91) = 1;
    }

    else
    {
      v196 = FMFLocation.location.getter();
      v197 = *(v90 + 8);
      v198 = v191;
      v199 = v196;
      v197(v198, v99);
      if (v199)
      {
        v195 = v429;
        if (v429)
        {
          v405 = v185;
          v200 = v427;
          v201 = v426;
          v202 = v428;
          (*(v427 + 104))(v426, enum case for FMFConfigValue.peopleFindingNearbyDistance(_:), v428);
          v446 = 0x4034000000000000;
          v203 = v195;
          FMFWaldoGlobalConfig<A>(_:fallback:)();
          (*(v200 + 8))(v201, v202);
          v204 = v447[0];
          [v203 distanceFromLocation:v199];
          v206 = v205;
          v207 = v203;
          [v203 horizontalAccuracy];
          v209 = v208;
          v210 = v199;
          [v199 horizontalAccuracy];
          LODWORD(v403) = v206 / sqrt(*&v204 * *&v204 + v209 * v209 + v211 * v211) < 1.5;
          v212 = v389;
          FMFFriend.location.getter();
          v213 = v443;
          if ((v444)(v212, 1, v443) == 1)
          {
            sub_100012DF0(v212, &qword_1006AF740);
            v214 = 1;
          }

          else
          {
            v214 = FMFLocation.isOld.getter();
            v197(v212, v213);
          }

          v183 = v210;
          v186 = v207;
          [v207 distanceFromLocation:v183];
          v268 = v267;
          [v207 horizontalAccuracy];
          v270 = v269;
          [v183 horizontalAccuracy];
          LOBYTE(v91) = v214 | (v268 / sqrt(v270 * v270 + v271 * v271 + 4000000.0) < 1.5);
          v185 = v405;
          if ((v91 & 1) == 0)
          {
            if (qword_1006AEBE0 != -1)
            {
              swift_once();
            }

            v272 = type metadata accessor for Logger();
            sub_100005B14(v272, qword_1006D4630);
            v273 = Logger.logObject.getter();
            v274 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v273, v274))
            {
              v275 = swift_slowAlloc();
              *v275 = 67109376;
              *(v275 + 4) = 1;
              *(v275 + 8) = 1024;
              *(v275 + 10) = 1;
              _os_log_impl(&_mh_execute_header, v273, v274, "FMPersonDetailViewModel canStartDiscovering is false, location old?: %{BOOL}d, isFarAway: %{BOOL}d", v275, 0xEu);
            }
          }

          if (qword_1006AEC58 != -1)
          {
            goto LABEL_152;
          }

          goto LABEL_91;
        }

        v193 = 0;
        v194 = 0;
      }

      else
      {

        v193 = 0;
        v194 = 0;
        v195 = 0;
      }

      LOBYTE(v91) = 1;
      v190 = v439;
    }

    v215 = v402;
    v216 = v401;
    while (1)
    {
      p_countAndFlagsBits = &v445->_countAndFlagsBits;
      *(&v445->_countAndFlagsBits + v190[33]) = v193;
      *(p_countAndFlagsBits + v190[34]) = v91 & 1;
      p_countAndFlagsBits[2] = v194;
      p_countAndFlagsBits[3] = v195;
      v218 = (p_countAndFlagsBits + v190[15]);
      *v218 = v215;
      v218[1] = v185;
      *(p_countAndFlagsBits + v190[16]) = v216;
      p_countAndFlagsBits[12] = FMFFriend.name.getter();
      p_countAndFlagsBits[13] = v219;
      p_countAndFlagsBits[14] = FMFFriend.properName.getter();
      p_countAndFlagsBits[15] = v220;
      p_countAndFlagsBits[16] = FMFFriend.shortName.getter();
      p_countAndFlagsBits[17] = v221;
      *p_countAndFlagsBits = FMFFriend.identifier.getter();
      p_countAndFlagsBits[1] = v222;
      if (v404 & 1 | ((v436 & 1) == 0))
      {
        v223 = v395;
        FMFFriend.location.getter();
        v224 = (v444)(v223, 1, v99);
        v225 = v442;
        v226 = v411;
        if (v224 == 1)
        {
          v227 = v411;
          v228 = v184;
          v229 = &qword_1006AF740;
LABEL_80:
          sub_100012DF0(v223, v229);
          v255 = v396;
          FMFFriend.location.getter();
          v250 = sub_100050DA8(v255, 1);
          v251 = v256;
          v258 = v257;
          v260 = v259;
          sub_100012DF0(v255, &qword_1006AF740);
          v249 = 0;
          v261 = v445;
          v445[3]._countAndFlagsBits = v258;
          v261[3]._object = v260;
          v252 = v430;
          v253 = countAndFlagsBits;
          v254 = object;
          v184 = v228;
          v226 = v227;
          v230 = v438;
          v190 = v439;
          goto LABEL_102;
        }

        v235 = v394;
        (*(v442 + 32))(v394, v223, v99);
        v223 = v392;
        FMFLocation.label.getter();
        v236 = type metadata accessor for FMFLabel();
        if ((*(*(v236 - 8) + 48))(v223, 1, v236) != 1)
        {
          v227 = v226;
          v228 = v184;
          (*(v225 + 8))(v235, v99);
          v229 = &qword_1006B0038;
          goto LABEL_80;
        }

        sub_100012DF0(v223, &qword_1006B0038);
        v237 = v396;
        FMFFriend.location.getter();
        v238 = sub_1000532F8(v237, 1);
        v425 = v239;
        sub_100012DF0(v237, &qword_1006AF740);
        v240 = objc_opt_self();
        v241 = [v240 mainBundle];
        v453._object = 0x8000000100579940;
        v242._countAndFlagsBits = 0xD00000000000001ELL;
        v242._object = 0x8000000100579920;
        v453._countAndFlagsBits = 0xD000000000000030;
        v243._countAndFlagsBits = 0;
        v243._object = 0xE000000000000000;
        v244 = NSLocalizedString(_:tableName:bundle:value:comment:)(v242, 0, v241, v243, v453);

        if (v238 == v244._countAndFlagsBits && v425 == v244._object)
        {

          v190 = v439;
        }

        else
        {
          v295 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v190 = v439;
          if ((v295 & 1) == 0)
          {
            v365 = [v240 mainBundle];
            v456._object = 0x800000010057D9B0;
            v366._countAndFlagsBits = 0xD00000000000001DLL;
            v366._object = 0x800000010057D990;
            v456._countAndFlagsBits = 0xD00000000000002FLL;
            v367._countAndFlagsBits = 0;
            v367._object = 0xE000000000000000;
            v368 = NSLocalizedString(_:tableName:bundle:value:comment:)(v366, 0, v365, v367, v456);

            if (v238 == v368._countAndFlagsBits && v425 == v368._object)
            {

              v230 = v438;
              v190 = v439;
              v225 = v442;
              v369 = v443;
              goto LABEL_143;
            }

            v370 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v230 = v438;
            v190 = v439;
            v225 = v442;
            v369 = v443;
            if (v370)
            {
LABEL_143:
              if (v431)
              {
                v371 = v369;

                v369 = v371;
                v238 = 0;
                v425 = 0xE000000000000000;
              }

              (*(v225 + 8))(v394, v369);
              v250 = 0;
              v251 = 0;
              v372 = v445;
              v373 = v425;
              v445[3]._countAndFlagsBits = v238;
              v372[3]._object = v373;
              v249 = v431 ^ 1;
            }

            else
            {
              (*(v442 + 8))(v394, v443);
              v250 = 0;
              v251 = 0;
              v374 = v445;
              v375 = v425;
              v445[3]._countAndFlagsBits = v238;
              v374[3]._object = v375;
              v249 = 1;
            }

            v252 = v430;
LABEL_78:
            v253 = countAndFlagsBits;
            v254 = object;
            goto LABEL_102;
          }
        }

        v225 = v442;
        (*(v442 + 8))(v394, v443);
        v250 = 0;
        v251 = 0;
        v296 = v445;
        v297 = v425;
        v445[3]._countAndFlagsBits = v238;
        v296[3]._object = v297;
        v249 = 1;
        v230 = v438;
        v252 = v430;
        v253 = countAndFlagsBits;
        v254 = object;
      }

      else
      {
        v225 = v442;
        v226 = v411;
        v230 = v438;
        if (v397)
        {
          v231 = [objc_opt_self() mainBundle];
          if (v391)
          {
            v376 = 0x800000010057D950;
            v232 = 0xD000000000000026;
            v233 = 0x800000010057D920;
            v234 = 0xD000000000000038;
          }

          else
          {
            v376 = 0x800000010057D8F0;
            v233 = 0x800000010057D8D0;
            v234 = 0xD00000000000002CLL;
            v232 = 0xD00000000000001ALL;
          }

          v247._countAndFlagsBits = 0;
          v247._object = 0xE000000000000000;
          v248 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v232, 0, v231, v247, *&v234);

          v249 = 0;
          v250 = 0;
          v251 = 0;
          v445[3] = v248;
          v252 = v430;
          v190 = v439;
          goto LABEL_78;
        }

        if (v431)
        {
          v245 = 0;
          v246 = 0xE000000000000000;
        }

        else
        {
          v262 = [objc_opt_self() mainBundle];
          v454._object = 0x800000010057D890;
          v263._countAndFlagsBits = 0xD000000000000026;
          v263._object = 0x800000010057D860;
          v454._countAndFlagsBits = 0xD000000000000038;
          v264._countAndFlagsBits = 0;
          v264._object = 0xE000000000000000;
          v265 = NSLocalizedString(_:tableName:bundle:value:comment:)(v263, 0, v262, v264, v454);
          v245 = v265._countAndFlagsBits;
          v246 = v265._object;

          v190 = v439;
        }

        v252 = v430;
        v253 = countAndFlagsBits;
        v254 = object;
        v249 = 0;
        v250 = 0;
        v251 = 0;
        v266 = v445;
        v445[3]._countAndFlagsBits = v245;
        v266[3]._object = v246;
      }

LABEL_102:
      v298 = v445;
      v445[2]._countAndFlagsBits = v250;
      v298[2]._object = v251;
      v298[4]._object = v253;
      v298[5]._countAndFlagsBits = v254;
      LOBYTE(v298[4]._countAndFlagsBits) = v249 & 1;
      v298[5]._object = v252;
      FMFFriend.location.getter();
      v299 = v443;
      if ((v444)(v184, 1, v443) == 1)
      {
        sub_100012DF0(v184, &qword_1006AF740);
        v300 = v418;
        v301 = v433;
      }

      else
      {
        v302 = FMFLocation.location.getter();
        (*(v225 + 8))(v184, v299);
        v300 = v418;
        v301 = v433;
        if (v302)
        {
          v303 = [v302 timestamp];

          v304 = v393;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v305 = v437;
          v306 = *(v437 + 32);
          v306(v226, v304, v230);
          (*(v305 + 56))(v226, 0, 1, v230);
          v307 = v408;
          v306(v408, v226, v230);
          v190 = v439;
          goto LABEL_108;
        }
      }

      v305 = v437;
      (*(v437 + 56))(v226, 1, 1, v230);
      v307 = v408;
      static Date.distantFuture.getter();
      if ((*(v305 + 48))(v226, 1, v230) != 1)
      {
        sub_100012DF0(v226, &unk_1006B0000);
      }

LABEL_108:
      v309 = *(v305 + 32);
      v308 = (v305 + 32);
      v310 = v445 + v190[14];
      v425 = v309;
      v309(v310, v307, v230);
      v311 = v406;
      FMFFriend.location.getter();
      if ((v444)(v311, 1, v299) == 1)
      {
        sub_100012DF0(v311, &qword_1006AF740);
        v312 = 0;
        v313 = v407;
      }

      else
      {
        v314 = FMFLocation.location.getter();
        (*(v442 + 8))(v311, v299);
        v313 = v407;
        if (v314)
        {

          v312 = 1;
        }

        else
        {
          v312 = 0;
        }
      }

      *(&v445->_countAndFlagsBits + v190[23]) = v312;
      FMFFriend.location.getter();
      v315 = (v444)(v313, 1, v299);
      v430 = v308;
      if (v315 == 1)
      {
        sub_100012DF0(v313, &qword_1006AF740);
        v316 = 1;
      }

      else
      {
        FMFLocation.locationSource.getter();
        (*(v442 + 8))(v313, v299);
        v316 = 0;
      }

      v317 = v435;
      v318 = *(v435 + 56);
      v319 = v432;
      v318(v300, v316, 1, v432);
      (*(v317 + 104))(v301, enum case for FMFLocationSource.stewie(_:), v319);
      v318(v301, 0, 1, v319);
      v320 = *(v424 + 48);
      v321 = v434;
      sub_100007204(v300, v434, &unk_1006C2460);
      sub_100007204(v301, v321 + v320, &unk_1006C2460);
      v322 = v301;
      v323 = *(v317 + 48);
      if (v323(v321, 1, v319) == 1)
      {
        sub_100012DF0(v322, &unk_1006C2460);
        v324 = v434;
        sub_100012DF0(v300, &unk_1006C2460);
        v325 = v323(v324 + v320, 1, v319);
        v326 = v414;
        v327 = v409;
        if (v325 == 1)
        {
          sub_100012DF0(v324, &unk_1006C2460);
          v328 = 1;
LABEL_122:
          v184 = v417;
          v330 = v415;
          v331 = v410;
          goto LABEL_124;
        }

LABEL_121:
        sub_100012DF0(v324, &qword_1006B14A8);
        v328 = 0;
        goto LABEL_122;
      }

      v329 = v398;
      sub_100007204(v321, v398, &unk_1006C2460);
      if (v323(v321 + v320, 1, v319) == 1)
      {
        sub_100012DF0(v433, &unk_1006C2460);
        v324 = v434;
        sub_100012DF0(v300, &unk_1006C2460);
        (*(v435 + 8))(v329, v319);
        v326 = v414;
        v327 = v409;
        goto LABEL_121;
      }

      v332 = v435;
      v333 = v321 + v320;
      v334 = v400;
      (*(v435 + 32))(v400, v333, v319);
      sub_1003B518C(&qword_1006B14E0, &type metadata accessor for FMFLocationSource);
      v328 = dispatch thunk of static Equatable.== infix(_:_:)();
      v335 = *(v332 + 8);
      v335(v334, v319);
      sub_100012DF0(v433, &unk_1006C2460);
      sub_100012DF0(v300, &unk_1006C2460);
      v335(v329, v319);
      sub_100012DF0(v321, &unk_1006C2460);
      v184 = v417;
      v330 = v415;
      v326 = v414;
      v331 = v410;
      v327 = v409;
LABEL_124:
      v91 = v439;
      v336 = v445;
      *(&v445->_countAndFlagsBits + v439[24]) = v328 & 1;
      v337 = v441;
      *(&v336->_countAndFlagsBits + v91[25]) = FMFFriend.favoriteOrder.getter() != 0x7FFFFFFFFFFFFFFFLL;
      *(&v336->_countAndFlagsBits + v91[28]) = v327;
      *(&v336->_countAndFlagsBits + v91[29]) = sub_1003BA6F4(v337) & 1;
      v338 = v91[19];
      LODWORD(v435) = v331 & 1;
      *(&v336->_countAndFlagsBits + v338) = v331 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.willShareLocationWithMe.getter();
      v339 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v340 = v413;
      v413(v330, v184);
      v340(v326, v184);
      *(&v336->_countAndFlagsBits + v91[20]) = v339 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.followsMyLocation.getter();
      v341 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v340(v330, v184);
      v340(v326, v184);
      *(&v336->_countAndFlagsBits + v91[21]) = v341 & 1;
      FMFFriend.relationshipType.getter();
      static FMFRelationshipType.sharesLocationWithMe.getter();
      v342 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v340(v330, v184);
      v340(v326, v184);
      v343 = v337;
      *(&v336->_countAndFlagsBits + v91[22]) = v342 & 1;
      *(&v336->_countAndFlagsBits + v91[30]) = v420 & 1;
      v344 = v421;
      FMFFriend.shareExpires.getter();
      v345 = v437;
      v346 = v438;
      if ((*(v437 + 48))(v344, 1, v438) == 1)
      {
        sub_100012DF0(v344, &unk_1006B0000);
        v347 = 0;
        v348 = 0;
      }

      else
      {
        v349 = v399;
        (v425)(v399, v344, v346);
        v350 = v345;
        v347 = Date.locationShareRemainingFull.getter();
        v348 = v351;
        (*(v350 + 8))(v349, v346);
      }

      v186 = v442;
      v185 = v443;
      v352 = v419;
      v183 = v444;
      v353 = v445;
      v354 = (&v445->_countAndFlagsBits + v91[18]);
      *v354 = v347;
      v354[1] = v348;
      *(&v353->_countAndFlagsBits + v91[26]) = v431 & 1;
      FMFFriend.location.getter();
      if ((v183)(v352, 1, v185) == 1)
      {
        sub_100012DF0(v352, &qword_1006AF740);
      }

      else
      {
        v355 = FMFLocation.location.getter();
        v356 = *(v186 + 1);
        v186 += 8;
        v356(v352, v185);
        if (v355)
        {
          [v355 horizontalAccuracy];
          v358 = v357;

          goto LABEL_132;
        }
      }

      v358 = 0.0;
LABEL_132:
      if ((*&v358 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v358 <= -9.22337204e18)
      {
        goto LABEL_149;
      }

      if (v358 < 9.22337204e18)
      {
        v359 = v427;
        v360 = v426;
        v361 = v428;
        (*(v427 + 104))(v426, enum case for FMFConfigValue.inaccuracyRadiusThreshold(_:), v428);
        v446 = 0x7FFFFFFFFFFFFFFFLL;
        FMFGlobalConfig<A>(_:fallback:)();

        v362 = type metadata accessor for FMFFriend();
        (*(*(v362 - 8) + 8))(v343, v362);
        result = (*(v359 + 8))(v360, v361);
        v364 = v445;
        *(&v445->_countAndFlagsBits + v91[27]) = v447[0] < v358;
        *(&v364->_countAndFlagsBits + v91[31]) = v435;
        *(&v364->_countAndFlagsBits + v91[32]) = v436 & 1;
        return result;
      }

LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      swift_once();
LABEL_91:
      v276 = qword_1006D48A8;
      v277 = [qword_1006D48A8 localizedDistanceFromLocation:v183 toLocation:v186];
      v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v195 = v278;

      if (!v425)
      {

        v190 = v439;
LABEL_137:
        v99 = v443;
        goto LABEL_138;
      }

      v279 = sub_1000FF754();
      v190 = v439;
      if (!v280)
      {

        goto LABEL_137;
      }

      v388 = v186;
      v389 = v280;
      v390 = v279;

      v281 = v384;
      v282 = [objc_allocWithZone(MKDistanceFormatter) init];
      v283 = [v276 measurementSystem];
      if (v283 != 1)
      {
        if (v283 == 2)
        {
          v284 = 1;
        }

        else
        {
          v284 = 2;
        }

        [v282 setUnits:v284];
      }

      v285 = [v282 stringFromDistance:v281];
      v425 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v287 = v286;

      v288 = [objc_opt_self() mainBundle];
      v455._object = 0x800000010057DF30;
      v289._countAndFlagsBits = 0x415045535F415445;
      v289._object = 0xED0000524F544152;
      v455._countAndFlagsBits = 0xD00000000000001FLL;
      v290._countAndFlagsBits = 0;
      v290._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v289, 0, v288, v290, v455);

      sub_10007EBC0(&unk_1006B20B0);
      v291 = swift_allocObject();
      *(v291 + 16) = xmmword_100552210;
      *(v291 + 56) = &type metadata for String;
      v292 = sub_10008EE84();
      *(v291 + 32) = v425;
      *(v291 + 40) = v287;
      *(v291 + 96) = &type metadata for String;
      *(v291 + 104) = v292;
      v293 = v390;
      *(v291 + 64) = v292;
      *(v291 + 72) = v293;
      *(v291 + 80) = v389;
      v194 = String.init(format:_:)();
      v195 = v294;

      v99 = v443;
      v190 = v439;
LABEL_138:
      v215 = v402;
      v216 = v401;
      v193 = v403;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1003B479C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = sub_10007EBC0(&qword_1006AF740);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = sub_10007EBC0(&unk_1006B0000);
  v9 = __chkstk_darwin(v8 - 8);
  v44 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v39 = &v38 - v18;
  __chkstk_darwin(v17);
  v45 = &v38 - v19;
  FMFLocationAlert.location.getter();
  v20 = type metadata accessor for FMFLocation();
  v21 = *(v20 - 8);
  v40 = *(v21 + 48);
  if (v40(v7, 1, v20) == 1)
  {
    sub_100012DF0(v7, &qword_1006AF740);
  }

  else
  {
    v22 = FMFLocation.location.getter();
    (*(v21 + 8))(v7, v20);
    if (v22)
    {
      v23 = [v22 timestamp];

      v38 = v5;
      v24 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v25 = *(v14 + 32);
      v26 = v24;
      v5 = v38;
      v25(v12, v26, v13);
      v41 = *(v14 + 56);
      v41(v12, 0, 1, v13);
      v25(v45, v12, v13);
      goto LABEL_7;
    }
  }

  v41 = *(v14 + 56);
  v41(v12, 1, 1, v13);
  static Date.distantPast.getter();
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100012DF0(v12, &unk_1006B0000);
  }

LABEL_7:
  FMFLocationAlert.location.getter();
  if (v40(v5, 1, v20) == 1)
  {
    sub_100012DF0(v5, &qword_1006AF740);
  }

  else
  {
    v27 = FMFLocation.location.getter();
    (*(v21 + 8))(v5, v20);
    if (v27)
    {
      v28 = [v27 timestamp];

      v29 = v39;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v30 = *(v14 + 32);
      v31 = v44;
      v30(v44, v29, v13);
      v41(v31, 0, 1, v13);
      v32 = v43;
      v30(v43, v31, v13);
      goto LABEL_13;
    }
  }

  v33 = v44;
  v41(v44, 1, 1, v13);
  v32 = v43;
  static Date.distantPast.getter();
  if ((*(v14 + 48))(v33, 1, v13) != 1)
  {
    sub_100012DF0(v33, &unk_1006B0000);
  }

LABEL_13:
  v34 = v45;
  v35 = static Date.< infix(_:_:)();
  v36 = *(v14 + 8);
  v36(v32, v13);
  v36(v34, v13);
  return v35 & 1;
}

void sub_1003B4D20(uint64_t a1)
{
  v2 = v1;
  String.hash(into:)();
  if (*(v1 + 24))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 40))
    {
LABEL_3:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_6;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(0);
LABEL_6:
  String.hash(into:)();
  Hasher._combine(_:)(*(v1 + 64));
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  if (*(v1 + 120))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (*(v1 + 136))
    {
LABEL_8:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_11;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (*(v1 + 136))
    {
      goto LABEL_8;
    }
  }

  Hasher._combine(_:)(0);
LABEL_11:
  v4 = type metadata accessor for FMPersonDetailViewModel(0);
  type metadata accessor for Date();
  sub_1003B518C(&qword_1006B1480, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  sub_1003B8054(a1, *(v1 + v4[16]));
  v5 = *(v1 + v4[17]);
  if (v5)
  {
    Hasher._combine(_:)(1u);
    v6 = v5;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + v4[18] + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v4[19]));
  Hasher._combine(_:)(*(v2 + v4[20]));
  Hasher._combine(_:)(*(v2 + v4[21]));
  Hasher._combine(_:)(*(v2 + v4[22]));
  Hasher._combine(_:)(*(v2 + v4[23]));
  Hasher._combine(_:)(*(v2 + v4[24]));
  Hasher._combine(_:)(*(v2 + v4[25]));
  Hasher._combine(_:)(*(v2 + v4[26]));
  Hasher._combine(_:)(*(v2 + v4[27]));
  sub_1003B7ED8(a1, *(v2 + v4[28]));
  Hasher._combine(_:)(*(v2 + v4[29]));
  Hasher._combine(_:)(*(v2 + v4[30]));
  Hasher._combine(_:)(*(v2 + v4[31]));
  Hasher._combine(_:)(*(v2 + v4[32]));
  Hasher._combine(_:)(*(v2 + v4[33]));
  Hasher._combine(_:)(*(v2 + v4[34]));
}

uint64_t sub_1003B504C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_1003B50C0()
{
  Hasher.init(_seed:)();
  sub_1003B4D20(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1003B5104()
{
  Hasher.init(_seed:)();
  sub_1003B4D20(v1);
  return Hasher._finalize()();
}

uint64_t sub_1003B518C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003B51D4(uint64_t a1)
{
  result = sub_1003B518C(&qword_1006BD4B0, type metadata accessor for FMPersonDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1003B522C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003B53E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1003B518C(&qword_1006B6918, &type metadata accessor for FMIPItem);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1003B518C(&qword_1006B7AA8, &type metadata accessor for FMIPItem);
        v31 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_1003B5794(void **a1)
{
  v2 = *(type metadata accessor for FMFLocationAlert() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F3CC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1003B583C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_1003B583C(uint64_t *a1)
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
        type metadata accessor for FMFLocationAlert();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMFLocationAlert() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003B61D0(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_1003B5968(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1003B5968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_10007EBC0(&qword_1006AF740);
  v9 = __chkstk_darwin(v8 - 8);
  v91 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v67[-v11];
  v13 = sub_10007EBC0(&unk_1006B0000);
  v14 = __chkstk_darwin(v13 - 8);
  v92 = &v67[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v90 = &v67[-v16];
  v89 = type metadata accessor for Date();
  v17 = *(v89 - 8);
  v18 = __chkstk_darwin(v89);
  v20 = &v67[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v77 = &v67[-v22];
  __chkstk_darwin(v21);
  v98 = &v67[-v23];
  v24 = type metadata accessor for FMFLocationAlert();
  v25 = __chkstk_darwin(v24);
  v81 = &v67[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v99 = &v67[-v28];
  result = __chkstk_darwin(v27);
  v97 = &v67[-v31];
  v69 = a2;
  if (a3 != a2)
  {
    v32 = *a4;
    v34 = *(v30 + 16);
    v33 = v30 + 16;
    v84 = v34;
    v35 = *(v33 + 56);
    v76 = (v17 + 32);
    v96 = (v17 + 56);
    v93 = (v17 + 48);
    v82 = (v33 - 8);
    v83 = (v17 + 8);
    v85 = v33;
    v36 = v32 + v35 * (a3 - 1);
    v78 = -v35;
    v79 = (v33 + 16);
    v37 = a1 - a3;
    v80 = v32;
    v68 = v35;
    v38 = v32 + v35 * a3;
    v87 = v20;
    v88 = v12;
    v86 = v24;
LABEL_5:
    v73 = a3;
    v70 = v38;
    v71 = v37;
    v72 = v36;
    while (1)
    {
      v95 = v37;
      v39 = v84;
      v84(v97, v38, v24);
      v39(v99, v36, v24);
      FMFLocationAlert.location.getter();
      v40 = type metadata accessor for FMFLocation();
      v41 = *(v40 - 8);
      v42 = *(v41 + 48);
      if (v42(v12, 1, v40) == 1)
      {
        sub_100012DF0(v12, &qword_1006AF740);
      }

      else
      {
        v43 = FMFLocation.location.getter();
        (*(v41 + 8))(v12, v40);
        if (v43)
        {
          v44 = [v43 timestamp];

          v45 = v77;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v74 = v41;
          v46 = *v76;
          v75 = v42;
          v48 = v89;
          v47 = v90;
          v46(v90, v45, v89);
          v94 = *v96;
          v94(v47, 0, 1, v48);
          v49 = v47;
          v42 = v75;
          v46(v98, v49, v48);
          v41 = v74;
          goto LABEL_12;
        }
      }

      v48 = v89;
      v50 = v90;
      v94 = *v96;
      v94(v90, 1, 1, v89);
      static Date.distantPast.getter();
      if ((*v93)(v50, 1, v48) != 1)
      {
        sub_100012DF0(v50, &unk_1006B0000);
      }

LABEL_12:
      v51 = v91;
      FMFLocationAlert.location.getter();
      if (v42(v51, 1, v40) == 1)
      {
        sub_100012DF0(v51, &qword_1006AF740);
        v52 = v87;
      }

      else
      {
        v53 = FMFLocation.location.getter();
        (*(v41 + 8))(v51, v40);
        v52 = v87;
        if (v53)
        {
          v54 = [v53 timestamp];

          v55 = v77;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v56 = *v76;
          v57 = v92;
          (*v76)(v92, v55, v48);
          v94(v57, 0, 1, v48);
          v56(v52, v57, v48);
          goto LABEL_18;
        }
      }

      v58 = v92;
      v94(v92, 1, 1, v48);
      static Date.distantPast.getter();
      if ((*v93)(v58, 1, v48) != 1)
      {
        sub_100012DF0(v92, &unk_1006B0000);
      }

LABEL_18:
      v59 = v98;
      v60 = static Date.< infix(_:_:)();
      v61 = *v83;
      (*v83)(v52, v48);
      v61(v59, v48);
      v62 = *v82;
      v24 = v86;
      (*v82)(v99, v86);
      result = v62(v97, v24);
      v12 = v88;
      v63 = v95;
      if ((v60 & 1) == 0)
      {
        goto LABEL_4;
      }

      if (!v80)
      {
        __break(1u);
        return result;
      }

      v64 = *v79;
      v65 = v81;
      (*v79)(v81, v38, v24);
      swift_arrayInitWithTakeFrontToBack();
      result = v64(v36, v65, v24);
      v36 += v78;
      v38 += v78;
      v66 = __CFADD__(v63, 1);
      v37 = v63 + 1;
      if (v66)
      {
LABEL_4:
        a3 = v73 + 1;
        v36 = v72 + v68;
        v37 = v71 - 1;
        v38 = v70 + v68;
        if (v73 + 1 == v69)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1003B61D0(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v199 = a1;
  v8 = sub_10007EBC0(&qword_1006AF740);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v232 = &v196 - v13;
  v14 = __chkstk_darwin(v12);
  v211 = &v196 - v15;
  __chkstk_darwin(v14);
  v17 = &v196 - v16;
  v18 = sub_10007EBC0(&unk_1006B0000);
  v19 = __chkstk_darwin(v18 - 8);
  v239 = &v196 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v231 = &v196 - v22;
  v23 = __chkstk_darwin(v21);
  v215 = &v196 - v24;
  __chkstk_darwin(v23);
  v210 = &v196 - v25;
  v237 = type metadata accessor for Date();
  v26 = *(v237 - 8);
  v27 = __chkstk_darwin(v237);
  v230 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v244 = &v196 - v30;
  v31 = __chkstk_darwin(v29);
  v209 = &v196 - v32;
  v33 = __chkstk_darwin(v31);
  v224 = &v196 - v34;
  __chkstk_darwin(v33);
  v219 = &v196 - v35;
  v36 = type metadata accessor for FMFLocationAlert();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v204 = &v196 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v227 = &v196 - v41;
  v42 = __chkstk_darwin(v40);
  v246 = &v196 - v43;
  v44 = __chkstk_darwin(v42);
  v243 = &v196 - v45;
  v46 = __chkstk_darwin(v44);
  v216 = &v196 - v47;
  v48 = __chkstk_darwin(v46);
  v218 = &v196 - v49;
  v50 = __chkstk_darwin(v48);
  v197 = &v196 - v51;
  result = __chkstk_darwin(v50);
  v217 = a3;
  v54 = *(a3 + 8);
  v213 = v37;
  if (v54 < 1)
  {
    v56 = _swiftEmptyArrayStorage;
LABEL_120:
    a3 = *v199;
    if (!*v199)
    {
      goto LABEL_160;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_154:
      result = sub_10025EFD4(v56);
      v56 = result;
    }

    v247 = v56;
    v191 = *(v56 + 2);
    if (v191 >= 2)
    {
      while (*v217)
      {
        v192 = *&v56[16 * v191];
        v193 = *&v56[16 * v191 + 24];
        sub_1003B783C(&(*v217)[v213[9] * v192], &(*v217)[v213[9] * *&v56[16 * v191 + 16]], &(*v217)[v213[9] * v193], a3);
        if (v5)
        {
        }

        if (v193 < v192)
        {
          goto LABEL_147;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10025EFD4(v56);
        }

        if (v191 - 2 >= *(v56 + 2))
        {
          goto LABEL_148;
        }

        v194 = &v56[16 * v191];
        *v194 = v192;
        *(v194 + 1) = v193;
        v247 = v56;
        result = sub_10025EF48(v191 - 1);
        v56 = v247;
        v191 = *(v247 + 2);
        if (v191 <= 1)
        {
        }
      }

      goto LABEL_158;
    }
  }

  v200 = &v196 - v53;
  v238 = result;
  v55 = 0;
  v235 = v37 + 2;
  v236 = v37 + 1;
  v223 = (v26 + 32);
  v245 = (v26 + 56);
  v240 = (v26 + 48);
  v234 = (v26 + 8);
  v56 = _swiftEmptyArrayStorage;
  v233 = v37 + 4;
  v198 = a4;
  v229 = v11;
  v212 = v17;
  while (1)
  {
    v57 = v55;
    v214 = v56;
    if (v55 + 1 >= v54)
    {
      v100 = v55 + 1;
      goto LABEL_37;
    }

    v220 = v54;
    v58 = *v217;
    v59 = v37[9];
    v60 = &(*v217)[v59 * (v55 + 1)];
    v61 = v37[2];
    v201 = v55;
    v242 = v60;
    v62 = v238;
    v61(v200);
    v241 = v58;
    v225 = v59;
    v63 = &v58[v59 * v201];
    v64 = v201;
    v65 = v197;
    v221 = v61;
    (v61)(v197, v63, v62);
    LODWORD(v222) = sub_1003B479C(v200, v65);
    if (v5)
    {
      v195 = *v236;
      (*v236)(v65, v62);
      v195(v200, v62);
    }

    v202 = 0;
    a3 = *v236;
    (*v236)(v65, v62);
    v208 = a3;
    result = (a3)(v200, v62);
    v66 = (v64 + 2);
    v67 = v242;
    v68 = v225;
    v69 = &v241[v225 * v66];
    v70 = v216;
    while (1)
    {
      v100 = v220;
      if (v220 == v66)
      {
        break;
      }

      v241 = v66;
      v83 = v238;
      v84 = v221;
      (v221)(v218, v69, v238);
      v84(v70, v67, v83);
      FMFLocationAlert.location.getter();
      v85 = type metadata accessor for FMFLocation();
      v86 = *(v85 - 8);
      v87 = *(v86 + 48);
      v88 = v87(v17, 1, v85);
      v242 = v67;
      v226 = v87;
      if (v88 == 1)
      {
        sub_100012DF0(v17, &qword_1006AF740);
      }

      else
      {
        v89 = FMFLocation.location.getter();
        (*(v86 + 8))(v17, v85);
        if (v89)
        {
          v90 = [v89 timestamp];

          v91 = v224;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v92 = *v223;
          v93 = v210;
          v94 = v237;
          (*v223)(v210, v91, v237);
          v228 = *v245;
          (v228)(v93, 0, 1, v94);
          v92(v219, v93, v94);
          goto LABEL_18;
        }
      }

      v95 = v210;
      v96 = v237;
      v228 = *v245;
      (v228)(v210, 1, 1, v237);
      static Date.distantPast.getter();
      if ((*v240)(v95, 1, v96) != 1)
      {
        sub_100012DF0(v95, &unk_1006B0000);
      }

LABEL_18:
      v97 = v211;
      v98 = v209;
      FMFLocationAlert.location.getter();
      if (v226(v97, 1, v85) == 1)
      {
        sub_100012DF0(v97, &qword_1006AF740);
        v56 = v214;
        v68 = v225;
        v72 = v228;
LABEL_20:
        v99 = v215;
        v78 = v237;
        v72(v215, 1, 1, v237);
        static Date.distantPast.getter();
        if ((*v240)(v99, 1, v78) != 1)
        {
          sub_100012DF0(v215, &unk_1006B0000);
        }

        goto LABEL_10;
      }

      v71 = FMFLocation.location.getter();
      (*(v86 + 8))(v97, v85);
      v56 = v214;
      v68 = v225;
      v72 = v228;
      if (!v71)
      {
        goto LABEL_20;
      }

      v73 = [v71 timestamp];

      v74 = v224;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v75 = *v223;
      v76 = v215;
      v77 = v74;
      v78 = v237;
      (*v223)(v215, v77, v237);
      v72(v76, 0, 1, v78);
      v75(v98, v76, v78);
LABEL_10:
      v79 = v219;
      v80 = static Date.< infix(_:_:)();
      v81 = *v234;
      (*v234)(v98, v78);
      v81(v79, v78);
      v70 = v216;
      a3 = v238;
      v82 = v208;
      v208(v216, v238);
      result = v82(v218, a3);
      v66 = v241 + 1;
      v69 += v68;
      v67 = &v242[v68];
      v37 = v213;
      v17 = v212;
      if ((v222 ^ v80))
      {
        v100 = v241;
        break;
      }
    }

    v5 = v202;
    a4 = v198;
    v57 = v201;
    if ((v222 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (v100 < v201)
    {
      goto LABEL_153;
    }

    if (v201 < v100)
    {
      v101 = v100;
      a3 = v68 * (v100 - 1);
      v102 = v100 * v68;
      v220 = v100;
      v103 = v201 * v68;
      do
      {
        if (v57 != --v101)
        {
          v105 = *v217;
          if (!*v217)
          {
            goto LABEL_157;
          }

          v106 = *v233;
          (*v233)(v204, &v105[v103], v238);
          if (v103 < a3 || &v105[v103] >= &v105[v102])
          {
            v104 = v238;
            swift_arrayInitWithTakeFrontToBack();
          }

          else
          {
            v104 = v238;
            if (v103 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          result = v106(&v105[a3], v204, v104);
          v5 = v202;
          v56 = v214;
          v68 = v225;
        }

        ++v57;
        a3 -= v68;
        v102 -= v68;
        v103 += v68;
      }

      while (v57 < v101);
      a4 = v198;
      v37 = v213;
      v17 = v212;
      v100 = v220;
      v57 = v201;
    }

LABEL_37:
    v107 = v217[1];
    if (v100 >= v107)
    {
      goto LABEL_46;
    }

    if (__OFSUB__(v100, v57))
    {
      goto LABEL_150;
    }

    if (v100 - v57 >= a4)
    {
LABEL_46:
      v109 = v100;
      if (v100 < v57)
      {
        goto LABEL_149;
      }

      goto LABEL_47;
    }

    if (__OFADD__(v57, a4))
    {
      goto LABEL_151;
    }

    if (v57 + a4 >= v107)
    {
      v108 = v217[1];
    }

    else
    {
      v108 = v57 + a4;
    }

    if (v108 < v57)
    {
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    if (v100 == v108)
    {
      goto LABEL_46;
    }

    v202 = v5;
    v155 = *v217;
    v156 = v37[9];
    v228 = v37[2];
    v157 = &v155[v156 * (v100 - 1)];
    v225 = -v156;
    v201 = v57;
    v158 = (v57 - v100);
    v226 = v155;
    v203 = v156;
    v159 = &v155[v100 * v156];
    v160 = v232;
    v161 = v237;
    v162 = v238;
    v205 = v108;
LABEL_99:
    v220 = v100;
    v206 = v159;
    v207 = v158;
    v163 = v158;
    v208 = v157;
    v164 = v157;
LABEL_100:
    v241 = v163;
    v165 = v228;
    (v228)(v243, v159, v162);
    v165(v246, v164, v162);
    FMFLocationAlert.location.getter();
    v166 = type metadata accessor for FMFLocation();
    v167 = *(v166 - 8);
    v168 = *(v167 + 6);
    if (v168(v160, 1, v166) == 1)
    {
      sub_100012DF0(v160, &qword_1006AF740);
LABEL_104:
      v176 = v231;
      v242 = *v245;
      (v242)(v231, 1, 1, v161);
      static Date.distantPast.getter();
      if ((*v240)(v176, 1, v161) != 1)
      {
        sub_100012DF0(v176, &unk_1006B0000);
      }
    }

    else
    {
      v169 = FMFLocation.location.getter();
      (*(v167 + 1))(v160, v166);
      if (!v169)
      {
        goto LABEL_104;
      }

      v170 = [v169 timestamp];

      v222 = v168;
      v171 = v224;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v221 = v167;
      v172 = *v223;
      v173 = v161;
      v174 = v231;
      v175 = v171;
      v168 = v222;
      (*v223)(v231, v175, v173);
      v242 = *v245;
      (v242)(v174, 0, 1, v173);
      v172(v244, v174, v173);
      v167 = v221;
    }

    v177 = v229;
    FMFLocationAlert.location.getter();
    if (v168(v177, 1, v166) == 1)
    {
      sub_100012DF0(v177, &qword_1006AF740);
      v162 = v238;
LABEL_110:
      v184 = v239;
      v161 = v237;
      (v242)(v239, 1, 1, v237);
      v183 = v230;
      static Date.distantPast.getter();
      if ((*v240)(v184, 1, v161) != 1)
      {
        sub_100012DF0(v239, &unk_1006B0000);
      }
    }

    else
    {
      v178 = FMFLocation.location.getter();
      (*(v167 + 1))(v177, v166);
      v162 = v238;
      if (!v178)
      {
        goto LABEL_110;
      }

      v179 = [v178 timestamp];

      v180 = v224;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v181 = *v223;
      v182 = v239;
      v161 = v237;
      (*v223)(v239, v180, v237);
      (v242)(v182, 0, 1, v161);
      v183 = v230;
      v181(v230, v182, v161);
    }

    v185 = v244;
    v186 = static Date.< infix(_:_:)();
    v187 = *v234;
    (*v234)(v183, v161);
    v187(v185, v161);
    a3 = *v236;
    (*v236)(v246, v162);
    result = (a3)(v243, v162);
    if (v186)
    {
      break;
    }

    v160 = v232;
LABEL_98:
    v100 = v220 + 1;
    v157 = v208 + v203;
    v158 = v207 - 1;
    v159 = &v206[v203];
    v109 = v205;
    if (v220 + 1 != v205)
    {
      goto LABEL_99;
    }

    v5 = v202;
    v37 = v213;
    v17 = v212;
    v56 = v214;
    v57 = v201;
    if (v205 < v201)
    {
      goto LABEL_149;
    }

LABEL_47:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10008B8B8(0, *(v56 + 2) + 1, 1, v56);
      v56 = result;
    }

    a3 = *(v56 + 2);
    v110 = *(v56 + 3);
    v111 = a3 + 1;
    if (a3 >= v110 >> 1)
    {
      result = sub_10008B8B8((v110 > 1), a3 + 1, 1, v56);
      v56 = result;
    }

    *(v56 + 2) = v111;
    v112 = &v56[16 * a3];
    *(v112 + 4) = v57;
    *(v112 + 5) = v109;
    v113 = *v199;
    if (!*v199)
    {
      goto LABEL_159;
    }

    v205 = v109;
    if (a3)
    {
      while (2)
      {
        v114 = v111 - 1;
        if (v111 >= 4)
        {
          v119 = &v56[16 * v111 + 32];
          v120 = *(v119 - 64);
          v121 = *(v119 - 56);
          v125 = __OFSUB__(v121, v120);
          v122 = v121 - v120;
          if (v125)
          {
            goto LABEL_136;
          }

          v124 = *(v119 - 48);
          v123 = *(v119 - 40);
          v125 = __OFSUB__(v123, v124);
          v117 = v123 - v124;
          v118 = v125;
          if (v125)
          {
            goto LABEL_137;
          }

          v126 = &v56[16 * v111];
          v128 = *v126;
          v127 = *(v126 + 1);
          v125 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v125)
          {
            goto LABEL_139;
          }

          v125 = __OFADD__(v117, v129);
          v130 = v117 + v129;
          if (v125)
          {
            goto LABEL_142;
          }

          if (v130 >= v122)
          {
            v148 = &v56[16 * v114 + 32];
            v150 = *v148;
            v149 = *(v148 + 1);
            v125 = __OFSUB__(v149, v150);
            v151 = v149 - v150;
            if (v125)
            {
              goto LABEL_146;
            }

            if (v117 < v151)
            {
              v114 = v111 - 2;
            }
          }

          else
          {
LABEL_66:
            if (v118)
            {
              goto LABEL_138;
            }

            v131 = &v56[16 * v111];
            v133 = *v131;
            v132 = *(v131 + 1);
            v134 = __OFSUB__(v132, v133);
            v135 = v132 - v133;
            v136 = v134;
            if (v134)
            {
              goto LABEL_141;
            }

            v137 = &v56[16 * v114 + 32];
            v139 = *v137;
            v138 = *(v137 + 1);
            v125 = __OFSUB__(v138, v139);
            v140 = v138 - v139;
            if (v125)
            {
              goto LABEL_144;
            }

            if (__OFADD__(v135, v140))
            {
              goto LABEL_145;
            }

            if (v135 + v140 < v117)
            {
              goto LABEL_80;
            }

            if (v117 < v140)
            {
              v114 = v111 - 2;
            }
          }
        }

        else
        {
          if (v111 == 3)
          {
            v115 = *(v56 + 4);
            v116 = *(v56 + 5);
            v125 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            v118 = v125;
            goto LABEL_66;
          }

          v141 = &v56[16 * v111];
          v143 = *v141;
          v142 = *(v141 + 1);
          v125 = __OFSUB__(v142, v143);
          v135 = v142 - v143;
          v136 = v125;
LABEL_80:
          if (v136)
          {
            goto LABEL_140;
          }

          v144 = &v56[16 * v114];
          v146 = *(v144 + 4);
          v145 = *(v144 + 5);
          v125 = __OFSUB__(v145, v146);
          v147 = v145 - v146;
          if (v125)
          {
            goto LABEL_143;
          }

          if (v147 < v135)
          {
            break;
          }
        }

        a3 = v114 - 1;
        if (v114 - 1 >= v111)
        {
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
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
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
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v217)
        {
          goto LABEL_156;
        }

        v152 = *&v56[16 * a3 + 32];
        v153 = *&v56[16 * v114 + 40];
        sub_1003B783C(&(*v217)[v37[9] * v152], &(*v217)[v37[9] * *&v56[16 * v114 + 32]], &(*v217)[v37[9] * v153], v113);
        if (v5)
        {
        }

        if (v153 < v152)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_10025EFD4(v56);
        }

        if (a3 >= *(v56 + 2))
        {
          goto LABEL_135;
        }

        v154 = &v56[16 * a3];
        *(v154 + 4) = v152;
        *(v154 + 5) = v153;
        v247 = v56;
        result = sub_10025EF48(v114);
        v56 = v247;
        v111 = *(v247 + 2);
        if (v111 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v54 = v217[1];
    v55 = v205;
    a4 = v198;
    if (v205 >= v54)
    {
      goto LABEL_120;
    }
  }

  v188 = v241;
  if (v226)
  {
    a3 = *v233;
    v189 = v227;
    (*v233)(v227, v159, v162);
    swift_arrayInitWithTakeFrontToBack();
    (a3)(v164, v189, v162);
    v164 += v225;
    v159 += v225;
    v190 = __CFADD__(v188, 1);
    v163 = v188 + 1;
    v160 = v232;
    if (v190)
    {
      goto LABEL_98;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}